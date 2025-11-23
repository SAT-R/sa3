.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_Juggling
Task_Juggling: @ 0x0805E4B4
	push {r4, lr}
	ldr r0, _0805E504 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805E508 @ =0x03000020
	adds r0, r3, r1
	subs r1, #0x16
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805E50C @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805E4F2
	cmp r1, #4
	beq _0805E4F2
	adds r0, r4, #0
	bl sub_805E918
	adds r0, r4, #0
	bl sub_805E624
_0805E4F2:
	ldrh r0, [r4, #0xe]
	ldrh r1, [r4, #0x10]
	subs r2, r0, r1
	cmp r2, #0
	blt _0805E514
	ldr r0, _0805E510 @ =0x000007FF
	cmp r2, r0
	ble _0805E51C
	b _0805E534
	.align 2, 0
_0805E504: .4byte gCurTask
_0805E508: .4byte 0x03000020
_0805E50C: .4byte gStageData
_0805E510: .4byte 0x000007FF
_0805E514:
	subs r1, r1, r0
	ldr r0, _0805E548 @ =0x000007FF
	cmp r1, r0
	bgt _0805E534
_0805E51C:
	movs r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0805E526
	movs r1, #1
_0805E526:
	cmp r1, #0
	beq _0805E534
	movs r0, #0
	strh r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x10]
_0805E534:
	adds r0, r4, #0
	bl sub_805E9D4
	cmp r0, #1
	bne _0805E554
	ldr r0, _0805E54C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805E550 @ =sub_805E8B8
	str r0, [r1, #8]
	b _0805E598
	.align 2, 0
_0805E548: .4byte 0x000007FF
_0805E54C: .4byte gCurTask
_0805E550: .4byte sub_805E8B8
_0805E554:
	adds r0, r4, #0
	bl sub_805E950
	cmp r0, #1
	bne _0805E564
	adds r0, r4, #0
	bl sub_805E5A0
_0805E564:
	adds r0, r4, #0
	bl sub_805E6E0
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	ble _0805E578
	ldr r0, [r4, #0x40]
	cmp r1, r0
	blt _0805E598
_0805E578:
	adds r3, r4, #0
	adds r3, #0x44
	ldr r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E594
	ldr r0, _0805E590 @ =0xFFFFFBFF
	ands r1, r0
	b _0805E596
	.align 2, 0
_0805E590: .4byte 0xFFFFFBFF
_0805E594:
	orrs r1, r2
_0805E596:
	str r1, [r3, #8]
_0805E598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805E5A0
sub_805E5A0: @ 0x0805E5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0805E5DE
	ldrh r5, [r6, #0xe]
	cmp r5, #0
	bne _0805E5DE
	adds r0, r6, #0
	adds r0, #0x28
	adds r1, r6, #0
	adds r1, #0x24
	ldrh r2, [r6, #0xa]
	ldrh r3, [r6, #0xc]
	adds r4, r6, #6
	str r4, [sp]
	str r5, [sp, #4]
	ldr r4, [r6, #0x14]
	str r4, [sp, #8]
	bl sub_805EA24
	adds r1, r6, #0
	adds r1, #0xd8
	str r0, [r1]
	movs r0, #1
	strb r0, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #0xe]
	b _0805E61A
_0805E5DE:
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _0805E61A
	ldrh r0, [r6, #0x10]
	cmp r0, #0
	bne _0805E61A
	adds r0, r6, #0
	adds r0, #0x30
	adds r1, r6, #0
	adds r1, #0x24
	ldrh r2, [r6, #0xa]
	ldrh r3, [r6, #0xc]
	adds r4, r6, #7
	str r4, [sp]
	movs r5, #1
	str r5, [sp, #4]
	ldr r4, [r6, #0x14]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r4, r4, r7
	str r4, [sp, #8]
	bl sub_805EA24
	adds r1, r6, #0
	adds r1, #0xd4
	str r0, [r1]
	strb r5, [r6, #7]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #0x10]
_0805E61A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805E624
sub_805E624: @ 0x0805E624
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov ip, r1
	ldr r7, _0805E688 @ =gSineTable
	adds r5, r3, #0
	adds r5, #0x2c
	movs r6, #0xff
_0805E642:
	adds r0, r3, #6
	adds r0, r0, r4
	ldrb r2, [r0]
	cmp r2, #0
	bne _0805E6AC
	lsls r1, r4, #1
	adds r0, r3, #0
	adds r0, #0xe
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bls _0805E664
	strh r2, [r1]
_0805E664:
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	cmp r0, ip
	bls _0805E68C
	lsls r2, r4, #3
	adds r2, r5, r2
	lsrs r0, r1, #0x14
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #2
	movs r1, #0x90
	lsls r1, r1, #5
	b _0805E6A4
	.align 2, 0
_0805E688: .4byte gSineTable
_0805E68C:
	lsls r2, r4, #3
	adds r2, r5, r2
	lsrs r0, r1, #0x14
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #6
_0805E6A4:
	adds r0, r0, r1
	ldr r1, [r3, #0x24]
	subs r1, r1, r0
	str r1, [r2]
_0805E6AC:
	cmp r4, #0
	bne _0805E6B8
	ldr r0, [r3, #0x20]
	add r0, ip
	str r0, [r3, #0x28]
	b _0805E6C8
_0805E6B8:
	lsls r0, r4, #3
	adds r1, r3, #0
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r3, #0x20]
	ldr r2, _0805E6DC @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1]
_0805E6C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0805E642
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E6DC: .4byte 0xFFFFF800

	thumb_func_start sub_805E6E0
sub_805E6E0: @ 0x0805E6E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x44
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805E79C @ =gCamera
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0805E754
	adds r4, #0x30
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0805E7A0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805E754:
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0805E794
	adds r4, r5, #0
	adds r4, #0xa4
	ldr r1, [r5, #0x30]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x34]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805E794:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E79C: .4byte gCamera
_0805E7A0: .4byte 0xFFFFFBFF

	thumb_func_start sub_805E7A4
sub_805E7A4: @ 0x0805E7A4
	push {r4, r5, r6, lr}
	ldr r1, [r0, #0x14]
	adds r6, r0, #0
	adds r6, #0x28
	str r1, [r0, #0x28]
	ldr r2, _0805E80C @ =gUnknown_080D1F7C
	ldrh r1, [r2]
	movs r5, #0
	movs r4, #0
	strh r1, [r6, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r6, #0x1a]
	movs r1, #0xff
	strb r1, [r6, #0x1b]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldr r3, _0805E810 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r6, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r6, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	strh r4, [r6, #0xe]
	strh r4, [r6, #0x16]
	movs r1, #0x20
	strb r1, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0805E7FA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805E7FA:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E80C: .4byte gUnknown_080D1F7C
_0805E810: .4byte gCamera

	thumb_func_start sub_805E814
sub_805E814: @ 0x0805E814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x20]
	asrs r7, r1, #8
	ldr r1, [r0, #0x24]
	asrs r6, r1, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x28
	mov r8, r0
	movs r5, #0
_0805E838:
	cmp r5, #0
	bne _0805E848
	ldr r0, _0805E844 @ =gStageData
	ldrb r1, [r0, #6]
	b _0805E852
	.align 2, 0
_0805E844: .4byte gStageData
_0805E848:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805E852:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805E89C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805E8A0
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805E8A0
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805E898
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805E898:
	movs r0, #1
	b _0805E8AC
	.align 2, 0
_0805E89C: .4byte gPlayers
_0805E8A0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805E838
	movs r0, #0
_0805E8AC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805E8B8
sub_805E8B8: @ 0x0805E8B8
	push {r4, r5, r6, lr}
	ldr r0, _0805E910 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0805E8E0
	ldr r0, _0805E914 @ =0x030000D4
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0805E8E0
	bl TaskDestroy
	str r6, [r4]
	movs r6, #1
_0805E8E0:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0805E8FC
	adds r4, r5, #0
	adds r4, #0xd8
	ldr r0, [r4]
	cmp r0, #0
	beq _0805E8FC
	cmp r6, #0
	bne _0805E908
	bl TaskDestroy
	str r6, [r4]
	movs r6, #1
_0805E8FC:
	cmp r6, #0
	bne _0805E908
	ldr r0, _0805E910 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805E908:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E910: .4byte gCurTask
_0805E914: .4byte 0x030000D4

	thumb_func_start sub_805E918
sub_805E918: @ 0x0805E918
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E93A
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x40]
	cmp r0, r1
	bgt _0805E94C
	adds r0, #0x80
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _0805E94C
	b _0805E94A
_0805E93A:
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x3c]
	cmp r0, r1
	blt _0805E94C
	subs r0, #0x80
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _0805E94C
_0805E94A:
	str r1, [r2, #0x20]
_0805E94C:
	pop {r0}
	bx r0

	thumb_func_start sub_805E950
sub_805E950: @ 0x0805E950
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x44
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0805E98E
_0805E964:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E978
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _0805E97E
_0805E978:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_0805E97E:
	subs r0, #1
	cmp r0, #0x4e
	bhi _0805E988
	movs r0, #1
	b _0805E9A0
_0805E988:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805E98E:
	cmp r4, #1
	bhi _0805E99E
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _0805E964
_0805E99E:
	movs r0, #0
_0805E9A0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805E9A8
sub_805E9A8: @ 0x0805E9A8
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x44
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805E9D4
sub_805E9D4: @ 0x0805E9D4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805E9A8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x44
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
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

	thumb_func_start TaskDestructor_Juggling
TaskDestructor_Juggling: @ 0x0805EA10
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x44]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805EA24
sub_805EA24: @ 0x0805EA24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r7, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r5, [sp, #0x2c]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805EAB4 @ =sub_805EAC8
	ldr r2, _0805EAB8 @ =0x00004040
	ldr r1, _0805EABC @ =sub_805EBF8
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r3, sl
	str r3, [r4, #0x18]
	str r7, [r4, #0x1c]
	movs r2, #0
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	movs r0, #0
	strh r6, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
	strb r5, [r4, #8]
	strb r0, [r4]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	strh r2, [r4, #0xe]
	ldr r0, [sp, #0x28]
	str r0, [r4, #4]
	ldr r3, [sp, #0x30]
	str r3, [r4, #0x14]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _0805EAC0 @ =0x03000054
	adds r1, r1, r0
	ldr r2, _0805EAC4 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r4, #0
	bl sub_805E7A4
	mov r0, sb
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EAB4: .4byte sub_805EAC8
_0805EAB8: .4byte 0x00004040
_0805EABC: .4byte sub_805EBF8
_0805EAC0: .4byte 0x03000054
_0805EAC4: .4byte 0x01000002

	thumb_func_start sub_805EAC8
sub_805EAC8: @ 0x0805EAC8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805EAF8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_805EB68
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805EBB4
	cmp r5, #1
	bne _0805EAFC
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
	b _0805EB20
	.align 2, 0
_0805EAF8: .4byte gCurTask
_0805EAFC:
	adds r0, r4, #0
	bl sub_805E814
	cmp r0, #1
	bne _0805EB08
	movs r5, #1
_0805EB08:
	cmp r5, #1
	bne _0805EB20
	ldr r0, _0805EB28 @ =0x03000028
	adds r2, r6, r0
	ldr r1, _0805EB2C @ =gUnknown_080D1F7C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805EB30 @ =sub_805EB34
	str r0, [r1, #8]
_0805EB20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB28: .4byte 0x03000028
_0805EB2C: .4byte gUnknown_080D1F7C
_0805EB30: .4byte sub_805EB34

	thumb_func_start sub_805EB34
sub_805EB34: @ 0x0805EB34
	push {r4, r5, r6, lr}
	ldr r6, _0805EB64 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805EBB4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805E814
	cmp r5, #0
	bne _0805EB5E
	ldr r0, [r4, #4]
	strb r5, [r0]
	ldr r0, [r6]
	bl TaskDestroy
_0805EB5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB64: .4byte gCurTask

	thumb_func_start sub_805EB68
sub_805EB68: @ 0x0805EB68
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	adds r0, #0x20
	strh r0, [r4, #0xe]
	lsls r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	bhi _0805EBAC
	ldr r3, [r4, #0x1c]
	ldr r2, _0805EBA8 @ =gSineTable
	lsrs r0, r1, #0x14
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [r3]
	subs r1, r1, r0
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	str r0, [r4, #0x20]
	movs r0, #0
	b _0805EBAE
	.align 2, 0
_0805EBA8: .4byte gSineTable
_0805EBAC:
	movs r0, #1
_0805EBAE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805EBB4
sub_805EBB4: @ 0x0805EBB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805EBF4 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
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
_0805EBF4: .4byte gCamera
    
    thumb_func_start sub_805EBF8
sub_805EBF8:
    bx lr
    .align 2 , 0
