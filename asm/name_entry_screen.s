.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_80924D
Task_80924D: @ 0x080924DC
	push {r4, r5, lr}
	ldr r0, _08092560 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x22]
	cmp r0, #0
	beq _08092518
	ldr r1, _08092564 @ =gBldRegs
	movs r3, #0
	ldr r0, _08092568 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _0809256C @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08092570 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _08092574 @ =0x00003D32
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x20]
	strh r3, [r4, #0x22]
_08092518:
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r5, _08092564 @ =gBldRegs
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _08092578
	adds r0, r4, #0
	bl sub_80933B0
	ldrh r0, [r4, #0x20]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r5, [r4, #0x20]
	adds r0, r0, r5
	strh r0, [r4, #0x20]
	b _080925F8
	.align 2, 0
_08092560: .4byte gCurTask
_08092564: .4byte gBldRegs
_08092568: .4byte 0x00003FFF
_0809256C: .4byte gDispCnt
_08092570: .4byte gWinRegs
_08092574: .4byte 0x00003D32
_08092578:
	movs r0, #0x10
	strh r0, [r5, #4]
	ldr r3, _080925B0 @ =gLoadedSaveGame
	ldr r0, [r3]
	cmp r0, #0
	bne _08092594
	ldr r2, _080925B4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080925B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080925BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	str r0, [r3]
_08092594:
	bl sub_8001E58
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080925C4
	ldr r1, _080925C0 @ =gStageData
	movs r0, #6
	strb r0, [r1, #3]
	bl sub_80003B8
	movs r0, #0
	bl sub_808D0F0
	b _080925F0
	.align 2, 0
_080925B0: .4byte gLoadedSaveGame
_080925B4: .4byte gPseudoRandom
_080925B8: .4byte 0x00196225
_080925BC: .4byte 0x3C6EF35F
_080925C0: .4byte gStageData
_080925C4:
	cmp r0, #3
	bne _080925E0
	ldr r1, _080925DC @ =gStageData
	movs r0, #7
	strb r0, [r1, #3]
	bl sub_80003B8
	movs r0, #0
	bl sub_8000340
	b _080925F0
	.align 2, 0
_080925DC: .4byte gStageData
_080925E0:
	cmp r0, #1
	bne _080925EC
	movs r0, #8
	bl LaunchOptionsMenu
	b _080925F0
_080925EC:
	bl LaunchGameIntro
_080925F0:
	ldr r0, _08092600 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080925F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092600: .4byte gCurTask

	thumb_func_start sub_8092604
sub_8092604: @ 0x08092604
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08092684 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_8093784
	cmp r0, #1
	bne _0809262C
	movs r5, #1
_0809262C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80934F0
	cmp r0, #1
	bne _0809263E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809263E:
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r2, _08092688 @ =gWinRegs
	ldr r1, [r4, #0x30]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0xc]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _0809267C
	ldr r1, [r6]
	ldr r0, _0809268C @ =sub_8092AC8
	str r0, [r1, #8]
_0809267C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092684: .4byte gCurTask
_08092688: .4byte gWinRegs
_0809268C: .4byte sub_8092AC8

	thumb_func_start sub_8092690
sub_8092690: @ 0x08092690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08092784 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08092788 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r7, _0809278C @ =0x00196225
	muls r0, r7, r0
	ldr r6, _08092790 @ =0x3C6EF35F
	adds r5, r0, r6
	str r5, [r2]
	str r5, [sp]
	ldr r0, [sp]
	movs r1, #0xf
	ands r0, r1
	lsls r3, r0, #0x10
	cmp r3, #0
	beq _080926DE
	mov ip, r2
	adds r1, r5, #0
_080926C8:
	adds r0, r1, #0
	muls r0, r7, r0
	adds r1, r0, r6
	str r1, [sp]
	ldr r0, _08092794 @ =0xFFFF0000
	adds r3, r3, r0
	asrs r0, r3, #0x10
	cmp r0, #0
	bne _080926C8
	mov r3, ip
	str r1, [r3]
_080926DE:
	ldr r0, [sp]
	str r0, [r2]
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	ldr r5, _08092798 @ =gPressedKeys
	ldrh r1, [r5]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08092708
	movs r0, #0x6b
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092D1C
_08092708:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092720
	movs r0, #1
	strb r0, [r4, #3]
	strh r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_80937DC
_08092720:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092738
	movs r0, #2
	strb r0, [r4, #3]
	strh r6, [r4, #0xe]
	adds r0, r4, #0
	bl sub_80937DC
_08092738:
	adds r0, r4, #0
	bl sub_80935E4
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809281C
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r6, #0xe
	ldrsh r0, [r4, r6]
	cmp r0, #1
	beq _08092800
	cmp r0, #1
	bgt _0809279C
	cmp r0, #0
	beq _080927A2
	b _0809281C
	.align 2, 0
_08092784: .4byte gCurTask
_08092788: .4byte gPseudoRandom
_0809278C: .4byte 0x00196225
_08092790: .4byte 0x3C6EF35F
_08092794: .4byte 0xFFFF0000
_08092798: .4byte gPressedKeys
_0809279C:
	cmp r0, #2
	beq _0809280C
	b _0809281C
_080927A2:
	movs r3, #0
	movs r2, #0
	ldrb r0, [r4, #5]
	adds r1, r0, #0
	adds r6, r0, #0
	cmp r3, r1
	bhs _080927E0
	ldr r0, _080927F4 @ =0x00000404
	mov r8, r0
	adds r5, r1, #0
	movs r7, #0xee
	lsls r7, r7, #1
_080927BA:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r1, r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0x4d
	bne _080927D6
	ldrh r0, [r1, #0xc]
	cmp r0, r8
	bne _080927D6
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080927D6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r5
	blo _080927BA
_080927E0:
	adds r0, r6, #0
	cmp r0, #0
	beq _0809281C
	cmp r3, r0
	bhs _0809281C
	ldr r0, _080927F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080927FC @ =sub_8092A0C
	str r0, [r1, #8]
	b _080929FC
	.align 2, 0
_080927F4: .4byte 0x00000404
_080927F8: .4byte gCurTask
_080927FC: .4byte sub_8092A0C
_08092800:
	ldrb r0, [r4, #6]
	adds r1, r0, #0
	cmp r1, #0
	beq _08092814
	subs r0, #1
	b _0809281A
_0809280C:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	cmp r0, r1
	bne _08092818
_08092814:
	strb r1, [r4, #6]
	b _0809281C
_08092818:
	adds r0, #1
_0809281A:
	strb r0, [r4, #6]
_0809281C:
	ldr r5, _08092848 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0809282A
	b _080929FC
_0809282A:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092850
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _0809284C
	movs r0, #0
	b _0809284E
	.align 2, 0
_08092848: .4byte gRepeatedKeys
_0809284C:
	adds r0, r1, #1
_0809284E:
	strh r0, [r4, #0xe]
_08092850:
	ldr r2, _0809286C @ =gRepeatedKeys
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08092874
	ldrh r1, [r4, #0xe]
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08092870
	movs r0, #2
	b _08092872
	.align 2, 0
_0809286C: .4byte gRepeatedKeys
_08092870:
	subs r0, r1, #1
_08092872:
	strh r0, [r4, #0xe]
_08092874:
	ldrh r2, [r2]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08092930
	movs r2, #0
	movs r0, #0xba
	str r0, [r4, #0x3c]
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080928B0
	ldr r0, [r4, #0x40]
	cmp r0, #0x34
	bne _080928AC
	ldrh r1, [r4, #0x12]
	movs r6, #0x12
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080928A4
	movs r0, #0x84
	str r0, [r4, #0x40]
	adds r0, #0x7c
	strh r0, [r4, #0x12]
	b _080928B0
_080928A4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r4, #0x12]
	b _080928B0
_080928AC:
	subs r0, #0x10
	str r0, [r4, #0x40]
_080928B0:
	ldr r0, _08092924 @ =gCurTask
	mov sb, r0
	ldr r1, _08092928 @ =sub_8092AC8
	mov sl, r1
	cmp r2, #0
	beq _080928BE
	b _080929EA
_080928BE:
	ldr r1, [r4, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	ldr r7, _0809292C @ =gUnknown_080D7470
	ldrh r2, [r7]
	mov r8, r2
	mov ip, r7
	lsrs r6, r0, #0x18
_080928D8:
	ldr r1, [r4, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r3, #0
	cmp r8, r5
	bne _080928F0
	ldrh r0, [r7, #2]
	cmp r0, r6
	beq _08092910
_080928F0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08092910
	lsls r2, r3, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _080928F0
	mov r0, ip
	adds r0, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, r6
	bne _080928F0
_08092910:
	movs r2, #1
	cmp r3, #0xe
	beq _0809291E
	movs r2, #0
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r4, #0x3c]
_0809291E:
	cmp r2, #0
	beq _080928D8
	b _080929EA
	.align 2, 0
_08092924: .4byte gCurTask
_08092928: .4byte sub_8092AC8
_0809292C: .4byte gUnknown_080D7470
_08092930:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080929F8
	movs r2, #0
	movs r0, #0x1a
	str r0, [r4, #0x3c]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _0809296C
	ldr r0, [r4, #0x40]
	cmp r0, #0x84
	bne _08092968
	ldrh r3, [r4, #0x12]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08092960
	movs r0, #0x34
	str r0, [r4, #0x40]
	strh r2, [r4, #0x12]
	b _0809296C
_08092960:
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r4, #0x12]
	b _0809296C
_08092968:
	adds r0, #0x10
	str r0, [r4, #0x40]
_0809296C:
	ldr r1, _080929AC @ =gCurTask
	mov sb, r1
	ldr r3, _080929B0 @ =sub_8092AC8
	mov sl, r3
	cmp r2, #0
	bne _080929EA
	ldr r1, [r4, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	ldr r7, _080929B4 @ =gUnknown_080D7470
	ldrh r6, [r7]
	mov r8, r6
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r7, #2
	mov ip, r0
_08092996:
	ldr r1, [r4, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r3, #0
	cmp r8, r5
	bne _080929B8
	ldrh r0, [r7, #2]
	b _080929D2
	.align 2, 0
_080929AC: .4byte gCurTask
_080929B0: .4byte sub_8092AC8
_080929B4: .4byte gUnknown_080D7470
_080929B8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _080929D8
	lsls r2, r3, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _080929B8
	mov r6, ip
	adds r0, r2, r6
	ldrh r0, [r0]
_080929D2:
	ldr r2, [sp, #4]
	cmp r0, r2
	bne _080929B8
_080929D8:
	movs r2, #1
	cmp r3, #0xe
	beq _080929E6
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r4, #0x3c]
_080929E6:
	cmp r2, #0
	beq _08092996
_080929EA:
	movs r0, #0
	strb r0, [r4, #7]
	mov r3, sb
	ldr r0, [r3]
	mov r6, sl
	str r6, [r0, #8]
	b _080929FC
_080929F8:
	ldrh r0, [r4, #0xe]
	strb r0, [r4, #3]
_080929FC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8092A0C
sub_8092A0C: @ 0x08092A0C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08092AB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	movs r3, #0
	ldrb r0, [r4, #5]
	cmp r3, r0
	bhs _08092A86
	ldr r7, _08092AB8 @ =gLoadedSaveGame + 0x4
	mov ip, r7
	ldr r0, _08092ABC @ =gUnknown_080D7458
	ldrh r5, [r0]
	movs r6, #0xee
	lsls r6, r6, #1
_08092A58:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r4, r0
	lsls r1, r3, #1
	add r1, ip
	ldrb r2, [r0, #0x1a]
	strh r2, [r1]
	ldrh r0, [r0, #0xc]
	cmp r0, r5
	beq _08092A7A
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	adds r0, r2, r0
	strh r0, [r1]
_08092A7A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r4, #5]
	cmp r3, r0
	blo _08092A58
_08092A86:
	ldrb r3, [r4, #5]
	ldr r5, _08092AB4 @ =gCurTask
	ldr r6, _08092AC0 @ =sub_8093710
	cmp r3, #5
	bhi _08092AAA
	ldr r4, _08092AB8 @ =gLoadedSaveGame + 0x4
	ldr r7, _08092AC4 @ =0x0000FFFF
	adds r2, r7, #0
_08092A96:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _08092A96
_08092AAA:
	ldr r0, [r5]
	str r6, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092AB4: .4byte gCurTask
_08092AB8: .4byte gLoadedSaveGame + 0x4
_08092ABC: .4byte gUnknown_080D7458
_08092AC0: .4byte sub_8093710
_08092AC4: .4byte 0x0000FFFF

	thumb_func_start sub_8092AC8
sub_8092AC8: @ 0x08092AC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08092B98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08092B9C @ =gPseudoRandom
	ldr r0, [r2]
	ldr r6, _08092BA0 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08092BA4 @ =0x3C6EF35F
	adds r3, r0, r5
	str r3, [r2]
	str r3, [sp]
	ldr r0, [sp]
	movs r1, #0xf
	ands r0, r1
	lsls r1, r0, #0x10
	adds r7, r2, #0
	ldr r0, _08092BA8 @ =gPressedKeys
	mov r8, r0
	cmp r1, #0
	beq _08092B18
	mov ip, r7
	adds r2, r6, #0
_08092B02:
	adds r0, r3, #0
	muls r0, r2, r0
	adds r3, r0, r5
	str r3, [sp]
	ldr r0, _08092BAC @ =0xFFFF0000
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _08092B02
	mov r0, ip
	str r3, [r0]
_08092B18:
	ldr r0, [sp]
	str r0, [r7]
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092B34
	movs r0, #0x6b
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092D1C
_08092B34:
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	adds r0, r4, #0
	bl sub_80936A0
	movs r3, #0
	ldr r0, _08092BB0 @ =gInput
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08092B7E
	movs r3, #1
_08092B7E:
	ldr r0, _08092BB4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08092BC8
	cmp r3, #0
	beq _08092BB8
	adds r0, r4, #0
	bl sub_80930B8
	b _08092BC4
	.align 2, 0
_08092B98: .4byte gCurTask
_08092B9C: .4byte gPseudoRandom
_08092BA0: .4byte 0x00196225
_08092BA4: .4byte 0x3C6EF35F
_08092BA8: .4byte gPressedKeys
_08092BAC: .4byte 0xFFFF0000
_08092BB0: .4byte gInput
_08092BB4: .4byte gRepeatedKeys
_08092BB8:
	movs r0, #0x6c
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092F60
_08092BC4:
	cmp r0, #1
	beq _08092CAA
_08092BC8:
	ldr r0, [r4, #0x40]
	subs r0, #0x34
	asrs r0, r0, #4
	ldrh r1, [r4, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08092C50 @ =gUnknown_080D74B8
	adds r1, r1, r0
	ldr r0, [r4, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r4, #2]
	ldr r5, _08092C54 @ =gPressedKeys
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092C02
	movs r0, #1
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_80937DC
_08092C02:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092C18
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_80937DC
_08092C18:
	adds r0, r4, #0
	bl sub_809386C
	adds r0, r4, #0
	bl sub_80935A4
	adds r0, r4, #0
	bl sub_8092274
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092C70
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhi _08092C70
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _08092C58
	adds r0, r4, #0
	bl sub_8092D94
	b _08092C70
	.align 2, 0
_08092C50: .4byte gUnknown_080D74B8
_08092C54: .4byte gPressedKeys
_08092C58:
	cmp r0, #0x15
	bne _08092C64
	adds r0, r4, #0
	bl sub_8092EBC
	b _08092C70
_08092C64:
	ldrb r0, [r4, #6]
	cmp r0, #5
	bhi _08092C70
	adds r0, r4, #0
	bl sub_8092CC8
_08092C70:
	ldr r0, _08092CB8 @ =gInput
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	beq _08092C8A
	cmp r2, #0
	beq _08092C8A
	adds r0, r4, #0
	bl sub_80935E4
_08092C8A:
	ldr r0, _08092CBC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08092CAA
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #3]
	strh r0, [r4, #0xe]
	ldr r0, _08092CC0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08092CC4 @ =sub_8092690
	str r0, [r1, #8]
_08092CAA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092CB8: .4byte gInput
_08092CBC: .4byte gPressedKeys
_08092CC0: .4byte gCurTask
_08092CC4: .4byte sub_8092690

	thumb_func_start sub_8092CC8
sub_8092CC8: @ 0x08092CC8
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r3, r2, r0
	adds r1, #1
	strb r1, [r2, #6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #6
	bls _08092CEC
	movs r0, #6
	strb r0, [r2, #6]
_08092CEC:
	ldrb r1, [r2, #5]
	ldrb r0, [r2, #6]
	cmp r0, r1
	bls _08092D04
	adds r0, r1, #1
	strb r0, [r2, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08092D04
	movs r0, #6
	strb r0, [r2, #5]
_08092D04:
	ldr r1, _08092D18 @ =gUnknown_080D7458
	ldrh r0, [r1]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #2]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r3, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_08092D18: .4byte gUnknown_080D7458

	thumb_func_start sub_8092D1C
sub_8092D1C: @ 0x08092D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #5]
	cmp r0, r1
	beq _08092D6A
	adds r4, r0, #0
	cmp r4, r1
	bhs _08092D60
_08092D32:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r1, r0, #3
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r0, r5, r0
	movs r3, #0x81
	lsls r3, r3, #2
	adds r2, r1, r3
	adds r2, r5, r2
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #5]
	cmp r4, r0
	blo _08092D32
_08092D60:
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #6]
	adds r2, r0, #0
	cmp r1, r2
	bne _08092D7E
_08092D6A:
	ldrb r0, [r5, #6]
	subs r0, #1
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5, #5]
	cmp r0, #6
	bls _08092D7E
	movs r0, #0
	strb r0, [r5, #6]
_08092D7E:
	subs r0, r2, #1
	strb r0, [r5, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08092D8E
	movs r0, #0
	strb r0, [r5, #5]
_08092D8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8092D94
sub_8092D94: @ 0x08092D94
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r5, #0
	ldrb r2, [r3, #6]
	subs r1, r2, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	mov ip, r0
	movs r0, #0xfb
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	ldr r6, _08092DE0 @ =gUnknown_080D7458
	ldrb r1, [r6, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	beq _08092EB0
	adds r0, r4, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi _08092DE4
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08092DE4
	adds r0, r4, #0
	subs r0, #0x19
	b _08092E06
	.align 2, 0
_08092DE0: .4byte gUnknown_080D7458
_08092DE4:
	adds r0, r4, #0
	subs r0, #0x16
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092DF6
	adds r0, r4, #0
	subs r0, #0x1f
	b _08092E06
_08092DF6:
	adds r0, r4, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08092E0C
	adds r0, r4, #0
	subs r0, #0x25
_08092E06:
	strb r0, [r3, #2]
	movs r5, #1
	b _08092E5E
_08092E0C:
	cmp r4, #0x25
	bne _08092E14
	movs r0, #0
	b _08092E5A
_08092E14:
	adds r0, r4, #0
	subs r0, #0x37
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092E26
	adds r0, r4, #0
	subs r0, #0x36
	b _08092E5A
_08092E26:
	subs r0, r4, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092E54
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08092E50 @ =gUnknown_080D7460
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08092E54
	subs r0, r4, #5
	b _08092E5A
	.align 2, 0
_08092E50: .4byte gUnknown_080D7460
_08092E54:
	cmp r4, #2
	bne _08092E5E
	movs r0, #0xb
_08092E5A:
	strb r0, [r3, #2]
	movs r5, #2
_08092E5E:
	cmp r5, #1
	bne _08092E7A
	ldrb r0, [r3, #6]
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r3, r1
	ldrb r0, [r3, #2]
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	b _08092EB0
_08092E7A:
	cmp r5, #2
	bne _08092EB0
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r2, _08092EB8 @ =gUnknown_080D7460
	ldrh r1, [r2]
	movs r4, #0xf4
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r1, [r0]
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrb r1, [r3, #2]
	ldrb r2, [r2, #2]
	adds r1, r1, r2
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_08092EB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092EB8: .4byte gUnknown_080D7460

	thumb_func_start sub_8092EBC
sub_8092EBC: @ 0x08092EBC
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	ldrb r2, [r3, #6]
	subs r1, r2, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	mov ip, r0
	movs r0, #0xfb
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	ldr r1, _08092EFC @ =gUnknown_080D7458
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0
	beq _08092F56
	adds r0, r1, #0
	subs r0, #0x37
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092F00
	adds r0, r1, #0
	subs r0, #0x31
	strb r0, [r3, #2]
	b _08092F24
	.align 2, 0
_08092EFC: .4byte gUnknown_080D7458
_08092F00:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092F20
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, ip
	ldr r1, _08092F5C @ =gUnknown_080D7460
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08092F20
	adds r0, r4, #5
	strb r0, [r3, #2]
	movs r5, #1
_08092F20:
	cmp r5, #0
	beq _08092F56
_08092F24:
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r2, _08092F5C @ =gUnknown_080D7460
	ldrh r1, [r2]
	movs r4, #0xf4
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r1, [r0]
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrb r1, [r3, #2]
	ldrb r2, [r2, #2]
	adds r1, r1, r2
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_08092F56:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092F5C: .4byte gUnknown_080D7460

	thumb_func_start sub_8092F60
sub_8092F60: @ 0x08092F60
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08092F7C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092F80
	adds r0, r2, #0
	movs r1, #0
	bl sub_80932E0
	b _080930AA
	.align 2, 0
_08092F7C: .4byte gRepeatedKeys
_08092F80:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08092F92
	adds r0, r2, #0
	movs r1, #1
	bl sub_80932E0
	b _080930AA
_08092F92:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093018
_08092F9A:
	ldr r1, [r2, #0x3c]
	cmp r1, #0x1a
	bne _08092FAE
	ldrb r1, [r2, #7]
	cmp r1, #0
	bne _08092FB8
	movs r0, #1
	strb r0, [r2, #7]
	strb r1, [r2, #8]
	b _08093032
_08092FAE:
	movs r0, #0
	strb r0, [r2, #7]
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r2, #0x3c]
_08092FB8:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _08093014 @ =gUnknown_080D7470
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, r4
	bne _08092FE6
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08093004
_08092FE6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093004
	lsls r1, r3, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08092FE6
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _08092FE6
_08093004:
	movs r0, #0
	cmp r3, #0xe
	bne _0809300C
	movs r0, #1
_0809300C:
	cmp r0, #0
	beq _08092F9A
	b _080930AA
	.align 2, 0
_08093014: .4byte gUnknown_080D7470
_08093018:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080930AA
_08093020:
	ldr r1, [r2, #0x3c]
	cmp r1, #0xba
	bne _08093048
	ldrb r0, [r2, #7]
	cmp r0, #0
	bne _08093052
	movs r0, #1
	strb r0, [r2, #7]
	strb r0, [r2, #8]
_08093032:
	ldr r0, _08093040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093044 @ =sub_8092690
	str r0, [r1, #8]
	movs r0, #1
	b _080930AC
	.align 2, 0
_08093040: .4byte gCurTask
_08093044: .4byte sub_8092690
_08093048:
	movs r0, #0
	strb r0, [r2, #7]
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r2, #0x3c]
_08093052:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _080930B4 @ =gUnknown_080D7470
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, r4
	bne _08093080
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _0809309E
_08093080:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _0809309E
	lsls r1, r3, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093080
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _08093080
_0809309E:
	movs r0, #0
	cmp r3, #0xe
	bne _080930A6
	movs r0, #1
_080930A6:
	cmp r0, #0
	beq _08093020
_080930AA:
	movs r0, #0
_080930AC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080930B4: .4byte gUnknown_080D7470

	thumb_func_start sub_80930B8
sub_80930B8: @ 0x080930B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r7, #0
	ldr r0, _08093144 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809314C
	ldrh r0, [r5, #0x12]
	subs r0, #0x60
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080930E4
	movs r0, #0x34
	str r0, [r5, #0x40]
	strh r7, [r5, #0x12]
_080930E4:
	ldr r1, [r5, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r5, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _08093148 @ =gUnknown_080D7470
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, r4
	bne _08093112
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _08093134
_08093112:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093134
	lsls r1, r3, #2
	mov r6, sb
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093112
	mov r0, sb
	adds r0, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r2
	bne _08093112
_08093134:
	cmp r3, #0xe
	bne _0809313A
	b _080932CE
_0809313A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_80932E0
	b _080932CE
	.align 2, 0
_08093144: .4byte gRepeatedKeys
_08093148: .4byte gUnknown_080D7470
_0809314C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080931D0
	ldrh r0, [r5, #0x12]
	adds r0, #0x60
	strh r0, [r5, #0x12]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	blt _0809316C
	movs r0, #0x84
	str r0, [r5, #0x40]
	strh r1, [r5, #0x12]
_0809316C:
	ldr r1, [r5, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r5, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _080931CC @ =gUnknown_080D7470
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, r4
	bne _0809319A
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _080931BC
_0809319A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _080931BC
	lsls r1, r3, #2
	mov r6, sb
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _0809319A
	mov r0, sb
	adds r0, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r2
	bne _0809319A
_080931BC:
	cmp r3, #0xe
	bne _080931C2
	b _080932CE
_080931C2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_80932E0
	b _080932CE
	.align 2, 0
_080931CC: .4byte gUnknown_080D7470
_080931D0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093250
	movs r0, #0x1a
	str r0, [r5, #0x3c]
	ldrh r0, [r5, #0x12]
	ldr r1, [r5, #0x40]
	ldr r2, _08093244 @ =gUnknown_080D7470
	mov sb, r2
	subs r1, #0x34
	asrs r1, r1, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	mov ip, sb
	ldrh r6, [r2]
	mov r8, r6
	lsrs r0, r0, #0x18
	mov sl, r0
_080931FA:
	ldr r1, [r5, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	cmp r8, r4
	bne _08093214
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r0, sl
	beq _08093236
_08093214:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093236
	lsls r2, r3, #2
	mov r6, ip
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093214
	mov r0, sb
	adds r0, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, sl
	bne _08093214
_08093236:
	cmp r3, #0xe
	beq _08093248
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r5, #0x3c]
	b _0809324A
	.align 2, 0
_08093244: .4byte gUnknown_080D7470
_08093248:
	movs r7, #1
_0809324A:
	cmp r7, #0
	beq _080931FA
	b _080932CE
_08093250:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080932CE
	movs r0, #0xba
	str r0, [r5, #0x3c]
	ldrh r0, [r5, #0x12]
	ldr r1, [r5, #0x40]
	ldr r2, _080932C4 @ =gUnknown_080D7470
	mov sb, r2
	subs r1, #0x34
	asrs r1, r1, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	mov ip, sb
	ldrh r6, [r2]
	mov r8, r6
	lsrs r0, r0, #0x18
	mov sl, r0
_0809327A:
	ldr r1, [r5, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	cmp r8, r4
	bne _08093294
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r0, sl
	beq _080932B6
_08093294:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _080932B6
	lsls r2, r3, #2
	mov r6, ip
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093294
	mov r0, sb
	adds r0, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, sl
	bne _08093294
_080932B6:
	cmp r3, #0xe
	beq _080932C8
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r5, #0x3c]
	b _080932CA
	.align 2, 0
_080932C4: .4byte gUnknown_080D7470
_080932C8:
	movs r7, #1
_080932CA:
	cmp r7, #0
	beq _0809327A
_080932CE:
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80932E0
sub_80932E0: @ 0x080932E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r6, _0809331C @ =gUnknown_080D7470
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r7, r6, #0
	mov sb, ip
_080932FC:
	mov r1, r8
	cmp r1, #0
	bne _0809332C
	ldr r0, [r2, #0x40]
	cmp r0, #0x34
	bne _08093328
	ldrh r1, [r2, #0x12]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08093320
	movs r0, #0x84
	str r0, [r2, #0x40]
	mov r0, ip
	strh r0, [r2, #0x12]
	b _08093350
	.align 2, 0
_0809331C: .4byte gUnknown_080D7470
_08093320:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0x12]
	b _08093350
_08093328:
	subs r0, #0x10
	b _0809334E
_0809332C:
	ldr r0, [r2, #0x40]
	cmp r0, #0x84
	bne _0809334C
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	cmp r0, sb
	bne _08093344
	movs r0, #0x34
	str r0, [r2, #0x40]
	movs r0, #0
	strh r0, [r2, #0x12]
	b _08093350
_08093344:
	ldrh r0, [r2, #0x12]
	adds r0, #0x10
	strh r0, [r2, #0x12]
	b _08093350
_0809334C:
	adds r0, #0x10
_0809334E:
	str r0, [r2, #0x40]
_08093350:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldrh r0, [r7]
	cmp r0, r4
	bne _0809337A
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08093398
_0809337A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093398
	lsls r1, r3, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0809337A
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _0809337A
_08093398:
	movs r0, #0
	cmp r3, #0xe
	bne _080933A0
	movs r0, #1
_080933A0:
	cmp r0, #0
	beq _080932FC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80933B0
sub_80933B0: @ 0x080933B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldrh r2, [r0, #0xc]
	lsrs r2, r2, #8
	ldr r4, _08093440 @ =gFlags
	ldr r1, [r4]
	movs r3, #4
	orrs r1, r3
	str r1, [r4]
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r2, r5, r2
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	mov ip, r1
	movs r3, #0xe8
	lsls r3, r3, #0x18
	adds r2, r2, r3
	lsrs r2, r2, #0x18
	str r2, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r1, _08093444 @ =gHBlankCopyTarget
	ldr r0, _08093448 @ =0x04000040
	str r0, [r1]
	ldr r1, _0809344C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08093450 @ =gBgOffsetsHBlankPrimary
	ldr r7, [r0]
	movs r4, #0
	ldr r6, _08093454 @ =gUnknown_080D74CE
	mov sb, r4
	movs r0, #2
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r0, #0xd3
	lsls r0, r0, #0x10
	mov sl, r0
_08093414:
	cmp r4, r5
	blo _08093458
	adds r0, r5, #0
	adds r0, #0xc
	cmp r4, r0
	bge _08093458
	subs r1, r4, r5
	lsls r1, r1, #2
	mov r3, sb
	adds r0, r3, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _0809348A
	.align 2, 0
_08093440: .4byte gFlags
_08093444: .4byte gHBlankCopyTarget
_08093448: .4byte 0x04000040
_0809344C: .4byte gHBlankCopySize
_08093450: .4byte gBgOffsetsHBlankPrimary
_08093454: .4byte gUnknown_080D74CE
_08093458:
	mov r0, ip
	subs r0, #0xc
	cmp r4, r0
	blt _08093484
	cmp r4, ip
	bhs _08093484
	ldr r0, [sp]
	subs r1, r4, r0
	lsls r1, r1, #2
	mov r3, sb
	adds r0, r3, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _0809348A
_08093484:
	ldr r0, [sp, #4]
	lsrs r3, r0, #0x10
	mov r0, sl
_0809348A:
	lsrs r1, r0, #0x10
	lsls r0, r3, #8
	adds r0, r1, r0
	strh r0, [r7]
	adds r7, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x9f
	bls _08093414
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80934B0
sub_80934B0: @ 0x080934B0
	ldr r2, _080934E8 @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0, #0x1c]
	adds r1, r1, r3
	strh r1, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r3, [r0, #0x1e]
	adds r2, r2, r3
	strh r2, [r0, #0x1e]
	ldr r3, _080934EC @ =gBgScrollRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	rsbs r1, r1, #0
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	rsbs r2, r2, #0
	strh r2, [r3, #2]
	ldrh r1, [r0, #0x10]
	adds r1, #0x16
	strh r1, [r3, #4]
	ldrh r0, [r0, #0x12]
	adds r0, #0x24
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_080934E8: .4byte 0xFFFFFF00
_080934EC: .4byte gBgScrollRegs

	thumb_func_start sub_80934F0
sub_80934F0: @ 0x080934F0
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r5, #0xb
	cmp r1, #0
	bne _08093548
	ldrh r0, [r2, #0xc]
	ldr r1, _08093520 @ =0x00006BFF
	cmp r0, r1
	bhi _08093524
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08093526
	movs r0, #0xd8
	lsls r0, r0, #7
	strh r0, [r2, #0xc]
	b _08093526
	.align 2, 0
_08093520: .4byte 0x00006BFF
_08093524:
	movs r3, #1
_08093526:
	ldr r1, [r2, #0x30]
	movs r4, #0xa8
	lsls r4, r4, #6
	cmp r1, r4
	ble _0809358C
	movs r0, #1
	lsls r0, r5
	subs r0, r1, r0
	str r0, [r2, #0x30]
	ldr r1, _08093544 @ =0x000029FF
	cmp r0, r1
	bgt _08093592
	str r4, [r2, #0x30]
	b _08093592
	.align 2, 0
_08093544: .4byte 0x000029FF
_08093548:
	ldrh r0, [r2, #0xc]
	cmp r0, #0
	beq _08093568
	ldr r1, _08093560 @ =0xFFFFF000
	adds r0, r0, r1
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08093564 @ =0x6BFF0000
	cmp r0, r1
	bls _0809356A
	strh r3, [r2, #0xc]
	b _0809356A
	.align 2, 0
_08093560: .4byte 0xFFFFF000
_08093564: .4byte 0x6BFF0000
_08093568:
	movs r3, #1
_0809356A:
	ldr r1, [r2, #0x30]
	ldr r0, _08093588 @ =0x00005FFF
	cmp r1, r0
	bgt _0809358C
	movs r0, #1
	lsls r0, r5
	adds r0, r1, r0
	str r0, [r2, #0x30]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	ble _08093592
	str r1, [r2, #0x30]
	b _08093592
	.align 2, 0
_08093588: .4byte 0x00005FFF
_0809358C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08093592:
	cmp r3, #2
	bne _0809359A
	movs r0, #1
	b _0809359C
_0809359A:
	movs r0, #0
_0809359C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80935A4
sub_80935A4: @ 0x080935A4
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r3, r0
	adds r4, r3, #0
	adds r4, #0xc4
	ldr r0, [r3, #0x3c]
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x40]
	strh r0, [r4, #0x12]
	movs r0, #0xe1
	str r0, [r4, #8]
	strh r2, [r1]
	ldrh r0, [r3, #0x14]
	strh r0, [r1, #2]
	ldrh r0, [r3, #0x16]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80935E4
sub_80935E4: @ 0x080935E4
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	movs r1, #0
	ldrb r2, [r3, #3]
	adds r4, r2, #0
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	ldrb r0, [r0, #1]
	adds r0, #0xf
	strb r0, [r1, #1]
	adds r1, r3, #0
	adds r1, #0x74
	ldr r0, [r3, #0x34]
	asrs r0, r0, #8
	subs r0, #1
	strh r0, [r1, #0x10]
	cmp r2, #1
	beq _08093622
	cmp r2, #1
	bgt _08093616
	cmp r2, #0
	beq _0809361C
	b _08093632
_08093616:
	cmp r4, #2
	beq _0809362A
	b _08093632
_0809361C:
	ldr r0, [r3, #0x38]
	asrs r0, r0, #8
	b _08093630
_08093622:
	ldr r0, [r3, #0x38]
	asrs r0, r0, #8
	subs r0, #0xf
	b _08093630
_0809362A:
	ldr r0, [r3, #0x38]
	asrs r0, r0, #8
	subs r0, #0x1e
_08093630:
	strh r0, [r1, #0x12]
_08093632:
	adds r0, r1, #0
	bl DisplaySprite
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8093640
sub_8093640: @ 0x08093640
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0xec
_0809364A:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	lsls r1, r6, #3
	adds r0, r0, r1
	lsls r1, r6, #2
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #6]
	cmp r6, r0
	bne _08093672
	ldrh r0, [r4, #0xa]
	cmp r0, #0x27
	bhi _0809367C
	adds r0, r5, #0
	bl DisplaySprite
	b _0809367C
_08093672:
	cmp r6, r0
	bls _0809367C
	adds r0, r5, #0
	bl DisplaySprite
_0809367C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _0809364A
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08093698
	movs r0, #0
	strh r0, [r4, #0xa]
_08093698:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80936A0
sub_80936A0: @ 0x080936A0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0xf0
	bgt _080936DA
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	adds r0, #0x6c
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r2, #1
_080936DA:
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08093706
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809370C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	bne _08093700
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08093700:
	adds r0, r4, #0
	bl DisplaySprite
_08093706:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809370C: .4byte 0xFFFFF7FF

	thumb_func_start sub_8093710
sub_8093710: @ 0x08093710
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08093778 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_80934F0
	cmp r0, #1
	bne _0809373A
	movs r5, #1
_0809373A:
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r2, _0809377C @ =gWinRegs
	ldr r1, [r4, #0x30]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0xc]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #0
	beq _08093772
	ldr r1, [r6]
	ldr r0, _08093780 @ =Task_80924D
	str r0, [r1, #8]
_08093772:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093778: .4byte gCurTask
_0809377C: .4byte gWinRegs
_08093780: .4byte Task_80924D

	thumb_func_start sub_8093784
sub_8093784: @ 0x08093784
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #4]
	ldr r1, _080937B8 @ =gUnknown_080D6ED4
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r2, #0x4c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2, #0x4c]
	cmp r3, #0
	bne _080937A2
	ldr r0, _080937BC @ =0x000009FF
	cmp r1, r0
	bgt _080937AE
_080937A2:
	cmp r3, #1
	bne _080937C4
	ldr r1, [r2, #0x4c]
	ldr r0, _080937C0 @ =0xFFFFF600
	cmp r1, r0
	bgt _080937C4
_080937AE:
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	b _080937D6
	.align 2, 0
_080937B8: .4byte gUnknown_080D6ED4
_080937BC: .4byte 0x000009FF
_080937C0: .4byte 0xFFFFF600
_080937C4:
	cmp r3, #2
	bne _080937D6
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	ble _080937D6
	movs r0, #0
	str r0, [r2, #0x4c]
	movs r0, #1
	b _080937D8
_080937D6:
	movs r0, #0
_080937D8:
	pop {r1}
	bx r1

	thumb_func_start sub_80937DC
sub_80937DC: @ 0x080937DC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _080937F2
	ldrb r0, [r1, #6]
	adds r2, r0, #0
	cmp r2, #0
	beq _080937FE
	subs r0, #1
	b _08093804
_080937F2:
	cmp r0, #2
	bne _08093806
	ldrb r0, [r1, #6]
	ldrb r2, [r1, #5]
	cmp r0, r2
	bne _08093802
_080937FE:
	strb r2, [r1, #6]
	b _08093806
_08093802:
	adds r0, #1
_08093804:
	strb r0, [r1, #6]
_08093806:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809380C
sub_809380C: @ 0x0809380C
	push {lr}
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #0x4c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x50]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809382C
sub_809382C: @ 0x0809382C
	push {lr}
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x60]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809384C
sub_809384C: @ 0x0809384C
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x58]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809386C
sub_809386C: @ 0x0809386C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r5, #0x3c]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x40]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x3c]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x40]
	strh r0, [r4, #0x12]
	ldr r1, _080938B0 @ =gUnknown_080D7458
	ldrb r0, [r5, #2]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080938B0: .4byte gUnknown_080D7458

	thumb_func_start sub_80938B4
sub_80938B4: @ 0x080938B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0xf
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0x1e
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08093900 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08093900: .4byte 0xFFFFFBFF

	thumb_func_start sub_8093904
sub_8093904: @ 0x08093904
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _08093944
_0809390C:
	lsls r2, r6, #2
	adds r4, r2, r6
	lsls r4, r4, #3
	movs r0, #0xee
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r5, r4
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	lsls r1, r6, #3
	adds r0, r0, r1
	adds r0, r0, r2
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	subs r0, #1
	strh r0, [r4, #0x12]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08093944:
	ldrb r0, [r5, #5]
	cmp r6, r0
	blo _0809390C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_NameEntryScreen
TaskDestructor_NameEntryScreen: @ 0x08093950
	bx lr
	.align 2, 0
.endif
