.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80616A0
sub_80616A0: @ 0x080616A0
	push {r4, r5, lr}
	ldr r5, _08061700 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_806253C
	adds r0, r4, #0
	bl sub_8061AC8
	ldr r0, _08061704 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08061722
	cmp r1, #4
	beq _08061722
	ldrh r0, [r4, #0xa]
	ldr r1, _08061708 @ =0x0000012B
	cmp r0, r1
	bhi _080616E0
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08061710
_080616E0:
	adds r0, r4, #0
	bl sub_8061BD4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80617E0
	cmp r0, #1
	bne _08061710
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r1, [r5]
	ldr r0, _0806170C @ =Task_HariisenMain
	str r0, [r1, #8]
	b _08061722
	.align 2, 0
_08061700: .4byte gCurTask
_08061704: .4byte gStageData
_08061708: .4byte 0x0000012B
_0806170C: .4byte Task_HariisenMain
_08061710:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08061722
	ldr r0, _08061728 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08061722:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061728: .4byte gCurTask

	thumb_func_start sub_806172C
sub_806172C: @ 0x0806172C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0xf0
	lsls r7, r7, #7
	b _080617C2
_08061740:
	ldrh r0, [r6, #8]
	lsls r1, r0, #0x10
	ldr r2, [r5, #0x14]
	subs r4, r2, r1
	ldr r1, [r6, #0x28]
	subs r3, r4, r1
	mov ip, r0
	mov r8, r2
	adds r2, r1, #0
	cmp r3, #0
	blt _0806175C
	cmp r3, r7
	ble _08061762
	b _0806177E
_0806175C:
	subs r0, r1, r4
	cmp r0, r7
	bgt _0806177E
_08061762:
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	ldr r0, [r6, #0x24]
	subs r3, r1, r0
	cmp r3, #0
	blt _08061778
	cmp r3, r7
	ble _080617B4
	b _0806177E
_08061778:
	subs r0, r0, r1
	cmp r0, r7
	ble _080617B4
_0806177E:
	mov r1, ip
	lsls r0, r1, #0x10
	mov r1, r8
	subs r0, r1, r0
	subs r1, r0, r2
	cmp r1, #0
	blt _08061792
	cmp r1, r7
	ble _08061798
	b _080617B8
_08061792:
	subs r0, r2, r0
	cmp r0, r7
	bgt _080617B8
_08061798:
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	ldr r0, [r6, #0x24]
	subs r2, r1, r0
	cmp r2, #0
	blt _080617AE
	cmp r2, r7
	ble _080617B4
	b _080617B8
_080617AE:
	subs r0, r0, r1
	cmp r0, r7
	bgt _080617B8
_080617B4:
	movs r0, #1
	b _080617D4
_080617B8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080617C2:
	mov r0, sb
	cmp r0, #1
	bhi _080617D2
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _08061740
_080617D2:
	movs r0, #0
_080617D4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80617E0
sub_80617E0: @ 0x080617E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	movs r0, #6
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r7, #0
_080617FE:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r0, r7, #1
	mov r8, r0
	ldr r0, _0806189C @ =gUnknown_080D20AC
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r2, #3
	ldr r1, _080618A0 @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r1, _080618A0 @ =gSineTable
	adds r2, r2, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r7, #0
	beq _08061848
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061848:
	lsls r0, r7, #3
	mov r2, ip
	adds r2, #0x30
	adds r2, r2, r0
	ldr r3, [sp, #4]
	str r3, [r2]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r3
	mov r0, sl
	asrs r1, r0
	mov r6, ip
	adds r6, #0x10
	mov r0, r8
	adds r3, r6, r0
	ldrh r0, [r3]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	mov r0, sl
	asrs r1, r0
	ldrh r0, [r3]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _080618A4
	movs r2, #0x48
	movs r1, #1
	b _080618A8
	.align 2, 0
_0806189C: .4byte gUnknown_080D20AC
_080618A0: .4byte gSineTable
_080618A4:
	movs r2, #0x40
	movs r1, #4
_080618A8:
	lsls r0, r7, #1
	adds r6, r6, r0
	ldrh r3, [r6]
	lsrs r0, r3, #6
	cmp r0, r2
	bhs _080618C0
	adds r1, #3
	movs r0, #1
	lsls r0, r1
	adds r0, r3, r0
	strh r0, [r6]
	b _080618CE
_080618C0:
	lsls r0, r2, #6
	strh r0, [r6]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080618CE:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080617FE
	movs r7, #0
	mov r0, ip
	adds r0, #0x40
	str r0, [sp, #0x18]
	mov r1, ip
	adds r1, #0x3c
	str r1, [sp, #0x14]
	movs r0, #0x14
	add r0, ip
	mov r8, r0
	ldr r1, _08061994 @ =gSineTable
	mov ip, r1
_080618F0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r3, r7, #1
	ldr r1, _08061998 @ =gUnknown_080D20B0
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	adds r6, r3, #0
	cmp r7, #1
	bhi _08061936
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	str r0, [sp, #8]
_08061936:
	cmp r7, #0
	beq _0806193E
	cmp r7, #3
	bne _08061948
_0806193E:
	ldr r0, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061948:
	lsls r2, r7, #3
	ldr r0, [sp, #0x18]
	adds r3, r0, r2
	ldr r0, [sp, #4]
	str r0, [r3]
	ldr r1, [sp, #0x14]
	adds r2, r1, r2
	ldr r5, [sp]
	str r5, [r2]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	mov r0, sl
	asrs r1, r0
	mov r0, r8
	adds r4, r0, r6
	ldrh r0, [r4]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	mov r0, sl
	asrs r1, r0
	ldrh r0, [r4]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _0806199C
	movs r2, #0x54
	movs r1, #1
	b _080619A0
	.align 2, 0
_08061994: .4byte gSineTable
_08061998: .4byte gUnknown_080D20B0
_0806199C:
	movs r2, #0x40
	movs r1, #4
_080619A0:
	mov r0, r8
	adds r3, r0, r6
	ldrh r4, [r3]
	lsrs r0, r4, #6
	cmp r0, r2
	bhs _080619B8
	adds r1, #3
	movs r0, #1
	lsls r0, r1
	adds r0, r4, r0
	strh r0, [r3]
	b _080619C6
_080619B8:
	lsls r0, r2, #6
	strh r0, [r3]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080619C6:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080618F0
	mov r1, sb
	cmp r1, #6
	beq _080619DA
	movs r0, #0
	b _080619DC
_080619DA:
	movs r0, #1
_080619DC:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80619EC
sub_80619EC: @ 0x080619EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	ldr r2, _08061A38 @ =gUnknown_080D20B8
	ldrh r1, [r4, #0xe]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _08061AB8
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r3, _08061A3C @ =gObjPalette
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r5, _08061A40 @ =gUnknown_080D206C
	ldrh r0, [r0]
	ldrh r6, [r5, #0x10]
	cmp r0, r6
	bne _08061A80
	ldr r5, _08061A44 @ =gFlags
	ldr r2, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08061A4C
	ldr r0, _08061A48 @ =gUnknown_080D208C
	movs r1, #0xc0
	movs r2, #0x10
	bl CopyPalette
	b _08061A66
	.align 2, 0
_08061A38: .4byte gUnknown_080D20B8
_08061A3C: .4byte gObjPalette
_08061A40: .4byte gUnknown_080D206C
_08061A44: .4byte gFlags
_08061A48: .4byte gUnknown_080D208C
_08061A4C:
	ldr r1, _08061A74 @ =0x040000D4
	ldr r0, _08061A78 @ =gUnknown_080D208C
	str r0, [r1]
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r3, r6
	str r0, [r1, #4]
	ldr r0, _08061A7C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r5]
_08061A66:
	ldrh r0, [r4, #0xe]
	cmp r0, #7
	bhi _08061AB8
	adds r0, #1
	strh r0, [r4, #0xe]
	b _08061AB8
	.align 2, 0
_08061A74: .4byte 0x040000D4
_08061A78: .4byte gUnknown_080D208C
_08061A7C: .4byte 0x80000010
_08061A80:
	ldr r4, _08061A9C @ =gFlags
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08061AA0
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl CopyPalette
	b _08061AB8
	.align 2, 0
_08061A9C: .4byte gFlags
_08061AA0:
	ldr r1, _08061AC0 @ =0x040000D4
	str r5, [r1]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r3, r5
	str r0, [r1, #4]
	ldr r0, _08061AC4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r4]
_08061AB8:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061AC0: .4byte 0x040000D4
_08061AC4: .4byte 0x80000010

	thumb_func_start sub_8061AC8
sub_8061AC8: @ 0x08061AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0
	mov sl, r0
_08061ADC:
	mov r1, sl
	cmp r1, #1
	bhi _08061B00
	movs r0, #0x8c
	adds r0, r0, r4
	mov sb, r0
	lsls r2, r1, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x30
	b _08061B20
_08061B00:
	movs r1, #0xbc
	adds r1, r1, r4
	mov sb, r1
	mov r2, sl
	subs r2, #2
	lsls r2, r2, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x40
_08061B20:
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r0, #0
	mov r8, r0
_08061B3C:
	mov r1, r8
	cmp r1, #0
	bne _08061B4C
	ldr r0, _08061B48 @ =gStageData
	ldrb r1, [r0, #6]
	b _08061B56
	.align 2, 0
_08061B48: .4byte gStageData
_08061B4C:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08061B56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08061BA0 @ =gPlayers
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _08061BA4
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08061BA4
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08061B9C
	str r7, [sp]
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
_08061B9C:
	movs r0, #1
	b _08061BC2
	.align 2, 0
_08061BA0: .4byte gPlayers
_08061BA4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08061B3C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bls _08061ADC
	movs r0, #0
_08061BC2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8061BD4
sub_8061BD4: @ 0x08061BD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x8c
	ldr r7, _08061C38 @ =gCamera
_08061BEA:
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r2, [r5, #0x28]
	asrs r2, r2, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r7, #4]
	subs r2, r2, r0
	strh r2, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	cmp r6, #0
	beq _08061C40
	ldr r0, [r4, #8]
	ldr r1, _08061C3C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #2
	b _08061C4C
	.align 2, 0
_08061C38: .4byte gCamera
_08061C3C: .4byte 0xFFFFF7FF
_08061C40:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	subs r0, r2, #2
_08061C4C:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061BEA
	movs r6, #0
	movs r0, #0xbc
	adds r0, r0, r5
	mov r8, r0
	adds r1, r5, #0
	adds r1, #0x3c
	str r1, [sp]
	movs r2, #0x40
	adds r2, r2, r5
	mov sl, r2
	mov r4, r8
	ldr r7, _08061C98 @ =gCamera
	mov sb, r7
_08061C7E:
	cmp r6, #0
	bne _08061C9C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #8]
	b _08061CD2
	.align 2, 0
_08061C98: .4byte gCamera
_08061C9C:
	cmp r6, #1
	bne _08061CB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08061CAC @ =0xFFFFF7FF
	b _08061CCE
	.align 2, 0
_08061CAC: .4byte 0xFFFFF7FF
_08061CB0:
	cmp r6, #2
	bne _08061CC0
	ldr r0, [r4, #8]
	ldr r1, _08061CBC @ =0xFFFFF7FF
	ands r0, r1
	b _08061CCC
	.align 2, 0
_08061CBC: .4byte 0xFFFFF7FF
_08061CC0:
	cmp r6, #3
	bne _08061CD2
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08061CCC:
	ldr r1, _08061D38 @ =0xFFFFFBFF
_08061CCE:
	ands r0, r1
	str r0, [r4, #8]
_08061CD2:
	ldr r3, [r5, #0x24]
	asrs r3, r3, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	mov r7, sb
	ldr r0, [r7]
	subs r3, r3, r0
	strh r3, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	lsls r2, r6, #3
	ldr r7, [sp]
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r3, r3, r0
	strh r3, [r4, #0x10]
	add r2, sl
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08061C7E
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061D38: .4byte 0xFFFFFBFF

	thumb_func_start sub_8061D3C
sub_8061D3C: @ 0x08061D3C
	sub sp, #0x10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	str r3, [sp, #0x38]
	ldr r0, _08061E44 @ =sub_80625FC
	ldr r2, _08061E48 @ =0x00004040
	ldr r1, _08061E4C @ =sub_8062638
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r3, #0
	mov r0, sp
	adds r0, #6
	str r0, [sp, #8]
	ldr r2, _08061E50 @ =0x0300002C
	adds r7, r1, r2
	movs r4, #0
	ldr r0, _08061E54 @ =0x03000030
	adds r5, r1, r0
	movs r1, #1
	mov r8, r1
_08061D80:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	adds r0, r6, r3
	mov r2, r8
	strb r2, [r0]
	lsls r0, r3, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r2, [sp, #0x38]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08061D80
	movs r3, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r6
	mov sb, r1
	movs r2, #0xb8
	adds r2, r2, r6
	mov sl, r2
	movs r0, #0x3c
	adds r0, r0, r6
	mov ip, r0
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x40
	adds r5, r6, #2
_08061DCE:
	lsls r1, r3, #3
	mov r2, ip
	adds r0, r2, r1
	str r4, [r0]
	adds r1, r7, r1
	str r4, [r1]
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	lsls r1, r3, #2
	add r1, r8
	ldr r2, [sp, #0x3c]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08061DCE
	ldr r0, [sp, #0x2c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x30]
	str r0, [r6, #0x28]
	add r0, sp, #0x2c
	ldrh r0, [r0, #8]
	movs r5, #0
	strh r0, [r6, #6]
	add r0, sp, #0x2c
	ldrh r0, [r0, #0xa]
	strh r0, [r6, #8]
	add r0, sp, #4
	strh r5, [r0]
	ldr r4, _08061E58 @ =0x01000002
	mov r1, sb
	adds r2, r4, #0
	bl CpuSet
	ldr r0, [sp, #8]
	strh r5, [r0]
	ldr r0, [sp, #8]
	mov r1, sl
	adds r2, r4, #0
	bl CpuSet
	adds r0, r6, #0
	bl sub_8061E5C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08061E44: .4byte sub_80625FC
_08061E48: .4byte 0x00004040
_08061E4C: .4byte sub_8062638
_08061E50: .4byte 0x0300002C
_08061E54: .4byte 0x03000030
_08061E58: .4byte 0x01000002

	thumb_func_start sub_8061E5C
sub_8061E5C: @ 0x08061E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #2
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _08061F48 @ =gUnknown_080D2044
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x18]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _08061F4C @ =gCamera
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r3, r7, #0
	adds r3, #0x8c
	str r5, [r3]
	ldrh r0, [r4, #0x20]
	strh r0, [r3, #0xc]
	adds r4, #0x22
	ldrb r0, [r4]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	mov r0, sb
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061F48: .4byte gUnknown_080D2044
_08061F4C: .4byte gCamera

	thumb_func_start sub_8061F50
sub_8061F50: @ 0x08061F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	movs r7, #6
	movs r6, #0
	ldr r0, _080620E0 @ =gSineTable
	mov r8, r0
_08061F66:
	mov r1, ip
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062000
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E4 @ =gUnknown_080D20AC
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r0, r2, #3
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	add r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _08061FB4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061FB4:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x30
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0xc
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08062000:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061F66
	movs r6, #0
	movs r1, #2
	add r1, ip
	mov sl, r1
	ldr r0, _080620E0 @ =gSineTable
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
_0806201C:
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080620C2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E8 @ =gUnknown_080D20B0
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r6, #1
	bhi _08062068
	mov r1, r8
	adds r0, r2, r1
	str r0, [sp, #8]
_08062068:
	cmp r6, #0
	beq _08062070
	cmp r6, #3
	bne _08062076
_08062070:
	ldr r0, [sp, #0xc]
	add r0, r8
	str r0, [sp, #0xc]
_08062076:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x40
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x3c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0x14
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080620C2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806201C
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080620E0: .4byte gSineTable
_080620E4: .4byte gUnknown_080D20AC
_080620E8: .4byte gUnknown_080D20B0

	thumb_func_start sub_80620EC
sub_80620EC: @ 0x080620EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r4, _08062230 @ =gCamera
_08062102:
	mov r2, ip
	ldr r1, [r2, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	lsls r2, r6, #3
	mov r0, ip
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r3, ip
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x30
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r0, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r2, #0
	bge _08062152
	rsbs r2, r2, #0
_08062152:
	ldr r0, _08062234 @ =0x0000C7FF
	mov r7, ip
	adds r3, r7, r6
	cmp r2, r0
	bgt _0806216A
	cmp r5, #0xf0
	bhi _0806216A
	cmp r1, #0xa0
	bhi _0806216A
	ldrb r0, [r3]
	cmp r0, #0
	bne _08062178
_0806216A:
	movs r0, #0
	strb r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08062178:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08062102
	movs r6, #0
	mov r0, ip
	adds r0, #0x3c
	str r0, [sp]
	mov r1, ip
	adds r1, #0x40
	str r1, [sp, #4]
	ldr r2, _08062230 @ =gCamera
	mov sb, r2
	ldr r3, [r2, #4]
	mov sl, r3
	mov r7, ip
	adds r7, #2
_0806219C:
	mov r0, ip
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r2, r6, #3
	ldr r3, [sp]
	adds r0, r3, r2
	ldr r4, [r0]
	asrs r0, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x28]
	asrs r0, r0, #8
	ldrh r1, [r1, #8]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r3, sl
	subs r0, r0, r3
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldr r2, [r2]
	asrs r1, r2, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0
	bge _080621EA
	rsbs r2, r2, #0
_080621EA:
	ldr r3, _08062238 @ =0x00008BFF
	cmp r2, r3
	ble _080621FC
	adds r0, r4, #0
	cmp r0, #0
	bge _080621F8
	rsbs r0, r0, #0
_080621F8:
	cmp r0, r3
	bgt _0806220C
_080621FC:
	cmp r5, #0xf0
	bhi _0806220C
	cmp r1, #0xa0
	bhi _0806220C
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806221C
_0806220C:
	adds r1, r7, r6
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0806221C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806219C
	mov r2, r8
	cmp r2, #6
	beq _0806223C
	movs r0, #0
	b _0806223E
	.align 2, 0
_08062230: .4byte gCamera
_08062234: .4byte 0x0000C7FF
_08062238: .4byte 0x00008BFF
_0806223C:
	movs r0, #1
_0806223E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8062250
sub_8062250: @ 0x08062250
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	mov sl, r6
_08062262:
	mov r0, sl
	cmp r0, #1
	bhi _08062296
	movs r1, #0x5c
	adds r1, r1, r4
	mov sb, r1
	lsls r2, r0, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	mov r1, sl
	adds r0, r4, r1
	b _080622C6
_08062296:
	movs r0, #0x8c
	adds r0, r0, r4
	mov sb, r0
	mov r3, sl
	subs r3, #2
	lsls r2, r3, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	adds r0, r4, #2
	adds r0, r0, r3
_080622C6:
	ldrb r1, [r0]
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	cmp r1, #0
	beq _08062352
	movs r1, #0
	mov r8, r1
_080622DC:
	mov r0, r8
	cmp r0, #0
	bne _080622EC
	ldr r0, _080622E8 @ =gStageData
	ldrb r1, [r0, #6]
	b _080622F6
	.align 2, 0
_080622E8: .4byte gStageData
_080622EC:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080622F6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08062340 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08062344
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08062344
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806233C
	str r6, [sp]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
_0806233C:
	movs r0, #1
	b _08062364
	.align 2, 0
_08062340: .4byte gPlayers
_08062344:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _080622DC
_08062352:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bhi _08062362
	b _08062262
_08062362:
	movs r0, #0
_08062364:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8062374
sub_8062374: @ 0x08062374
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r7, #1
	movs r6, #0
	ldr r0, _080623E4 @ =gCamera
	mov r8, r0
_08062386:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062408
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r2, [r5, #0x28]
	asrs r2, r2, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #4]
	subs r2, r2, r0
	strh r2, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	cmp r6, #0
	beq _080623EC
	ldr r0, [r4, #8]
	ldr r1, _080623E8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #2
	b _080623F8
	.align 2, 0
_080623E4: .4byte gCamera
_080623E8: .4byte 0xFFFFF7FF
_080623EC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	subs r0, r2, #2
_080623F8:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
_08062408:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08062386
	movs r6, #0
	adds r0, r5, #2
	mov sb, r0
	ldr r1, _08062440 @ =gCamera
	mov r8, r1
_0806241C:
	mov r2, sb
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080624C8
	adds r4, r5, #0
	adds r4, #0x8c
	cmp r6, #0
	bne _08062444
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08062478
	.align 2, 0
_08062440: .4byte gCamera
_08062444:
	cmp r6, #1
	bne _08062458
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08062454 @ =0xFFFFF7FF
	b _08062476
	.align 2, 0
_08062454: .4byte 0xFFFFF7FF
_08062458:
	cmp r6, #2
	bne _08062468
	ldr r0, [r4, #8]
	ldr r1, _08062464 @ =0xFFFFF7FF
	ands r0, r1
	b _08062474
	.align 2, 0
_08062464: .4byte 0xFFFFF7FF
_08062468:
	cmp r6, #3
	bne _0806247A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08062474:
	ldr r1, _080624E0 @ =0xFFFFFBFF
_08062476:
	ands r0, r1
_08062478:
	str r0, [r4, #8]
_0806247A:
	ldr r2, [r5, #0x24]
	asrs r2, r2, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3]
	subs r2, r2, r0
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
_080624C8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806241C
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080624E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80624E4
sub_80624E4: @ 0x080624E4
	push {r4, r5, r6, lr}
	ldr r6, _08062514 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_806253C
	cmp r0, #0
	bne _08062524
	ldr r0, _08062518 @ =0x0300005C
	adds r2, r5, r0
	ldr r1, _0806251C @ =gUnknown_080D2044
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _08062520 @ =sub_80616A0
	str r0, [r1, #8]
	b _08062534
	.align 2, 0
_08062514: .4byte gCurTask
_08062518: .4byte 0x0300005C
_0806251C: .4byte gUnknown_080D2044
_08062520: .4byte sub_80616A0
_08062524:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08062534
	ldr r0, [r6]
	bl TaskDestroy
_08062534:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806253C
sub_806253C: @ 0x0806253C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x5c
	ldr r2, [r0, #0x24]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806257C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806257C: .4byte gCamera

	thumb_func_start sub_8062580
sub_8062580: @ 0x08062580
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80625BC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80625BC
sub_80625BC: @ 0x080625BC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x5c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Hariisen
TaskDestructor_Hariisen: @ 0x080625E8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80625FC
sub_80625FC: @ 0x080625FC
	push {r4, r5, lr}
	ldr r5, _08062634 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8061F50
	adds r0, r4, #0
	bl sub_8062374
	adds r0, r4, #0
	bl sub_8062250
	adds r0, r4, #0
	bl sub_80620EC
	cmp r0, #1
	bne _0806262C
	ldr r0, [r5]
	bl TaskDestroy
_0806262C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062634: .4byte gCurTask

	thumb_func_start sub_8062638
sub_8062638: @ 0x08062638
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0
