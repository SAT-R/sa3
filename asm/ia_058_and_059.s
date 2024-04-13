.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8035204
sub_8035204: @ 0x08035204
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x30]
	mov sl, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _0803534C @ =sub_8035C24
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035350 @ =sub_8035BC4
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r1, _08035354 @ =0x0300000C
	adds r1, r4, r1
	str r1, [sp, #8]
	ldr r2, _08035358 @ =0x03000044
	adds r2, r4, r2
	str r2, [sp, #0xc]
	movs r1, #0
	movs r6, #0
	mov r3, r8
	strh r3, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	str r7, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #0xa]
	mov r2, sl
	strb r2, [r5, #0xb]
	ldr r3, _0803535C @ =0x03000070
	adds r3, r3, r4
	mov sl, r3
	mov r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r3]
	strh r6, [r5, #8]
	ldr r2, _08035360 @ =0x03000074
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08035364 @ =0x03000075
	adds r0, r4, r3
	strb r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strh r6, [r0]
	adds r3, #5
	adds r0, r4, r3
	strh r6, [r0]
	adds r2, #0xc
	adds r0, r4, r2
	str r6, [r0]
	adds r3, #0xe
	adds r0, r4, r3
	str r6, [r0]
	adds r2, #8
	adds r0, r4, r2
	str r6, [r0]
	adds r3, #8
	adds r0, r4, r3
	str r6, [r0]
	subs r2, #0x16
	adds r0, r4, r2
	strb r1, [r0]
	subs r3, #0x19
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	str r0, [r5, #0x7c]
	adds r2, #0xa
	adds r2, r2, r4
	mov r8, r2
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	mov r3, sb
	lsls r3, r3, #8
	mov sb, r3
	add r2, sb
	mov r0, r8
	str r2, [r0]
	ldr r1, [r5, #0x7c]
	ldr r3, [r5]
	ldr r0, [sp, #4]
	bl sub_804DC38
	ldr r2, _08035368 @ =0x0300006E
	adds r1, r4, r2
	strh r0, [r1]
	ldr r3, _0803536C @ =0x0300006C
	adds r0, r4, r3
	strh r6, [r0]
	mov r0, sp
	ldrb r1, [r0, #4]
	mov r0, sl
	strb r1, [r0]
	ldrb r0, [r7, #7]
	adds r3, #5
	adds r2, r4, r3
	strb r0, [r2]
	ldr r0, _08035370 @ =0x03000072
	adds r4, r4, r0
	movs r0, #4
	strb r0, [r4]
	ldr r1, [r5, #0x7c]
	ldr r3, [sp, #8]
	strh r1, [r3, #0x10]
	mov r3, r8
	ldr r0, [r3]
	ldr r3, [sp, #8]
	strh r0, [r3, #0x12]
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x10]
	ldrh r0, [r3, #0x12]
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r7]
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_803598C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803534C: .4byte sub_8035C24
_08035350: .4byte sub_8035BC4
_08035354: .4byte 0x0300000C
_08035358: .4byte 0x03000044
_0803535C: .4byte 0x03000070
_08035360: .4byte 0x03000074
_08035364: .4byte 0x03000075
_08035368: .4byte 0x0300006E
_0803536C: .4byte 0x0300006C
_08035370: .4byte 0x03000072

	thumb_func_start sub_8035374
sub_8035374: @ 0x08035374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _080353A8 @ =gStageData
	ldrb r0, [r0, #6]
	mov r8, r0
	mov r7, r8
	adds r7, #1
	movs r0, #1
	ands r7, r0
	ldr r0, _080353AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_08035398:
	cmp r5, #0
	beq _080353B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	b _080353BA
	.align 2, 0
_080353A8: .4byte gStageData
_080353AC: .4byte gCurTask
_080353B0:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	lsls r0, r0, #2
	add r0, r8
_080353BA:
	lsls r0, r0, #4
	ldr r1, _08035414 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080353D6
	cmp r1, #8
	beq _080353D6
	cmp r1, #0x10
	bne _08035464
_080353D6:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08035464
	adds r0, r6, #0
	adds r0, #0x74
	adds r0, r0, r5
	ldrb r2, [r0]
	cmp r2, #1
	bne _08035430
	adds r0, r6, #0
	adds r0, #0x71
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bls _08035426
	adds r0, r6, #0
	adds r0, #0x76
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08035418
	ldr r0, [r4, #4]
	orrs r0, r2
	b _08035424
	.align 2, 0
_08035414: .4byte gPlayers
_08035418:
	cmp r1, #1
	bne _08035426
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08035424:
	str r0, [r4, #4]
_08035426:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8035480
	b _08035438
_08035430:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8035540
_08035438:
	lsls r1, r5, #1
	adds r0, r6, #0
	adds r0, #0x78
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803545C
	subs r1, r0, #1
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bhi _0803545C
	movs r3, #0
	strh r1, [r2]
	cmp r0, #0x1e
	bls _08035464
	strh r3, [r2]
	b _08035464
_0803545C:
	ldr r0, [r4, #4]
	ldr r1, _0803547C @ =0xF7FBFFFF
	ands r0, r1
	str r0, [r4, #4]
_08035464:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08035398
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803547C: .4byte 0xF7FBFFFF

	thumb_func_start sub_8035480
sub_8035480: @ 0x08035480
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0803551C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08035520 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r3, _08035524 @ =0x03000080
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	lsls r1, r6, #1
	ldr r7, _08035528 @ =0x03000078
	adds r0, r4, r7
	adds r0, r0, r1
	mov sb, r0
	ldrh r0, [r0]
	cmp r0, #0x1d
	bhi _08035530
	lsls r1, r6, #3
	adds r3, #4
	adds r0, r4, r3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0
	strh r0, [r5, #0x18]
	adds r7, #0x10
	adds r0, r4, r7
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r5, #0x1a]
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r3, [sp, #4]
	mov r0, r8
	bl sub_8020700
	cmp r0, #0
	bne _08035530
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	bne _08035530
	mov r3, sb
	strh r1, [r3]
	subs r7, #0x14
	adds r0, r4, r7
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r1, _0803552C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #0
	b _08035532
	.align 2, 0
_0803551C: .4byte gCurTask
_08035520: .4byte 0x0300000C
_08035524: .4byte 0x03000080
_08035528: .4byte 0x03000078
_0803552C: .4byte 0xFFFBFFFF
_08035530:
	movs r0, #1
_08035532:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8035540
sub_8035540: @ 0x08035540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #9
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _080355B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r2, _080355B8 @ =0x0300000C
	adds r0, r6, r2
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #8
	ldr r3, _080355BC @ =0x03000080
	adds r2, r6, r3
	ldr r2, [r2]
	lsls r2, r2, #8
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	mov r3, sb
	str r3, [sp, #4]
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _0803558A
	b _0803587C
_0803558A:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0803559C
	adds r0, r4, #0
	bl sub_8016F28
_0803559C:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080355C4
	ldr r0, _080355C0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	b _08035892
	.align 2, 0
_080355B4: .4byte gCurTask
_080355B8: .4byte 0x0300000C
_080355BC: .4byte 0x03000080
_080355C0: .4byte 0xFFFBFFFF
_080355C4:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	mov sb, r0
	ldr r1, _080355F4 @ =0x03000071
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	ldr r3, _080355F8 @ =0x03000076
	adds r2, r6, r3
	cmp r0, #9
	bls _080355EA
	b _0803582A
_080355EA:
	lsls r0, r0, #2
	ldr r1, _080355FC @ =_08035600
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080355F4: .4byte 0x03000071
_080355F8: .4byte 0x03000076
_080355FC: .4byte _08035600
_08035600: @ jump table
	.4byte _08035628 @ case 0
	.4byte _0803565C @ case 1
	.4byte _0803582A @ case 2
	.4byte _0803568C @ case 3
	.4byte _08035710 @ case 4
	.4byte _08035758 @ case 5
	.4byte _0803582A @ case 6
	.4byte _080356CC @ case 7
	.4byte _080357A0 @ case 8
	.4byte _080357E8 @ case 9
_08035628:
	ldr r0, _08035654 @ =0x0000FFFF
	strh r0, [r4, #0x32]
	ldr r1, _08035658 @ =sub_80071A8
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r1, r8
	lsls r0, r1
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r4, #0x1a]
	strh r1, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x40
	b _0803567E
	.align 2, 0
_08035654: .4byte 0x0000FFFF
_08035658: .4byte sub_80071A8
_0803565C:
	ldr r1, _08035688 @ =sub_8007240
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r2, r8
	lsls r0, r2
	movs r1, #0
	strh r0, [r4, #0x1a]
	strh r1, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0xc0
_0803567E:
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x76
	b _0803582A
	.align 2, 0
_08035688: .4byte sub_8007240
_0803568C:
	ldr r1, _080356C8 @ =sub_8007110
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r3, r8
	lsls r0, r3
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x80
	b _08035828
	.align 2, 0
_080356C8: .4byte sub_8007110
_080356CC:
	ldr r1, _0803570C @ =sub_8007110
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x76
	adds r1, r3, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r1, r8
	lsls r0, r1
	movs r1, #0
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r2, r3, #0
	b _0803582A
	.align 2, 0
_0803570C: .4byte sub_8007110
_08035710:
	ldr r1, _08035754 @ =sub_8007110
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x60
	b _08035828
	.align 2, 0
_08035754: .4byte sub_8007110
_08035758:
	ldr r1, _0803579C @ =sub_8007240
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0xa0
	b _08035828
	.align 2, 0
_0803579C: .4byte sub_8007240
_080357A0:
	ldr r1, _080357E4 @ =sub_8007110
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x20
	b _08035828
	.align 2, 0
_080357E4: .4byte sub_8007110
_080357E8:
	ldr r1, _08035888 @ =sub_8007240
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0xe0
_08035828:
	strb r0, [r1]
_0803582A:
	adds r0, r2, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803583C
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0803583C:
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _0803588C @ =0x00000115
	adds r0, r4, #0
	bl sub_8004E98
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x84
	adds r0, r0, r2
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x88
	adds r0, r0, r2
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	lsls r1, r7, #1
	adds r0, r5, #0
	adds r0, #0x78
	adds r0, r0, r1
	movs r1, #0x1e
	strh r1, [r0]
_0803587C:
	mov r3, sb
	cmp r3, #0
	bne _08035890
	movs r0, #0
	b _08035892
	.align 2, 0
_08035888: .4byte sub_8007240
_0803588C: .4byte 0x00000115
_08035890:
	movs r0, #1
_08035892:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80358A0
sub_80358A0: @ 0x080358A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08035930 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov ip, r0
	ldr r6, [r0]
	ldrb r3, [r0, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #8
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	mov r1, ip
	ldrh r0, [r1, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	ldr r1, _08035934 @ =gStageData
	ldr r4, _08035938 @ =0x03000072
	adds r0, r5, r4
	ldrb r4, [r0]
	ldr r0, [r1, #0x1c]
	ldr r7, _0803593C @ =0x0300006E
	adds r1, r5, r7
	muls r0, r4, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r4, _08035940 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	subs r7, #2
	adds r4, r5, r7
	strh r0, [r4]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldrb r0, [r6, #6]
	lsls r7, r0, #0xa
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r3, r3, r0
	ldrb r1, [r6, #5]
	lsls r1, r1, #0xa
	adds r6, r3, r1
	adds r2, r2, r7
	mov r8, r2
	ldr r2, _08035944 @ =gUnknown_082B48B4
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r3, r0, #0xe
	ldr r4, _08035948 @ =0x03000070
	adds r5, r5, r4
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803594C
	subs r0, r6, r3
	b _0803594E
	.align 2, 0
_08035930: .4byte gCurTask
_08035934: .4byte gStageData
_08035938: .4byte 0x03000072
_0803593C: .4byte 0x0300006E
_08035940: .4byte 0x000003FF
_08035944: .4byte gUnknown_082B48B4
_08035948: .4byte 0x03000070
_0803594C:
	adds r0, r6, r3
_0803594E:
	mov r1, ip
	str r0, [r1, #0x7c]
	mov r3, ip
	adds r3, #0x80
	mov r0, ip
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r7, r0
	asrs r2, r0, #0xe
	mov r0, ip
	adds r0, #0x70
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803597C
	mov r7, r8
	subs r0, r7, r2
	b _08035980
_0803597C:
	mov r1, r8
	adds r0, r1, r2
_08035980:
	str r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803598C
sub_803598C: @ 0x0803598C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	mov r8, r0
	cmp r4, #0xf
	bhi _08035A68
	lsls r0, r4, #2
	ldr r1, _080359AC @ =_080359B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080359AC: .4byte _080359B0
_080359B0: @ jump table
	.4byte _080359F6 @ case 0
	.4byte _080359F6 @ case 1
	.4byte _080359F0 @ case 2
	.4byte _080359F6 @ case 3
	.4byte _08035A10 @ case 4
	.4byte _08035A30 @ case 5
	.4byte _08035A30 @ case 6
	.4byte _080359F6 @ case 7
	.4byte _08035A16 @ case 8
	.4byte _08035A30 @ case 9
	.4byte _08035A30 @ case 10
	.4byte _080359F6 @ case 11
	.4byte _080359F6 @ case 12
	.4byte _080359F6 @ case 13
	.4byte _080359F6 @ case 14
	.4byte _080359F6 @ case 15
_080359F0:
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
_080359F6:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #2
	strb r0, [r6, #0x1a]
	movs r0, #3
	strb r0, [r7, #0x1a]
	b _08035A68
_08035A10:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_08035A16:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #0
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r7, #0x1a]
	b _08035A68
_08035A30:
	movs r0, #0x3d
	bl VramMalloc
	str r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #4
	strb r1, [r6, #0x1a]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08035A56
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
_08035A56:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08035A68
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08035A68:
	movs r5, #0
	movs r1, #0
	ldr r4, _08035AC4 @ =0x00000363
	strh r4, [r6, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r1, [r6, #0xe]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x20]
	strh r4, [r7, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r2, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r2, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r0, r1
	str r0, [r6, #8]
	str r0, [r7, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035AC4: .4byte 0x00000363

	thumb_func_start sub_8035AC8
sub_8035AC8: @ 0x08035AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08035B20 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08035B24 @ =0x0300000C
	adds r6, r5, r1
	ldr r2, _08035B28 @ =0x03000044
	adds r7, r5, r2
	ldr r3, [r4]
	mov r8, r3
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08035B2C
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _08035B58
	.align 2, 0
_08035B20: .4byte gCurTask
_08035B24: .4byte 0x0300000C
_08035B28: .4byte 0x03000044
_08035B2C:
	ldr r2, [r4, #0x7c]
	asrs r2, r2, #8
	ldr r1, _08035B64 @ =gCamera
	ldr r0, [r1]
	subs r2, r2, r0
	strh r2, [r6, #0x10]
	ldr r3, _08035B68 @ =0x03000080
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	strh r2, [r7, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
_08035B58:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035B64: .4byte gCamera
_08035B68: .4byte 0x03000080

	thumb_func_start CreateEntity_Interactable058
CreateEntity_Interactable058: @ 0x08035B6C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8035204
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable059
CreateEntity_Interactable059: @ 0x08035B98
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8035204
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8035BC4
sub_8035BC4: @ 0x08035BC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08035C18 @ =gStageData
	ldrb r2, [r0, #6]
	adds r1, r2, #1
	movs r0, #1
	ands r1, r0
	movs r3, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r5, r0, #4
	ldr r4, _08035C1C @ =gPlayers
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r2, r0, #4
	ldr r6, _08035C20 @ =0xF7FBFFFF
_08035BEC:
	adds r1, r2, r4
	cmp r3, #0
	beq _08035BF4
	adds r1, r5, r4
_08035BF4:
	ldr r0, [r1, #4]
	ands r0, r6
	str r0, [r1, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08035BEC
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035C18: .4byte gStageData
_08035C1C: .4byte gPlayers
_08035C20: .4byte 0xF7FBFFFF

	thumb_func_start sub_8035C24
sub_8035C24: @ 0x08035C24
	push {lr}
	bl sub_8035374
	bl sub_80358A0
	bl sub_8035AC8
	pop {r0}
	bx r0
	.align 2, 0
