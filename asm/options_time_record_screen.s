.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_8095370
Task_8095370: @ 0x08095370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080953C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _080953B0
	ldr r1, _080953C4 @ =gBldRegs
	movs r3, #0
	ldr r0, _080953C8 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _080953CC @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080953D0 @ =gWinRegs
	ldr r0, _080953D4 @ =0x00003510
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x26]
	strh r3, [r4, #0x28]
_080953B0:
	movs r7, #0x24
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _080953D8
	adds r0, r4, #0
	bl sub_809673C
	b _080953DE
	.align 2, 0
_080953C0: .4byte gCurTask
_080953C4: .4byte gBldRegs
_080953C8: .4byte 0x00003FFF
_080953CC: .4byte gDispCnt
_080953D0: .4byte gWinRegs
_080953D4: .4byte 0x00003510
_080953D8:
	adds r0, r4, #0
	bl sub_8096758
_080953DE:
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8096490
	adds r0, r4, #0
	bl sub_8096714
	ldr r2, _08095420 @ =gWinRegs
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _08095424 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08095428
	ldrh r0, [r4, #0x26]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r4, #0x26]
	adds r0, r0, r2
	strh r0, [r4, #0x26]
	b _0809548A
	.align 2, 0
_08095420: .4byte gWinRegs
_08095424: .4byte gBldRegs
_08095428:
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	movs r3, #0
	ldr r5, _0809549C @ =gCurTask
	mov sl, r5
	ldr r7, _080954A0 @ =gBgScrollRegs
	mov r8, r7
	ldr r0, _080954A4 @ =sub_80962B4
	mov sb, r0
	adds r1, r4, #0
	adds r1, #0x78
	str r1, [sp]
	adds r6, r4, #0
	adds r6, #0x7c
	adds r5, r4, #0
	adds r5, #0xf
	mov ip, r3
_0809544A:
	lsls r1, r3, #3
	ldr r7, [sp]
	adds r2, r7, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r6, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, r3
	mov r7, ip
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0809544A
	movs r0, #0
	strb r0, [r4, #0x1f]
	strb r0, [r4, #0x1e]
	movs r0, #0x80
	mov r1, r8
	strh r0, [r1, #6]
	mov r2, sl
	ldr r0, [r2]
	mov r5, sb
	str r5, [r0, #8]
_0809548A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809549C: .4byte gCurTask
_080954A0: .4byte gBgScrollRegs
_080954A4: .4byte sub_80962B4
.endif

	thumb_func_start Task_80954A8
Task_80954A8: @ 0x080954A8
	push {r4, r5, r6, lr}
	ldr r0, _080954F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #0x28]
	cmp r0, #0
	beq _0809551A
	ldr r1, _080954F4 @ =gBldRegs
	movs r3, #0
	movs r4, #0
	ldr r0, _080954F8 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _080954FC @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08095508
	ldr r0, _08095500 @ =gWinRegs
	movs r1, #0xff
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0, #6]
	ldr r1, _08095504 @ =0x00003130
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	b _08095510
	.align 2, 0
_080954F0: .4byte gCurTask
_080954F4: .4byte gBldRegs
_080954F8: .4byte 0x00003FFF
_080954FC: .4byte gDispCnt
_08095500: .4byte gWinRegs
_08095504: .4byte 0x00003130
_08095508:
	ldr r1, _08095540 @ =gWinRegs
	ldr r0, _08095544 @ =0x00003532
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
_08095510:
	movs r0, #0
	strh r0, [r6, #0x26]
	strh r0, [r6, #0x28]
	ldr r1, _08095548 @ =gBldRegs
	strh r0, [r1, #4]
_0809551A:
	ldrb r0, [r6, #3]
	cmp r0, #1
	beq _0809552C
	cmp r0, #5
	beq _0809552C
	cmp r0, #7
	beq _0809552C
	cmp r0, #3
	bne _0809554C
_0809552C:
	adds r0, r6, #0
	bl sub_809673C
	adds r0, r6, #0
	bl sub_8096814
	adds r0, r6, #0
	bl sub_8096774
	b _08095562
	.align 2, 0
_08095540: .4byte gWinRegs
_08095544: .4byte 0x00003532
_08095548: .4byte gBldRegs
_0809554C:
	cmp r0, #2
	beq _0809555C
	cmp r0, #6
	beq _0809555C
	cmp r0, #8
	beq _0809555C
	cmp r0, #4
	bne _08095582
_0809555C:
	adds r0, r6, #0
	bl sub_8096758
_08095562:
	adds r0, r6, #0
	bl sub_809673C
	adds r0, r6, #0
	bl sub_8095E8C
	adds r0, r6, #0
	bl sub_80960B8
	adds r0, r6, #0
	bl sub_80967DC
	adds r0, r6, #0
	bl sub_8095EF4
	b _08095598
_08095582:
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08095592
	adds r0, r6, #0
	bl sub_809673C
	b _08095598
_08095592:
	adds r0, r6, #0
	bl sub_8096758
_08095598:
	ldr r1, _080955B4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080955B8
	ldrh r0, [r6, #0x26]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	strh r0, [r6, #0x26]
	b _0809566A
	.align 2, 0
_080955B4: .4byte gBldRegs
_080955B8:
	ldrb r0, [r6, #3]
	cmp r0, #1
	beq _080955C2
	cmp r0, #3
	bne _080955E4
_080955C2:
	ldr r4, _080955E0 @ =gStageData
	movs r5, #0
	movs r0, #3
	strb r0, [r4, #3]
	movs r0, #0x1f
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x1e
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	adds r0, #3
	b _08095606
	.align 2, 0
_080955E0: .4byte gStageData
_080955E4:
	cmp r0, #2
	beq _080955EC
	cmp r0, #4
	bne _08095614
_080955EC:
	ldr r4, _08095610 @ =gStageData
	movs r5, #0
	movs r0, #4
	strb r0, [r4, #3]
	movs r1, #0x1f
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	asrs r0, r0, #0x10
_08095606:
	movs r1, #0
	bl WarpToMap
	strb r5, [r4, #1]
	b _0809566A
	.align 2, 0
_08095610: .4byte gStageData
_08095614:
	cmp r0, #5
	bne _08095624
	ldr r0, _08095620 @ =gStageData
	movs r2, #0
	movs r1, #3
	b _0809562E
	.align 2, 0
_08095620: .4byte gStageData
_08095624:
	cmp r0, #6
	bne _08095640
	ldr r0, _0809563C @ =gStageData
	movs r2, #0
	movs r1, #4
_0809562E:
	strb r1, [r0, #3]
	strb r2, [r0, #6]
	movs r0, #0
	bl CreateCharacterSelect
	b _08095662
	.align 2, 0
_0809563C: .4byte gStageData
_08095640:
	cmp r0, #7
	beq _08095648
	cmp r0, #8
	bne _0809565C
_08095648:
	ldr r1, _08095658 @ =gStageData
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #3
	bl CreateCharacterSelect
	b _08095662
	.align 2, 0
_08095658: .4byte gStageData
_0809565C:
	movs r0, #9
	bl LaunchOptionsMenu
_08095662:
	ldr r0, _08095670 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809566A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095670: .4byte gCurTask

	thumb_func_start sub_8095674
sub_8095674: @ 0x08095674
	push {r4, r5, lr}
	ldr r0, _08095694 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095698
	adds r0, r4, #0
	bl sub_809673C
	b _0809569E
	.align 2, 0
_08095694: .4byte gCurTask
_08095698:
	adds r0, r4, #0
	bl sub_8096758
_0809569E:
	adds r0, r4, #0
	bl sub_8096398
	adds r1, r0, #0
	cmp r1, #1
	bne _080956B2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strb r1, [r4, #1]
_080956B2:
	adds r0, r4, #0
	bl sub_8096678
	cmp r0, #1
	bne _080956C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #2
	strb r0, [r4, #1]
_080956C6:
	cmp r5, #2
	bne _080956D6
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _080956DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080956E0 @ =Task_8095764
	str r0, [r1, #8]
_080956D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080956DC: .4byte gCurTask
_080956E0: .4byte Task_8095764

	thumb_func_start Task_80956E4
Task_80956E4: @ 0x080956E4
	push {r4, r5, lr}
	ldr r0, _08095704 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095708
	adds r0, r4, #0
	bl sub_809673C
	b _0809570E
	.align 2, 0
_08095704: .4byte gCurTask
_08095708:
	adds r0, r4, #0
	bl sub_8096758
_0809570E:
	adds r0, r4, #0
	bl sub_80963E0
	cmp r0, #1
	bne _0809571E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809571E:
	adds r0, r4, #0
	bl sub_80966C4
	cmp r0, #1
	bne _0809572E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809572E:
	ldr r2, _08095758 @ =gWinRegs
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _08095750
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _0809575C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095760 @ =Task_80954A8
	str r0, [r1, #8]
_08095750:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095758: .4byte gWinRegs
_0809575C: .4byte gCurTask
_08095760: .4byte Task_80954A8

	thumb_func_start Task_8095764
Task_8095764: @ 0x08095764
	push {r4, r5, lr}
	ldr r5, _080957B0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096758
	adds r0, r4, #0
	bl sub_8096790
	adds r0, r4, #0
	bl sub_8096428
	adds r0, r4, #0
	bl sub_8096554
	ldr r0, _080957B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080957BC
	movs r0, #0x6b @ SE_ABORT
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #1]
	strh r0, [r4, #0x28]
	ldr r1, [r5]
	ldr r0, _080957B8 @ =Task_80956E4
	str r0, [r1, #8]
	b _08095830
	.align 2, 0
_080957B0: .4byte gCurTask
_080957B4: .4byte gPressedKeys
_080957B8: .4byte Task_80956E4
_080957BC:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _080957DC
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #4
	strb r0, [r4, #1]
	ldr r1, [r5]
	ldr r0, _080957D8 @ =Task_809624C
	str r0, [r1, #8]
	b _08095830
	.align 2, 0
_080957D8: .4byte Task_809624C
_080957DC:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08095830
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095804
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08095804
	strb r2, [r4, #4]
	strh r2, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x64]
	movs r0, #0x6c
	bl m4aSongNumStart
_08095804:
	ldr r0, _08095838 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809582A
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0809582A
	movs r0, #0x20
	strb r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _0809583C @ =0xFFFFF800
	str r0, [r4, #0x64]
	movs r0, #0x6c
	bl m4aSongNumStart
_0809582A:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x60]
_08095830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095838: .4byte gPressedKeys
_0809583C: .4byte 0xFFFFF800

	thumb_func_start Task_8095840
Task_8095840: @ 0x08095840
	push {r4, r5, lr}
	ldr r0, _080958AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8095D24
	cmp r0, #1
	bne _08095868
	movs r5, #2
_08095868:
	adds r0, r4, #0
	bl sub_8096590
	cmp r0, #1
	bne _08095876
	movs r0, #1
	orrs r5, r0
_08095876:
	adds r0, r4, #0
	bl sub_809660C
	cmp r0, #1
	bne _08095888
	movs r0, #4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08095888:
	adds r0, r4, #0
	bl sub_80967DC
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080958B0
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096774
	adds r0, r4, #0
	bl sub_8096814
	b _080958BC
	.align 2, 0
_080958AC: .4byte gCurTask
_080958B0:
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096758
_080958BC:
	adds r0, r4, #0
	bl sub_8095EF4
	ldr r0, _080958D8 @ =gBldRegs
	ldrh r0, [r0]
	cmp r0, #0x82
	bne _080958DC
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _080958DC
	adds r0, r4, #0
	bl sub_8095DF8
	b _08095910
	.align 2, 0
_080958D8: .4byte gBldRegs
_080958DC:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08095910
	ldr r1, _08095960 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080958FC
	ldr r2, _08095964 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r3, [r4, #0x26]
	adds r0, r0, r3
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_080958FC:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _08095910
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r4, #0x26]
	movs r5, #0xf
_08095910:
	cmp r5, #0xf
	bne _0809595A
	ldr r2, _08095968 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08095960 @ =gBldRegs
	movs r0, #0x82
	strh r0, [r1]
	ldr r1, _0809596C @ =gWinRegs
	ldr r0, _08095970 @ =0x00003532
	strh r0, [r1, #8]
	ldr r1, _08095974 @ =gBgScrollRegs
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r0, #0xf
	strh r0, [r1, #8]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x34]
	str r1, [r4, #0x6c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	ldr r0, _08095978 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809597C @ =Task_809630C
	str r0, [r1, #8]
_0809595A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095960: .4byte gBldRegs
_08095964: .4byte 0xFFFFFF00
_08095968: .4byte gDispCnt
_0809596C: .4byte gWinRegs
_08095970: .4byte 0x00003532
_08095974: .4byte gBgScrollRegs
_08095978: .4byte gCurTask
_0809597C: .4byte Task_809630C

	thumb_func_start sub_8095980
sub_8095980: @ 0x08095980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r6, #0
	ldrb r0, [r4, #0x1e]
	mov r8, r0
	ldrb r7, [r4, #0x1f]
	ldr r0, _080959B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08095A04
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #1
	strh r0, [r4, #0x28]
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _080959B8
	movs r0, #5
	strb r0, [r4, #3]
	b _08095A1C
	.align 2, 0
_080959B4: .4byte gPressedKeys
_080959B8:
	cmp r0, #2
	bne _080959C2
	movs r0, #6
	strb r0, [r4, #3]
	b _08095A1C
_080959C2:
	cmp r0, #3
	bne _080959CC
	movs r0, #7
	strb r0, [r4, #3]
	b _08095A1C
_080959CC:
	cmp r0, #4
	bne _080959D6
	movs r0, #8
	strb r0, [r4, #3]
	b _08095A1C
_080959D6:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080959EA
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	ldr r2, _080959F8 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080959EA:
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _080959FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095A00 @ =Task_8095370
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_080959F8: .4byte 0xFFFFE000
_080959FC: .4byte gCurTask
_08095A00: .4byte Task_8095370
_08095A04:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08095A30
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08095A30
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0x28]
_08095A1C:
	ldr r0, _08095A28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095A2C @ =Task_80954A8
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_08095A28: .4byte gCurTask
_08095A2C: .4byte Task_80954A8
_08095A30:
	ldr r1, _08095AD8 @ =gRepeatedKeys
	ldrh r2, [r1]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08095AE4
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08095A5C
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _08095A5C
	movs r0, #0
	strb r0, [r4, #0x1f]
_08095A5C:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08095A78
	ldrb r0, [r4, #0x1f]
	subs r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095A78
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x1f]
_08095A78:
	movs r1, #0x1f
	ldrsb r1, [r4, r1]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08095A86
	movs r6, #1
_08095A86:
	cmp r6, #0
	beq _08095AE4
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #2
	strh r0, [r4, #0x28]
	movs r3, #0
	adds r6, r4, #0
	adds r6, #0x78
	adds r5, r4, #0
	adds r5, #0x7c
	adds r4, #0xf
	mov r8, r3
_08095AA2:
	lsls r1, r3, #3
	adds r2, r6, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, r3
	mov r7, r8
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08095AA2
	ldr r0, _08095ADC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095AE0 @ =Task_8095840
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_08095AD8: .4byte gRepeatedKeys
_08095ADC: .4byte gCurTask
_08095AE0: .4byte Task_8095840
_08095AE4:
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08095AF0
	b _08095C00
_08095AF0:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095B4A
	movs r0, #0x24
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bne _08095B2E
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08095B4A
	strb r2, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _08095B4A
	strb r2, [r4, #0x1f]
	b _08095B4A
_08095B2E:
	movs r0, #3
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	movs r1, #0x1f
	ldrsb r1, [r4, r1]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _08095B4A
	movs r0, #0
	strb r0, [r4, #0x1f]
_08095B4A:
	ldr r0, _08095B70 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08095B8A
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095B74
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095B8A
	movs r0, #2
	b _08095B76
	.align 2, 0
_08095B70: .4byte gRepeatedKeys
_08095B74:
	movs r0, #3
_08095B76:
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	subs r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095B8A
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x1f]
_08095B8A:
	movs r0, #0x1f
	ldrsb r0, [r4, r0]
	lsls r1, r7, #0x18
	asrs r2, r1, #0x18
	ldrb r3, [r4, #0x1f]
	adds r5, r1, #0
	cmp r0, r2
	bne _08095BA8
	movs r1, #0x1e
	ldrsb r1, [r4, r1]
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08095BAA
_08095BA8:
	movs r6, #1
_08095BAA:
	cmp r6, #0
	beq _08095C00
	lsls r0, r3, #0x18
	cmp r0, r5
	beq _08095BB8
	movs r0, #2
	strh r0, [r4, #0x28]
_08095BB8:
	movs r3, #0
	ldr r7, _08095C0C @ =gCurTask
	mov r8, r7
	ldr r0, _08095C10 @ =Task_8095840
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0x78
	adds r5, r4, #0
	adds r5, #0x7c
	adds r4, #0xf
	mov sb, r3
_08095BCE:
	lsls r1, r3, #3
	adds r2, r6, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, r3
	mov r7, sb
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08095BCE
	mov r1, r8
	ldr r0, [r1]
	mov r2, ip
	str r2, [r0, #8]
_08095C00:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095C0C: .4byte gCurTask
_08095C10: .4byte Task_8095840

	thumb_func_start sub_8095C14
sub_8095C14: @ 0x08095C14
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, _08095C6C @ =gPressedKeys
	ldrh r3, [r1]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08095C80
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #1]
	movs r1, #0
	strh r0, [r2, #0x24]
	strb r1, [r2, #0x1e]
	strh r0, [r2, #0x22]
	strb r1, [r2, #4]
	ldrb r1, [r2, #2]
	ldr r3, _08095C70 @ =gWinRegs
	ldr r4, _08095C74 @ =gCurTask
	ldr r5, _08095C78 @ =sub_8095674
	cmp r0, r1
	bhi _08095C54
_08095C40:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _08095C40
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	ldr r0, _08095C7C @ =0xFFFFCE00
	str r0, [r2, #0x30]
_08095C54:
	movs r0, #0
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x2c]
	movs r0, #0xff
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #4]
	ldr r0, [r4]
	str r5, [r0, #8]
	b _08095CAE
	.align 2, 0
_08095C6C: .4byte gPressedKeys
_08095C70: .4byte gWinRegs
_08095C74: .4byte gCurTask
_08095C78: .4byte sub_8095674
_08095C7C: .4byte 0xFFFFCE00
_08095C80:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08095C90
	ldrh r0, [r2, #0x20]
	adds r0, #1
	strh r0, [r2, #0x20]
_08095C90:
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095CAE
	ldrh r0, [r2, #0x20]
	subs r0, #1
	strh r0, [r2, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08095CAE
	movs r0, #2
	strh r0, [r2, #0x20]
_08095CAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8095CB4
sub_8095CB4: @ 0x08095CB4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r1, [r2, #4]
	movs r4, #0
	movs r0, #0x8c
	subs r0, r0, r1
	lsls r3, r0, #8
	ldr r1, [r2, #0x34]
	cmp r1, r3
	bge _08095CE8
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x34]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x30]
	movs r5, #0x24
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _08095D02
	cmp r1, r3
	blt _08095D02
	str r3, [r2, #0x34]
	b _08095D02
_08095CE8:
	ldrh r0, [r2, #0x20]
	adds r0, #2
	lsls r0, r0, #8
	ldr r1, [r2, #0x30]
	adds r1, r1, r0
	str r1, [r2, #0x30]
	str r3, [r2, #0x34]
	ldr r0, _08095D18 @ =0x000117FF
	cmp r1, r0
	ble _08095D02
	adds r0, #1
	str r0, [r2, #0x30]
	movs r4, #1
_08095D02:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	cmp r4, #0
	bne _08095D1C
	movs r0, #0
	b _08095D1E
	.align 2, 0
_08095D18: .4byte 0x000117FF
_08095D1C:
	movs r0, #1
_08095D1E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8095D24
sub_8095D24: @ 0x08095D24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r5, #0
	mov r7, ip
	adds r7, #0xf
	mov r6, ip
	adds r6, #0x78
	mov sl, r5
	ldr r4, _08095D78 @ =gUnknown_080D8BB0
	mov sb, r4
_08095D44:
	adds r0, r7, r5
	ldrb r3, [r0]
	lsls r2, r5, #3
	mov r1, ip
	adds r1, #0x7c
	adds r1, r1, r2
	lsls r0, r5, #2
	ldr r4, _08095D7C @ =gUnknown_080D8B9C
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r1]
	cmp r3, #6
	bne _08095D86
	adds r2, r6, r2
	ldr r0, [r2]
	cmp r0, #0
	blt _08095D80
	mov r0, sl
	str r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _08095DCC
	.align 2, 0
_08095D78: .4byte gUnknown_080D8BB0
_08095D7C: .4byte gUnknown_080D8B9C
_08095D80:
	mov r4, sl
	str r4, [r2]
	b _08095DCC
_08095D86:
	cmp r3, #5
	bhi _08095DA0
	adds r0, r6, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	mov r4, ip
	adds r4, #0x78
	cmp r1, r0
	bgt _08095DBA
	b _08095DB4
_08095DA0:
	adds r0, r6, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	mov r4, ip
	adds r4, #0x78
	cmp r1, r0
	blt _08095DBA
_08095DB4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08095DBA:
	adds r2, r4, r2
	ldr r0, _08095DE4 @ =gUnknown_080D8BD8
	adds r0, r3, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
_08095DCC:
	adds r0, r7, r5
	strb r3, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08095D44
	mov r0, r8
	cmp r0, #4
	bhi _08095DE8
	movs r0, #0
	b _08095DEA
	.align 2, 0
_08095DE4: .4byte gUnknown_080D8BD8
_08095DE8:
	movs r0, #1
_08095DEA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8095DF8
sub_8095DF8: @ 0x08095DF8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x1f]
	ldr r4, _08095E80 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r2, #0x28]
	cmp r0, #2
	bne _08095E46
	ldr r1, _08095E84 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08095E24
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r5, [r2, #0x26]
	adds r0, r0, r5
	strh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_08095E24:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _08095E46
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r1, #1
	strh r1, [r2, #0x28]
	lsls r0, r0, #8
	strh r0, [r2, #0x26]
	lsls r1, r3, #4
	lsls r0, r3, #3
	adds r0, #0x80
	adds r1, r1, r0
	strh r1, [r4, #6]
_08095E46:
	ldrh r0, [r2, #0x28]
	cmp r0, #1
	bne _08095E76
	ldr r1, _08095E84 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08095E64
	ldr r3, _08095E88 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r5, [r2, #0x26]
	adds r0, r0, r5
	strh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_08095E64:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08095E76
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r2, #0x28]
_08095E76:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08095E80: .4byte gBgScrollRegs
_08095E84: .4byte gBldRegs
_08095E88: .4byte 0xFFFFFF00

	thumb_func_start sub_8095E8C
sub_8095E8C: @ 0x08095E8C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08095EEC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldrh r1, [r5, #0x1e]
	ldr r0, _08095EF0 @ =0x00000603
	cmp r1, r0
	bne _08095EBA
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08095EBA:
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	adds r0, #0x69
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x74]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095EEC: .4byte 0xFFFFFBFF
_08095EF0: .4byte 0x00000603

	thumb_func_start sub_8095EF4
sub_8095EF4: @ 0x08095EF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08095FBC @ =gUnknown_080D8BE2
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldrb r1, [r6, #0x1e]
	ldrb r2, [r6, #0x1f]
	movs r3, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x18]
_08095F26:
	movs r1, #0
	mov r8, r1
	lsls r0, r3, #1
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r2, _08095FC0 @ =0x0000054C
	adds r1, r6, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #4
	bhi _08095F46
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08095FC4
_08095F46:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	adds r3, #1
	str r3, [sp, #0x24]
	mov sl, r7
	adds r2, r2, r7
	str r2, [sp, #0x2c]
_08095F62:
	cmp r4, #1
	beq _08095F6A
	cmp r4, #3
	bne _08095F74
_08095F6A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08095F74:
	mov r3, sp
	adds r0, r3, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	mov r3, sl
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095F62
	b _08096058
	.align 2, 0
_08095FBC: .4byte gUnknown_080D8BE2
_08095FC0: .4byte 0x0000054C
_08095FC4:
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x20]
	lsls r0, r3, #2
	adds r1, r3, #1
	str r1, [sp, #0x24]
	str r7, [sp, #0x1c]
	adds r2, r2, r7
	mov sl, r2
	adds r0, r0, r3
	lsls r0, r0, #1
	str r0, [sp, #0x2c]
_08095FEA:
	ldr r3, [sp, #0x20]
	adds r2, r3, r4
	lsls r0, r4, #1
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	adds r0, r0, r3
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r3, _080960AC @ =0x00000556
	adds r1, r6, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	cmp r4, #1
	beq _0809601E
	cmp r4, #3
	bne _08096028
_0809601E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08096028:
	ldr r3, [sp, #0x1c]
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	mov r1, sl
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095FEA
_08096058:
	ldr r3, _080960B0 @ =0x0000043C
	adds r2, r6, r3
	adds r5, r5, r7
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xb3
	strh r0, [r2, #0x10]
	mov r0, sb
	adds r4, r0, r7
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r1, _080960B4 @ =0x00000464
	adds r2, r6, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xce
	strh r0, [r2, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _0809609A
	b _08095F26
_0809609A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080960AC: .4byte 0x00000556
_080960B0: .4byte 0x0000043C
_080960B4: .4byte 0x00000464

	thumb_func_start sub_80960B8
sub_80960B8: @ 0x080960B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r1, [r6]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	ldrb r0, [r6, #0x1e]
	str r0, [sp]
	ldrb r1, [r6, #0x1f]
	mov sl, r1
	movs r2, #0
	mov sb, r2
_080960DC:
	mov r3, sb
	lsls r1, r3, #1
	ldr r2, [sp]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _080961D0 @ =0x0000054C
	adds r0, r6, r1
	mov r2, r8
	adds r7, r0, r2
	ldrb r0, [r7]
	cmp r0, #4
	bhi _080961C0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	mov r0, sb
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0x78
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #8
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	adds r5, r6, #0
	adds r5, #0x7c
	adds r5, r5, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r3, _080961D4 @ =0x00000414
	adds r2, r6, r3
	ldr r1, _080961D8 @ =gUnknown_080D8B44
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, _080961DC @ =gUnknown_080D8BE7
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	orrs r0, r3
	ldrb r7, [r7]
	adds r0, r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, _080961E0 @ =0x0000054D
	adds r0, r6, r2
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	adds r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #4
	bls _080960DC
_080961C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080961D0: .4byte 0x0000054C
_080961D4: .4byte 0x00000414
_080961D8: .4byte gUnknown_080D8B44
_080961DC: .4byte gUnknown_080D8BE7
_080961E0: .4byte 0x0000054D

	thumb_func_start CreateTimeRecordScreen
CreateTimeRecordScreen: @ 0x080961E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08096238 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809623C @ =Task_TimeRecordScreenInit
	ldr r1, _08096240 @ =0x00000BDC
	ldr r2, _08096244 @ =0x00000101
	ldr r3, _08096248 @ =TaskDestructor_TimeRecordScreen
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	strb r5, [r4, #3]
	adds r0, r4, #0
	bl sub_80947EC
	adds r0, r4, #0
	bl sub_8094924
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0809622E
	bl m4aMPlayAllStop
	movs r0, #0x47      @ MUS_TIME_ATTACK_1
	bl m4aSongNumStart
_0809622E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08096238: .4byte gDispCnt
_0809623C: .4byte Task_TimeRecordScreenInit
_08096240: .4byte 0x00000BDC
_08096244: .4byte 0x00000101
_08096248: .4byte TaskDestructor_TimeRecordScreen

	thumb_func_start Task_809624C
Task_809624C: @ 0x0809624C
	push {r4, lr}
	ldr r0, _0809626C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08096270
	adds r0, r4, #0
	bl sub_809673C
	b _08096276
	.align 2, 0
_0809626C: .4byte gCurTask
_08096270:
	adds r0, r4, #0
	bl sub_8096758
_08096276:
	adds r0, r4, #0
	bl sub_8096714
	adds r0, r4, #0
	bl sub_8095CB4
	cmp r0, #1
	bne _080962A4
	movs r0, #0
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_8096714
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0809629C
	movs r0, #3
	strb r0, [r4, #0x1e]
_0809629C:
	ldr r0, _080962AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080962B0 @ =Task_8095210
	str r0, [r1, #8]
_080962A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080962AC: .4byte gCurTask
_080962B0: .4byte Task_8095210

	thumb_func_start sub_80962B4
sub_80962B4: @ 0x080962B4
	push {r4, lr}
	ldr r0, _080962D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080962D8
	adds r0, r4, #0
	bl sub_809673C
	b _080962DE
	.align 2, 0
_080962D4: .4byte gCurTask
_080962D8:
	adds r0, r4, #0
	bl sub_8096758
_080962DE:
	adds r0, r4, #0
	bl sub_8096714
	adds r0, r4, #0
	bl sub_8096490
	cmp r0, #1
	bne _080962FC
	adds r0, r4, #0
	bl sub_8096714
	ldr r0, _08096304 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08096308 @ =Task_8095764
	str r0, [r1, #8]
_080962FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096304: .4byte gCurTask
_08096308: .4byte Task_8095764

	thumb_func_start Task_809630C
Task_809630C: @ 0x0809630C
	push {r4, r5, lr}
	ldr r0, _0809634C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x30]
	ldr r0, _08096350 @ =0x00007BFF
	cmp r1, r0
	ble _0809632E
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0809632E
	adds r0, r4, #0
	bl sub_8095DF8
_0809632E:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08096354
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096814
	adds r0, r4, #0
	bl sub_8096774
	b _0809635A
	.align 2, 0
_0809634C: .4byte gCurTask
_08096350: .4byte 0x00007BFF
_08096354:
	adds r0, r4, #0
	bl sub_8096758
_0809635A:
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8095E8C
	adds r0, r4, #0
	bl sub_8096520
	adds r0, r4, #0
	bl sub_8096520
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_80967DC
	adds r0, r4, #0
	bl sub_8095EF4
	adds r0, r4, #0
	adds r1, r5, #0  @@@ UNUSED VAR!!!!!
	bl sub_8095980
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8096398
sub_8096398: @ 0x08096398
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080963CE
	ldr r1, [r2, #0x30]
	ldr r3, _080963D4 @ =0x000077FF
	cmp r1, r3
	bgt _080963C4
	ldrh r0, [r2, #0x20]
	adds r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r2, #0x30]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	cmp r0, r3
	ble _080963C4
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x30]
_080963C4:
	ldr r1, [r2, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	beq _080963D8
_080963CE:
	movs r0, #0
	b _080963DA
	.align 2, 0
_080963D4: .4byte 0x000077FF
_080963D8:
	movs r0, #1
_080963DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80963E0
sub_80963E0: @ 0x080963E0
	push {r4, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #4]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08096416
	ldr r0, [r2, #0x30]
	ldr r3, _0809641C @ =0xFFFFCE00
	cmp r0, r3
	blt _0809640C
	ldrh r1, [r2, #0x20]
	adds r1, #1
	lsls r1, r1, #8
	subs r1, r0, r1
	str r1, [r2, #0x30]
	movs r0, #0x50
	subs r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	cmp r1, r3
	bgt _0809640C
	str r3, [r2, #0x30]
_0809640C:
	ldr r1, [r2, #0x30]
	str r1, [r2, #0x38]
	ldr r0, _0809641C @ =0xFFFFCE00
	cmp r1, r0
	beq _08096420
_08096416:
	movs r0, #0
	b _08096422
	.align 2, 0
_0809641C: .4byte 0xFFFFCE00
_08096420:
	movs r0, #1
_08096422:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8096428
sub_8096428: @ 0x08096428
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #4]
	ldr r1, [r2, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0809647A
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0809645E
	movs r0, #0x50
	subs r0, r0, r3
	lsls r1, r0, #8
	ldr r3, [r2, #0x34]
	cmp r3, r1
	ble _0809647A
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	subs r0, r3, r0
	str r0, [r2, #0x34]
	cmp r0, r1
	bgt _0809647A
	str r1, [r2, #0x34]
	b _0809647A
_0809645E:
	ldr r1, [r2, #0x34]
	movs r3, #0xa0
	lsls r3, r3, #7
	cmp r1, r3
	bgt _0809647A
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r2, #0x34]
	ldr r1, _0809648C @ =0x00004FFF
	cmp r0, r1
	ble _0809647A
	str r3, [r2, #0x34]
_0809647A:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	pop {r0}
	bx r0
	.align 2, 0
_0809648C: .4byte 0x00004FFF

	thumb_func_start sub_8096490
sub_8096490: @ 0x08096490
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #4]
	movs r5, #0
	ldr r0, [r2, #0x30]
	movs r3, #0xf0
	lsls r3, r3, #7
	cmp r0, r3
	ble _080964BC
	ldrh r1, [r2, #0x20]
	adds r1, #7
	lsls r1, r1, #8
	subs r1, r0, r1
	str r1, [r2, #0x30]
	movs r0, #0x8c
	subs r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	cmp r1, r3
	bgt _080964D8
	str r3, [r2, #0x30]
	b _080964D8
_080964BC:
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	ldr r1, [r2, #0x34]
	subs r1, r1, r0
	str r1, [r2, #0x34]
	str r3, [r2, #0x30]
	movs r0, #0x50
	subs r0, r0, r4
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080964D8
	str r0, [r2, #0x34]
	movs r5, #1
_080964D8:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	cmp r5, #0
	bne _080964EE
	movs r0, #0
	b _080964F0
_080964EE:
	movs r0, #1
_080964F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80964F8
sub_80964F8: @ 0x080964F8
	ldr r2, [r0, #0x58]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r2, r1
	str r2, [r0, #0x58]
	ldr r1, [r0, #0x5c]
	ldr r3, _08096518 @ =0xFFFFFE80
	adds r1, r1, r3
	str r1, [r0, #0x5c]
	ldr r0, _0809651C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0]
	asrs r1, r1, #8
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08096518: .4byte 0xFFFFFE80
_0809651C: .4byte gBgScrollRegs

	thumb_func_start sub_8096520
sub_8096520: @ 0x08096520
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x68]
	subs r0, #0x20
	str r0, [r2, #0x68]
	ldr r1, _08096550 @ =0x00007FFF
	cmp r0, r1
	bgt _08096536
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r2, #0x68]
_08096536:
	ldr r0, [r2, #0x70]
	adds r0, #0x20
	str r0, [r2, #0x70]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809654A
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r2, #0x70]
_0809654A:
	pop {r0}
	bx r0
	.align 2, 0
_08096550: .4byte 0x00007FFF

	thumb_func_start sub_8096554
sub_8096554: @ 0x08096554
	push {lr}
	adds r2, r0, #0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08096574
	ldr r0, [r2, #0x64]
	adds r0, #0x80
	str r0, [r2, #0x64]
	movs r1, #0x94
	lsls r1, r1, #6
	cmp r0, r1
	ble _08096584
	movs r0, #0x80
	lsls r0, r0, #6
	b _08096582
_08096574:
	ldr r0, [r2, #0x64]
	subs r0, #0x80
	str r0, [r2, #0x64]
	ldr r1, _08096588 @ =0xFFFFF300
	cmp r0, r1
	bge _08096584
	ldr r0, _0809658C @ =0xFFFFF800
_08096582:
	str r0, [r2, #0x64]
_08096584:
	pop {r0}
	bx r0
	.align 2, 0
_08096588: .4byte 0xFFFFF300
_0809658C: .4byte 0xFFFFF800

	thumb_func_start sub_8096590
sub_8096590: @ 0x08096590
	push {r4, r5, lr}
	mov ip, r0
	movs r4, #0
	movs r3, #0
	movs r5, #0
	ldr r2, _080965F8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080965FC @ =gHBlankCopyTarget
	ldr r0, _08096600 @ =0x04000018
	str r0, [r1]
	ldr r1, _08096604 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08096608 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
_080965B4:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x78
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, #0xf
	cmp r0, #0xf0
	ble _080965C8
	movs r0, #0xf0
_080965C8:
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r2, #2
	cmp r4, #3
	bls _080965E4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x18
	bne _080965E4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0
_080965E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _080965B4
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080965F8: .4byte gFlags
_080965FC: .4byte gHBlankCopyTarget
_08096600: .4byte 0x04000018
_08096604: .4byte gHBlankCopySize
_08096608: .4byte gBgOffsetsHBlankPrimary

	thumb_func_start sub_809660C
sub_809660C: @ 0x0809660C
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r3, r1]
	movs r1, #0x8c
	cmp r0, #0
	bne _0809661E
	movs r1, #0x7c
_0809661E:
	lsls r4, r1, #8
	ldr r0, [r3, #0x30]
	cmp r0, r4
	bgt _0809664C
	ldrh r2, [r3, #0x20]
	adds r2, #8
	lsls r2, r2, #8
	adds r2, r0, r2
	str r2, [r3, #0x30]
	ldrh r1, [r3, #0x20]
	adds r1, #8
	lsls r1, r1, #8
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	cmp r2, r4
	ble _0809664C
	str r4, [r3, #0x30]
	movs r2, #0xa8
	lsls r2, r2, #6
	adds r0, r4, r2
	str r0, [r3, #0x48]
	movs r5, #1
_0809664C:
	ldr r1, [r3, #0x30]
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r3, #0x38]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08096664
	movs r2, #0x84
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r3, #0x38]
_08096664:
	ldr r0, [r3, #0x34]
	str r0, [r3, #0x3c]
	cmp r5, #0
	bne _08096670
	movs r0, #0
	b _08096672
_08096670:
	movs r0, #1
_08096672:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8096678
sub_8096678: @ 0x08096678
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #4]
	ldr r2, [r3, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r2, r1
	ble _080966BC
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r3, #0x2c]
	cmp r0, r1
	bgt _08096696
	str r1, [r3, #0x2c]
_08096696:
	lsls r1, r4, #8
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	ldr r2, [r3, #0x2c]
	asrs r1, r2, #1
	subs r0, r0, r1
	str r0, [r3, #0x54]
	ldr r3, _080966B8 @ =gWinRegs
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	strh r1, [r3, #4]
	movs r0, #0
	b _080966BE
	.align 2, 0
_080966B8: .4byte gWinRegs
_080966BC:
	movs r0, #1
_080966BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80966C4
sub_80966C4: @ 0x080966C4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #4]
	ldr r2, [r3, #0x2c]
	ldr r1, _08096704 @ =0x00009FFF
	cmp r2, r1
	bgt _0809670C
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r3, #0x2c]
	cmp r0, r1
	ble _080966E4
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r3, #0x2c]
_080966E4:
	lsls r1, r4, #8
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	ldr r2, [r3, #0x2c]
	asrs r1, r2, #1
	subs r0, r0, r1
	str r0, [r3, #0x54]
	ldr r3, _08096708 @ =gWinRegs
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	strh r1, [r3, #4]
	movs r0, #0
	b _0809670E
	.align 2, 0
_08096704: .4byte 0x00009FFF
_08096708: .4byte gWinRegs
_0809670C:
	movs r0, #1
_0809670E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8096714
sub_8096714: @ 0x08096714
	ldrb r2, [r0, #4]
	lsls r2, r2, #8
	ldr r1, [r0, #0x34]
	adds r1, r1, r2
	ldr r2, _08096734 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x54]
	ldr r3, _08096738 @ =gWinRegs
	asrs r1, r1, #8
	lsls r2, r1, #8
	adds r2, r2, r1
	ldr r0, [r0, #0x2c]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_08096734: .4byte 0xFFFFF400
_08096738: .4byte gWinRegs

	thumb_func_start sub_809673C
sub_809673C: @ 0x0809673C
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa4
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x34]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096758
sub_8096758: @ 0x08096758
	push {lr}
	adds r2, r0, #0
	adds r2, #0xcc
	ldr r1, [r0, #0x38]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x3c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096774
sub_8096774: @ 0x08096774
	push {lr}
	adds r2, r0, #0
	adds r2, #0xf4
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x4c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096790
sub_8096790: @ 0x08096790
	push {r4, lr}
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x60]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r2, [r0, #0x64]
	asrs r2, r2, #8
	strh r2, [r4, #0x12]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r4, #0x12]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080967BE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080967C4
_080967BE:
	ldr r0, [r4, #8]
	ldr r1, _080967D8 @ =0xFFFFF7FF
	ands r0, r1
_080967C4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080967D8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80967DC
sub_80967DC: @ 0x080967DC
	push {r4, lr}
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	adds r1, #0x19
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x34]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	ldr r1, _08096810 @ =sAnimsTimeAttackDigits
	ldrb r0, [r0, #0x1f]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096810: .4byte sAnimsTimeAttackDigits

	thumb_func_start sub_8096814
sub_8096814: @ 0x08096814
	push {r4, lr}
	ldrb r2, [r0, #0x1e]
	movs r1, #0xca
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	adds r1, #0x2d
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x4c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, _08096848 @ =sAnimsTimeAttackDigits
	ldrb r0, [r0, #2]
	adds r2, r2, r0
	strb r2, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096848: .4byte sAnimsTimeAttackDigits

	thumb_func_start TaskDestructor_TimeRecordScreen
TaskDestructor_TimeRecordScreen: @ 0x0809684C
	bx lr
	.align 2, 0
