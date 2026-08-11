
.syntax unified
.text
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
	ldr r0, _080927FC @ =Task_8092A0C
	str r0, [r1, #8]
	b _080929FC
	.align 2, 0
_080927F4: .4byte 0x00000404
_080927F8: .4byte gCurTask
_080927FC: .4byte Task_8092A0C
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
	ldr r1, _08092928 @ =Task_8092AC8
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
_08092928: .4byte Task_8092AC8
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
	ldr r3, _080929B0 @ =Task_8092AC8
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
_080929B0: .4byte Task_8092AC8
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

.syntax divided
