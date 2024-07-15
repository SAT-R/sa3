.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_802E528
sub_802E528: @ 0x0802E528
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0802E59C @ =gStageData
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0802E61C
	ldr r0, _0802E5A0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r2, [r7, #0xa]
	mov sb, r2
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #6]
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802E5A4 @ =gPlayers
	adds r5, r0, r1
	mov r0, sb
	lsls r1, r0, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, r8
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0802E5A8
	mov r1, sb
	mov r0, r8
	strb r1, [r0]
	mov r2, sl
	ldr r0, [r2]
	bl TaskDestroy
	b _0802E61C
	.align 2, 0
_0802E59C: .4byte gStageData
_0802E5A0: .4byte gCurTask
_0802E5A4: .4byte gPlayers
_0802E5A8:
	ldr r0, [r5, #4]
	movs r1, #0x90
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0802E61C
	ldr r0, [r5, #0x10]
	asrs r1, r0, #8
	cmp r4, r1
	bgt _0802E61C
	mov r2, r8
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r0, r4, r0
	cmp r0, r1
	blt _0802E61C
	ldr r0, [r5, #0x14]
	asrs r1, r0, #8
	cmp r6, r1
	bgt _0802E61C
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r0, r6, r0
	cmp r0, r1
	blt _0802E61C
	ldrb r0, [r7, #0xb]
	cmp r0, #2
	bne _0802E614
	ldrh r4, [r7, #8]
	cmp r4, #0
	bne _0802E614
	adds r0, r5, #0
	bl sub_8016F28
	ldr r0, [r5, #4]
	ldr r1, _0802E60C @ =0x10000002
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0xb
	strh r0, [r5, #0x30]
	strh r4, [r5, #0x1c]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
	movs r0, #0x6d
	bl sub_8003DF0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0802E610 @ =sub_802E634
	b _0802E61A
	.align 2, 0
_0802E60C: .4byte 0x10000002
_0802E610: .4byte sub_802E634
_0802E614:
	ldr r0, _0802E62C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E630 @ =sub_802E6F8
_0802E61A:
	str r0, [r1, #8]
_0802E61C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E62C: .4byte gCurTask
_0802E630: .4byte sub_802E6F8

	thumb_func_start sub_802E634
sub_802E634: @ 0x0802E634
	push {r4, r5, r6, lr}
	ldr r6, _0802E688 @ =gCurTask
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r5, [r0]
	ldrb r2, [r0, #0xa]
	ldrh r3, [r0, #4]
	ldrh r4, [r0, #6]
	ldr r0, _0802E68C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802E690 @ =gPlayers
	adds r1, r0, r1
	lsls r2, r2, #3
	lsls r3, r3, #8
	adds r2, r2, r3
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	lsls r0, r0, #0x10
	asrs r4, r0, #8
	ldr r0, [r1, #0x10]
	cmp r2, r0
	beq _0802E6A6
	cmp r2, r0
	bge _0802E698
	ldr r3, _0802E694 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	bgt _0802E6A6
	b _0802E6A4
	.align 2, 0
_0802E688: .4byte gCurTask
_0802E68C: .4byte gStageData
_0802E690: .4byte gPlayers
_0802E694: .4byte 0xFFFFFE00
_0802E698:
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1, #0x10]
	cmp r0, r2
	blt _0802E6A6
_0802E6A4:
	str r2, [r1, #0x10]
_0802E6A6:
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r3, r4, r0
	ldr r0, [r1, #0x14]
	cmp r3, r0
	beq _0802E6D6
	cmp r3, r0
	bge _0802E6C8
	ldr r5, _0802E6C4 @ =0xFFFFFE00
	adds r0, r0, r5
	str r0, [r1, #0x14]
	cmp r0, r4
	bgt _0802E6D6
	b _0802E6D4
	.align 2, 0
_0802E6C4: .4byte 0xFFFFFE00
_0802E6C8:
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1, #0x14]
	cmp r0, r4
	blt _0802E6D6
_0802E6D4:
	str r3, [r1, #0x14]
_0802E6D6:
	ldr r0, [r1, #0x10]
	cmp r2, r0
	bne _0802E6EE
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	cmp r0, r1
	bne _0802E6EE
	ldr r1, [r6]
	ldr r0, _0802E6F4 @ =Task_802E8D8
	str r0, [r1, #8]
_0802E6EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E6F4: .4byte Task_802E8D8

	thumb_func_start sub_802E6F8
sub_802E6F8: @ 0x0802E6F8
	push {r4, lr}
	ldr r0, _0802E744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrb r4, [r0, #0xb]
	cmp r4, #2
	bne _0802E714
	ldr r0, _0802E748 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0802E736
_0802E714:
	bl sub_8003D2C
	ldr r1, _0802E74C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0802E750 @ =gUnknown_03003F94
	ldr r0, _0802E754 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0802E758 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802E75C @ =gUnknown_03006208
	ldr r0, _0802E760 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
_0802E736:
	cmp r4, #1
	beq _0802E7A4
	cmp r4, #1
	bgt _0802E764
	cmp r4, #0
	beq _0802E76E
	b _0802E7E6
	.align 2, 0
_0802E744: .4byte gCurTask
_0802E748: .4byte gStageData
_0802E74C: .4byte 0x0000FFFF
_0802E750: .4byte gUnknown_03003F94
_0802E754: .4byte gUnknown_03003D20
_0802E758: .4byte gUnknown_03006840
_0802E75C: .4byte gUnknown_03006208
_0802E760: .4byte gUnknown_03003F34
_0802E764:
	cmp r4, #2
	beq _0802E7AA
	cmp r4, #3
	beq _0802E7B0
	b _0802E7E6
_0802E76E:
	ldr r4, _0802E7A0 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _0802E788
	ldrb r1, [r4, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_80275B8
_0802E788:
	ldrb r1, [r4, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0
	bl sub_8002210
	b _0802E7E6
	.align 2, 0
_0802E7A0: .4byte gStageData
_0802E7A4:
	bl sub_802E87C
	b _0802E7E6
_0802E7AA:
	bl sub_802E8A8
	b _0802E7E6
_0802E7B0:
	ldr r2, _0802E7EC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802E7F0 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, _0802E7F4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #1
	movs r1, #2
	bl sub_8002210
_0802E7E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E7EC: .4byte gDispCnt
_0802E7F0: .4byte gWinRegs
_0802E7F4: .4byte gBldRegs

.if 0
.endif
