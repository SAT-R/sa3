.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_BonusUfo
CreateEntity_BonusUfo: @ 0x080413AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r1, _080414A4 @ =gUnknown_080CFBC0
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	movs r3, #0
	ldrb r0, [r4, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080413F0
	movs r2, #1
_080413D6:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bgt _080413F0
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080413D6
_080413F0:
	ldr r0, _080414A8 @ =Task_BonusUfoMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080414AC @ =TaskDestructor_BonusUfo
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	strh r5, [r1, #4]
	strh r6, [r1, #6]
	str r4, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #0xa]
	strb r7, [r1, #0xb]
	movs r3, #0
	ldrb r1, [r4, #7]
	movs r0, #1
	ands r1, r0
	lsls r5, r5, #8
	lsls r6, r6, #8
	cmp r1, #0
	bne _08041444
	movs r2, #1
_0804142A:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bgt _08041444
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804142A
_08041444:
	lsls r0, r3, #0x10
	asrs r0, r0, #0xf
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	mov r3, ip
	adds r3, #0xb1
	movs r1, #0
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x3c
	strb r0, [r3]
	mov r0, ip
	adds r0, #0xb3
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r3, #0xa6
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	adds r3, #0x28
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	adds r3, #0x28
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	adds r3, #0x28
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	mov r0, ip
	bl sub_80417F0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080414A4: .4byte gUnknown_080CFBC0
_080414A8: .4byte Task_BonusUfoMain
_080414AC: .4byte TaskDestructor_BonusUfo

	thumb_func_start Task_BonusUfoMain
Task_BonusUfoMain: @ 0x080414B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080415F0 @ =gStageData
	ldrb r0, [r4, #9]
	mov r8, r0
	ldr r0, _080415F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r3, [r6]
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov ip, r1
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	add r0, ip
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r2
	mov sb, r0
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080415F8 @ =gPlayers
	adds r5, r0, r1
	mov r1, r8
	cmp r1, #6
	bls _08041522
	movs r0, #0
	mov r8, r0
_08041522:
	ldr r1, _080415FC @ =0x030000B1
	adds r0, r7, r1
	ldrb r3, [r0]
	cmp r3, #7
	bne _0804153C
	ldr r0, _08041600 @ =gSaveGame
	adds r0, #0x29
	add r0, r8
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #7
	beq _08041564
_0804153C:
	cmp r3, #8
	bne _08041550
	adds r0, r4, #0
	adds r0, #0xbe
	add r0, r8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041564
_08041550:
	cmp r3, #9
	bne _08041642
	adds r0, r4, #0
	adds r0, #0xbe
	add r0, r8
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08041642
_08041564:
	ldr r0, [r5, #4]
	ldr r1, _08041604 @ =0x01000304
	ands r0, r1
	cmp r0, #0
	bne _08041642
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xee
	beq _08041642
	cmp r0, #0xef
	beq _08041642
	cmp r0, #0xf4
	beq _08041642
	cmp r0, #0xf5
	beq _08041642
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08041642
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08041592
	rsbs r0, r0, #0
_08041592:
	cmp r0, #0x7f
	bgt _08041642
	ldr r0, [r5, #0x10]
	cmp r0, r2
	ble _08041642
	cmp r0, sb
	bge _08041642
	ldr r0, [r5, #0x14]
	cmp r0, ip
	ble _08041642
	cmp r0, sl
	bge _08041642
	movs r7, #8
	strb r7, [r4, #4]
	adds r0, r5, #0
	bl sub_8016F28
	ldr r0, _08041608 @ =0x0000020A
	bl sub_8003DF0
	movs r4, #1
	movs r0, #1
	strh r0, [r5, #0x30]
	ldr r1, _0804160C @ =sub_800EB4C
	adds r0, r5, #0
	bl sub_800D87C
	adds r0, r6, #0
	adds r0, #0xb3
	strb r4, [r0]
	subs r0, #2
	ldrb r2, [r0]
	cmp r2, #7
	bne _0804161E
	ldr r0, _08041600 @ =gSaveGame
	adds r0, #0x29
	add r0, r8
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08041610
	adds r0, r6, #0
	adds r0, #0xb0
	strb r7, [r0]
	adds r1, r0, #0
	b _08041626
	.align 2, 0
_080415F0: .4byte gStageData
_080415F4: .4byte gCurTask
_080415F8: .4byte gPlayers
_080415FC: .4byte 0x030000B1
_08041600: .4byte gSaveGame
_08041604: .4byte 0x01000304
_08041608: .4byte 0x0000020A
_0804160C: .4byte sub_800EB4C
_08041610:
	ands r2, r1
	adds r1, r6, #0
	adds r1, #0xb0
	cmp r2, #7
	bne _08041626
	movs r0, #4
	b _08041624
_0804161E:
	adds r1, r6, #0
	adds r1, #0xb0
	movs r0, #0
_08041624:
	strb r0, [r1]
_08041626:
	ldrb r0, [r1]
	adds r0, #1
	adds r2, r6, #0
	adds r2, #0x26
	strb r0, [r2]
	ldrb r0, [r1]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r0, _08041654 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08041658 @ =sub_804165C
	str r0, [r1, #8]
_08041642:
	bl sub_8041988
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041654: .4byte gCurTask
_08041658: .4byte sub_804165C

	thumb_func_start sub_804165C
sub_804165C: @ 0x0804165C
	push {r4, r5, lr}
	ldr r2, _080416B0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r4, [r3]
	adds r0, #0xb2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r5, r2, #0
	cmp r0, #0
	bne _080416F8
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r1, #8
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r4, r1, #8
	ldr r0, _080416B4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080416B8 @ =gPlayers
	adds r1, r0, r1
	ldr r0, [r1, #0x10]
	cmp r0, r2
	bge _080416BC
	movs r2, #0x80
	lsls r2, r2, #1
	b _080416C2
	.align 2, 0
_080416B0: .4byte gCurTask
_080416B4: .4byte gStageData
_080416B8: .4byte gPlayers
_080416BC:
	cmp r0, r2
	ble _080416C6
	ldr r2, _080416F0 @ =0xFFFFFF00
_080416C2:
	adds r0, r0, r2
	str r0, [r1, #0x10]
_080416C6:
	ldr r0, [r1, #0x14]
	cmp r0, r4
	ble _080416D6
	ldr r2, _080416F0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x14]
	cmp r0, r4
	bgt _080416FC
_080416D6:
	adds r1, r3, #0
	adds r1, #0x76
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _080416F4 @ =sub_8041710
	str r0, [r1, #8]
	b _080416FC
	.align 2, 0
_080416F0: .4byte 0xFFFFFF00
_080416F4: .4byte sub_8041710
_080416F8:
	subs r0, #1
	strb r0, [r1]
_080416FC:
	bl sub_8041988
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804170A
	bl sub_8041A48
_0804170A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8041710
sub_8041710: @ 0x08041710
	push {r4, r5, lr}
	ldr r0, _08041758 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r0, [r5, #0x64]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804176C
	ldr r0, _0804175C @ =0x030000B3
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804176C
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08041760 @ =0x030000B0
	adds r2, r3, r4
	ldrb r0, [r2]
	adds r0, #2
	subs r4, #0x8a
	adds r1, r3, r4
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #2
	ldr r2, _08041764 @ =0x0300004E
	adds r1, r3, r2
	strb r0, [r1]
	ldr r0, _08041768 @ =0x0000020A
	bl sub_8003E28
	b _080417C6
	.align 2, 0
_08041758: .4byte gCurTask
_0804175C: .4byte 0x030000B3
_08041760: .4byte 0x030000B0
_08041764: .4byte 0x0300004E
_08041768: .4byte 0x0000020A
_0804176C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080417C6
	adds r3, r5, #0
	adds r3, #0x26
	ldrb r1, [r3]
	adds r2, r5, #0
	adds r2, #0xb0
	ldrb r0, [r2]
	adds r0, #3
	cmp r1, r0
	beq _080417C6
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #3
	adds r1, r5, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r2, _080417E4 @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080417E8 @ =gPlayers
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xb1
	ldrb r3, [r1]
	adds r4, r0, #0
	adds r4, #0xa4
	strb r3, [r4]
	ldrb r2, [r2, #9]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r3, r3, r1
	strb r3, [r4]
	ldr r1, _080417EC @ =sub_800AEF4
	bl sub_800D87C
_080417C6:
	bl sub_8041988
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080417DE
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080417DE
	bl sub_8041A48
_080417DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080417E4: .4byte gStageData
_080417E8: .4byte gPlayers
_080417EC: .4byte sub_800AEF4

	thumb_func_start sub_80417F0
sub_80417F0: @ 0x080417F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0x27
	bl VramMalloc
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	str r0, [sp]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r0, _0804186C @ =gStageData
	ldrb r1, [r0, #9]
	str r1, [sp, #8]
	movs r2, #0
	movs r1, #0xb0
	adds r1, r1, r6
	mov sb, r1
	adds r0, #0xbe
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #0xc]
_0804182A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, #0
	adds r1, #0xc
	adds r3, r6, r1
	adds r0, #0x5c
	adds r5, r6, r0
	ldr r0, [sp]
	str r0, [r3]
	adds r0, r6, #0
	adds r0, #0xb1
	ldrb r4, [r0]
	mov ip, r2
	cmp r4, #7
	bne _0804189C
	ldr r0, _08041870 @ =gSaveGame
	adds r0, #0x29
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08041878
	ldr r0, _08041874 @ =0x00000391
	strh r0, [r3, #0xc]
	mov r1, sb
	strb r2, [r1]
	b _080418D6
	.align 2, 0
_0804186C: .4byte gStageData
_08041870: .4byte gSaveGame
_08041874: .4byte 0x00000391
_08041878:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #7
	bne _0804188C
	ldr r0, _08041888 @ =0x00000391
	strh r0, [r3, #0xc]
	movs r0, #4
	b _080418D2
	.align 2, 0
_08041888: .4byte 0x00000391
_0804188C:
	ldr r0, _08041898 @ =0x00000391
	strh r0, [r3, #0xc]
	mov r1, sb
	strb r4, [r1]
	b _080418D6
	.align 2, 0
_08041898: .4byte 0x00000391
_0804189C:
	cmp r4, #8
	bne _080418AC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080418BC
_080418AC:
	cmp r4, #9
	bne _080418CC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080418CC
_080418BC:
	ldr r1, _080418C8 @ =0x00000391
	strh r1, [r3, #0xc]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	b _080418D6
	.align 2, 0
_080418C8: .4byte 0x00000391
_080418CC:
	ldr r0, _08041980 @ =0x00000391
	strh r0, [r3, #0xc]
	movs r0, #3
_080418D2:
	mov r1, sb
	strb r0, [r1]
_080418D6:
	adds r0, r6, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r3, #0x1a]
	movs r2, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	str r0, [r3, #0x20]
	movs r7, #0x80
	lsls r7, r7, #5
	str r7, [r3, #8]
	mov r0, ip
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0804191A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	str r0, [r3, #8]
_0804191A:
	adds r0, r3, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	str r0, [r5]
	ldr r0, _08041984 @ =0x00000392
	strh r0, [r5, #0xc]
	ldr r2, [sp, #0x14]
	strb r2, [r5, #0x1a]
	subs r0, #0x92
	strh r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	ldrb r0, [r5, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	mov r1, sl
	str r1, [r5, #0x20]
	str r7, [r5, #8]
	cmp r4, #0
	beq _0804195A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	str r0, [r5, #8]
_0804195A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804196E
	b _0804182A
_0804196E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041980: .4byte 0x00000391
_08041984: .4byte 0x00000392

	thumb_func_start sub_8041988
sub_8041988: @ 0x08041988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08041A08 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xc
	adds r6, r0, r1
	adds r1, #0x28
	adds r7, r0, r1
	ldr r0, [r4]
	mov sb, r0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_802C198
	cmp r0, #0
	beq _08041A10
	ldr r0, _08041A0C @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r6, #0x10]
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	mov r1, r8
	subs r0, r1, r0
	strh r0, [r6, #0x12]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #1
	b _08041A20
	.align 2, 0
_08041A08: .4byte gCurTask
_08041A0C: .4byte gCamera
_08041A10:
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
_08041A20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_BonusUfo
TaskDestructor_BonusUfo: @ 0x08041A30
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08041A44 @ =0x030000AC
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08041A44: .4byte 0x030000AC

	thumb_func_start sub_8041A48
sub_8041A48: @ 0x08041A48
	push {r4, r5, lr}
	ldr r0, _08041A8C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08041A90 @ =0x0300000C
	adds r1, r4, r0
	adds r0, #0x50
	adds r5, r4, r0
	adds r0, #0x28
	adds r4, r4, r0
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0x10]
	ldrh r0, [r1, #0x12]
	strh r0, [r5, #0x12]
	ldrh r0, [r1, #0x12]
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041A8C: .4byte gCurTask
_08041A90: .4byte 0x0300000C
