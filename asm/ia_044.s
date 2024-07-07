.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable044
CreateEntity_Interactable044: @ 0x08032358
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080323FC @ =sub_80324AC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032400 @ =sub_8032B04
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08032404 @ =0x03000010
	adds r0, r3, r2
	movs r7, #0
	mov sl, r7
	movs r4, #0
	strh r5, [r1, #4]
	strh r6, [r1, #6]
	mov r2, sb
	str r2, [r1]
	ldrb r2, [r2]
	strb r2, [r1, #0xe]
	mov r7, r8
	strb r7, [r1, #0xf]
	strh r4, [r1, #0x38]
	strh r4, [r1, #0x3a]
	ldr r7, _08032408 @ =0x0300003C
	adds r2, r3, r7
	mov r7, sl
	strb r7, [r2]
	ldr r2, _0803240C @ =0x0300003D
	adds r3, r3, r2
	strb r7, [r3]
	str r4, [r1, #0x40]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xc]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x10]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r6, r6, #8
	adds r1, r1, r6
	strh r1, [r0, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	strb r1, [r2]
	bl sub_8032B18
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080323FC: .4byte sub_80324AC
_08032400: .4byte sub_8032B04
_08032404: .4byte 0x03000010
_08032408: .4byte 0x0300003C
_0803240C: .4byte 0x0300003D

	thumb_func_start sub_8032410
sub_8032410: @ 0x08032410
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08032474 @ =gCurTask
	mov sb, r1
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	adds r1, #0x10
	adds r5, r2, r1
	ldr r2, [r4]
	mov r8, r2
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #3
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08032478
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08032478
	ldrb r0, [r4, #0xe]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _0803249A
	.align 2, 0
_08032474: .4byte gCurTask
_08032478:
	ldr r2, _080324A8 @ =gCamera
	ldr r1, [r2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803249A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324A8: .4byte gCamera

	thumb_func_start sub_80324AC
sub_80324AC: @ 0x080324AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08032514 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r1, _08032518 @ =0x03000010
	adds r7, r2, r1
	ldr r3, [r6]
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0803251C @ =gCamera
	ldr r0, [r1]
	ldr r3, [sp, #0xc]
	subs r0, r3, r0
	strh r0, [r7, #0x10]
	ldr r0, [r1, #4]
	mov r1, r8
	subs r0, r1, r0
	strh r0, [r7, #0x12]
	movs r3, #0
	str r3, [sp, #0x10]
	ldr r0, _08032520 @ =0x0300003C
	adds r0, r0, r2
	mov sb, r0
_08032502:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _08032524
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032528
	.align 2, 0
_08032514: .4byte gCurTask
_08032518: .4byte 0x03000010
_0803251C: .4byte gCamera
_08032520: .4byte 0x0300003C
_08032524:
	ldr r0, _080325F8 @ =gStageData
	ldrb r1, [r0, #6]
_08032528:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080325FC @ =gPlayers
	adds r4, r0, r1
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	movs r2, #0x1c
	ands r2, r0
	mov sl, r1
	cmp r2, #8
	bne _08032548
	b _080326AA
_08032548:
	ldr r0, _080325F8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08032556
	cmp r2, #0xc
	bne _08032556
	b _080326AA
_08032556:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0803255E
	b _080326AA
_0803255E:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	beq _0803256C
	b _080326AA
_0803256C:
	str r4, [sp]
	ldr r3, [sp, #8]
	str r3, [sp, #4]
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	mov r2, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _08032584
	b _080326AA
_08032584:
	movs r0, #1
	str r0, [sp, #8]
	str r4, [r6, #0x40]
	adds r0, r6, #0
	adds r0, #0x3d
	mov r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0]
	movs r2, #0
	strh r5, [r6, #0x38]
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _080325A2
	rsbs r0, r0, #0
_080325A2:
	movs r3, #0x1a
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _080325AC
	rsbs r1, r1, #0
_080325AC:
	adds r0, r0, r1
	strh r0, [r6, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _080325BC
	movs r0, #0xe0
	strh r0, [r6, #0x3a]
_080325BC:
	movs r1, #0x3a
	ldrsh r0, [r6, r1]
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080325CA
	strh r1, [r6, #0x3a]
_080325CA:
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _0803261C
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r8
	ble _08032600
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0x78
	strh r0, [r4, #0x30]
	mov r0, sb
	strb r2, [r0]
	b _08032658
	.align 2, 0
_080325F8: .4byte gStageData
_080325FC: .4byte gPlayers
_08032600:
	ldr r0, [r7, #8]
	ldr r1, _08032618 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	movs r0, #0x79
	strh r0, [r4, #0x30]
	mov r1, sp
	ldrb r2, [r1, #8]
	mov r1, sb
	strb r2, [r1]
	b _08032658
	.align 2, 0
_08032618: .4byte 0xFFFFFBFF
_0803261C:
	ldr r0, [r4, #4]
	ldr r3, [sp, #8]
	orrs r0, r3
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r8
	ble _08032644
	ldr r0, [r7, #8]
	ldr r1, _08032640 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	movs r0, #0x78
	strh r0, [r4, #0x30]
	movs r0, #2
	mov r1, sb
	strb r0, [r1]
	b _08032658
	.align 2, 0
_08032640: .4byte 0xFFFFFBFF
_08032644:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0x79
	strh r0, [r4, #0x30]
	movs r0, #3
	mov r2, sb
	strb r0, [r2]
_08032658:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #8
	str r0, [r4, #0x10]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x36]
	mov r2, sl
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	bl sub_8004E98
	adds r0, r4, #0
	adds r0, #0x99
	movs r3, #0
	strb r3, [r0]
	ldrh r0, [r4, #0x18]
	strh r0, [r6, #0xa]
	ldrh r0, [r4, #0x1a]
	strh r0, [r6, #0xc]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, _080326D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080326D4 @ =Task_80326D8
	str r0, [r1, #8]
_080326AA:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	cmp r0, #1
	bhi _080326BA
	b _08032502
_080326BA:
	movs r0, #0
	bl sub_8032410
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080326D0: .4byte gCurTask
_080326D4: .4byte Task_80326D8

	thumb_func_start Task_80326D8
Task_80326D8: @ 0x080326D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r3, _08032764 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x10
	adds r0, r0, r1
	mov r8, r0
	ldr r2, [r7]
	ldrb r1, [r7, #0xe]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldrh r0, [r7, #0x3a]
	ldrh r1, [r7, #0x38]
	adds r0, r0, r1
	ldr r2, _08032768 @ =0x00003FF0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7, #0x38]
	lsrs r6, r0, #4
	ldr r1, _0803276C @ =gCamera
	ldr r0, [r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	mov r2, r8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #4]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r2, #0x12]
	movs r2, #0
	str r2, [sp, #0xc]
	lsls r0, r6, #1
	ldr r1, _08032770 @ =gSineTable
	adds r0, r0, r1
	mov sb, r0
_08032740:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0803277C
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
	ldr r1, _08032774 @ =gPlayers
	adds r5, r0, r1
	ldr r3, _08032778 @ =gStageData
	b _08032790
	.align 2, 0
_08032764: .4byte gCurTask
_08032768: .4byte 0x00003FF0
_0803276C: .4byte gCamera
_08032770: .4byte gSineTable
_08032774: .4byte gPlayers
_08032778: .4byte gStageData
_0803277C:
	ldr r2, _0803280C @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032810 @ =gPlayers
	adds r5, r0, r1
	adds r3, r2, #0
_08032790:
	adds r4, r3, #0
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _080327A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080327A8
	b _08032A60
_080327A8:
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0803283A
	ldr r1, [r5, #4]
	ldr r0, _08032814 @ =0x01000100
	ands r1, r0
	cmp r1, #0
	beq _080327C0
	b _08032A60
_080327C0:
	str r5, [sp]
	str r1, [sp, #4]
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _080327D6
	b _08032A60
_080327D6:
	ldr r2, [r7, #0x40]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r3, #0x1c
	adds r1, r3, #0
	ands r1, r0
	cmp r1, #8
	bne _08032820
	ldrh r0, [r2, #0x20]
	ldrh r1, [r4, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x20]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x1a]
	ldr r2, _08032818 @ =gCurTask
	ldr r0, [r2]
	ldr r1, _0803281C @ =sub_8032A8C
	str r1, [r0, #8]
	b _08032A60
	.align 2, 0
_0803280C: .4byte gStageData
_08032810: .4byte gPlayers
_08032814: .4byte 0x01000100
_08032818: .4byte gCurTask
_0803281C: .4byte sub_8032A8C
_08032820:
	cmp r1, #4
	bne _08032888
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #8
	bne _08032888
	movs r0, #1
	bl sub_8032410
	b _08032A76
_0803283A:
	ldrh r1, [r5, #0x30]
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0x66
	bne _08032860
	ldr r2, [r7, #0x40]
	ldrh r0, [r2, #0x20]
	ldrh r1, [r3, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x20]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x1a]
	b _0803286C
_08032860:
	adds r0, r1, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08032880
_0803286C:
	ldr r1, _08032878 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _0803287C @ =sub_8032A8C
	str r2, [r0, #8]
	b _08032A76
	.align 2, 0
_08032878: .4byte gCurTask
_0803287C: .4byte sub_8032A8C
_08032880:
	ldrh r0, [r7, #0xa]
	strh r0, [r5, #0x18]
	ldrh r0, [r7, #0xc]
	strh r0, [r5, #0x1a]
_08032888:
	ldr r2, [r5, #4]
	ldr r0, _080328AC @ =0x01000100
	ands r0, r2
	cmp r0, #0
	bne _0803289A
	ldr r1, [r5]
	ldr r0, _080328B0 @ =PlayerCB_800D944
	cmp r1, r0
	bne _080328C0
_0803289A:
	ldr r0, _080328B4 @ =0xEFFFFFFF
	ands r2, r0
	str r2, [r5, #4]
	ldr r1, _080328B8 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _080328BC @ =sub_8032A8C
	str r2, [r0, #8]
	b _08032A60
	.align 2, 0
_080328AC: .4byte 0x01000100
_080328B0: .4byte PlayerCB_800D944
_080328B4: .4byte 0xEFFFFFFF
_080328B8: .4byte gCurTask
_080328BC: .4byte sub_8032A8C
_080328C0:
	ldr r0, _08032910 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r4, [r0, #0x14]
	ands r4, r1
	cmp r4, #0
	bne _080328CE
	b _08032A20
_080328CE:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	ldr r1, _08032914 @ =sub_800DB30
	bl SetPlayerCallback
	ldr r0, [r5, #4]
	ldr r1, _08032918 @ =0xEFFFFFF7
	ands r0, r1
	str r0, [r5, #4]
	ldr r1, _0803291C @ =gCurTask
	ldr r0, [r1]
	ldr r2, _08032920 @ =sub_8032A8C
	str r2, [r0, #8]
	adds r0, r5, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	bl sub_8004F10
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #1
	beq _08032948
	cmp r0, #1
	bgt _08032924
	cmp r0, #0
	beq _0803292E
	b _080329DC
	.align 2, 0
_08032910: .4byte gStageData
_08032914: .4byte sub_800DB30
_08032918: .4byte 0xEFFFFFF7
_0803291C: .4byte gCurTask
_08032920: .4byte sub_8032A8C
_08032924:
	cmp r0, #2
	beq _08032964
	cmp r0, #3
	beq _080329A0
	b _080329DC
_0803292E:
	movs r0, #0x20
	subs r4, r0, r6
	ldr r0, _08032944 @ =0x000003FF
	ands r4, r0
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	b _0803297A
	.align 2, 0
_08032944: .4byte 0x000003FF
_08032948:
	adds r4, r6, #0
	adds r4, #0x20
	ldr r0, _08032960 @ =0x000003FF
	ands r4, r0
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	b _080329B8
	.align 2, 0
_08032960: .4byte 0x000003FF
_08032964:
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _08032998 @ =0x000003FF
	ands r4, r1
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
_0803297A:
	str r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	ldr r2, _0803299C @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	b _080329DE
	.align 2, 0
_08032998: .4byte 0x000003FF
_0803299C: .4byte gSineTable
_080329A0:
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r1, #0
	subs r4, r0, r6
	ldr r2, _080329D4 @ =0x000003FF
	ands r4, r2
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
_080329B8:
	str r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	ldr r2, _080329D8 @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	b _080329DE
	.align 2, 0
_080329D4: .4byte 0x000003FF
_080329D8: .4byte gSineTable
_080329DC:
	movs r4, #0
_080329DE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08032A1C @ =gSineTable
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #0x11
	bl Div
	strh r0, [r5, #0x18]
	lsls r4, r4, #1
	ldr r2, _08032A1C @ =gSineTable
	adds r4, r4, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	movs r1, #0x11
	bl Div
	strh r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08032A60
	.align 2, 0
_08032A1C: .4byte gSineTable
_08032A20:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	adds r0, r6, #0
	movs r1, #0x56
	bl Div
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08032A36
	movs r1, #0xb
_08032A36:
	ldr r0, _08032A88 @ =0x0000036A
	mov r2, r8
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	strh r1, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [sp, #8]
	lsls r0, r1, #8
	str r0, [r5, #0x10]
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r5, #0x14]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
_08032A60:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #1
	bhi _08032A70
	b _08032740
_08032A70:
	movs r0, #1
	bl sub_8032410
_08032A76:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A88: .4byte 0x0000036A

	thumb_func_start sub_8032A8C
sub_8032A8C: @ 0x08032A8C
	push {r4, r5, r6, lr}
	ldr r6, _08032AF4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r5, r1, r0
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _08032AB0
	movs r0, #0xe0
	strh r0, [r4, #0x3a]
_08032AB0:
	ldrh r0, [r4, #0x3a]
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r2, _08032AF8 @ =0x00003FF0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x38]
	lsrs r0, r0, #4
	movs r1, #0x55
	bl Div
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08032AD0
	movs r1, #0xb
_08032AD0:
	ldr r0, _08032AFC @ =0x0000036A
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	cmp r1, #0
	bne _08032AE8
	strh r1, [r4, #0x38]
	strh r1, [r4, #0x3a]
	ldr r1, [r6]
	ldr r0, _08032B00 @ =sub_80324AC
	str r0, [r1, #8]
_08032AE8:
	movs r0, #0
	bl sub_8032410
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032AF4: .4byte gCurTask
_08032AF8: .4byte 0x00003FF0
_08032AFC: .4byte 0x0000036A
_08032B00: .4byte sub_80324AC

	thumb_func_start sub_8032B04
sub_8032B04: @ 0x08032B04
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8032B18
sub_8032B18: @ 0x08032B18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08032B58 @ =0x0000036A
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032B58: .4byte 0x0000036A
