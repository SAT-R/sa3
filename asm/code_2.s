.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_809B770
sub_809B770: @ 0x0809B770
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0809B798 @ =gUnknown_080D8F18
	ldr r0, [r5]
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0809B7A4
	ldr r0, _0809B79C @ =gUnknown_080D9438
	adds r0, r2, r0
	ldrb r7, [r0]
	ldr r1, _0809B7A0 @ =gUnknown_080D93EC
	b _0809B7AC
	.align 2, 0
_0809B798: .4byte gUnknown_080D8F18
_0809B79C: .4byte gUnknown_080D9438
_0809B7A0: .4byte gUnknown_080D93EC
_0809B7A4:
	ldr r0, _0809B828 @ =gUnknown_080D9432
	adds r0, r2, r0
	ldrb r7, [r0]
	ldr r1, _0809B82C @ =gUnknown_080D93D4
_0809B7AC:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r6, [r5, #0xc]
	movs r4, #0
	cmp r4, r7
	bhs _0809B818
	movs r0, #0
	mov sb, r0
	movs r3, #0
_0809B7C2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x18
	adds r0, r5, r0
	str r6, [r0]
	lsls r2, r4, #3
	add r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x14]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r3, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, r7
	blo _0809B7C2
_0809B818:
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0809B838
	ldr r0, _0809B830 @ =gUnknown_080D9438
	ldrb r7, [r0, #5]
	ldr r0, _0809B834 @ =gUnknown_080D93EC
	b _0809B83E
	.align 2, 0
_0809B828: .4byte gUnknown_080D9432
_0809B82C: .4byte gUnknown_080D93D4
_0809B830: .4byte gUnknown_080D9438
_0809B834: .4byte gUnknown_080D93EC
_0809B838:
	ldr r0, _0809B8C0 @ =gUnknown_080D9432
	ldrb r7, [r0, #5]
	ldr r0, _0809B8C4 @ =gUnknown_080D93D4
_0809B83E:
	ldr r0, [r0, #0x14]
	mov r8, r0
	movs r4, #0
	cmp r4, r7
	bhs _0809B8A8
	movs r0, #0
	mov sb, r0
	movs r3, #0
_0809B84E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	str r6, [r0]
	lsls r2, r4, #3
	add r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x14]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r3, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, r7
	blo _0809B84E
_0809B8A8:
	ldr r0, [r5, #0xc]
	movs r1, #0xd4
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B8C0: .4byte gUnknown_080D9432
_0809B8C4: .4byte gUnknown_080D93D4

	thumb_func_start sub_809B8C8
sub_809B8C8: @ 0x0809B8C8
	push {r4, r5, lr}
	ldr r5, _0809B91C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809BA58
	cmp r0, #0
	beq _0809B960
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	subs r0, #0x16
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _0809B8F4
	adds r0, r4, #0
	bl sub_809B970
_0809B8F4:
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r2, #0xb4
	lsls r2, r2, #9
	ldr r3, [r4, #4]
	adds r4, r0, #0
	cmp r1, r2
	bls _0809B934
	ldrb r0, [r3]
	cmp r0, #0x1d
	beq _0809B914
	cmp r0, #0x23
	bls _0809B92C
_0809B914:
	cmp r0, #0x24
	bne _0809B920
	movs r0, #0x25
	b _0809B922
	.align 2, 0
_0809B91C: .4byte gCurTask
_0809B920:
	movs r0, #0x24
_0809B922:
	strb r0, [r3]
	ldr r0, [r5]
	bl TaskDestroy
	b _0809B960
_0809B92C:
	cmp r0, #4
	bne _0809B934
	ldr r1, [r5]
	b _0809B95C
_0809B934:
	ldrb r0, [r3]
	cmp r0, #0x1f
	bne _0809B960
	ldr r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #6
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #9
	cmp r0, r1
	bls _0809B958
	ldr r0, _0809B954 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809B960
	.align 2, 0
_0809B954: .4byte gCurTask
_0809B958:
	ldr r0, _0809B968 @ =gCurTask
	ldr r1, [r0]
_0809B95C:
	ldr r0, _0809B96C @ =sub_809BF9C
	str r0, [r1, #8]
_0809B960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B968: .4byte gCurTask
_0809B96C: .4byte sub_809BF9C

	thumb_func_start sub_809B970
sub_809B970: @ 0x0809B970
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0
	ldr r2, _0809B994 @ =gStageData
	ldrb r1, [r2, #3]
	cmp r1, #4
	bhi _0809B99C
	ldr r1, _0809B998 @ =gPlayers
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r1, r2
	b _0809BA00
	.align 2, 0
_0809B994: .4byte gStageData
_0809B998: .4byte gPlayers
_0809B99C:
	cmp r1, #6
	bne _0809B9D0
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _0809B9AA
	cmp r0, #2
	bne _0809B9BC
_0809B9AA:
	ldr r0, _0809B9B8 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r5, [r1]
	adds r0, #0x4e
	ldrb r0, [r0]
	b _0809BA06
	.align 2, 0
_0809B9B8: .4byte gUnknown_03001060
_0809B9BC:
	ldr r0, _0809B9CC @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x4d
	ldrb r5, [r1]
	adds r0, #0x4f
	ldrb r0, [r0]
	b _0809BA06
	.align 2, 0
_0809B9CC: .4byte gUnknown_03001060
_0809B9D0:
	cmp r1, #5
	bne _0809BA06
	ldrb r1, [r2, #6]
	adds r2, r1, #1
	movs r4, #1
	ldr r3, _0809BA1C @ =gPlayers
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	ands r2, r4
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x2a
_0809BA00:
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
_0809BA06:
	cmp r5, #0
	beq _0809BA0E
	cmp r0, #0
	bne _0809BA38
_0809BA0E:
	cmp r5, #2
	beq _0809BA16
	cmp r0, #2
	bne _0809BA20
_0809BA16:
	movs r0, #2
	b _0809BA4E
	.align 2, 0
_0809BA1C: .4byte gPlayers
_0809BA20:
	cmp r5, #3
	beq _0809BA28
	cmp r0, #3
	bne _0809BA2C
_0809BA28:
	movs r0, #3
	b _0809BA4E
_0809BA2C:
	cmp r5, #4
	beq _0809BA34
	cmp r0, #4
	bne _0809BA4C
_0809BA34:
	movs r0, #4
	b _0809BA4E
_0809BA38:
	cmp r5, #4
	bne _0809BA40
	cmp r0, #1
	beq _0809BA48
_0809BA40:
	cmp r5, #1
	bne _0809BA4C
	cmp r0, #4
	bne _0809BA4C
_0809BA48:
	movs r0, #5
	b _0809BA4E
_0809BA4C:
	movs r0, #1
_0809BA4E:
	strb r0, [r6, #9]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809BA58
sub_809BA58: @ 0x0809BA58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r1, _0809BAD0 @ =gUnknown_080D8F18
	ldr r0, [r6]
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _0809BAD4 @ =gStageData
	mov sl, r2
	str r1, [sp, #0xc]
	ldrb r3, [r0, #6]
	cmp r3, #1
	bgt _0809BADC
	ldr r1, [r6, #4]
	ldrb r2, [r1]
	adds r0, r2, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #7
	bhi _0809BAA6
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r0, #0x78
	bgt _0809BACA
_0809BAA6:
	adds r0, r2, #0
	cmp r0, #0x13
	bls _0809BB24
	cmp r0, #0x1c
	beq _0809BB24
	ldr r0, _0809BAD8 @ =gPlayers
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r0
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r8, r0
	beq _0809BB24
_0809BACA:
	movs r2, #1
	str r2, [sp, #8]
	b _0809BB24
	.align 2, 0
_0809BAD0: .4byte gUnknown_080D8F18
_0809BAD4: .4byte gStageData
_0809BAD8: .4byte gPlayers
_0809BADC:
	ldr r1, [r6, #4]
	ldrb r2, [r1]
	adds r0, r2, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #7
	bhi _0809BAF8
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r0, #0x78
	bgt _0809BB20
_0809BAF8:
	adds r0, r2, #0
	cmp r0, #0x13
	bls _0809BB24
	cmp r0, #0x1c
	beq _0809BB24
	ldr r2, _0809BB5C @ =gPlayers
	movs r1, #1
	ands r1, r3
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r8, r0
	beq _0809BB24
_0809BB20:
	movs r0, #1
	str r0, [sp, #8]
_0809BB24:
	ldrb r1, [r4]
	adds r0, r1, #0
	subs r0, #0x16
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _0809BB34
	b _0809BC44
_0809BB34:
	adds r0, r1, #0
	subs r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0809BB42
	b _0809BC50
_0809BB42:
	ldrb r0, [r6, #9]
	cmp r0, #1
	bne _0809BB4A
	b _0809BC74
_0809BB4A:
	ldrb r0, [r6, #9]
	cmp r0, #3
	beq _0809BB98
	cmp r0, #3
	bgt _0809BB60
	cmp r0, #2
	beq _0809BB6A
	b _0809BCBC
	.align 2, 0
_0809BB5C: .4byte gPlayers
_0809BB60:
	cmp r0, #4
	beq _0809BBC8
	cmp r0, #5
	beq _0809BBF8
	b _0809BCBC
_0809BB6A:
	mov r0, r8
	cmp r0, #0
	bne _0809BB84
	ldr r0, _0809BB7C @ =gUnknown_080D943E
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, _0809BB80 @ =gUnknown_080D9404
	ldr r0, [r0]
	b _0809BC26
	.align 2, 0
_0809BB7C: .4byte gUnknown_080D943E
_0809BB80: .4byte gUnknown_080D9404
_0809BB84:
	ldr r0, _0809BB90 @ =gUnknown_080D9441
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, _0809BB94 @ =gUnknown_080D9404
	ldr r0, [r0, #4]
	b _0809BC26
	.align 2, 0
_0809BB90: .4byte gUnknown_080D9441
_0809BB94: .4byte gUnknown_080D9404
_0809BB98:
	mov r1, r8
	cmp r1, #0
	bne _0809BBB4
	ldr r0, _0809BBAC @ =gUnknown_080D943E
	ldrb r0, [r0, #1]
	str r0, [sp]
	ldr r0, _0809BBB0 @ =gUnknown_080D9404
	ldr r0, [r0, #0x10]
	b _0809BC26
	.align 2, 0
_0809BBAC: .4byte gUnknown_080D943E
_0809BBB0: .4byte gUnknown_080D9404
_0809BBB4:
	ldr r0, _0809BBC0 @ =gUnknown_080D9441
	ldrb r0, [r0, #1]
	str r0, [sp]
	ldr r0, _0809BBC4 @ =gUnknown_080D9404
	ldr r0, [r0, #0x14]
	b _0809BC26
	.align 2, 0
_0809BBC0: .4byte gUnknown_080D9441
_0809BBC4: .4byte gUnknown_080D9404
_0809BBC8:
	mov r2, r8
	cmp r2, #0
	bne _0809BBE4
	ldr r0, _0809BBDC @ =gUnknown_080D943E
	ldrb r0, [r0, #2]
	str r0, [sp]
	ldr r0, _0809BBE0 @ =gUnknown_080D9404
	ldr r0, [r0, #8]
	b _0809BC26
	.align 2, 0
_0809BBDC: .4byte gUnknown_080D943E
_0809BBE0: .4byte gUnknown_080D9404
_0809BBE4:
	ldr r0, _0809BBF0 @ =gUnknown_080D9441
	ldrb r0, [r0, #2]
	str r0, [sp]
	ldr r0, _0809BBF4 @ =gUnknown_080D9404
	ldr r0, [r0, #0xc]
	b _0809BC26
	.align 2, 0
_0809BBF0: .4byte gUnknown_080D9441
_0809BBF4: .4byte gUnknown_080D9404
_0809BBF8:
	mov r0, r8
	cmp r0, #1
	bne _0809BC1C
	ldr r0, _0809BC14 @ =gUnknown_080D9444
	ldrb r1, [r0]
	str r1, [sp]
	ldrb r0, [r0, #2]
	str r0, [sp, #4]
	ldr r0, _0809BC18 @ =gUnknown_080D9404
	ldr r2, [r0, #0x1c]
	mov sl, r2
	ldr r0, [r0, #0x20]
	str r0, [sp, #0xc]
	b _0809BC28
	.align 2, 0
_0809BC14: .4byte gUnknown_080D9444
_0809BC18: .4byte gUnknown_080D9404
_0809BC1C:
	ldr r0, _0809BC3C @ =gUnknown_080D9444
	ldrb r0, [r0, #1]
	str r0, [sp]
	ldr r0, _0809BC40 @ =gUnknown_080D9404
	ldr r0, [r0, #0x18]
_0809BC26:
	mov sl, r0
_0809BC28:
	ldr r1, [r6, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	ldr r1, [r6, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1]
	b _0809BCBC
	.align 2, 0
_0809BC3C: .4byte gUnknown_080D9444
_0809BC40: .4byte gUnknown_080D9404
_0809BC44:
	adds r0, r1, #0
	subs r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0809BC5E
_0809BC50:
	movs r0, #0
	strb r0, [r6, #9]
	str r0, [sp, #8]
	ldrb r0, [r4]
	cmp r0, #0x1b
	bne _0809BC6E
	b _0809BC6A
_0809BC5E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bne _0809BC6E
	movs r1, #0
	str r1, [sp, #8]
_0809BC6A:
	movs r0, #1
	strb r0, [r6, #9]
_0809BC6E:
	ldrb r0, [r6, #9]
	cmp r0, #1
	bne _0809BC9C
_0809BC74:
	ldr r1, _0809BC94 @ =gUnknown_080D9438
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	str r0, [sp]
	ldrb r1, [r1, #5]
	str r1, [sp, #4]
	ldr r1, _0809BC98 @ =gUnknown_080D93EC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r0
	ldr r1, [r1, #0x14]
	str r1, [sp, #0xc]
	b _0809BCBC
	.align 2, 0
_0809BC94: .4byte gUnknown_080D9438
_0809BC98: .4byte gUnknown_080D93EC
_0809BC9C:
	ldr r1, _0809BD0C @ =gUnknown_080D9432
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	str r0, [sp]
	ldrb r1, [r1, #5]
	str r1, [sp, #4]
	ldr r1, _0809BD10 @ =gUnknown_080D93D4
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r0
	ldr r1, [r1, #0x14]
	str r1, [sp, #0xc]
	movs r0, #0
	strb r0, [r6, #9]
_0809BCBC:
	ldr r7, [r6, #0x18]
	movs r5, #0
	ldr r0, [sp]
	cmp r5, r0
	bhs _0809BD58
	mov sb, r5
_0809BCC8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x18
	adds r4, r6, r0
	str r7, [r4]
	lsls r1, r5, #3
	add r1, sl
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	adds r7, r7, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, _0809BD14 @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r8, r0
	beq _0809BD18
	movs r0, #0x80
	b _0809BD1A
	.align 2, 0
_0809BD0C: .4byte gUnknown_080D9432
_0809BD10: .4byte gUnknown_080D93D4
_0809BD14: .4byte gPlayers
_0809BD18:
	movs r0, #0x40
_0809BD1A:
	strh r0, [r4, #0x14]
	mov r1, sb
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r2, #0
	strb r2, [r4, #0x1f]
	mov r0, sb
	str r0, [r4, #8]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0809BD3C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #8]
	b _0809BD40
_0809BD3C:
	ldr r2, [sp, #8]
	str r2, [r4, #8]
_0809BD40:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	blo _0809BCC8
_0809BD58:
	mov r1, r8
	cmp r1, #1
	beq _0809BD60
	b _0809BE6E
_0809BD60:
	movs r5, #0
	ldr r2, [sp, #4]
	cmp r5, r2
	bhs _0809BE00
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
_0809BD70:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r4, r6, r0
	str r7, [r4]
	lsls r1, r5, #3
	ldr r0, [sp, #0xc]
	adds r1, r1, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	adds r7, r7, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, _0809BDBC @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r8, r0
	beq _0809BDC0
	movs r0, #0x80
	b _0809BDC2
	.align 2, 0
_0809BDBC: .4byte gPlayers
_0809BDC0:
	movs r0, #0x40
_0809BDC2:
	strh r0, [r4, #0x14]
	mov r1, sb
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r2, sl
	strb r2, [r4, #0x1f]
	mov r0, sb
	str r0, [r4, #8]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0809BDE4
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #8]
	b _0809BDE8
_0809BDE4:
	ldr r2, [sp, #8]
	str r2, [r4, #8]
_0809BDE8:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #4]
	cmp r5, r0
	blo _0809BD70
_0809BE00:
	ldr r0, _0809BE44 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bls _0809BE0A
	b _0809BF14
_0809BE0A:
	ldr r1, _0809BE48 @ =gLoadedSaveGame
	ldr r0, _0809BE4C @ =gUnknown_080D946D
	add r0, r8
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809BE6E
	ldr r0, [r6, #4]
	ldrb r0, [r0]
	subs r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0809BE6E
	ldr r3, _0809BE50 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0809BE58
	ldr r0, _0809BE54 @ =gUnknown_080D9448
	movs r1, #0x50
	movs r2, #0x10
	bl CopyPalette
	b _0809BE6E
	.align 2, 0
_0809BE44: .4byte gStageData
_0809BE48: .4byte gLoadedSaveGame
_0809BE4C: .4byte gUnknown_080D946D
_0809BE50: .4byte gFlags
_0809BE54: .4byte gUnknown_080D9448
_0809BE58:
	ldr r1, _0809BEA8 @ =0x040000D4
	ldr r0, _0809BEAC @ =gUnknown_080D9448
	str r0, [r1]
	ldr r0, _0809BEB0 @ =gObjPalette + 0xA0
	str r0, [r1, #4]
	ldr r0, _0809BEB4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_0809BE6E:
	ldr r0, _0809BEB8 @ =gStageData
	ldrb r2, [r0, #3]
	cmp r2, #5
	bhi _0809BF14
	ldr r1, _0809BEBC @ =gLoadedSaveGame
	ldr r0, _0809BEC0 @ =gUnknown_080D946D
	add r0, r8
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809BF14
	ldr r0, [r6, #4]
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0809BF14
	cmp r1, #0x13
	bls _0809BEC4
	cmp r2, #5
	bne _0809BEC4
	bl sub_802613C
	movs r0, #0
	b _0809BF16
	.align 2, 0
_0809BEA8: .4byte 0x040000D4
_0809BEAC: .4byte gUnknown_080D9448
_0809BEB0: .4byte gObjPalette + 0xA0
_0809BEB4: .4byte 0x80000010
_0809BEB8: .4byte gStageData
_0809BEBC: .4byte gLoadedSaveGame
_0809BEC0: .4byte gUnknown_080D946D
_0809BEC4:
	ldr r4, _0809BEE8 @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0809BEF4
	ldr r0, _0809BEEC @ =gUnknown_080D9448
	ldr r1, _0809BEF0 @ =gUnknown_080D9468
	add r1, r8
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	movs r2, #0x10
	bl CopyPalette
	b _0809BF14
	.align 2, 0
_0809BEE8: .4byte gFlags
_0809BEEC: .4byte gUnknown_080D9448
_0809BEF0: .4byte gUnknown_080D9468
_0809BEF4:
	ldr r2, _0809BF28 @ =0x040000D4
	ldr r0, _0809BF2C @ =gUnknown_080D9448
	str r0, [r2]
	ldr r0, _0809BF30 @ =gUnknown_080D9468
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0809BF34 @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0809BF38 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r4]
_0809BF14:
	movs r0, #1
_0809BF16:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809BF28: .4byte 0x040000D4
_0809BF2C: .4byte gUnknown_080D9448
_0809BF30: .4byte gUnknown_080D9468
_0809BF34: .4byte gObjPalette
_0809BF38: .4byte 0x80000010

	thumb_func_start sub_809BF3C
sub_809BF3C: @ 0x0809BF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r0, _0809BF94 @ =sub_809B8C8
	movs r1, #0x9c
	lsls r1, r1, #2
	ldr r2, _0809BF98 @ =sub_809BFE4
	str r2, [sp]
	movs r2, #0xff
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4, #9]
	str r5, [r4, #4]
	str r6, [r4]
	strb r0, [r4, #8]
	mov r0, r8
	str r0, [r4, #0x10]
	mov r0, sb
	str r0, [r4, #0x14]
	str r7, [r4, #0xc]
	adds r0, r4, #0
	bl sub_809B770
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809BF94: .4byte sub_809B8C8
_0809BF98: .4byte sub_809BFE4

	thumb_func_start sub_809BF9C
sub_809BF9C: @ 0x0809BF9C
	push {lr}
	ldr r0, _0809BFBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r2, [r1, #4]
	ldrb r0, [r2]
	cmp r0, #4
	bne _0809BFC0
	movs r0, #0
	strb r0, [r1, #8]
	movs r0, #8
	b _0809BFC6
	.align 2, 0
_0809BFBC: .4byte gCurTask
_0809BFC0:
	movs r0, #1
	strb r0, [r1, #8]
	movs r0, #0xe
_0809BFC6:
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_809BA58
	ldr r0, _0809BFDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809BFE0 @ =sub_809B8C8
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0809BFDC: .4byte gCurTask
_0809BFE0: .4byte sub_809B8C8

	thumb_func_start sub_809BFE4
sub_809BFE4: @ 0x0809BFE4
	bx lr
	.align 2, 0

	thumb_func_start sub_809BFE8
sub_809BFE8: @ 0x0809BFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _0809C0A0 @ =gDispCnt
	ldr r2, _0809C0A4 @ =0x00001141
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809C0A8 @ =sub_809C44C
	movs r1, #0xae
	lsls r1, r1, #3
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0809C0AC @ =sub_809E280
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	str r2, [sp, #4]
	ldr r6, _0809C0B0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r6]
	ldr r0, _0809C0B4 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0809C0B8 @ =0x85000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0809C0BC @ =gBgSprites_Unknown1
	strb r2, [r4, #2]
	ldr r0, _0809C0C0 @ =gBgSprites_Unknown2
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r3, #0x40
	strb r3, [r0, #0xb]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4]
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	strb r5, [r7, #5]
	adds r0, r7, #0
	bl sub_809E078
	adds r0, r7, #0
	bl sub_809C354
	adds r0, r7, #0
	bl sub_809C274
	ldr r3, _0809C0C4 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0809C0D0
	ldr r1, _0809C0C8 @ =gUnknown_08E2EF10
	ldr r0, _0809C0CC @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0x10
	bl sub_80C460C
	b _0809C0F2
	.align 2, 0
_0809C0A0: .4byte gDispCnt
_0809C0A4: .4byte 0x00001141
_0809C0A8: .4byte sub_809C44C
_0809C0AC: .4byte sub_809E280
_0809C0B0: .4byte 0x040000D4
_0809C0B4: .4byte gBgCntRegs
_0809C0B8: .4byte 0x85000010
_0809C0BC: .4byte gBgSprites_Unknown1
_0809C0C0: .4byte gBgSprites_Unknown2
_0809C0C4: .4byte gFlags
_0809C0C8: .4byte gUnknown_08E2EF10
_0809C0CC: .4byte gPlayers
_0809C0D0:
	ldr r1, _0809C120 @ =gUnknown_08E2EF10
	ldr r0, _0809C124 @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r0, _0809C128 @ =gBgPalette
	str r0, [r6, #4]
	ldr r0, _0809C12C @ =0x80000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0809C0F2:
	ldr r4, _0809C130 @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0809C134
	ldr r1, _0809C120 @ =gUnknown_08E2EF10
	ldr r0, _0809C124 @ =gPlayers
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	movs r2, #0x10
	bl sub_80C460C
	b _0809C15C
	.align 2, 0
_0809C120: .4byte gUnknown_08E2EF10
_0809C124: .4byte gPlayers
_0809C128: .4byte gBgPalette
_0809C12C: .4byte 0x80000010
_0809C130: .4byte gFlags
_0809C134:
	ldr r1, _0809C188 @ =0x040000D4
	ldr r2, _0809C18C @ =gUnknown_08E2EF10
	ldr r0, _0809C190 @ =gPlayers
	movs r5, #0xbd
	lsls r5, r5, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0809C194 @ =gBgPalette + 0x20
	str r0, [r1, #4]
	ldr r0, _0809C198 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_0809C15C:
	ldr r4, _0809C19C @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0809C1A4
	ldr r1, _0809C18C @ =gUnknown_08E2EF10
	ldr r0, _0809C190 @ =gPlayers
	ldr r2, _0809C1A0 @ =0x000002CA
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	movs r2, #0x10
	bl sub_80C460C
	b _0809C1CA
	.align 2, 0
_0809C188: .4byte 0x040000D4
_0809C18C: .4byte gUnknown_08E2EF10
_0809C190: .4byte gPlayers
_0809C194: .4byte gBgPalette + 0x20
_0809C198: .4byte 0x80000010
_0809C19C: .4byte gFlags
_0809C1A0: .4byte 0x000002CA
_0809C1A4:
	ldr r1, _0809C1F4 @ =0x040000D4
	ldr r2, _0809C1F8 @ =gUnknown_08E2EF10
	ldr r0, _0809C1FC @ =gPlayers
	ldr r5, _0809C200 @ =0x000002CA
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0809C204 @ =gBgPalette + 0x40
	str r0, [r1, #4]
	ldr r0, _0809C208 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_0809C1CA:
	ldr r4, _0809C20C @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0809C214
	ldr r1, _0809C1F8 @ =gUnknown_08E2EF10
	ldr r0, _0809C1FC @ =gPlayers
	ldr r2, _0809C210 @ =0x0000041A
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x30
	movs r2, #0x10
	bl sub_80C460C
	b _0809C23A
	.align 2, 0
_0809C1F4: .4byte 0x040000D4
_0809C1F8: .4byte gUnknown_08E2EF10
_0809C1FC: .4byte gPlayers
_0809C200: .4byte 0x000002CA
_0809C204: .4byte gBgPalette + 0x40
_0809C208: .4byte 0x80000010
_0809C20C: .4byte gFlags
_0809C210: .4byte 0x0000041A
_0809C214:
	ldr r1, _0809C24C @ =0x040000D4
	ldr r2, _0809C250 @ =gUnknown_08E2EF10
	ldr r0, _0809C254 @ =gPlayers
	ldr r5, _0809C258 @ =0x0000041A
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0809C25C @ =gBgPalette + 0x60
	str r0, [r1, #4]
	ldr r0, _0809C260 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_0809C23A:
	bl m4aMPlayAllStop
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _0809C264
	movs r0, #0x45      @ MUS_VS_MUSIC_2
	bl m4aSongNumStart
	b _0809C26A
	.align 2, 0
_0809C24C: .4byte 0x040000D4
_0809C250: .4byte gUnknown_08E2EF10
_0809C254: .4byte gPlayers
_0809C258: .4byte 0x0000041A
_0809C25C: .4byte gBgPalette + 0x60
_0809C260: .4byte 0x80000010
_0809C264:
	movs r0, #0x46      @ MUS_VS_MUSIC_3
	bl m4aSongNumStart
_0809C26A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809C274
sub_809C274: @ 0x0809C274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r1, r0, #0
	movs r5, #0
	ldr r0, _0809C334 @ =0x00009803
	ldr r2, _0809C338 @ =gBgCntRegs
	strh r0, [r2]
	ldr r6, _0809C33C @ =gBgScrollRegs
	strh r5, [r6]
	strh r5, [r6, #2]
	movs r0, #0xa6
	lsls r0, r0, #3
	adds r4, r1, r0
	movs r7, #0xc0
	lsls r7, r7, #0x13
	str r7, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r2, _0809C340 @ =0x0600C000
	mov sl, r2
	str r2, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r0, _0809C344 @ =0x00000175
	mov sb, r0
	mov r2, sb
	strh r2, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #0x1e
	mov r8, r0
	mov r2, r8
	strh r2, [r4, #0x26]
	movs r0, #0x28
	strh r0, [r4, #0x28]
	ldr r0, _0809C348 @ =0x0000055A
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	strh r5, [r4, #0x2e]
	adds r0, r4, #0
	str r1, [sp, #4]
	bl DrawBackground
	movs r0, #0x98
	lsls r0, r0, #8
	ldr r2, _0809C338 @ =gBgCntRegs
	strh r0, [r2, #2]
	strh r5, [r6, #4]
	movs r0, #0xa0
	strh r0, [r6, #6]
	str r7, [r4, #4]
	strh r5, [r4, #0xa]
	mov r0, sl
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	mov r2, sb
	strh r2, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	mov r0, r8
	strh r0, [r4, #0x26]
	movs r0, #0x50
	strh r0, [r4, #0x28]
	ldr r1, [sp, #4]
	movs r2, #0
	strb r2, [r1]
	movs r0, #1
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl DrawBackground
	mov r1, sp
	movs r0, #0xd
	strh r0, [r1]
	ldr r1, _0809C34C @ =0x0600C7FC
	ldr r2, _0809C350 @ =0x01000002
	mov r0, sp
	bl CpuSet
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C334: .4byte 0x00009803
_0809C338: .4byte gBgCntRegs
_0809C33C: .4byte gBgScrollRegs
_0809C340: .4byte 0x0600C000
_0809C344: .4byte 0x00000175
_0809C348: .4byte 0x0000055A
_0809C34C: .4byte 0x0600C7FC
_0809C350: .4byte 0x01000002

	thumb_func_start sub_809C354
sub_809C354: @ 0x0809C354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0809C440 @ =0x06010000
	mov r8, r0
	movs r5, #0
_0809C368:
	movs r4, #0
	adds r1, r6, r5
	ldrb r0, [r1]
	ldr r2, _0809C444 @ =gUnknown_080D9618
	adds r0, r0, r2
	adds r2, r5, #1
	str r2, [sp]
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0809C422
	adds r3, r1, #0
	mov sl, r4
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	lsls r7, r5, #3
_0809C388:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #6
	adds r1, #0x30
	adds r1, r6, r1
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r1, _0809C448 @ =gUnknown_080D9564
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, r8
	str r1, [r2]
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	add r8, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r0, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	mov r0, sl
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	mov r0, sb
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0809C400
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	orrs r0, r1
	str r0, [r2, #8]
_0809C400:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #4]
	ldrb r0, [r3]
	ldr r2, _0809C444 @ =gUnknown_080D9618
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blo _0809C388
_0809C422:
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0809C368
	mov r2, r8
	str r2, [r6, #0xc]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C440: .4byte 0x06010000
_0809C444: .4byte gUnknown_080D9618
_0809C448: .4byte gUnknown_080D9564

	thumb_func_start sub_809C44C
sub_809C44C: @ 0x0809C44C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809C484 @ =gStageData
	ldrb r4, [r0, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809C4A0
	ldr r1, _0809C488 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809C48C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809C490 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809C494 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809C498 @ =gVramGraphicsCopyCursor
	ldr r0, _0809C49C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809C52E
	.align 2, 0
_0809C484: .4byte gStageData
_0809C488: .4byte 0x0000FFFF
_0809C48C: .4byte gBackgroundsCopyQueueCursor
_0809C490: .4byte gBackgroundsCopyQueueIndex
_0809C494: .4byte gBgSpritesCount
_0809C498: .4byte gVramGraphicsCopyCursor
_0809C49C: .4byte gVramGraphicsCopyQueueIndex
_0809C4A0:
	ldr r5, _0809C4F4 @ =gPlayers
	adds r3, r4, #0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x2b
	ldrb r2, [r0]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	movs r6, #0
	ldr r0, _0809C4F8 @ =gCurTask
	mov ip, r0
	ldr r7, _0809C4FC @ =sub_809C534
_0809C4CA:
	cmp r3, r6
	beq _0809C51E
	ldr r0, _0809C500 @ =gUnknown_03001060
	ldrb r0, [r0, #7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809C504
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r1, r4, #0
	ands r1, r2
	movs r2, #0xc
	b _0809C51A
	.align 2, 0
_0809C4F4: .4byte gPlayers
_0809C4F8: .4byte gCurTask
_0809C4FC: .4byte sub_809C534
_0809C500: .4byte gUnknown_03001060
_0809C504:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r1, r4, #0
	ands r1, r2
	movs r2, #8
_0809C51A:
	orrs r1, r2
	strb r1, [r0]
_0809C51E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0809C4CA
	mov r1, ip
	ldr r0, [r1]
	str r7, [r0, #8]
_0809C52E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_809C534
sub_809C534: @ 0x0809C534
	push {r4, r5, lr}
	ldr r5, _0809C574 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809C590
	ldr r1, _0809C578 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809C57C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809C580 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809C584 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809C588 @ =gVramGraphicsCopyCursor
	ldr r0, _0809C58C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809C616
	.align 2, 0
_0809C574: .4byte gCurTask
_0809C578: .4byte 0x0000FFFF
_0809C57C: .4byte gBackgroundsCopyQueueCursor
_0809C580: .4byte gBackgroundsCopyQueueIndex
_0809C584: .4byte gBgSpritesCount
_0809C588: .4byte gVramGraphicsCopyCursor
_0809C58C: .4byte gVramGraphicsCopyQueueIndex
_0809C590:
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0809C5D2
	ldr r2, _0809C5F8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809C5FC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _0809C600 @ =gBldRegs
	ldr r0, _0809C604 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #6]
_0809C5D2:
	adds r0, r4, #0
	bl sub_809C810
	adds r0, r4, #0
	bl sub_809C8C4
	ldr r1, _0809C600 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0809C60C
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _0809C608 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _0809C616
	.align 2, 0
_0809C5F8: .4byte gDispCnt
_0809C5FC: .4byte gWinRegs
_0809C600: .4byte gBldRegs
_0809C604: .4byte 0x00003FFF
_0809C608: .4byte 0xFFFFFF00
_0809C60C:
	strh r0, [r4, #6]
	strh r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _0809C61C @ =sub_809E0D4
	str r0, [r1, #8]
_0809C616:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809C61C: .4byte sub_809E0D4

	thumb_func_start sub_809C620
sub_809C620: @ 0x0809C620
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809C660 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809C67C
	ldr r1, _0809C664 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809C668 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809C66C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809C670 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809C674 @ =gVramGraphicsCopyCursor
	ldr r0, _0809C678 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809C702
	.align 2, 0
_0809C660: .4byte gCurTask
_0809C664: .4byte 0x0000FFFF
_0809C668: .4byte gBackgroundsCopyQueueCursor
_0809C66C: .4byte gBackgroundsCopyQueueIndex
_0809C670: .4byte gBgSpritesCount
_0809C674: .4byte gVramGraphicsCopyCursor
_0809C678: .4byte gVramGraphicsCopyQueueIndex
_0809C67C:
	adds r0, r4, #0
	bl sub_809C8C4
	ldrb r1, [r4, #4]
	cmp r1, #0xa
	beq _0809C69C
	cmp r1, #9
	bne _0809C692
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0809C69C
_0809C692:
	cmp r1, #0xb
	bne _0809C6B0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0809C6B0
_0809C69C:
	ldr r0, _0809C6A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809C6AC @ =sub_809C71C
	str r0, [r1, #8]
	b _0809C702
	.align 2, 0
_0809C6A8: .4byte gCurTask
_0809C6AC: .4byte sub_809C71C
_0809C6B0:
	ldrb r1, [r4, #4]
	cmp r1, #0
	bne _0809C702
	movs r0, #0
	strh r1, [r4, #0xa]
	strh r1, [r4, #6]
	strh r1, [r4, #8]
	strb r0, [r4, #4]
	movs r2, #0
	ldr r6, _0809C708 @ =gCurTask
	ldr r7, _0809C70C @ =sub_809E0D4
	ldr r5, _0809C710 @ =gUnknown_030010AC
	ldr r3, _0809C714 @ =gUnknown_080D961D
_0809C6CA:
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r4, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0809C6CA
	ldr r0, _0809C718 @ =0xFFFF7E00
	str r0, [r4, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #7
	str r2, [r4, #0x14]
	str r0, [r4, #0x20]
	movs r1, #0xa0
	lsls r1, r1, #8
	str r1, [r4, #0x24]
	movs r0, #0xb9
	lsls r0, r0, #9
	str r0, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r0, [r4, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [r6]
	str r7, [r0, #8]
_0809C702:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C708: .4byte gCurTask
_0809C70C: .4byte sub_809E0D4
_0809C710: .4byte gUnknown_030010AC
_0809C714: .4byte gUnknown_080D961D
_0809C718: .4byte 0xFFFF7E00

	thumb_func_start sub_809C71C
sub_809C71C: @ 0x0809C71C
	push {r4, r5, lr}
	ldr r5, _0809C75C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809C778
	ldr r1, _0809C760 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809C764 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809C768 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809C76C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809C770 @ =gVramGraphicsCopyCursor
	ldr r0, _0809C774 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809C804
	.align 2, 0
_0809C75C: .4byte gCurTask
_0809C760: .4byte 0x0000FFFF
_0809C764: .4byte gBackgroundsCopyQueueCursor
_0809C768: .4byte gBackgroundsCopyQueueIndex
_0809C76C: .4byte gBgSpritesCount
_0809C770: .4byte gVramGraphicsCopyCursor
_0809C774: .4byte gVramGraphicsCopyQueueIndex
_0809C778:
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0809C7B6
	ldr r2, _0809C7D8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809C7DC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _0809C7E0 @ =gBldRegs
	ldr r0, _0809C7E4 @ =0x00003FFF
	strh r0, [r1]
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #6]
_0809C7B6:
	adds r0, r4, #0
	bl sub_809C8C4
	ldr r1, _0809C7E0 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _0809C7F6
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrb r0, [r4, #4]
	cmp r0, #0xb
	bne _0809C7E8
	ldrh r0, [r4, #8]
	adds r0, #0x20
	strh r0, [r4, #8]
	b _0809C804
	.align 2, 0
_0809C7D8: .4byte gDispCnt
_0809C7DC: .4byte gWinRegs
_0809C7E0: .4byte gBldRegs
_0809C7E4: .4byte 0x00003FFF
_0809C7E8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _0809C804
_0809C7F6:
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xa
	strb r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _0809C80C @ =sub_809E164
	str r0, [r1, #8]
_0809C804:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809C80C: .4byte sub_809E164

	thumb_func_start sub_809C810
sub_809C810: @ 0x0809C810
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r1, [r2, #0x10]
	ldr r0, _0809C834 @ =0x000077FF
	cmp r1, r0
	bgt _0809C838
	movs r4, #0xc0
	lsls r4, r4, #4
	adds r0, r1, r4
	str r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _0809C840
	str r1, [r2, #0x10]
	b _0809C83E
	.align 2, 0
_0809C834: .4byte 0x000077FF
_0809C838:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x10]
_0809C83E:
	movs r3, #1
_0809C840:
	ldr r1, [r2, #0x20]
	ldr r0, _0809C85C @ =0x000077FF
	cmp r1, r0
	bgt _0809C860
	movs r4, #0xf0
	lsls r4, r4, #3
	adds r0, r1, r4
	str r0, [r2, #0x20]
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _0809C86C
	str r1, [r2, #0x20]
	b _0809C866
	.align 2, 0
_0809C85C: .4byte 0x000077FF
_0809C860:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x20]
_0809C866:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809C86C:
	ldr r1, [r2, #0x18]
	movs r4, #0xf0
	lsls r4, r4, #7
	cmp r1, r4
	ble _0809C882
	ldr r0, _0809C8B0 @ =0xFFFFF700
	adds r1, r1, r0
	str r1, [r2, #0x18]
	ldr r0, _0809C8B4 @ =0x000077FF
	cmp r1, r0
	bgt _0809C88A
_0809C882:
	str r4, [r2, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809C88A:
	ldr r1, [r2, #0x28]
	movs r4, #0xf0
	lsls r4, r4, #7
	cmp r1, r4
	ble _0809C8A0
	ldr r0, _0809C8B8 @ =0xFFFFF900
	adds r1, r1, r0
	str r1, [r2, #0x28]
	ldr r0, _0809C8B4 @ =0x000077FF
	cmp r1, r0
	bgt _0809C8A8
_0809C8A0:
	str r4, [r2, #0x28]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809C8A8:
	cmp r3, #4
	beq _0809C8BC
	movs r0, #0
	b _0809C8BE
	.align 2, 0
_0809C8B0: .4byte 0xFFFFF700
_0809C8B4: .4byte 0x000077FF
_0809C8B8: .4byte 0xFFFFF900
_0809C8BC:
	movs r0, #1
_0809C8BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809C8C4
sub_809C8C4: @ 0x0809C8C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
_0809C8D4:
	movs r4, #0
	adds r1, r6, r5
	ldrb r0, [r1]
	ldr r2, _0809C928 @ =gUnknown_080D9618
	adds r0, r0, r2
	mov sb, r1
	adds r1, r5, #1
	mov sl, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0809C950
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #6
	adds r0, #0x30
	adds r0, r0, r6
	mov r8, r0
	lsls r7, r5, #3
	adds r0, r6, #0
	adds r0, #0x10
	adds r3, r0, r7
_0809C8FE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	mov r2, r8
	adds r1, r2, r0
	ldr r0, [r3]
	asrs r2, r0, #8
	strh r2, [r1, #0x10]
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r0, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0809C92C
	adds r0, r2, #0
	subs r0, #0x78
	b _0809C930
	.align 2, 0
_0809C928: .4byte gUnknown_080D9618
_0809C92C:
	adds r0, r2, #0
	adds r0, #0x78
_0809C930:
	strh r0, [r1, #0x10]
	adds r0, r1, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sb
	ldrb r0, [r1]
	ldr r2, _0809C96C @ =gUnknown_080D9618
	adds r0, r0, r2
	ldr r3, [sp]
	ldrb r0, [r0]
	cmp r4, r0
	blo _0809C8FE
_0809C950:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0809C8D4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C96C: .4byte gUnknown_080D9618

	thumb_func_start sub_809C970
sub_809C970: @ 0x0809C970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sl, r1
	ldr r0, _0809CA4C @ =sub_809E284
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809CA50 @ =sub_809E3B4
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	movs r6, #0
	strh r6, [r5, #6]
	movs r0, #0
	strb r0, [r5, #4]
	mov r1, sl
	str r1, [r5]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r5, #8]
	ldr r0, _0809CA54 @ =0xFFFFC400
	str r0, [r5, #0xc]
	ldr r1, _0809CA58 @ =0x03000038
	adds r0, r4, r1
	mov r1, r8
	str r1, [r0]
	ldr r2, _0809CA5C @ =gUnknown_080D9624
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	add r8, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r7, #0x10
	strb r7, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r0, #0x20]
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _0809CA60 @ =0x03000010
	adds r4, r4, r0
	mov r1, r8
	str r1, [r4]
	ldr r2, [sp, #4]
	ldrh r0, [r2, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	mov r0, sb
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	strb r7, [r4, #0x1c]
	movs r1, #0
	strb r1, [r4, #0x1f]
	str r6, [r4, #8]
	mov r0, sl
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CA4C: .4byte sub_809E284
_0809CA50: .4byte sub_809E3B4
_0809CA54: .4byte 0xFFFFC400
_0809CA58: .4byte 0x03000038
_0809CA5C: .4byte gUnknown_080D9624
_0809CA60: .4byte 0x03000010

	thumb_func_start sub_809CA64
sub_809CA64: @ 0x0809CA64
	push {r4, r5, lr}
	ldr r0, _0809CA88 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809CA8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809E384
	cmp r5, #0
	bne _0809CA90
	bl sub_8025A90
	b _0809CA94
	.align 2, 0
_0809CA88: .4byte gStageData
_0809CA8C: .4byte gCurTask
_0809CA90:
	bl sub_80253CC
_0809CA94:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809CADC
	ldr r1, _0809CAC4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809CAC8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809CACC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809CAD0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809CAD4 @ =gVramGraphicsCopyCursor
	ldr r0, _0809CAD8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809CB20
	.align 2, 0
_0809CAC4: .4byte 0x0000FFFF
_0809CAC8: .4byte gBackgroundsCopyQueueCursor
_0809CACC: .4byte gBackgroundsCopyQueueIndex
_0809CAD0: .4byte gBgSpritesCount
_0809CAD4: .4byte gVramGraphicsCopyCursor
_0809CAD8: .4byte gVramGraphicsCopyQueueIndex
_0809CADC:
	ldrb r0, [r4, #4]
	cmp r0, #8
	bhi _0809CAE6
	adds r0, #1
	b _0809CAE8
_0809CAE6:
	movs r0, #9
_0809CAE8:
	strb r0, [r4, #4]
	ldr r1, _0809CB0C @ =gUnknown_080D9634
	ldrb r0, [r4, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0xc]
	ldrb r0, [r4, #4]
	cmp r0, #9
	bne _0809CB20
	adds r0, r5, #0
	cmp r0, #0
	bne _0809CB18
	strh r0, [r4, #6]
	ldr r0, _0809CB10 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809CB14 @ =sub_809CB30
	b _0809CB1E
	.align 2, 0
_0809CB0C: .4byte gUnknown_080D9634
_0809CB10: .4byte gCurTask
_0809CB14: .4byte sub_809CB30
_0809CB18:
	ldr r0, _0809CB28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809CB2C @ =sub_809E1E8
_0809CB1E:
	str r0, [r1, #8]
_0809CB20:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CB28: .4byte gCurTask
_0809CB2C: .4byte sub_809E1E8

	thumb_func_start sub_809CB30
sub_809CB30: @ 0x0809CB30
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809CB80 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r7, _0809CB84 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809CB54
	bl sub_8025A90
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0809CB54:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _0809CBA0
	ldr r1, _0809CB88 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809CB8C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809CB90 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809CB94 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809CB98 @ =gVramGraphicsCopyCursor
	ldr r0, _0809CB9C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809CBDA
	.align 2, 0
_0809CB80: .4byte gStageData
_0809CB84: .4byte gCurTask
_0809CB88: .4byte 0x0000FFFF
_0809CB8C: .4byte gBackgroundsCopyQueueCursor
_0809CB90: .4byte gBackgroundsCopyQueueIndex
_0809CB94: .4byte gBgSpritesCount
_0809CB98: .4byte gVramGraphicsCopyCursor
_0809CB9C: .4byte gVramGraphicsCopyQueueIndex
_0809CBA0:
	cmp r4, #0
	bne _0809CBDA
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0809CBCC
	ldr r0, _0809CBC8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809CBCC
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r1, [r7]
	b _0809CBD6
	.align 2, 0
_0809CBC8: .4byte gPressedKeys
_0809CBCC:
	ldrh r0, [r5, #6]
	cmp r0, #0x78
	bls _0809CBDA
	ldr r0, _0809CBE0 @ =gCurTask
	ldr r1, [r0]
_0809CBD6:
	ldr r0, _0809CBE4 @ =sub_809E1E8
	str r0, [r1, #8]
_0809CBDA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CBE0: .4byte gCurTask
_0809CBE4: .4byte sub_809E1E8

	thumb_func_start sub_809CBE8
sub_809CBE8: @ 0x0809CBE8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0809CC58 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	bl sub_80260F0
	ldr r2, _0809CC5C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809CC60 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0809CC64 @ =gBldRegs
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [sp]
	ldr r2, _0809CC68 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0809CC6C @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0809CC70 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0809CC74 @ =gBgSprites_Unknown1
	strb r3, [r0, #2]
	ldr r1, _0809CC78 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	adds r0, #0xec
	strh r0, [r4, #6]
	ldr r1, [r5]
	ldr r0, _0809CC7C @ =sub_809E31C
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CC58: .4byte gCurTask
_0809CC5C: .4byte gDispCnt
_0809CC60: .4byte 0x00009FFF
_0809CC64: .4byte gBldRegs
_0809CC68: .4byte 0x040000D4
_0809CC6C: .4byte gBgCntRegs
_0809CC70: .4byte 0x85000010
_0809CC74: .4byte gBgSprites_Unknown1
_0809CC78: .4byte gBgSprites_Unknown2
_0809CC7C: .4byte sub_809E31C

	thumb_func_start sub_809CC80
sub_809CC80: @ 0x0809CC80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0809CDB4 @ =sub_809E3B8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809CDB8 @ =sub_809E4DC
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r1, #0
	strh r1, [r6, #6]
	str r5, [r6]
	strb r4, [r6, #4]
	ldr r0, _0809CDBC @ =0xFFFFD800
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	str r0, [r6, #0x1c]
	movs r2, #0xa0
	lsls r2, r2, #8
	str r2, [r6, #0x20]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r6, #0x14]
	str r1, [r6, #0x18]
	str r0, [r6, #0x24]
	str r2, [r6, #0x28]
	movs r4, #0
_0809CCD2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r6, r0
	str r7, [r0]
	lsls r3, r4, #3
	ldr r2, _0809CDC0 @ =gUnknown_080D9644
	adds r1, r3, r2
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	ldr r1, _0809CDC4 @ =gUnknown_080D9640
	adds r2, r3, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r2, sp
	strb r1, [r2, #4]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r2, #0x80
	lsls r2, r2, #2
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0x14]
	movs r1, #0
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x1c]
	strb r1, [r0, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #5
	mov r8, r2
	str r2, [r0, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0809CCD2
	adds r0, r6, #0
	adds r0, #0xcc
	str r7, [r0]
	ldr r2, _0809CDC0 @ =gUnknown_080D9644
	subs r2, #4
	ldr r1, [r2, #0x24]
	lsls r1, r1, #5
	adds r7, r7, r1
	ldrh r1, [r2, #0x20]
	movs r3, #0
	mov ip, r3
	movs r2, #0
	strh r1, [r0, #0xc]
	ldr r4, _0809CDC0 @ =gUnknown_080D9644
	ldrb r1, [r4, #0x1e]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r3, sp
	ldrb r3, [r3, #4]
	orrs r1, r3
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r4, sl
	strh r4, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, ip
	strb r2, [r0, #0x1f]
	mov r3, r8
	str r3, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	str r7, [r6, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CDB4: .4byte sub_809E3B8
_0809CDB8: .4byte sub_809E4DC
_0809CDBC: .4byte 0xFFFFD800
_0809CDC0: .4byte gUnknown_080D9644
_0809CDC4: .4byte gUnknown_080D9640

	thumb_func_start sub_809CDC8
sub_809CDC8: @ 0x0809CDC8
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bge _0809CDE2
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0xc]
	cmp r0, #0
	blt _0809CDE4
	str r3, [r2, #0xc]
_0809CDE2:
	movs r3, #1
_0809CDE4:
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bge _0809CDFA
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	cmp r0, #0
	ble _0809CE00
	movs r0, #0
	str r0, [r2, #0x1c]
_0809CDFA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809CE00:
	ldr r1, [r2, #0x14]
	movs r4, #0xf0
	lsls r4, r4, #8
	cmp r1, r4
	ble _0809CE18
	ldr r0, _0809CE48 @ =0xFFFFF800
	adds r1, r1, r0
	str r1, [r2, #0x14]
	ldr r0, _0809CE4C @ =0x0000EFFF
	cmp r1, r0
	bgt _0809CE1E
	str r4, [r2, #0x14]
_0809CE18:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809CE1E:
	ldr r1, [r2, #0x24]
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0809CE38
	ldr r0, _0809CE48 @ =0xFFFFF800
	adds r1, r1, r0
	str r1, [r2, #0x24]
	ldr r0, _0809CE4C @ =0x0000EFFF
	cmp r1, r0
	bgt _0809CE3E
	movs r0, #0
	str r0, [r2, #0x24]
_0809CE38:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809CE3E:
	cmp r3, #4
	beq _0809CE50
	movs r0, #0
	b _0809CE52
	.align 2, 0
_0809CE48: .4byte 0xFFFFF800
_0809CE4C: .4byte 0x0000EFFF
_0809CE50:
	movs r0, #1
_0809CE52:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809CE58
sub_809CE58: @ 0x0809CE58
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r5, #0
	ldr r7, _0809CEA4 @ =gPlayers
_0809CE62:
	lsls r0, r5, #2
	adds r2, r0, r5
	lsls r0, r2, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r0, r7
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1d
	cmp r0, #2
	bne _0809CEC2
	adds r4, r6, #0
	adds r4, #0xcc
	lsls r1, r5, #3
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	cmp r5, #1
	bne _0809CEA8
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r4, #0x10]
	b _0809CEEC
	.align 2, 0
_0809CEA4: .4byte gPlayers
_0809CEA8:
	cmp r5, #2
	bne _0809CEB2
	adds r0, r1, #0
	subs r0, #0x18
	b _0809CEEA
_0809CEB2:
	cmp r5, #3
	bne _0809CEEC
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0x18
	b _0809CEEA
_0809CEC2:
	lsrs r0, r1, #0x1d
	cmp r0, #1
	beq _0809CECC
	cmp r0, #3
	bne _0809CEEC
_0809CECC:
	lsls r0, r2, #3
	adds r0, #0x2c
	adds r4, r6, r0
	lsls r1, r5, #3
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
_0809CEEA:
	strh r0, [r4, #0x12]
_0809CEEC:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0809CE62
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809CF04
sub_809CF04: @ 0x0809CF04
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0809CF94 @ =sub_809E4E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809CF98 @ =sub_809E630
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	movs r1, #0
	mov r8, r1
	movs r3, #0
	strh r3, [r4, #6]
	mov r1, r8
	strb r1, [r4, #4]
	str r6, [r4]
	ldr r1, _0809CF9C @ =0xFFFF8800
	str r1, [r4, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r4, #0x10]
	ldr r1, _0809CFA0 @ =0x03000014
	adds r0, r0, r1
	str r5, [r0]
	ldr r2, _0809CFA4 @ =gUnknown_080D9668
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r5, r5, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	str r5, [r4, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF94: .4byte sub_809E4E0
_0809CF98: .4byte sub_809E630
_0809CF9C: .4byte 0xFFFF8800
_0809CFA0: .4byte 0x03000014
_0809CFA4: .4byte gUnknown_080D9668

	thumb_func_start sub_809CFA8
sub_809CFA8: @ 0x0809CFA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0809D038 @ =sub_809D04C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D03C @ =sub_809E688
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	movs r1, #0
	mov r8, r1
	movs r3, #0
	strh r3, [r4, #6]
	mov r1, r8
	strb r1, [r4, #4]
	str r6, [r4]
	ldr r1, _0809D040 @ =0xFFFF8800
	str r1, [r4, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r4, #0x10]
	ldr r1, _0809D044 @ =0x03000014
	adds r0, r0, r1
	str r5, [r0]
	ldr r2, _0809D048 @ =gUnknown_080D9678
	ldr r1, [r2, #0x1c]
	lsls r1, r1, #5
	adds r5, r5, r1
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xe0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	str r5, [r4, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809D038: .4byte sub_809D04C
_0809D03C: .4byte sub_809E688
_0809D040: .4byte 0xFFFF8800
_0809D044: .4byte 0x03000014
_0809D048: .4byte gUnknown_080D9678

	thumb_func_start sub_809D04C
sub_809D04C: @ 0x0809D04C
	push {r4, r5, r6, r7, lr}
	ldr r6, _0809D090 @ =gMultiSioSend
	ldr r0, _0809D094 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r7, _0809D098 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D0B4
	ldr r1, _0809D09C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D0A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D0A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809D0A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809D0AC @ =gVramGraphicsCopyCursor
	ldr r0, _0809D0B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809D13C
	.align 2, 0
_0809D090: .4byte gMultiSioSend
_0809D094: .4byte gStageData
_0809D098: .4byte gCurTask
_0809D09C: .4byte 0x0000FFFF
_0809D0A0: .4byte gBackgroundsCopyQueueCursor
_0809D0A4: .4byte gBackgroundsCopyQueueIndex
_0809D0A8: .4byte gBgSpritesCount
_0809D0AC: .4byte gVramGraphicsCopyCursor
_0809D0B0: .4byte gVramGraphicsCopyQueueIndex
_0809D0B4:
	adds r0, r4, #0
	bl sub_809E66C
	adds r0, r4, #0
	bl sub_809E634
	adds r1, r0, #0
	cmp r1, #1
	bne _0809D13C
	cmp r5, #0
	bne _0809D0FC
	ldr r0, _0809D0D8 @ =gPressedKeys
	ldrh r2, [r0]
	ands r1, r2
	cmp r1, #0
	beq _0809D0E0
	ldr r0, _0809D0DC @ =0x00006613
	b _0809D0EA
	.align 2, 0
_0809D0D8: .4byte gPressedKeys
_0809D0DC: .4byte 0x00006613
_0809D0E0:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809D13C
	ldr r0, _0809D0F4 @ =0x00006614
_0809D0EA:
	strh r0, [r6]
	ldr r1, [r7]
	ldr r0, _0809D0F8 @ =sub_809D148
	str r0, [r1, #8]
	b _0809D13C
	.align 2, 0
_0809D0F4: .4byte 0x00006614
_0809D0F8: .4byte sub_809D148
_0809D0FC:
	ldr r0, _0809D11C @ =gMultiSioRecv
	movs r2, #0
	ldr r1, _0809D120 @ =0x00006615
	strh r1, [r6]
	ldrh r1, [r0]
	ldr r0, _0809D124 @ =0x00006613
	cmp r1, r0
	bne _0809D128
	strh r1, [r6]
	ldr r0, [r4]
	movs r1, #0xa
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
	b _0809D13C
	.align 2, 0
_0809D11C: .4byte gMultiSioRecv
_0809D120: .4byte 0x00006615
_0809D124: .4byte 0x00006613
_0809D128:
	ldr r0, _0809D144 @ =0x00006614
	cmp r1, r0
	bne _0809D13C
	strh r1, [r6]
	ldr r0, [r4]
	strb r2, [r0]
	strb r2, [r4, #4]
	ldr r0, [r7]
	bl TaskDestroy
_0809D13C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D144: .4byte 0x00006614

	thumb_func_start sub_809D148
sub_809D148: @ 0x0809D148
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r0, sp
	movs r1, #0
	movs r2, #3
	bl memset
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl memset
	movs r6, #0
	movs r7, #0
	ldr r0, _0809D1A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	mov sb, r4
	cmp r0, #0
	bge _0809D1C4
	ldr r1, _0809D1AC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D1B0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D1B4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809D1B8 @ =gBgSpritesCount
	strb r6, [r0]
	ldr r1, _0809D1BC @ =gVramGraphicsCopyCursor
	ldr r0, _0809D1C0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809D26A
	.align 2, 0
_0809D1A8: .4byte gCurTask
_0809D1AC: .4byte 0x0000FFFF
_0809D1B0: .4byte gBackgroundsCopyQueueCursor
_0809D1B4: .4byte gBackgroundsCopyQueueIndex
_0809D1B8: .4byte gBgSpritesCount
_0809D1BC: .4byte gVramGraphicsCopyCursor
_0809D1C0: .4byte gVramGraphicsCopyQueueIndex
_0809D1C4:
	adds r0, r5, #0
	bl sub_809E66C
	movs r3, #0
	ldr r0, _0809D21C @ =gPlayers
	mov r8, r0
	ldr r1, _0809D220 @ =0x00006613
	mov ip, r1
	ldr r4, _0809D224 @ =0x00006614
_0809D1D6:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	add r0, r8
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r1, sp
	adds r2, r1, r3
	cmp r0, #3
	bne _0809D1FC
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809D1FC:
	ldrb r0, [r2]
	cmp r0, #1
	bne _0809D23A
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _0809D228 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, ip
	bne _0809D22C
	ldr r1, [r5]
	movs r0, #0xa
	strb r0, [r1]
	b _0809D23A
	.align 2, 0
_0809D21C: .4byte gPlayers
_0809D220: .4byte 0x00006613
_0809D224: .4byte 0x00006614
_0809D228: .4byte gMultiSioRecv
_0809D22C:
	cmp r0, r4
	bne _0809D23A
	ldr r0, [r5]
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	strb r0, [r5, #4]
_0809D23A:
	ldrb r1, [r2]
	cmp r1, #0
	beq _0809D254
	mov r2, sb
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809D254
	cmp r1, r0
	bne _0809D254
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809D254:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0809D1D6
	cmp r6, r7
	bne _0809D26A
	ldr r0, _0809D278 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809D26A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D278: .4byte gCurTask

	thumb_func_start sub_809D27C
sub_809D27C: @ 0x0809D27C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0809D2E0 @ =sub_809D3C4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D2E4 @ =sub_809E774
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0809D2E8 @ =gLoadedSaveGame
	ldr r1, _0809D2EC @ =0x00000366
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r7, #6]
	strb r0, [r7, #4]
	str r4, [r7]
	ldr r0, _0809D2F0 @ =0xFFFF8800
	str r0, [r7, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x10]
	ldr r0, _0809D2F4 @ =gStageData
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809D2F8
	cmp r0, #1
	beq _0809D300
	movs r2, #2
	movs r3, #2
	str r3, [sp, #4]
	b _0809D302
	.align 2, 0
_0809D2E0: .4byte sub_809D3C4
_0809D2E4: .4byte sub_809E774
_0809D2E8: .4byte gLoadedSaveGame
_0809D2EC: .4byte 0x00000366
_0809D2F0: .4byte 0xFFFF8800
_0809D2F4: .4byte gStageData
_0809D2F8:
	movs r2, #0
	movs r0, #1
	str r0, [sp, #4]
	b _0809D302
_0809D300:
	movs r2, #1
_0809D302:
	adds r0, r7, #0
	adds r0, #0x14
	str r6, [r7, #0x14]
	lsls r4, r1, #2
	adds r2, r2, r4
	lsls r2, r2, #3
	ldr r5, _0809D3C0 @ =gUnknown_080D9678
	adds r5, #4
	adds r1, r2, r5
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldr r1, _0809D3C0 @ =gUnknown_080D9678
	adds r2, r2, r1
	ldrh r1, [r2]
	movs r3, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sb, r1
	str r1, [r0, #8]
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x3c
	str r6, [r7, #0x3c]
	ldr r2, [sp, #4]
	adds r4, r2, r4
	lsls r4, r4, #3
	adds r5, r4, r5
	ldr r1, [r5]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldr r1, _0809D3C0 @ =gUnknown_080D9678
	adds r4, r4, r1
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, [sp, #8]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	mov r3, sl
	strb r3, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	mov r2, sb
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	str r6, [r7, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D3C0: .4byte gUnknown_080D9678

	thumb_func_start sub_809D3C4
sub_809D3C4: @ 0x0809D3C4
	push {r4, r5, r6, r7, lr}
	ldr r6, _0809D408 @ =gMultiSioSend
	ldr r0, _0809D40C @ =gStageData
	ldrb r5, [r0, #6]
	ldr r7, _0809D410 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D42C
	ldr r1, _0809D414 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D418 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D41C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809D420 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809D424 @ =gVramGraphicsCopyCursor
	ldr r0, _0809D428 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809D482
	.align 2, 0
_0809D408: .4byte gMultiSioSend
_0809D40C: .4byte gStageData
_0809D410: .4byte gCurTask
_0809D414: .4byte 0x0000FFFF
_0809D418: .4byte gBackgroundsCopyQueueCursor
_0809D41C: .4byte gBackgroundsCopyQueueIndex
_0809D420: .4byte gBgSpritesCount
_0809D424: .4byte gVramGraphicsCopyCursor
_0809D428: .4byte gVramGraphicsCopyQueueIndex
_0809D42C:
	adds r0, r4, #0
	bl sub_809E740
	adds r0, r4, #0
	bl sub_809E708
	cmp r0, #1
	bne _0809D482
	adds r1, r5, #0
	cmp r1, #0
	bne _0809D464
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _0809D482
	strh r1, [r4, #6]
	ldr r0, _0809D45C @ =0x00006611
	strh r0, [r6]
	ldr r1, [r7]
	ldr r0, _0809D460 @ =sub_809D498
	b _0809D480
	.align 2, 0
_0809D45C: .4byte 0x00006611
_0809D460: .4byte sub_809D498
_0809D464:
	ldr r0, _0809D488 @ =gMultiSioRecv
	ldr r1, _0809D48C @ =0x00006610
	strh r1, [r6]
	ldrh r1, [r0]
	ldr r0, _0809D490 @ =0x00006611
	cmp r1, r0
	bne _0809D482
	strh r1, [r6]
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl sub_809D5B8
	ldr r1, [r7]
	ldr r0, _0809D494 @ =sub_809E68C
_0809D480:
	str r0, [r1, #8]
_0809D482:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D488: .4byte gMultiSioRecv
_0809D48C: .4byte 0x00006610
_0809D490: .4byte 0x00006611
_0809D494: .4byte sub_809E68C

	thumb_func_start sub_809D498
sub_809D498: @ 0x0809D498
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r0, sp
	movs r1, #0
	movs r2, #3
	bl memset
	add r5, sp, #4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #3
	bl memset
	movs r6, #0
	movs r7, #0
	ldr r0, _0809D4F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D514
	ldr r1, _0809D4FC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D500 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D504 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809D508 @ =gBgSpritesCount
	strb r6, [r0]
	ldr r1, _0809D50C @ =gVramGraphicsCopyCursor
	ldr r0, _0809D510 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809D596
	.align 2, 0
_0809D4F8: .4byte gCurTask
_0809D4FC: .4byte 0x0000FFFF
_0809D500: .4byte gBackgroundsCopyQueueCursor
_0809D504: .4byte gBackgroundsCopyQueueIndex
_0809D508: .4byte gBgSpritesCount
_0809D50C: .4byte gVramGraphicsCopyCursor
_0809D510: .4byte gVramGraphicsCopyQueueIndex
_0809D514:
	movs r4, #0
	ldr r0, _0809D5A4 @ =gPlayers
	mov sb, r0
	ldr r1, _0809D5A8 @ =0x00006611
	mov ip, r1
_0809D51E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	add r0, sb
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r1, sp
	adds r2, r1, r4
	cmp r0, #3
	bne _0809D544
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809D544:
	ldrb r3, [r2]
	cmp r3, #1
	bne _0809D55E
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0809D5AC @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, ip
	bne _0809D55E
	adds r0, r5, r4
	strb r3, [r0]
_0809D55E:
	ldrb r1, [r2]
	cmp r1, #0
	beq _0809D576
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809D576
	cmp r1, r0
	bne _0809D576
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809D576:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0809D51E
	cmp r6, r7
	bne _0809D596
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r2, #8]
	bl sub_809D5B8
	ldr r0, _0809D5B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809D5B4 @ =sub_809E68C
	str r0, [r1, #8]
_0809D596:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D5A4: .4byte gPlayers
_0809D5A8: .4byte 0x00006611
_0809D5AC: .4byte gMultiSioRecv
_0809D5B0: .4byte gCurTask
_0809D5B4: .4byte sub_809E68C

	thumb_func_start sub_809D5B8
sub_809D5B8: @ 0x0809D5B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0809D670 @ =sub_809D810
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D674 @ =sub_809E858
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [r4, #0xc]
	str r6, [r4]
	movs r5, #0
	strb r5, [r4, #5]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	str r5, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x1c]
	ldr r1, _0809D678 @ =0xFFFFCE00
	str r1, [r4, #0x20]
	ldr r0, _0809D67C @ =0xFFFF8800
	str r0, [r4, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x30]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_809D6A0
	ldr r2, _0809D680 @ =gWinRegs
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r2, _0809D684 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0809D688 @ =gBgPalette
	strh r5, [r0]
	ldr r5, _0809D68C @ =gFlags
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	ldr r6, _0809D690 @ =gUnknown_080D97F8
	ldr r1, _0809D694 @ =0x05000200
	adds r0, r6, #0
	movs r2, #0x28
	bl CpuFastSet
	ldr r0, _0809D698 @ =gUnknown_080D9898
	ldr r4, _0809D69C @ =gObjPalette + 0xE0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	subs r4, #0xe0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x28
	bl CpuFastSet
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809D670: .4byte sub_809D810
_0809D674: .4byte sub_809E858
_0809D678: .4byte 0xFFFFCE00
_0809D67C: .4byte 0xFFFF8800
_0809D680: .4byte gWinRegs
_0809D684: .4byte gDispCnt
_0809D688: .4byte gBgPalette
_0809D68C: .4byte gFlags
_0809D690: .4byte gUnknown_080D97F8
_0809D694: .4byte 0x05000200
_0809D698: .4byte gUnknown_080D9898
_0809D69C: .4byte gObjPalette + 0xE0

	thumb_func_start sub_809D6A0
sub_809D6A0: @ 0x0809D6A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0809D804 @ =gLoadedSaveGame
	ldr r1, _0809D808 @ =0x00000366
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r0, #0x34
	ldr r3, [r7, #0xc]
	str r3, [r7, #0x34]
	ldr r6, _0809D80C @ =gUnknown_080D9738
	lsls r4, r2, #2
	str r4, [sp]
	lsls r2, r2, #5
	adds r1, r6, #4
	mov r8, r1
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r3, r3, r1
	str r3, [r7, #0xc]
	adds r2, r2, r6
	ldrh r1, [r2]
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r4, #0xc0
	lsls r4, r4, #1
	mov sl, r4
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r4, #0x10
	mov sb, r4
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r4, #0
	strb r4, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x5c
	ldr r3, [r7, #0xc]
	str r3, [r7, #0x5c]
	ldr r2, [sp]
	adds r2, #1
	lsls r2, r2, #3
	adds r1, r2, #0
	add r1, r8
	ldr r4, [r1]
	mov ip, r4
	mov r1, ip
	lsls r1, r1, #5
	mov ip, r1
	add r3, ip
	str r3, [r7, #0xc]
	adds r2, r2, r6
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r4, sl
	strh r4, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r4, #0
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r4, [sp]
	adds r4, #2
	lsls r4, r4, #3
	add r8, r4
	mov r1, r8
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0xc]
	adds r1, r1, r2
	str r1, [r7, #0xc]
	adds r4, r4, r6
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r4, sl
	strh r4, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r4, #0
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xac
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r2, [r6, #0x1c]
	lsls r2, r2, #5
	ldr r1, [r7, #0xc]
	adds r1, r1, r2
	str r1, [r7, #0xc]
	ldrh r1, [r6, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r4, sb
	strb r4, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
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
_0809D804: .4byte gLoadedSaveGame
_0809D808: .4byte 0x00000366
_0809D80C: .4byte gUnknown_080D9738

	thumb_func_start sub_809D810
sub_809D810: @ 0x0809D810
	push {r4, r5, r6, r7, lr}
	ldr r7, _0809D848 @ =gMultiSioSend
	ldr r0, _0809D84C @ =gStageData
	ldrb r5, [r0, #6]
	movs r6, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D868
	ldr r1, _0809D850 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D854 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D858 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809D85C @ =gBgSpritesCount
	strb r6, [r0]
	ldr r1, _0809D860 @ =gVramGraphicsCopyCursor
	ldr r0, _0809D864 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809D92C
	.align 2, 0
_0809D848: .4byte gMultiSioSend
_0809D84C: .4byte gStageData
_0809D850: .4byte 0x0000FFFF
_0809D854: .4byte gBackgroundsCopyQueueCursor
_0809D858: .4byte gBackgroundsCopyQueueIndex
_0809D85C: .4byte gBgSpritesCount
_0809D860: .4byte gVramGraphicsCopyCursor
_0809D864: .4byte gVramGraphicsCopyQueueIndex
_0809D868:
	ldr r0, _0809D934 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r5, #0
	beq _0809D87C
	ldr r0, _0809D938 @ =0x00006611
	strh r0, [r7]
_0809D87C:
	adds r0, r4, #0
	bl sub_809E7DC
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0809D8BE
	ldr r3, _0809D93C @ =gBldRegs
	ldr r0, _0809D940 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _0809D944 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809D948 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _0809D94C @ =0x00003112
	strh r0, [r1, #8]
	strh r6, [r1, #0xa]
	movs r0, #0x1f
	strh r0, [r3, #2]
	movs r0, #6
	strh r0, [r3, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xa]
_0809D8BE:
	ldr r1, [r4, #0x18]
	movs r2, #0x88
	lsls r2, r2, #7
	cmp r1, r2
	bgt _0809D8DA
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, _0809D950 @ =0x000043FF
	cmp r1, r0
	ble _0809D8DA
	str r2, [r4, #0x18]
	movs r6, #1
_0809D8DA:
	ldr r1, [r4, #0x10]
	ldr r0, _0809D954 @ =0x000017FF
	cmp r1, r0
	ble _0809D8F8
	ldr r2, _0809D958 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r0, r1
	bgt _0809D8F8
	str r1, [r4, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809D8F8:
	ldr r2, _0809D948 @ =gWinRegs
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r6, #2
	bne _0809D92C
	ldr r1, _0809D93C @ =gBldRegs
	ldr r0, _0809D940 @ =0x00003FFF
	strh r0, [r1]
	ldr r0, _0809D94C @ =0x00003112
	strh r0, [r2, #8]
	movs r0, #0x1f
	strh r0, [r1, #2]
	movs r0, #6
	strh r0, [r1, #4]
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _0809D934 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809D95C @ =sub_809D960
	str r0, [r1, #8]
_0809D92C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D934: .4byte gCurTask
_0809D938: .4byte 0x00006611
_0809D93C: .4byte gBldRegs
_0809D940: .4byte 0x00003FFF
_0809D944: .4byte gDispCnt
_0809D948: .4byte gWinRegs
_0809D94C: .4byte 0x00003112
_0809D950: .4byte 0x000043FF
_0809D954: .4byte 0x000017FF
_0809D958: .4byte 0xFFFFF800
_0809D95C: .4byte sub_809D960

	thumb_func_start sub_809D960
sub_809D960: @ 0x0809D960
	push {r4, r5, r6, lr}
	ldr r6, _0809D998 @ =gMultiSioSend
	ldr r0, _0809D99C @ =gStageData
	ldrb r4, [r0, #6]
	movs r5, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D9B8
	ldr r1, _0809D9A0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D9A4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D9A8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809D9AC @ =gBgSpritesCount
	strb r5, [r0]
	ldr r1, _0809D9B0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809D9B4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DA04
	.align 2, 0
_0809D998: .4byte gMultiSioSend
_0809D99C: .4byte gStageData
_0809D9A0: .4byte 0x0000FFFF
_0809D9A4: .4byte gBackgroundsCopyQueueCursor
_0809D9A8: .4byte gBackgroundsCopyQueueIndex
_0809D9AC: .4byte gBgSpritesCount
_0809D9B0: .4byte gVramGraphicsCopyCursor
_0809D9B4: .4byte gVramGraphicsCopyQueueIndex
_0809D9B8:
	cmp r4, #0
	beq _0809D9C0
	ldr r0, _0809DA0C @ =0x00006611
	strh r0, [r6]
_0809D9C0:
	ldr r6, _0809DA10 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809E7DC
	adds r0, r4, #0
	bl sub_809DFAC
	adds r0, r4, #0
	bl sub_809E018
	adds r0, r4, #0
	bl sub_809E7F8
	cmp r0, #1
	bne _0809D9EA
	movs r5, #1
_0809D9EA:
	adds r0, r4, #0
	bl sub_809E828
	cmp r0, #1
	bne _0809D9FA
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809D9FA:
	cmp r5, #2
	bne _0809DA04
	ldr r1, [r6]
	ldr r0, _0809DA14 @ =sub_809DA18
	str r0, [r1, #8]
_0809DA04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809DA0C: .4byte 0x00006611
_0809DA10: .4byte gCurTask
_0809DA14: .4byte sub_809DA18

	thumb_func_start sub_809DA18
sub_809DA18: @ 0x0809DA18
	push {r4, r5, r6, r7, lr}
	ldr r7, _0809DA50 @ =gMultiSioSend
	ldr r0, _0809DA54 @ =gStageData
	ldrb r5, [r0, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809DA70
	ldr r1, _0809DA58 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809DA5C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809DA60 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809DA64 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809DA68 @ =gVramGraphicsCopyCursor
	ldr r0, _0809DA6C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DB64
	.align 2, 0
_0809DA50: .4byte gMultiSioSend
_0809DA54: .4byte gStageData
_0809DA58: .4byte 0x0000FFFF
_0809DA5C: .4byte gBackgroundsCopyQueueCursor
_0809DA60: .4byte gBackgroundsCopyQueueIndex
_0809DA64: .4byte gBgSpritesCount
_0809DA68: .4byte gVramGraphicsCopyCursor
_0809DA6C: .4byte gVramGraphicsCopyQueueIndex
_0809DA70:
	ldr r6, _0809DAB4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809E7DC
	adds r0, r4, #0
	bl sub_809DFAC
	adds r0, r4, #0
	bl sub_809E018
	cmp r5, #0
	beq _0809DAF4
	ldr r3, _0809DAB8 @ =gMultiSioRecv
	ldrh r2, [r3]
	adds r1, r2, #0
	ldr r0, _0809DABC @ =0x00006612
	cmp r1, r0
	bne _0809DAC4
	ldrb r0, [r4, #5]
	cmp r0, #1
	bne _0809DAAE
	bl m4aMPlayAllStop
	movs r0, #0x62      @ MUS_VS_BGM_5
	bl m4aSongNumStart
_0809DAAE:
	ldr r1, [r6]
	ldr r0, _0809DAC0 @ =sub_809DCA4
	b _0809DB62
	.align 2, 0
_0809DAB4: .4byte gCurTask
_0809DAB8: .4byte gMultiSioRecv
_0809DABC: .4byte 0x00006612
_0809DAC0: .4byte sub_809DCA4
_0809DAC4:
	ldr r0, _0809DAEC @ =0x00006611
	cmp r1, r0
	beq _0809DAF0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809DAD6
	movs r0, #0
	strb r0, [r4, #5]
_0809DAD6:
	ldrh r0, [r3]
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809DAE6
	movs r0, #0
	strb r0, [r4, #5]
_0809DAE6:
	ldrb r0, [r4, #5]
	strh r0, [r7]
	b _0809DB64
	.align 2, 0
_0809DAEC: .4byte 0x00006611
_0809DAF0:
	strh r1, [r7]
	b _0809DB64
_0809DAF4:
	ldr r6, _0809DB38 @ =gRepeatedKeys
	ldrh r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809DB08
	movs r0, #0x6c
	bl m4aSongNumStart
	strb r5, [r4, #5]
_0809DB08:
	ldrh r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809DB1C
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #5]
_0809DB1C:
	ldrb r0, [r4, #5]
	strh r0, [r7]
	ldr r0, _0809DB3C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0809DB40
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809DB64
	b _0809DB44
	.align 2, 0
_0809DB38: .4byte gRepeatedKeys
_0809DB3C: .4byte gPressedKeys
_0809DB40:
	movs r0, #1
	strb r0, [r4, #5]
_0809DB44:
	ldrb r0, [r4, #5]
	cmp r0, #1
	bne _0809DB56
	bl m4aMPlayAllStop
	movs r0, #0x62      @ MUS_VS_BGM_5
	bl m4aSongNumStart
	b _0809DB5C
_0809DB56:
	movs r0, #0x6a
	bl m4aSongNumStart
_0809DB5C:
	ldr r0, _0809DB6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809DB70 @ =sub_809DB74
_0809DB62:
	str r0, [r1, #8]
_0809DB64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DB6C: .4byte gCurTask
_0809DB70: .4byte sub_809DB74

	thumb_func_start sub_809DB74
sub_809DB74: @ 0x0809DB74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0809DBD8 @ =gMultiSioSend
	mov sb, r0
	mov r0, sp
	movs r1, #0
	movs r2, #3
	bl memset
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl memset
	movs r7, #0
	movs r1, #0
	mov r8, r1
	ldr r0, _0809DBDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809DBF8
	ldr r1, _0809DBE0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809DBE4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809DBE8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809DBEC @ =gBgSpritesCount
	strb r7, [r0]
	ldr r1, _0809DBF0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809DBF4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DC80
	.align 2, 0
_0809DBD8: .4byte gMultiSioSend
_0809DBDC: .4byte gCurTask
_0809DBE0: .4byte 0x0000FFFF
_0809DBE4: .4byte gBackgroundsCopyQueueCursor
_0809DBE8: .4byte gBackgroundsCopyQueueIndex
_0809DBEC: .4byte gBgSpritesCount
_0809DBF0: .4byte gVramGraphicsCopyCursor
_0809DBF4: .4byte gVramGraphicsCopyQueueIndex
_0809DBF8:
	ldrb r0, [r5, #5]
	mov r1, sb
	strh r0, [r1]
	movs r3, #0
	ldr r0, _0809DC90 @ =gPlayers
	mov ip, r0
	adds r6, r4, #0
_0809DC06:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	add r0, ip
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r1, sp
	adds r2, r1, r3
	cmp r0, #3
	bne _0809DC30
	movs r0, #1
	strb r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0809DC30:
	ldrb r4, [r2]
	cmp r4, #1
	bne _0809DC4C
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _0809DC94 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r5, #5]
	cmp r0, r1
	bne _0809DC4C
	adds r0, r6, r3
	strb r4, [r0]
_0809DC4C:
	ldrb r1, [r2]
	cmp r1, #0
	beq _0809DC64
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809DC64
	cmp r1, r0
	bne _0809DC64
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809DC64:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0809DC06
	cmp r7, r8
	bne _0809DC80
	ldr r0, _0809DC98 @ =0x00006612
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0809DC9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809DCA0 @ =sub_809DCA4
	str r0, [r1, #8]
_0809DC80:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DC90: .4byte gPlayers
_0809DC94: .4byte gMultiSioRecv
_0809DC98: .4byte 0x00006612
_0809DC9C: .4byte gCurTask
_0809DCA0: .4byte sub_809DCA4

	thumb_func_start sub_809DCA4
sub_809DCA4: @ 0x0809DCA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0809DD10 @ =gMultiSioSend
	mov sl, r0
	ldr r0, _0809DD14 @ =gStageData
	ldrb r4, [r0, #6]
	movs r7, #0
	mov r0, sp
	movs r1, #0
	movs r2, #3
	bl memset
	add r6, sp, #4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	bl memset
	movs r1, #0
	mov sb, r1
	mov r8, r1
	ldr r0, _0809DD18 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809DD34
	ldr r1, _0809DD1C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809DD20 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809DD24 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809DD28 @ =gBgSpritesCount
	strb r7, [r0]
	ldr r1, _0809DD2C @ =gVramGraphicsCopyCursor
	ldr r0, _0809DD30 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DE7C
	.align 2, 0
_0809DD10: .4byte gMultiSioSend
_0809DD14: .4byte gStageData
_0809DD18: .4byte gCurTask
_0809DD1C: .4byte 0x0000FFFF
_0809DD20: .4byte gBackgroundsCopyQueueCursor
_0809DD24: .4byte gBackgroundsCopyQueueIndex
_0809DD28: .4byte gBgSpritesCount
_0809DD2C: .4byte gVramGraphicsCopyCursor
_0809DD30: .4byte gVramGraphicsCopyQueueIndex
_0809DD34:
	cmp r4, #0
	bne _0809DDC0
	movs r4, #0
	ldr r2, _0809DDB4 @ =gPlayers
	mov ip, r2
	ldr r0, _0809DDB8 @ =0x00006612
	mov sl, r0
_0809DD42:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	add r0, ip
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r1, sp
	adds r2, r1, r4
	cmp r0, #3
	bne _0809DD6C
	movs r0, #1
	strb r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0809DD6C:
	ldrb r3, [r2]
	cmp r3, #1
	bne _0809DD86
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0809DDBC @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, sl
	bne _0809DD86
	adds r0, r6, r4
	strb r3, [r0]
_0809DD86:
	ldrb r1, [r2]
	cmp r1, #0
	beq _0809DDA2
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809DDA2
	cmp r1, r0
	bne _0809DDA2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0809DDA2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0809DD42
	cmp sb, r8
	bne _0809DDD0
	movs r7, #1
	b _0809DDD4
	.align 2, 0
_0809DDB4: .4byte gPlayers
_0809DDB8: .4byte 0x00006612
_0809DDBC: .4byte gMultiSioRecv
_0809DDC0:
	ldr r1, _0809DDEC @ =0x00006612
	mov r2, sl
	strh r1, [r2]
	ldr r0, _0809DDF0 @ =gMultiSioRecv
	ldrh r0, [r0]
	cmp r0, r1
	bne _0809DDD0
	movs r7, #1
_0809DDD0:
	cmp r7, #0
	beq _0809DE7C
_0809DDD4:
	ldr r1, [r5, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _0809DE0E
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0809DDF4
	adds r0, r1, #0
	adds r0, #0x40
	b _0809DDFA
	.align 2, 0
_0809DDEC: .4byte 0x00006612
_0809DDF0: .4byte gMultiSioRecv
_0809DDF4:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
_0809DDFA:
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x18]
	ldr r0, _0809DE20 @ =0x00004FFF
	cmp r1, r0
	ble _0809DE0E
	adds r0, #1
	str r0, [r5, #0x18]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809DE0E:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	blt _0809DE3A
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0809DE24
	adds r0, r1, #0
	subs r0, #0x80
	b _0809DE28
	.align 2, 0
_0809DE20: .4byte 0x00004FFF
_0809DE24:
	ldr r2, _0809DE5C @ =0xFFFFFE00
	adds r0, r1, r2
_0809DE28:
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bgt _0809DE3A
	movs r0, #0
	str r0, [r5, #0x10]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809DE3A:
	ldr r2, _0809DE60 @ =gWinRegs
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r7, #3
	bne _0809DE7C
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0809DE64
	ldr r1, [r5]
	movs r0, #0xb
	b _0809DE68
	.align 2, 0
_0809DE5C: .4byte 0xFFFFFE00
_0809DE60: .4byte gWinRegs
_0809DE64:
	ldr r1, [r5]
	movs r0, #9
_0809DE68:
	strb r0, [r1]
	ldr r2, _0809DE8C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809DE90 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0809DE94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809DE98 @ =sub_809E778
	str r0, [r1, #8]
_0809DE7C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DE8C: .4byte gDispCnt
_0809DE90: .4byte 0x0000FDFF
_0809DE94: .4byte gCurTask
_0809DE98: .4byte sub_809E778

	thumb_func_start sub_809DE9C
sub_809DE9C: @ 0x0809DE9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0809DEBC @ =gStageData
	ldrb r3, [r0, #6]
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809DECC
	cmp r0, #1
	bgt _0809DEC0
	cmp r0, #0
	beq _0809DEC6
	b _0809DFA0
	.align 2, 0
_0809DEBC: .4byte gStageData
_0809DEC0:
	cmp r0, #2
	beq _0809DED2
	b _0809DFA0
_0809DEC6:
	movs r4, #1
	ands r4, r3
	b _0809DED4
_0809DECC:
	adds r4, r0, #0
	bics r4, r3
	b _0809DED4
_0809DED2:
	movs r4, #2
_0809DED4:
	cmp r4, #1
	beq _0809DEF4
	cmp r4, #1
	bgt _0809DEE2
	cmp r4, #0
	beq _0809DEE8
	b _0809DFA0
_0809DEE2:
	cmp r4, #2
	beq _0809DF00
	b _0809DFA0
_0809DEE8:
	ldr r0, _0809DEF0 @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x60
	b _0809DF06
	.align 2, 0
_0809DEF0: .4byte gLoadedSaveGame
_0809DEF4:
	ldr r0, _0809DEFC @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x61
	b _0809DF06
	.align 2, 0
_0809DEFC: .4byte gLoadedSaveGame
_0809DF00:
	ldr r0, _0809DF64 @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x62
_0809DF06:
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0809DF10
	adds r0, #1
	strb r0, [r1]
_0809DF10:
	movs r1, #3
	ldr r5, _0809DF68 @ =gUnknown_03001060
	movs r7, #1
	movs r0, #0x1c
	adds r0, r0, r5
	mov r8, r0
_0809DF1C:
	ldrb r0, [r5, #7]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r7
	adds r6, r1, #0
	cmp r0, #0
	beq _0809DF94
	adds r1, r3, #0
	ands r1, r7
	adds r0, r2, #0
	ands r0, r7
	cmp r1, r0
	beq _0809DF94
	lsls r0, r2, #2
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	str r3, [sp]
	bl sub_8001C30
	adds r1, r0, #0
	ldr r3, [sp]
	cmp r4, #1
	beq _0809DF7E
	cmp r4, #1
	bgt _0809DF6C
	cmp r4, #0
	beq _0809DF72
	b _0809DF94
	.align 2, 0
_0809DF64: .4byte gLoadedSaveGame
_0809DF68: .4byte gUnknown_03001060
_0809DF6C:
	cmp r4, #2
	beq _0809DF8A
	b _0809DF94
_0809DF72:
	ldrb r0, [r1, #0x12]
	cmp r0, #0x62
	bhi _0809DF94
	adds r0, #1
	strb r0, [r1, #0x12]
	b _0809DF94
_0809DF7E:
	ldrb r0, [r1, #0x11]
	cmp r0, #0x62
	bhi _0809DF94
	adds r0, #1
	strb r0, [r1, #0x11]
	b _0809DF94
_0809DF8A:
	ldrb r0, [r1, #0x13]
	cmp r0, #0x62
	bhi _0809DF94
	adds r0, #1
	strb r0, [r1, #0x13]
_0809DF94:
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r6, r1
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0809DF1C
_0809DFA0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_809DFAC
sub_809DFAC: @ 0x0809DFAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xac
	movs r0, #0x64
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809DFD0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0809DFD4
	movs r0, #4
	b _0809DFD6
	.align 2, 0
_0809DFD0: .4byte 0xFFFFFBFF
_0809DFD4:
	movs r0, #0
_0809DFD6:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x8c
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0809E000
	movs r0, #0
	b _0809E002
_0809E000:
	movs r0, #4
_0809E002:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E018
sub_809E018: @ 0x0809E018
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0809E036
	movs r0, #0
	b _0809E038
_0809E036:
	movs r0, #2
_0809E038:
	strb r0, [r1, #0x1f]
	movs r0, #0
	str r0, [r1, #8]
	adds r0, r1, #0
	bl DisplaySprite
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0809E062
	movs r0, #2
	b _0809E064
_0809E062:
	movs r0, #0
_0809E064:
	strb r0, [r2, #0x1f]
	movs r0, #0
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E078
sub_809E078: @ 0x0809E078
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #0xa]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	strb r1, [r3, #4]
	movs r2, #0
	ldr r5, _0809E0C8 @ =gUnknown_030010AC
	ldr r4, _0809E0CC @ =gUnknown_080D961D
_0809E08E:
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r3, r2
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0809E08E
	ldr r0, _0809E0D0 @ =0xFFFF7E00
	str r0, [r3, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #7
	str r2, [r3, #0x14]
	str r0, [r3, #0x20]
	movs r1, #0xa0
	lsls r1, r1, #8
	str r1, [r3, #0x24]
	movs r0, #0xb9
	lsls r0, r0, #9
	str r0, [r3, #0x18]
	str r2, [r3, #0x1c]
	str r0, [r3, #0x28]
	str r1, [r3, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E0C8: .4byte gUnknown_030010AC
_0809E0CC: .4byte gUnknown_080D961D
_0809E0D0: .4byte 0xFFFF7E00

	thumb_func_start sub_809E0D4
sub_809E0D4: @ 0x0809E0D4
	push {r4, r5, r6, lr}
	ldr r6, _0809E114 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E130
	ldr r1, _0809E118 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E11C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E120 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E124 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E128 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E12C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E154
	.align 2, 0
_0809E114: .4byte gCurTask
_0809E118: .4byte 0x0000FFFF
_0809E11C: .4byte gBackgroundsCopyQueueCursor
_0809E120: .4byte gBackgroundsCopyQueueIndex
_0809E124: .4byte gBgSpritesCount
_0809E128: .4byte gVramGraphicsCopyCursor
_0809E12C: .4byte gVramGraphicsCopyQueueIndex
_0809E130:
	adds r0, r4, #0
	bl sub_809C8C4
	adds r0, r4, #0
	bl sub_809C810
	cmp r0, #1
	bne _0809E154
	strb r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r2, _0809E15C @ =0x03000004
	adds r1, r5, r2
	ldrb r2, [r4, #5]
	bl sub_809CC80
	ldr r1, [r6]
	ldr r0, _0809E160 @ =sub_809C620
	str r0, [r1, #8]
_0809E154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809E15C: .4byte 0x03000004
_0809E160: .4byte sub_809C620

	thumb_func_start sub_809E164
sub_809E164: @ 0x0809E164
	push {r4, r5, lr}
	ldr r5, _0809E1A4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E1C0
	ldr r1, _0809E1A8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E1AC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E1B0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E1B4 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E1B8 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E1BC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E1E0
	.align 2, 0
_0809E1A4: .4byte gCurTask
_0809E1A8: .4byte 0x0000FFFF
_0809E1AC: .4byte gBackgroundsCopyQueueCursor
_0809E1B0: .4byte gBackgroundsCopyQueueIndex
_0809E1B4: .4byte gBgSpritesCount
_0809E1B8: .4byte gVramGraphicsCopyCursor
_0809E1BC: .4byte gVramGraphicsCopyQueueIndex
_0809E1C0:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	bne _0809E1E0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0809E1D4
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E1E0
_0809E1D4:
	movs r0, #0
	bl sub_809E85C
	ldr r0, [r5]
	bl TaskDestroy
_0809E1E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E1E8
sub_809E1E8: @ 0x0809E1E8
	push {r4, r5, lr}
	ldr r0, _0809E20C @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809E210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809E214
	bl sub_8025360
	b _0809E218
	.align 2, 0
_0809E20C: .4byte gStageData
_0809E210: .4byte gCurTask
_0809E214:
	bl sub_8025AA8
_0809E218:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809E264
	ldr r1, _0809E24C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E250 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E254 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E258 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E25C @ =gVramGraphicsCopyCursor
	ldr r0, _0809E260 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E276
	.align 2, 0
_0809E24C: .4byte 0x0000FFFF
_0809E250: .4byte gBackgroundsCopyQueueCursor
_0809E254: .4byte gBackgroundsCopyQueueIndex
_0809E258: .4byte gBgSpritesCount
_0809E25C: .4byte gVramGraphicsCopyCursor
_0809E260: .4byte gVramGraphicsCopyQueueIndex
_0809E264:
	cmp r0, #1
	bne _0809E276
	ldr r1, [r5]
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809E27C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809E276:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E27C: .4byte gCurTask

	thumb_func_start sub_809E280
sub_809E280: @ 0x0809E280
	bx lr
	.align 2, 0

	thumb_func_start sub_809E284
sub_809E284: @ 0x0809E284
	push {r4, r5, lr}
	ldr r0, _0809E2A8 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809E2AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809E2B0
	bl sub_8025A90
	b _0809E2B4
	.align 2, 0
_0809E2A8: .4byte gStageData
_0809E2AC: .4byte gCurTask
_0809E2B0:
	bl sub_80253CC
_0809E2B4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E2FC
	ldr r1, _0809E2E4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E2E8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E2EC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E2F0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E2F4 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E2F8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E30E
	.align 2, 0
_0809E2E4: .4byte 0x0000FFFF
_0809E2E8: .4byte gBackgroundsCopyQueueCursor
_0809E2EC: .4byte gBackgroundsCopyQueueIndex
_0809E2F0: .4byte gBgSpritesCount
_0809E2F4: .4byte gVramGraphicsCopyCursor
_0809E2F8: .4byte gVramGraphicsCopyQueueIndex
_0809E2FC:
	adds r0, r5, #0
	bl sub_809E354
	cmp r0, #1
	bne _0809E30E
	ldr r0, _0809E314 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809E318 @ =sub_809CA64
	str r0, [r1, #8]
_0809E30E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E314: .4byte gCurTask
_0809E318: .4byte sub_809CA64

	thumb_func_start sub_809E31C
sub_809E31C: @ 0x0809E31C
	push {r4, lr}
	ldr r4, _0809E350 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809E348
	ldr r0, [r1]
	movs r1, #0xa
	strb r1, [r0]
	movs r0, #1
	bl sub_808ADF0
	ldr r0, [r4]
	bl TaskDestroy
_0809E348:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E350: .4byte gCurTask

	thumb_func_start sub_809E354
sub_809E354: @ 0x0809E354
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	ldr r2, _0809E378 @ =0x00004FFF
	cmp r0, r2
	bgt _0809E36C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0xc]
	cmp r0, r2
	ble _0809E37C
_0809E36C:
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E37E
	.align 2, 0
_0809E378: .4byte 0x00004FFF
_0809E37C:
	movs r0, #0
_0809E37E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E384
sub_809E384: @ 0x0809E384
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0x38
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_809E3B4
sub_809E3B4: @ 0x0809E3B4
	bx lr
	.align 2, 0

	thumb_func_start sub_809E3B8
sub_809E3B8: @ 0x0809E3B8
	push {r4, lr}
	ldr r0, _0809E3F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E414
	ldr r1, _0809E3FC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E400 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E404 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E408 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E40C @ =gVramGraphicsCopyCursor
	ldr r0, _0809E410 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E448
	.align 2, 0
_0809E3F8: .4byte gCurTask
_0809E3FC: .4byte 0x0000FFFF
_0809E400: .4byte gBackgroundsCopyQueueCursor
_0809E404: .4byte gBackgroundsCopyQueueIndex
_0809E408: .4byte gBgSpritesCount
_0809E40C: .4byte gVramGraphicsCopyCursor
_0809E410: .4byte gVramGraphicsCopyQueueIndex
_0809E414:
	adds r0, r4, #0
	bl sub_809CE58
	adds r0, r4, #0
	bl sub_809CDC8
	cmp r0, #1
	bne _0809E448
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0809E434
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809C970
	b _0809E440
_0809E434:
	cmp r0, #1
	bne _0809E440
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809CF04
_0809E440:
	ldr r0, _0809E450 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809E454 @ =sub_809E458
	str r0, [r1, #8]
_0809E448:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E450: .4byte gCurTask
_0809E454: .4byte sub_809E458

	thumb_func_start sub_809E458
sub_809E458: @ 0x0809E458
	push {r4, r5, lr}
	ldr r5, _0809E498 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E4B4
	ldr r1, _0809E49C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E4A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E4A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E4A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E4AC @ =gVramGraphicsCopyCursor
	ldr r0, _0809E4B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E4D4
	.align 2, 0
_0809E498: .4byte gCurTask
_0809E49C: .4byte 0x0000FFFF
_0809E4A0: .4byte gBackgroundsCopyQueueCursor
_0809E4A4: .4byte gBackgroundsCopyQueueIndex
_0809E4A8: .4byte gBgSpritesCount
_0809E4AC: .4byte gVramGraphicsCopyCursor
_0809E4B0: .4byte gVramGraphicsCopyQueueIndex
_0809E4B4:
	adds r0, r4, #0
	bl sub_809CE58
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E4CA
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E4D4
_0809E4CA:
	cmp r0, #0
	bne _0809E4D4
	ldr r0, [r5]
	bl TaskDestroy
_0809E4D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E4DC
sub_809E4DC: @ 0x0809E4DC
	bx lr
	.align 2, 0

	thumb_func_start sub_809E4E0
sub_809E4E0: @ 0x0809E4E0
	push {r4, r5, lr}
	ldr r5, _0809E520 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E53C
	ldr r1, _0809E524 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E528 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E52C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E530 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E534 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E538 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E56A
	.align 2, 0
_0809E520: .4byte gCurTask
_0809E524: .4byte 0x0000FFFF
_0809E528: .4byte gBackgroundsCopyQueueCursor
_0809E52C: .4byte gBackgroundsCopyQueueIndex
_0809E530: .4byte gBgSpritesCount
_0809E534: .4byte gVramGraphicsCopyCursor
_0809E538: .4byte gVramGraphicsCopyQueueIndex
_0809E53C:
	adds r0, r4, #0
	bl sub_809E5E4
	adds r0, r4, #0
	bl sub_809E5AC
	cmp r0, #1
	bne _0809E56A
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _0809E55C
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809CFA8
	b _0809E564
_0809E55C:
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809D27C
_0809E564:
	ldr r1, [r5]
	ldr r0, _0809E570 @ =sub_809E574
	str r0, [r1, #8]
_0809E56A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E570: .4byte sub_809E574

	thumb_func_start sub_809E574
sub_809E574: @ 0x0809E574
	push {r4, r5, lr}
	ldr r5, _0809E598 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_809E5E4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E59C
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E5A6
	.align 2, 0
_0809E598: .4byte gCurTask
_0809E59C:
	cmp r0, #0
	bne _0809E5A6
	ldr r0, [r5]
	bl TaskDestroy
_0809E5A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809E5AC
sub_809E5AC: @ 0x0809E5AC
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E5D0 @ =0x000077FF
	cmp r2, r0
	bgt _0809E5D4
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809E5DE
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E5E0
	.align 2, 0
_0809E5D0: .4byte 0x000077FF
_0809E5D4:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E5E0
_0809E5DE:
	movs r0, #0
_0809E5E0:
	pop {r1}
	bx r1

	thumb_func_start sub_809E5E4
sub_809E5E4: @ 0x0809E5E4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x14
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809E62C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E62C: .4byte 0xFFFFFBFF
    
	thumb_func_start sub_809E630
sub_809E630: @ 0x0809E630
	bx lr
	.align 2, 0

	thumb_func_start sub_809E634
sub_809E634: @ 0x0809E634
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E658 @ =0x000077FF
	cmp r2, r0
	bgt _0809E65C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809E666
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E668
	.align 2, 0
_0809E658: .4byte 0x000077FF
_0809E65C:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E668
_0809E666:
	movs r0, #0
_0809E668:
	pop {r1}
	bx r1

	thumb_func_start sub_809E66C
sub_809E66C: @ 0x0809E66C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_809E688
sub_809E688: @ 0x0809E688
	bx lr
	.align 2, 0

	thumb_func_start sub_809E68C
sub_809E68C: @ 0x0809E68C
	push {r4, r5, lr}
	ldr r5, _0809E6CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E6E8
	ldr r1, _0809E6D0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E6D4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E6D8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E6DC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E6E0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E6E4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E702
	.align 2, 0
_0809E6CC: .4byte gCurTask
_0809E6D0: .4byte 0x0000FFFF
_0809E6D4: .4byte gBackgroundsCopyQueueCursor
_0809E6D8: .4byte gBackgroundsCopyQueueIndex
_0809E6DC: .4byte gBgSpritesCount
_0809E6E0: .4byte gVramGraphicsCopyCursor
_0809E6E4: .4byte gVramGraphicsCopyQueueIndex
_0809E6E8:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E6F8
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E702
_0809E6F8:
	cmp r0, #0
	bne _0809E702
	ldr r0, [r5]
	bl TaskDestroy
_0809E702:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809E708
sub_809E708: @ 0x0809E708
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E72C @ =0x000027FF
	cmp r2, r0
	bgt _0809E730
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _0809E73A
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E73C
	.align 2, 0
_0809E72C: .4byte 0x000027FF
_0809E730:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E73C
_0809E73A:
	movs r0, #0
_0809E73C:
	pop {r1}
	bx r1

	thumb_func_start sub_809E740
sub_809E740: @ 0x0809E740
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x14
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0x3c
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	movs r1, #0xf0
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_809E774
sub_809E774: @ 0x0809E774
	bx lr
	.align 2, 0

	thumb_func_start sub_809E778
sub_809E778: @ 0x0809E778
	push {r4, lr}
	ldr r4, _0809E7AC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E7D0
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0809E7B8
	ldr r2, _0809E7B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809E7B4 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	bl sub_80AD9E4
	ldr r0, [r4]
	bl TaskDestroy
	b _0809E7D0
	.align 2, 0
_0809E7AC: .4byte gCurTask
_0809E7B0: .4byte gDispCnt
_0809E7B4: .4byte 0x00009FFF
_0809E7B8:
	adds r0, r1, #0
	bl sub_809DE9C
	ldr r0, _0809E7D8 @ =gStageData
	movs r1, #6
	strb r1, [r0, #3]
	movs r0, #0xff
	bl sub_808D0F0
	ldr r0, [r4]
	bl TaskDestroy
_0809E7D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E7D8: .4byte gStageData

	thumb_func_start sub_809E7DC
sub_809E7DC: @ 0x0809E7DC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x34
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_809E7F8
sub_809E7F8: @ 0x0809E7F8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	ldr r2, _0809E81C @ =0x000031FF
	cmp r0, r2
	bgt _0809E810
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0x20]
	cmp r0, r2
	ble _0809E820
_0809E810:
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r1, #0x20]
	movs r0, #1
	b _0809E822
	.align 2, 0
_0809E81C: .4byte 0x000031FF
_0809E820:
	movs r0, #0
_0809E822:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E828
sub_809E828: @ 0x0809E828
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r2, _0809E84C @ =0x00003BFF
	cmp r0, r2
	bgt _0809E840
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0x24]
	cmp r0, r2
	ble _0809E850
_0809E840:
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1, #0x24]
	movs r0, #1
	b _0809E852
	.align 2, 0
_0809E84C: .4byte 0x00003BFF
_0809E850:
	movs r0, #0
_0809E852:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E858
sub_809E858: @ 0x0809E858
	bx lr
	.align 2, 0

	thumb_func_start sub_809E85C
sub_809E85C: @ 0x0809E85C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0809E8DC @ =gDispCnt
	ldr r2, _0809E8E0 @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809E8E4 @ =sub_809EBF4
	movs r1, #0xf0
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0809E8E8 @ =sub_809F84C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0
	strb r4, [r5, #2]
	ldr r2, _0809E8EC @ =gLoadedSaveGame
	ldr r3, _0809E8F0 @ =0x00000366
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r5, #5]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strh r0, [r5, #0x12]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	strh r0, [r5, #0xe]
	strh r0, [r5, #0x10]
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, _0809E8F4 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	strb r0, [r5, #1]
	movs r1, #0x84
	lsls r1, r1, #8
	str r1, [r5, #0x38]
	str r1, [r5, #0x3c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r5, #0x40]
	str r1, [r5, #0x44]
	cmp r4, #0
	beq _0809E8D6
	ldrb r1, [r2, #0x11]
	cmp r1, #7
	bls _0809E8F8
_0809E8D6:
	movs r0, #7
	strb r0, [r5, #6]
	b _0809E8FA
	.align 2, 0
_0809E8DC: .4byte gDispCnt
_0809E8E0: .4byte 0x00001041
_0809E8E4: .4byte sub_809EBF4
_0809E8E8: .4byte sub_809F84C
_0809E8EC: .4byte gLoadedSaveGame
_0809E8F0: .4byte 0x00000366
_0809E8F4: .4byte gUnknown_03001060
_0809E8F8:
	strb r1, [r5, #6]
_0809E8FA:
	movs r2, #0
	adds r3, r5, #7
	movs r4, #3
	ldr r6, _0809E910 @ =gLoadedSaveGame + 0x29
_0809E902:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0809E914
	adds r0, r3, r2
	strb r4, [r0]
	b _0809E938
	.align 2, 0
_0809E910: .4byte gLoadedSaveGame + 0x29
_0809E914:
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0809E934
	adds r1, r3, r2
	lsrs r0, r0, #0x19
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0809E938
	strb r4, [r1]
	b _0809E938
_0809E934:
	adds r0, r3, r2
	strb r1, [r0]
_0809E938:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0809E902
	adds r0, r5, #0
	bl sub_809E978
	adds r0, r5, #0
	bl sub_809EB74
	ldr r0, _0809E96C @ =0x0000FFFF
	bl sub_80C4C0C
	ldr r1, _0809E970 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _0809E974 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809E96C: .4byte 0x0000FFFF
_0809E970: .4byte gBgPalette
_0809E974: .4byte gFlags

	thumb_func_start sub_809E978
sub_809E978: @ 0x0809E978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r6, _0809EB5C @ =0x06010000
	ldrb r0, [r7, #5]
	rsbs r5, r0, #0
	orrs r5, r0
	lsrs r5, r5, #0x1f
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	ldr r3, _0809EB60 @ =gUnknown_080D98D8
	lsls r2, r5, #3
	mov r8, r2
	adds r1, r3, #4
	add r1, r8
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r1, r6
	adds r2, r2, r3
	ldrh r1, [r2]
	movs r4, #0
	mov sl, r4
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sb, r1
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xe8
	str r6, [r0]
	ldr r3, [sp]
	ldr r1, [r3, #0x14]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r3, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x48
	str r6, [r7, #0x48]
	ldr r2, _0809EB64 @ =gUnknown_080D8AAC
	lsls r5, r5, #4
	adds r1, r2, #4
	adds r1, r5, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	adds r5, r5, r2
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x70
	str r6, [r7, #0x70]
	ldr r2, _0809EB68 @ =gUnknown_080D8ACC
	adds r1, r2, #4
	add r1, r8
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	add r8, r2
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x98
	str r6, [r0]
	adds r6, #0x80
	ldr r5, _0809EB6C @ =gUnknown_080D8ADC
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc0
	str r6, [r0]
	adds r6, #0x80
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	ldr r2, _0809EB70 @ =gUnknown_080D8AEC
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
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
_0809EB5C: .4byte 0x06010000
_0809EB60: .4byte gUnknown_080D98D8
_0809EB64: .4byte gUnknown_080D8AAC
_0809EB68: .4byte gUnknown_080D8ACC
_0809EB6C: .4byte gUnknown_080D8ADC
_0809EB70: .4byte gUnknown_080D8AEC

	thumb_func_start sub_809EB74
sub_809EB74: @ 0x0809EB74
	push {lr}
	mov ip, r0
	ldr r2, _0809EBD8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809EBDC @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _0809EBE0 @ =0x00001808
	strh r0, [r1, #2]
	ldr r1, _0809EBE4 @ =gBgScrollRegs
	strh r2, [r1, #4]
	ldr r0, _0809EBE8 @ =0x0000FF88
	strh r0, [r1, #6]
	movs r0, #0xd0
	lsls r0, r0, #1
	add r0, ip
	ldr r1, _0809EBEC @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0809EBF0 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x28
	strh r1, [r0, #0x28]
	movs r1, #0xe5
	lsls r1, r1, #1
	add r1, ip
	strb r3, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r0}
	bx r0
	.align 2, 0
_0809EBD8: .4byte gDispCnt
_0809EBDC: .4byte gBgCntRegs
_0809EBE0: .4byte 0x00001808
_0809EBE4: .4byte gBgScrollRegs
_0809EBE8: .4byte 0x0000FF88
_0809EBEC: .4byte 0x06008000
_0809EBF0: .4byte 0x0600C000

	thumb_func_start sub_809EBF4
sub_809EBF4: @ 0x0809EBF4
	push {r4, r5, lr}
	ldr r5, _0809EC60 @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	ldr r2, _0809EC64 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809EC68 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _0809EC6C @ =0x00000E83
	strh r0, [r1]
	ldr r0, _0809EC70 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r1, _0809EC74 @ =0x03000160
	adds r0, r3, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0809EC78 @ =0x06007000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xbb
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r1, _0809EC7C @ =0x0300018A
	adds r3, r3, r1
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r1, [r5]
	ldr r0, _0809EC80 @ =sub_809EC84
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809EC60: .4byte gCurTask
_0809EC64: .4byte gDispCnt
_0809EC68: .4byte gBgCntRegs
_0809EC6C: .4byte 0x00000E83
_0809EC70: .4byte gBgScrollRegs
_0809EC74: .4byte 0x03000160
_0809EC78: .4byte 0x06007000
_0809EC7C: .4byte 0x0300018A
_0809EC80: .4byte sub_809EC84

	thumb_func_start sub_809EC84
sub_809EC84: @ 0x0809EC84
	push {r4, r5, r6, r7, lr}
	ldr r2, _0809ECA4 @ =gStageData
	movs r5, #0
	ldr r0, _0809ECA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0809ECAC
	bl sub_80254CC
	b _0809ECB0
	.align 2, 0
_0809ECA4: .4byte gStageData
_0809ECA8: .4byte gCurTask
_0809ECAC:
	bl sub_8025AFC
_0809ECB0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809ECCC
	ldr r0, _0809ECC4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809ECC8 @ =sub_809F638
	b _0809ED9A
	.align 2, 0
_0809ECC4: .4byte gCurTask
_0809ECC8: .4byte sub_809F638
_0809ECCC:
	cmp r0, #0
	beq _0809ED9C
	ldrh r3, [r4, #0x10]
	ldr r6, _0809ED2C @ =gBldRegs
	cmp r3, #0
	bne _0809ED08
	ldr r0, _0809ED30 @ =0x00003FFF
	strh r0, [r6]
	ldr r2, _0809ED34 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809ED38 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _0809ED3C @ =0x00003132
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0809ED08:
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _0809ED48
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	ldr r1, _0809ED40 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r7, [r4, #0xe]
	adds r0, r0, r7
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	ldr r1, _0809ED44 @ =0x0FFF0000
	cmp r0, r1
	bls _0809ED4E
	movs r0, #0
	strh r0, [r4, #0xe]
	b _0809ED4E
	.align 2, 0
_0809ED2C: .4byte gBldRegs
_0809ED30: .4byte 0x00003FFF
_0809ED34: .4byte gDispCnt
_0809ED38: .4byte gWinRegs
_0809ED3C: .4byte 0x00003132
_0809ED40: .4byte 0xFFFFFE00
_0809ED44: .4byte 0x0FFF0000
_0809ED48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809ED4E:
	adds r0, r4, #0
	bl sub_809F7D8
	cmp r0, #1
	bne _0809ED5E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809ED5E:
	adds r0, r4, #0
	bl sub_809F810
	cmp r0, #1
	bne _0809ED6E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809ED6E:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r4, #0x14]
	ldr r1, _0809EDA4 @ =gWinRegs
	adds r0, #0x90
	strh r0, [r1, #4]
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	cmp r5, #3
	bne _0809ED9C
	movs r0, #0
	strh r0, [r4, #0x10]
	ldr r0, _0809EDA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EDAC @ =sub_809EDB0
_0809ED9A:
	str r0, [r1, #8]
_0809ED9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EDA4: .4byte gWinRegs
_0809EDA8: .4byte gCurTask
_0809EDAC: .4byte sub_809EDB0

	thumb_func_start sub_809EDB0
sub_809EDB0: @ 0x0809EDB0
	push {r4, r5, lr}
	ldr r0, _0809EDF0 @ =gStageData
	ldrb r2, [r0, #6]
	ldr r0, _0809EDF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r1, [r4]
	ldr r0, _0809EDF8 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809EDE0
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809EDE0:
	lsls r0, r2, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809EDFC
	ldrb r0, [r4]
	bl sub_8025460
	b _0809EE00
	.align 2, 0
_0809EDF0: .4byte gStageData
_0809EDF4: .4byte gCurTask
_0809EDF8: .4byte gUnknown_03001060
_0809EDFC:
	bl sub_8025AA8
_0809EE00:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809EE1C
	ldr r0, _0809EE14 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EE18 @ =sub_809F638
	b _0809EE3E
	.align 2, 0
_0809EE14: .4byte gCurTask
_0809EE18: .4byte sub_809F638
_0809EE1C:
	cmp r5, #0
	beq _0809EE26
	adds r0, r4, #0
	bl sub_809F7A4
_0809EE26:
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldr r0, _0809EE48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EE4C @ =sub_809EE50
_0809EE3E:
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809EE48: .4byte gCurTask
_0809EE4C: .4byte sub_809EE50

	thumb_func_start sub_809EE50
sub_809EE50: @ 0x0809EE50
	push {r4, r5, r6, lr}
	ldr r0, _0809EEA4 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809EEA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809EEAC @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809EE92
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809EE92:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809EEB0
	ldrb r0, [r4]
	bl sub_8025460
	b _0809EEB4
	.align 2, 0
_0809EEA4: .4byte gStageData
_0809EEA8: .4byte gCurTask
_0809EEAC: .4byte gUnknown_03001060
_0809EEB0:
	bl sub_80255B0
_0809EEB4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bge _0809EED0
	ldr r0, _0809EEC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EECC @ =sub_809F638
	b _0809EF56
	.align 2, 0
_0809EEC8: .4byte gCurTask
_0809EECC: .4byte sub_809F638
_0809EED0:
	asrs r5, r5, #0x10
	cmp r5, #0
	beq _0809EEDC
	adds r0, r4, #0
	bl sub_809F7A4
_0809EEDC:
	cmp r6, #1
	bne _0809EEF0
	ldr r0, _0809EEE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EEEC @ =sub_809F170
	b _0809EF56
	.align 2, 0
_0809EEE8: .4byte gCurTask
_0809EEEC: .4byte sub_809F170
_0809EEF0:
	cmp r5, #0
	bne _0809EF3C
	ldr r0, _0809EF2C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809EF3C
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _0809EF30 @ =gUnknown_03001060
	adds r0, #0x50
	ldrb r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0809EF22
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809EF22:
	ldr r0, _0809EF34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EF38 @ =sub_809F718
	b _0809EF56
	.align 2, 0
_0809EF2C: .4byte gPressedKeys
_0809EF30: .4byte gUnknown_03001060
_0809EF34: .4byte gCurTask
_0809EF38: .4byte sub_809F718
_0809EF3C:
	adds r0, r4, #0
	bl sub_809F310
	cmp r0, #1
	beq _0809EF50
	adds r0, r4, #0
	bl sub_809F460
	cmp r0, #1
	bne _0809EF58
_0809EF50:
	ldr r0, _0809EF60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EF64 @ =sub_809EF68
_0809EF56:
	str r0, [r1, #8]
_0809EF58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809EF60: .4byte gCurTask
_0809EF64: .4byte sub_809EF68

	thumb_func_start sub_809EF68
sub_809EF68: @ 0x0809EF68
	push {r4, r5, lr}
	ldr r0, _0809EFBC @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809EFC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809F550
	adds r0, r5, #0
	bl sub_809F7B8
	adds r0, r5, #0
	bl sub_809F5E4
	ldrb r1, [r5]
	ldr r0, _0809EFC4 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809EFAA
	ldrb r1, [r5, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r5, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r5]
_0809EFAA:
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0809EFC8
	ldrb r0, [r5]
	bl sub_8025460
	b _0809EFCC
	.align 2, 0
_0809EFBC: .4byte gStageData
_0809EFC0: .4byte gCurTask
_0809EFC4: .4byte gUnknown_03001060
_0809EFC8:
	bl sub_8025614
_0809EFCC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809EFE8
	ldr r0, _0809EFE0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EFE4 @ =sub_809F638
	b _0809F058
	.align 2, 0
_0809EFE0: .4byte gCurTask
_0809EFE4: .4byte sub_809F638
_0809EFE8:
	cmp r4, #0
	beq _0809EFF2
	adds r0, r5, #0
	bl sub_809F7A4
_0809EFF2:
	ldrh r2, [r5, #0x10]
	ldr r3, _0809F028 @ =gBldRegs
	cmp r2, #0
	bne _0809F00C
	ldr r0, _0809F02C @ =0x00003F8F
	strh r0, [r3]
	ldr r1, _0809F030 @ =gWinRegs
	ldr r0, _0809F034 @ =0x00001132
	strh r0, [r1, #8]
	strh r2, [r3, #4]
	strh r2, [r5, #0xe]
	movs r0, #1
	strh r0, [r5, #0x10]
_0809F00C:
	ldrh r0, [r3, #4]
	cmp r0, #0xf
	bhi _0809F038
	ldrh r0, [r5, #0xe]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	strh r0, [r5, #0xe]
	b _0809F05A
	.align 2, 0
_0809F028: .4byte gBldRegs
_0809F02C: .4byte 0x00003F8F
_0809F030: .4byte gWinRegs
_0809F034: .4byte 0x00001132
_0809F038:
	movs r4, #0
	movs r0, #0x10
	strh r0, [r3, #4]
	ldr r3, _0809F060 @ =gBgScrollRegs
	ldr r2, _0809F064 @ =0x0000FF88
	strh r2, [r3, #6]
	ldrb r0, [r5, #3]
	lsls r1, r0, #3
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	strh r1, [r3, #6]
	strh r4, [r5, #0x10]
	ldr r0, _0809F068 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F06C @ =sub_809F070
_0809F058:
	str r0, [r1, #8]
_0809F05A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F060: .4byte gBgScrollRegs
_0809F064: .4byte 0x0000FF88
_0809F068: .4byte gCurTask
_0809F06C: .4byte sub_809F070

	thumb_func_start sub_809F070
sub_809F070: @ 0x0809F070
	push {r4, r5, lr}
	ldr r0, _0809F0C4 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809F0C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809F0CC @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809F0B2
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809F0B2:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809F0D0
	ldrb r0, [r4]
	bl sub_8025460
	b _0809F0D4
	.align 2, 0
_0809F0C4: .4byte gStageData
_0809F0C8: .4byte gCurTask
_0809F0CC: .4byte gUnknown_03001060
_0809F0D0:
	bl sub_80255B0
_0809F0D4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809F0F0
	ldr r0, _0809F0E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F0EC @ =sub_809F638
	b _0809F160
	.align 2, 0
_0809F0E8: .4byte gCurTask
_0809F0EC: .4byte sub_809F638
_0809F0F0:
	cmp r0, #1
	bne _0809F104
	ldr r0, _0809F0FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F100 @ =sub_809F170
	b _0809F160
	.align 2, 0
_0809F0FC: .4byte gCurTask
_0809F100: .4byte sub_809F170
_0809F104:
	cmp r5, #0
	beq _0809F10E
	adds r0, r4, #0
	bl sub_809F7A4
_0809F10E:
	adds r0, r4, #0
	bl sub_809F310
	cmp r0, #1
	beq _0809F122
	adds r0, r4, #0
	bl sub_809F460
	cmp r0, #1
	bne _0809F134
_0809F122:
	ldr r0, _0809F12C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F130 @ =sub_809EF68
	b _0809F160
	.align 2, 0
_0809F12C: .4byte gCurTask
_0809F130: .4byte sub_809EF68
_0809F134:
	ldr r1, _0809F150 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0809F158
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _0809F154 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r1, [r4, #0xe]
	adds r0, r0, r1
	strh r0, [r4, #0xe]
	b _0809F162
	.align 2, 0
_0809F150: .4byte gBldRegs
_0809F154: .4byte 0xFFFFFE00
_0809F158:
	strh r0, [r1, #4]
	ldr r0, _0809F168 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F16C @ =sub_809EE50
_0809F160:
	str r0, [r1, #8]
_0809F162:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F168: .4byte gCurTask
_0809F16C: .4byte sub_809EE50

	thumb_func_start sub_809F170
sub_809F170: @ 0x0809F170
	push {r4, r5, r6, lr}
	ldr r0, _0809F1C0 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809F1C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809F1C8 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809F1B2
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809F1B2:
	lsls r0, r5, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0809F1CC
	bl sub_8025534
	b _0809F1D0
	.align 2, 0
_0809F1C0: .4byte gStageData
_0809F1C4: .4byte gCurTask
_0809F1C8: .4byte gUnknown_03001060
_0809F1CC:
	bl sub_8025614
_0809F1D0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0809F1EC
	ldr r0, _0809F1E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F1E8 @ =sub_809F638
	b _0809F200
	.align 2, 0
_0809F1E4: .4byte gCurTask
_0809F1E8: .4byte sub_809F638
_0809F1EC:
	cmp r6, #0
	beq _0809F1F6
	adds r0, r4, #0
	bl sub_809F7A4
_0809F1F6:
	cmp r5, #1
	bne _0809F202
	ldr r0, _0809F208 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F20C @ =sub_809F210
_0809F200:
	str r0, [r1, #8]
_0809F202:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F208: .4byte gCurTask
_0809F20C: .4byte sub_809F210

	thumb_func_start sub_809F210
sub_809F210: @ 0x0809F210
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809F260 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809F264 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809F268 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809F252
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809F252:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809F26C
	bl sub_8025534
	b _0809F270
	.align 2, 0
_0809F260: .4byte gStageData
_0809F264: .4byte gCurTask
_0809F268: .4byte gUnknown_03001060
_0809F26C:
	bl sub_8025614
_0809F270:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bge _0809F28C
	ldr r0, _0809F284 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F288 @ =sub_809F638
	b _0809F2FE
	.align 2, 0
_0809F284: .4byte gCurTask
_0809F288: .4byte sub_809F638
_0809F28C:
	cmp r5, #0
	beq _0809F296
	adds r0, r4, #0
	bl sub_809F7A4
_0809F296:
	ldrh r3, [r4, #0x10]
	ldr r5, _0809F2E0 @ =gBldRegs
	cmp r3, #0
	bne _0809F2C6
	ldr r2, _0809F2E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809F2E8 @ =gWinRegs
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _0809F2EC @ =0x00003132
	strh r0, [r1, #8]
	ldr r0, _0809F2F0 @ =0x00003FFF
	strh r0, [r5]
	strh r3, [r5, #4]
	strh r3, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0809F2C6:
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _0809F2F4
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r7, [r4, #0xe]
	adds r0, r0, r7
	strh r0, [r4, #0xe]
	b _0809F300
	.align 2, 0
_0809F2E0: .4byte gBldRegs
_0809F2E4: .4byte gDispCnt
_0809F2E8: .4byte gWinRegs
_0809F2EC: .4byte 0x00003132
_0809F2F0: .4byte 0x00003FFF
_0809F2F4:
	cmp r6, #1
	bne _0809F300
	ldr r0, _0809F308 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F30C @ =sub_809F768
_0809F2FE:
	str r0, [r1, #8]
_0809F300:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F308: .4byte gCurTask
_0809F30C: .4byte sub_809F768

	thumb_func_start sub_809F310
sub_809F310: @ 0x0809F310
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0809F398 @ =gStageData
	ldrb r2, [r0, #6]
	ldr r0, [r4, #0x38]
	subs r0, #0x20
	str r0, [r4, #0x38]
	ldr r1, _0809F39C @ =0x00007FFF
	cmp r0, r1
	bgt _0809F32A
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x38]
_0809F32A:
	ldr r0, [r4, #0x40]
	adds r0, #0x20
	str r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809F33E
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x40]
_0809F33E:
	cmp r2, #0
	bne _0809F404
	ldr r5, _0809F3A0 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _0809F350
	b _0809F458
_0809F350:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809F3A4
	ldrb r0, [r4, #4]
	subs r0, #1
	strb r0, [r4, #4]
	ldrb r1, [r4, #4]
	adds r0, r4, #7
	ldrb r3, [r4, #3]
	adds r2, r0, r3
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F3A4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r4, #4]
	adds r0, r3, #0
	subs r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F450
	ldrb r0, [r4, #6]
	subs r0, #1
	strb r0, [r4, #3]
	b _0809F450
	.align 2, 0
_0809F398: .4byte gStageData
_0809F39C: .4byte 0x00007FFF
_0809F3A0: .4byte gRepeatedKeys
_0809F3A4:
	ldr r0, _0809F3E4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldrb r1, [r4, #3]
	cmp r0, #0
	beq _0809F3E8
	ldrb r0, [r4, #4]
	adds r0, #1
	movs r3, #0
	strb r0, [r4, #4]
	ldrb r2, [r4, #4]
	adds r0, r4, #7
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #1
	cmp r2, r0
	ble _0809F3E8
	strb r3, [r4, #4]
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F450
	strb r3, [r4, #3]
	b _0809F450
	.align 2, 0
_0809F3E4: .4byte gRepeatedKeys
_0809F3E8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
	ldr r0, _0809F400 @ =gUnknown_03001060
	ldrb r1, [r4]
	adds r0, #0x50
	strh r1, [r0]
	b _0809F458
	.align 2, 0
_0809F400: .4byte gUnknown_03001060
_0809F404:
	ldr r0, _0809F454 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x50
	ldrh r5, [r1]
	ldrb r0, [r4, #1]
	cmp r0, r5
	beq _0809F458
	ldrb r6, [r4, #4]
	ldrb r7, [r4, #3]
	ldrh r0, [r1]
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	strb r2, [r4, #3]
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r5, r0
	subs r1, r0, #2
	strb r1, [r4, #4]
	strb r5, [r4, #1]
	cmp r6, #2
	bne _0809F43C
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0809F450
_0809F43C:
	cmp r6, #0
	bne _0809F448
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0809F450
_0809F448:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	beq _0809F458
_0809F450:
	movs r0, #1
	b _0809F45A
	.align 2, 0
_0809F454: .4byte gUnknown_03001060
_0809F458:
	movs r0, #0
_0809F45A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_809F460
sub_809F460: @ 0x0809F460
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809F508 @ =gStageData
	ldrb r2, [r0, #6]
	ldr r0, [r4, #0x38]
	subs r0, #0x20
	str r0, [r4, #0x38]
	ldr r1, _0809F50C @ =0x00007FFF
	cmp r0, r1
	bgt _0809F47A
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x38]
_0809F47A:
	ldr r0, [r4, #0x40]
	adds r0, #0x20
	str r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809F48E
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x40]
_0809F48E:
	cmp r2, #0
	bne _0809F518
	ldr r1, _0809F510 @ =gRepeatedKeys
	ldrh r2, [r1]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _0809F546
	ldrb r3, [r4, #3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0809F4C0
	subs r0, r3, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F4C0
	ldrb r0, [r4, #6]
	subs r0, #1
	strb r0, [r4, #3]
_0809F4C0:
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809F4E0
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F4E0
	movs r0, #0
	strb r0, [r4, #3]
_0809F4E0:
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
	ldr r0, _0809F514 @ =gUnknown_03001060
	ldrb r1, [r4]
	adds r0, #0x50
	strh r1, [r0]
	ldrb r4, [r4, #3]
	cmp r3, r4
	beq _0809F53C
	movs r0, #0x6c
	bl m4aSongNumStart
	b _0809F53C
	.align 2, 0
_0809F508: .4byte gStageData
_0809F50C: .4byte 0x00007FFF
_0809F510: .4byte gRepeatedKeys
_0809F514: .4byte gUnknown_03001060
_0809F518:
	ldr r0, _0809F540 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x50
	ldrb r0, [r4, #1]
	ldrh r2, [r1]
	cmp r0, r2
	beq _0809F546
	ldrh r5, [r1]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r0, [r4, #3]
	cmp r0, r1
	beq _0809F544
	strb r1, [r4, #3]
_0809F53C:
	movs r0, #1
	b _0809F548
	.align 2, 0
_0809F540: .4byte gUnknown_03001060
_0809F544:
	strb r5, [r4, #1]
_0809F546:
	movs r0, #0
_0809F548:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809F550
sub_809F550: @ 0x0809F550
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r4, r6, #0
	adds r4, #0x98
	ldr r5, _0809F5E0 @ =gUnknown_080D8ADC
	ldrh r0, [r5]
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #3]
	ldrb r1, [r5, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	adds r0, #0x19
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #0
	adds r0, #0x70
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	adds r1, #0x2a
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r4, #0x28
	ldrh r0, [r5]
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #4]
	ldrb r5, [r5, #2]
	adds r0, r0, r5
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	adds r0, #0x57
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F5E0: .4byte gUnknown_080D8ADC

	thumb_func_start sub_809F5E4
sub_809F5E4: @ 0x0809F5E4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809F634 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x69
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F634: .4byte 0xFFFFFBFF

	thumb_func_start sub_809F638
sub_809F638: @ 0x0809F638
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0809F6A8 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	bl sub_80260F0
	ldr r2, _0809F6AC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809F6B0 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0809F6B4 @ =gBldRegs
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [sp]
	ldr r2, _0809F6B8 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0809F6BC @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0809F6C0 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0809F6C4 @ =gBgSprites_Unknown1
	strb r3, [r0, #2]
	ldr r1, _0809F6C8 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	adds r0, #0xec
	strh r0, [r4, #0x12]
	ldr r1, [r5]
	ldr r0, _0809F6CC @ =sub_809F6D0
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F6A8: .4byte gCurTask
_0809F6AC: .4byte gDispCnt
_0809F6B0: .4byte 0x00009FFF
_0809F6B4: .4byte gBldRegs
_0809F6B8: .4byte 0x040000D4
_0809F6BC: .4byte gBgCntRegs
_0809F6C0: .4byte 0x85000010
_0809F6C4: .4byte gBgSprites_Unknown1
_0809F6C8: .4byte gBgSprites_Unknown2
_0809F6CC: .4byte sub_809F6D0

	thumb_func_start sub_809F6D0
sub_809F6D0: @ 0x0809F6D0
	push {lr}
	sub sp, #0x20
	ldr r1, _0809F700 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809F704 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809F708 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809F70C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809F710 @ =gVramGraphicsCopyCursor
	ldr r0, _0809F714 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	add sp, #0x20
	pop {r0}
	bx r0
	.align 2, 0
_0809F700: .4byte 0x0000FFFF
_0809F704: .4byte gBackgroundsCopyQueueCursor
_0809F708: .4byte gBackgroundsCopyQueueIndex
_0809F70C: .4byte gBgSpritesCount
_0809F710: .4byte gVramGraphicsCopyCursor
_0809F714: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_809F718
sub_809F718: @ 0x0809F718
	push {r4, r5, lr}
	ldr r5, _0809F74C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	bl sub_8025534
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809F754
	ldr r1, [r5]
	ldr r0, _0809F750 @ =sub_809F638
	b _0809F75C
	.align 2, 0
_0809F74C: .4byte gCurTask
_0809F750: .4byte sub_809F638
_0809F754:
	cmp r0, #1
	bne _0809F75E
	ldr r1, [r5]
	ldr r0, _0809F764 @ =sub_809F210
_0809F75C:
	str r0, [r1, #8]
_0809F75E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F764: .4byte sub_809F210

	thumb_func_start sub_809F768
sub_809F768: @ 0x0809F768
	push {r4, lr}
	ldr r0, _0809F79C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	bl sub_800214C
	ldr r2, _0809F7A0 @ =gUnknown_03001060
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r4, [r4, #4]
	adds r0, r0, r4
	adds r0, #3
	adds r2, #0x50
	strh r0, [r2]
	ldrh r0, [r2]
	bl sub_80022E8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809F79C: .4byte gCurTask
_0809F7A0: .4byte gUnknown_03001060

	thumb_func_start sub_809F7A4
sub_809F7A4: @ 0x0809F7A4
	push {lr}
	adds r0, #0xe8
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x46
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_809F7B8
sub_809F7B8: @ 0x0809F7B8
	push {lr}
	movs r1, #0x88
	lsls r1, r1, #1
	adds r2, r0, r1
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
	.align 2, 0

	thumb_func_start sub_809F7D8
sub_809F7D8: @ 0x0809F7D8
	push {lr}
	adds r2, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r2, #0x34]
	ldr r1, [r2, #0x30]
	movs r3, #0xec
	lsls r3, r3, #7
	cmp r1, r3
	ble _0809F7F8
	ldr r0, _0809F800 @ =0xFFFFF000
	adds r1, r1, r0
	str r1, [r2, #0x30]
	ldr r0, _0809F804 @ =0x000075FF
	cmp r1, r0
	bgt _0809F808
_0809F7F8:
	str r3, [r2, #0x30]
	movs r0, #1
	b _0809F80A
	.align 2, 0
_0809F800: .4byte 0xFFFFF000
_0809F804: .4byte 0x000075FF
_0809F808:
	movs r0, #0
_0809F80A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809F810
sub_809F810: @ 0x0809F810
	push {lr}
	adds r1, r0, #0
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r1, #0x24]
	ldr r2, [r1, #0x20]
	ldr r0, _0809F838 @ =0x00007CFF
	cmp r2, r0
	bgt _0809F83C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r2, r3
	str r0, [r1, #0x20]
	movs r2, #0xfa
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809F846
	str r2, [r1, #0x20]
	movs r0, #1
	b _0809F848
	.align 2, 0
_0809F838: .4byte 0x00007CFF
_0809F83C:
	movs r0, #0xfa
	lsls r0, r0, #7
	str r0, [r1, #0x20]
	movs r0, #1
	b _0809F848
_0809F846:
	movs r0, #0
_0809F848:
	pop {r1}
	bx r1

	thumb_func_start sub_809F84C
sub_809F84C: @ 0x0809F84C
	bx lr
	.align 2, 0

	thumb_func_start sub_809F850
sub_809F850: @ 0x0809F850
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0809F944 @ =gDispCnt
	ldr r2, _0809F948 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809F94C @ =sub_809FCFC
	movs r1, #0xad
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0809F950 @ =sub_80A13B0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0809F954 @ =gLoadedSaveGame
	ldr r2, _0809F958 @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4]
	movs r2, #0
	ldr r0, _0809F95C @ =0x0300001C
	adds r3, r1, r0
_0809F88A:
	lsls r0, r2, #2
	adds r0, r3, r0
	adds r1, r2, #0
	adds r1, #0xe
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0809F88A
	adds r0, r5, #0
	adds r0, #0x12
	str r0, [r4, #0x30]
	adds r0, #2
	str r0, [r4, #0x2c]
	adds r0, #3
	str r0, [r4, #0x18]
	ldrb r0, [r5, #0x17]
	movs r1, #0
	strb r0, [r4, #3]
	adds r0, r5, #0
	adds r0, #0x16
	str r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #1]
	movs r0, #1
	strh r0, [r4, #6]
	strh r1, [r4, #8]
	strh r1, [r4, #4]
	strh r1, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x50]
	str r2, [r4, #0x54]
	str r0, [r4, #0x58]
	str r2, [r4, #0x34]
	movs r0, #0x88
	lsls r0, r0, #5
	str r0, [r4, #0x38]
	str r2, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	str r1, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	str r2, [r4, #0x6c]
	movs r0, #0xaa
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	movs r0, #0xb0
	lsls r0, r0, #5
	str r0, [r4, #0x78]
	str r2, [r4, #0x5c]
	movs r1, #0x91
	lsls r1, r1, #8
	str r1, [r4, #0x60]
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x64]
	str r1, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0809F960 @ =0x06010000
	str r0, [r1]
	adds r0, r4, #0
	bl sub_809F964
	adds r0, r4, #0
	bl sub_809FBD0
	bl m4aMPlayAllStop
	movs r0, #3         @ MUS_CHARACTER_SELECT
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F944: .4byte gDispCnt
_0809F948: .4byte 0x00001541
_0809F94C: .4byte sub_809FCFC
_0809F950: .4byte sub_80A13B0
_0809F954: .4byte gLoadedSaveGame
_0809F958: .4byte 0x00000366
_0809F95C: .4byte 0x0300001C
_0809F960: .4byte 0x06010000

	thumb_func_start sub_809F964
sub_809F964: @ 0x0809F964
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, _0809FBA8 @ =0x06010000
	adds r0, #0xdc
	str r5, [r0]
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r5, r5, r1
	ldr r2, _0809FBAC @ =gUnknown_080D8D00
	ldrh r1, [r2]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xb4
	str r5, [r0]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r2, _0809FBB0 @ =gUnknown_080D8D08
	ldrb r1, [r7]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	adds r5, #0x80
	ldr r1, _0809FBB4 @ =0x00000574
	strh r1, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	subs r1, #6
	strb r1, [r0, #0x1b]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x8c
	str r5, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r5, r3
	ldr r2, _0809FBB8 @ =gUnknown_080D8F08
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x48]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _0809FBBC @ =0x0000FFC0
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r7]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldr r3, _0809FBC0 @ =gUnknown_080D8F18
	mov sl, r3
	ldrb r1, [r7, #1]
	add r1, sl
	ldrb r1, [r1]
	str r5, [r0]
	movs r3, #0xe0
	lsls r3, r3, #1
	mov sb, r3
	add r5, sb
	ldr r6, _0809FBC4 @ =gUnknown_080D8E80
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r7]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldrb r1, [r7, #1]
	add r1, sl
	ldrb r1, [r1]
	str r5, [r0]
	add r5, sb
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _0809FBC8 @ =gUnknown_080D8EF8
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #0x40
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r5, r3
	ldr r2, _0809FBCC @ =gUnknown_080D8F10
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x50]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	str r5, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FBA8: .4byte 0x06010000
_0809FBAC: .4byte gUnknown_080D8D00
_0809FBB0: .4byte gUnknown_080D8D08
_0809FBB4: .4byte 0x00000574
_0809FBB8: .4byte gUnknown_080D8F08
_0809FBBC: .4byte 0x0000FFC0
_0809FBC0: .4byte gUnknown_080D8F18
_0809FBC4: .4byte gUnknown_080D8E80
_0809FBC8: .4byte gUnknown_080D8EF8
_0809FBCC: .4byte gUnknown_080D8F10

	thumb_func_start sub_809FBD0
sub_809FBD0: @ 0x0809FBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _0809FCC0 @ =gBgCntRegs
	mov sl, r0
	movs r7, #0
	movs r4, #0
	ldr r0, _0809FCC4 @ =0x00004E07
	mov r1, sl
	strh r0, [r1]
	ldr r2, _0809FCC8 @ =gBgScrollRegs
	mov r8, r2
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, _0809FCCC @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0809FCD0 @ =0x06007000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r2, _0809FCD4 @ =gUnknown_080D8CDC
	mov sb, r2
	ldrh r1, [r2]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x2d
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r2, _0809FCD8 @ =0x0000021E
	adds r1, r5, r2
	strb r7, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0809FCDC @ =0x0000030E
	mov r1, sl
	strh r0, [r1, #2]
	mov r2, r8
	strh r4, [r2, #4]
	strh r4, [r2, #6]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _0809FCE0 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0809FCE4 @ =0x06001800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	mov r2, sb
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x10
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _0809FCE8 @ =0x0000025E
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0809FCEC @ =0x00001B89
	mov r1, sl
	strh r0, [r1, #4]
	mov r2, r8
	strh r4, [r2, #8]
	strh r4, [r2, #0xa]
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _0809FCF0 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0809FCF4 @ =0x0600D800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldrb r1, [r5, #1]
	adds r1, #5
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _0809FCF8 @ =0x0000029E
	adds r5, r5, r2
	strb r7, [r5]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FCC0: .4byte gBgCntRegs
_0809FCC4: .4byte 0x00004E07
_0809FCC8: .4byte gBgScrollRegs
_0809FCCC: .4byte 0x06004000
_0809FCD0: .4byte 0x06007000
_0809FCD4: .4byte gUnknown_080D8CDC
_0809FCD8: .4byte 0x0000021E
_0809FCDC: .4byte 0x0000030E
_0809FCE0: .4byte 0x0600C000
_0809FCE4: .4byte 0x06001800
_0809FCE8: .4byte 0x0000025E
_0809FCEC: .4byte 0x00001B89
_0809FCF0: .4byte 0x06008000
_0809FCF4: .4byte 0x0600D800
_0809FCF8: .4byte 0x0000029E

	thumb_func_start sub_809FCFC
sub_809FCFC: @ 0x0809FCFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0809FDEC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r0, r7, #0
	bl sub_80A19C0
	adds r0, r7, #0
	bl sub_80A1030
	adds r0, r7, #0
	bl sub_80A10B0
	adds r0, r7, #0
	bl sub_80A1110
	adds r0, r7, #0
	bl sub_80A11B8
	ldr r1, _0809FDF0 @ =0x03000001
	adds r0, r5, r1
	ldr r2, _0809FDF4 @ =0x03000003
	adds r1, r5, r2
	ldr r3, _0809FDF8 @ =0x0300004C
	adds r2, r5, r3
	ldr r4, _0809FDFC @ =0x03000050
	adds r3, r5, r4
	ldr r6, _0809FE00 @ =0x03000084
	adds r4, r5, r6
	ldr r4, [r4]
	str r4, [sp]
	bl sub_809BF3C
	ldr r1, _0809FE04 @ =0x03000088
	adds r5, r5, r1
	str r0, [r5]
	ldr r5, _0809FE08 @ =gPlayers
	adds r3, r5, #0
	adds r3, #0x2a
	ldrb r1, [r3]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r1, [r4]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r6, #2
	orrs r0, r6
	strb r0, [r4]
	movs r0, #0xbd
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _0809FE0C @ =0x0000017B
	adds r4, r5, r1
	ldrb r0, [r4]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _0809FE10 @ =0x000002CA
	adds r4, r5, r0
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r4]
	ldr r1, _0809FE14 @ =0x000002CB
	adds r4, r5, r1
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r4]
	ldr r4, _0809FE18 @ =0x0000041A
	adds r1, r5, r4
	ldrb r0, [r1]
	ands r2, r0
	orrs r2, r6
	strb r2, [r1]
	ldr r6, _0809FE1C @ =0x0000041B
	adds r1, r5, r6
	ldrb r0, [r1]
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	strb r3, [r1]
	movs r4, #0
	movs r6, #0x1d
	rsbs r6, r6, #0
_0809FDC6:
	ldr r0, _0809FE20 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r4
	bne _0809FE24
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r1, r6, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	b _0809FE4E
	.align 2, 0
_0809FDEC: .4byte gCurTask
_0809FDF0: .4byte 0x03000001
_0809FDF4: .4byte 0x03000003
_0809FDF8: .4byte 0x0300004C
_0809FDFC: .4byte 0x03000050
_0809FE00: .4byte 0x03000084
_0809FE04: .4byte 0x03000088
_0809FE08: .4byte gPlayers
_0809FE0C: .4byte 0x0000017B
_0809FE10: .4byte 0x000002CA
_0809FE14: .4byte 0x000002CB
_0809FE18: .4byte 0x0000041A
_0809FE1C: .4byte 0x0000041B
_0809FE20: .4byte gStageData
_0809FE24:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, r1, r5
	adds r3, r1, #0
	adds r3, #0x2b
	ldrb r2, [r3]
	adds r0, r6, #0
	ands r0, r2
	movs r2, #0xc
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x2a
	lsls r3, r4, #4
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
_0809FE4E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0809FDC6
	ldr r1, [r7, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _0809FE84
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r7, #0x18]
	ldrb r0, [r0]
	strb r0, [r7, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
	ldr r0, _0809FE7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FE80 @ =sub_80A13F4
	b _0809FE9E
	.align 2, 0
_0809FE7C: .4byte gCurTask
_0809FE80: .4byte sub_80A13F4
_0809FE84:
	cmp r0, #0x22
	bne _0809FE98
	ldr r0, _0809FE90 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FE94 @ =sub_80A14AC
	b _0809FE9E
	.align 2, 0
_0809FE90: .4byte gCurTask
_0809FE94: .4byte sub_80A14AC
_0809FE98:
	ldr r0, _0809FEA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FEAC @ =sub_809FEB0
_0809FE9E:
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FEA8: .4byte gCurTask
_0809FEAC: .4byte sub_809FEB0

	thumb_func_start sub_809FEB0
sub_809FEB0: @ 0x0809FEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _0809FED8 @ =gCurTask
	ldr r2, [r7]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _0809FEDC @ =gStageData
	ldrb r5, [r0, #6]
	movs r6, #0
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x22
	bne _0809FEE4
	ldr r0, _0809FEE0 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A006C
	.align 2, 0
_0809FED8: .4byte gCurTask
_0809FEDC: .4byte gStageData
_0809FEE0: .4byte sub_80A14AC
_0809FEE4:
	cmp r0, #0x23
	bne _0809FF1C
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	strb r0, [r4, #2]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	ldr r1, [r7]
	ldr r0, _0809FF18 @ =sub_80A13F4
	b _080A006A
	.align 2, 0
_0809FF18: .4byte sub_80A13F4
_0809FF1C:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #1
	bhi _0809FF7C
	ldrb r0, [r4, #1]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _0809FF7C
	movs r5, #0
	ldr r0, _0809FF98 @ =gUnknown_030010AC
	mov sb, r0
	ldr r0, _0809FF9C @ =gUnknown_080D8F18
	mov r8, r0
_0809FF50:
	asrs r0, r7, #0x10
	cmp r0, r5
	beq _0809FF72
	mov r0, sb
	adds r1, r5, r0
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0809FF72
	adds r0, r4, #0
	bl sub_80A1A28
_0809FF72:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0809FF50
_0809FF7C:
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _0809FFA8
	ldr r1, [r4, #0x14]
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r0, _0809FFA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FFA4 @ =sub_80A021C
	b _080A006A
	.align 2, 0
_0809FF98: .4byte gUnknown_030010AC
_0809FF9C: .4byte gUnknown_080D8F18
_0809FFA0: .4byte gCurTask
_0809FFA4: .4byte sub_80A021C
_0809FFA8:
	ldrb r0, [r4, #1]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	beq _0809FFF6
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0809FFCE
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq _0809FFEC
_0809FFCE:
	ldrb r0, [r4, #1]
	ldr r2, [r4, #0x30]
	cmp r0, #4
	bne _0809FFE2
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0809FFE2
	movs r6, #2
	b _0809FFFA
_0809FFE2:
	ldrb r1, [r4, #1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	ble _0809FFF0
_0809FFEC:
	movs r6, #1
	b _0809FFFA
_0809FFF0:
	cmp r1, r0
	bge _0809FFF6
	movs r6, #2
_0809FFF6:
	cmp r6, #0
	beq _080A0002
_0809FFFA:
	adds r0, r4, #0
	bl sub_80A18B8
	b _080A000E
_080A0002:
	adds r0, r4, #0
	bl sub_80A18E0
	adds r0, r4, #0
	bl sub_80A1030
_080A000E:
	cmp r6, #1
	beq _080A0018
	cmp r6, #2
	beq _080A0048
	b _080A006C
_080A0018:
	adds r0, r4, #0
	bl sub_80A14E4
	cmp r0, #1
	bne _080A006C
	ldr r0, _080A003C @ =0xFFFFC400
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80A0DC8
	ldr r0, _080A0040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0044 @ =sub_80A0080
	b _080A006A
	.align 2, 0
_080A003C: .4byte 0xFFFFC400
_080A0040: .4byte gCurTask
_080A0044: .4byte sub_80A0080
_080A0048:
	adds r0, r4, #0
	bl sub_80A1540
	cmp r0, #1
	bne _080A006C
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80A0DC8
	ldr r0, _080A0078 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A007C @ =sub_80A010C
_080A006A:
	str r0, [r1, #8]
_080A006C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0078: .4byte gCurTask
_080A007C: .4byte sub_80A010C

	thumb_func_start sub_80A0080
sub_80A0080: @ 0x080A0080
	push {r4, r5, lr}
	ldr r5, _080A009C @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A00A4
	ldr r0, _080A00A0 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A00FE
	.align 2, 0
_080A009C: .4byte gCurTask
_080A00A0: .4byte sub_80A14AC
_080A00A4:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A15E8
	cmp r0, #1
	bne _080A00DC
	adds r0, r4, #0
	bl sub_80A1888
	adds r1, r0, #0
	cmp r1, #1
	bne _080A00DC
	ldr r0, [r4, #0x14]
	strb r1, [r0]
	ldr r1, [r5]
	ldr r0, _080A00D8 @ =sub_809FEB0
	b _080A00FC
	.align 2, 0
_080A00D8: .4byte sub_809FEB0
_080A00DC:
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _080A00FE
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	ldr r0, _080A0104 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0108 @ =sub_80A13F4
_080A00FC:
	str r0, [r1, #8]
_080A00FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0104: .4byte gCurTask
_080A0108: .4byte sub_80A13F4

	thumb_func_start sub_80A010C
sub_80A010C: @ 0x080A010C
	push {r4, r5, lr}
	ldr r5, _080A0128 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0130
	ldr r0, _080A012C @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A018A
	.align 2, 0
_080A0128: .4byte gCurTask
_080A012C: .4byte sub_80A14AC
_080A0130:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A1598
	cmp r0, #1
	bne _080A0168
	adds r0, r4, #0
	bl sub_80A1888
	adds r1, r0, #0
	cmp r1, #1
	bne _080A0168
	ldr r0, [r4, #0x14]
	strb r1, [r0]
	ldr r1, [r5]
	ldr r0, _080A0164 @ =sub_809FEB0
	b _080A0188
	.align 2, 0
_080A0164: .4byte sub_809FEB0
_080A0168:
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _080A018A
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	ldr r0, _080A0190 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0194 @ =sub_80A13F4
_080A0188:
	str r0, [r1, #8]
_080A018A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0190: .4byte gCurTask
_080A0194: .4byte sub_80A13F4

	thumb_func_start sub_80A0198
sub_80A0198: @ 0x080A0198
	push {r4, r5, r6, lr}
	ldr r6, _080A01B8 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A01C0
	ldr r0, _080A01BC @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0210
	.align 2, 0
_080A01B8: .4byte gCurTask
_080A01BC: .4byte sub_80A14AC
_080A01C0:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	bl sub_80A1694
	cmp r0, #1
	bne _080A01EA
	movs r5, #1
_080A01EA:
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_80A1740
	cmp r0, #1
	bne _080A01FC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A01FC:
	cmp r5, #2
	bne _080A0210
	movs r0, #0x1d
	strb r0, [r4, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x54]
	ldr r1, [r6]
	ldr r0, _080A0218 @ =sub_80A1430
	str r0, [r1, #8]
_080A0210:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0218: .4byte sub_80A1430

	thumb_func_start sub_80A021C
sub_80A021C: @ 0x080A021C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080A023C @ =gCurTask
	ldr r1, [r6]
	ldrh r4, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0244
	ldr r0, _080A0240 @ =sub_80A14AC
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A023C: .4byte gCurTask
_080A0240: .4byte sub_80A14AC
_080A0244:
	cmp r0, #0xd
	bne _080A02EC
	ldr r1, _080A02D4 @ =0x030000B4
	adds r0, r4, r1
	ldr r2, _080A02D8 @ =gUnknown_080D8D08
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r5, #0x6c]
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #1]
	strb r0, [r5, #2]
	ldr r0, [r5, #0x30]
	ldrb r0, [r0]
	strb r0, [r5, #1]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r5, #0x74]
	adds r0, r5, #0
	bl sub_80A0EA8
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0x58]
	ldr r2, _080A02DC @ =0x03000002
	adds r0, r4, r2
	ldr r3, _080A02E0 @ =0x03000003
	adds r1, r4, r3
	ldr r7, _080A02E4 @ =0x03000054
	adds r2, r4, r7
	adds r7, #4
	adds r3, r4, r7
	adds r7, #0x30
	adds r4, r4, r7
	ldr r4, [r4]
	str r4, [sp]
	bl sub_809BF3C
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_80A19C0
	adds r0, r5, #0
	bl sub_80A1A04
	adds r0, r5, #0
	bl sub_80A10B0
	ldr r1, [r6]
	ldr r0, _080A02E8 @ =sub_80A0344
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A02D4: .4byte 0x030000B4
_080A02D8: .4byte gUnknown_080D8D08
_080A02DC: .4byte 0x03000002
_080A02E0: .4byte 0x03000003
_080A02E4: .4byte 0x03000054
_080A02E8: .4byte sub_80A0344
_080A02EC:
	cmp r0, #2
	bne _080A0324
	adds r0, r5, #0
	bl sub_80A19C0
	adds r0, r5, #0
	bl sub_80A1A04
	adds r0, r5, #0
	bl sub_80A10B0
	adds r0, r5, #0
	bl sub_80A1110
	ldr r0, [r5, #0x14]
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0x18]
	strb r1, [r0]
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	strb r0, [r5, #3]
	ldr r1, [r6]
	ldr r0, _080A0320 @ =sub_809FEB0
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A0320: .4byte sub_809FEB0
_080A0324:
	adds r0, r5, #0
	bl sub_80A19C0
	adds r0, r5, #0
	bl sub_80A1A04
	adds r0, r5, #0
	bl sub_80A10B0
	adds r0, r5, #0
	bl sub_80A1110
_080A033C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A0344
sub_80A0344: @ 0x080A0344
	push {r4, r5, r6, lr}
	ldr r6, _080A0364 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A036C
	ldr r0, _080A0368 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A03EE
	.align 2, 0
_080A0364: .4byte gCurTask
_080A0368: .4byte sub_80A14AC
_080A036C:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	bl sub_80A1798
	cmp r0, #1
	bne _080A0396
	movs r5, #1
_080A0396:
	adds r0, r4, #0
	bl sub_80A17FC
	cmp r0, #1
	bne _080A03A6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A03A6:
	adds r0, r4, #0
	bl sub_80A1668
	cmp r0, #1
	bne _080A03B6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A03B6:
	adds r0, r4, #0
	bl sub_80A163C
	cmp r0, #1
	bne _080A03C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A03C6:
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x64]
	cmp r5, #4
	bne _080A03EE
	adds r0, r4, #0
	bl sub_80A1908
	cmp r0, #1
	bne _080A03EE
	ldr r1, [r4, #0x18]
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r1, [r6]
	ldr r0, _080A03F4 @ =sub_80A03F8
	str r0, [r1, #8]
_080A03EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A03F4: .4byte sub_80A03F8

	thumb_func_start sub_80A03F8
sub_80A03F8: @ 0x080A03F8
	push {r4, r5, r6, lr}
	ldr r6, _080A0418 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0420
	ldr r0, _080A041C @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A04C8
	.align 2, 0
_080A0418: .4byte gCurTask
_080A041C: .4byte sub_80A14AC
_080A0420:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	ldr r1, [r4, #0x18]
	ldrb r0, [r4, #3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A04C8
	adds r0, r4, #0
	bl sub_80A1798
	cmp r0, #1
	bne _080A0454
	movs r5, #1
_080A0454:
	adds r0, r4, #0
	bl sub_80A17FC
	cmp r0, #1
	bne _080A0464
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0464:
	adds r0, r4, #0
	bl sub_80A1668
	cmp r0, #1
	bne _080A0474
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0474:
	adds r0, r4, #0
	bl sub_80A163C
	cmp r0, #1
	bne _080A0484
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0484:
	adds r0, r4, #0
	bl sub_80A1908
	cmp r0, #1
	bne _080A0494
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0494:
	cmp r5, #5
	bne _080A04C8
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080A04D0 @ =0x00010500
	str r0, [r4, #0x74]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x7c]
	movs r1, #0xb4
	lsls r1, r1, #8
	str r1, [r4, #0x6c]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	str r1, [r4, #0x4c]
	movs r0, #0x91
	lsls r0, r0, #8
	str r0, [r4, #0x68]
	ldr r1, [r6]
	ldr r0, _080A04D4 @ =sub_80A0644
	str r0, [r1, #8]
_080A04C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A04D0: .4byte 0x00010500
_080A04D4: .4byte sub_80A0644

	thumb_func_start sub_80A04D8
sub_80A04D8: @ 0x080A04D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A0504 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080A0508 @ =gStageData
	ldrb r7, [r0, #6]
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0510
	ldr r0, _080A050C @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0638
	.align 2, 0
_080A0504: .4byte gCurTask
_080A0508: .4byte gStageData
_080A050C: .4byte sub_80A14AC
_080A0510:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #1
	bhi _080A0540
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r6, r1
	lsrs r7, r0, #0x10
_080A0540:
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _080A0550
	ldr r0, [r4, #0x14]
	mov r1, r8
	strb r1, [r0]
	b _080A0638
_080A0550:
	movs r5, #0
	lsls r6, r7, #0x10
	ldr r0, _080A05A4 @ =gUnknown_030010AC
	mov sb, r0
	ldr r7, _080A05A8 @ =gUnknown_080D8F18
_080A055A:
	asrs r0, r6, #0x10
	cmp r0, r5
	beq _080A057C
	mov r0, sb
	adds r1, r5, r0
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r7
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080A057C
	adds r0, r4, #0
	bl sub_80A1A28
_080A057C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080A055A
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x14
	bne _080A05B4
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	ldrb r0, [r1]
	strb r0, [r4, #3]
	ldr r0, _080A05AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A05B0 @ =sub_80A06E8
	str r0, [r1, #8]
	b _080A0638
	.align 2, 0
_080A05A4: .4byte gUnknown_030010AC
_080A05A8: .4byte gUnknown_080D8F18
_080A05AC: .4byte gCurTask
_080A05B0: .4byte sub_80A06E8
_080A05B4:
	cmp r0, #0x13
	bne _080A05BE
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1]
_080A05BE:
	ldrb r0, [r4, #1]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	beq _080A0624
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_80A1694
	cmp r0, #1
	bne _080A05E6
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A05E6:
	adds r0, r4, #0
	bl sub_80A1938
	cmp r0, #1
	bne _080A05FA
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A05FA:
	mov r1, r8
	cmp r1, #2
	bne _080A0638
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80A0DC8
	ldr r0, _080A061C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0620 @ =sub_80A0644
	str r0, [r1, #8]
	b _080A0638
	.align 2, 0
_080A061C: .4byte gCurTask
_080A0620: .4byte sub_80A0644
_080A0624:
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A0638
	adds r0, r4, #0
	bl sub_80A18E0
	adds r0, r4, #0
	bl sub_80A1030
_080A0638:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A0644
sub_80A0644: @ 0x080A0644
	push {r4, r5, lr}
	ldr r0, _080A0664 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A066C
	ldr r0, _080A0668 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A06DA
	.align 2, 0
_080A0664: .4byte gCurTask
_080A0668: .4byte sub_80A14AC
_080A066C:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	bl sub_80A16EC
	cmp r0, #1
	bne _080A0696
	movs r5, #1
_080A0696:
	ldr r1, [r4, #0x68]
	movs r2, #0x91
	lsls r2, r2, #8
	cmp r1, r2
	ble _080A06AC
	ldr r0, _080A06B4 @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r4, #0x68]
	ldr r0, _080A06B8 @ =0x000090FF
	cmp r1, r0
	bgt _080A06BC
_080A06AC:
	str r2, [r4, #0x68]
	movs r0, #1
	b _080A06BE
	.align 2, 0
_080A06B4: .4byte 0xFFFFFA00
_080A06B8: .4byte 0x000090FF
_080A06BC:
	movs r0, #0
_080A06BE:
	cmp r0, #1
	bne _080A06C8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A06C8:
	cmp r5, #2
	bne _080A06DA
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080A06E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A06E4 @ =sub_80A04D8
	str r0, [r1, #8]
_080A06DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A06E0: .4byte gCurTask
_080A06E4: .4byte sub_80A04D8

	thumb_func_start sub_80A06E8
sub_80A06E8: @ 0x080A06E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A0704 @ =gCurTask
	ldr r1, [r7]
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A070C
	ldr r0, _080A0708 @ =sub_80A14AC
	b _080A07A0
	.align 2, 0
_080A0704: .4byte gCurTask
_080A0708: .4byte sub_80A14AC
_080A070C:
	ldr r0, _080A07A8 @ =gBgSprites_Unknown1
	movs r3, #0
	strb r3, [r0, #2]
	ldr r1, _080A07AC @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r5, #0x6c]
	movs r0, #0xb0
	lsls r0, r0, #5
	str r0, [r5, #0x70]
	ldr r1, _080A07B0 @ =gBgScrollRegs
	movs r4, #0
	movs r0, #0x8e
	strh r0, [r1, #8]
	ldr r0, _080A07B4 @ =0x0000FFEA
	strh r0, [r1, #0xa]
	ldr r1, _080A07B8 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080A07BC @ =gBgCntRegs
	ldr r0, _080A07C0 @ =0x00001B09
	strh r0, [r1, #4]
	ldr r1, _080A07C4 @ =0x03000274
	adds r0, r6, r1
	ldr r2, _080A07C8 @ =gUnknown_080D8F18
	ldrb r1, [r5, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _080A07CC @ =0x06008000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _080A07D0 @ =0x0600D800
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _080A07D4 @ =gUnknown_080D8CDC
	adds r1, #0xa
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A07D8 @ =0x0300029E
	adds r1, r6, r2
	strb r4, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	adds r0, r5, #0
	bl sub_80A10B0
	adds r0, r5, #0
	bl sub_80A1110
	adds r0, r5, #0
	bl sub_80A11B8
	ldr r1, [r7]
	ldr r0, _080A07DC @ =sub_80A07E0
_080A07A0:
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A07A8: .4byte gBgSprites_Unknown1
_080A07AC: .4byte gBgSprites_Unknown2
_080A07B0: .4byte gBgScrollRegs
_080A07B4: .4byte 0x0000FFEA
_080A07B8: .4byte gDispCnt
_080A07BC: .4byte gBgCntRegs
_080A07C0: .4byte 0x00001B09
_080A07C4: .4byte 0x03000274
_080A07C8: .4byte gUnknown_080D8F18
_080A07CC: .4byte 0x06008000
_080A07D0: .4byte 0x0600D800
_080A07D4: .4byte gUnknown_080D8CDC
_080A07D8: .4byte 0x0300029E
_080A07DC: .4byte sub_80A07E0

	thumb_func_start sub_80A07E0
sub_80A07E0: @ 0x080A07E0
	push {r4, r5, r6, lr}
	ldr r6, _080A0800 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0808
	ldr r0, _080A0804 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0872
	.align 2, 0
_080A0800: .4byte gCurTask
_080A0804: .4byte sub_80A14AC
_080A0808:
	adds r0, r4, #0
	bl sub_80A137C
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	movs r1, #0x5a
	bl sub_80A1740
	cmp r0, #1
	bne _080A082E
	movs r5, #1
_080A082E:
	adds r0, r4, #0
	bl sub_80A1768
	cmp r0, #1
	bne _080A083E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A083E:
	adds r0, r4, #0
	bl sub_80A185C
	cmp r0, #1
	bne _080A084E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A084E:
	adds r0, r4, #0
	bl sub_80A182C
	cmp r0, #1
	bne _080A085E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A085E:
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4c]
	adds r0, #5
	str r0, [r4, #0x64]
	cmp r5, #4
	bne _080A0872
	ldr r1, [r6]
	ldr r0, _080A0878 @ =sub_80A087C
	str r0, [r1, #8]
_080A0872:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0878: .4byte sub_80A087C

	thumb_func_start sub_80A087C
sub_80A087C: @ 0x080A087C
	push {r4, r5, lr}
	ldr r5, _080A0898 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A08A0
	ldr r0, _080A089C @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0942
	.align 2, 0
_080A0898: .4byte gCurTask
_080A089C: .4byte sub_80A14AC
_080A08A0:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A08FA
	ldr r2, _080A0918 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A091C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A0920 @ =gBldRegs
	ldr r0, _080A0924 @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
_080A08FA:
	ldr r1, _080A0920 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A0928
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A0942
	.align 2, 0
_080A0918: .4byte gDispCnt
_080A091C: .4byte gWinRegs
_080A0920: .4byte gBldRegs
_080A0924: .4byte 0x00003FBF
_080A0928:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r4, #0x18]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	movs r0, #1
	strh r0, [r4, #6]
	ldr r1, [r5]
	ldr r0, _080A0948 @ =sub_80A094C
	str r0, [r1, #8]
_080A0942:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0948: .4byte sub_80A094C

	thumb_func_start sub_80A094C
sub_80A094C: @ 0x080A094C
	push {r4, r5, r6, lr}
	ldr r6, _080A0968 @ =gCurTask
	ldr r1, [r6]
	ldrh r5, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0970
	ldr r0, _080A096C @ =sub_80A14AC
	b _080A09D2
	.align 2, 0
_080A0968: .4byte gCurTask
_080A096C: .4byte sub_80A14AC
_080A0970:
	ldr r1, _080A09DC @ =gDispCnt
	ldr r2, _080A09E0 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080A09E4 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080A09E8 @ =0x00001B89
	strh r0, [r1, #4]
	ldr r0, _080A09EC @ =gBgScrollRegs
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x6c]
	movs r0, #0xaa
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	ldr r1, _080A09F0 @ =0x03000274
	adds r0, r5, r1
	ldr r1, _080A09F4 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A09F8 @ =0x0600D800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A09FC @ =gUnknown_080D8CDC
	ldrh r1, [r1, #0x1e]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A0A00 @ =0x0300029E
	adds r1, r5, r2
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	adds r0, r4, #0
	bl sub_80A0A08
	ldr r1, [r6]
	ldr r0, _080A0A04 @ =sub_80A0ADC
_080A09D2:
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A09DC: .4byte gDispCnt
_080A09E0: .4byte 0x00001541
_080A09E4: .4byte gBgCntRegs
_080A09E8: .4byte 0x00001B89
_080A09EC: .4byte gBgScrollRegs
_080A09F0: .4byte 0x03000274
_080A09F4: .4byte 0x06008000
_080A09F8: .4byte 0x0600D800
_080A09FC: .4byte gUnknown_080D8CDC
_080A0A00: .4byte 0x0300029E
_080A0A04: .4byte sub_80A0ADC

	thumb_func_start sub_80A0A08
sub_80A0A08: @ 0x080A0A08
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, _080A0A78 @ =gUnknown_080D8F00
	ldrh r1, [r2]
	movs r3, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r7, r6, #0
	adds r7, #0xb4
	ldr r1, _080A0A7C @ =gUnknown_080D8F18
	ldrb r0, [r6, #2]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldrb r0, [r6, #1]
	adds r0, r0, r1
	ldrb r5, [r0]
	cmp r4, #4
	bhi _080A0A5E
	cmp r5, #4
	bls _080A0A62
_080A0A5E:
	bl sub_802613C
_080A0A62:
	cmp r4, #0
	beq _080A0A6A
	cmp r5, #0
	bne _080A0A98
_080A0A6A:
	cmp r4, #2
	beq _080A0A72
	cmp r5, #2
	bne _080A0A80
_080A0A72:
	movs r4, #4
	b _080A0AAE
	.align 2, 0
_080A0A78: .4byte gUnknown_080D8F00
_080A0A7C: .4byte gUnknown_080D8F18
_080A0A80:
	cmp r4, #3
	beq _080A0A88
	cmp r5, #3
	bne _080A0A8C
_080A0A88:
	movs r4, #6
	b _080A0AAE
_080A0A8C:
	cmp r4, #4
	beq _080A0A94
	cmp r5, #4
	bne _080A0AAC
_080A0A94:
	movs r4, #3
	b _080A0AAE
_080A0A98:
	cmp r4, #4
	bne _080A0AA0
	cmp r5, #1
	beq _080A0AA8
_080A0AA0:
	cmp r4, #1
	bne _080A0AAC
	cmp r5, #4
	bne _080A0AAC
_080A0AA8:
	movs r4, #5
	b _080A0AAE
_080A0AAC:
	movs r4, #2
_080A0AAE:
	ldr r1, _080A0AD8 @ =gUnknown_080D8D08
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r4, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r4, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0AD8: .4byte gUnknown_080D8D08

	thumb_func_start sub_80A0ADC
sub_80A0ADC: @ 0x080A0ADC
	push {r4, r5, lr}
	ldr r5, _080A0AF8 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0B00
	ldr r0, _080A0AFC @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0B90
	.align 2, 0
_080A0AF8: .4byte gCurTask
_080A0AFC: .4byte sub_80A14AC
_080A0B00:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A124C
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A0B54
	ldr r2, _080A0B70 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A0B74 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A0B78 @ =gBldRegs
	ldr r0, _080A0B7C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	strh r3, [r4, #6]
_080A0B54:
	ldr r2, _080A0B78 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080A0B84
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	ldr r1, _080A0B80 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A0B90
	.align 2, 0
_080A0B70: .4byte gDispCnt
_080A0B74: .4byte gWinRegs
_080A0B78: .4byte gBldRegs
_080A0B7C: .4byte 0x00003FBF
_080A0B80: .4byte 0xFFFFFF00
_080A0B84:
	movs r0, #1
	strh r0, [r4, #6]
	strh r1, [r2, #4]
	ldr r1, [r5]
	ldr r0, _080A0B98 @ =sub_80A0B9C
	str r0, [r1, #8]
_080A0B90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0B98: .4byte sub_80A0B9C

	thumb_func_start sub_80A0B9C
sub_80A0B9C: @ 0x080A0B9C
	push {r4, r5, r6, lr}
	ldr r0, _080A0BC8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _080A0BCC @ =gUnknown_080D8F18
	ldrb r0, [r4, #2]
	adds r0, r0, r1
	ldrb r5, [r0]
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r6, [r0]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0BD4
	ldr r0, _080A0BD0 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0C44
	.align 2, 0
_080A0BC8: .4byte gCurTask
_080A0BCC: .4byte gUnknown_080D8F18
_080A0BD0: .4byte sub_80A14AC
_080A0BD4:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A124C
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080A0C08
	ldr r1, _080A0C00 @ =gAnnouncerSelect1st
	ldr r0, _080A0C04 @ =gCharacterSelectOrderLUT
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	b _080A0C2E
	.align 2, 0
_080A0C00: .4byte gAnnouncerSelect1st
_080A0C04: .4byte gCharacterSelectOrderLUT
_080A0C08:
	cmp r0, #0x3c
	bne _080A0C18
	ldr r0, _080A0C14 @ =0x000001FF @ VOICE__ANNOUNCER__AND
	bl m4aSongNumStart
	b _080A0C2E
	.align 2, 0
_080A0C14: .4byte 0x000001FF
_080A0C18:
	cmp r0, #0x5a
	bne _080A0C2E
	ldr r1, _080A0C4C @ =gAnnouncerSelect2nd
	ldr r0, _080A0C50 @ =gCharacterSelectOrderLUT
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
_080A0C2E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A0C44
	ldr r0, _080A0C54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0C58 @ =sub_80A0C5C
	str r0, [r1, #8]
_080A0C44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0C4C: .4byte gAnnouncerSelect2nd
_080A0C50: .4byte gCharacterSelectOrderLUT
_080A0C54: .4byte gCurTask
_080A0C58: .4byte sub_80A0C5C

	thumb_func_start sub_80A0C5C
sub_80A0C5C: @ 0x080A0C5C
	push {r4, r5, lr}
	ldr r5, _080A0C78 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0C80
	ldr r0, _080A0C7C @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0D16
	.align 2, 0
_080A0C78: .4byte gCurTask
_080A0C7C: .4byte sub_80A14AC
_080A0C80:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A124C
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A0CCC
	ldr r2, _080A0CE8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A0CEC @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A0CF0 @ =gBldRegs
	ldr r0, _080A0CF4 @ =0x00003FFF
	strh r0, [r1]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
_080A0CCC:
	ldr r1, _080A0CF0 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A0CF8
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A0D16
	.align 2, 0
_080A0CE8: .4byte gDispCnt
_080A0CEC: .4byte gWinRegs
_080A0CF0: .4byte gBldRegs
_080A0CF4: .4byte 0x00003FFF
_080A0CF8:
	movs r2, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	movs r1, #0x1d
	strb r1, [r4, #3]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
	strh r2, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A0D1C @ =sub_80A13B4
	str r0, [r1, #8]
_080A0D16:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0D1C: .4byte sub_80A13B4

	thumb_func_start sub_80A0D20
sub_80A0D20: @ 0x080A0D20
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A0D3C @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0D44
	ldr r0, _080A0D40 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A0DA0
	.align 2, 0
_080A0D3C: .4byte gCurTask
_080A0D40: .4byte sub_80A14AC
_080A0D44:
	movs r4, #0
	ldr r0, _080A0DA8 @ =gPlayers
	mov ip, r0
	ldr r6, _080A0DAC @ =gUnknown_030010AC
	movs r7, #0x10
	rsbs r7, r7, #0
	movs r5, #0xf
_080A0D52:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, ip
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r1, #0x2a
	adds r2, r5, #0
	ands r2, r0
	ldrb r3, [r1]
	adds r0, r7, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080A0D52
	ldr r1, _080A0DB0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080A0DB4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080A0DB8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080A0DBC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080A0DC0 @ =gVramGraphicsCopyCursor
	ldr r0, _080A0DC4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_809BFE8
_080A0DA0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0DA8: .4byte gPlayers
_080A0DAC: .4byte gUnknown_030010AC
_080A0DB0: .4byte 0x0000FFFF
_080A0DB4: .4byte gBackgroundsCopyQueueCursor
_080A0DB8: .4byte gBackgroundsCopyQueueIndex
_080A0DBC: .4byte gBgSpritesCount
_080A0DC0: .4byte gVramGraphicsCopyCursor
_080A0DC4: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80A0DC8
sub_80A0DC8: @ 0x080A0DC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _080A0E48 @ =gUnknown_080D8F18
	ldrb r1, [r4, #1]
	adds r1, r1, r2
	ldrb r6, [r1]
	adds r7, r6, #0
	movs r5, #0
	ldr r1, _080A0E4C @ =0x06008000
	str r1, [r0, #4]
	movs r3, #0
	strh r5, [r0, #0xa]
	ldr r1, _080A0E50 @ =0x0600D800
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	ldr r2, _080A0E54 @ =gUnknown_080D8CDC
	adds r1, r6, #5
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A0E58 @ =0x0000029E
	adds r1, r4, r2
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	movs r5, #7
	cmp r0, #0xb
	bhi _080A0E28
	movs r5, #6
_080A0E28:
	ldr r4, _080A0E5C @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _080A0E64
	lsls r0, r6, #5
	ldr r1, _080A0E60 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	lsls r1, r5, #4
	movs r2, #0x10
	bl CopyPalette
	b _080A0E82
	.align 2, 0
_080A0E48: .4byte gUnknown_080D8F18
_080A0E4C: .4byte 0x06008000
_080A0E50: .4byte 0x0600D800
_080A0E54: .4byte gUnknown_080D8CDC
_080A0E58: .4byte 0x0000029E
_080A0E5C: .4byte gFlags
_080A0E60: .4byte gUnknown_08E2EE50
_080A0E64:
	ldr r2, _080A0E94 @ =0x040000D4
	lsls r0, r7, #5
	ldr r1, _080A0E98 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r5, #5
	ldr r1, _080A0E9C @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080A0EA0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r4]
_080A0E82:
	ldr r0, _080A0EA4 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0E94: .4byte 0x040000D4
_080A0E98: .4byte gUnknown_08E2EE50
_080A0E9C: .4byte gObjPalette
_080A0EA0: .4byte 0x80000010
_080A0EA4: .4byte gFlags

	thumb_func_start sub_80A0EA8
sub_80A0EA8: @ 0x080A0EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _080A0EDC @ =gUnknown_080D8F18
	ldrb r1, [r7, #1]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r4, _080A0EE0 @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _080A0EE8
	lsls r0, r1, #5
	ldr r1, _080A0EE4 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	movs r1, #0x70
	movs r2, #0x10
	bl CopyPalette
	b _080A0F02
	.align 2, 0
_080A0EDC: .4byte gUnknown_080D8F18
_080A0EE0: .4byte gFlags
_080A0EE4: .4byte gUnknown_08E2EE50
_080A0EE8:
	ldr r2, _080A0FDC @ =0x040000D4
	lsls r0, r1, #5
	ldr r1, _080A0FE0 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _080A0FE4 @ =gObjPalette + 0xE0
	str r0, [r2, #4]
	ldr r0, _080A0FE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r4]
_080A0F02:
	ldr r2, _080A0FEC @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080A0FF0 @ =gDispCnt
	ldr r2, _080A0FF4 @ =0x00001741
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A0FF8 @ =gBgSprites_Unknown1
	movs r4, #0
	strb r4, [r0, #1]
	ldr r1, _080A0FFC @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x40
	strb r0, [r1, #7]
	ldr r0, _080A1000 @ =gBgCntRegs
	mov sl, r0
	ldr r0, _080A1004 @ =0x0000030E
	mov r1, sl
	strh r0, [r1, #2]
	ldr r6, _080A1008 @ =gBgScrollRegs
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, _080A100C @ =gUnknown_080D8F18
	mov r8, r1
	ldrb r1, [r7, #2]
	add r1, r8
	ldrb r1, [r1]
	ldr r2, _080A1010 @ =0x0600C000
	str r2, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r2, _080A1014 @ =0x06001800
	str r2, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r2, _080A1018 @ =gUnknown_080D8CDC
	mov sb, r2
	adds r1, #0xa
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x10
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	ldr r2, _080A101C @ =0x0000025E
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080A1020 @ =0x00001B89
	mov r1, sl
	strh r0, [r1, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r1, [r7, #1]
	add r1, r8
	ldrb r1, [r1]
	ldr r2, _080A1024 @ =0x06008000
	str r2, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r2, _080A1028 @ =0x0600D800
	str r2, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	adds r1, #5
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	ldr r2, _080A102C @ =0x0000029E
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0FDC: .4byte 0x040000D4
_080A0FE0: .4byte gUnknown_08E2EE50
_080A0FE4: .4byte gObjPalette + 0xE0
_080A0FE8: .4byte 0x80000010
_080A0FEC: .4byte gFlags
_080A0FF0: .4byte gDispCnt
_080A0FF4: .4byte 0x00001741
_080A0FF8: .4byte gBgSprites_Unknown1
_080A0FFC: .4byte gBgSprites_Unknown2
_080A1000: .4byte gBgCntRegs
_080A1004: .4byte 0x0000030E
_080A1008: .4byte gBgScrollRegs
_080A100C: .4byte gUnknown_080D8F18
_080A1010: .4byte 0x0600C000
_080A1014: .4byte 0x06001800
_080A1018: .4byte gUnknown_080D8CDC
_080A101C: .4byte 0x0000025E
_080A1020: .4byte 0x00001B89
_080A1024: .4byte 0x06008000
_080A1028: .4byte 0x0600D800
_080A102C: .4byte 0x0000029E

	thumb_func_start sub_80A1030
sub_80A1030: @ 0x080A1030
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x8c
	movs r0, #2
	mov sb, r0
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	movs r1, #0x78
	cmp r0, #0xd
	bls _080A104E
	movs r1, #0xb4
_080A104E:
	movs r6, #0
	movs r0, #0x28
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov r8, r0
	adds r7, r1, #0
	adds r7, #0x28
_080A105C:
	cmp r6, #0
	beq _080A106A
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r1, r8
	subs r0, r1, r0
	b _080A1070
_080A106A:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, r7, r0
_080A1070:
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _080A1086
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A108C
_080A1086:
	ldr r0, [r4, #8]
	ldr r1, _080A10AC @ =0xFFFFFBFF
	ands r0, r1
_080A108C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sb
	blo _080A105C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A10AC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A10B0
sub_80A10B0: @ 0x080A10B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xdc
_080A10BA:
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _080A10D8
	ldr r0, [r4, #8]
	ldr r1, _080A10D4 @ =0xFFFFFBFF
	ands r0, r1
	b _080A10E0
	.align 2, 0
_080A10D4: .4byte 0xFFFFFBFF
_080A10D8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080A10E0:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A10BA
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A1110
sub_80A1110: @ 0x080A1110
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
	movs r7, #0
_080A111E:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	strb r7, [r4, #0x1f]
	cmp r6, #0
	beq _080A113A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A1140
_080A113A:
	ldr r0, [r4, #8]
	ldr r1, _080A1168 @ =0xFFFFFBFF
	ands r0, r1
_080A1140:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A111E
	ldrb r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A1170
	ldr r1, _080A116C @ =gUnknown_080D8F18
	ldrb r0, [r5, #2]
	b _080A1174
	.align 2, 0
_080A1168: .4byte 0xFFFFFBFF
_080A116C: .4byte gUnknown_080D8F18
_080A1170:
	ldr r1, _080A11B0 @ =gUnknown_080D8F18
	ldrb r0, [r5, #1]
_080A1174:
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, _080A11B4 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, r2, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A11B0: .4byte gUnknown_080D8F18
_080A11B4: .4byte gUnknown_080D8E80

	thumb_func_start sub_80A11B8
sub_80A11B8: @ 0x080A11B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
_080A11C4:
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x1f]
	cmp r6, #0
	beq _080A11E2
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A11E8
_080A11E2:
	ldr r0, [r4, #8]
	ldr r1, _080A1240 @ =0xFFFFFBFF
	ands r0, r1
_080A11E8:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A11C4
	ldrb r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r2, _080A1244 @ =gUnknown_080D8F18
	ldrb r1, [r5, #1]
	adds r1, r1, r2
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r2, _080A1248 @ =gUnknown_080D8E80
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1240: .4byte 0xFFFFFBFF
_080A1244: .4byte gUnknown_080D8F18
_080A1248: .4byte gUnknown_080D8E80

	thumb_func_start sub_80A124C
sub_80A124C: @ 0x080A124C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #4
	bhi _080A125C
	cmp r1, #4
	bls _080A1298
_080A125C:
	ldr r3, _080A1278 @ =gStageData
	ldrb r2, [r3, #6]
	cmp r2, #1
	bls _080A1280
	ldr r1, _080A127C @ =gUnknown_03001060
	movs r0, #1
	ands r0, r2
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldrb r0, [r3, #6]
	b _080A1292
	.align 2, 0
_080A1278: .4byte gStageData
_080A127C: .4byte gUnknown_03001060
_080A1280:
	ldr r1, _080A12B0 @ =gUnknown_03001060
	ldrb r0, [r3, #6]
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #2]
	movs r0, #1
	ands r0, r2
	adds r0, #2
_080A1292:
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #1]
_080A1298:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A12B8
	ldrb r0, [r5, #2]
	lsls r0, r0, #3
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _080A12B4 @ =gUnknown_080D8F95
	b _080A12C6
	.align 2, 0
_080A12B0: .4byte gUnknown_03001060
_080A12B4: .4byte gUnknown_080D8F95
_080A12B8:
	ldrb r0, [r5, #2]
	lsls r0, r0, #3
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _080A1300 @ =gUnknown_080D8F1D
_080A12C6:
	adds r7, r1, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080A12DA
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080A12DA
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _080A12DE
_080A12DA:
	bl sub_802613C
_080A12DE:
	movs r6, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
_080A12E6:
	movs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _080A1304
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A130A
	.align 2, 0
_080A1300: .4byte gUnknown_080D8F1D
_080A1304:
	ldr r0, [r4, #8]
	ldr r1, _080A1378 @ =0xFFFFFBFF
	ands r0, r1
_080A130A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A12E6
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r5, r1
	ldrb r0, [r7]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r7, #1]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r5, r1
	ldrb r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1378: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A137C
sub_80A137C: @ 0x080A137C
	ldr r2, _080A13AC @ =gBgScrollRegs
	ldr r1, [r0, #0x74]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r1, [r0, #0x78]
	asrs r1, r1, #8
	rsbs r1, r1, #0
	strh r1, [r2, #6]
	ldr r1, [r0, #0x7c]
	asrs r1, r1, #8
	strh r1, [r2]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r2, #2]
	ldr r1, [r0, #0x6c]
	asrs r1, r1, #8
	strh r1, [r2, #8]
	ldr r0, [r0, #0x70]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	bx lr
	.align 2, 0
_080A13AC: .4byte gBgScrollRegs

	thumb_func_start sub_80A13B0
sub_80A13B0: @ 0x080A13B0
	bx lr
	.align 2, 0

	thumb_func_start sub_80A13B4
sub_80A13B4: @ 0x080A13B4
	push {r4, lr}
	ldr r4, _080A13D0 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1, #0x18]
	ldrb r0, [r3]
	cmp r0, #0x22
	bne _080A13D8
	ldr r0, _080A13D4 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A13E8
	.align 2, 0
_080A13D0: .4byte gCurTask
_080A13D4: .4byte sub_80A14AC
_080A13D8:
	ldrb r0, [r1, #3]
	cmp r0, #0x25
	bne _080A13E8
	movs r0, #0x26
	strb r0, [r3]
	ldr r1, [r4]
	ldr r0, _080A13F0 @ =sub_80A0D20
	str r0, [r1, #8]
_080A13E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A13F0: .4byte sub_80A0D20

	thumb_func_start sub_80A13F4
sub_80A13F4: @ 0x080A13F4
	push {r4, lr}
	ldr r4, _080A1410 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1, #0x18]
	ldrb r0, [r3]
	cmp r0, #0x22
	bne _080A1418
	ldr r0, _080A1414 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A1428
	.align 2, 0
_080A1410: .4byte gCurTask
_080A1414: .4byte sub_80A14AC
_080A1418:
	ldrb r0, [r1, #3]
	cmp r0, #0x25
	bne _080A1428
	movs r0, #0x26
	strb r0, [r3]
	ldr r0, [r4]
	bl TaskDestroy
_080A1428:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A1430
sub_80A1430: @ 0x080A1430
	push {r4, r5, lr}
	ldr r5, _080A144C @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A1454
	ldr r0, _080A1450 @ =sub_80A14AC
	str r0, [r2, #8]
	b _080A148E
	.align 2, 0
_080A144C: .4byte gCurTask
_080A1450: .4byte sub_80A14AC
_080A1454:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x14]
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r1, [r5]
	ldr r0, _080A1494 @ =sub_809FEB0
	str r0, [r1, #8]
_080A148E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1494: .4byte sub_809FEB0

	thumb_func_start sub_80A1498
sub_80A1498: @ 0x080A1498
	push {lr}
	ldr r0, _080A14A8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080A14A8: .4byte gCurTask

	thumb_func_start sub_80A14AC
sub_80A14AC: @ 0x080A14AC
	push {r4, lr}
	ldr r4, _080A14DC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x9b
	lsls r1, r1, #9
	str r1, [r0, #0x4c]
	str r1, [r0, #0x54]
	movs r3, #0
	movs r2, #0x1d
	strb r2, [r0, #3]
	ldr r1, [r0, #0x18]
	strb r2, [r1]
	strh r3, [r0, #4]
	ldr r1, [r4]
	ldr r0, _080A14E0 @ =sub_80A1498
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A14DC: .4byte gCurTask
_080A14E0: .4byte sub_80A1498

	thumb_func_start sub_80A14E4
sub_80A14E4: @ 0x080A14E4
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x4c]
	ldr r3, _080A152C @ =0x00012BFF
	cmp r0, r3
	bgt _080A14FE
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r3
	ble _080A1506
_080A14FE:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x4c]
	movs r2, #1
_080A1506:
	ldr r0, [r1, #0x6c]
	ldr r3, _080A1530 @ =0x000149FF
	cmp r0, r3
	bgt _080A151A
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r3
	ble _080A1524
_080A151A:
	ldr r0, _080A1534 @ =0xFFFFC400
	str r0, [r1, #0x6c]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080A1524:
	cmp r2, #2
	beq _080A1538
	movs r0, #0
	b _080A153A
	.align 2, 0
_080A152C: .4byte 0x00012BFF
_080A1530: .4byte 0x000149FF
_080A1534: .4byte 0xFFFFC400
_080A1538:
	movs r0, #1
_080A153A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A1540
sub_80A1540: @ 0x080A1540
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x4c]
	ldr r2, _080A1584 @ =0xFFFFC400
	cmp r0, r2
	ble _080A1558
	ldr r4, _080A1588 @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r2
	bgt _080A155C
_080A1558:
	str r2, [r1, #0x4c]
	movs r3, #1
_080A155C:
	ldr r0, [r1, #0x6c]
	ldr r2, _080A158C @ =0xFFFFA600
	cmp r0, r2
	ble _080A156E
	ldr r4, _080A1588 @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r2
	bgt _080A157A
_080A156E:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A157A:
	cmp r3, #2
	beq _080A1590
	movs r0, #0
	b _080A1592
	.align 2, 0
_080A1584: .4byte 0xFFFFC400
_080A1588: .4byte 0xFFFFF200
_080A158C: .4byte 0xFFFFA600
_080A1590:
	movs r0, #1
_080A1592:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A1598
sub_80A1598: @ 0x080A1598
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x4c]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _080A15B2
	ldr r4, _080A15DC @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r2
	bgt _080A15B6
_080A15B2:
	str r2, [r1, #0x4c]
	movs r3, #1
_080A15B6:
	movs r0, #0x78
	lsls r2, r0, #8
	ldr r0, [r1, #0x6c]
	cmp r0, r2
	ble _080A15CA
	ldr r4, _080A15DC @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r2
	bgt _080A15D2
_080A15CA:
	str r2, [r1, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A15D2:
	cmp r3, #2
	beq _080A15E0
	movs r0, #0
	b _080A15E2
	.align 2, 0
_080A15DC: .4byte 0xFFFFF200
_080A15E0:
	movs r0, #1
_080A15E2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A15E8
sub_80A15E8: @ 0x080A15E8
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r0, [r2, #0x4c]
	ldr r1, _080A1630 @ =0x000077FF
	cmp r0, r1
	bgt _080A1602
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r2, #0x4c]
	cmp r0, r1
	ble _080A160A
_080A1602:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x4c]
	movs r3, #1
_080A160A:
	movs r0, #0x78
	lsls r1, r0, #8
	ldr r0, [r2, #0x6c]
	cmp r0, r1
	bge _080A1620
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r2, #0x6c]
	cmp r0, r1
	blt _080A1628
_080A1620:
	str r1, [r2, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A1628:
	cmp r3, #2
	beq _080A1634
	movs r0, #0
	b _080A1636
	.align 2, 0
_080A1630: .4byte 0x000077FF
_080A1634:
	movs r0, #1
_080A1636:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A163C
sub_80A163C: @ 0x080A163C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A1654
	ldr r3, _080A165C @ =0xFFFFF740
	adds r0, r0, r3
	str r0, [r1, #0x4c]
	cmp r0, #0xb3
	bgt _080A1660
_080A1654:
	str r2, [r1, #0x4c]
	movs r0, #1
	b _080A1662
	.align 2, 0
_080A165C: .4byte 0xFFFFF740
_080A1660:
	movs r0, #0
_080A1662:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1668
sub_80A1668: @ 0x080A1668
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x54]
	movs r2, #0xf0
	lsls r2, r2, #6
	cmp r0, r2
	ble _080A1680
	ldr r3, _080A1688 @ =0xFFFFF740
	adds r0, r0, r3
	str r0, [r1, #0x54]
	cmp r0, #0x3b
	bgt _080A168C
_080A1680:
	str r2, [r1, #0x54]
	movs r0, #1
	b _080A168E
	.align 2, 0
_080A1688: .4byte 0xFFFFF740
_080A168C:
	movs r0, #0
_080A168E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1694
sub_80A1694: @ 0x080A1694
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x4c]
	ldr r3, _080A16E0 @ =0x00012BFF
	cmp r0, r3
	bgt _080A16AE
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r3
	ble _080A16B6
_080A16AE:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x4c]
	movs r2, #1
_080A16B6:
	ldr r0, [r1, #0x6c]
	ldr r3, _080A16E0 @ =0x00012BFF
	cmp r0, r3
	bgt _080A16CA
	movs r4, #0x84
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r3
	ble _080A16D6
_080A16CA:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x6c]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080A16D6:
	cmp r2, #2
	beq _080A16E4
	movs r0, #0
	b _080A16E6
	.align 2, 0
_080A16E0: .4byte 0x00012BFF
_080A16E4:
	movs r0, #1
_080A16E6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A16EC
sub_80A16EC: @ 0x080A16EC
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x4c]
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A1706
	ldr r4, _080A1730 @ =0xFFFFF740
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r2
	bgt _080A170A
_080A1706:
	str r2, [r1, #0x4c]
	movs r3, #1
_080A170A:
	ldr r0, [r1, #0x6c]
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A171E
	ldr r4, _080A1734 @ =0xFFFFF7C0
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r2
	bgt _080A1726
_080A171E:
	str r2, [r1, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A1726:
	cmp r3, #2
	beq _080A1738
	movs r0, #0
	b _080A173A
	.align 2, 0
_080A1730: .4byte 0xFFFFF740
_080A1734: .4byte 0xFFFFF7C0
_080A1738:
	movs r0, #1
_080A173A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A1740
sub_80A1740: @ 0x080A1740
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, [r2, #0x54]
	cmp r0, r1
	bge _080A175A
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r2, #0x54]
	cmp r0, r1
	ble _080A1760
_080A175A:
	str r1, [r2, #0x54]
	movs r0, #1
	b _080A1762
_080A1760:
	movs r0, #0
_080A1762:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1768
sub_80A1768: @ 0x080A1768
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x4c]
	movs r3, #0x96
	lsls r3, r3, #8
	cmp r1, r3
	ble _080A1782
	ldr r0, _080A1788 @ =0xFFFFFD00
	adds r1, r1, r0
	str r1, [r2, #0x4c]
	ldr r0, _080A178C @ =0x000095FF
	cmp r1, r0
	bgt _080A1790
_080A1782:
	str r3, [r2, #0x4c]
	movs r0, #1
	b _080A1792
	.align 2, 0
_080A1788: .4byte 0xFFFFFD00
_080A178C: .4byte 0x000095FF
_080A1790:
	movs r0, #0
_080A1792:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1798
sub_80A1798: @ 0x080A1798
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x74]
	ldr r2, _080A17D4 @ =0x000104FF
	cmp r0, r2
	bgt _080A17B2
	movs r4, #0xc0
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [r1, #0x74]
	cmp r0, r2
	ble _080A17B8
_080A17B2:
	ldr r0, _080A17D8 @ =0x00010500
	str r0, [r1, #0x74]
	movs r3, #1
_080A17B8:
	ldr r2, [r1, #0x7c]
	ldr r0, _080A17DC @ =0x000077FF
	cmp r2, r0
	bgt _080A17E0
	movs r4, #0xfc
	lsls r4, r4, #3
	adds r0, r2, r4
	str r0, [r1, #0x7c]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _080A17EC
	str r2, [r1, #0x7c]
	b _080A17E6
	.align 2, 0
_080A17D4: .4byte 0x000104FF
_080A17D8: .4byte 0x00010500
_080A17DC: .4byte 0x000077FF
_080A17E0:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x7c]
_080A17E6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A17EC:
	cmp r3, #2
	beq _080A17F4
	movs r0, #0
	b _080A17F6
_080A17F4:
	movs r0, #1
_080A17F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A17FC
sub_80A17FC: @ 0x080A17FC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x6c]
	movs r3, #0xb4
	lsls r3, r3, #8
	cmp r1, r3
	ble _080A1816
	ldr r0, _080A181C @ =0xFFFFF7C0
	adds r1, r1, r0
	str r1, [r2, #0x6c]
	ldr r0, _080A1820 @ =0x0000B3FF
	cmp r1, r0
	bgt _080A1824
_080A1816:
	str r3, [r2, #0x6c]
	movs r0, #1
	b _080A1826
	.align 2, 0
_080A181C: .4byte 0xFFFFF7C0
_080A1820: .4byte 0x0000B3FF
_080A1824:
	movs r0, #0
_080A1826:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A182C
sub_80A182C: @ 0x080A182C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x6c]
	ldr r3, _080A1850 @ =0x0000C8FF
	cmp r2, r3
	bgt _080A1844
	movs r0, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x6c]
	cmp r0, r3
	ble _080A1854
_080A1844:
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r1, #0x6c]
	movs r0, #1
	b _080A1856
	.align 2, 0
_080A1850: .4byte 0x0000C8FF
_080A1854:
	movs r0, #0
_080A1856:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A185C
sub_80A185C: @ 0x080A185C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x74]
	movs r2, #0xc9
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A1874
	ldr r3, _080A187C @ =0xFFFFFD00
	adds r0, r0, r3
	str r0, [r1, #0x74]
	cmp r0, r2
	bgt _080A1880
_080A1874:
	str r2, [r1, #0x74]
	movs r0, #1
	b _080A1882
	.align 2, 0
_080A187C: .4byte 0xFFFFFD00
_080A1880:
	movs r0, #0
_080A1882:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1888
sub_80A1888: @ 0x080A1888
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x60]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A189C
	str r3, [r2, #0x60]
	movs r0, #1
	b _080A18AC
_080A189C:
	ldr r0, _080A18B0 @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x60]
	ldr r0, _080A18B4 @ =0x000090FF
	cmp r1, r0
	bgt _080A18AA
	str r3, [r2, #0x60]
_080A18AA:
	movs r0, #0
_080A18AC:
	pop {r1}
	bx r1
	.align 2, 0
_080A18B0: .4byte 0xFFFFFA00
_080A18B4: .4byte 0x000090FF

	thumb_func_start sub_80A18B8
sub_80A18B8: @ 0x080A18B8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	ldr r0, _080A18CC @ =0x0000B3FF
	cmp r2, r0
	ble _080A18D0
	adds r0, #1
	str r0, [r1, #0x60]
	movs r0, #1
	b _080A18DA
	.align 2, 0
_080A18CC: .4byte 0x0000B3FF
_080A18D0:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1, #0x60]
	movs r0, #0
_080A18DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A18E0
sub_80A18E0: @ 0x080A18E0
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x44]
	ldr r0, _080A18F4 @ =0x000004FF
	cmp r2, r0
	bgt _080A18F8
	adds r0, r2, #0
	adds r0, #0x40
	b _080A18FA
	.align 2, 0
_080A18F4: .4byte 0x000004FF
_080A18F8:
	movs r0, #0
_080A18FA:
	str r0, [r1, #0x44]
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r1, #0x48]
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_80A1908
sub_80A1908: @ 0x080A1908
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	ble _080A1922
	ldr r0, _080A1928 @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x68]
	ldr r0, _080A192C @ =0x000090FF
	cmp r1, r0
	bgt _080A1930
_080A1922:
	str r3, [r2, #0x68]
	movs r0, #1
	b _080A1932
	.align 2, 0
_080A1928: .4byte 0xFFFFFA00
_080A192C: .4byte 0x000090FF
_080A1930:
	movs r0, #0
_080A1932:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1938
sub_80A1938: @ 0x080A1938
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x68]
	ldr r2, _080A195C @ =0x0000B3FF
	cmp r0, r2
	bgt _080A1950
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r1, #0x68]
	cmp r0, r2
	ble _080A1960
_080A1950:
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1, #0x68]
	movs r0, #1
	b _080A1962
	.align 2, 0
_080A195C: .4byte 0x0000B3FF
_080A1960:
	movs r0, #0
_080A1962:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1968
sub_80A1968: @ 0x080A1968
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x5c]
	ldr r2, _080A19B0 @ =0x000077FF
	cmp r0, r2
	bgt _080A1982
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r0, r4
	str r0, [r1, #0x5c]
	cmp r0, r2
	ble _080A198A
_080A1982:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x5c]
	movs r3, #1
_080A198A:
	ldr r0, [r1, #0x64]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _080A199E
	ldr r4, _080A19B4 @ =0xFFFFFD00
	adds r0, r0, r4
	str r0, [r1, #0x64]
	cmp r0, r2
	bgt _080A19A6
_080A199E:
	str r2, [r1, #0x64]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A19A6:
	cmp r3, #2
	beq _080A19B8
	movs r0, #0
	b _080A19BA
	.align 2, 0
_080A19B0: .4byte 0x000077FF
_080A19B4: .4byte 0xFFFFFD00
_080A19B8:
	movs r0, #1
_080A19BA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A19C0
sub_80A19C0: @ 0x080A19C0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	adds r0, #0xc0
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0x40
	str r3, [sp]
	ldr r3, [r4, #0x6c]
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	ldr r3, [r4, #0x70]
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, _080A1A00 @ =gBgAffineRegs
	str r3, [sp, #0xc]
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1A00: .4byte gBgAffineRegs

	thumb_func_start sub_80A1A04
sub_80A1A04: @ 0x080A1A04
	ldr r2, _080A1A24 @ =gBgScrollRegs
	ldr r1, [r0, #0x74]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r1, [r0, #0x78]
	asrs r1, r1, #8
	rsbs r1, r1, #0
	strh r1, [r2, #6]
	ldr r1, [r0, #0x7c]
	asrs r1, r1, #8
	strh r1, [r2]
	adds r0, #0x80
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_080A1A24: .4byte gBgScrollRegs

	thumb_func_start sub_80A1A28
sub_80A1A28: @ 0x080A1A28
	push {lr}
	adds r1, r0, #0
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r2, r1, r0
	ldr r0, [r1, #0x18]
	ldrb r0, [r0]
	ldr r0, [r1, #0x4c]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #0x50]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80A1A4C
sub_80A1A4C: @ 0x080A1A4C
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _080A1B14 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A1B18 @ =sub_80A1BEC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A1B1C @ =sub_80A2098
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	movs r3, #0
	str r3, [sp, #4]
	ldr r4, _080A1B20 @ =0x040000D4
	add r1, sp, #4
	str r1, [r4]
	ldr r1, _080A1B24 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #4]
	ldr r1, _080A1B28 @ =0x85000010
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r5, _080A1B2C @ =gBgSprites_Unknown1
	strb r3, [r5, #2]
	ldr r1, _080A1B30 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r2, #0xff
	strb r2, [r1, #0xa]
	movs r4, #0x40
	strb r4, [r1, #0xb]
	strb r3, [r5, #1]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #6]
	strb r4, [r1, #7]
	strb r3, [r5]
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	strb r4, [r1, #3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080A1B34 @ =gLoadedSaveGame
	ldr r2, _080A1B38 @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	strb r6, [r4, #2]
	strb r3, [r4, #3]
	strb r3, [r4]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	movs r0, #1
	strh r0, [r4, #6]
	strh r3, [r4, #8]
	strh r3, [r4, #4]
	adds r0, r4, #0
	bl sub_80A1B68
	ldrb r0, [r4, #2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A1B3C
	adds r0, r4, #0
	movs r1, #5
	bl sub_80A1FB0
	adds r0, r4, #0
	movs r1, #1
	bl sub_80A2024
	bl sub_80260F0
	bl m4aMPlayAllStop
	movs r0, #0x64      @ MUS_VS_MISS
	bl m4aSongNumStart
	b _080A1B60
	.align 2, 0
_080A1B14: .4byte gDispCnt
_080A1B18: .4byte sub_80A1BEC
_080A1B1C: .4byte sub_80A2098
_080A1B20: .4byte 0x040000D4
_080A1B24: .4byte gBgCntRegs
_080A1B28: .4byte 0x85000010
_080A1B2C: .4byte gBgSprites_Unknown1
_080A1B30: .4byte gBgSprites_Unknown2
_080A1B34: .4byte gLoadedSaveGame
_080A1B38: .4byte 0x00000366
_080A1B3C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_80A1FB0
	adds r0, r4, #0
	movs r1, #0
	bl sub_80A2024
	cmp r6, #0
	bne _080A1B56
	bl sub_8024040
	b _080A1B5A
_080A1B56:
	bl sub_80258D4
_080A1B5A:
	movs r0, #0x44      @ MUS_VS_MUSIC_1
	bl m4aSongNumStart
_080A1B60:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A1B68
sub_80A1B68: @ 0x080A1B68
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080A1BE4 @ =0x06010000
	mov r8, r0
	ldr r6, _080A1BE8 @ =gUnknown_080D6898
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r2, r2, #0x1d
	movs r5, #0
	str r5, [sp]
	lsrs r2, r2, #0x1a
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	mov r1, r8
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x94
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r1, [r1]
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x8c
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1BE4: .4byte 0x06010000
_080A1BE8: .4byte gUnknown_080D6898

	thumb_func_start sub_80A1BEC
sub_80A1BEC: @ 0x080A1BEC
	push {r4, lr}
	ldr r0, _080A1C54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A1C3C
	ldr r2, _080A1C58 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A1C5C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A1C60 @ =gBldRegs
	ldr r0, _080A1C64 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	strh r3, [r4, #6]
_080A1C3C:
	ldrb r0, [r4, #2]
	cmp r0, #1
	bhi _080A1C92
	cmp r0, #0
	bne _080A1C72
	ldr r0, _080A1C68 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1C6C
	bl sub_8023A88
	b _080A1C88
	.align 2, 0
_080A1C54: .4byte gCurTask
_080A1C58: .4byte gDispCnt
_080A1C5C: .4byte gWinRegs
_080A1C60: .4byte gBldRegs
_080A1C64: .4byte 0x00003FFF
_080A1C68: .4byte gStageData
_080A1C6C:
	bl sub_8023C5C
	b _080A1C88
_080A1C72:
	ldr r0, _080A1C80 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1C84
	bl sub_802440C
	b _080A1C88
	.align 2, 0
_080A1C80: .4byte gStageData
_080A1C84:
	bl sub_8024584
_080A1C88:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080A1CC6
_080A1C92:
	ldr r2, _080A1CAC @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080A1CB4
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	ldr r1, _080A1CB0 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A1CD4
	.align 2, 0
_080A1CAC: .4byte gBldRegs
_080A1CB0: .4byte 0xFFFFFF00
_080A1CB4:
	movs r0, #1
	strh r0, [r4, #6]
	strh r1, [r2, #4]
	ldrb r0, [r4, #2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A1CCC
_080A1CC6:
	bl sub_802613C
	b _080A1CD4
_080A1CCC:
	ldr r0, _080A1CDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1CE0 @ =sub_80A1DC8
	str r0, [r1, #8]
_080A1CD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1CDC: .4byte gCurTask
_080A1CE0: .4byte sub_80A1DC8

	thumb_func_start sub_80A1CE4
sub_80A1CE4: @ 0x080A1CE4
	push {r4, lr}
	ldr r0, _080A1D40 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A1D2C
	ldr r2, _080A1D44 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A1D48 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A1D4C @ =gBldRegs
	ldr r0, _080A1D50 @ =0x00003FFF
	strh r0, [r1]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
_080A1D2C:
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _080A1D5C
	ldr r0, _080A1D54 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1D58
	bl sub_8023BB0
	b _080A1D5C
	.align 2, 0
_080A1D40: .4byte gCurTask
_080A1D44: .4byte gDispCnt
_080A1D48: .4byte gWinRegs
_080A1D4C: .4byte gBldRegs
_080A1D50: .4byte 0x00003FFF
_080A1D54: .4byte gStageData
_080A1D58:
	bl sub_8023D60
_080A1D5C:
	ldr r1, _080A1D78 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A1D7C
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A1DBC
	.align 2, 0
_080A1D78: .4byte gBldRegs
_080A1D7C:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _080A1D8E
	movs r0, #1
	bl CreateCharacterSelect
	b _080A1DB4
_080A1D8E:
	ldrb r1, [r4, #2]
	cmp r1, #2
	bne _080A1D9E
	movs r0, #1
	movs r1, #0
	bl sub_808723C
	b _080A1DB4
_080A1D9E:
	cmp r1, #3
	bne _080A1DAC
	movs r0, #0
	movs r1, #4
	bl sub_808723C
	b _080A1DB4
_080A1DAC:
	movs r0, #0
	movs r1, #0
	bl sub_808723C
_080A1DB4:
	ldr r0, _080A1DC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A1DBC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1DC4: .4byte gCurTask

	thumb_func_start sub_80A1DC8
sub_80A1DC8: @ 0x080A1DC8
	push {r4, r5, r6, lr}
	ldr r0, _080A1DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080A1E04
	ldr r0, _080A1DF4 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1DFE
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _080A1DF8
	bl sub_8023BB0
	b _080A1E26
	.align 2, 0
_080A1DF0: .4byte gCurTask
_080A1DF4: .4byte gStageData
_080A1DF8:
	bl sub_8023A88
	b _080A1E26
_080A1DFE:
	bl sub_8023C5C
	b _080A1E26
_080A1E04:
	ldr r0, _080A1E18 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1E22
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _080A1E1C
	bl sub_80244E4
	b _080A1E26
	.align 2, 0
_080A1E18: .4byte gStageData
_080A1E1C:
	bl sub_802440C
	b _080A1E26
_080A1E22:
	bl sub_8024584
_080A1E26:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0
	bge _080A1E3A
	bl sub_802613C
	b _080A1EFE
_080A1E3A:
	ldrb r2, [r5, #2]
	cmp r2, #0
	bne _080A1E48
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _080A1E5C
_080A1E48:
	cmp r2, #1
	bne _080A1EDC
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _080A1E5C
	cmp r0, #7
	beq _080A1E5C
	cmp r0, #0xf
	bne _080A1EDC
_080A1E5C:
	ldr r0, _080A1E98 @ =gStageData
	ldrb r4, [r0, #6]
	cmp r4, #0
	bne _080A1EA8
	adds r0, r5, #0
	bl sub_80A208C
	ldr r0, _080A1E9C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A1EA8
	adds r0, r5, #0
	movs r1, #4
	bl sub_80A1FB0
	adds r0, r5, #0
	movs r1, #2
	bl sub_80A2024
	movs r0, #1
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #3]
	strh r4, [r5, #4]
	ldr r0, _080A1EA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1EA4 @ =sub_80A1F10
	b _080A1EFC
	.align 2, 0
_080A1E98: .4byte gStageData
_080A1E9C: .4byte gPressedKeys
_080A1EA0: .4byte gCurTask
_080A1EA4: .4byte sub_80A1F10
_080A1EA8:
	asrs r0, r6, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A1EDC
	movs r4, #0
	movs r0, #2
	strb r0, [r5, #3]
	adds r0, r5, #0
	movs r1, #4
	bl sub_80A1FB0
	adds r0, r5, #0
	movs r1, #2
	bl sub_80A2024
	strh r4, [r5, #4]
	ldr r0, _080A1ED4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1ED8 @ =sub_80A1F10
	b _080A1EFC
	.align 2, 0
_080A1ED4: .4byte gCurTask
_080A1ED8: .4byte sub_80A1F10
_080A1EDC:
	ldr r0, _080A1F04 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A1EFE
	bl sub_80260F0
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r5, #3]
	ldr r0, _080A1F08 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1F0C @ =sub_80A1CE4
_080A1EFC:
	str r0, [r1, #8]
_080A1EFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1F04: .4byte gPressedKeys
_080A1F08: .4byte gCurTask
_080A1F0C: .4byte sub_80A1CE4

	thumb_func_start sub_80A1F10
sub_80A1F10: @ 0x080A1F10
	push {r4, lr}
	ldr r0, _080A1F38 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _080A1F4C
	ldr r0, _080A1F3C @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1F46
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _080A1F40
	bl sub_8023BB0
	b _080A1F6E
	.align 2, 0
_080A1F38: .4byte gCurTask
_080A1F3C: .4byte gStageData
_080A1F40:
	bl sub_8023A88
	b _080A1F6E
_080A1F46:
	bl sub_8023C5C
	b _080A1F6E
_080A1F4C:
	ldr r0, _080A1F60 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1F6A
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _080A1F64
	bl sub_80244E4
	b _080A1F6E
	.align 2, 0
_080A1F60: .4byte gStageData
_080A1F64:
	bl sub_802440C
	b _080A1F6E
_080A1F6A:
	bl sub_8024584
_080A1F6E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A1F7E
	bl sub_802613C
	b _080A1FA0
_080A1F7E:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080A1F8A
	movs r0, #0x63
	bl m4aSongNumStart
_080A1F8A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A1FA0
	ldr r0, _080A1FA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1FAC @ =sub_80A1CE4
	str r0, [r1, #8]
_080A1FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1FA8: .4byte gCurTask
_080A1FAC: .4byte sub_80A1CE4

	thumb_func_start sub_80A1FB0
sub_80A1FB0: @ 0x080A1FB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080A200C @ =gBgCntRegs
	movs r6, #0
	movs r3, #0
	ldr r0, _080A2010 @ =0x00000E04
	strh r0, [r2, #2]
	ldr r0, _080A2014 @ =gBgScrollRegs
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	adds r0, r5, #0
	adds r0, #0x54
	ldr r2, _080A2018 @ =0x06004000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _080A201C @ =0x06007000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r4, _080A2020 @ =gUnknown_080D9908
	ldrb r2, [r5, #1]
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r5, #0x7e
	strb r6, [r5]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A200C: .4byte gBgCntRegs
_080A2010: .4byte 0x00000E04
_080A2014: .4byte gBgScrollRegs
_080A2018: .4byte 0x06004000
_080A201C: .4byte 0x06007000
_080A2020: .4byte gUnknown_080D9908

	thumb_func_start sub_80A2024
sub_80A2024: @ 0x080A2024
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	ldr r2, _080A2078 @ =gBgCntRegs
	movs r5, #0
	movs r3, #0
	ldr r0, _080A207C @ =0x00000601
	strh r0, [r2]
	ldr r0, _080A2080 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x14
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _080A2084 @ =0x06003000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _080A2088 @ =gUnknown_080D9908
	lsrs r1, r1, #0x17
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r4, #0x3e
	strb r5, [r4]
	strh r3, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2078: .4byte gBgCntRegs
_080A207C: .4byte 0x00000601
_080A2080: .4byte gBgScrollRegs
_080A2084: .4byte 0x06003000
_080A2088: .4byte gUnknown_080D9908

	thumb_func_start sub_80A208C
sub_80A208C: @ 0x080A208C
	push {lr}
	adds r0, #0x94
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80A2098
sub_80A2098: @ 0x080A2098
	bx lr
	.align 2, 0

	thumb_func_start CreateGameIntroState
CreateGameIntroState: @ 0x080A209C
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080A20D4 @ =Task_GameIntroInit
	movs r1, #0xb8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _080A20D8 @ =TaskDestructor_GameIntro
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	lsls r0, r4, #0x10
	ldr r1, _080A20DC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080A20E4
	ldr r1, _080A20E0 @ =gStageData
	movs r0, #0
	b _080A20E8
	.align 2, 0
_080A20D4: .4byte Task_GameIntroInit
_080A20D8: .4byte TaskDestructor_GameIntro
_080A20DC: .4byte 0xFFFF0000
_080A20E0: .4byte gStageData
_080A20E4:
	ldr r1, _080A216C @ =gStageData
	movs r0, #1
_080A20E8:
	strb r0, [r1, #7]
	movs r1, #0x9a
	lsls r1, r1, #1
	add r1, ip
	movs r2, #0
	ldr r0, _080A2170 @ =0x0000FF10
	strh r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x8c
	strh r0, [r1]
	adds r0, #0xac
	add r0, ip
	strh r2, [r0]
	movs r0, #0x9d
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0x9f
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r1, #0xa1
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080A2174 @ =0x0000FFD0
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, ip
	movs r3, #0x10
	strh r3, [r0]
	movs r0, #0xa3
	lsls r0, r0, #1
	add r0, ip
	strh r3, [r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0xa5
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, ip
	strh r4, [r0]
	ldr r0, _080A2178 @ =gBldRegs
	movs r1, #0xff
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A216C: .4byte gStageData
_080A2170: .4byte 0x0000FF10
_080A2174: .4byte 0x0000FFD0
_080A2178: .4byte gBldRegs

	thumb_func_start sub_80A217C
sub_80A217C: @ 0x080A217C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x68
	ldr r2, _080A2274 @ =gDispCnt
	movs r1, #0x42
	strh r1, [r2]
	ldr r2, _080A2278 @ =gBgCntRegs
	movs r7, #0
	movs r4, #0
	ldr r1, _080A227C @ =0x00001F0C
	strh r1, [r2]
	ldr r1, _080A2280 @ =0x00001708
	strh r1, [r2, #2]
	ldr r1, _080A2284 @ =0x00006B81
	strh r1, [r2, #4]
	ldr r1, _080A2288 @ =gBgScrollRegs
	strh r4, [r1]
	strh r4, [r1, #2]
	movs r2, #0x10
	strh r2, [r1, #4]
	movs r2, #0x74
	strh r2, [r1, #6]
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0xe]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A228C @ =0x06005800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xd4
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	adds r1, r5, #0
	adds r1, #0x92
	strb r7, [r1]
	adds r1, #1
	strb r7, [r1]
	adds r1, #1
	strb r7, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	bl DrawBackground
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #3
	beq _080A2200
	cmp r0, #5
	bne _080A2242
_080A2200:
	adds r0, r5, #0
	adds r0, #0xe8
	ldr r1, _080A2290 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A2294 @ =0x0600B800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A2298 @ =0x000001A7
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r7, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r7, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #0x11
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	bl DrawBackground
_080A2242:
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080A22DA
	adds r3, r5, #0
	adds r3, #0xa8
	ldr r0, _080A229C @ =0x0600C000
	str r0, [r3, #4]
	movs r1, #0
	strh r1, [r3, #0xa]
	ldr r0, _080A22A0 @ =0x0600F800
	str r0, [r3, #0xc]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #1
	bne _080A22A8
	ldr r0, _080A22A4 @ =0x000001A9
	b _080A22AC
	.align 2, 0
_080A2274: .4byte gDispCnt
_080A2278: .4byte gBgCntRegs
_080A227C: .4byte 0x00001F0C
_080A2280: .4byte 0x00001708
_080A2284: .4byte 0x00006B81
_080A2288: .4byte gBgScrollRegs
_080A228C: .4byte 0x06005800
_080A2290: .4byte 0x06008000
_080A2294: .4byte 0x0600B800
_080A2298: .4byte 0x000001A7
_080A229C: .4byte 0x0600C000
_080A22A0: .4byte 0x0600F800
_080A22A4: .4byte 0x000001A9
_080A22A8:
	movs r0, #0xd5
	lsls r0, r0, #1
_080A22AC:
	strh r0, [r3, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r3, #0x1e]
	strh r1, [r3, #0x20]
	strh r1, [r3, #0x22]
	strh r1, [r3, #0x24]
	movs r0, #0x20
	strh r0, [r3, #0x26]
	strh r0, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0x2a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r1, [r3, #0x2e]
	strh r1, [r3, #0x30]
	strh r1, [r3, #0x32]
	adds r0, r3, #0
	bl DrawBackground
_080A22DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A22E0
sub_80A22E0: @ 0x080A22E0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	mov r6, ip
	adds r6, #0x50
	ldr r0, _080A238C @ =0x06010000
	mov r1, ip
	str r0, [r1]
	movs r0, #0x81
	lsls r0, r0, #5
	str r0, [r1, #8]
	movs r1, #0
	movs r2, #0
	movs r0, #0xa1
	mov r3, ip
	strh r0, [r3, #0xc]
	movs r0, #0x82
	strh r0, [r3, #0x10]
	movs r5, #0x8c
	strh r5, [r3, #0x12]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0x16]
	ldr r0, _080A2390 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #3
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r3, #0x10
	mov r7, ip
	strb r3, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	strh r2, [r6]
	ldr r0, _080A2394 @ =0x0000FF20
	strh r0, [r6, #2]
	movs r0, #0xe0
	strh r0, [r6, #4]
	ldrh r0, [r7, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r6, #8]
	mov r1, ip
	adds r1, #0x28
	adds r6, #0xc
	ldr r0, _080A2398 @ =0x06010800
	str r0, [r7, #0x28]
	ldr r0, _080A239C @ =0x00001021
	str r0, [r1, #8]
	ldr r0, _080A23A0 @ =0x000001E7
	strh r0, [r1, #0xc]
	movs r0, #0x64
	strh r0, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r2, [r1, #0x16]
	adds r0, r4, #0
	strh r0, [r1, #0x18]
	movs r0, #4
	strb r0, [r1, #0x1a]
	adds r0, r4, #0
	strb r0, [r1, #0x1b]
	strb r3, [r1, #0x1c]
	movs r0, #1
	strb r0, [r1, #0x1f]
	str r4, [r1, #0x20]
	strh r2, [r6]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r6, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r1, #0x12]
	strh r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A238C: .4byte 0x06010000
_080A2390: .4byte 0x0000FFFF
_080A2394: .4byte 0x0000FF20
_080A2398: .4byte 0x06010800
_080A239C: .4byte 0x00001021
_080A23A0: .4byte 0x000001E7

	thumb_func_start sub_80A23A4
sub_80A23A4: @ 0x080A23A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A244C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080A2450 @ =gHBlankCopySize
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080A2454 @ =gHBlankCopyTarget
	ldr r0, _080A2458 @ =0x04000020
	str r0, [r1]
	ldr r1, _080A245C @ =gBgOffsetsHBlankPrimary
	ldr r3, _080A2460 @ =0x0300012C
	adds r0, r2, r3
	ldr r4, [r0]
	str r4, [r1]
	ldr r3, _080A2464 @ =gFlags
	ldr r0, [r3]
	movs r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r5, _080A2468 @ =0x03000138
	adds r3, r2, r5
	ldr r1, _080A246C @ =0x03000140
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r5, [r3]
	adds r0, r0, r5
	ldr r1, _080A2470 @ =0x00000FFF
	ands r0, r1
	strh r0, [r3]
	ldr r0, _080A2474 @ =0x0300013A
	adds r3, r2, r0
	ldr r1, _080A2478 @ =0x03000142
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r5, [r3]
	adds r0, r0, r5
	ldr r1, _080A247C @ =0x000007FF
	ands r0, r1
	strh r0, [r3]
	ldr r0, _080A2480 @ =0x03000148
	adds r1, r2, r0
	ldr r3, _080A2484 @ =0x03000144
	adds r0, r2, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldr r0, _080A2488 @ =0x0300014A
	adds r1, r2, r0
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	movs r1, #0
	ldr r0, _080A248C @ =0x03000136
	adds r6, r2, r0
	subs r3, #0x16
	adds r3, r3, r2
	mov ip, r3
	ldr r5, _080A2474 @ =0x0300013A
	adds r5, r5, r2
	mov sb, r5
_080A2434:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r3, #0
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	adds r7, r1, #0
	cmp r0, #0
	blt _080A2490
	ldrh r0, [r6]
	subs r0, r2, r0
	b _080A2494
	.align 2, 0
_080A244C: .4byte gCurTask
_080A2450: .4byte gHBlankCopySize
_080A2454: .4byte gHBlankCopyTarget
_080A2458: .4byte 0x04000020
_080A245C: .4byte gBgOffsetsHBlankPrimary
_080A2460: .4byte 0x0300012C
_080A2464: .4byte gFlags
_080A2468: .4byte 0x03000138
_080A246C: .4byte 0x03000140
_080A2470: .4byte 0x00000FFF
_080A2474: .4byte 0x0300013A
_080A2478: .4byte 0x03000142
_080A247C: .4byte 0x000007FF
_080A2480: .4byte 0x03000148
_080A2484: .4byte 0x03000144
_080A2488: .4byte 0x0300014A
_080A248C: .4byte 0x03000136
_080A2490:
	ldrh r0, [r6]
	subs r0, r0, r2
_080A2494:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	mov r0, ip
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	muls r1, r0, r1
	lsls r1, r1, #1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _080A24D4
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _080A24E4
	ldr r1, _080A24D0 @ =0xFFFF8000
	adds r0, r3, r1
	b _080A24E0
	.align 2, 0
_080A24D0: .4byte 0xFFFF8000
_080A24D4:
	lsls r0, r3, #0x10
	cmp r0, #0
	blt _080A24E4
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, r2
_080A24E0:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A24E4:
	lsls r2, r5, #0x10
	mov r5, ip
	ldr r0, [r5]
	asrs r2, r2, #0xe
	adds r0, r2, r0
	ldr r0, [r0]
	lsrs r0, r0, #2
	strh r0, [r4]
	ldr r0, [r5]
	adds r2, r2, r0
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, [r2]
	muls r1, r0, r1
	lsrs r1, r1, #2
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r4, #8]
	strh r3, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	adds r4, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080A2434
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_GameIntroInit
Task_GameIntroInit: @ 0x080A2534
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _080A2654 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov r5, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	strh r0, [r5, #6]
	ldr r1, _080A2658 @ =gDispCnt
	movs r0, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_80A217C
	adds r0, r6, #0
	bl sub_80A22E0
	movs r0, #0xa0
	lsls r0, r0, #4
	bl EwramMalloc
	ldr r1, _080A265C @ =0x0300012C
	adds r4, r4, r1
	str r0, [r4]
	adds r4, r0, #0
	movs r5, #0
_080A257C:
	mov r0, sp
	adds r1, r4, #0
	movs r2, #8
	bl CpuSet
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080A257C
	movs r0, #0x80
	lsls r0, r0, #3
	bl EwramMalloc
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	movs r5, #0
_080A25AA:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r5, r4, #2
	adds r5, r5, r0
	lsls r1, r4, #4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	str r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xff
	ble _080A25AA
	movs r5, #0
	ldr r4, _080A2660 @ =gBgPalette
_080A25DC:
	movs r0, #0
	bl sub_80C4C0C
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	adds r1, #0x50
	lsls r1, r1, #1
	adds r1, r1, r4
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xf
	ble _080A25DC
	ldr r2, _080A2664 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080A2668 @ =gBldRegs
	movs r2, #0
	ldr r0, _080A266C @ =0x00001D42
	strh r0, [r1]
	ldr r0, _080A2670 @ =0x00001010
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r2, [r0]
	movs r5, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r3, #0
_080A2626:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r3, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080A2626
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bhi _080A26EE
	lsls r0, r0, #2
	ldr r1, _080A2674 @ =_080A2678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2654: .4byte gCurTask
_080A2658: .4byte gDispCnt
_080A265C: .4byte 0x0300012C
_080A2660: .4byte gBgPalette
_080A2664: .4byte gFlags
_080A2668: .4byte gBldRegs
_080A266C: .4byte 0x00001D42
_080A2670: .4byte 0x00001010
_080A2674: .4byte _080A2678
_080A2678: @ jump table
	.4byte _080A2690 @ case 0
	.4byte _080A26A0 @ case 1
	.4byte _080A26AA @ case 2
	.4byte _080A26C4 @ case 3
	.4byte _080A26CC @ case 4
	.4byte _080A26DC @ case 5
_080A2690:
	ldr r0, _080A2698 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A269C @ =sub_80A2A9C
	b _080A26EC
	.align 2, 0
_080A2698: .4byte gCurTask
_080A269C: .4byte sub_80A2A9C
_080A26A0:
	bl m4aMPlayAllStop
	movs r0, #0         @ MUS_INTRO
	bl m4aSongNumStart
_080A26AA:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, _080A26BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26C0 @ =sub_80A2A9C
	b _080A26EC
	.align 2, 0
_080A26BC: .4byte gCurTask
_080A26C0: .4byte sub_80A2A9C
_080A26C4:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r6, r2
	b _080A26E2
_080A26CC:
	ldr r0, _080A26D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26D8 @ =sub_80A2A9C
	b _080A26EC
	.align 2, 0
_080A26D4: .4byte gCurTask
_080A26D8: .4byte sub_80A2A9C
_080A26DC:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r6, r0
_080A26E2:
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080A26F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26FC @ =sub_80A2700
_080A26EC:
	str r0, [r1, #8]
_080A26EE:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A26F8: .4byte gCurTask
_080A26FC: .4byte sub_80A2700

	thumb_func_start sub_80A2700
sub_80A2700: @ 0x080A2700
	push {r4, r5, r6, lr}
	ldr r6, _080A274C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	ldr r1, _080A2750 @ =gDispCnt
	ldr r2, _080A2754 @ =0x00001641
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080A2768
	ldr r3, _080A2758 @ =0x0300013E
	adds r0, r5, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80A2978
	movs r0, #0
	bl sub_80A2A40
	bl sub_80A2D80
	bl sub_80A23A4
	ldr r2, _080A275C @ =0x0300013C
	adds r1, r5, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080A2760
	subs r0, r2, #1
	strh r0, [r1]
	b _080A2768
	.align 2, 0
_080A274C: .4byte gCurTask
_080A2750: .4byte gDispCnt
_080A2754: .4byte 0x00001641
_080A2758: .4byte 0x0300013E
_080A275C: .4byte 0x0300013C
_080A2760:
	strh r4, [r1]
	ldr r1, [r6]
	ldr r0, _080A2770 @ =sub_80A2774
	str r0, [r1, #8]
_080A2768:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2770: .4byte sub_80A2774

	thumb_func_start sub_80A2774
sub_80A2774: @ 0x080A2774
	push {r4, r5, r6, lr}
	ldr r6, _080A27C4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A27E2
	ldr r0, _080A27C8 @ =0x0300013E
	adds r5, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	bl sub_80A2978
	ldr r0, _080A27CC @ =0x0300013C
	adds r4, r4, r0
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	bl sub_80A2A40
	bl sub_80A2D80
	bl sub_80A23A4
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	bgt _080A27D0
	cmp r0, #0x20
	ble _080A27E2
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _080A27E2
	.align 2, 0
_080A27C4: .4byte gCurTask
_080A27C8: .4byte 0x0300013E
_080A27CC: .4byte 0x0300013C
_080A27D0:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r0, #7
	bl sub_80A2A40
	ldr r1, [r6]
	ldr r0, _080A27E8 @ =sub_80A27EC
	str r0, [r1, #8]
_080A27E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A27E8: .4byte sub_80A27EC

	thumb_func_start sub_80A27EC
sub_80A27EC: @ 0x080A27EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A2948 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r0, _080A294C @ =0x0300014C
	adds r5, r6, r0
	ldrh r0, [r5]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A2814
	b _080A2940
_080A2814:
	ldr r1, _080A2950 @ =0x0300013E
	adds r4, r6, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	bl sub_80A2978
	ldr r2, _080A2954 @ =0x0300013C
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080A2858
	movs r5, #0
	adds r2, #0x12
	adds r4, r6, r2
	movs r2, #0
_080A2842:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080A2842
_080A2858:
	movs r5, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0xa7
	lsls r1, r1, #1
	adds r6, r7, r1
_080A2866:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #2
	cmp r1, r2
	ble _080A288E
	ldrh r0, [r4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r3, #1
	adds r1, r6, r1
	adds r2, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080A288C
	movs r2, #0x1f
_080A288C:
	strh r2, [r1]
_080A288E:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080A2866
	movs r5, #0
	ldr r6, _080A2958 @ =gBgPalette
_080A28A2:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #1
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
	bl sub_80C4C0C
	adds r1, r4, #0
	adds r1, #0x50
	lsls r1, r1, #1
	adds r1, r1, r6
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080A28A2
	ldr r5, _080A295C @ =gFlags
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	bl sub_80A2D80
	bl sub_80A23A4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x95
	bne _080A2918
	ldr r0, _080A2960 @ =gMPlayInfo_BGM
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A2964 @ =gMPlayInfo_SE1
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A2968 @ =gMPlayInfo_SE2
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A296C @ =gMPlayInfo_SE3
	movs r1, #5
	bl m4aMPlayFadeOut
_080A2918:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x9f
	ble _080A2940
	ldr r1, _080A2970 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, _080A2948 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2974 @ =sub_80A2D34
	str r0, [r1, #8]
_080A2940:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2948: .4byte gCurTask
_080A294C: .4byte 0x0300014C
_080A2950: .4byte 0x0300013E
_080A2954: .4byte 0x0300013C
_080A2958: .4byte gBgPalette
_080A295C: .4byte gFlags
_080A2960: .4byte gMPlayInfo_BGM
_080A2964: .4byte gMPlayInfo_SE1
_080A2968: .4byte gMPlayInfo_SE2
_080A296C: .4byte gMPlayInfo_SE3
_080A2970: .4byte gBldRegs
_080A2974: .4byte sub_80A2D34

	thumb_func_start sub_80A2978
sub_80A2978: @ 0x080A2978
	push {r4, r5, r6, r7, lr}
	ldr r1, _080A2A20 @ =gCurTask
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	cmp r4, #0xff
	bgt _080A2A18
	ldr r0, _080A2A24 @ =0x03000136
	adds r2, r3, r0
	adds r0, r4, #0
	adds r0, #0x20
	asrs r0, r0, #4
	subs r0, #4
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	ldr r7, _080A2A28 @ =0x03000058
	adds r0, r3, r7
	strh r1, [r0]
	asrs r0, r5, #0x14
	subs r0, #4
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x3a]
	ldr r2, _080A2A2C @ =0x03000064
	adds r0, r3, r2
	strh r1, [r0]
	asrs r2, r5, #0x11
	adds r0, r2, #0
	adds r0, #0x82
	adds r0, r4, r0
	strh r0, [r6, #0x10]
	subs r7, #2
	adds r1, r3, r7
	strh r0, [r1]
	adds r2, r2, r4
	mov ip, r2
	movs r0, #0xe0
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080A29E6
	rsbs r0, r0, #0
	subs r7, #4
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _080A2A30 @ =0x03000054
	adds r0, r3, r1
	strh r2, [r0]
_080A29E6:
	lsls r1, r4, #1
	asrs r0, r5, #0x12
	subs r0, #0x64
	subs r1, r1, r0
	strh r1, [r6, #0x38]
	ldr r2, _080A2A34 @ =0x03000062
	adds r0, r3, r2
	strh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	mov r7, ip
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080A2A18
	rsbs r0, r0, #0
	ldr r4, _080A2A38 @ =0x0300005E
	adds r1, r3, r4
	strh r0, [r1]
	ldr r7, _080A2A3C @ =0x03000060
	adds r0, r3, r7
	strh r2, [r0]
_080A2A18:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2A20: .4byte gCurTask
_080A2A24: .4byte 0x03000136
_080A2A28: .4byte 0x03000058
_080A2A2C: .4byte 0x03000064
_080A2A30: .4byte 0x03000054
_080A2A34: .4byte 0x03000062
_080A2A38: .4byte 0x0300005E
_080A2A3C: .4byte 0x03000060

	thumb_func_start sub_80A2A40
sub_80A2A40: @ 0x080A2A40
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A2A50
	movs r1, #0
	b _080A2A56
_080A2A50:
	cmp r0, #7
	ble _080A2A56
	movs r1, #7
_080A2A56:
	lsls r0, r1, #0x10
	asrs r0, r0, #0xa
	ldr r1, _080A2A90 @ =Palette_unknown_424
	adds r6, r0, r1
	movs r0, #0
_080A2A60:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #1
	adds r0, r5, r6
	ldrh r0, [r0]
	bl sub_80C4C0C
	ldr r1, _080A2A94 @ =gBgPalette
	adds r5, r5, r1
	strh r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1f
	ble _080A2A60
	ldr r0, _080A2A98 @ =gFlags
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2A90: .4byte Palette_unknown_424
_080A2A94: .4byte gBgPalette
_080A2A98: .4byte gFlags

	thumb_func_start sub_80A2A9C
sub_80A2A9C: @ 0x080A2A9C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A2B30 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r7, _080A2B34 @ =gDispCnt
	ldr r1, _080A2B38 @ =0x00001441
	adds r0, r1, #0
	strh r0, [r7]
	ldr r1, _080A2B3C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r2, _080A2B40 @ =0x0300013C
	adds r4, r5, r2
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2B28
	bl sub_80A2D80
	bl sub_80A23A4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080A2B28
	movs r0, #0x96
	strh r0, [r4]
	ldr r2, _080A2B44 @ =0x03000128
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A2AFA
	cmp r0, #3
	bgt _080A2AFA
	ldr r2, _080A2B48 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r7]
_080A2AFA:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bne _080A2B10
	ldr r1, _080A2B34 @ =gDispCnt
	ldr r2, _080A2B48 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
_080A2B10:
	ldr r1, _080A2B3C @ =gBldRegs
	movs r2, #0
	ldr r0, _080A2B4C @ =0x00003F41
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, _080A2B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2B50 @ =sub_80A2B54
	str r0, [r1, #8]
_080A2B28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2B30: .4byte gCurTask
_080A2B34: .4byte gDispCnt
_080A2B38: .4byte 0x00001441
_080A2B3C: .4byte gBldRegs
_080A2B40: .4byte 0x0300013C
_080A2B44: .4byte 0x03000128
_080A2B48: .4byte 0x00001541
_080A2B4C: .4byte 0x00003F41
_080A2B50: .4byte sub_80A2B54

	thumb_func_start sub_80A2B54
sub_80A2B54: @ 0x080A2B54
	push {r4, lr}
	ldr r0, _080A2B8C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _080A2B90 @ =0x0300013C
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8d
	ble _080A2B98
	movs r0, #0x96
	subs r0, r0, r2
	ldr r2, _080A2B94 @ =gBldRegs
	movs r1, #0x10
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r2, #2]
	b _080A2BBA
	.align 2, 0
_080A2B8C: .4byte gCurTask
_080A2B90: .4byte 0x0300013C
_080A2B94: .4byte gBldRegs
_080A2B98:
	cmp r0, #8
	bgt _080A2BB4
	ldr r0, _080A2BB0 @ =gBldRegs
	movs r1, #0x10
	lsls r2, r2, #0x11
	asrs r2, r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	orrs r1, r2
	strh r1, [r0, #2]
	b _080A2BBA
	.align 2, 0
_080A2BB0: .4byte gBldRegs
_080A2BB4:
	ldr r1, _080A2BF0 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #2]
_080A2BBA:
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2C4A
	bl sub_80A2D80
	bl sub_80A23A4
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080A2C4A
	subs r2, #0x14
	adds r0, r4, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bhi _080A2C30
	lsls r0, r0, #2
	ldr r1, _080A2BF4 @ =_080A2BF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2BF0: .4byte gBldRegs
_080A2BF4: .4byte _080A2BF8
_080A2BF8: @ jump table
	.4byte _080A2C3A @ case 0
	.4byte _080A2C10 @ case 1
	.4byte _080A2C1A @ case 2
	.4byte _080A2C30 @ case 3
	.4byte _080A2C30 @ case 4
	.4byte _080A2C30 @ case 5
_080A2C10:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #0xa
	b _080A2C38
_080A2C1A:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _080A2C2C @ =gStageData
	movs r0, #1
	strb r0, [r1, #7]
	b _080A2C3A
	.align 2, 0
_080A2C2C: .4byte gStageData
_080A2C30:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #1
_080A2C38:
	strh r0, [r1]
_080A2C3A:
	ldr r1, _080A2C50 @ =gDispCnt
	ldr r2, _080A2C54 @ =0x00001441
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A2C58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2C5C @ =sub_80A2C60
	str r0, [r1, #8]
_080A2C4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2C50: .4byte gDispCnt
_080A2C54: .4byte 0x00001441
_080A2C58: .4byte gCurTask
_080A2C5C: .4byte sub_80A2C60

	thumb_func_start sub_80A2C60
sub_80A2C60: @ 0x080A2C60
	push {r4, r5, lr}
	ldr r0, _080A2C90 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _080A2C94 @ =0x0300013C
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _080A2CF2
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080A2C98
	bl sub_80A2D80
	bl sub_80A23A4
	b _080A2CF2
	.align 2, 0
_080A2C90: .4byte gCurTask
_080A2C94: .4byte 0x0300013C
_080A2C98:
	ldr r1, _080A2CBC @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _080A2CC0 @ =0x03000128
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq _080A2CD6
	cmp r0, #1
	bgt _080A2CC4
	cmp r0, #0
	beq _080A2CCE
	b _080A2CEA
	.align 2, 0
_080A2CBC: .4byte gBldRegs
_080A2CC0: .4byte 0x03000128
_080A2CC4:
	cmp r0, #2
	beq _080A2CDE
	cmp r0, #4
	beq _080A2CE4
	b _080A2CEA
_080A2CCE:
	movs r0, #1
	bl sub_80A2E38
	b _080A2CEA
_080A2CD6:
	movs r0, #0
	bl sub_80A2E38
	b _080A2CEA
_080A2CDE:
	bl sub_80A3F18
	b _080A2CEA
_080A2CE4:
	movs r0, #1
	bl sub_80A310C
_080A2CEA:
	ldr r0, _080A2CF8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A2CF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2CF8: .4byte gCurTask

	thumb_func_start TaskDestructor_GameIntro
TaskDestructor_GameIntro: @ 0x080A2CFC
	push {r4, lr}
	ldrh r4, [r0, #6]
	ldr r1, _080A2D28 @ =0x0300012C
	adds r0, r4, r1
	ldr r0, [r0]
	bl EwramFree
	ldr r0, _080A2D2C @ =0x03000130
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	ldr r2, _080A2D30 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2D28: .4byte 0x0300012C
_080A2D2C: .4byte 0x03000130
_080A2D30: .4byte gFlags

	thumb_func_start sub_80A2D34
sub_80A2D34: @ 0x080A2D34
	push {lr}
	ldr r0, _080A2D50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080A2D54 @ =0x03000128
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	beq _080A2D58
	cmp r0, #5
	beq _080A2D60
	b _080A2D76
	.align 2, 0
_080A2D50: .4byte gCurTask
_080A2D54: .4byte 0x03000128
_080A2D58:
	movs r0, #2
	bl sub_808ADF0
	b _080A2D76
_080A2D60:
	ldr r2, _080A2D7C @ =gLoadedSaveGame
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	bl sub_8001E58
	movs r0, #2
	movs r1, #0
	bl WarpToMap
_080A2D76:
	pop {r0}
	bx r0
	.align 2, 0
_080A2D7C: .4byte gLoadedSaveGame

	thumb_func_start sub_80A2D80
sub_80A2D80: @ 0x080A2D80
	push {r4, r5, lr}
	ldr r0, _080A2DC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080A2DCC @ =0x03000050
	adds r1, r5, r0
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _080A2DD0 @ =0x03000028
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080A2DD4 @ =0x0300005C
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2DC8: .4byte gCurTask
_080A2DCC: .4byte 0x03000050
_080A2DD0: .4byte 0x03000028
_080A2DD4: .4byte 0x0300005C

	thumb_func_start sub_80A2DD8
sub_80A2DD8: @ 0x080A2DD8
	push {lr}
	ldr r0, _080A2E1C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r0, _080A2E20 @ =gStageData
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A2E30
	ldr r2, _080A2E24 @ =0x03000128
	adds r0, r1, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A2E30
	cmp r0, #3
	bgt _080A2E30
	ldr r0, _080A2E28 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A2E30
	ldr r0, _080A2E2C @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	movs r0, #2
	bl sub_808ADF0
	movs r0, #1
	b _080A2E32
	.align 2, 0
_080A2E1C: .4byte gCurTask
_080A2E20: .4byte gStageData
_080A2E24: .4byte 0x03000128
_080A2E28: .4byte gPressedKeys
_080A2E2C: .4byte gFlags
_080A2E30:
	movs r0, #0
_080A2E32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A2E38
sub_80A2E38: @ 0x080A2E38
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080A2EE4 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A2EE8 @ =sub_80A2FF4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A2EEC @ =sub_80A3E34
	str r1, [sp]
	movs r1, #0xa0
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	str r1, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	movs r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #1]
	movs r4, #0
	strh r2, [r0, #4]
	strb r5, [r0]
	str r2, [sp, #4]
	ldr r3, _080A2EF0 @ =0x040000D4
	add r1, sp, #4
	str r1, [r3]
	ldr r1, _080A2EF4 @ =gBgCntRegs
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _080A2EF8 @ =0x85000010
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r5, _080A2EFC @ =gBgSprites_Unknown1
	strb r4, [r5, #1]
	ldr r1, _080A2F00 @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r2, #0xff
	strb r2, [r1, #6]
	movs r3, #0x40
	strb r3, [r1, #7]
	strb r4, [r5, #2]
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #0xa]
	strb r3, [r1, #0xb]
	bl sub_80A2F0C
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A2F04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A2F08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2EE4: .4byte gDispCnt
_080A2EE8: .4byte sub_80A2FF4
_080A2EEC: .4byte sub_80A3E34
_080A2EF0: .4byte 0x040000D4
_080A2EF4: .4byte gBgCntRegs
_080A2EF8: .4byte 0x85000010
_080A2EFC: .4byte gBgSprites_Unknown1
_080A2F00: .4byte gBgSprites_Unknown2
_080A2F04: .4byte gBgPalette
_080A2F08: .4byte gFlags

	thumb_func_start sub_80A2F0C
sub_80A2F0C: @ 0x080A2F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r2, _080A2FD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A2FD4 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080A2FD8 @ =0x00000C81
	mov r3, r8
	strh r0, [r3, #2]
	ldr r6, _080A2FDC @ =gBgScrollRegs
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A2FE0 @ =0x06006000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x97
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x8a
	mov r3, sb
	strb r3, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	str r2, [sp]
	bl DrawBackground
	ldr r2, [sp]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A2FE4 @ =0x00005888
	mov r1, r8
	strh r0, [r1, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	ldr r1, _080A2FE8 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A2FEC @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A2FF0 @ =0x0000012D
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x4a
	mov r2, sb
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2FD0: .4byte gDispCnt
_080A2FD4: .4byte gBgCntRegs
_080A2FD8: .4byte 0x00000C81
_080A2FDC: .4byte gBgScrollRegs
_080A2FE0: .4byte 0x06006000
_080A2FE4: .4byte 0x00005888
_080A2FE8: .4byte 0x06008000
_080A2FEC: .4byte 0x0600C000
_080A2FF0: .4byte 0x0000012D

	thumb_func_start sub_80A2FF4
sub_80A2FF4: @ 0x080A2FF4
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A3058 @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r4, _080A305C @ =gBldRegs
	movs r5, #0
	ldr r0, _080A3060 @ =0x00003FFF
	strh r0, [r4]
	ldr r2, _080A3064 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A3068 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _080A306C @ =0x00003117
	strh r0, [r2, #8]
	strh r5, [r2, #0xa]
	movs r5, #0x10
	strh r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #6]
	movs r0, #1
	strh r0, [r3, #8]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0x1f
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	ldr r0, _080A3070 @ =sub_80A3074
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3058: .4byte gCurTask
_080A305C: .4byte gBldRegs
_080A3060: .4byte 0x00003FFF
_080A3064: .4byte gDispCnt
_080A3068: .4byte gWinRegs
_080A306C: .4byte 0x00003117
_080A3070: .4byte sub_80A3074

	thumb_func_start sub_80A3074
sub_80A3074: @ 0x080A3074
	push {r4, lr}
	ldr r0, _080A30E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r4, #0
	ldrh r0, [r3, #4]
	cmp r0, #4
	bhi _080A3096
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _080A30B2
_080A3096:
	ldr r1, [r3, #0x18]
	ldr r2, _080A30E8 @ =0x00004FFF
	cmp r1, r2
	bgt _080A30B2
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r3, #0x18]
	cmp r0, r2
	ble _080A30B2
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r3, #0x18]
	movs r4, #1
_080A30B2:
	ldr r2, _080A30EC @ =gWinRegs
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A30F0 @ =gBgScrollRegs
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r3, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	cmp r4, #0
	beq _080A3102
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A30F4
	movs r0, #2
	bl CreateGameIntroState
	b _080A30FA
	.align 2, 0
_080A30E4: .4byte gCurTask
_080A30E8: .4byte 0x00004FFF
_080A30EC: .4byte gWinRegs
_080A30F0: .4byte gBgScrollRegs
_080A30F4:
	movs r0, #4
	bl CreateGameIntroState
_080A30FA:
	ldr r0, _080A3108 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A3102:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3108: .4byte gCurTask

	thumb_func_start sub_80A310C
sub_80A310C: @ 0x080A310C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080A31D4 @ =gDispCnt
	ldr r0, _080A31D8 @ =0x00007140
	strh r0, [r1]
	ldr r0, _080A31DC @ =sub_80A3444
	movs r1, #0xba
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A31E0 @ =sub_80A3E38
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0
	strb r5, [r4]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	str r1, [r4, #0x14]
	ldr r0, _080A31E4 @ =0xFFFF9C00
	str r0, [r4, #0x18]
	movs r0, #0xe6
	lsls r0, r0, #8
	str r0, [r4, #0x24]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	movs r6, #1
	strb r6, [r4, #1]
	movs r3, #0
	strh r1, [r4, #6]
	strh r1, [r4, #4]
	strh r1, [r4, #2]
	str r1, [sp, #4]
	ldr r2, _080A31E8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080A31EC @ =gBgCntRegs
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080A31F0 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r5, _080A31F4 @ =gBgSprites_Unknown1
	strb r3, [r5, #1]
	ldr r0, _080A31F8 @ =gBgSprites_Unknown2
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	movs r2, #0x40
	strb r2, [r0, #7]
	strb r3, [r5, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	adds r0, r4, #0
	bl sub_80A3354
	ldr r2, _080A31FC @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A3200
	movs r0, #0
	b _080A3202
	.align 2, 0
_080A31D4: .4byte gDispCnt
_080A31D8: .4byte 0x00007140
_080A31DC: .4byte sub_80A3444
_080A31E0: .4byte sub_80A3E38
_080A31E4: .4byte 0xFFFF9C00
_080A31E8: .4byte 0x040000D4
_080A31EC: .4byte gBgCntRegs
_080A31F0: .4byte 0x85000010
_080A31F4: .4byte gBgSprites_Unknown1
_080A31F8: .4byte gBgSprites_Unknown2
_080A31FC: .4byte gWinRegs
_080A3200:
	ldr r0, _080A321C @ =0x0000FFFF
_080A3202:
	bl sub_80C4C0C
	ldr r1, _080A3220 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080A3224 @ =gFlags
	ldr r0, [r1]
	orrs r0, r6
	str r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A321C: .4byte 0x0000FFFF
_080A3220: .4byte gBgPalette
_080A3224: .4byte gFlags

	thumb_func_start sub_80A3228
sub_80A3228: @ 0x080A3228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _080A334C @ =0x06010000
	adds r0, #0xac
	str r7, [r0]
	ldr r4, _080A3350 @ =gUnknown_080D9980
	ldr r1, [r4, #4]
	lsls r1, r1, #5
	adds r7, r1, r7
	ldrh r1, [r4]
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	mov sb, r4
	movs r0, #0
	mov sl, r0
	movs r3, #0
_080A327A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xd4
	adds r0, r6, r0
	str r7, [r0]
	adds r4, r5, #1
	lsls r2, r4, #3
	movs r1, #4
	add r1, sb
	mov r8, r1
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	add r2, sb
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r5, sl
	strb r5, [r0, #0x1f]
	str r3, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	ldr r3, [sp]
	cmp r5, #1
	bls _080A327A
	movs r5, #0
	mov r3, r8
	subs r3, #4
	movs r0, #0
	mov r8, r0
	movs r4, #0
_080A32E0:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r6, r0
	str r7, [r0]
	adds r2, r5, #3
	lsls r2, r2, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp]
	cmp r5, #1
	bls _080A32E0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A334C: .4byte 0x06010000
_080A3350: .4byte gUnknown_080D9980

	thumb_func_start sub_80A3354
sub_80A3354: @ 0x080A3354
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r2, _080A3420 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A3424 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080A3428 @ =0x00005888
	mov r3, r8
	strh r0, [r3, #4]
	ldr r6, _080A342C @ =gBgScrollRegs
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r6, #8]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #8
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	ldr r1, _080A3430 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A3434 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x56
	mov r3, sb
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	str r2, [sp]
	bl DrawBackground
	ldr r2, [sp]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A3438 @ =0x00000681
	mov r1, r8
	strh r0, [r1, #2]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x6c
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A343C @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A3440 @ =0x0000012B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x96
	mov r2, sb
	strb r2, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3420: .4byte gDispCnt
_080A3424: .4byte gBgCntRegs
_080A3428: .4byte 0x00005888
_080A342C: .4byte gBgScrollRegs
_080A3430: .4byte 0x06008000
_080A3434: .4byte 0x0600C000
_080A3438: .4byte 0x00000681
_080A343C: .4byte 0x06003000
_080A3440: .4byte 0x0000012B

	thumb_func_start sub_80A3444
sub_80A3444: @ 0x080A3444
	push {r4, r5, r6, lr}
	ldr r0, _080A34F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _080A349A
	ldr r2, _080A34F4 @ =gBldRegs
	movs r0, #0xc2
	strh r0, [r2]
	ldr r4, _080A34F8 @ =gDispCnt
	ldrh r0, [r4]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _080A34FC @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080A3500 @ =0x00001137
	strh r0, [r1, #8]
	strh r6, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #4]
	movs r0, #1
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_80A3228
	ldrh r1, [r4]
	ldr r0, _080A3504 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r4]
_080A349A:
	ldr r1, [r5, #0x10]
	ldr r0, _080A3508 @ =0x00002FFF
	cmp r1, r0
	ble _080A34B4
	ldr r2, _080A350C @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _080A34B4
	str r1, [r5, #0x10]
	movs r6, #1
_080A34B4:
	ldr r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r1, r2
	bgt _080A34D4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r5, #8]
	ldr r0, _080A3510 @ =0x00003FFF
	cmp r1, r0
	ble _080A34D4
	str r2, [r5, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080A34D4:
	ldr r0, _080A34F4 @ =gBldRegs
	ldrh r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	beq _080A3514
	ldrh r0, [r5, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r1, _080A350C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r5, #4]
	adds r0, r0, r2
	strh r0, [r5, #4]
	b _080A351A
	.align 2, 0
_080A34F0: .4byte gCurTask
_080A34F4: .4byte gBldRegs
_080A34F8: .4byte gDispCnt
_080A34FC: .4byte gWinRegs
_080A3500: .4byte 0x00001137
_080A3504: .4byte 0x0000FEFF
_080A3508: .4byte 0x00002FFF
_080A350C: .4byte 0xFFFFFF00
_080A3510: .4byte 0x00003FFF
_080A3514:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080A351A:
	ldr r4, _080A3554 @ =gWinRegs
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #4]
	cmp r6, #3
	bne _080A354C
	movs r0, #0xf0
	strh r0, [r3]
	ldr r0, _080A3558 @ =0x00003017
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r3, #2]
	strh r2, [r3, #4]
	strh r2, [r5, #6]
	strh r2, [r5, #4]
	ldr r0, _080A355C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A3560 @ =sub_80A3564
	str r0, [r1, #8]
_080A354C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A3554: .4byte gWinRegs
_080A3558: .4byte 0x00003017
_080A355C: .4byte gCurTask
_080A3560: .4byte sub_80A3564

	thumb_func_start sub_80A3564
sub_80A3564: @ 0x080A3564
	push {r4, r5, lr}
	ldr r0, _080A3590 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A3E3C
	ldr r1, _080A3594 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A3598
	ldrh r0, [r4, #4]
	adds r0, #0x80
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080A35AC
	.align 2, 0
_080A3590: .4byte gCurTask
_080A3594: .4byte gBldRegs
_080A3598:
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A35FC @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3600 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_080A35AC:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x96
	bls _080A3618
	movs r3, #0x80
	lsls r3, r3, #5
	strh r3, [r4, #4]
	strh r5, [r4, #2]
	ldr r2, _080A3604 @ =gBldRegs
	movs r0, #0xd0
	strh r0, [r2]
	ldr r1, _080A3608 @ =gWinRegs
	ldr r0, _080A360C @ =0x00003017
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r2, #2]
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r5, [r4, #6]
	strh r3, [r4, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A35FC @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3600 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080A3610 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A3614 @ =sub_80A3664
	str r0, [r1, #8]
	b _080A3650
	.align 2, 0
_080A35FC: .4byte gBgPalette
_080A3600: .4byte gFlags
_080A3604: .4byte gBldRegs
_080A3608: .4byte gWinRegs
_080A360C: .4byte 0x00003017
_080A3610: .4byte gCurTask
_080A3614: .4byte sub_80A3664
_080A3618:
	ldr r2, _080A3658 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A365C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3650
	ldr r0, _080A3660 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3650
	movs r0, #2
	bl sub_808ADF0
_080A3650:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3658: .4byte gWinRegs
_080A365C: .4byte gBgScrollRegs
_080A3660: .4byte gPressedKeys

	thumb_func_start sub_80A3664
sub_80A3664: @ 0x080A3664
	push {r4, r5, lr}
	ldr r5, _080A36A4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A367E
	adds r0, r4, #0
	bl sub_80A3E90
_080A367E:
	ldr r2, _080A36A8 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	bne _080A36B0
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080A36C0
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A36AC @ =sub_80A3710
	str r0, [r1, #8]
	b _080A36F8
	.align 2, 0
_080A36A4: .4byte gCurTask
_080A36A8: .4byte gBldRegs
_080A36AC: .4byte sub_80A3710
_080A36B0:
	ldr r1, _080A3700 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
_080A36C0:
	ldr r2, _080A3704 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A3708 @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A36F8
	ldr r0, _080A370C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A36F8
	movs r0, #2
	bl sub_808ADF0
_080A36F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3700: .4byte 0xFFFFFF00
_080A3704: .4byte gWinRegs
_080A3708: .4byte gBgScrollRegs
_080A370C: .4byte gPressedKeys

	thumb_func_start sub_80A3710
sub_80A3710: @ 0x080A3710
	push {r4, r5, lr}
	ldr r5, _080A3748 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A372A
	adds r0, r4, #0
	bl sub_80A3E90
_080A372A:
	ldr r1, _080A374C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bls _080A375C
	movs r2, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _080A3750 @ =gWinRegs
	ldr r0, _080A3754 @ =0x00002017
	strh r0, [r1, #8]
	strh r2, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080A3758 @ =sub_80A37B8
	str r0, [r1, #8]
	b _080A37A6
	.align 2, 0
_080A3748: .4byte gCurTask
_080A374C: .4byte gBldRegs
_080A3750: .4byte gWinRegs
_080A3754: .4byte 0x00002017
_080A3758: .4byte sub_80A37B8
_080A375C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldr r2, _080A37AC @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A37B0 @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A37A6
	ldr r0, _080A37B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A37A6
	movs r0, #2
	bl sub_808ADF0
_080A37A6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A37AC: .4byte gWinRegs
_080A37B0: .4byte gBgScrollRegs
_080A37B4: .4byte gPressedKeys

	thumb_func_start sub_80A37B8
sub_80A37B8: @ 0x080A37B8
	push {r4, r5, lr}
	ldr r5, _080A37F0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A3EAC
	adds r0, r4, #0
	bl sub_80A3E60
	cmp r0, #1
	bne _080A37F8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080A37F8
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080A37F4 @ =sub_80A3844
	str r0, [r1, #8]
	b _080A3830
	.align 2, 0
_080A37F0: .4byte gCurTask
_080A37F4: .4byte sub_80A3844
_080A37F8:
	ldr r2, _080A3838 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A383C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3830
	ldr r0, _080A3840 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3830
	movs r0, #2
	bl sub_808ADF0
_080A3830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3838: .4byte gWinRegs
_080A383C: .4byte gBgScrollRegs
_080A3840: .4byte gPressedKeys

	thumb_func_start sub_80A3844
sub_80A3844: @ 0x080A3844
	push {r4, r5, lr}
	ldr r5, _080A386C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A3EDC
	ldrh r0, [r4, #2]
	cmp r0, #0x13
	bls _080A3870
	ldrb r0, [r4]
	bl sub_80A38C0
	ldr r0, [r5]
	bl TaskDestroy
	b _080A38AC
	.align 2, 0
_080A386C: .4byte gCurTask
_080A3870:
	adds r0, #1
	strh r0, [r4, #2]
	ldr r2, _080A38B4 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A38B8 @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A38AC
	ldr r0, _080A38BC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A38AC
	movs r0, #2
	bl sub_808ADF0
_080A38AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A38B4: .4byte gWinRegs
_080A38B8: .4byte gBgScrollRegs
_080A38BC: .4byte gPressedKeys

	thumb_func_start sub_80A38C0
sub_80A38C0: @ 0x080A38C0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080A3964 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A3968 @ =sub_80A39FC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A396C @ =sub_80A3F10
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r4, #0
	strh r2, [r0, #2]
	str r2, [sp, #4]
	ldr r3, _080A3970 @ =0x040000D4
	add r1, sp, #4
	str r1, [r3]
	ldr r1, _080A3974 @ =gBgCntRegs
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _080A3978 @ =0x85000010
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r5, _080A397C @ =gBgSprites_Unknown1
	strb r4, [r5, #1]
	ldr r1, _080A3980 @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r2, #0xff
	strb r2, [r1, #6]
	movs r3, #0x40
	strb r3, [r1, #7]
	strb r4, [r5, #2]
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #0xa]
	strb r3, [r1, #0xb]
	bl sub_80A398C
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A3984 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3988 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3964: .4byte gDispCnt
_080A3968: .4byte sub_80A39FC
_080A396C: .4byte sub_80A3F10
_080A3970: .4byte 0x040000D4
_080A3974: .4byte gBgCntRegs
_080A3978: .4byte 0x85000010
_080A397C: .4byte gBgSprites_Unknown1
_080A3980: .4byte gBgSprites_Unknown2
_080A3984: .4byte gBgPalette
_080A3988: .4byte gFlags

	thumb_func_start sub_80A398C
sub_80A398C: @ 0x080A398C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080A39E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A39EC @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080A39F0 @ =0x00000D81
	strh r0, [r1, #2]
	ldr r0, _080A39F4 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	adds r0, r3, #0
	adds r0, #0x54
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A39F8 @ =0x06006800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0x97
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x7e
	strb r4, [r3]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A39E8: .4byte gDispCnt
_080A39EC: .4byte gBgCntRegs
_080A39F0: .4byte 0x00000D81
_080A39F4: .4byte gBgScrollRegs
_080A39F8: .4byte 0x06006800

	thumb_func_start sub_80A39FC
sub_80A39FC: @ 0x080A39FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A3A60 @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r4, _080A3A64 @ =gBldRegs
	movs r5, #0
	ldr r0, _080A3A68 @ =0x00003FFF
	strh r0, [r4]
	ldr r2, _080A3A6C @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A3A70 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _080A3A74 @ =0x00003117
	strh r0, [r2, #8]
	strh r5, [r2, #0xa]
	movs r5, #0x10
	strh r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0x1f
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	ldr r0, _080A3A78 @ =sub_80A3A7C
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3A60: .4byte gCurTask
_080A3A64: .4byte gBldRegs
_080A3A68: .4byte 0x00003FFF
_080A3A6C: .4byte gDispCnt
_080A3A70: .4byte gWinRegs
_080A3A74: .4byte 0x00003117
_080A3A78: .4byte sub_80A3A7C

	thumb_func_start sub_80A3A7C
sub_80A3A7C: @ 0x080A3A7C
	push {r4, r5, r6, r7, lr}
	ldr r6, _080A3B14 @ =gCurTask
	ldr r0, [r6]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, _080A3B18 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r5, #0
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _080A3ABA
	ldr r0, _080A3B1C @ =gDispCnt
	ldrh r1, [r0]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r2, r7, #0
	orrs r1, r2
	strh r1, [r0]
_080A3ABA:
	ldrh r0, [r4, #2]
	cmp r0, #5
	bne _080A3B02
	ldr r1, _080A3B20 @ =gBgCntRegs
	ldr r0, _080A3B24 @ =0x00005D88
	strh r0, [r1, #4]
	ldr r0, _080A3B28 @ =gBgScrollRegs
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r1, _080A3B2C @ =0x03000014
	adds r0, r3, r1
	ldr r1, _080A3B30 @ =0x06008000
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _080A3B34 @ =0x0600E800
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0x98
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r7, _080A3B38 @ =0x0300003E
	adds r2, r3, r7
	movs r1, #0
	strb r1, [r2]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
_080A3B02:
	ldrh r0, [r4, #2]
	cmp r0, #0xa
	bls _080A3B40
	strh r5, [r4, #6]
	ldr r1, [r6]
	ldr r0, _080A3B3C @ =sub_80A3B64
	str r0, [r1, #8]
	b _080A3B58
	.align 2, 0
_080A3B14: .4byte gCurTask
_080A3B18: .4byte gWinRegs
_080A3B1C: .4byte gDispCnt
_080A3B20: .4byte gBgCntRegs
_080A3B24: .4byte 0x00005D88
_080A3B28: .4byte gBgScrollRegs
_080A3B2C: .4byte 0x03000014
_080A3B30: .4byte 0x06008000
_080A3B34: .4byte 0x0600E800
_080A3B38: .4byte 0x0300003E
_080A3B3C: .4byte sub_80A3B64
_080A3B40:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3B58
	ldr r0, _080A3B60 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3B58
	movs r0, #2
	bl sub_808ADF0
_080A3B58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B60: .4byte gPressedKeys

	thumb_func_start sub_80A3B64
sub_80A3B64: @ 0x080A3B64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080A3BD0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r5, _080A3BD4 @ =gWinRegs
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r5, #4]
	ldrh r4, [r3, #6]
	ldr r6, _080A3BD8 @ =gBldRegs
	cmp r4, #0
	bne _080A3BBA
	ldr r0, _080A3BDC @ =0x00003FBF
	strh r0, [r6]
	ldr r2, _080A3BE0 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strh r0, [r5]
	strh r0, [r5, #2]
	strh r0, [r5, #6]
	movs r0, #0x24
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	strh r4, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	strh r4, [r6, #4]
_080A3BBA:
	ldrh r0, [r6, #4]
	cmp r0, #0xe
	bhi _080A3BE4
	ldrh r0, [r3, #4]
	adds r0, #0x30
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r6, #4]
	b _080A3BF2
	.align 2, 0
_080A3BD0: .4byte gCurTask
_080A3BD4: .4byte gWinRegs
_080A3BD8: .4byte gBldRegs
_080A3BDC: .4byte 0x00003FBF
_080A3BE0: .4byte gDispCnt
_080A3BE4:
	ldrb r0, [r3]
	bl sub_80A3BFC
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_080A3BF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3BFC
sub_80A3BFC: @ 0x080A3BFC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080A3C9C @ =gDispCnt
	ldr r2, _080A3CA0 @ =0x00007040
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A3CA4 @ =sub_80A3D3C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A3CA8 @ =sub_80A3F14
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r4, #0
	strh r2, [r0, #2]
	str r2, [sp, #4]
	ldr r3, _080A3CAC @ =0x040000D4
	add r1, sp, #4
	str r1, [r3]
	ldr r1, _080A3CB0 @ =gBgCntRegs
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _080A3CB4 @ =0x85000010
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r5, _080A3CB8 @ =gBgSprites_Unknown1
	strb r4, [r5, #1]
	ldr r1, _080A3CBC @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r2, #0xff
	strb r2, [r1, #6]
	movs r3, #0x40
	strb r3, [r1, #7]
	strb r4, [r5, #2]
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #0xa]
	strb r3, [r1, #0xb]
	bl sub_80A3CC8
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A3CC0 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3CC4 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3C9C: .4byte gDispCnt
_080A3CA0: .4byte 0x00007040
_080A3CA4: .4byte sub_80A3D3C
_080A3CA8: .4byte sub_80A3F14
_080A3CAC: .4byte 0x040000D4
_080A3CB0: .4byte gBgCntRegs
_080A3CB4: .4byte 0x85000010
_080A3CB8: .4byte gBgSprites_Unknown1
_080A3CBC: .4byte gBgSprites_Unknown2
_080A3CC0: .4byte gBgPalette
_080A3CC4: .4byte gFlags

	thumb_func_start sub_80A3CC8
sub_80A3CC8: @ 0x080A3CC8
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080A3D20 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A3D24 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080A3D28 @ =0x00005888
	strh r0, [r1]
	ldr r0, _080A3D2C @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, r3, #0
	adds r0, #0x14
	ldr r1, _080A3D30 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A3D34 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A3D38 @ =0x0000012F
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x3e
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3D20: .4byte gDispCnt
_080A3D24: .4byte gBgCntRegs
_080A3D28: .4byte 0x00005888
_080A3D2C: .4byte gBgScrollRegs
_080A3D30: .4byte 0x06008000
_080A3D34: .4byte 0x0600C000
_080A3D38: .4byte 0x0000012F

	thumb_func_start sub_80A3D3C
sub_80A3D3C: @ 0x080A3D3C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A3D94 @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r5, _080A3D98 @ =gBldRegs
	movs r4, #0
	ldr r0, _080A3D9C @ =0x00003FBF
	strh r0, [r5]
	ldr r2, _080A3DA0 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A3DA4 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #6]
	movs r0, #0x21
	strh r0, [r2, #8]
	strh r4, [r2, #0xa]
	strh r4, [r5, #4]
	strh r4, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r0, _080A3DA8 @ =sub_80A3DAC
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3D94: .4byte gCurTask
_080A3D98: .4byte gBldRegs
_080A3D9C: .4byte 0x00003FBF
_080A3DA0: .4byte gDispCnt
_080A3DA4: .4byte gWinRegs
_080A3DA8: .4byte sub_80A3DAC

	thumb_func_start sub_80A3DAC
sub_80A3DAC: @ 0x080A3DAC
	push {lr}
	ldr r0, _080A3DF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r2, _080A3DF8 @ =gWinRegs
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A3DFC @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xe
	bhi _080A3E04
	ldrh r0, [r3, #4]
	adds r0, #0x30
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A3E2E
	ldr r0, _080A3E00 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3E2E
	b _080A3E28
	.align 2, 0
_080A3DF4: .4byte gCurTask
_080A3DF8: .4byte gWinRegs
_080A3DFC: .4byte gBldRegs
_080A3E00: .4byte gPressedKeys
_080A3E04:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A3E12
	movs r0, #5
	bl CreateGameIntroState
	b _080A3E18
_080A3E12:
	movs r0, #3
	bl CreateGameIntroState
_080A3E18:
	ldr r0, _080A3E24 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080A3E2E
	.align 2, 0
_080A3E24: .4byte gCurTask
_080A3E28:
	movs r0, #2
	bl sub_808ADF0
_080A3E2E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A3E34
sub_80A3E34: @ 0x080A3E34
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3E38
sub_80A3E38: @ 0x080A3E38
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3E3C
sub_80A3E3C: @ 0x080A3E3C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bge _080A3E5A
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x18]
	cmp r0, #0
	blt _080A3E5A
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	b _080A3E5C
_080A3E5A:
	movs r0, #0
_080A3E5C:
	pop {r1}
	bx r1

	thumb_func_start sub_80A3E60
sub_80A3E60: @ 0x080A3E60
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r0, _080A3E84 @ =0x00006FFF
	cmp r1, r0
	ble _080A3E88
	subs r1, #0x80
	ldrb r0, [r2, #1]
	lsls r0, r0, #7
	subs r1, r1, r0
	str r1, [r2, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080A3E88
	str r0, [r2, #0x20]
	movs r0, #1
	b _080A3E8A
	.align 2, 0
_080A3E84: .4byte 0x00006FFF
_080A3E88:
	movs r0, #0
_080A3E8A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A3E90
sub_80A3E90: @ 0x080A3E90
	push {lr}
	adds r2, r0, #0
	adds r2, #0xac
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x28]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80A3EAC
sub_80A3EAC: @ 0x080A3EAC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080A3EB2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xd4
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080A3EB2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3EDC
sub_80A3EDC: @ 0x080A3EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080A3EE2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080A3EE2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3F10
sub_80A3F10: @ 0x080A3F10
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3F14
sub_80A3F14: @ 0x080A3F14
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3F18
sub_80A3F18: @ 0x080A3F18
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _080A3FB4 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A3FB8 @ =sub_80A40A0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A3FBC @ =sub_80A43DC
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r4, #0x14]
	movs r2, #0
	str r2, [r4, #0xc]
	ldr r0, _080A3FC0 @ =0xFFFF8800
	str r0, [r4, #0x18]
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	str r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4]
	movs r6, #1
	strb r6, [r4, #3]
	strb r2, [r4, #2]
	movs r0, #0x19
	strb r0, [r4, #1]
	movs r5, #0
	strh r2, [r4, #8]
	strh r2, [r4, #6]
	strh r2, [r4, #4]
	adds r0, r4, #0
	bl sub_80A3FDC
	ldr r0, _080A3FC4 @ =0x0000FFFF
	bl sub_80C4C0C
	ldr r1, _080A3FC8 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080A3FCC @ =gFlags
	ldr r0, [r1]
	orrs r0, r6
	str r0, [r1]
	ldr r0, _080A3FD0 @ =gBgSprites_Unknown1
	strb r5, [r0]
	ldr r1, _080A3FD4 @ =gBgSprites_Unknown2
	strb r5, [r1]
	strb r5, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #3]
	ldr r2, _080A3FD8 @ =gWinRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A3FB4: .4byte gDispCnt
_080A3FB8: .4byte sub_80A40A0
_080A3FBC: .4byte sub_80A43DC
_080A3FC0: .4byte 0xFFFF8800
_080A3FC4: .4byte 0x0000FFFF
_080A3FC8: .4byte gBgPalette
_080A3FCC: .4byte gFlags
_080A3FD0: .4byte gBgSprites_Unknown1
_080A3FD4: .4byte gBgSprites_Unknown2
_080A3FD8: .4byte gWinRegs

	thumb_func_start sub_80A3FDC
sub_80A3FDC: @ 0x080A3FDC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r3, [r6, #2]
	ldr r1, _080A407C @ =0x06010000
	adds r0, #0x2c
	str r1, [r6, #0x2c]
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r6, #0x28]
	ldr r1, _080A4080 @ =gUnknown_080D99A8
	lsls r3, r3, #3
	adds r3, r3, r1
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r2, _080A4084 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A4088 @ =gBgCntRegs
	ldr r0, _080A408C @ =0x00005888
	strh r0, [r1]
	ldr r1, _080A4090 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x6e
	strh r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0x54
	ldr r1, _080A4094 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A4098 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A409C @ =0x0000012F
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r1, r6, #0
	adds r1, #0x7e
	strb r5, [r1]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A407C: .4byte 0x06010000
_080A4080: .4byte gUnknown_080D99A8
_080A4084: .4byte gDispCnt
_080A4088: .4byte gBgCntRegs
_080A408C: .4byte 0x00005888
_080A4090: .4byte gBgScrollRegs
_080A4094: .4byte 0x06008000
_080A4098: .4byte 0x0600C000
_080A409C: .4byte 0x0000012F

	thumb_func_start sub_80A40A0
sub_80A40A0: @ 0x080A40A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080A4178 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _080A4102
	ldr r3, _080A417C @ =gBldRegs
	ldr r0, _080A4180 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _080A4184 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A4188 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080A418C @ =0x00001011
	strh r0, [r1, #8]
	strh r6, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #6]
	movs r0, #1
	strh r0, [r5, #8]
	ldr r1, _080A4190 @ =0x03000002
	adds r0, r4, r1
	ldr r2, _080A4194 @ =0x03000001
	adds r1, r4, r2
	ldr r3, _080A4198 @ =0x03000018
	adds r2, r4, r3
	ldr r7, _080A419C @ =0x0300001C
	adds r3, r4, r7
	ldr r4, [r5, #0x28]
	str r4, [sp]
	bl sub_809BF3C
_080A4102:
	ldr r1, [r5, #0x14]
	ldr r0, _080A4180 @ =0x00003FFF
	cmp r1, r0
	ble _080A411C
	ldr r2, _080A41A0 @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bgt _080A411C
	str r1, [r5, #0x14]
	movs r6, #1
_080A411C:
	ldr r1, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r1, r2
	bgt _080A413C
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r5, #0xc]
	ldr r0, _080A41A4 @ =0x00001FFF
	cmp r1, r0
	ble _080A413C
	str r2, [r5, #0xc]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080A413C:
	ldr r3, _080A4188 @ =gWinRegs
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r3, #4]
	cmp r6, #2
	bne _080A416E
	ldr r1, _080A417C @ =gBldRegs
	ldr r0, _080A4180 @ =0x00003FFF
	strh r0, [r1]
	ldr r0, _080A418C @ =0x00001011
	strh r0, [r3, #8]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	strh r2, [r5, #8]
	ldr r0, _080A4178 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A41A8 @ =sub_80A41AC
	str r0, [r1, #8]
_080A416E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4178: .4byte gCurTask
_080A417C: .4byte gBldRegs
_080A4180: .4byte 0x00003FFF
_080A4184: .4byte gDispCnt
_080A4188: .4byte gWinRegs
_080A418C: .4byte 0x00001011
_080A4190: .4byte 0x03000002
_080A4194: .4byte 0x03000001
_080A4198: .4byte 0x03000018
_080A419C: .4byte 0x0300001C
_080A41A0: .4byte 0xFFFFFF00
_080A41A4: .4byte 0x00001FFF
_080A41A8: .4byte sub_80A41AC

	thumb_func_start sub_80A41AC
sub_80A41AC: @ 0x080A41AC
	push {r4, r5, lr}
	ldr r5, _080A41EC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A4598
	ldr r2, _080A41F0 @ =gWinRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	adds r0, r4, #0
	bl sub_80A43E0
	ldrh r2, [r4, #4]
	cmp r2, #0x2c
	bls _080A41F8
	movs r0, #0
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A41F4 @ =sub_80A4228
	str r0, [r1, #8]
	b _080A4220
	.align 2, 0
_080A41EC: .4byte gCurTask
_080A41F0: .4byte gWinRegs
_080A41F4: .4byte sub_80A4228
_080A41F8:
	ldr r0, _080A4218 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A421C
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x18]
	movs r0, #0x1d
	strb r0, [r4, #1]
	movs r0, #2
	bl sub_808ADF0
	b _080A4220
	.align 2, 0
_080A4218: .4byte gPressedKeys
_080A421C:
	adds r0, r2, #1
	strh r0, [r4, #4]
_080A4220:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4228
sub_80A4228: @ 0x080A4228
	push {r4, r5, lr}
	ldr r5, _080A4264 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A4598
	adds r0, r4, #0
	bl sub_80A453C
	cmp r0, #1
	bne _080A424A
	movs r0, #0x1b
	strb r0, [r4, #1]
_080A424A:
	adds r0, r4, #0
	bl sub_80A4440
	ldrh r2, [r4, #4]
	cmp r2, #0x77
	bls _080A426C
	movs r0, #0
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A4268 @ =sub_80A429C
	str r0, [r1, #8]
	b _080A4294
	.align 2, 0
_080A4264: .4byte gCurTask
_080A4268: .4byte sub_80A429C
_080A426C:
	ldr r0, _080A428C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A4290
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x18]
	movs r0, #0x1d
	strb r0, [r4, #1]
	movs r0, #2
	bl sub_808ADF0
	b _080A4294
	.align 2, 0
_080A428C: .4byte gPressedKeys
_080A4290:
	adds r0, r2, #1
	strh r0, [r4, #4]
_080A4294:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A429C
sub_80A429C: @ 0x080A429C
	push {r4, r5, lr}
	ldr r5, _080A42F4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r2, #0x9b
	lsls r2, r2, #9
	str r2, [r3, #0x18]
	movs r4, #0
	movs r1, #0x1d
	strb r1, [r3, #1]
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080A430C
	strh r4, [r3, #4]
	ldr r2, _080A42F8 @ =gBldRegs
	movs r0, #0xa0
	strh r0, [r2]
	ldr r1, _080A42FC @ =gWinRegs
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A4300 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A4304 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, [r5]
	ldr r0, _080A4308 @ =sub_80A4384
	b _080A436A
	.align 2, 0
_080A42F4: .4byte gCurTask
_080A42F8: .4byte gBldRegs
_080A42FC: .4byte gWinRegs
_080A4300: .4byte gBgPalette
_080A4304: .4byte gFlags
_080A4308: .4byte sub_80A4384
_080A430C:
	movs r0, #0x19
	strb r0, [r3, #1]
	movs r0, #3
	ldrsb r0, [r3, r0]
	movs r1, #1
	cmp r0, #0
	ble _080A4320
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r0, #0
_080A4320:
	strb r1, [r3, #3]
	lsls r0, r1, #0x18
	cmp r0, #0
	ble _080A4338
	ldr r0, _080A4334 @ =0xFFFF8800
	str r0, [r3, #0x18]
	movs r0, #0x96
	lsls r0, r0, #9
	b _080A4340
	.align 2, 0
_080A4334: .4byte 0xFFFF8800
_080A4338:
	movs r0, #0xb4
	lsls r0, r0, #9
	str r0, [r3, #0x18]
	ldr r0, _080A4374 @ =0xFFFFC400
_080A4340:
	str r0, [r3, #0x20]
	adds r0, r3, #0
	adds r0, #0x2c
	ldr r2, _080A4378 @ =gUnknown_080D99A8
	ldrb r1, [r3, #2]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r0, _080A437C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A4380 @ =sub_80A41AC
_080A436A:
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4374: .4byte 0xFFFFC400
_080A4378: .4byte gUnknown_080D99A8
_080A437C: .4byte gCurTask
_080A4380: .4byte sub_80A41AC

	thumb_func_start sub_80A4384
sub_80A4384: @ 0x080A4384
	push {r4, r5, r6, lr}
	ldr r6, _080A43C4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldr r2, _080A43C8 @ =gBldRegs
	movs r3, #0
	movs r0, #0xa0
	strh r0, [r2]
	ldr r1, _080A43CC @ =gWinRegs
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	str r3, [r4]
	ldrh r0, [r5, #4]
	cmp r0, #2
	bls _080A43D0
	movs r0, #0
	bl sub_80A310C
	ldr r0, [r6]
	bl TaskDestroy
	b _080A43D4
	.align 2, 0
_080A43C4: .4byte gCurTask
_080A43C8: .4byte gBldRegs
_080A43CC: .4byte gWinRegs
_080A43D0:
	adds r0, #1
	strh r0, [r5, #4]
_080A43D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A43DC
sub_80A43DC: @ 0x080A43DC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A43E0
sub_80A43E0: @ 0x080A43E0
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	cmp r0, #0xe
	bls _080A4438
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A4414
	ldr r1, [r2, #0x18]
	movs r3, #0x96
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A4438
	ldrb r0, [r2]
	lsls r0, r0, #9
	adds r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, _080A4410 @ =0x000095FF
	cmp r0, r1
	ble _080A4438
	str r3, [r2, #0x18]
	movs r0, #1
	b _080A443A
	.align 2, 0
_080A4410: .4byte 0x000095FF
_080A4414:
	ldr r1, [r2, #0x18]
	ldr r0, _080A4434 @ =0x000059FF
	cmp r1, r0
	ble _080A4438
	ldrb r0, [r2]
	lsls r0, r0, #9
	subs r0, r1, r0
	str r0, [r2, #0x18]
	movs r1, #0xb4
	lsls r1, r1, #7
	cmp r0, r1
	bgt _080A4438
	str r1, [r2, #0x18]
	movs r0, #1
	b _080A443A
	.align 2, 0
_080A4434: .4byte 0x000059FF
_080A4438:
	movs r0, #0
_080A443A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4440
sub_80A4440: @ 0x080A4440
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A4470
	ldr r1, [r2, #0x18]
	movs r3, #0xf0
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A448C
	ldrb r0, [r2]
	lsls r0, r0, #5
	adds r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, _080A446C @ =0x0000EFFF
	cmp r0, r1
	ble _080A448C
	str r3, [r2, #0x18]
	movs r0, #1
	b _080A448E
	.align 2, 0
_080A446C: .4byte 0x0000EFFF
_080A4470:
	ldr r1, [r2, #0x18]
	cmp r1, #0xff
	ble _080A448C
	ldrb r0, [r2]
	lsls r0, r0, #5
	subs r0, r1, r0
	str r0, [r2, #0x18]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bgt _080A448C
	str r1, [r2, #0x18]
	movs r0, #1
	b _080A448E
_080A448C:
	movs r0, #0
_080A448E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4494
sub_80A4494: @ 0x080A4494
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A44C0
	ldr r1, [r2, #0x18]
	movs r3, #0x9b
	lsls r3, r3, #9
	cmp r1, r3
	bgt _080A44E0
	ldrb r0, [r2]
	lsls r0, r0, #0xa
	adds r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, _080A44BC @ =0x000135FF
	cmp r0, r1
	ble _080A44E0
	b _080A44D4
	.align 2, 0
_080A44BC: .4byte 0x000135FF
_080A44C0:
	ldr r1, [r2, #0x18]
	ldr r3, _080A44DC @ =0xFFFFBA00
	cmp r1, r3
	blt _080A44E0
	ldrb r0, [r2]
	lsls r0, r0, #0xa
	subs r0, r1, r0
	str r0, [r2, #0x18]
	cmp r0, r3
	bgt _080A44E0
_080A44D4:
	str r3, [r2, #0x18]
	movs r0, #1
	b _080A44E2
	.align 2, 0
_080A44DC: .4byte 0xFFFFBA00
_080A44E0:
	movs r0, #0
_080A44E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A44E8
sub_80A44E8: @ 0x080A44E8
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A4510
	ldr r1, [r2, #0x20]
	ldr r3, _080A450C @ =0xFFFF3800
	cmp r1, r3
	blt _080A4534
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	subs r0, r1, r0
	str r0, [r2, #0x20]
	cmp r0, r3
	bgt _080A4534
	b _080A4528
	.align 2, 0
_080A450C: .4byte 0xFFFF3800
_080A4510:
	ldr r1, [r2, #0x20]
	movs r3, #0xdc
	lsls r3, r3, #9
	cmp r1, r3
	bgt _080A4534
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [r2, #0x20]
	ldr r1, _080A4530 @ =0x0001B7FF
	cmp r0, r1
	ble _080A4534
_080A4528:
	str r3, [r2, #0x20]
	movs r0, #1
	b _080A4536
	.align 2, 0
_080A4530: .4byte 0x0001B7FF
_080A4534:
	movs r0, #0
_080A4536:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A453C
sub_80A453C: @ 0x080A453C
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A456C
	ldr r1, [r2, #0x20]
	ldr r0, _080A4568 @ =0x000009FF
	cmp r1, r0
	ble _080A4590
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	subs r0, r1, r0
	str r0, [r2, #0x20]
	movs r1, #0xa0
	lsls r1, r1, #4
	cmp r0, r1
	bgt _080A4590
	str r1, [r2, #0x20]
	movs r0, #1
	b _080A4592
	.align 2, 0
_080A4568: .4byte 0x000009FF
_080A456C:
	ldr r1, [r2, #0x20]
	movs r3, #0xe6
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A4590
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [r2, #0x20]
	ldr r1, _080A458C @ =0x0000E5FF
	cmp r0, r1
	ble _080A4590
	str r3, [r2, #0x20]
	movs r0, #1
	b _080A4592
	.align 2, 0
_080A458C: .4byte 0x0000E5FF
_080A4590:
	movs r0, #0
_080A4592:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4598
sub_80A4598: @ 0x080A4598
	push {lr}
	adds r2, r0, #0
	adds r2, #0x2c
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x24]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80A45B4
sub_80A45B4: @ 0x080A45B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080A45E0
	ldr r0, _080A45D8 @ =sub_80A7E24
	movs r1, #0x92
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A45DC @ =sub_80A7BFC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	b _080A45F4
	.align 2, 0
_080A45D8: .4byte sub_80A7E24
_080A45DC: .4byte sub_80A7BFC
_080A45E0:
	ldr r0, _080A4664 @ =sub_80A4DDC
	movs r1, #0x92
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A4668 @ =sub_80A7BFC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
_080A45F4:
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	str r4, [r5]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #0x16]
	strb r1, [r5, #0x18]
	strh r0, [r5, #0x1a]
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	movs r3, #0
	ldr r0, _080A466C @ =0x03000028
	adds r6, r2, r0
	movs r4, #0
	adds r0, #4
	adds r2, r2, r0
_080A4618:
	lsls r1, r3, #3
	adds r0, r6, r1
	str r4, [r0]
	adds r1, r2, r1
	str r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080A4618
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0x20]
	movs r4, #0
	str r4, [r5, #0x24]
	str r7, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_80A4678
	adds r0, r5, #0
	bl sub_80A4D6C
	ldr r1, _080A4670 @ =gBgSprites_Unknown1
	movs r0, #0x12
	strb r0, [r1, #1]
	ldr r1, _080A4674 @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x40
	strb r0, [r1, #7]
	ldr r0, [r5, #0x1c]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A4664: .4byte sub_80A4DDC
_080A4668: .4byte sub_80A7BFC
_080A466C: .4byte 0x03000028
_080A4670: .4byte gBgSprites_Unknown1
_080A4674: .4byte gBgSprites_Unknown2

	thumb_func_start sub_80A4678
sub_80A4678: @ 0x080A4678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r3, _080A46A0 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A46A8
	ldr r0, _080A46A4 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #2]
	b _080A46C2
	.align 2, 0
_080A46A0: .4byte gPlayers
_080A46A4: .4byte gCharacterSelectOrderLUT
_080A46A8:
	ldr r1, _080A4758 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
_080A46C2:
	str r0, [sp, #0x10]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r5, r3
	str r0, [sp]
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r5, r6
	str r0, [sp, #4]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r0, [sp, #8]
	movs r2, #0
	mov r8, r2
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x48
_080A46E6:
	ldr r3, [sp, #0xc]
	cmp r7, r3
	bne _080A46EE
	b _080A4818
_080A46EE:
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bne _080A46F6
	b _080A4818
_080A46F6:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sp
	ldr r4, [r0]
	adds r0, r5, #6
	add r0, r8
	strb r7, [r0]
	ldr r0, [r5, #0x1c]
	str r0, [r4]
	ldr r0, _080A475C @ =gUnknown_080D99D0
	lsls r2, r7, #1
	mov ip, r2
	add r0, ip
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, _080A4760 @ =gUnknown_080D9B5C
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A4768
	mov r3, r8
	lsls r2, r3, #3
	adds r3, r5, #0
	adds r3, #0x28
	adds r0, r3, r2
	mov sb, r0
	ldr r0, _080A4764 @ =gUnknown_080D9B7E
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	mov r1, sb
	str r0, [r1]
	adds r1, r2, #0
	adds r2, r3, #0
	b _080A4786
	.align 2, 0
_080A4758: .4byte gCharacterSelectOrderLUT
_080A475C: .4byte gUnknown_080D99D0
_080A4760: .4byte gUnknown_080D9B5C
_080A4764: .4byte gUnknown_080D9B7E
_080A4768:
	mov r2, r8
	lsls r1, r2, #3
	adds r2, r5, #0
	adds r2, #0x28
	adds r3, r2, r1
	mov sb, r3
	ldr r0, _080A4900 @ =gUnknown_080D9B79
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r3, sb
	str r0, [r3]
_080A4786:
	adds r3, r2, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r1, sl
	strb r1, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	cmp r7, #4
	bne _080A47AE
	movs r0, #5
	strb r0, [r4, #0x1f]
_080A47AE:
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
	str r0, [r4, #8]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	cmp r7, #3
	bne _080A480E
	mov r1, r8
	strb r1, [r5, #5]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x48]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, _080A4904 @ =gUnknown_080D9B5C
	ldr r1, [r0, #0x14]
	ldrh r0, [r1]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r0, [r3]
	asrs r0, r0, #8
	subs r0, #0x12
	strh r0, [r6, #0x10]
	strh r2, [r6, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r2, [r6, #0xe]
	strh r2, [r6, #0x16]
	mov r2, sl
	strb r2, [r6, #0x1c]
	movs r3, #0
	strb r3, [r6, #0x1f]
	mov r0, sb
	str r0, [r6, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080A480E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A4818:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _080A4824
	b _080A46E6
_080A4824:
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r5, r1
	str r0, [sp]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r5, r2
	str r0, [sp, #4]
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r5, r3
	str r0, [sp, #8]
	movs r6, #0
	mov r8, r6
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x70
_080A4846:
	ldr r0, [sp, #0xc]
	cmp r7, r0
	beq _080A48E4
	ldr r1, [sp, #0x10]
	cmp r7, r1
	beq _080A48E4
	mov r2, r8
	lsls r0, r2, #2
	add r0, sp
	ldr r2, [r0]
	adds r0, r5, #0
	adds r0, #9
	add r0, r8
	movs r3, #0
	strb r7, [r0]
	ldr r0, [r5, #0x1c]
	str r0, [r2]
	ldr r1, _080A4908 @ =gUnknown_080D99D0
	mov r6, r8
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	movs r0, #0
	mov sb, r0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r1, #0x10
	mov ip, r1
	mov r6, ip
	strb r6, [r2, #0x1c]
	strb r7, [r2, #0x1f]
	cmp r7, #4
	bne _080A489A
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A489A:
	movs r6, #0x80
	lsls r6, r6, #3
	str r6, [r2, #8]
	cmp r7, #3
	bne _080A48DA
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x70]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, _080A4904 @ =gUnknown_080D9B5C
	ldr r1, [r0, #0x14]
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	mov r2, ip
	strb r2, [r4, #0x1c]
	mov r3, sb
	strb r3, [r4, #0x1f]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080A48DA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A48E4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _080A4846
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4900: .4byte gUnknown_080D9B79
_080A4904: .4byte gUnknown_080D9B5C
_080A4908: .4byte gUnknown_080D99D0

	thumb_func_start sub_80A490C
sub_80A490C: @ 0x080A490C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r3, _080A4940 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A4948
	ldr r0, _080A4944 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	str r1, [sp, #0x10]
	ldrb r0, [r0, #2]
	b _080A4962
	.align 2, 0
_080A4940: .4byte gPlayers
_080A4944: .4byte gCharacterSelectOrderLUT
_080A4948:
	ldr r1, _080A4980 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
_080A4962:
	str r0, [sp, #0x14]
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _080A4984
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0x88
	lsls r3, r3, #2
	b _080A4998
	.align 2, 0
_080A4980: .4byte gCharacterSelectOrderLUT
_080A4984:
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0xd4
	lsls r3, r3, #1
_080A4998:
	adds r0, r6, r3
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
	movs r5, #0
	ldr r1, _080A4A18 @ =gUnknown_080D9B5C
	mov sb, r1
	movs r7, #0
_080A49A8:
	ldr r2, [sp, #0x10]
	cmp r5, r2
	beq _080A4A6E
	ldr r3, [sp, #0x14]
	cmp r5, r3
	beq _080A4A6E
	mov r1, r8
	lsls r0, r1, #2
	add r0, sp
	ldr r4, [r0]
	lsls r1, r5, #2
	add r1, sb
	ldr r0, [r1]
	mov r3, sl
	lsls r2, r3, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A4A1C
	mov r0, sl
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080A4A1E
	subs r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A4A1C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
	b _080A4A1E
	.align 2, 0
_080A4A18: .4byte gUnknown_080D9B5C
_080A4A1C:
	str r1, [r4, #8]
_080A4A1E:
	cmp r5, #3
	bne _080A4A5E
	adds r1, r6, #0
	adds r1, #0x48
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _080A4A2E
	adds r1, #0x28
_080A4A2E:
	mov r3, sb
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
_080A4A5E:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A4A6E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080A49A8
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4A88
sub_80A4A88: @ 0x080A4A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	ldr r3, _080A4ABC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A4AC4
	ldr r0, _080A4AC0 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	str r1, [sp, #0x14]
	ldrb r0, [r0, #2]
	b _080A4ADE
	.align 2, 0
_080A4ABC: .4byte gPlayers
_080A4AC0: .4byte gCharacterSelectOrderLUT
_080A4AC4:
	ldr r1, _080A4AFC @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
_080A4ADE:
	mov sl, r0
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _080A4B00
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0x88
	lsls r3, r3, #2
	b _080A4B14
	.align 2, 0
_080A4AFC: .4byte gCharacterSelectOrderLUT
_080A4B00:
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0xd4
	lsls r3, r3, #1
_080A4B14:
	adds r0, r6, r3
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
	movs r5, #0
	ldr r1, _080A4B88 @ =gUnknown_080D9B5C
	mov sb, r1
	movs r7, #0
_080A4B24:
	ldr r2, [sp, #0x14]
	cmp r5, r2
	beq _080A4BDC
	cmp r5, sl
	beq _080A4BDC
	mov r3, r8
	lsls r0, r3, #2
	add r0, sp
	ldr r4, [r0]
	lsls r1, r5, #2
	add r1, sb
	ldr r0, [r1]
	ldr r3, [sp, #0xc]
	lsls r2, r3, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	cmp r5, #4
	bne _080A4B6A
	movs r0, #5
	strb r0, [r4, #0x1f]
_080A4B6A:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A4B8C
	cmp r5, #1
	bhi _080A4B8C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
	b _080A4B8E
	.align 2, 0
_080A4B88: .4byte gUnknown_080D9B5C
_080A4B8C:
	str r1, [r4, #8]
_080A4B8E:
	cmp r5, #3
	bne _080A4BCC
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _080A4B9E
	adds r1, #0x28
_080A4B9E:
	mov r3, sb
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r7, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
_080A4BCC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A4BDC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080A4B24
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4BF8
sub_80A4BF8: @ 0x080A4BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	movs r4, #0xff
	ldr r3, _080A4C2C @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A4C34
	ldr r0, _080A4C30 @ =gCharacterSelectOrderLUT
	ldrb r5, [r0]
	ldrb r3, [r0, #2]
	b _080A4C4C
	.align 2, 0
_080A4C2C: .4byte gPlayers
_080A4C30: .4byte gCharacterSelectOrderLUT
_080A4C34:
	ldr r1, _080A4C70 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r3, [r0]
_080A4C4C:
	cmp r6, r3
	bne _080A4C52
	b _080A4D60
_080A4C52:
	mov r0, r8
	cmp r0, #0
	beq _080A4C74
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp]
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp, #4]
	movs r0, #0x88
	lsls r0, r0, #2
	b _080A4C88
	.align 2, 0
_080A4C70: .4byte gCharacterSelectOrderLUT
_080A4C74:
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp]
	movs r0, #0xc0
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp, #4]
	movs r0, #0xd4
	lsls r0, r0, #1
_080A4C88:
	add r0, ip
	str r0, [sp, #8]
	movs r1, #0
	mov r2, ip
	adds r2, #9
_080A4C92:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, r6
	bne _080A4C9C
	adds r4, r1, #0
_080A4C9C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _080A4C92
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080A4D60
	cmp r6, r5
	beq _080A4D60
	cmp r6, r3
	beq _080A4D60
	lsls r0, r0, #2
	add r0, sp
	ldr r5, [r0]
	ldr r4, _080A4D14 @ =gUnknown_080D9B5C
	lsls r1, r6, #2
	adds r1, r1, r4
	ldr r0, [r1]
	lsls r2, r7, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r6, [r5, #0x1f]
	adds r7, r4, #0
	adds r4, r2, #0
	cmp r6, #4
	bne _080A4CF6
	movs r0, #5
	strb r0, [r5, #0x1f]
_080A4CF6:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	mov r2, ip
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A4D18
	cmp r6, #1
	bhi _080A4D18
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
	b _080A4D1A
	.align 2, 0
_080A4D14: .4byte gUnknown_080D9B5C
_080A4D18:
	str r1, [r5, #8]
_080A4D1A:
	cmp r6, #3
	bne _080A4D5A
	mov r3, ip
	adds r3, #0x48
	mov r0, r8
	cmp r0, #0
	beq _080A4D2A
	adds r3, #0x28
_080A4D2A:
	ldr r0, [r7, #0x14]
	adds r0, r4, r0
	ldrh r0, [r0]
	movs r2, #0
	movs r1, #0
	strh r0, [r3, #0xc]
	ldr r0, [r7, #0x14]
	adds r0, r4, r0
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r1, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
_080A4D5A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080A4D60:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4D6C
sub_80A4D6C: @ 0x080A4D6C
	push {r4, lr}
	mov ip, r0
	ldr r1, _080A4DC8 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080A4DCC @ =0x00004501
	strh r0, [r1, #2]
	ldr r1, _080A4DD0 @ =gBgScrollRegs
	mov r4, ip
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0xd8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A4DD4 @ =0x06002800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A4DD8 @ =0x00000131
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r1, #0xe2
	add r1, ip
	strb r3, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4DC8: .4byte gBgCntRegs
_080A4DCC: .4byte 0x00004501
_080A4DD0: .4byte gBgScrollRegs
_080A4DD4: .4byte 0x06002800
_080A4DD8: .4byte 0x00000131

	thumb_func_start sub_80A4DDC
sub_80A4DDC: @ 0x080A4DDC
	push {r4, lr}
	ldr r4, _080A4E20 @ =gDispCnt
	ldrh r2, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r2, r0
	ldr r1, _080A4E24 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3f
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r1, _080A4E28 @ =gBldRegs
	ldr r0, _080A4E2C @ =0x00003FFF
	strh r0, [r1]
	strh r3, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4]
	ldr r0, _080A4E30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A4E34 @ =sub_80A4E38
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4E20: .4byte gDispCnt
_080A4E24: .4byte gWinRegs
_080A4E28: .4byte gBldRegs
_080A4E2C: .4byte 0x00003FFF
_080A4E30: .4byte gCurTask
_080A4E34: .4byte sub_80A4E38

	thumb_func_start sub_80A4E38
sub_80A4E38: @ 0x080A4E38
	push {r4, lr}
	ldr r0, _080A4E6C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	ldr r1, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _080A4E96
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A4E74
	ldr r2, _080A4E70 @ =0xFFFFFE00
	b _080A4E86
	.align 2, 0
_080A4E6C: .4byte gCurTask
_080A4E70: .4byte 0xFFFFFE00
_080A4E74:
	cmp r0, #7
	bne _080A4E80
	ldr r2, _080A4E7C @ =0xFFFFFF00
	b _080A4E86
	.align 2, 0
_080A4E7C: .4byte 0xFFFFFF00
_080A4E80:
	cmp r0, #5
	bhi _080A4E8A
	ldr r2, _080A4EC8 @ =0xFFFFFDF0
_080A4E86:
	adds r0, r1, r2
	str r0, [r4, #0x20]
_080A4E8A:
	ldr r1, [r4, #0x20]
	ldr r0, _080A4ECC @ =0x000003FF
	cmp r1, r0
	bgt _080A4E96
	adds r0, #1
	str r0, [r4, #0x20]
_080A4E96:
	ldr r1, _080A4ED0 @ =gBgScrollRegs
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #9
	bne _080A4EC0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_80A490C
	ldr r0, _080A4ED4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A4ED8 @ =sub_80A7C00
	str r0, [r1, #8]
_080A4EC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4EC8: .4byte 0xFFFFFDF0
_080A4ECC: .4byte 0x000003FF
_080A4ED0: .4byte gBgScrollRegs
_080A4ED4: .4byte gCurTask
_080A4ED8: .4byte sub_80A7C00

	thumb_func_start sub_80A4EDC
sub_80A4EDC: @ 0x080A4EDC
	push {r4, r5, r6, lr}
	ldr r5, _080A4F58 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldrb r3, [r4, #0x18]
	cmp r3, #0
	bne _080A4F3A
	ldr r2, _080A4F5C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A4F60 @ =gWinRegs
	ldr r0, _080A4F64 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A4F68 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A4F6C @ =0x0000D1A0
	strh r0, [r1, #6]
	ldr r0, _080A4F70 @ =0x00001E3F
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A4F74 @ =gBldRegs
	ldr r0, _080A4F78 @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r4, #0x1a]
	movs r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl m4aSongNumStart
_080A4F3A:
	ldr r2, _080A4F74 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _080A4F7C
	ldrh r0, [r4, #0x1a]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r6, [r4, #0x1a]
	adds r0, r0, r6
	strh r0, [r4, #0x1a]
	b _080A4F8A
	.align 2, 0
_080A4F58: .4byte gCurTask
_080A4F5C: .4byte gDispCnt
_080A4F60: .4byte gWinRegs
_080A4F64: .4byte 0x00008A5F
_080A4F68: .4byte 0x00005F8B
_080A4F6C: .4byte 0x0000D1A0
_080A4F70: .4byte 0x00001E3F
_080A4F74: .4byte gBldRegs
_080A4F78: .4byte 0x00003FBF
_080A4F7C:
	movs r1, #0
	movs r0, #0x10
	strh r0, [r2, #4]
	strb r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A4F90 @ =sub_80A4F94
	str r0, [r1, #8]
_080A4F8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4F90: .4byte sub_80A4F94

	thumb_func_start sub_80A4F94
sub_80A4F94: @ 0x080A4F94
	push {r4, r5, r6, lr}
	ldr r6, _080A5014 @ =gCurTask
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _080A4FEE
	ldr r2, _080A5018 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A501C @ =gWinRegs
	movs r4, #0
	ldr r0, _080A5020 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A5024 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A5028 @ =0x0000D1A0
	strh r0, [r1, #6]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A502C @ =gBldRegs
	ldr r0, _080A5030 @ =0x00002042
	strh r0, [r1]
	strh r4, [r1, #4]
	strh r4, [r5, #0x1a]
	strb r3, [r5, #0x18]
_080A4FEE:
	ldrh r0, [r5, #0x1a]
	lsrs r0, r0, #8
	cmp r0, #0x10
	bhi _080A5038
	strb r0, [r5, #4]
	ldr r2, _080A502C @ =gBldRegs
	ldr r1, _080A5034 @ =gUnknown_080D9B88
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r5, #0x1a]
	adds r0, r0, r3
	strh r0, [r5, #0x1a]
	b _080A5044
	.align 2, 0
_080A5014: .4byte gCurTask
_080A5018: .4byte gDispCnt
_080A501C: .4byte gWinRegs
_080A5020: .4byte 0x00008A5F
_080A5024: .4byte 0x00005F8B
_080A5028: .4byte 0x0000D1A0
_080A502C: .4byte gBldRegs
_080A5030: .4byte 0x00002042
_080A5034: .4byte gUnknown_080D9B88
_080A5038:
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #0x1a]
	ldr r1, [r6]
	ldr r0, _080A504C @ =sub_80A5050
	str r0, [r1, #8]
_080A5044:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A504C: .4byte sub_80A5050

	thumb_func_start sub_80A5050
sub_80A5050: @ 0x080A5050
	push {r4, lr}
	ldr r0, _080A507C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, _080A5080 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080A5088
	ldr r0, _080A5084 @ =gUnknown_080DA084
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_80C460C
	b _080A509E
	.align 2, 0
_080A507C: .4byte gCurTask
_080A5080: .4byte gFlags
_080A5084: .4byte gUnknown_080DA084
_080A5088:
	ldr r1, _080A50C8 @ =0x040000D4
	ldr r0, _080A50CC @ =gUnknown_080DA084
	str r0, [r1]
	ldr r0, _080A50D0 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _080A50D4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_080A509E:
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #0x10
	bne _080A50E0
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, _080A50D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A50DC @ =sub_80A51B4
	b _080A50EA
	.align 2, 0
_080A50C8: .4byte 0x040000D4
_080A50CC: .4byte gUnknown_080DA084
_080A50D0: .4byte gBgPalette
_080A50D4: .4byte 0x80000100
_080A50D8: .4byte gCurTask
_080A50DC: .4byte sub_80A51B4
_080A50E0:
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _080A50F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A50F8 @ =sub_80A50FC
_080A50EA:
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A50F4: .4byte gCurTask
_080A50F8: .4byte sub_80A50FC

	thumb_func_start sub_80A50FC
sub_80A50FC: @ 0x080A50FC
	push {r4, r5, r6, lr}
	ldr r5, _080A5178 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldrb r3, [r4, #0x18]
	cmp r3, #0
	bne _080A5152
	ldr r2, _080A517C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A5180 @ =gWinRegs
	ldr r0, _080A5184 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A5188 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A518C @ =0x0000D1A0
	strh r0, [r1, #6]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A5190 @ =gBldRegs
	ldr r0, _080A5194 @ =0x00002042
	strh r0, [r1]
	strh r3, [r1, #4]
	movs r0, #1
	strb r0, [r4, #0x18]
_080A5152:
	ldrh r0, [r4, #0x1a]
	lsrs r0, r0, #8
	adds r1, r0, #0
	cmp r1, #0
	beq _080A51A0
	strb r0, [r4, #4]
	ldr r2, _080A5190 @ =gBldRegs
	ldr r1, _080A5198 @ =gUnknown_080D9B88
	ldrb r0, [r4, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldr r1, _080A519C @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r6, [r4, #0x1a]
	adds r0, r0, r6
	strh r0, [r4, #0x1a]
	b _080A51A8
	.align 2, 0
_080A5178: .4byte gCurTask
_080A517C: .4byte gDispCnt
_080A5180: .4byte gWinRegs
_080A5184: .4byte 0x00008A5F
_080A5188: .4byte 0x00005F8B
_080A518C: .4byte 0x0000D1A0
_080A5190: .4byte gBldRegs
_080A5194: .4byte 0x00002042
_080A5198: .4byte gUnknown_080D9B88
_080A519C: .4byte 0xFFFFFE00
_080A51A0:
	strh r1, [r4, #0x1a]
	ldr r1, [r5]
	ldr r0, _080A51B0 @ =sub_80A51B4
	str r0, [r1, #8]
_080A51A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A51B0: .4byte sub_80A51B4

	thumb_func_start sub_80A51B4
sub_80A51B4: @ 0x080A51B4
	push {r4, lr}
	ldr r0, _080A5208 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A51D8
	adds r0, r4, #0
	bl sub_80A5698
_080A51D8:
	ldrb r0, [r4, #0x18]
	ldr r1, _080A520C @ =gBldRegs
	cmp r0, #0
	beq _080A524C
	ldr r2, _080A5210 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A5218
	ldr r1, _080A5214 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	strh r2, [r1, #2]
	strh r2, [r1, #6]
	b _080A522A
	.align 2, 0
_080A5208: .4byte gCurTask
_080A520C: .4byte gBldRegs
_080A5210: .4byte gDispCnt
_080A5214: .4byte gWinRegs
_080A5218:
	ldr r1, _080A5260 @ =gWinRegs
	ldr r0, _080A5264 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A5268 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A526C @ =0x0000D1A0
	strh r0, [r1, #6]
_080A522A:
	adds r3, r1, #0
	ldr r0, _080A5270 @ =0x00001E3F
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r0, #0x1f
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #0xa]
	ldr r1, _080A5274 @ =gBldRegs
	ldr r0, _080A5278 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x1a]
	strb r2, [r4, #0x18]
_080A524C:
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A5298
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A5280
	ldr r2, _080A527C @ =0xFFFFFF00
	b _080A5282
	.align 2, 0
_080A5260: .4byte gWinRegs
_080A5264: .4byte 0x00008A5F
_080A5268: .4byte 0x00005F8B
_080A526C: .4byte 0x0000D1A0
_080A5270: .4byte 0x00001E3F
_080A5274: .4byte gBldRegs
_080A5278: .4byte 0x00003FBF
_080A527C: .4byte 0xFFFFFF00
_080A5280:
	ldr r2, _080A5294 @ =0xFFFFFE00
_080A5282:
	adds r0, r2, #0
	ldrh r3, [r4, #0x1a]
	adds r0, r0, r3
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	b _080A52CC
	.align 2, 0
_080A5294: .4byte 0xFFFFFE00
_080A5298:
	strh r0, [r4, #0x16]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A52B4
	ldr r0, _080A52AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A52B0 @ =sub_80A7D7C
	b _080A52CA
	.align 2, 0
_080A52AC: .4byte gCurTask
_080A52B0: .4byte sub_80A7D7C
_080A52B4:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_80A490C
	ldr r1, [r4]
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _080A52D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A52D8 @ =sub_80A7D00
_080A52CA:
	str r0, [r1, #8]
_080A52CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A52D4: .4byte gCurTask
_080A52D8: .4byte sub_80A7D00

	thumb_func_start sub_80A52DC
sub_80A52DC: @ 0x080A52DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r0, _080A537C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	movs r5, #0xff
	mov r8, r5
	mov sb, r5
	movs r2, #0
	adds r0, #9
	adds r1, r1, r0
_080A5300:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A530A
	adds r5, r2, #0
_080A530A:
	cmp r0, #4
	bne _080A5310
	mov r8, r2
_080A5310:
	cmp r0, #3
	bne _080A5316
	mov sb, r2
_080A5316:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080A5300
	adds r0, r4, #0
	bl sub_80A5824
	adds r0, r4, #0
	adds r0, #0xd8
	bl UpdateBgAnimationTiles
	ldrh r0, [r4, #0x16]
	cmp r0, #0x59
	bhi _080A5338
	adds r0, #1
	strh r0, [r4, #0x16]
_080A5338:
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r4, r1
	str r0, [sp]
	adds r1, #0x28
	adds r0, r4, r1
	str r0, [sp, #4]
	adds r1, #0x28
	adds r0, r4, r1
	str r0, [sp, #8]
	ldrh r0, [r4, #0x16]
	cmp r0, #9
	bne _080A5380
	lsls r1, r5, #0x18
	cmp r1, #0
	blt _080A53DE
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #1
	bl sub_80A4BF8
	b _080A53DE
	.align 2, 0
_080A537C: .4byte gCurTask
_080A5380:
	cmp r0, #0x3b
	bne _080A53B0
	mov r0, r8
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _080A53DE
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #4
	bl sub_80A4BF8
	b _080A53DE
_080A53B0:
	cmp r0, #0x59
	bne _080A53DE
	mov r0, sb
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _080A53DE
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #3
	bl sub_80A4BF8
_080A53DE:
	ldrh r0, [r4, #0x16]
	cmp r0, #9
	bls _080A544C
	lsls r0, r5, #0x18
	adds r5, r0, #0
	cmp r5, #0
	blt _080A53F8
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_80A555C
	cmp r0, #1
	bne _080A53FE
_080A53F8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A53FE:
	lsrs r2, r5, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	bne _080A5428
	lsls r0, r2, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A5428
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #1
	bl sub_80A4BF8
_080A5428:
	lsrs r1, r5, #0x18
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A544C
	lsls r0, r1, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A544C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #1
	bl sub_80A4BF8
_080A544C:
	ldrh r0, [r4, #0x16]
	cmp r0, #0x3b
	bls _080A54BC
	mov r1, r8
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	blt _080A5468
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_80A555C
	cmp r0, #1
	bne _080A546E
_080A5468:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A546E:
	lsrs r2, r5, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	bne _080A5498
	lsls r0, r2, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A5498
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #4
	bl sub_80A4BF8
_080A5498:
	lsrs r1, r5, #0x18
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A54BC
	lsls r0, r1, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A54BC
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #4
	bl sub_80A4BF8
_080A54BC:
	ldrh r0, [r4, #0x16]
	cmp r0, #0x59
	bls _080A552C
	mov r1, sb
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	blt _080A54D8
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_80A555C
	cmp r0, #1
	bne _080A54DE
_080A54D8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A54DE:
	lsrs r2, r5, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	bne _080A5508
	lsls r0, r2, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A5508
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #3
	bl sub_80A4BF8
_080A5508:
	lsrs r1, r5, #0x18
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A552C
	lsls r0, r1, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A552C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #3
	bl sub_80A4BF8
_080A552C:
	cmp r7, #3
	bne _080A5536
	ldr r1, [r4]
	movs r0, #0x16
	strb r0, [r1]
_080A5536:
	ldr r0, _080A5554 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080A5546
	ldr r0, _080A5558 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A5546:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5554: .4byte gBldRegs
_080A5558: .4byte gCurTask

	thumb_func_start sub_80A555C
sub_80A555C: @ 0x080A555C
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r1, r5, #1
	adds r0, #0x10
	adds r4, r0, r1
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r2, _080A55B4 @ =gUnknown_080D9BB2
	mov r1, ip
	adds r1, #0xc
	adds r3, r1, r5
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _080A559E
	movs r0, #0
	strh r0, [r4]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080A559E
	movs r0, #6
	strb r0, [r3]
_080A559E:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x28
	adds r3, r1, r0
	ldr r2, [r3]
	ldr r0, _080A55B8 @ =0xFFFFD800
	cmp r2, r0
	bgt _080A55BC
	movs r0, #1
	b _080A55D2
	.align 2, 0
_080A55B4: .4byte gUnknown_080D9BB2
_080A55B8: .4byte 0xFFFFD800
_080A55BC:
	ldr r1, _080A55D8 @ =gUnknown_080D9BAA
	mov r0, ip
	adds r0, #0xc
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r3]
	movs r0, #0
_080A55D2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A55D8: .4byte gUnknown_080D9BAA

	thumb_func_start sub_80A55DC
sub_80A55DC: @ 0x080A55DC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r6, #0
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bgt _080A55F0
	adds r0, #0x40
	str r0, [r3, #0x24]
	cmp r0, #0
	blt _080A55F4
_080A55F0:
	str r6, [r3, #0x24]
	movs r6, #1
_080A55F4:
	ldr r1, _080A5638 @ =gBgScrollRegs
	ldr r0, [r3, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r3, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	ldr r0, [r3, #0x44]
	subs r0, #0x40
	str r0, [r3, #0x44]
	cmp r0, #0
	bgt _080A5612
	movs r0, #0
	str r0, [r3, #0x44]
_080A5612:
	movs r4, #0
	adds r5, r3, #0
	adds r5, #0x2c
_080A5618:
	lsls r1, r4, #3
	adds r1, r5, r1
	ldr r2, [r3, #0x24]
	ldr r0, [r3, #0x44]
	subs r0, r0, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080A5618
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5638: .4byte gBgScrollRegs

	thumb_func_start sub_80A563C
sub_80A563C: @ 0x080A563C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r6, #0
	ldr r0, [r3, #0x24]
	ldr r1, _080A5690 @ =0xFFFFCC00
	cmp r0, r1
	blt _080A5652
	subs r0, #0x40
	str r0, [r3, #0x24]
	cmp r0, r1
	bgt _080A5656
_080A5652:
	str r1, [r3, #0x24]
	movs r6, #1
_080A5656:
	ldr r1, _080A5694 @ =gBgScrollRegs
	ldr r0, [r3, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r3, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	ldr r0, [r3, #0x44]
	adds r0, #0x20
	str r0, [r3, #0x44]
	movs r4, #0
	adds r5, r3, #0
	adds r5, #0x2c
_080A5672:
	lsls r1, r4, #3
	adds r1, r5, r1
	ldr r2, [r3, #0x24]
	ldr r0, [r3, #0x44]
	subs r0, r0, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080A5672
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5690: .4byte 0xFFFFCC00
_080A5694: .4byte gBgScrollRegs

	thumb_func_start sub_80A5698
sub_80A5698: @ 0x080A5698
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r3, _080A56BC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A56C4
	ldr r0, _080A56C0 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r1, [r0, #2]
	b _080A56DC
	.align 2, 0
_080A56BC: .4byte gPlayers
_080A56C0: .4byte gCharacterSelectOrderLUT
_080A56C4:
	ldr r1, _080A580C @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
_080A56DC:
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r6, r3
	str r0, [sp]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r6, r4
	str r0, [sp, #4]
	adds r3, #0x50
	adds r0, r6, r3
	str r0, [sp, #8]
	movs r4, #0x28
	adds r4, r4, r6
	mov sb, r4
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	cmp r2, #3
	beq _080A5764
	cmp r1, #3
	beq _080A5764
	adds r4, r6, #0
	adds r4, #0x48
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r1, _080A5810 @ =gUnknown_080D9B1C
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1]
	cmp r2, r3
	bne _080A573C
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #2]
	cmp r0, r3
	beq _080A574C
_080A573C:
	ldrh r0, [r1, #0x28]
	cmp r2, r0
	bne _080A5758
	adds r1, #0x2a
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A5758
_080A574C:
	ldrh r0, [r4, #0x10]
	adds r0, #0x12
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A5758:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A5764:
	movs r7, #0
_080A5766:
	lsls r0, r7, #2
	add r0, sp
	ldr r4, [r0]
	ldr r0, [r6]
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #8
	bhi _080A57B6
	ldr r2, _080A5814 @ =gUnknown_080D9A1C
	ldrh r1, [r4, #0xc]
	ldrh r0, [r2]
	cmp r1, r0
	bne _080A5788
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	beq _080A57A8
_080A5788:
	ldr r2, _080A5818 @ =gUnknown_080D9ADC
	ldrh r0, [r2]
	cmp r1, r0
	bne _080A5798
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	beq _080A57A8
_080A5798:
	ldr r2, _080A581C @ =gUnknown_080D99DC
	ldrh r0, [r2]
	cmp r1, r0
	bne _080A57B6
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	bne _080A57B6
_080A57A8:
	ldrb r0, [r3]
	cmp r0, #5
	bls _080A57B6
	ldr r0, [r4, #8]
	ldr r1, _080A5820 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
_080A57B6:
	lsls r2, r7, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A57DE
	movs r0, #0x40
	strh r0, [r4, #0x14]
_080A57DE:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080A5766
	adds r0, r5, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A580C: .4byte gCharacterSelectOrderLUT
_080A5810: .4byte gUnknown_080D9B1C
_080A5814: .4byte gUnknown_080D9A1C
_080A5818: .4byte gUnknown_080D9ADC
_080A581C: .4byte gUnknown_080D99DC
_080A5820: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A5824
sub_80A5824: @ 0x080A5824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r3, _080A5848 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5850
	ldr r0, _080A584C @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r1, [r0, #2]
	b _080A5868
	.align 2, 0
_080A5848: .4byte gPlayers
_080A584C: .4byte gCharacterSelectOrderLUT
_080A5850:
	ldr r1, _080A594C @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
_080A5868:
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [sp]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r7, r4
	str r0, [sp, #4]
	adds r3, #0x50
	adds r0, r7, r3
	str r0, [sp, #8]
	movs r4, #0x28
	adds r4, r4, r7
	mov sb, r4
	movs r0, #0x2c
	adds r0, r0, r7
	mov r8, r0
	cmp r2, #3
	beq _080A58F0
	cmp r1, #3
	beq _080A58F0
	adds r4, r7, #0
	adds r4, #0x70
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r7, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r1, _080A5950 @ =gUnknown_080D9B1C
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1]
	cmp r2, r3
	bne _080A58C8
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #2]
	cmp r0, r3
	beq _080A58D8
_080A58C8:
	ldrh r0, [r1, #0x28]
	cmp r2, r0
	bne _080A58E4
	adds r1, #0x2a
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A58E4
_080A58D8:
	ldrh r0, [r4, #0x10]
	adds r0, #0x12
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A58E4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A58F0:
	movs r5, #0
_080A58F2:
	lsls r0, r5, #2
	add r0, sp
	ldr r4, [r0]
	lsls r2, r5, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r7, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r0, [r7]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A5920
	movs r0, #0x40
	strh r0, [r4, #0x14]
_080A5920:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080A58F2
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A594C: .4byte gCharacterSelectOrderLUT
_080A5950: .4byte gUnknown_080D9B1C

	thumb_func_start sub_80A5954
sub_80A5954: @ 0x080A5954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _080A597C @ =gPlayers
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #5
	bls _080A5980
	movs r5, #0
	movs r6, #2
	b _080A598E
	.align 2, 0
_080A597C: .4byte gPlayers
_080A5980:
	lsrs r5, r1, #0x1c
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r6, r0, #0x1c
_080A598E:
	ldr r1, _080A59EC @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	cmp r7, #0
	beq _080A59FC
	movs r7, #0x10
	ldr r0, _080A59F0 @ =sub_80A6480
	movs r1, #0xa8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A59F4 @ =sub_80A7E78
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldr r4, _080A59F8 @ =gPlayers
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r3, [r0]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r1, r3
	strb r1, [r0]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r1, [r0]
	ands r2, r1
	movs r1, #2
	orrs r2, r1
	strb r2, [r0]
	b _080A5A1C
	.align 2, 0
_080A59EC: .4byte gDispCnt
_080A59F0: .4byte sub_80A6480
_080A59F4: .4byte sub_80A7E78
_080A59F8: .4byte gPlayers
_080A59FC:
	ldr r0, _080A5AE0 @ =sub_80A7E90
	movs r1, #0xa8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A5AE4 @ =sub_80A7E78
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	bl m4aMPlayAllStop
	movs r0, #0x4e
	bl m4aSongNumStart
_080A5A1C:
	mov r0, r8
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	movs r1, #0
	mov sb, r1
	strb r7, [r4, #4]
	str r1, [r4]
	movs r5, #0
	mov r2, sb
	strh r2, [r4, #8]
	strb r5, [r4, #6]
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r4, #0x14]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r4, #0x18]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, sb
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	strb r5, [r4, #5]
	ldr r0, _080A5AE8 @ =0x00000CAC
	bl EwramMalloc
	ldr r1, _080A5AEC @ =0x0300014C
	adds r6, r6, r1
	str r0, [r6]
	mov r2, sb
	str r2, [sp, #4]
	ldr r3, _080A5AF0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r7, _080A5AF4 @ =gBgCntRegs
	ldrh r1, [r7, #4]
	movs r2, #0xc
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov ip, r1
	add r0, ip
	str r0, [r3, #4]
	ldr r0, _080A5AF8 @ =0x85000010
	mov sl, r0
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _080A5AFC @ =gBgSprites_Unknown1
	mov r8, r1
	strb r5, [r1, #2]
	ldr r1, _080A5B00 @ =gBgSprites_Unknown2
	strb r5, [r1, #8]
	strb r5, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r6, #0x40
	strb r6, [r1, #0xb]
	mov r0, sb
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [r3]
	ldrh r0, [r7, #2]
	ands r2, r0
	lsls r2, r2, #0xc
	add r2, ip
	str r2, [r3, #4]
	mov r2, sl
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0x12
	mov r2, r8
	strb r0, [r2, #1]
	strb r5, [r1, #4]
	strb r5, [r1, #5]
	subs r0, #0x13
	strb r0, [r1, #6]
	strb r6, [r1, #7]
	strb r5, [r2]
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r0, [r1, #2]
	strb r6, [r1, #3]
	ldr r0, _080A5B04 @ =0x06010000
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5AE0: .4byte sub_80A7E90
_080A5AE4: .4byte sub_80A7E78
_080A5AE8: .4byte 0x00000CAC
_080A5AEC: .4byte 0x0300014C
_080A5AF0: .4byte 0x040000D4
_080A5AF4: .4byte gBgCntRegs
_080A5AF8: .4byte 0x85000010
_080A5AFC: .4byte gBgSprites_Unknown1
_080A5B00: .4byte gBgSprites_Unknown2
_080A5B04: .4byte 0x06010000

	thumb_func_start sub_80A5B08
sub_80A5B08: @ 0x080A5B08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, _080A5B30 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5B38
	ldr r0, _080A5B34 @ =gCharacterSelectOrderLUT
	ldrb r6, [r0]
	ldrb r5, [r0, #2]
	b _080A5B50
	.align 2, 0
_080A5B30: .4byte gPlayers
_080A5B34: .4byte gCharacterSelectOrderLUT
_080A5B38:
	ldr r1, _080A5CA4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r5, [r0]
_080A5B50:
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r0, [r4, #0xc]
	str r0, [r2]
	ldr r3, _080A5CA8 @ =gUnknown_080D9E68
	mov r8, r3
	lsls r1, r6, #2
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #5
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r3, [sp]
	adds r0, r0, r3
	str r0, [r4, #0xc]
	ldr r0, _080A5CAC @ =gUnknown_080D9E40
	mov sl, r0
	add r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	movs r7, #0
	strh r0, [r2, #0xc]
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	cmp r6, #4
	bne _080A5BAE
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A5BAE:
	str r7, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, [r4, #0xc]
	str r0, [r2]
	lsls r1, r5, #2
	mov r3, r8
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #5
	mov r8, r0
	ldr r0, [r4, #0xc]
	add r0, r8
	str r0, [r4, #0xc]
	add r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sb
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x80
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	strb r5, [r2, #0x1f]
	cmp r5, #4
	bne _080A5C0A
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A5C0A:
	str r7, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r4, #0xc]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0xfc
	str r0, [r1]
	ldr r0, [r4, #0xc]
	add r0, r8
	str r0, [r4, #0xc]
	cmp r6, #3
	beq _080A5C36
	cmp r5, #3
	bne _080A5C92
_080A5C36:
	movs r5, #0
	movs r2, #0x5c
	adds r2, r2, r4
	mov r8, r2
	mov r7, sl
	movs r3, #0
	mov sb, r3
	movs r6, #0
_080A5C46:
	mov r1, r8
	cmp r5, #0
	beq _080A5C50
	adds r1, r4, #0
	adds r1, #0x84
_080A5C50:
	ldr r0, [r4, #0xc]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0xc]
	ldr r0, [r7, #0x14]
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r0, [r7, #0x14]
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r3, sb
	strb r3, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #1
	bls _080A5C46
_080A5C92:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5CA4: .4byte gCharacterSelectOrderLUT
_080A5CA8: .4byte gUnknown_080D9E68
_080A5CAC: .4byte gUnknown_080D9E40

	thumb_func_start sub_80A5CB0
sub_80A5CB0: @ 0x080A5CB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r3, _080A5CE4 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5CEC
	ldr r0, _080A5CE8 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	mov r8, r1
	ldrb r6, [r0, #2]
	b _080A5D06
	.align 2, 0
_080A5CE4: .4byte gPlayers
_080A5CE8: .4byte gCharacterSelectOrderLUT
_080A5CEC:
	ldr r1, _080A5D4C @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A5D06:
	adds r4, r5, #0
	adds r4, #0xd4
	mov r3, sl
	cmp r3, #0
	beq _080A5D12
	subs r4, #0x28
_080A5D12:
	ldr r0, _080A5D50 @ =gUnknown_080D9E40
	mov r2, r8
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r3, sb
	lsls r2, r3, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x40
	strh r0, [r4, #0x14]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldrb r0, [r5, #4]
	adds r7, r2, #0
	cmp r0, #8
	bhi _080A5D54
	mov r0, r8
	b _080A5D56
	.align 2, 0
_080A5D4C: .4byte gCharacterSelectOrderLUT
_080A5D50: .4byte gUnknown_080D9E40
_080A5D54:
	movs r0, #0
_080A5D56:
	strb r0, [r4, #0x1f]
	movs r0, #0
	str r0, [r4, #8]
	mov r1, sb
	cmp r1, #5
	bhi _080A5D80
	mov r0, r8
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A5D7A
	ldrb r0, [r5, #4]
	cmp r0, #7
	bls _080A5D7A
	movs r0, #0x80
	lsls r0, r0, #3
	b _080A5D80
_080A5D7A:
	ldr r0, [r4, #8]
	ldr r1, _080A5D94 @ =0xFFFFFBFF
	ands r0, r1
_080A5D80:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r2, sl
	cmp r2, #0
	beq _080A5D98
	adds r3, r5, #0
	adds r3, #0xfc
	b _080A5D9E
	.align 2, 0
_080A5D94: .4byte 0xFFFFFBFF
_080A5D98:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r3, r5, r0
_080A5D9E:
	ldr r0, _080A5DD0 @ =gUnknown_080D9E40
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r7, r0
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A5DD4
	strb r6, [r3, #0x1f]
	b _080A5DD8
	.align 2, 0
_080A5DD0: .4byte gUnknown_080D9E40
_080A5DD4:
	movs r0, #0
	strb r0, [r3, #0x1f]
_080A5DD8:
	movs r0, #0
	str r0, [r3, #8]
	mov r1, sb
	cmp r1, #5
	bhi _080A5DF8
	subs r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A5E08
	ldrb r0, [r5, #4]
	cmp r0, #7
	bls _080A5E08
	movs r0, #0x80
	lsls r0, r0, #3
	b _080A5E0E
_080A5DF8:
	cmp r6, #3
	bne _080A5E08
	mov r2, sb
	cmp r2, #7
	bne _080A5E08
	movs r0, #0x80
	lsls r0, r0, #3
	b _080A5E0E
_080A5E08:
	ldr r0, [r3, #8]
	ldr r1, _080A5E6C @ =0xFFFFFBFF
	ands r0, r1
_080A5E0E:
	str r0, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	mov r3, r8
	cmp r3, #3
	beq _080A5E20
	cmp r6, #3
	bne _080A5E7C
_080A5E20:
	adds r3, r5, #0
	adds r3, #0x5c
	mov r0, sl
	cmp r0, #0
	beq _080A5E2C
	adds r3, #0x28
_080A5E2C:
	ldr r1, _080A5E70 @ =gUnknown_080D9E40
	ldr r0, [r1, #0x14]
	adds r0, r7, r0
	ldrh r0, [r0]
	movs r2, #0
	movs r4, #0
	strh r0, [r3, #0xc]
	ldr r0, [r1, #0x14]
	adds r0, r7, r0
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r4, [r3, #8]
	mov r1, sb
	cmp r1, #3
	bhi _080A5E74
	ldrb r0, [r5, #4]
	cmp r0, #7
	bls _080A5E74
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r3, #8]
	b _080A5E76
	.align 2, 0
_080A5E6C: .4byte 0xFFFFFBFF
_080A5E70: .4byte gUnknown_080D9E40
_080A5E74:
	str r4, [r3, #8]
_080A5E76:
	adds r0, r3, #0
	bl UpdateSpriteAnimation
_080A5E7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5E8C
sub_80A5E8C: @ 0x080A5E8C
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	adds r4, r3, #0
	adds r4, #0xd4
	cmp r2, #0
	beq _080A5EA0
	subs r4, #0x28
_080A5EA0:
	ldr r0, [r3, #0xc]
	str r0, [r4]
	ldr r0, _080A5EE8 @ =gUnknown_080D9E68
	ldr r1, [r0, #8]
	lsls r1, r1, #5
	ldr r0, [r3, #0xc]
	adds r0, r0, r1
	str r0, [r3, #0xc]
	ldr r3, _080A5EEC @ =gUnknown_080D9E40
	ldr r0, [r3, #8]
	lsls r1, r5, #3
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xc]
	ldr r0, [r3, #8]
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #2
	strb r0, [r4, #0x1f]
	str r2, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5EE8: .4byte gUnknown_080D9E68
_080A5EEC: .4byte gUnknown_080D9E40

	thumb_func_start sub_80A5EF0
sub_80A5EF0: @ 0x080A5EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r3, _080A5F20 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5F28
	ldr r0, _080A5F24 @ =gCharacterSelectOrderLUT
	ldrb r5, [r0]
	ldrb r7, [r0, #2]
	b _080A5F40
	.align 2, 0
_080A5F20: .4byte gPlayers
_080A5F24: .4byte gCharacterSelectOrderLUT
_080A5F28:
	ldr r1, _080A5F84 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r7, [r0]
_080A5F40:
	adds r4, r6, #0
	adds r4, #0xd4
	mov r0, sl
	cmp r0, #0
	beq _080A5F4C
	subs r4, #0x28
_080A5F4C:
	ldr r0, _080A5F88 @ =gUnknown_080D9E40
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r2, sb
	lsls r3, r2, #3
	adds r0, r3, r0
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r3, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	mov r8, r3
	cmp r5, #0
	bne _080A5F8C
	mov r0, sb
	cmp r0, #0xa
	bne _080A5F8C
	movs r0, #0x20
	b _080A5F8E
	.align 2, 0
_080A5F84: .4byte gCharacterSelectOrderLUT
_080A5F88: .4byte gUnknown_080D9E40
_080A5F8C:
	movs r0, #0x10
_080A5F8E:
	strb r0, [r4, #0x1c]
	movs r1, #0
	strb r5, [r4, #0x1f]
	cmp r5, #4
	bne _080A5F9C
	movs r0, #5
	strb r0, [r4, #0x1f]
_080A5F9C:
	str r1, [r4, #8]
	cmp r5, #0
	bne _080A5FAC
	ldrb r0, [r6, #4]
	cmp r0, #0x12
	bls _080A5FB6
	str r5, [r4, #8]
	b _080A5FC0
_080A5FAC:
	cmp r5, #1
	bne _080A5FBE
	ldrb r0, [r6, #4]
	cmp r0, #0x13
	bhi _080A5FBE
_080A5FB6:
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #8]
	b _080A5FC0
_080A5FBE:
	str r1, [r4, #8]
_080A5FC0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r6, #4]
	cmp r0, #0x14
	bhi _080A5FD2
	mov r2, sb
	cmp r2, #0xa
	beq _080A607E
_080A5FD2:
	mov r0, sl
	cmp r0, #0
	beq _080A5FDE
	adds r2, r6, #0
	adds r2, #0xfc
	b _080A5FE4
_080A5FDE:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r6, r0
_080A5FE4:
	ldr r0, _080A602C @ =gUnknown_080D9E40
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	add r0, r8
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldr r0, [r1]
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r7, [r2, #0x1f]
	cmp r7, #4
	bne _080A6016
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A6016:
	str r3, [r2, #8]
	ldrb r0, [r6, #4]
	cmp r0, #0x13
	bhi _080A6030
	cmp r7, #1
	bhi _080A6030
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r2, #8]
	b _080A6032
	.align 2, 0
_080A602C: .4byte gUnknown_080D9E40
_080A6030:
	str r3, [r2, #8]
_080A6032:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	cmp r5, #3
	beq _080A6040
	cmp r7, #3
	bne _080A607E
_080A6040:
	adds r4, r6, #0
	adds r4, #0x5c
	mov r2, sl
	cmp r2, #0
	beq _080A604C
	adds r4, #0x28
_080A604C:
	ldr r2, _080A608C @ =gUnknown_080D9E40
	ldr r0, [r2, #0x14]
	add r0, r8
	ldrh r0, [r0]
	movs r3, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	ldr r0, [r2, #0x14]
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080A607E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A608C: .4byte gUnknown_080D9E40

	thumb_func_start sub_80A6090
sub_80A6090: @ 0x080A6090
	push {r4, lr}
	ldr r4, _080A60D8 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80A6A5C
	ldr r2, _080A60DC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A60E0 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3f
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r1, _080A60E4 @ =gBldRegs
	ldr r0, _080A60E8 @ =0x00003FFF
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r1, [r4]
	ldr r0, _080A60EC @ =sub_80A60F0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A60D8: .4byte gCurTask
_080A60DC: .4byte gDispCnt
_080A60E0: .4byte gWinRegs
_080A60E4: .4byte gBldRegs
_080A60E8: .4byte 0x00003FFF
_080A60EC: .4byte sub_80A60F0

	thumb_func_start sub_80A60F0
sub_80A60F0: @ 0x080A60F0
	push {r4, r5, r6, lr}
	ldr r6, _080A616C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _080A6170 @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r5, #0
	bl sub_80A6A5C
	ldrb r0, [r5, #4]
	cmp r0, #6
	bne _080A6124
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
_080A6124:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	ldr r2, _080A6174 @ =gUnknown_080D9E58
	ldrb r1, [r5, #5]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	blo _080A6190
	movs r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #5]
	ldr r1, _080A6178 @ =gUnknown_080DA054
	ldrb r0, [r5, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r1, _080A617C @ =gUnknown_080D9BC0
	ldrb r0, [r5, #5]
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_80A5CB0
	cmp r4, #3
	bne _080A6184
	ldr r1, [r6]
	ldr r0, _080A6180 @ =sub_80A619C
	b _080A618E
	.align 2, 0
_080A616C: .4byte gCurTask
_080A6170: .4byte gPlayers
_080A6174: .4byte gUnknown_080D9E58
_080A6178: .4byte gUnknown_080DA054
_080A617C: .4byte gUnknown_080D9BC0
_080A6180: .4byte sub_80A619C
_080A6184:
	ldrb r0, [r5, #4]
	cmp r0, #7
	bne _080A6190
	ldr r1, [r6]
	ldr r0, _080A6198 @ =sub_80A6208
_080A618E:
	str r0, [r1, #8]
_080A6190:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6198: .4byte sub_80A6208

	thumb_func_start sub_80A619C
sub_80A619C: @ 0x080A619C
	push {r4, r5, r6, lr}
	ldr r6, _080A61F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _080A61FC @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #4
	bne _080A61D0
	ldr r1, _080A6200 @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A45B4
	str r0, [r4, #0xc]
	movs r0, #5
	strb r0, [r4, #4]
_080A61D0:
	ldrb r0, [r4, #4]
	cmp r0, #6
	bne _080A61F0
	movs r0, #0
	strh r0, [r4, #8]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_80A5CB0
	ldr r1, [r6]
	ldr r0, _080A6204 @ =sub_80A60F0
	str r0, [r1, #8]
_080A61F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A61F8: .4byte gCurTask
_080A61FC: .4byte gPlayers
_080A6200: .4byte 0x03000004
_080A6204: .4byte sub_80A60F0

	thumb_func_start sub_80A6208
sub_80A6208: @ 0x080A6208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080A6238 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	mov r8, r0
	ldr r3, _080A623C @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6244
	ldr r0, _080A6240 @ =gCharacterSelectOrderLUT
	ldrb r6, [r0]
	ldrb r7, [r0, #2]
	b _080A625C
	.align 2, 0
_080A6238: .4byte gCurTask
_080A623C: .4byte gPlayers
_080A6240: .4byte gCharacterSelectOrderLUT
_080A6244:
	ldr r1, _080A62AC @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r7, [r0]
_080A625C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80A6370
	cmp r0, #1
	bne _080A62CA
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r0, _080A62B0 @ =gUnknown_080D9BC0
	ldrb r3, [r0]
	ldr r1, _080A62B4 @ =gUnknown_080D9E40
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	lsls r3, r3, #3
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r2, #0xc]
	cmp r0, r1
	beq _080A62C0
	strh r1, [r2, #0xc]
	ldr r0, [r5]
	adds r0, r3, r0
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	subs r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A62B8
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A62BE
	.align 2, 0
_080A62AC: .4byte gCharacterSelectOrderLUT
_080A62B0: .4byte gUnknown_080D9BC0
_080A62B4: .4byte gUnknown_080D9E40
_080A62B8:
	ldr r0, [r2, #8]
	ldr r1, _080A6314 @ =0xFFFFFBFF
	ands r0, r1
_080A62BE:
	str r0, [r2, #8]
_080A62C0:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A62CA:
	adds r0, r4, #0
	bl sub_80A63FC
	cmp r0, #1
	bne _080A6332
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, _080A6318 @ =gUnknown_080D9BC0
	ldrb r3, [r0]
	ldr r1, _080A631C @ =gUnknown_080D9E40
	lsls r0, r7, #2
	adds r5, r0, r1
	ldr r0, [r5]
	lsls r3, r3, #3
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r2, #0xc]
	cmp r0, r1
	beq _080A6328
	strh r1, [r2, #0xc]
	ldr r0, [r5]
	adds r0, r3, r0
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	subs r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A6320
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A6326
	.align 2, 0
_080A6314: .4byte 0xFFFFFBFF
_080A6318: .4byte gUnknown_080D9BC0
_080A631C: .4byte gUnknown_080D9E40
_080A6320:
	ldr r0, [r2, #8]
	ldr r1, _080A6354 @ =0xFFFFFBFF
	ands r0, r1
_080A6326:
	str r0, [r2, #8]
_080A6328:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A6332:
	mov r2, r8
	cmp r2, #2
	bne _080A6360
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_80A5CB0
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldr r0, _080A6358 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A635C @ =sub_80A7F58
	str r0, [r1, #8]
	b _080A6366
	.align 2, 0
_080A6354: .4byte 0xFFFFFBFF
_080A6358: .4byte gCurTask
_080A635C: .4byte sub_80A7F58
_080A6360:
	adds r0, r4, #0
	bl sub_80A6A5C
_080A6366:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A6370
sub_80A6370: @ 0x080A6370
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xd4
	ldr r0, _080A638C @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6394
	ldr r0, _080A6390 @ =gCharacterSelectOrderLUT
	b _080A639A
	.align 2, 0
_080A638C: .4byte gPlayers
_080A6390: .4byte gCharacterSelectOrderLUT
_080A6394:
	ldr r1, _080A63C4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
_080A639A:
	ldrb r1, [r0]
	ldr r0, _080A63C8 @ =gUnknown_080D9B79
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r2, r0, #8
	ldr r0, [r3, #0x14]
	cmp r0, r2
	bge _080A63CC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #0x14]
	cmp r0, r2
	blt _080A63F4
	b _080A63E4
	.align 2, 0
_080A63C4: .4byte gCharacterSelectOrderLUT
_080A63C8: .4byte gUnknown_080D9B79
_080A63CC:
	cmp r0, r2
	ble _080A63E4
	ldr r0, [r4, #8]
	ldr r1, _080A63EC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x14]
	ldr r1, _080A63F0 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r3, #0x14]
	cmp r0, r2
	bgt _080A63F4
_080A63E4:
	str r2, [r3, #0x14]
	movs r0, #1
	b _080A63F6
	.align 2, 0
_080A63EC: .4byte 0xFFFFFBFF
_080A63F0: .4byte 0xFFFFFE00
_080A63F4:
	movs r0, #0
_080A63F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A63FC
sub_80A63FC: @ 0x080A63FC
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r3, r0
	ldr r1, _080A6444 @ =gCharacterSelectOrderLUT
	ldr r0, _080A6448 @ =gPlayers
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _080A644C @ =gUnknown_080D9B79
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r2, r0, #8
	ldr r0, [r3, #0x1c]
	cmp r0, r2
	bge _080A6450
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	cmp r0, r2
	blt _080A6478
	b _080A6468
	.align 2, 0
_080A6444: .4byte gCharacterSelectOrderLUT
_080A6448: .4byte gPlayers
_080A644C: .4byte gUnknown_080D9B79
_080A6450:
	cmp r0, r2
	ble _080A6468
	ldr r0, [r4, #8]
	ldr r1, _080A6470 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x1c]
	ldr r1, _080A6474 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	cmp r0, r2
	bgt _080A6478
_080A6468:
	str r2, [r3, #0x1c]
	movs r0, #1
	b _080A647A
	.align 2, 0
_080A6470: .4byte 0xFFFFFBFF
_080A6474: .4byte 0xFFFFFF00
_080A6478:
	movs r0, #0
_080A647A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6480
sub_80A6480: @ 0x080A6480
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080A64B8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r6, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080A6560
	ldr r3, _080A64BC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A64C4
	ldr r0, _080A64C0 @ =gCharacterSelectOrderLUT
	ldrb r6, [r0]
	ldrb r3, [r0, #2]
	b _080A64DC
	.align 2, 0
_080A64B8: .4byte gCurTask
_080A64BC: .4byte gPlayers
_080A64C0: .4byte gCharacterSelectOrderLUT
_080A64C4:
	ldr r1, _080A6554 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r3, [r0]
_080A64DC:
	ldr r2, _080A6558 @ =gUnknown_080D9B7E
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r1, #0xf2
	lsls r1, r1, #7
	str r1, [r4, #0x18]
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	bl sub_80A5B08
	adds r0, r4, #0
	adds r0, #0x34
	ldr r1, [r4, #0xc]
	str r1, [r4, #0x34]
	movs r7, #0xa0
	lsls r7, r7, #2
	adds r1, r1, r7
	str r1, [r4, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _080A655C @ =0x00000533
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	adds r1, #0xa
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #4
	ldr r1, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x14
	bl sub_80A828C
	str r0, [r4, #0xc]
	b _080A65B4
	.align 2, 0
_080A6554: .4byte gCharacterSelectOrderLUT
_080A6558: .4byte gUnknown_080D9B7E
_080A655C: .4byte 0x00000533
_080A6560:
	cmp r0, #1
	bne _080A6580
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_80A5EF0
	ldr r1, _080A657C @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A45B4
	str r0, [r4, #0xc]
	b _080A65B4
	.align 2, 0
_080A657C: .4byte 0x03000004
_080A6580:
	cmp r0, #2
	bne _080A65B4
	ldr r0, [r4, #0xc]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x5a
	rsbs r2, r2, #0
	ldr r7, _080A65AC @ =0x03000004
	adds r3, r5, r7
	str r3, [sp]
	movs r3, #0
	bl sub_80A9BD8
	str r0, [r4, #0xc]
	movs r0, #0
	strh r6, [r4, #8]
	strb r0, [r4, #6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080A65B0 @ =sub_80A65C8
	str r0, [r1, #8]
	b _080A65BA
	.align 2, 0
_080A65AC: .4byte 0x03000004
_080A65B0: .4byte sub_80A65C8
_080A65B4:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
_080A65BA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A65C8
sub_80A65C8: @ 0x080A65C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080A6638 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_80A6DD0
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	ldr r1, _080A663C @ =gUnknown_080D9E80
	ldrb r2, [r5, #6]
	adds r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _080A662A
	adds r0, r2, #1
	strb r0, [r5, #6]
	ldr r0, [r5, #0xc]
	ldr r4, _080A6640 @ =gUnknown_080D9E90
	ldrb r3, [r5, #6]
	lsls r2, r3, #3
	adds r1, r2, r4
	ldr r1, [r1]
	adds r4, #4
	adds r2, r2, r4
	ldr r2, [r2]
	ldr r7, _080A6644 @ =0x03000004
	adds r4, r6, r7
	str r4, [sp]
	bl sub_80A9BD8
	str r0, [r5, #0xc]
	ldrb r0, [r5, #6]
	cmp r0, #0xc
	bls _080A662A
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080A6648 @ =sub_80A6768
	str r0, [r1, #8]
_080A662A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6638: .4byte gCurTask
_080A663C: .4byte gUnknown_080D9E80
_080A6640: .4byte gUnknown_080D9E90
_080A6644: .4byte 0x03000004
_080A6648: .4byte sub_80A6768

	thumb_func_start sub_80A664C
sub_80A664C: @ 0x080A664C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080A66EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80A6A5C
	ldrb r0, [r5, #4]
	cmp r0, #0xe
	bne _080A6690
	ldr r0, [r5, #0x30]
	subs r0, #0x40
	str r0, [r5, #0x30]
	cmp r0, #0
	bgt _080A667A
	movs r0, #0
	str r0, [r5, #0x30]
_080A667A:
	ldr r1, [r5, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, _080A66F0 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x18]
_080A6690:
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x20]
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	ldr r1, _080A66F4 @ =gUnknown_080D9E80
	ldrb r2, [r5, #6]
	adds r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _080A66E2
	adds r0, r2, #1
	strb r0, [r5, #6]
	ldr r0, [r5, #0xc]
	ldr r4, _080A66F8 @ =gUnknown_080D9E90
	ldrb r3, [r5, #6]
	lsls r2, r3, #3
	adds r1, r2, r4
	ldr r1, [r1]
	adds r4, #4
	adds r2, r2, r4
	ldr r2, [r2]
	adds r4, r5, #4
	str r4, [sp]
	bl sub_80A9BD8
	str r0, [r5, #0xc]
	ldrb r0, [r5, #6]
	cmp r0, #0xd
	bls _080A66E2
	adds r0, r5, #0
	movs r1, #6
	movs r2, #1
	bl sub_80A5CB0
	ldr r0, _080A66EC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A66FC @ =sub_80A808C
	str r0, [r1, #8]
_080A66E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A66EC: .4byte gCurTask
_080A66F0: .4byte gBgScrollRegs
_080A66F4: .4byte gUnknown_080D9E80
_080A66F8: .4byte gUnknown_080D9E90
_080A66FC: .4byte sub_80A808C

	thumb_func_start sub_80A6700
sub_80A6700: @ 0x080A6700
	push {r4, r5, r6, lr}
	ldr r6, _080A6758 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A6BDC
	ldrh r1, [r4, #8]
	ldr r0, _080A675C @ =0x000001DF
	cmp r1, r0
	bhi _080A6720
	adds r0, r1, #1
	strh r0, [r4, #8]
_080A6720:
	ldrh r1, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bne _080A673A
	adds r0, r1, #1
	strh r0, [r4, #8]
	ldr r1, _080A6760 @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A9E24
	str r0, [r4, #0xc]
_080A673A:
	ldrb r0, [r4, #4]
	cmp r0, #0x12
	bne _080A6750
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl sub_80A5CB0
	ldr r1, [r6]
	ldr r0, _080A6764 @ =sub_80A805C
	str r0, [r1, #8]
_080A6750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6758: .4byte gCurTask
_080A675C: .4byte 0x000001DF
_080A6760: .4byte 0x03000004
_080A6764: .4byte sub_80A805C

	thumb_func_start sub_80A6768
sub_80A6768: @ 0x080A6768
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _080A679C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	add r0, sp, #4
	movs r1, #0
	movs r2, #6
	bl memset
	ldr r3, _080A67A0 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A67A8
	ldr r0, _080A67A4 @ =gCharacterSelectOrderLUT
	ldrb r7, [r0]
	ldrb r6, [r0, #2]
	b _080A67C0
	.align 2, 0
_080A679C: .4byte gCurTask
_080A67A0: .4byte gPlayers
_080A67A4: .4byte gCharacterSelectOrderLUT
_080A67A8:
	ldr r1, _080A6844 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A67C0:
	add r1, sp, #4
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, #0x78
	strh r0, [r1, #2]
	adds r0, #0xb4
	strh r0, [r1, #4]
	adds r0, r5, #0
	bl sub_80A6DD0
	add r1, sp, #4
	ldrh r0, [r5, #8]
	ldrh r1, [r1]
	cmp r0, r1
	blo _080A67FE
	adds r4, r5, #0
	adds r4, #0x34
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A67FE:
	add r0, sp, #4
	ldrh r1, [r5, #8]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bhi _080A680C
	adds r0, r1, #1
	strh r0, [r5, #8]
_080A680C:
	add r0, sp, #4
	ldrh r1, [r5, #8]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080A6856
	adds r0, r1, #1
	strh r0, [r5, #8]
	movs r0, #0x13
	strb r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #1
	bl sub_80A5EF0
	adds r0, r5, #4
	ldr r1, [r5, #0xc]
	bl sub_80AA06C
	str r0, [r5, #0xc]
	cmp r7, #0
	bne _080A6848
	ldr r0, [r5, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x18]
	b _080A6856
	.align 2, 0
_080A6844: .4byte gCharacterSelectOrderLUT
_080A6848:
	cmp r6, #0
	bne _080A6856
	ldr r0, [r5, #0x20]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r5, #0x20]
_080A6856:
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _080A6882
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r5, #0xc]
	str r1, [sp]
	movs r1, #0x2b
	movs r2, #0x64
	movs r3, #0x28
	bl sub_80AD7B4
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r5, #0x24]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x28]
_080A6882:
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldrh r0, [r5, #8]
	cmp r0, r1
	bls _080A68A0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r4]
	bl sub_80239A8
_080A68A0:
	ldr r0, [r5]
	cmp r0, #1
	bne _080A68F8
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80239A8
	add r1, sp, #4
	ldrh r0, [r5, #8]
	ldrh r1, [r1, #4]
	cmp r0, r1
	blo _080A68F8
	cmp r7, #0
	bne _080A68D0
	ldr r0, [r5, #0x18]
	ldr r2, _080A68CC @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r5, #0x18]
	b _080A68DC
	.align 2, 0
_080A68CC: .4byte 0xFFFFF800
_080A68D0:
	cmp r6, #0
	bne _080A68DC
	ldr r0, [r5, #0x20]
	ldr r1, _080A6900 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r5, #0x20]
_080A68DC:
	movs r0, #0x14
	strb r0, [r5, #4]
	adds r0, r5, #0
	bl sub_80A825C
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #1
	bl sub_80A5EF0
	ldr r0, _080A6904 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A6908 @ =sub_80A80EC
	str r0, [r1, #8]
_080A68F8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6900: .4byte 0xFFFFF800
_080A6904: .4byte gCurTask
_080A6908: .4byte sub_80A80EC

	thumb_func_start sub_80A690C
sub_80A690C: @ 0x080A690C
	push {r4, r5, lr}
	ldr r0, _080A6990 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldrb r3, [r4, #6]
	cmp r3, #5
	bhi _080A694C
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r2, _080A6994 @ =gUnknown_080D9BB2
	ldrb r1, [r4, #6]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _080A694C
	strh r5, [r4, #8]
	adds r0, r3, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080A694C
	movs r0, #6
	strb r0, [r4, #6]
_080A694C:
	ldrb r0, [r4, #6]
	cmp r0, #3
	bne _080A6962
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080A6962
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #1
	bl sub_80A5EF0
_080A6962:
	ldrb r0, [r4, #6]
	cmp r0, #6
	bne _080A6978
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080A6978
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #1
	bl sub_80A5EF0
_080A6978:
	ldr r2, [r4, #0x1c]
	ldr r0, _080A6998 @ =0xFFFFD800
	cmp r2, r0
	ble _080A69A0
	ldr r0, _080A699C @ =gUnknown_080D9BAA
	ldrb r1, [r4, #6]
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r4, #0x1c]
	b _080A69A2
	.align 2, 0
_080A6990: .4byte gCurTask
_080A6994: .4byte gUnknown_080D9BB2
_080A6998: .4byte 0xFFFFD800
_080A699C: .4byte gUnknown_080D9BAA
_080A69A0:
	movs r5, #1
_080A69A2:
	adds r0, r4, #0
	bl sub_80A6DD0
	ldrb r0, [r4, #4]
	cmp r0, #0x16
	bne _080A69D2
	cmp r5, #0
	beq _080A69D2
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, _080A69D8 @ =0xFFFFE200
	str r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #0
	bl sub_80A5E8C
	ldr r0, _080A69DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A69E0 @ =sub_80A814C
	str r0, [r1, #8]
_080A69D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A69D8: .4byte 0xFFFFE200
_080A69DC: .4byte gCurTask
_080A69E0: .4byte sub_80A814C

	thumb_func_start sub_80A69E4
sub_80A69E4: @ 0x080A69E4
	push {r4, r5, r6, lr}
	ldr r6, _080A6A44 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A8234
	ldrh r0, [r4, #8]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bne _080A6A3C
	ldr r2, _080A6A48 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A6A4C @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldr r3, _080A6A50 @ =0x00003FFF
	strh r3, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r0, _080A6A54 @ =gBldRegs
	strh r3, [r0]
	strh r5, [r0, #4]
	str r5, [r4, #0x10]
	strh r5, [r4, #8]
	ldr r1, [r6]
	ldr r0, _080A6A58 @ =sub_80A8198
	str r0, [r1, #8]
_080A6A3C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6A44: .4byte gCurTask
_080A6A48: .4byte gDispCnt
_080A6A4C: .4byte gWinRegs
_080A6A50: .4byte 0x00003FFF
_080A6A54: .4byte gBldRegs
_080A6A58: .4byte sub_80A8198

	thumb_func_start sub_80A6A5C
sub_80A6A5C: @ 0x080A6A5C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6A7C @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6A84
	ldr r0, _080A6A80 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6A9C
	.align 2, 0
_080A6A7C: .4byte gPlayers
_080A6A80: .4byte gCharacterSelectOrderLUT
_080A6A84:
	ldr r1, _080A6BC8 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6A9C:
	cmp r2, #3
	bne _080A6ACE
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6AC2
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6AC2:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6ACE:
	cmp r6, #3
	bne _080A6B00
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r0, [r5, #0x1c]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6AF4
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6AF4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6B00:
	adds r4, r5, #0
	adds r4, #0xd4
	ldrb r0, [r5, #4]
	adds r3, r0, #0
	cmp r3, #8
	bhi _080A6B3C
	ldr r1, _080A6BCC @ =gUnknown_080D9D08
	ldrh r2, [r4, #0xc]
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B1E
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	beq _080A6B2E
_080A6B1E:
	ldr r1, _080A6BD0 @ =gUnknown_080D9C90
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B3C
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _080A6B3C
_080A6B2E:
	cmp r3, #5
	bls _080A6B3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080A6B3C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6B58
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6B58:
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6B9C
	ldr r1, _080A6BCC @ =gUnknown_080D9D08
	ldrh r2, [r4, #0xc]
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B7C
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	beq _080A6B8C
_080A6B7C:
	ldr r1, _080A6BD0 @ =gUnknown_080D9C90
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B9C
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _080A6B9C
_080A6B8C:
	ldrb r0, [r5, #4]
	cmp r0, #5
	bls _080A6B9C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080A6B9C:
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6BB8
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6BB8:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6BD4
	movs r0, #1
	b _080A6BD6
	.align 2, 0
_080A6BC8: .4byte gCharacterSelectOrderLUT
_080A6BCC: .4byte gUnknown_080D9D08
_080A6BD0: .4byte gUnknown_080D9C90
_080A6BD4:
	movs r0, #0
_080A6BD6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6BDC
sub_80A6BDC: @ 0x080A6BDC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6BFC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6C04
	ldr r0, _080A6C00 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6C1C
	.align 2, 0
_080A6BFC: .4byte gPlayers
_080A6C00: .4byte gCharacterSelectOrderLUT
_080A6C04:
	ldr r1, _080A6CD4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6C1C:
	cmp r2, #3
	bne _080A6C4E
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6C42
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6C42:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6C4E:
	cmp r6, #3
	bne _080A6C80
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r5, #0x1c]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6C74
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6C74:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6C80:
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6CA0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6CA0:
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6CC6
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6CC6:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6CD8
	movs r0, #1
	b _080A6CDA
	.align 2, 0
_080A6CD4: .4byte gCharacterSelectOrderLUT
_080A6CD8:
	movs r0, #0
_080A6CDA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6CE0
sub_80A6CE0: @ 0x080A6CE0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6D00 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6D08
	ldr r0, _080A6D04 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6D20
	.align 2, 0
_080A6D00: .4byte gPlayers
_080A6D04: .4byte gCharacterSelectOrderLUT
_080A6D08:
	ldr r1, _080A6DC4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6D20:
	cmp r2, #3
	bne _080A6D46
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6D46:
	cmp r6, #3
	bne _080A6D6C
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6D6C:
	adds r4, r5, #0
	adds r4, #0xd4
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6D8C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6D8C:
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6DB4
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6DB4:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6DC8
	movs r0, #1
	b _080A6DCA
	.align 2, 0
_080A6DC4: .4byte gCharacterSelectOrderLUT
_080A6DC8:
	movs r0, #0
_080A6DCA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6DD0
sub_80A6DD0: @ 0x080A6DD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6DF0 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6DF8
	ldr r0, _080A6DF4 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6E10
	.align 2, 0
_080A6DF0: .4byte gPlayers
_080A6DF4: .4byte gCharacterSelectOrderLUT
_080A6DF8:
	ldr r1, _080A6EB0 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6E10:
	cmp r2, #3
	bne _080A6E36
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6E36:
	cmp r6, #3
	bne _080A6E5C
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6E5C:
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6E7C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6E7C:
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6EA2
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6EA2:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6EB4
	movs r0, #1
	b _080A6EB6
	.align 2, 0
_080A6EB0: .4byte gCharacterSelectOrderLUT
_080A6EB4:
	movs r0, #0
_080A6EB6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6EBC
sub_80A6EBC: @ 0x080A6EBC
	push {lr}
	mov ip, r0
	ldr r2, _080A6F1C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A6F20 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080A6F24 @ =0x00008D07
	strh r0, [r1]
	ldr r1, _080A6F28 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	movs r0, #0x30
	strh r0, [r1, #2]
	mov r0, ip
	adds r0, #0xec
	ldr r1, _080A6F2C @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A6F30 @ =0x06006800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0x99
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	movs r1, #0x40
	strh r1, [r0, #0x28]
	adds r1, #0xd6
	add r1, ip
	strb r3, [r1]
	strh r2, [r0, #0x2e]
	bl DrawBackground
	pop {r0}
	bx r0
	.align 2, 0
_080A6F1C: .4byte gDispCnt
_080A6F20: .4byte gBgCntRegs
_080A6F24: .4byte 0x00008D07
_080A6F28: .4byte gBgScrollRegs
_080A6F2C: .4byte 0x06004000
_080A6F30: .4byte 0x06006800

	thumb_func_start sub_80A6F34
sub_80A6F34: @ 0x080A6F34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x74
	ldr r2, [r7, #8]
	str r2, [r7, #0x74]
	ldr r3, _080A70B4 @ =gUnknown_080D9F08
	ldr r1, [r3, #0xc]
	lsls r1, r1, #5
	adds r2, r2, r1
	str r2, [r7, #8]
	ldrh r1, [r3, #8]
	movs r2, #0
	mov r8, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #0xa0
	lsls r3, r3, #3
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x4c
	ldr r1, [r7, #8]
	str r1, [r7, #0x4c]
	ldr r2, _080A70B4 @ =gUnknown_080D9F08
	ldr r6, [r2, #0x24]
	lsls r6, r6, #5
	adds r1, r1, r6
	str r1, [r7, #8]
	ldrh r1, [r2, #0x20]
	mov r3, sp
	strh r1, [r3]
	strh r1, [r0, #0xc]
	adds r1, r2, #0
	adds r1, #0x22
	ldrb r5, [r1]
	strb r5, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r2, sl
	strh r2, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, sb
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r1, [r7, #8]
	str r1, [r0]
	ldr r3, _080A70B4 @ =gUnknown_080D9F08
	ldr r2, [r3, #0x1c]
	lsls r2, r2, #5
	ldr r1, [r7, #8]
	adds r1, r1, r2
	str r1, [r7, #8]
	ldrh r1, [r3, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r3, #1
	mov r8, r3
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, [r7, #8]
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r1, r1, r6
	str r1, [r7, #8]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r0, #0xc]
	strb r5, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r3, sl
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x24
	ldr r1, [r7, #8]
	str r1, [r7, #0x24]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r7, #8]
	ldr r2, _080A70B4 @ =gUnknown_080D9F08
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r3, sl
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
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
_080A70B4: .4byte gUnknown_080D9F08

	thumb_func_start sub_80A70B8
sub_80A70B8: @ 0x080A70B8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080A7120 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _080A7124 @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _080A70F4
	ldr r1, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #0x20
	str r0, [r4, #0x18]
	ldr r0, _080A7128 @ =0x00009620
	adds r1, r1, r0
	ldr r0, _080A712C @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x10]
_080A70F4:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A713C
	ldr r1, _080A7130 @ =0x03000024
	adds r0, r5, r1
	ldr r1, _080A7134 @ =gUnknown_080D9F08
	ldrh r2, [r1, #0x28]
	movs r3, #0
	strh r2, [r0, #0xc]
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strb r3, [r0, #0x1f]
	bl UpdateSpriteAnimation
	ldr r1, [r6]
	ldr r0, _080A7138 @ =sub_80A714C
	str r0, [r1, #8]
	b _080A7144
	.align 2, 0
_080A7120: .4byte gCurTask
_080A7124: .4byte gUnknown_080D9F58
_080A7128: .4byte 0x00009620
_080A712C: .4byte gBgScrollRegs
_080A7130: .4byte 0x03000024
_080A7134: .4byte gUnknown_080D9F08
_080A7138: .4byte sub_80A714C
_080A713C:
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
_080A7144:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A714C
sub_80A714C: @ 0x080A714C
	push {r4, lr}
	sub sp, #4
	ldr r0, _080A7194 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _080A7198 @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A71A0
	ldr r0, [r4, #0x18]
	subs r0, #0x40
	str r0, [r4, #0x18]
	cmp r0, #0
	bgt _080A717C
	movs r0, #0
	str r0, [r4, #0x18]
_080A717C:
	ldr r1, [r4, #0x18]
	ldr r0, _080A719C @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	movs r0, #0x98
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x10]
	b _080A71B2
	.align 2, 0
_080A7194: .4byte gCurTask
_080A7198: .4byte gUnknown_080D9F58
_080A719C: .4byte gBgScrollRegs
_080A71A0:
	ldr r0, _080A71DC @ =gBgScrollRegs
	movs r2, #6
	ldrsh r1, [r0, r2]
	subs r1, #0x50
	lsls r1, r1, #8
	movs r0, #0x98
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4, #0x10]
_080A71B2:
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x11
	bls _080A71D2
	ldr r0, _080A71E0 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080A71D2
	ldr r0, _080A71E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A71D2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A71DC: .4byte gBgScrollRegs
_080A71E0: .4byte gBldRegs
_080A71E4: .4byte gCurTask

	thumb_func_start sub_80A71E8
sub_80A71E8: @ 0x080A71E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x74
	str r0, [sp]
	subs r0, #0x28
	str r0, [sp, #4]
	adds r0, #0x78
	str r0, [sp, #8]
	subs r0, #0x28
	str r0, [sp, #0xc]
	movs r0, #0
	mov r8, r0
	movs r0, #8
	strh r0, [r5]
	movs r6, #0
_080A720E:
	movs r3, #0
	movs r0, #0xf0
	lsls r0, r0, #8
	ldr r2, [r4, #0xc]
	cmp r2, r0
	ble _080A722C
	ldr r1, _080A7228 @ =0xFFFF1000
	adds r0, r2, r1
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _080A722E
	.align 2, 0
_080A7228: .4byte 0xFFFF1000
_080A722C:
	movs r1, #0
_080A722E:
	cmp r1, #0xf
	bls _080A7248
	movs r1, #0
	ldr r7, _080A7244 @ =0xFFFFF000
	adds r0, r2, r7
	str r0, [r4, #0xc]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _080A724A
	.align 2, 0
_080A7244: .4byte 0xFFFFF000
_080A7248:
	movs r1, #0
_080A724A:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080A7256
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080A7256:
	adds r1, r1, r6
	cmp r1, #0x20
	ble _080A7286
	movs r0, #2
	mov r8, r0
	cmp r6, #0
	beq _080A7274
	movs r1, #1
	mov r8, r1
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080A7274
	movs r0, #4
	strb r0, [r1]
_080A7274:
	cmp r6, #5
	bne _080A72E2
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #5
	bhi _080A72E2
	movs r0, #6
	strb r0, [r1]
	b _080A72E2
_080A7286:
	ldr r0, _080A72C0 @ =gUnknown_080D9F5C
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #3
	bls _080A7298
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #1
_080A7298:
	lsls r0, r0, #2
	add r0, sp
	ldr r2, [r0]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldrh r0, [r5]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	cmp r3, #0
	beq _080A72C4
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A72CA
	.align 2, 0
_080A72C0: .4byte gUnknown_080D9F5C
_080A72C4:
	ldr r0, [r2, #8]
	ldr r1, _080A72F0 @ =0xFFFFFBFF
	ands r0, r1
_080A72CA:
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldrh r0, [r5]
	adds r0, #0x10
	strh r0, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _080A720E
_080A72E2:
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A72F0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A72F4
sub_80A72F4: @ 0x080A72F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	mov r1, sp
	movs r0, #0x18
	strh r0, [r1]
	movs r0, #3
	strh r0, [r1, #2]
	movs r7, #0
	adds r5, r6, #0
	adds r5, #0x24
	mov r4, sp
_080A731C:
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	mov r2, r8
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #2]
	subs r2, r2, r0
	strh r2, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4]
	adds r0, #0x3c
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080A731C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A735C
sub_80A735C: @ 0x080A735C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r4, #0
	bne _080A7390
	ldr r0, _080A7388 @ =sub_80A74F8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A738C @ =sub_80A84D8
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	b _080A73A2
	.align 2, 0
_080A7388: .4byte sub_80A74F8
_080A738C: .4byte sub_80A84D8
_080A7390:
	ldr r0, _080A73E8 @ =sub_80A7578
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A73EC @ =sub_80A84D8
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
_080A73A2:
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r3, #0
	strb r4, [r5, #9]
	strb r6, [r5, #0xa]
	str r7, [r5, #4]
	movs r6, #0
	strh r3, [r5, #0x14]
	strb r6, [r5, #8]
	strb r6, [r5, #0xb]
	mov r0, r8
	str r0, [r5]
	cmp r4, #0
	bne _080A7474
	ldr r2, _080A73F0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A73F4 @ =gWinRegs
	str r1, [r5, #0x10]
	adds r0, r1, #4
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0xa]
	adds r2, r1, #0
	cmp r0, #0
	beq _080A73F8
	ldrh r0, [r2, #8]
	movs r1, #0x3c
	b _080A73FC
	.align 2, 0
_080A73E8: .4byte sub_80A7578
_080A73EC: .4byte sub_80A84D8
_080A73F0: .4byte gDispCnt
_080A73F4: .4byte gWinRegs
_080A73F8:
	ldrh r0, [r2, #8]
	movs r1, #0x3e
_080A73FC:
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r1, [r2, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #6
	str r0, [r5, #0x18]
	movs r7, #0xe6
	lsls r7, r7, #7
	str r7, [r5, #0x20]
	ldr r4, _080A7448 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _080A744C @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _080A7450 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r6, r1, #8
	movs r0, #0xf
	ands r6, r0
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7454
	lsls r0, r6, #8
	adds r4, r7, #0
	adds r0, r0, r4
	b _080A7458
	.align 2, 0
_080A7448: .4byte gPseudoRandom
_080A744C: .4byte 0x00196225
_080A7450: .4byte 0x3C6EF35F
_080A7454:
	lsls r0, r6, #8
	subs r0, r7, r0
_080A7458:
	str r0, [r5, #0x20]
	ldr r0, _080A7470 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r1, [r0, r2]
	subs r1, #0x50
	lsls r1, r1, #8
	movs r0, #0xd8
	lsls r0, r0, #5
	subs r0, r0, r1
	str r0, [r5, #0x24]
	b _080A74B2
	.align 2, 0
_080A7470: .4byte gBgScrollRegs
_080A7474:
	ldr r2, _080A74EC @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A74F0 @ =gWinRegs + 0x2
	str r1, [r5, #0x10]
	adds r0, r1, #4
	str r0, [r5, #0xc]
	subs r1, #2
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	movs r2, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	str r3, [r5, #0x20]
	str r3, [r5, #0x24]
	ldr r1, _080A74F4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
_080A74B2:
	ldr r2, [r5, #0xc]
	movs r0, #0xf0
	strh r0, [r2]
	ldr r3, [r5, #0x10]
	movs r0, #0xa0
	strh r0, [r3]
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A74EC: .4byte gDispCnt
_080A74F0: .4byte gWinRegs + 0x2
_080A74F4: .4byte gBldRegs

	thumb_func_start sub_80A74F8
sub_80A74F8: @ 0x080A74F8
	push {r4, r5, lr}
	ldr r5, _080A7548 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A84DC
	cmp r0, #1
	bne _080A754C
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _080A753E
	movs r0, #0
	strb r0, [r1]
_080A753E:
	ldr r0, [r5]
	bl TaskDestroy
	b _080A7570
	.align 2, 0
_080A7548: .4byte gCurTask
_080A754C:
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
_080A7570:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A7578
sub_80A7578: @ 0x080A7578
	push {r4, lr}
	ldr r4, _080A75CC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #0xb]
	cmp r0, #4
	bls _080A75EC
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [r3, #0x1c]
	movs r2, #0
	str r2, [r3, #0x18]
	movs r0, #0xe2
	lsls r0, r0, #7
	str r0, [r3, #0x20]
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r3, #0x24]
	ldr r1, _080A75D0 @ =gBldRegs
	ldr r0, _080A75D4 @ =0x00003F7F
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r0, _080A75D8 @ =0x0000081F
	strh r0, [r1, #2]
	ldr r1, _080A75DC @ =gWinRegs
	ldr r0, _080A75E0 @ =0x00003F3E
	strh r0, [r1, #8]
	ldr r1, [r3]
	movs r0, #0xb
	strb r0, [r1]
	str r2, [r3, #0x24]
	ldr r0, _080A75E4 @ =0x0000029B
	bl m4aSongNumStart
	ldr r1, [r4]
	ldr r0, _080A75E8 @ =sub_80A7674
	str r0, [r1, #8]
	b _080A766E
	.align 2, 0
_080A75CC: .4byte gCurTask
_080A75D0: .4byte gBldRegs
_080A75D4: .4byte 0x00003F7F
_080A75D8: .4byte 0x0000081F
_080A75DC: .4byte gWinRegs
_080A75E0: .4byte 0x00003F3E
_080A75E4: .4byte 0x0000029B
_080A75E8: .4byte sub_80A7674
_080A75EC:
	ldrh r0, [r3, #0x14]
	adds r0, #1
	movs r4, #0
	strh r0, [r3, #0x14]
	ldr r1, _080A7614 @ =gUnknown_080D9F7D
	ldrb r2, [r3, #0xb]
	adds r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _080A761C
	adds r0, r2, #1
	strb r0, [r3, #0xb]
	strh r4, [r3, #0x14]
	ldr r1, _080A7618 @ =gBldRegs
	movs r0, #0xf
	strh r0, [r1, #4]
	b _080A7620
	.align 2, 0
_080A7614: .4byte gUnknown_080D9F7D
_080A7618: .4byte gBldRegs
_080A761C:
	ldr r0, _080A7650 @ =gBldRegs
	strh r4, [r0, #4]
_080A7620:
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _080A766E
	movs r0, #1
	strb r0, [r3, #8]
	ldr r2, _080A7654 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080A7658 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A765C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7660
	ldr r0, [r3]
	adds r1, r3, #0
	adds r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_80A735C
	b _080A766E
	.align 2, 0
_080A7650: .4byte gBldRegs
_080A7654: .4byte gPseudoRandom
_080A7658: .4byte 0x00196225
_080A765C: .4byte 0x3C6EF35F
_080A7660:
	ldr r0, [r3]
	adds r1, r3, #0
	adds r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_80A735C
_080A766E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A7674
sub_80A7674: @ 0x080A7674
	push {r4, r5, r6, lr}
	ldr r6, _080A7698 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A8524
	cmp r0, #1
	bne _080A76A0
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r1, [r6]
	ldr r0, _080A769C @ =sub_80A7738
	str r0, [r1, #8]
	b _080A772E
	.align 2, 0
_080A7698: .4byte gCurTask
_080A769C: .4byte sub_80A7738
_080A76A0:
	ldr r0, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r0
	ldr r0, _080A76E8 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080A770A
	movs r0, #1
	strb r0, [r4, #8]
	ldr r2, _080A76EC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080A76F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A76F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A76FC
	ldr r0, [r4]
	ldr r2, _080A76F8 @ =0x03000008
	adds r1, r5, r2
	movs r2, #0
	movs r3, #1
	bl sub_80A735C
	b _080A770A
	.align 2, 0
_080A76E8: .4byte gBgScrollRegs
_080A76EC: .4byte gPseudoRandom
_080A76F0: .4byte 0x00196225
_080A76F4: .4byte 0x3C6EF35F
_080A76F8: .4byte 0x03000008
_080A76FC:
	ldr r0, [r4]
	ldr r2, _080A7734 @ =0x03000008
	adds r1, r5, r2
	movs r2, #0
	movs r3, #0
	bl sub_80A735C
_080A770A:
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
_080A772E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7734: .4byte 0x03000008

	thumb_func_start sub_80A7738
sub_80A7738: @ 0x080A7738
	push {r4, r5, lr}
	ldr r2, _080A77A8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x14]
	adds r5, r2, #0
	cmp r0, #0x78
	bhi _080A7794
	adds r0, #1
	strh r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A77AC @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldrh r0, [r4, #0x14]
	cmp r0, #0x78
	bne _080A7794
	ldr r1, [r4]
	movs r0, #0xc
	strb r0, [r1]
_080A7794:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A77A2
	ldr r1, [r5]
	ldr r0, _080A77B0 @ =sub_80A77B4
	str r0, [r1, #8]
_080A77A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A77A8: .4byte gCurTask
_080A77AC: .4byte gBgScrollRegs
_080A77B0: .4byte sub_80A77B4

	thumb_func_start sub_80A77B4
sub_80A77B4: @ 0x080A77B4
	push {r4, r5, lr}
	ldr r5, _080A7844 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080A7800
	ldr r2, _080A7848 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080A784C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xbc
	lsls r1, r1, #7
	str r1, [r4, #0x20]
	movs r2, #0
	str r2, [r4, #0x24]
	movs r0, #0xe6
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	str r2, [r4, #0x18]
	ldr r1, _080A7850 @ =gBldRegs
	ldr r0, _080A7854 @ =0x00003F7F
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r0, _080A7858 @ =0x0000081F
	strh r0, [r1, #2]
	ldr r1, _080A785C @ =gWinRegs
	ldr r0, _080A7860 @ =0x00003F3E
	strh r0, [r1, #8]
_080A7800:
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A7864 @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r5]
	ldr r0, _080A7868 @ =sub_80A786C
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7844: .4byte gCurTask
_080A7848: .4byte gDispCnt
_080A784C: .4byte 0x0000DFFF
_080A7850: .4byte gBldRegs
_080A7854: .4byte 0x00003F7F
_080A7858: .4byte 0x0000081F
_080A785C: .4byte gWinRegs
_080A7860: .4byte 0x00003F3E
_080A7864: .4byte gBgScrollRegs
_080A7868: .4byte sub_80A786C

	thumb_func_start sub_80A786C
sub_80A786C: @ 0x080A786C
	push {r4, r5, lr}
	ldr r5, _080A78CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A78D0 @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _080A78C4
	movs r0, #0
	strb r0, [r4, #0xb]
	strh r0, [r4, #0x14]
	ldr r1, [r5]
	ldr r0, _080A78D4 @ =sub_80A78D8
	str r0, [r1, #8]
_080A78C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A78CC: .4byte gCurTask
_080A78D0: .4byte gBgScrollRegs
_080A78D4: .4byte sub_80A78D8

	thumb_func_start sub_80A78D8
sub_80A78D8: @ 0x080A78D8
	push {r4, r5, lr}
	ldr r0, _080A7934 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A85B0
	ldrh r0, [r4, #0x14]
	adds r0, #1
	strh r0, [r4, #0x14]
	ldr r2, _080A7938 @ =gUnknown_080D9F83
	ldrb r1, [r4, #0xb]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _080A7984
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080A7984
	movs r0, #1
	strb r0, [r4, #8]
	ldr r2, _080A793C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080A7940 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A7944 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A794C
	ldr r0, [r4]
	ldr r2, _080A7948 @ =0x03000008
	adds r1, r5, r2
	movs r2, #0
	movs r3, #1
	bl sub_80A735C
	b _080A795A
	.align 2, 0
_080A7934: .4byte gCurTask
_080A7938: .4byte gUnknown_080D9F83
_080A793C: .4byte gPseudoRandom
_080A7940: .4byte 0x00196225
_080A7944: .4byte 0x3C6EF35F
_080A7948: .4byte 0x03000008
_080A794C:
	ldr r0, [r4]
	ldr r3, _080A797C @ =0x03000008
	adds r1, r5, r3
	movs r2, #0
	movs r3, #0
	bl sub_80A735C
_080A795A:
	movs r0, #0
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _080A7984
	ldr r1, [r4]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080A7980 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080A79BA
	.align 2, 0
_080A797C: .4byte 0x03000008
_080A7980: .4byte gCurTask
_080A7984:
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A79C0 @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
_080A79BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A79C0: .4byte gBgScrollRegs

	thumb_func_start sub_80A79C4
sub_80A79C4: @ 0x080A79C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _080A7AB4 @ =sub_80A7ACC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A7AB8 @ =sub_80A85F0
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	str r4, [r6]
	movs r1, #0xe6
	lsls r1, r1, #7
	str r1, [r6, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #5
	str r1, [r6, #0x10]
	movs r3, #0
	movs r2, #0
	strh r2, [r6, #6]
	strb r3, [r6, #4]
	ldr r1, _080A7ABC @ =0x03000014
	adds r0, r0, r1
	str r7, [r0]
	ldr r4, _080A7AC0 @ =gUnknown_080D9F8C
	ldr r1, [r4, #4]
	lsls r1, r1, #5
	adds r7, r7, r1
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0
	adds r3, r4, #0
	movs r5, #0
_080A7A3E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	str r7, [r0]
	adds r4, r1, #1
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x18
	lsrs r1, r4, #0x18
	ldr r3, [sp, #4]
	cmp r1, #1
	bls _080A7A3E
	ldr r0, _080A7AC4 @ =0x0000029A
	bl m4aSongNumStart
	ldr r1, _080A7AC8 @ =gStageData
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080A7AA2
	adds r1, #0xc5
	movs r0, #1
	strb r0, [r1]
_080A7AA2:
	bl sub_80260F0
	bl sub_8001E84
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A7AB4: .4byte sub_80A7ACC
_080A7AB8: .4byte sub_80A85F0
_080A7ABC: .4byte 0x03000014
_080A7AC0: .4byte gUnknown_080D9F8C
_080A7AC4: .4byte 0x0000029A
_080A7AC8: .4byte gStageData

	thumb_func_start sub_80A7ACC
sub_80A7ACC: @ 0x080A7ACC
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A7B5C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r0, _080A7B60 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r1, [r0, r2]
	subs r1, #0x50
	lsls r1, r1, #8
	movs r0, #0xba
	lsls r0, r0, #7
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080A7B64 @ =0x03000014
	adds r4, r5, r0
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldrh r1, [r6, #6]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080A7B12
	adds r0, r4, #0
	bl DisplaySprite
_080A7B12:
	ldr r1, _080A7B68 @ =0x0300003C
	adds r0, r5, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A7B2E
	ldr r2, _080A7B6C @ =0x03000052
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _080A7B70 @ =0x03000057
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_080A7B2E:
	ldr r1, _080A7B74 @ =0x03000064
	adds r0, r5, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A7B4A
	ldr r2, _080A7B78 @ =0x0300007A
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _080A7B7C @ =0x0300007F
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_080A7B4A:
	ldr r2, [r6]
	ldrb r0, [r2]
	cmp r0, #0x10
	bne _080A7B84
	ldr r1, [r7]
	ldr r0, _080A7B80 @ =sub_80A85F4
	str r0, [r1, #8]
	b _080A7BE6
	.align 2, 0
_080A7B5C: .4byte gCurTask
_080A7B60: .4byte gBgScrollRegs
_080A7B64: .4byte 0x03000014
_080A7B68: .4byte 0x0300003C
_080A7B6C: .4byte 0x03000052
_080A7B70: .4byte 0x03000057
_080A7B74: .4byte 0x03000064
_080A7B78: .4byte 0x0300007A
_080A7B7C: .4byte 0x0300007F
_080A7B80: .4byte sub_80A85F4
_080A7B84:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	ldr r0, [r6, #4]
	ldr r1, _080A7BEC @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _080A7BA8
	movs r0, #1
	strb r0, [r6, #4]
	adds r0, r2, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_80A735C
_080A7BA8:
	ldr r4, _080A7BF0 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r5, _080A7BF4 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080A7BF8 @ =0x3C6EF35F
	adds r3, r0, r1
	str r3, [r4]
	ldrh r2, [r6, #6]
	lsrs r0, r3, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0xc4
	cmp r2, r0
	blo _080A7BE6
	adds r1, r3, #0
	muls r1, r5, r1
	ldr r2, _080A7BF8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r4]
	lsrs r1, r1, #8
	movs r0, #1
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	movs r1, #0xb5
	strh r1, [r6, #6]
	bl sub_80A866C
_080A7BE6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A7BEC: .4byte 0xFFFF00FF
_080A7BF0: .4byte gPseudoRandom
_080A7BF4: .4byte 0x00196225
_080A7BF8: .4byte 0x3C6EF35F

	thumb_func_start sub_80A7BFC
sub_80A7BFC: @ 0x080A7BFC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A7C00
sub_80A7C00: @ 0x080A7C00
	push {r4, r5, lr}
	ldr r5, _080A7C34 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _080A7C38 @ =0x030000D8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_80A490C
	ldr r1, [r5]
	ldr r0, _080A7C3C @ =sub_80A7C40
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C34: .4byte gCurTask
_080A7C38: .4byte 0x030000D8
_080A7C3C: .4byte sub_80A7C40

	thumb_func_start sub_80A7C40
sub_80A7C40: @ 0x080A7C40
	push {r4, r5, lr}
	ldr r5, _080A7C74 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	cmp r0, #0
	bne _080A7C6E
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080A7C6E
	ldr r1, [r5]
	ldr r0, _080A7C78 @ =sub_80A7C7C
	str r0, [r1, #8]
_080A7C6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C74: .4byte gCurTask
_080A7C78: .4byte sub_80A7C7C

	thumb_func_start sub_80A7C7C
sub_80A7C7C: @ 0x080A7C7C
	push {r4, r5, lr}
	ldr r5, _080A7CB0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080A7CAA
	movs r0, #0
	strh r0, [r4, #0x16]
	ldr r1, [r5]
	ldr r0, _080A7CB4 @ =sub_80A7CB8
	str r0, [r1, #8]
_080A7CAA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7CB0: .4byte gCurTask
_080A7CB4: .4byte sub_80A7CB8

	thumb_func_start sub_80A7CB8
sub_80A7CB8: @ 0x080A7CB8
	push {r4, r5, lr}
	ldr r5, _080A7CF8 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	adds r0, r4, #0
	bl sub_80A563C
	cmp r0, #1
	bne _080A7CF0
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080A7CF0
	movs r0, #0
	strb r0, [r4, #0x18]
	ldr r1, [r5]
	ldr r0, _080A7CFC @ =sub_80A4EDC
	str r0, [r1, #8]
_080A7CF0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7CF8: .4byte gCurTask
_080A7CFC: .4byte sub_80A4EDC

	thumb_func_start sub_80A7D00
sub_80A7D00: @ 0x080A7D00
	push {r4, r5, lr}
	ldr r5, _080A7D38 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	adds r0, r4, #0
	bl sub_80A55DC
	cmp r0, #1
	bne _080A7D32
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _080A7D3C @ =sub_80A7D40
	str r0, [r1, #8]
_080A7D32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7D38: .4byte gCurTask
_080A7D3C: .4byte sub_80A7D40

	thumb_func_start sub_80A7D40
sub_80A7D40: @ 0x080A7D40
	push {r4, r5, lr}
	ldr r5, _080A7D70 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _080A7D74 @ =0x030000D8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A7D6A
	ldr r1, [r5]
	ldr r0, _080A7D78 @ =sub_80A7D7C
	str r0, [r1, #8]
_080A7D6A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7D70: .4byte gCurTask
_080A7D74: .4byte 0x030000D8
_080A7D78: .4byte sub_80A7D7C

	thumb_func_start sub_80A7D7C
sub_80A7D7C: @ 0x080A7D7C
	push {r4, r5, lr}
	ldr r5, _080A7DAC @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _080A7DB0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_80A490C
	b _080A7DBE
	.align 2, 0
_080A7DAC: .4byte gCurTask
_080A7DB0:
	cmp r0, #0x14
	bne _080A7DC4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_80A4A88
_080A7DBE:
	ldr r1, [r5]
	ldr r0, _080A7DCC @ =sub_80A7DD0
	str r0, [r1, #8]
_080A7DC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7DCC: .4byte sub_80A7DD0

	thumb_func_start sub_80A7DD0
sub_80A7DD0: @ 0x080A7DD0
	push {r4, r5, r6, lr}
	ldr r6, _080A7E00 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	adds r0, r5, #0
	bl sub_80A5824
	ldr r0, _080A7E04 @ =0x030000D8
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateBgAnimationTiles
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _080A7E0C
	ldr r1, [r6]
	ldr r0, _080A7E08 @ =sub_80A52DC
	str r0, [r1, #8]
	b _080A7E1A
	.align 2, 0
_080A7E00: .4byte gCurTask
_080A7E04: .4byte 0x030000D8
_080A7E08: .4byte sub_80A52DC
_080A7E0C:
	ldr r0, _080A7E20 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080A7E1A
	ldr r0, [r6]
	bl TaskDestroy
_080A7E1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7E20: .4byte gBldRegs

	thumb_func_start sub_80A7E24
sub_80A7E24: @ 0x080A7E24
	push {r4, r5, lr}
	ldr r4, _080A7E68 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r3, _080A7E6C @ =gDispCnt
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #0x20]
	ldr r2, _080A7E70 @ =gBgScrollRegs
	movs r1, #4
	strh r1, [r2, #4]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	adds r1, #0x50
	strh r1, [r2, #6]
	movs r1, #0
	movs r2, #0
	bl sub_80A4A88
	ldr r1, [r4]
	ldr r0, _080A7E74 @ =sub_80A5050
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7E68: .4byte gCurTask
_080A7E6C: .4byte gDispCnt
_080A7E70: .4byte gBgScrollRegs
_080A7E74: .4byte sub_80A5050

	thumb_func_start sub_80A7E78
sub_80A7E78: @ 0x080A7E78
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080A7E8C @ =0x0300014C
	adds r0, r0, r1
	ldr r0, [r0]
	bl EwramFree
	pop {r0}
	bx r0
	.align 2, 0
_080A7E8C: .4byte 0x0300014C

	thumb_func_start sub_80A7E90
sub_80A7E90: @ 0x080A7E90
	push {r4, r5, lr}
	ldr r5, _080A7EB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080A7EB8
	adds r0, r4, #0
	bl sub_80A5B08
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _080A7ED2
	.align 2, 0
_080A7EB4: .4byte gCurTask
_080A7EB8:
	ldr r1, _080A7ED8 @ =0x03000004
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	ldr r3, _080A7EDC @ =0x03000014
	adds r2, r2, r3
	bl sub_80A828C
	str r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #6]
	ldr r1, [r5]
	ldr r0, _080A7EE0 @ =sub_80A6090
	str r0, [r1, #8]
_080A7ED2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7ED8: .4byte 0x03000004
_080A7EDC: .4byte 0x03000014
_080A7EE0: .4byte sub_80A6090

	thumb_func_start sub_80A7EE4
sub_80A7EE4: @ 0x080A7EE4
	push {r4, r5, lr}
	ldr r5, _080A7F10 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A6BDC
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_80A5CB0
	ldr r1, [r5]
	ldr r0, _080A7F14 @ =sub_80A7F18
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7F10: .4byte gCurTask
_080A7F14: .4byte sub_80A7F18

	thumb_func_start sub_80A7F18
sub_80A7F18: @ 0x080A7F18
	push {r4, r5, r6, lr}
	ldr r6, _080A7F4C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	cmp r0, #0
	bne _080A7F46
	movs r0, #0xa
	strb r0, [r4, #4]
	ldr r1, _080A7F50 @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A79C4
	str r0, [r4, #0xc]
	ldr r1, [r6]
	ldr r0, _080A7F54 @ =sub_80A7FAC
	str r0, [r1, #8]
_080A7F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7F4C: .4byte gCurTask
_080A7F50: .4byte 0x03000004
_080A7F54: .4byte sub_80A7FAC

	thumb_func_start sub_80A7F58
sub_80A7F58: @ 0x080A7F58
	push {r4, lr}
	ldr r0, _080A7FA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrh r0, [r4, #8]
	cmp r0, #0xb3
	bhi _080A7F82
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bne _080A7F82
	movs r0, #8
	strb r0, [r4, #4]
_080A7F82:
	ldrb r0, [r4, #4]
	cmp r0, #9
	bne _080A7F9E
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_80A5CB0
	ldr r0, _080A7FA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A7FA8 @ =sub_80A7EE4
	str r0, [r1, #8]
_080A7F9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7FA4: .4byte gCurTask
_080A7FA8: .4byte sub_80A7EE4

	thumb_func_start sub_80A7FAC
sub_80A7FAC: @ 0x080A7FAC
	push {r4, r5, lr}
	ldr r5, _080A7FD4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #0xb
	bne _080A7FCC
	ldr r1, [r5]
	ldr r0, _080A7FD8 @ =sub_80A7FDC
	str r0, [r1, #8]
_080A7FCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7FD4: .4byte gCurTask
_080A7FD8: .4byte sub_80A7FDC

	thumb_func_start sub_80A7FDC
sub_80A7FDC: @ 0x080A7FDC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080A8048 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #0xb
	bne _080A8014
	ldr r1, [r4, #0x30]
	adds r0, r1, #0
	adds r0, #0x20
	str r0, [r4, #0x30]
	ldr r0, _080A804C @ =0x00007820
	adds r1, r1, r0
	ldr r0, _080A8050 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	str r1, [r4, #0x20]
_080A8014:
	ldrb r0, [r4, #4]
	cmp r0, #0xd
	bne _080A8040
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #8]
	strb r1, [r4, #6]
	ldr r0, [r4, #0xc]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x5a
	rsbs r2, r2, #0
	ldr r7, _080A8054 @ =0x03000004
	adds r3, r5, r7
	str r3, [sp]
	movs r3, #0
	bl sub_80A9BD8
	str r0, [r4, #0xc]
	ldr r1, [r6]
	ldr r0, _080A8058 @ =sub_80A664C
	str r0, [r1, #8]
_080A8040:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8048: .4byte gCurTask
_080A804C: .4byte 0x00007820
_080A8050: .4byte gBgScrollRegs
_080A8054: .4byte 0x03000004
_080A8058: .4byte sub_80A664C

	thumb_func_start sub_80A805C
sub_80A805C: @ 0x080A805C
	push {r4, r5, lr}
	ldr r5, _080A8088 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #0x16
	bne _080A8080
	bl sub_80A8C80
	ldr r0, [r5]
	bl TaskDestroy
_080A8080:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8088: .4byte gCurTask

	thumb_func_start sub_80A808C
sub_80A808C: @ 0x080A808C
	push {r4, lr}
	ldr r0, _080A80E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A6BDC
	ldrb r0, [r4, #4]
	cmp r0, #0xe
	bne _080A80CC
	ldr r0, [r4, #0x30]
	subs r0, #0x40
	str r0, [r4, #0x30]
	cmp r0, #0
	bgt _080A80B4
	movs r0, #0
	str r0, [r4, #0x30]
_080A80B4:
	ldr r1, [r4, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, _080A80E4 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	str r1, [r4, #0x20]
_080A80CC:
	ldrb r0, [r4, #4]
	cmp r0, #0x10
	bne _080A80DA
	ldr r0, _080A80E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A80E8 @ =sub_80A6700
	str r0, [r1, #8]
_080A80DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A80E0: .4byte gCurTask
_080A80E4: .4byte gBgScrollRegs
_080A80E8: .4byte sub_80A6700

	thumb_func_start sub_80A80EC
sub_80A80EC: @ 0x080A80EC
	push {r4, r5, lr}
	ldr r5, _080A8134 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _080A8138 @ =0x0300014C
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80239A8
	adds r0, r4, #0
	bl sub_80A825C
	adds r0, r4, #0
	bl sub_80A81E8
	cmp r0, #1
	bne _080A8140
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #8]
	strb r1, [r4, #6]
	movs r0, #0x15
	strb r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #1
	bl sub_80A5EF0
	ldr r1, [r5]
	ldr r0, _080A813C @ =sub_80A690C
	str r0, [r1, #8]
	b _080A8146
	.align 2, 0
_080A8134: .4byte gCurTask
_080A8138: .4byte 0x0300014C
_080A813C: .4byte sub_80A690C
_080A8140:
	adds r0, r4, #0
	bl sub_80A6DD0
_080A8146:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A814C
sub_80A814C: @ 0x080A814C
	push {r4, r5, lr}
	ldr r5, _080A816C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A8234
	ldrh r0, [r4, #8]
	cmp r0, #0x77
	bhi _080A8170
	adds r0, #1
	strh r0, [r4, #8]
	b _080A818E
	.align 2, 0
_080A816C: .4byte gCurTask
_080A8170:
	adds r0, r4, #0
	bl sub_80A820C
	cmp r0, #1
	bne _080A818E
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0
	bl sub_80A5E8C
	ldr r1, [r5]
	ldr r0, _080A8194 @ =sub_80A69E4
	str r0, [r1, #8]
_080A818E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8194: .4byte sub_80A69E4

	thumb_func_start sub_80A8198
sub_80A8198: @ 0x080A8198
	push {r4, r5, lr}
	ldr r5, _080A81C0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A8234
	ldr r1, _080A81C4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A81C8
	ldr r0, [r4, #0x10]
	adds r0, #0x20
	str r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	b _080A81E2
	.align 2, 0
_080A81C0: .4byte gCurTask
_080A81C4: .4byte gBldRegs
_080A81C8:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080A81E2
	movs r0, #1
	bl sub_80A872C
	ldr r0, [r5]
	bl TaskDestroy
_080A81E2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A81E8
sub_80A81E8: @ 0x080A81E8
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x14]
	ldr r0, _080A81F8 @ =0xFFFFD800
	cmp r1, r0
	bgt _080A81FC
	movs r0, #1
	b _080A8204
	.align 2, 0
_080A81F8: .4byte 0xFFFFD800
_080A81FC:
	ldr r3, _080A8208 @ =0xFFFFFB00
	adds r0, r1, r3
	str r0, [r2, #0x14]
	movs r0, #0
_080A8204:
	pop {r1}
	bx r1
	.align 2, 0
_080A8208: .4byte 0xFFFFFB00

	thumb_func_start sub_80A820C
sub_80A820C: @ 0x080A820C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	ldr r0, _080A8220 @ =0x000078FF
	cmp r2, r0
	ble _080A8224
	adds r0, #1
	str r0, [r1, #0x18]
	movs r0, #1
	b _080A822E
	.align 2, 0
_080A8220: .4byte 0x000078FF
_080A8224:
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #0x18]
	movs r0, #0
_080A822E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8234
sub_80A8234: @ 0x080A8234
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0xd4
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A825C
sub_80A825C: @ 0x080A825C
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #0x24]
	ldr r0, _080A8280 @ =0xFFFF2E00
	cmp r2, r0
	ble _080A8272
	ldr r3, _080A8284 @ =0xFFFFFB00
	adds r0, r2, r3
	str r0, [r1, #0x24]
	ldr r3, _080A8288 @ =0x0000FFFB
_080A8272:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	strb r3, [r0, #0xd]
	pop {r0}
	bx r0
	.align 2, 0
_080A8280: .4byte 0xFFFF2E00
_080A8284: .4byte 0xFFFFFB00
_080A8288: .4byte 0x0000FFFB

	thumb_func_start sub_80A828C
sub_80A828C: @ 0x080A828C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _080A82BC
	ldr r0, _080A82B4 @ =sub_80A70B8
	movs r1, #0x96
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A82B8 @ =sub_80A8324
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	b _080A82D0
	.align 2, 0
_080A82B4: .4byte sub_80A70B8
_080A82B8: .4byte sub_80A8324
_080A82BC:
	ldr r0, _080A82F8 @ =sub_80A8328
	movs r1, #0x96
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A82FC @ =sub_80A8324
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
_080A82D0:
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r5, [r4]
	str r7, [r4, #8]
	movs r0, #0
	strb r0, [r4, #4]
	strh r0, [r4, #6]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	adds r0, r6, #4
	str r0, [r4, #0x20]
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _080A8300
	movs r0, #0xf0
	lsls r0, r0, #8
	b _080A8304
	.align 2, 0
_080A82F8: .4byte sub_80A8328
_080A82FC: .4byte sub_80A8324
_080A8300:
	movs r0, #0xa0
	lsls r0, r0, #8
_080A8304:
	str r0, [r4, #0xc]
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_80A6F34
	adds r0, r4, #0
	bl sub_80A6EBC
	ldr r0, [r4, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8324
sub_80A8324: @ 0x080A8324
	bx lr
	.align 2, 0

	thumb_func_start sub_80A8328
sub_80A8328: @ 0x080A8328
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A8358 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A71E8
	ldr r1, [r5]
	ldr r0, _080A835C @ =sub_80A8360
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8358: .4byte gCurTask
_080A835C: .4byte sub_80A8360

	thumb_func_start sub_80A8360
sub_80A8360: @ 0x080A8360
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080A83A4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A71E8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080A83AC
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	cmp r5, #2
	bne _080A83AC
	movs r0, #0
	strh r0, [r4, #6]
	ldr r1, [r6]
	ldr r0, _080A83A8 @ =sub_80A83C8
	str r0, [r1, #8]
	b _080A83C0
	.align 2, 0
_080A83A4: .4byte gCurTask
_080A83A8: .4byte sub_80A83C8
_080A83AC:
	ldr r0, [r4]
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _080A83C0
	adds r0, r4, #0
	bl sub_80A8468
_080A83C0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A83C8
sub_80A83C8: @ 0x080A83C8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A8418 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _080A841C @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #7
	bls _080A840E
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A840E
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #9
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _080A8420 @ =sub_80A8424
	str r0, [r1, #8]
_080A840E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8418: .4byte gCurTask
_080A841C: .4byte gUnknown_080D9F58
_080A8420: .4byte sub_80A8424

	thumb_func_start sub_80A8424
sub_80A8424: @ 0x080A8424
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A845C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _080A8460 @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080A8454
	ldr r1, [r5]
	ldr r0, _080A8464 @ =sub_80A70B8
	str r0, [r1, #8]
_080A8454:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A845C: .4byte gCurTask
_080A8460: .4byte gUnknown_080D9F58
_080A8464: .4byte sub_80A70B8

	thumb_func_start sub_80A8468
sub_80A8468: @ 0x080A8468
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #6
	bhi _080A84D2
	lsls r0, r0, #2
	ldr r1, _080A8480 @ =_080A8484
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8480: .4byte _080A8484
_080A8484: @ jump table
	.4byte _080A84C8 @ case 0
	.4byte _080A84A0 @ case 1
	.4byte _080A84A8 @ case 2
	.4byte _080A84B0 @ case 3
	.4byte _080A84B8 @ case 4
	.4byte _080A84C0 @ case 5
	.4byte _080A84C8 @ case 6
_080A84A0:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	b _080A84CE
_080A84A8:
	ldr r0, [r2, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	b _080A84CE
_080A84B0:
	ldr r0, [r2, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	b _080A84CE
_080A84B8:
	ldr r0, [r2, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	b _080A84CE
_080A84C0:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	b _080A84CE
_080A84C8:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
_080A84CE:
	adds r0, r0, r1
	str r0, [r2, #0xc]
_080A84D2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A84D8
sub_80A84D8: @ 0x080A84D8
	bx lr
	.align 2, 0

	thumb_func_start sub_80A84DC
sub_80A84DC: @ 0x080A84DC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	cmp r0, #0
	beq _080A84F4
	ldr r2, _080A84F0 @ =0xFFFFFB00
	adds r0, r0, r2
	str r0, [r1, #0x24]
	b _080A84FC
	.align 2, 0
_080A84F0: .4byte 0xFFFFFB00
_080A84F4:
	ldr r0, [r1, #0x18]
	ldr r2, _080A8518 @ =0xFFFFFB00
	adds r0, r0, r2
	str r0, [r1, #0x18]
_080A84FC:
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bge _080A8506
	movs r0, #0
	str r0, [r1, #0x24]
_080A8506:
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	ble _080A851C
	movs r0, #0
	b _080A851E
	.align 2, 0
_080A8518: .4byte 0xFFFFFB00
_080A851C:
	movs r0, #1
_080A851E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8524
sub_80A8524: @ 0x080A8524
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x20]
	movs r3, #0xbc
	lsls r3, r3, #7
	cmp r0, r3
	ble _080A853E
	adds r1, r0, #0
	subs r1, #0x10
	str r1, [r2, #0x20]
	ldr r0, _080A8544 @ =0x00005DFF
	cmp r1, r0
	bgt _080A8548
_080A853E:
	str r3, [r2, #0x20]
	movs r0, #1
	b _080A855A
	.align 2, 0
_080A8544: .4byte 0x00005DFF
_080A8548:
	movs r0, #0xe6
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	movs r0, #0
_080A855A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8560
sub_80A8560: @ 0x080A8560
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x24]
	cmp r2, #0
	ble _080A85A0
	ldr r4, _080A8590 @ =gBgScrollRegs
	movs r1, #6
	ldrsh r0, [r4, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	movs r1, #0x5a
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080A8594
	adds r1, r2, #0
	subs r1, #0x10
	movs r2, #6
	ldrsh r0, [r4, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r3, #0x24]
	b _080A859A
	.align 2, 0
_080A8590: .4byte gBgScrollRegs
_080A8594:
	adds r0, r2, #0
	subs r0, #0x40
	str r0, [r3, #0x24]
_080A859A:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bge _080A85A8
_080A85A0:
	movs r0, #0
	str r0, [r3, #0x24]
	movs r0, #1
	b _080A85AA
_080A85A8:
	movs r0, #0
_080A85AA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A85B0
sub_80A85B0: @ 0x080A85B0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x20]
	ldr r3, _080A85D4 @ =0x000072FF
	cmp r0, r3
	bgt _080A85C6
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r2, #0x20]
	cmp r1, r3
	ble _080A85D8
_080A85C6:
	movs r0, #0xe6
	lsls r0, r0, #7
	str r0, [r2, #0x20]
	movs r0, #0
	str r0, [r2, #0x1c]
	movs r0, #1
	b _080A85EA
	.align 2, 0
_080A85D4: .4byte 0x000072FF
_080A85D8:
	movs r0, #0xe6
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	movs r0, #0
_080A85EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A85F0
sub_80A85F0: @ 0x080A85F0
	bx lr
	.align 2, 0

	thumb_func_start sub_80A85F4
sub_80A85F4: @ 0x080A85F4
	push {r4, r5, r6, lr}
	ldr r6, _080A8650 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080A8654 @ =0x0300003C
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A861E
	ldr r2, _080A8658 @ =0x03000052
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _080A865C @ =0x03000057
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080A861E:
	ldr r1, _080A8660 @ =0x03000064
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A863A
	ldr r2, _080A8664 @ =0x0300007A
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _080A8668 @ =0x0300007F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080A863A:
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _080A8648
	ldr r0, [r6]
	bl TaskDestroy
_080A8648:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8650: .4byte gCurTask
_080A8654: .4byte 0x0300003C
_080A8658: .4byte 0x03000052
_080A865C: .4byte 0x03000057
_080A8660: .4byte 0x03000064
_080A8664: .4byte 0x0300007A
_080A8668: .4byte 0x0300007F

	thumb_func_start sub_80A866C
sub_80A866C: @ 0x080A866C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080A86C0 @ =sub_80A86D8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A86C4 @ =sub_80A86D4
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r0, #0
	strh r0, [r2]
	str r0, [r2, #4]
	str r4, [r2, #0x10]
	ldr r3, _080A86C8 @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _080A86CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A86D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xbe
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r0, #0x8c
	lsls r0, r0, #7
	str r0, [r2, #0xc]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A86C0: .4byte sub_80A86D8
_080A86C4: .4byte sub_80A86D4
_080A86C8: .4byte gPseudoRandom
_080A86CC: .4byte 0x00196225
_080A86D0: .4byte 0x3C6EF35F

	thumb_func_start sub_80A86D4
sub_80A86D4: @ 0x080A86D4
	bx lr
	.align 2, 0

	thumb_func_start sub_80A86D8
sub_80A86D8: @ 0x080A86D8
	push {r4, r5, lr}
	ldr r5, _080A871C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r1, #0x50
	ldr r2, _080A8720 @ =gBgScrollRegs
	ldrh r2, [r2, #6]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4, #0xc]
	ldr r1, _080A8724 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r1, _080A8728 @ =0xFFFFEC00
	cmp r0, r1
	bge _080A8716
	ldr r0, [r5]
	bl TaskDestroy
_080A8716:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A871C: .4byte gCurTask
_080A8720: .4byte gBgScrollRegs
_080A8724: .4byte 0xFFFFFF00
_080A8728: .4byte 0xFFFFEC00

	thumb_func_start sub_80A872C
sub_80A872C: @ 0x080A872C
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _080A875C @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	cmp r6, #0
	bne _080A8768
	ldr r0, _080A8760 @ =sub_80A8858
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A8764 @ =sub_80A98AC
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl m4aMPlayAllStop
	b _080A877C
	.align 2, 0
_080A875C: .4byte gDispCnt
_080A8760: .4byte sub_80A8858
_080A8764: .4byte sub_80A98AC
_080A8768:
	ldr r0, _080A87A0 @ =sub_80A8AC4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A87A4 @ =sub_80A98AC
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
_080A877C:
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	movs r1, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strb r1, [r4, #1]
	cmp r6, #0
	beq _080A87B6
	cmp r6, #0xa
	bls _080A87A8
	movs r0, #0xb
	b _080A87B4
	.align 2, 0
_080A87A0: .4byte sub_80A8AC4
_080A87A4: .4byte sub_80A98AC
_080A87A8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _080A87B6
	movs r0, #0xa
_080A87B4:
	strb r0, [r4, #1]
_080A87B6:
	movs r5, #0
	strb r6, [r4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, _080A8838 @ =gBgSprites_Unknown1
	strb r5, [r0]
	ldr r1, _080A883C @ =gBgSprites_Unknown2
	strb r5, [r1]
	strb r5, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r6, #0x40
	strb r6, [r1, #3]
	ldr r1, _080A8840 @ =gBgCntRegs
	ldr r0, _080A8844 @ =0x00005C81
	strh r0, [r1]
	ldr r0, _080A8848 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r2, _080A884C @ =gUnknown_080D9FC3
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	bne _080A87F4
	movs r2, #0xb
_080A87F4:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	strh r5, [r3, #0xa]
	ldr r0, _080A8850 @ =0x0600E000
	str r0, [r3, #0xc]
	strh r5, [r3, #0x18]
	strh r5, [r3, #0x1a]
	ldr r1, _080A8854 @ =gUnknown_080D9FA4
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1c]
	strh r5, [r3, #0x1e]
	strh r5, [r3, #0x20]
	strh r5, [r3, #0x22]
	strh r5, [r3, #0x24]
	strh r6, [r3, #0x26]
	movs r0, #0x20
	strh r0, [r3, #0x28]
	adds r1, r4, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	movs r0, #4
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	bl DrawBackground
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8838: .4byte gBgSprites_Unknown1
_080A883C: .4byte gBgSprites_Unknown2
_080A8840: .4byte gBgCntRegs
_080A8844: .4byte 0x00005C81
_080A8848: .4byte gBgScrollRegs
_080A884C: .4byte gUnknown_080D9FC3
_080A8850: .4byte 0x0600E000
_080A8854: .4byte gUnknown_080D9FA4

	thumb_func_start sub_80A8858
sub_80A8858: @ 0x080A8858
	push {r4, r5, lr}
	ldr r2, _080A8898 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #3]
	adds r4, r2, #0
	ldr r1, _080A889C @ =gBldRegs
	cmp r0, #0
	bne _080A88C8
	ldr r2, _080A88A0 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A88A4 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrb r0, [r3, #1]
	adds r2, r1, #0
	cmp r0, #2
	bhi _080A88A8
	movs r0, #0x84
	lsls r0, r0, #6
	b _080A88AA
	.align 2, 0
_080A8898: .4byte gCurTask
_080A889C: .4byte gBldRegs
_080A88A0: .4byte gDispCnt
_080A88A4: .4byte gWinRegs
_080A88A8:
	ldr r0, _080A88E4 @ =0x00003FFF
_080A88AA:
	strh r0, [r2, #8]
	ldrh r1, [r2, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080A88E8 @ =gBldRegs
	ldr r0, _080A88EC @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #3]
_080A88C8:
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A8900
	ldrh r0, [r3, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _080A88F0
	ldrh r0, [r3, #4]
	subs r0, #0x40
	strh r0, [r3, #4]
	b _080A890E
	.align 2, 0
_080A88E4: .4byte 0x00003FFF
_080A88E8: .4byte gBldRegs
_080A88EC: .4byte 0x00003FBF
_080A88F0:
	ldr r1, _080A88FC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r5, [r3, #4]
	adds r0, r0, r5
	strh r0, [r3, #4]
	b _080A890E
	.align 2, 0
_080A88FC: .4byte 0xFFFFFF00
_080A8900:
	strh r0, [r1, #4]
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldr r1, [r4]
	ldr r0, _080A8914 @ =sub_80A8918
	str r0, [r1, #8]
_080A890E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8914: .4byte sub_80A8918

	thumb_func_start sub_80A8918
sub_80A8918: @ 0x080A8918
	push {r4, r5, r6, lr}
	ldr r0, _080A8954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r0, [r6, #3]
	ldr r1, _080A8958 @ =gBldRegs
	cmp r0, #0
	beq _080A897E
	ldr r2, _080A895C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8960 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrb r0, [r6, #1]
	adds r4, r1, #0
	cmp r0, #2
	bhi _080A8964
	movs r0, #0x84
	lsls r0, r0, #6
	b _080A8966
	.align 2, 0
_080A8954: .4byte gCurTask
_080A8958: .4byte gBldRegs
_080A895C: .4byte gDispCnt
_080A8960: .4byte gWinRegs
_080A8964:
	ldr r0, _080A8998 @ =0x00003FFF
_080A8966:
	strh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r0, #0x1f
	movs r3, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r4, #0xa]
	ldr r1, _080A899C @ =gBldRegs
	ldr r0, _080A8998 @ =0x00003FFF
	strh r0, [r1]
	strh r2, [r6, #4]
	strb r3, [r6, #3]
_080A897E:
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A89AE
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A89A0
	ldrh r0, [r6, #4]
	adds r0, #0x40
	strh r0, [r6, #4]
	b _080A8ABA
	.align 2, 0
_080A8998: .4byte 0x00003FFF
_080A899C: .4byte gBldRegs
_080A89A0:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #4]
	adds r0, r0, r3
	strh r0, [r6, #4]
	b _080A8ABA
_080A89AE:
	ldrb r0, [r6]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A89F4
	ldrb r2, [r6, #1]
	movs r3, #0x3c
	cmp r2, #1
	bne _080A89C0
	movs r3, #0x78
_080A89C0:
	ldrh r0, [r6, #6]
	cmp r0, r3
	bhs _080A89CC
	adds r0, #1
	strh r0, [r6, #6]
	b _080A8ABA
_080A89CC:
	cmp r2, #1
	bne _080A89F4
	ldr r2, _080A89F0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	movs r0, #0x4f      @ MUS_ENDING_A_COPY
	bl m4aSongNumStart
	bl sub_80A8E54
	b _080A8A64
	.align 2, 0
_080A89F0: .4byte gDispCnt
_080A89F4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _080A8A06
	adds r0, r1, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _080A8A08
_080A8A06:
	ldrb r1, [r6]
_080A8A08:
	ldr r0, _080A8A70 @ =gUnknown_080D9FBC
	adds r0, r1, r0
	ldrb r2, [r6, #2]
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080A8A84
	adds r0, r6, #0
	adds r0, #0x10
	ldrb r1, [r6, #1]
	adds r1, #1
	movs r4, #0
	strb r1, [r6, #1]
	adds r1, r2, #1
	strb r1, [r6, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	movs r5, #0
	strh r4, [r0, #0xa]
	ldr r1, _080A8A74 @ =0x0600E000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r3, _080A8A78 @ =gUnknown_080D9FA4
	ldrb r1, [r6]
	ldrb r2, [r6, #2]
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r1, r6, #0
	adds r1, #0x3a
	strb r5, [r1]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	strh r4, [r6, #6]
_080A8A64:
	ldr r0, _080A8A7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A8A80 @ =sub_80A8AC4
	str r0, [r1, #8]
	b _080A8ABA
	.align 2, 0
_080A8A70: .4byte gUnknown_080D9FBC
_080A8A74: .4byte 0x0600E000
_080A8A78: .4byte gUnknown_080D9FA4
_080A8A7C: .4byte gCurTask
_080A8A80: .4byte sub_80A8AC4
_080A8A84:
	ldrb r0, [r6]
	cmp r0, #0xb
	bls _080A8A8E
	subs r0, #0xb
	strb r0, [r6]
_080A8A8E:
	ldrb r1, [r6]
	cmp r1, #0
	bne _080A8A9C
	movs r0, #1
	bl sub_80A5954
	b _080A8AB2
_080A8A9C:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080A8AB2
	adds r0, r1, #0
	adds r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A9920
_080A8AB2:
	ldr r0, _080A8AC0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A8ABA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8AC0: .4byte gCurTask

	thumb_func_start sub_80A8AC4
sub_80A8AC4: @ 0x080A8AC4
	push {r4, r5, r6, lr}
	ldr r2, _080A8B0C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #3]
	adds r5, r2, #0
	ldr r1, _080A8B10 @ =gBldRegs
	cmp r0, #0
	bne _080A8B48
	ldr r2, _080A8B14 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8B18 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrb r0, [r3]
	adds r4, r2, #0
	adds r2, r1, #0
	cmp r0, #0
	bne _080A8B1C
	ldrb r0, [r3, #1]
	cmp r0, #2
	bhi _080A8B1C
	movs r0, #0x84
	lsls r0, r0, #6
	b _080A8B2A
	.align 2, 0
_080A8B0C: .4byte gCurTask
_080A8B10: .4byte gBldRegs
_080A8B14: .4byte gDispCnt
_080A8B18: .4byte gWinRegs
_080A8B1C:
	ldrh r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _080A8B64 @ =0x00003FFF
_080A8B2A:
	strh r0, [r2, #8]
	ldrh r1, [r2, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080A8B68 @ =gBldRegs
	ldr r0, _080A8B64 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #3]
_080A8B48:
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A8B8C
	ldrh r0, [r3, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrh r0, [r3]
	cmp r0, #0
	bne _080A8B6C
	ldrh r0, [r3, #4]
	subs r0, #0x10
	strh r0, [r3, #4]
	b _080A8BA0
	.align 2, 0
_080A8B64: .4byte 0x00003FFF
_080A8B68: .4byte gBldRegs
_080A8B6C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A8B7A
	ldrh r0, [r3, #4]
	subs r0, #0x40
	strh r0, [r3, #4]
	b _080A8BA0
_080A8B7A:
	ldr r1, _080A8B88 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r4, [r3, #4]
	adds r0, r0, r4
	strh r0, [r3, #4]
	b _080A8BA0
	.align 2, 0
_080A8B88: .4byte 0xFFFFFF00
_080A8B8C:
	strh r0, [r1, #4]
	ldrb r0, [r3]
	cmp r0, #6
	bne _080A8B9A
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r3, #6]
_080A8B9A:
	ldr r1, [r5]
	ldr r0, _080A8BA8 @ =sub_80A8BAC
	str r0, [r1, #8]
_080A8BA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8BA8: .4byte sub_80A8BAC

	thumb_func_start sub_80A8BAC
sub_80A8BAC: @ 0x080A8BAC
	push {r4, lr}
	ldr r2, _080A8BCC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	adds r4, r2, #0
	cmp r0, #0xa
	beq _080A8BDC
	cmp r0, #0xa
	bgt _080A8BD0
	cmp r0, #2
	beq _080A8BD6
	b _080A8BE8
	.align 2, 0
_080A8BCC: .4byte gCurTask
_080A8BD0:
	cmp r0, #0xb
	beq _080A8BE2
	b _080A8BE8
_080A8BD6:
	movs r3, #0xb4
	lsls r3, r3, #1
	b _080A8BEA
_080A8BDC:
	movs r3, #0x96
	lsls r3, r3, #1
	b _080A8BEA
_080A8BE2:
	movs r3, #0x96
	lsls r3, r3, #2
	b _080A8BEA
_080A8BE8:
	movs r3, #0xb4
_080A8BEA:
	ldrh r0, [r1, #6]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r3
	blo _080A8C14
	strh r2, [r1, #6]
	ldrb r0, [r1]
	cmp r0, #6
	bne _080A8C0C
	ldr r1, [r4]
	ldr r0, _080A8C08 @ =sub_80A8C20
	b _080A8C12
	.align 2, 0
_080A8C08: .4byte sub_80A8C20
_080A8C0C:
	strh r2, [r1, #6]
	ldr r1, [r4]
	ldr r0, _080A8C1C @ =sub_80A8918
_080A8C12:
	str r0, [r1, #8]
_080A8C14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C1C: .4byte sub_80A8918

	thumb_func_start sub_80A8C20
sub_80A8C20: @ 0x080A8C20
	push {r4, lr}
	ldr r4, _080A8C78 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _080A8C72
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #8]
	ldr r2, _080A8C7C @ =gBgScrollRegs
	asrs r0, r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _080A8C72
	movs r0, #0x78
	strh r0, [r2]
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A8C72
	movs r0, #1
	bl sub_80A98B0
	ldr r0, [r4]
	bl TaskDestroy
_080A8C72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C78: .4byte gCurTask
_080A8C7C: .4byte gBgScrollRegs

	thumb_func_start sub_80A8C80
sub_80A8C80: @ 0x080A8C80
	push {r4, lr}
	sub sp, #4
	ldr r1, _080A8CFC @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A8D00 @ =sub_80A8D24
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A8D04 @ =sub_80A9964
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strb r2, [r0, #2]
	movs r4, #0
	strh r2, [r0, #4]
	strh r2, [r0]
	ldr r1, _080A8D08 @ =gBgCntRegs
	ldr r0, _080A8D0C @ =0x00001681
	strh r0, [r1]
	ldr r0, _080A8D10 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r1, _080A8D14 @ =0x03000008
	adds r0, r3, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A8D18 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A8D1C @ =0x00000133
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A8D20 @ =0x03000032
	adds r3, r3, r2
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8CFC: .4byte gDispCnt
_080A8D00: .4byte sub_80A8D24
_080A8D04: .4byte sub_80A9964
_080A8D08: .4byte gBgCntRegs
_080A8D0C: .4byte 0x00001681
_080A8D10: .4byte gBgScrollRegs
_080A8D14: .4byte 0x03000008
_080A8D18: .4byte 0x0600B000
_080A8D1C: .4byte 0x00000133
_080A8D20: .4byte 0x03000032

	thumb_func_start sub_80A8D24
sub_80A8D24: @ 0x080A8D24
	push {r4, r5, lr}
	ldr r4, _080A8D80 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _080A8D74
	ldr r2, _080A8D84 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8D88 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A8D8C @ =gBldRegs
	ldr r0, _080A8D90 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #2]
_080A8D74:
	ldrh r0, [r3]
	cmp r0, #0x77
	bhi _080A8D94
	adds r0, #1
	strh r0, [r3]
	b _080A8DBA
	.align 2, 0
_080A8D80: .4byte gCurTask
_080A8D84: .4byte gDispCnt
_080A8D88: .4byte gWinRegs
_080A8D8C: .4byte gBldRegs
_080A8D90: .4byte 0x00003FBF
_080A8D94:
	ldr r1, _080A8DAC @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A8DB0
	ldrh r0, [r3, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrh r0, [r3, #4]
	subs r0, #0x20
	strh r0, [r3, #4]
	b _080A8DBA
	.align 2, 0
_080A8DAC: .4byte gBldRegs
_080A8DB0:
	strh r0, [r3]
	strh r0, [r1, #4]
	ldr r1, [r4]
	ldr r0, _080A8DC0 @ =sub_80A9968
	str r0, [r1, #8]
_080A8DBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8DC0: .4byte sub_80A9968

	thumb_func_start sub_80A8DC4
sub_80A8DC4: @ 0x080A8DC4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A8E28 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	ldr r6, _080A8E2C @ =gBldRegs
	cmp r0, #0
	beq _080A8E0E
	ldr r2, _080A8E30 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8E34 @ =gWinRegs
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080A8E38 @ =0x00003FFF
	strh r0, [r6]
	strh r4, [r5, #4]
	strb r3, [r5, #2]
_080A8E0E:
	ldrh r0, [r6, #4]
	cmp r0, #0xf
	bhi _080A8E3C
	ldrh r0, [r5, #4]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #4]
	adds r0, r0, r3
	strh r0, [r5, #4]
	b _080A8E4C
	.align 2, 0
_080A8E28: .4byte gCurTask
_080A8E2C: .4byte gBldRegs
_080A8E30: .4byte gDispCnt
_080A8E34: .4byte gWinRegs
_080A8E38: .4byte 0x00003FFF
_080A8E3C:
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #1
	bl CreateTitleScreen
	ldr r0, [r7]
	bl TaskDestroy
_080A8E4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A8E54
sub_80A8E54: @ 0x080A8E54
	push {r4, lr}
	sub sp, #4
	ldr r0, _080A8EC0 @ =sub_80A8ED0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A8EC4 @ =sub_80A99CC
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	strh r0, [r2, #2]
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #8]
	ldr r3, _080A8EC8 @ =gDispCnt
	ldrh r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _080A8ECC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #4]
	movs r0, #0x84
	lsls r0, r0, #6
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r3, #0xa]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8EC0: .4byte sub_80A8ED0
_080A8EC4: .4byte sub_80A99CC
_080A8EC8: .4byte gDispCnt
_080A8ECC: .4byte gWinRegs

	thumb_func_start sub_80A8ED0
sub_80A8ED0: @ 0x080A8ED0
	push {r4, r5, r6, lr}
	ldr r6, _080A8F34 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r5, _080A8F38 @ =gUnknown_080D9FCA
	ldrb r2, [r3]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r4, [r3, #8]
	cmp r4, r0
	ble _080A8F48
	ldr r1, _080A8F3C @ =gUnknown_080D9FD0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, r4, r0
	str r1, [r3, #8]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080A8F64
	adds r0, r2, #1
	strb r0, [r3]
	subs r1, #1
	ldr r0, _080A8F40 @ =0x00009FFE
	cmp r1, r0
	bls _080A8F64
	movs r0, #0
	str r0, [r3, #8]
	ldr r1, _080A8F44 @ =gStageData
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080A8F22
	adds r1, #0xc5
	movs r0, #1
	strb r0, [r1]
_080A8F22:
	bl sub_80260F0
	bl sub_8001E84
	ldr r0, [r6]
	bl TaskDestroy
	b _080A8F80
	.align 2, 0
_080A8F34: .4byte gCurTask
_080A8F38: .4byte gUnknown_080D9FCA
_080A8F3C: .4byte gUnknown_080D9FD0
_080A8F40: .4byte 0x00009FFE
_080A8F44: .4byte gStageData
_080A8F48:
	ldr r1, _080A8F88 @ =gUnknown_080D9FD0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r4, r1
	str r1, [r3, #8]
	ldrb r2, [r3]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080A8F64
	adds r0, r2, #1
	strb r0, [r3]
_080A8F64:
	ldrb r0, [r3]
	cmp r0, #6
	bls _080A8F6E
	movs r0, #6
	strb r0, [r3]
_080A8F6E:
	ldr r2, _080A8F8C @ =gWinRegs
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
_080A8F80:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8F88: .4byte gUnknown_080D9FD0
_080A8F8C: .4byte gWinRegs

	thumb_func_start sub_80A8F90
sub_80A8F90: @ 0x080A8F90
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080A9038 @ =sub_80A9118
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A903C @ =sub_80A9B68
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _080A9040 @ =0x06010000
	str r0, [r4, #0x18]
	movs r2, #0
	strb r2, [r4]
	movs r3, #0
	strh r2, [r4, #2]
	ldr r0, _080A9044 @ =0xFFFF9C00
	str r0, [r4, #0x10]
	movs r1, #0xdc
	lsls r1, r1, #7
	str r1, [r4, #0x14]
	ldr r0, _080A9048 @ =0xFFFFCE00
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, _080A904C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080A9050 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080A9054 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r5, _080A9058 @ =gBgSprites_Unknown1
	strb r3, [r5]
	ldr r0, _080A905C @ =gBgSprites_Unknown2
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x40
	strb r2, [r0, #3]
	strb r3, [r5, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r3, [r5, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A9060 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A9064 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	bl sub_80A9068
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9038: .4byte sub_80A9118
_080A903C: .4byte sub_80A9B68
_080A9040: .4byte 0x06010000
_080A9044: .4byte 0xFFFF9C00
_080A9048: .4byte 0xFFFFCE00
_080A904C: .4byte 0x040000D4
_080A9050: .4byte gBgCntRegs
_080A9054: .4byte 0x85000010
_080A9058: .4byte gBgSprites_Unknown1
_080A905C: .4byte gBgSprites_Unknown2
_080A9060: .4byte gBgPalette
_080A9064: .4byte gFlags

	thumb_func_start sub_80A9068
sub_80A9068: @ 0x080A9068
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r0, #0x1c
	ldr r1, [r7, #0x18]
	str r1, [r7, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r7, #0x18]
	ldr r2, _080A9110 @ =gUnknown_080D9FE4
	ldrh r1, [r2]
	movs r3, #0
	mov sb, r3
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	mov r3, sb
	strb r3, [r0, #0x1f]
	movs r6, #0xa0
	lsls r6, r6, #5
	str r6, [r0, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, [r7, #0x18]
	str r1, [r7, #0x44]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r7, #0x18]
	ldr r2, _080A9114 @ =gUnknown_080DA00C
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, r8
	strb r3, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9110: .4byte gUnknown_080D9FE4
_080A9114: .4byte gUnknown_080DA00C

	thumb_func_start sub_80A9118
sub_80A9118: @ 0x080A9118
	push {r4, r5, lr}
	ldr r5, _080A9134 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #2]
	cmp r0, #0xef
	bhi _080A9138
	adds r0, #1
	strh r0, [r4, #2]
	b _080A91BA
	.align 2, 0
_080A9134: .4byte gCurTask
_080A9138:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _080A917A
	ldr r2, _080A919C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A91A0 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A91A4 @ =gBldRegs
	ldr r0, _080A91A8 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #6]
	strh r3, [r4, #4]
_080A917A:
	adds r0, r4, #0
	bl sub_80A9B24
	ldr r1, _080A91A4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A91B0
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080A91AC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r4, #6]
	b _080A91BA
	.align 2, 0
_080A919C: .4byte gDispCnt
_080A91A0: .4byte gWinRegs
_080A91A4: .4byte gBldRegs
_080A91A8: .4byte 0x00003FFF
_080A91AC: .4byte 0xFFFFFF00
_080A91B0:
	strh r0, [r4, #2]
	strh r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _080A91C0 @ =sub_80A91C4
	str r0, [r1, #8]
_080A91BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A91C0: .4byte sub_80A91C4

	thumb_func_start sub_80A91C4
sub_80A91C4: @ 0x080A91C4
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _080A9234 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, r6, #0
	bl sub_80A9A44
	cmp r0, #1
	bne _080A91E0
	movs r4, #1
_080A91E0:
	adds r0, r6, #0
	bl sub_80A9A74
	cmp r0, #1
	bne _080A91F0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080A91F0:
	cmp r4, #2
	bne _080A9250
	ldr r1, _080A9238 @ =0x0300001C
	adds r0, r5, r1
	ldr r2, _080A923C @ =gUnknown_080D9FE4
	ldrh r1, [r2, #8]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A9240 @ =0x03000044
	adds r0, r5, r1
	ldr r2, _080A9244 @ =gUnknown_080DA00C
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	strh r4, [r6, #2]
	ldr r0, _080A9248 @ =0x0000029E
	bl m4aSongNumStart
	ldr r1, [r7]
	ldr r0, _080A924C @ =sub_80A925C
	str r0, [r1, #8]
	b _080A9256
	.align 2, 0
_080A9234: .4byte gCurTask
_080A9238: .4byte 0x0300001C
_080A923C: .4byte gUnknown_080D9FE4
_080A9240: .4byte 0x03000044
_080A9244: .4byte gUnknown_080DA00C
_080A9248: .4byte 0x0000029E
_080A924C: .4byte sub_80A925C
_080A9250:
	adds r0, r6, #0
	bl sub_80A9B24
_080A9256:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A925C
sub_80A925C: @ 0x080A925C
	push {r4, r5, r6, lr}
	ldr r6, _080A92BC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _080A92D4
	adds r0, r4, #0
	bl sub_80A9AA4
	cmp r0, #1
	bne _080A92D4
	ldr r1, _080A92C0 @ =0x0300001C
	adds r0, r5, r1
	ldr r2, _080A92C4 @ =gUnknown_080D9FE4
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A92C8 @ =0x03000044
	adds r0, r5, r1
	ldr r2, _080A92CC @ =gUnknown_080DA00C
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r6]
	ldr r0, _080A92D0 @ =sub_80A92E0
	str r0, [r1, #8]
	b _080A92DA
	.align 2, 0
_080A92BC: .4byte gCurTask
_080A92C0: .4byte 0x0300001C
_080A92C4: .4byte gUnknown_080D9FE4
_080A92C8: .4byte 0x03000044
_080A92CC: .4byte gUnknown_080DA00C
_080A92D0: .4byte sub_80A92E0
_080A92D4:
	adds r0, r4, #0
	bl sub_80A9B24
_080A92DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A92E0
sub_80A92E0: @ 0x080A92E0
	push {r4, r5, r6, lr}
	ldr r6, _080A933C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80A9B24
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080A9336
	ldr r1, _080A9340 @ =0x0300001C
	adds r0, r5, r1
	ldr r2, _080A9344 @ =gUnknown_080D9FE4
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A9348 @ =0x03000044
	adds r0, r5, r1
	ldr r2, _080A934C @ =gUnknown_080DA00C
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, [r6]
	ldr r0, _080A9350 @ =sub_80A9354
	str r0, [r1, #8]
_080A9336:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A933C: .4byte gCurTask
_080A9340: .4byte 0x0300001C
_080A9344: .4byte gUnknown_080D9FE4
_080A9348: .4byte 0x03000044
_080A934C: .4byte gUnknown_080DA00C
_080A9350: .4byte sub_80A9354

	thumb_func_start sub_80A9354
sub_80A9354: @ 0x080A9354
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A93B0 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_80A9B24
	adds r5, r0, #0
	cmp r5, #0
	bne _080A93A8
	ldr r1, _080A93B4 @ =0x0300001C
	adds r0, r4, r1
	ldr r1, _080A93B8 @ =gUnknown_080D9FE4
	ldrh r2, [r1, #0x20]
	strh r2, [r0, #0xc]
	adds r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A93BC @ =0x03000044
	adds r0, r4, r1
	ldr r1, _080A93C0 @ =gUnknown_080DA00C
	ldrh r2, [r1, #0x20]
	strh r2, [r0, #0xc]
	adds r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	strh r5, [r6, #2]
	ldr r1, [r7]
	ldr r0, _080A93C4 @ =sub_80A99D0
	str r0, [r1, #8]
_080A93A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A93B0: .4byte gCurTask
_080A93B4: .4byte 0x0300001C
_080A93B8: .4byte gUnknown_080D9FE4
_080A93BC: .4byte 0x03000044
_080A93C0: .4byte gUnknown_080DA00C
_080A93C4: .4byte sub_80A99D0

	thumb_func_start sub_80A93C8
sub_80A93C8: @ 0x080A93C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080A9400 @ =0xFFFFFBF8
	add sp, r4
	ldr r0, _080A9404 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A9410
	ldr r0, _080A9408 @ =Palette_unknown_318
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A940C @ =Palette_unknown_319
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
	b _080A9424
	.align 2, 0
_080A9400: .4byte 0xFFFFFBF8
_080A9404: .4byte gCurTask
_080A9408: .4byte Palette_unknown_318
_080A940C: .4byte Palette_unknown_319
_080A9410:
	ldr r0, _080A94D8 @ =Palette_unknown_307
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A94DC @ =Palette_unknown_308
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
_080A9424:
	movs r7, #0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	add r2, sp
	ldr r6, _080A94E0 @ =0x00000404
	add r6, sp
	str r2, [r6]
	movs r0, #0x1f
	mov ip, r0
	movs r1, #0x1f
	mov r8, r1
	movs r2, #0x82
	lsls r2, r2, #2
	adds r2, r2, r4
	mov sl, r2
	movs r6, #0x83
	lsls r6, r6, #2
	adds r6, r6, r4
	mov sb, r6
_080A9458:
	lsls r2, r7, #1
	adds r3, r2, r7
	lsls r3, r3, #2
	movs r0, #0x80
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	adds r6, r0, r3
	ldr r1, _080A94E0 @ =0x00000404
	add r1, sp
	ldr r1, [r1]
	adds r5, r1, r2
	ldrh r0, [r5]
	mov r1, r8
	ands r1, r0
	mov r0, sp
	adds r4, r0, r2
	ldrh r2, [r4]
	mov r0, r8
	ands r0, r2
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r6]
	mov r1, sl
	adds r2, r1, r3
	ldrh r1, [r5]
	lsrs r1, r1, #5
	mov r6, ip
	ands r1, r6
	ldrh r0, [r4]
	lsrs r0, r0, #5
	ands r0, r6
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r2]
	add r3, sb
	ldrh r1, [r5]
	lsrs r1, r1, #0xa
	ands r1, r6
	ldrh r0, [r4]
	lsrs r0, r0, #0xa
	ands r0, r6
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xff
	bls _080A9458
	ldr r1, _080A94E4 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _080A94E8 @ =sub_80A94EC
	str r2, [r0, #8]
	movs r3, #0x81
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A94D8: .4byte Palette_unknown_307
_080A94DC: .4byte Palette_unknown_308
_080A94E0: .4byte 0x00000404
_080A94E4: .4byte gCurTask
_080A94E8: .4byte sub_80A94EC

	thumb_func_start sub_80A94EC
sub_80A94EC: @ 0x080A94EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080A9524 @ =0xFFFFFBFC
	add sp, r4
	ldr r0, _080A9528 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080A9534
	ldr r0, _080A952C @ =Palette_unknown_318
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A9530 @ =Palette_unknown_319
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
	b _080A9548
	.align 2, 0
_080A9524: .4byte 0xFFFFFBFC
_080A9528: .4byte gCurTask
_080A952C: .4byte Palette_unknown_318
_080A9530: .4byte Palette_unknown_319
_080A9534:
	ldr r0, _080A9584 @ =Palette_unknown_307
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A9588 @ =Palette_unknown_308
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
_080A9548:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bgt _080A9558
	b _080A9664
_080A9558:
	ldrb r0, [r7, #1]
	cmp r0, #0x10
	bne _080A95A4
	ldr r1, _080A958C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080A9590 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080A9594 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080A9598 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080A959C @ =gVramGraphicsCopyCursor
	ldr r0, _080A95A0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	bl sub_80ABD44
	b _080A9664
	.align 2, 0
_080A9584: .4byte Palette_unknown_307
_080A9588: .4byte Palette_unknown_308
_080A958C: .4byte 0x0000FFFF
_080A9590: .4byte gBackgroundsCopyQueueCursor
_080A9594: .4byte gBackgroundsCopyQueueIndex
_080A9598: .4byte gBgSpritesCount
_080A959C: .4byte gVramGraphicsCopyCursor
_080A95A0: .4byte gVramGraphicsCopyQueueIndex
_080A95A4:
	movs r0, #0
	mov r8, r0
	adds r1, r7, #4
	mov sl, r1
	movs r6, #0x80
	lsls r6, r6, #3
	add r6, sp
	movs r2, #0x1f
	mov sb, r2
_080A95B6:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	bl memset
	mov r0, r8
	lsls r5, r0, #1
	mov r1, sl
	adds r4, r1, r5
	ldrh r0, [r4]
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #8
	mov r2, r8
	adds r3, r5, r2
	lsls r3, r3, #2
	movs r2, #0x81
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r3
	ldrb r2, [r7, #1]
	ldr r0, [r0]
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	strb r1, [r6]
	ldrh r0, [r4]
	lsrs r0, r0, #5
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #8
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r3
	ldrb r2, [r7, #1]
	ldr r1, [r1]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #8
	strb r0, [r6, #1]
	ldrh r0, [r4]
	lsrs r0, r0, #0xa
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r3
	ldrb r2, [r7, #1]
	ldr r1, [r1]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #8
	strb r0, [r6, #2]
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	lsls r1, r1, #5
	orrs r0, r1
	ldrb r1, [r6, #2]
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80C4C0C
	ldr r1, _080A9678 @ =gBgPalette
	adds r5, r5, r1
	strh r0, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xff
	bls _080A95B6
	ldr r2, _080A967C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #0
	strh r0, [r7, #2]
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
_080A9664:
	ldr r3, _080A9680 @ =0x00000404
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9678: .4byte gBgPalette
_080A967C: .4byte gFlags
_080A9680: .4byte 0x00000404

	thumb_func_start sub_80A9684
sub_80A9684: @ 0x080A9684
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A977C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r8, r0
	ldr r5, _080A9780 @ =gStageData
	movs r0, #0
	strb r0, [r5, #6]
	movs r0, #2
	strb r0, [r5, #3]
	ldr r6, _080A9784 @ =gUnknown_080DA034
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r6, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r5, #0xa]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r5, #0xe]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #9]
	movs r4, #1
	movs r0, #1
	strb r0, [r5, #0xb]
	bl sub_800214C
	ldr r1, _080A9788 @ =gPlayers
	mov ip, r1
	movs r0, #0x2b
	add r0, ip
	mov sb, r0
	ldrb r0, [r0]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r1, r0
	orrs r1, r4
	mov r7, ip
	adds r7, #0x2a
	ldrb r4, [r7]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r4
	strb r0, [r7]
	movs r4, #0x1d
	rsbs r4, r4, #0
	ands r1, r4
	movs r0, #0x10
	orrs r1, r0
	mov r0, sb
	strb r1, [r0]
	ldr r7, _080A978C @ =0x0000017B
	add r7, ip
	ldrb r0, [r7]
	ands r2, r0
	strb r2, [r7]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, #4
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r6, #0xbd
	lsls r6, r6, #1
	add r6, ip
	movs r0, #0xf
	ands r0, r1
	ldrb r1, [r6]
	ands r3, r1
	orrs r3, r0
	strb r3, [r6]
	ands r2, r4
	movs r0, #8
	orrs r2, r0
	strb r2, [r7]
	ldr r2, _080A9790 @ =0x000002CB
	add r2, ip
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080A9794 @ =0x0000041B
	add r1, ip
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	movs r1, #1
	bl WarpToMap
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A977C: .4byte gCurTask
_080A9780: .4byte gStageData
_080A9784: .4byte gUnknown_080DA034
_080A9788: .4byte gPlayers
_080A978C: .4byte 0x0000017B
_080A9790: .4byte 0x000002CB
_080A9794: .4byte 0x0000041B

	thumb_func_start sub_80A9798
sub_80A9798: @ 0x080A9798
	push {r4, r5, r6, lr}
	ldr r6, _080A97FC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	ldr r5, _080A9800 @ =gBldRegs
	cmp r0, #0
	bne _080A97E2
	ldr r2, _080A9804 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A9808 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	subs r3, #1
	strh r3, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	strh r3, [r5]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #6]
_080A97E2:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080A9810
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldr r1, _080A980C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r4, #6]
	b _080A9818
	.align 2, 0
_080A97FC: .4byte gCurTask
_080A9800: .4byte gBldRegs
_080A9804: .4byte gDispCnt
_080A9808: .4byte gWinRegs
_080A980C: .4byte 0xFFFFFF00
_080A9810:
	strh r0, [r5, #4]
	ldr r1, [r6]
	ldr r0, _080A9820 @ =sub_80A9B74
	str r0, [r1, #8]
_080A9818:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A9820: .4byte sub_80A9B74

	thumb_func_start sub_80A9824
sub_80A9824: @ 0x080A9824
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A9884 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r0, [r6]
	ldr r7, _080A9888 @ =gBldRegs
	cmp r0, #0
	beq _080A986A
	ldr r2, _080A988C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A9890 @ =gWinRegs
	movs r5, #0
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldr r4, _080A9894 @ =0x00003FFF
	strh r4, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	strh r4, [r7]
	strb r3, [r6]
	strh r5, [r6, #6]
_080A986A:
	ldrh r0, [r7, #4]
	cmp r0, #0xf
	bhi _080A9898
	ldrh r0, [r6, #6]
	lsrs r0, r0, #8
	strh r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #6]
	adds r0, r0, r3
	strh r0, [r6, #6]
	b _080A98A0
	.align 2, 0
_080A9884: .4byte gCurTask
_080A9888: .4byte gBldRegs
_080A988C: .4byte gDispCnt
_080A9890: .4byte gWinRegs
_080A9894: .4byte 0x00003FFF
_080A9898:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080A98A8 @ =sub_80A9BA8
	str r0, [r1, #8]
_080A98A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A98A8: .4byte sub_80A9BA8

	thumb_func_start sub_80A98AC
sub_80A98AC: @ 0x080A98AC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A98B0
sub_80A98B0: @ 0x080A98B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080A98F0 @ =sub_80A93C8
	ldr r1, _080A98F4 @ =0x00000E04
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A98F8 @ =sub_80A9B6C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r1, #0
	strb r4, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	cmp r4, #0
	beq _080A9904
	ldr r0, _080A98FC @ =Palette_unknown_318
	ldr r3, _080A9900 @ =0x03000004
	adds r1, r2, r3
	movs r2, #0x80
	bl CpuFastSet
	b _080A9910
	.align 2, 0
_080A98F0: .4byte sub_80A93C8
_080A98F4: .4byte 0x00000E04
_080A98F8: .4byte sub_80A9B6C
_080A98FC: .4byte Palette_unknown_318
_080A9900: .4byte 0x03000004
_080A9904:
	ldr r0, _080A9918 @ =Palette_unknown_307
	ldr r3, _080A991C @ =0x03000004
	adds r1, r2, r3
	movs r2, #0x80
	bl CpuFastSet
_080A9910:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9918: .4byte Palette_unknown_307
_080A991C: .4byte 0x03000004

	thumb_func_start sub_80A9920
sub_80A9920: @ 0x080A9920
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080A995C @ =sub_80A9684
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080A9960 @ =sub_80A9B70
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0, #2]
	subs r4, #0xc
	strb r4, [r0, #1]
	movs r1, #0
	strh r2, [r0, #4]
	strb r1, [r0]
	strh r2, [r0, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A995C: .4byte sub_80A9684
_080A9960: .4byte sub_80A9B70

	thumb_func_start sub_80A9964
sub_80A9964: @ 0x080A9964
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9968
sub_80A9968: @ 0x080A9968
	push {r4, lr}
	ldr r4, _080A9998 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bls _080A9990
	movs r0, #0
	bl sub_80A98B0
	ldr r0, [r4]
	bl TaskDestroy
_080A9990:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9998: .4byte gCurTask

	thumb_func_start sub_80A999C
sub_80A999C: @ 0x080A999C
	push {r4, lr}
	ldr r4, _080A99C4 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80A99C8
	cmp r0, #1
	bne _080A99BE
	movs r0, #0
	bl sub_80ABD44
	ldr r0, [r4]
	bl TaskDestroy
_080A99BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A99C4: .4byte gCurTask

	thumb_func_start sub_80A99C8
sub_80A99C8: @ 0x080A99C8
	movs r0, #1
	bx lr

	thumb_func_start sub_80A99CC
sub_80A99CC: @ 0x080A99CC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A99D0
sub_80A99D0: @ 0x080A99D0
	push {r4, r5, lr}
	ldr r5, _080A9A14 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A9B24
	adds r0, r4, #0
	bl sub_80A9AD8
	cmp r0, #1
	bne _080A9A0C
	ldrh r0, [r4, #2]
	cmp r0, #0x77
	bhi _080A99F8
	adds r0, #1
	strh r0, [r4, #2]
_080A99F8:
	ldrh r0, [r4, #2]
	cmp r0, #0x78
	bne _080A9A0C
	ldr r1, [r4, #0x18]
	movs r0, #0
	bl sub_80AA270
	ldr r1, [r5]
	ldr r0, _080A9A18 @ =sub_80A9A1C
	str r0, [r1, #8]
_080A9A0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9A14: .4byte gCurTask
_080A9A18: .4byte sub_80A9A1C

	thumb_func_start sub_80A9A1C
sub_80A9A1C: @ 0x080A9A1C
	push {r4, lr}
	ldr r4, _080A9A40 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80A9AD8
	cmp r0, #1
	bne _080A9A38
	ldr r0, [r4]
	bl TaskDestroy
_080A9A38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9A40: .4byte gCurTask

	thumb_func_start sub_80A9A44
sub_80A9A44: @ 0x080A9A44
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r2, _080A9A68 @ =0x000077FF
	cmp r0, r2
	bgt _080A9A5C
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	ble _080A9A6C
_080A9A5C:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x10]
	movs r0, #1
	b _080A9A6E
	.align 2, 0
_080A9A68: .4byte 0x000077FF
_080A9A6C:
	movs r0, #0
_080A9A6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A9A74
sub_80A9A74: @ 0x080A9A74
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldr r2, _080A9A98 @ =0x000121FF
	cmp r0, r2
	bgt _080A9A8C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r1, #8]
	cmp r0, r2
	ble _080A9A9C
_080A9A8C:
	movs r0, #0x91
	lsls r0, r0, #9
	str r0, [r1, #8]
	movs r0, #1
	b _080A9A9E
	.align 2, 0
_080A9A98: .4byte 0x000121FF
_080A9A9C:
	movs r0, #0
_080A9A9E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A9AA4
sub_80A9AA4: @ 0x080A9AA4
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _080A9AC8
	ldr r2, _080A9AC4 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #8]
	movs r2, #0x8f
	lsls r2, r2, #8
	cmp r0, r2
	bgt _080A9AD2
	str r2, [r1, #8]
	movs r0, #1
	b _080A9AD4
	.align 2, 0
_080A9AC4: .4byte 0xFFFFFF00
_080A9AC8:
	movs r0, #0x8f
	lsls r0, r0, #8
	str r0, [r1, #8]
	movs r0, #1
	b _080A9AD4
_080A9AD2:
	movs r0, #0
_080A9AD4:
	pop {r1}
	bx r1

	thumb_func_start sub_80A9AD8
sub_80A9AD8: @ 0x080A9AD8
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #8]
	ldr r3, _080A9B18 @ =0x000121FF
	cmp r0, r3
	bgt _080A9AF2
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #8]
	cmp r0, r3
	ble _080A9AF4
_080A9AF2:
	movs r2, #1
_080A9AF4:
	ldr r0, [r1, #0x10]
	ldr r3, _080A9B18 @ =0x000121FF
	cmp r0, r3
	bgt _080A9B0A
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #0x10]
	ldr r0, [r1, #8]
	cmp r0, r3
	ble _080A9B10
_080A9B0A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080A9B10:
	cmp r2, #2
	beq _080A9B1C
	movs r0, #0
	b _080A9B1E
	.align 2, 0
_080A9B18: .4byte 0x000121FF
_080A9B1C:
	movs r0, #1
_080A9B1E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A9B24
sub_80A9B24: @ 0x080A9B24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x1c
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A9B68
sub_80A9B68: @ 0x080A9B68
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9B6C
sub_80A9B6C: @ 0x080A9B6C
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9B70
sub_80A9B70: @ 0x080A9B70
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9B74
sub_80A9B74: @ 0x080A9B74
	push {lr}
	ldr r0, _080A9B9C @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	ldr r1, _080A9BA0 @ =0x02570000
	cmp r0, r1
	ble _080A9B98
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, _080A9BA4 @ =sub_80A9824
	str r0, [r3, #8]
_080A9B98:
	pop {r0}
	bx r0
	.align 2, 0
_080A9B9C: .4byte gCurTask
_080A9BA0: .4byte 0x02570000
_080A9BA4: .4byte sub_80A9824

	thumb_func_start sub_80A9BA8
sub_80A9BA8: @ 0x080A9BA8
	push {r4, lr}
	ldr r4, _080A9BD4 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r2, r0, #1
	strb r2, [r1, #2]
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A872C
	ldr r0, [r4]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9BD4: .4byte gCurTask

	thumb_func_start sub_80A9BD8
sub_80A9BD8: @ 0x080A9BD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r5, r3, #0
	ldr r0, _080A9C78 @ =sub_80AB818
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A9C7C @ =sub_80AB814
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r3, #0
	strh r3, [r4, #6]
	movs r0, #1
	ands r0, r5
	movs r7, #1
	rsbs r7, r7, #0
	adds r1, r7, #0
	cmp r0, #0
	beq _080A9C1C
	movs r1, #1
_080A9C1C:
	strb r1, [r4, #5]
	strb r5, [r4, #4]
	str r6, [r4, #0xc]
	strh r3, [r4, #8]
	mov r1, sb
	lsls r0, r1, #8
	str r0, [r4, #0x10]
	mov r7, r8
	lsls r0, r7, #8
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4]
	ldr r0, _080A9C80 @ =0x03000018
	adds r2, r2, r0
	str r6, [r2]
	ldr r0, [r4, #0xc]
	adds r0, #0x80
	str r0, [r4, #0xc]
	ldr r1, _080A9C84 @ =gUnknown_080DA284
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	strh r3, [r2, #0x10]
	strh r3, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	str r3, [r2, #8]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _080A9C88
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r2, #8]
	b _080A9C8A
	.align 2, 0
_080A9C78: .4byte sub_80AB818
_080A9C7C: .4byte sub_80AB814
_080A9C80: .4byte 0x03000018
_080A9C84: .4byte gUnknown_080DA284
_080A9C88:
	str r3, [r2, #8]
_080A9C8A:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A9CA0
sub_80A9CA0: @ 0x080A9CA0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r7, #0
	adds r4, r2, #0
	adds r4, #0x18
	ldr r3, [r2, #0x10]
	asrs r5, r3, #8
	ldr r1, _080A9CE4 @ =gUnknown_080DA28C
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r5, r0
	bge _080A9CE8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	str r0, [r2, #0x10]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r2, #0x10]
	asrs r1, r1, #8
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r1, r0
	blt _080A9D1E
	b _080A9D0A
	.align 2, 0
_080A9CE4: .4byte gUnknown_080DA28C
_080A9CE8:
	cmp r5, r0
	ble _080A9D18
	ldr r1, _080A9D10 @ =0xFFFFFF00
	adds r0, r3, r1
	str r0, [r2, #0x10]
	ldr r0, [r4, #8]
	ldr r1, _080A9D14 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, [r2, #0x10]
	asrs r1, r1, #8
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r1, r0
	bgt _080A9D1E
_080A9D0A:
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	b _080A9D1E
	.align 2, 0
_080A9D10: .4byte 0xFFFFFF00
_080A9D14: .4byte 0xFFFFFBFF
_080A9D18:
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	movs r7, #1
_080A9D1E:
	ldr r3, [r2, #0x14]
	asrs r4, r3, #8
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r1, r6, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bge _080A9D40
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r3, r4
	str r0, [r2, #0x14]
	asrs r0, r0, #8
	cmp r0, r1
	blt _080A9D66
	b _080A9D50
_080A9D40:
	cmp r4, r1
	ble _080A9D5C
	ldr r4, _080A9D58 @ =0xFFFFFF00
	adds r0, r3, r4
	str r0, [r2, #0x14]
	asrs r0, r0, #8
	cmp r0, r1
	bgt _080A9D66
_080A9D50:
	lsls r0, r1, #8
	str r0, [r2, #0x14]
	b _080A9D66
	.align 2, 0
_080A9D58: .4byte 0xFFFFFF00
_080A9D5C:
	lsls r0, r1, #8
	str r0, [r2, #0x14]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A9D66:
	cmp r7, #2
	beq _080A9D6E
	movs r0, #0
	b _080A9D70
_080A9D6E:
	movs r0, #1
_080A9D70:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A9D78
sub_80A9D78: @ 0x080A9D78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x18
	ldr r3, _080A9DA4 @ =gUnknown_080DA28C
	ldrb r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r0, _080A9DA8 @ =gUnknown_080DA2AA
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #8
	subs r1, r2, r0
	adds r2, r2, r0
	ldr r0, [r5, #0x10]
	cmp r0, r1
	bgt _080A9DAC
	movs r0, #1
	b _080A9DB2
	.align 2, 0
_080A9DA4: .4byte gUnknown_080DA28C
_080A9DA8: .4byte gUnknown_080DA2AA
_080A9DAC:
	cmp r0, r2
	blt _080A9DB4
	movs r0, #0xff
_080A9DB2:
	strb r0, [r5, #5]
_080A9DB4:
	movs r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080A9DC6
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A9DCC
_080A9DC6:
	ldr r0, [r4, #8]
	ldr r1, _080A9E18 @ =0xFFFFFBFF
	ands r0, r1
_080A9DCC:
	str r0, [r4, #8]
	movs r1, #5
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r2, r2, #8
	str r2, [r5, #0x14]
	ldr r4, _080A9E1C @ =gSineTable
	ldrh r3, [r5, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	adds r2, r2, r0
	str r2, [r5, #0x14]
	ldr r1, _080A9E20 @ =gUnknown_080DA2B9
	ldrb r0, [r5, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r3, r3, r0
	strh r3, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9E18: .4byte 0xFFFFFBFF
_080A9E1C: .4byte gSineTable
_080A9E20: .4byte gUnknown_080DA2B9

	thumb_func_start sub_80A9E24
sub_80A9E24: @ 0x080A9E24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080A9EA0 @ =sub_80A9EB4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A9EA4 @ =sub_80AB8F8
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	str r5, [r4]
	movs r3, #0
	strb r3, [r4, #4]
	movs r5, #0
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	str r6, [r4, #0xc]
	ldr r1, _080A9EA8 @ =0xFFFFCE00
	str r1, [r4, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #6
	str r1, [r4, #0x14]
	ldr r1, _080A9EAC @ =0x03000018
	adds r0, r0, r1
	str r6, [r0]
	ldr r1, [r4, #0xc]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r4, #0xc]
	ldr r2, _080A9EB0 @ =gUnknown_080DA06C
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r3, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9EA0: .4byte sub_80A9EB4
_080A9EA4: .4byte sub_80AB8F8
_080A9EA8: .4byte 0xFFFFCE00
_080A9EAC: .4byte 0x03000018
_080A9EB0: .4byte gUnknown_080DA06C

	thumb_func_start sub_80A9EB4
sub_80A9EB4: @ 0x080A9EB4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A9F28 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80AB8B0
	ldr r0, _080A9F2C @ =0x03000018
	adds r4, r4, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080A9EFA
	ldr r1, [r5]
	movs r0, #0x12
	strb r0, [r1]
_080A9EFA:
	ldrh r0, [r5, #8]
	cmp r0, #0xb3
	bls _080A9F20
	ldr r1, _080A9F30 @ =gUnknown_080DA06C
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strh r6, [r5, #8]
	ldr r1, [r7]
	ldr r0, _080A9F34 @ =sub_80A9F38
	str r0, [r1, #8]
_080A9F20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F28: .4byte gCurTask
_080A9F2C: .4byte 0x03000018
_080A9F30: .4byte gUnknown_080DA06C
_080A9F34: .4byte sub_80A9F38

	thumb_func_start sub_80A9F38
sub_80A9F38: @ 0x080A9F38
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A9F9C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80AB8B0
	ldr r0, _080A9FA0 @ =0x03000018
	adds r5, r5, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080A9F96
	ldr r1, _080A9FA4 @ =gUnknown_080DA06C
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r1, [r7]
	ldr r0, _080A9FA8 @ =sub_80A9FAC
	str r0, [r1, #8]
_080A9F96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F9C: .4byte gCurTask
_080A9FA0: .4byte 0x03000018
_080A9FA4: .4byte gUnknown_080DA06C
_080A9FA8: .4byte sub_80A9FAC

	thumb_func_start sub_80A9FAC
sub_80A9FAC: @ 0x080A9FAC
	push {r4, r5, r6, r7, lr}
	ldr r7, _080AA038 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0x18
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r5, #1
	beq _080AA064
	ldrb r3, [r6, #4]
	cmp r3, #0
	bne _080AA01A
	ldr r2, _080AA03C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AA040 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldr r0, _080AA044 @ =0x00003FFF
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AA048 @ =gBldRegs
	ldr r0, _080AA04C @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r6, #6]
	movs r0, #1
	strb r0, [r6, #4]
	ldr r0, _080AA050 @ =0x0000029D
	bl m4aSongNumStart
_080AA01A:
	ldr r1, _080AA048 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AA054
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r4, [r6, #6]
	adds r0, r0, r4
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080AA064
	.align 2, 0
_080AA038: .4byte gCurTask
_080AA03C: .4byte gDispCnt
_080AA040: .4byte gWinRegs
_080AA044: .4byte 0x00003FFF
_080AA048: .4byte gBldRegs
_080AA04C: .4byte 0x00003FBF
_080AA050: .4byte 0x0000029D
_080AA054:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r7]
	bl TaskDestroy
_080AA064:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AA06C
sub_80AA06C: @ 0x080AA06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080AA1A0 @ =sub_80AB8FC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA1A4 @ =sub_80AB98C
	str r1, [sp]
	adds r1, r2, #0
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7]
	movs r0, #0
	mov sl, r0
	movs r5, #0
	strh r5, [r7, #4]
	ldr r0, _080AA1A8 @ =0xFFFF2E00
	str r0, [r7, #8]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r7, #0xc]
	ldr r1, _080AA1AC @ =0x030000B0
	adds r0, r4, r1
	str r6, [r0]
	ldr r2, _080AA1B0 @ =gUnknown_080DBA94
	ldr r1, [r2, #0xc]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _080AA1B4 @ =0x030000D8
	adds r4, r4, r0
	str r6, [r4]
	ldr r2, [sp, #4]
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r2]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r7, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	mov r1, sb
	strh r1, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r3, _080AA1B8 @ =gUnknown_080DA2C8
	movs r0, #0
	mov r8, r0
_080AA13A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x10
	adds r0, r7, r0
	str r6, [r0]
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #3
	bls _080AA13A
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1A0: .4byte sub_80AB8FC
_080AA1A4: .4byte sub_80AB98C
_080AA1A8: .4byte 0xFFFF2E00
_080AA1AC: .4byte 0x030000B0
_080AA1B0: .4byte gUnknown_080DBA94
_080AA1B4: .4byte 0x030000D8
_080AA1B8: .4byte gUnknown_080DA2C8

	thumb_func_start sub_80AA1BC
sub_80AA1BC: @ 0x080AA1BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0xd8
	movs r0, #0
	mov r8, r0
_080AA1D2:
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r1, r7, r1
	strh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r3, _080AA26C @ =0xFFFFFBFF
	ands r0, r3
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp]
	cmp r5, #2
	bls _080AA1D2
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r2, [r6, #8]
	asrs r2, r2, #8
	movs r4, #0
	strh r2, [r0, #0x10]
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r2, r7, r2
	strh r2, [r0, #0x10]
	ldr r1, [r0, #8]
	ands r1, r3
	str r1, [r0, #8]
	strb r4, [r0, #0x1f]
	bl DisplaySprite
	movs r5, #0
_080AA22E:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #0x10
	adds r4, r6, r4
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	adds r1, #0x3a
	strh r1, [r4, #0x10]
	adds r0, #0x28
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AA22E
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA26C: .4byte 0xFFFFFBFF

	thumb_func_start sub_80AA270
sub_80AA270: @ 0x080AA270
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	ldr r1, _080AA348 @ =gDispCnt
	ldr r2, _080AA34C @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080AA350 @ =sub_80AA384
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA354 @ =sub_80AB990
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	str r4, [r0]
	movs r5, #0
	movs r2, #0
	strh r2, [r0, #8]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [sp, #4]
	ldr r3, _080AA358 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r1, _080AA35C @ =gBgCntRegs
	mov r8, r1
	ldrh r1, [r1, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080AA360 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080AA364 @ =gBgSprites_Unknown1
	strb r5, [r4, #3]
	ldr r0, _080AA368 @ =gBgSprites_Unknown2
	strb r5, [r0, #0xc]
	strb r5, [r0, #0xd]
	movs r1, #0xff
	strb r1, [r0, #0xe]
	movs r3, #0x40
	strb r3, [r0, #0xf]
	strb r5, [r4, #2]
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r5, [r4, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	ldr r0, _080AA36C @ =0x00004E07
	mov r1, r8
	strh r0, [r1]
	ldr r0, _080AA370 @ =gBgScrollRegs
	strh r2, [r0]
	ldr r1, _080AA374 @ =0x03000014
	adds r0, r6, r1
	ldr r1, _080AA378 @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AA37C @ =0x06007000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _080AA380 @ =0x0300003E
	adds r6, r6, r1
	strb r5, [r6]
	strh r2, [r0, #0x2e]
	bl DrawBackground
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AA348: .4byte gDispCnt
_080AA34C: .4byte 0x00001041
_080AA350: .4byte sub_80AA384
_080AA354: .4byte sub_80AB990
_080AA358: .4byte 0x040000D4
_080AA35C: .4byte gBgCntRegs
_080AA360: .4byte 0x85000010
_080AA364: .4byte gBgSprites_Unknown1
_080AA368: .4byte gBgSprites_Unknown2
_080AA36C: .4byte 0x00004E07
_080AA370: .4byte gBgScrollRegs
_080AA374: .4byte 0x03000014
_080AA378: .4byte 0x06004000
_080AA37C: .4byte 0x06007000
_080AA380: .4byte 0x0300003E

	thumb_func_start sub_80AA384
sub_80AA384: @ 0x080AA384
	push {r4, r5, r6, r7, lr}
	ldr r6, _080AA3E4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r4, [r3, #4]
	ldr r5, _080AA3E8 @ =gBldRegs
	cmp r4, #0
	bne _080AA3D0
	ldr r2, _080AA3EC @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA3F0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	ldr r0, _080AA3F4 @ =0x000001C1
	strh r0, [r5]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #6]
	movs r0, #1
	strh r0, [r3, #4]
	ldr r1, _080AA3F8 @ =0x00001141
	adds r0, r1, #0
	strh r0, [r2]
_080AA3D0:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080AA3FC
	ldrh r0, [r3, #6]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldrh r0, [r3, #6]
	subs r0, #0x40
	strh r0, [r3, #6]
	b _080AA404
	.align 2, 0
_080AA3E4: .4byte gCurTask
_080AA3E8: .4byte gBldRegs
_080AA3EC: .4byte gDispCnt
_080AA3F0: .4byte gWinRegs
_080AA3F4: .4byte 0x000001C1
_080AA3F8: .4byte 0x00001141
_080AA3FC:
	strh r0, [r5, #4]
	ldr r1, [r6]
	ldr r0, _080AA40C @ =sub_80AB994
	str r0, [r1, #8]
_080AA404:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA40C: .4byte sub_80AB994

	thumb_func_start sub_80AA410
sub_80AA410: @ 0x080AA410
	push {r4, r5, r6, lr}
	ldr r5, _080AA464 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	ldr r4, _080AA468 @ =gBldRegs
	cmp r0, #0
	beq _080AA450
	ldr r2, _080AA46C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA470 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _080AA474 @ =0x000001C1
	strh r0, [r4]
	strh r2, [r3, #6]
	strh r2, [r3, #4]
	strh r2, [r4, #4]
_080AA450:
	ldrh r0, [r4, #4]
	cmp r0, #0xf
	bhi _080AA478
	ldrh r0, [r3, #6]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r3, #6]
	adds r0, #0x40
	strh r0, [r3, #6]
	b _080AA490
	.align 2, 0
_080AA464: .4byte gCurTask
_080AA468: .4byte gBldRegs
_080AA46C: .4byte gDispCnt
_080AA470: .4byte gWinRegs
_080AA474: .4byte 0x000001C1
_080AA478:
	movs r0, #0x10
	strh r0, [r4, #4]
	ldrh r0, [r3, #8]
	adds r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080AA490
	ldr r1, [r5]
	ldr r0, _080AA498 @ =sub_80AA49C
	str r0, [r1, #8]
_080AA490:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA498: .4byte sub_80AA49C

	thumb_func_start sub_80AA49C
sub_80AA49C: @ 0x080AA49C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r0, #0
	ldr r1, _080AA508 @ =gLoadedSaveGame
	mov ip, r1
	mov r6, ip
	adds r6, #0x37
	movs r7, #4
_080AA4AC:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #2
_080AA4B2:
	adds r0, r2, r3
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA4C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080AA4C6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080AA4B2
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AA4AC
	mov r0, ip
	adds r0, #0x33
	ldrb r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #3
	beq _080AA502
	ldr r1, _080AA50C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AA4F8
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA502
_080AA4F8:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AA510
_080AA502:
	bl LaunchGameIntro
	b _080AA52E
	.align 2, 0
_080AA508: .4byte gLoadedSaveGame
_080AA50C: .4byte gStageData
_080AA510:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080AA51C
	movs r0, #1
	b _080AA52A
_080AA51C:
	cmp r5, #0x1c
	bne _080AA53C
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080AA53C
	movs r0, #2
_080AA52A:
	bl sub_80AB120
_080AA52E:
	ldr r0, _080AA538 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AA548
	.align 2, 0
_080AA538: .4byte gCurTask
_080AA53C:
	bl LaunchGameIntro
	ldr r0, _080AA550 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AA548:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA550: .4byte gCurTask

	thumb_func_start sub_80AA554
sub_80AA554: @ 0x080AA554
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080AA600 @ =sub_80AB9CC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA604 @ =sub_80AB9C8
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _080AA608 @ =gLoadedSaveGame
	ldr r2, _080AA60C @ =0x00000366
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	strb r2, [r1]
	strb r4, [r1, #1]
	movs r2, #0
	strh r0, [r1, #6]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [sp, #4]
	ldr r3, _080AA610 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _080AA614 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080AA618 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080AA61C @ =gBgSprites_Unknown1
	strb r2, [r4, #3]
	ldr r0, _080AA620 @ =gBgSprites_Unknown2
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	movs r1, #0xff
	strb r1, [r0, #0xe]
	movs r3, #0x40
	strb r3, [r0, #0xf]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4]
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AA624 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AA628 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA600: .4byte sub_80AB9CC
_080AA604: .4byte sub_80AB9C8
_080AA608: .4byte gLoadedSaveGame
_080AA60C: .4byte 0x00000366
_080AA610: .4byte 0x040000D4
_080AA614: .4byte gBgCntRegs
_080AA618: .4byte 0x85000010
_080AA61C: .4byte gBgSprites_Unknown1
_080AA620: .4byte gBgSprites_Unknown2
_080AA624: .4byte gBgPalette
_080AA628: .4byte gFlags

	thumb_func_start sub_80AA62C
sub_80AA62C: @ 0x080AA62C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080AA684 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA688 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080AA68C @ =0x00005687
	strh r0, [r1]
	ldr r0, _080AA690 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, r3, #0
	adds r0, #8
	ldr r1, _080AA694 @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AA698 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080AA69C @ =0x00000141
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x32
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA684: .4byte gDispCnt
_080AA688: .4byte gBgCntRegs
_080AA68C: .4byte 0x00005687
_080AA690: .4byte gBgScrollRegs
_080AA694: .4byte 0x06004000
_080AA698: .4byte 0x0600B000
_080AA69C: .4byte 0x00000141

	thumb_func_start sub_80AA6A0
sub_80AA6A0: @ 0x080AA6A0
	push {r4, r5, r6, lr}
	ldr r5, _080AA72C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _080AA6D4
	ldr r0, _080AA730 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA734 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA738 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA73C @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
_080AA6D4:
	ldrh r0, [r4, #2]
	ldr r3, _080AA740 @ =gBldRegs
	cmp r0, #0
	bne _080AA716
	ldr r2, _080AA744 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA748 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080AA74C @ =0x00003FFF
	strh r0, [r3]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #2]
_080AA716:
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq _080AA750
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldrh r0, [r4, #4]
	subs r0, #0x40
	strh r0, [r4, #4]
	b _080AA762
	.align 2, 0
_080AA72C: .4byte gCurTask
_080AA730: .4byte gMPlayInfo_BGM
_080AA734: .4byte gMPlayInfo_SE1
_080AA738: .4byte gMPlayInfo_SE2
_080AA73C: .4byte gMPlayInfo_SE3
_080AA740: .4byte gBldRegs
_080AA744: .4byte gDispCnt
_080AA748: .4byte gWinRegs
_080AA74C: .4byte 0x00003FFF
_080AA750:
	strh r0, [r3, #4]
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _080AA75C
	subs r0, #2
	strb r0, [r4, #1]
_080AA75C:
	ldr r1, [r5]
	ldr r0, _080AA768 @ =sub_80AB9F4
	str r0, [r1, #8]
_080AA762:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA768: .4byte sub_80AB9F4

	thumb_func_start sub_80AA76C
sub_80AA76C: @ 0x080AA76C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080AA7CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #2]
	ldr r4, _080AA7D0 @ =gBldRegs
	cmp r0, #0
	beq _080AA7B8
	ldr r2, _080AA7D4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA7D8 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080AA7DC @ =0x00003FFF
	strh r0, [r4]
	strh r3, [r6, #4]
	strh r3, [r6, #2]
_080AA7B8:
	ldrh r0, [r4, #4]
	cmp r0, #0xf
	bhi _080AA7E0
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r6, #4]
	adds r0, #0x40
	strh r0, [r6, #4]
	b _080AA90C
	.align 2, 0
_080AA7CC: .4byte gCurTask
_080AA7D0: .4byte gBldRegs
_080AA7D4: .4byte gDispCnt
_080AA7D8: .4byte gWinRegs
_080AA7DC: .4byte 0x00003FFF
_080AA7E0:
	movs r3, #0
	movs r2, #0x10
	strh r2, [r4, #4]
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _080AA7EE
	b _080AA8EC
_080AA7EE:
	movs r0, #0
	mov r8, r0
	ldr r4, _080AA854 @ =gLoadedSaveGame
	ldrh r1, [r4, #0x34]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080AA808
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x34]
	bl sub_8001E58
_080AA808:
	movs r0, #0
	adds r5, r4, #0
	adds r7, r5, #0
	adds r7, #0x37
	movs r1, #4
	mov ip, r1
_080AA814:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #2
_080AA81A:
	adds r0, r2, r3
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AA832
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080AA832:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080AA81A
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AA814
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	beq _080AA858
	bl sub_80AA91C
	b _080AA8AA
	.align 2, 0
_080AA854: .4byte gLoadedSaveGame
_080AA858:
	adds r0, r5, #0
	adds r0, #0x33
	ldrb r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #3
	beq _080AA882
	ldr r1, _080AA890 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AA878
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA882
_080AA878:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AA89C
_080AA882:
	movs r0, #0
	strh r0, [r6, #6]
	ldr r0, _080AA894 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA898 @ =sub_80ABA20
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA890: .4byte gStageData
_080AA894: .4byte gCurTask
_080AA898: .4byte sub_80ABA20
_080AA89C:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080AA8B8
	movs r0, #1
	bl sub_80AB120
_080AA8AA:
	ldr r0, _080AA8B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AA90C
	.align 2, 0
_080AA8B4: .4byte gCurTask
_080AA8B8:
	mov r3, r8
	cmp r3, #0x1c
	bne _080AA8D8
	movs r0, #2
	bl sub_80AB120
	ldr r0, _080AA8D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA8D4 @ =sub_80ABA80
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA8D0: .4byte gCurTask
_080AA8D4: .4byte sub_80ABA80
_080AA8D8:
	ldr r0, _080AA8E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA8E8 @ =sub_80ABA94
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA8E4: .4byte gCurTask
_080AA8E8: .4byte sub_80ABA94
_080AA8EC:
	ldr r2, _080AA918 @ =gLoadedSaveGame
	ldrh r1, [r2, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AA902
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #0x34]
	bl sub_8001E58
_080AA902:
	bl sub_80A8F90
	ldr r0, [r5]
	bl TaskDestroy
_080AA90C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA918: .4byte gLoadedSaveGame

	thumb_func_start sub_80AA91C
sub_80AA91C: @ 0x080AA91C
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _080AAA10 @ =gDispCnt
	movs r5, #0x40
	ldr r0, _080AAA14 @ =0x00006040
	strh r0, [r1]
	ldr r0, _080AAA18 @ =sub_80AAC38
	movs r1, #0xa6
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080AAA1C @ =sub_80ABAF4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _080AAA20 @ =gLoadedSaveGame
	ldr r1, _080AAA24 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4]
	movs r3, #0
	strh r1, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	str r1, [r4, #0x14]
	ldr r0, _080AAA28 @ =0xFFFF9C00
	str r0, [r4, #0x18]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x24]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	strh r1, [r4, #6]
	strh r1, [r4, #4]
	str r1, [sp, #4]
	ldr r2, _080AAA2C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080AAA30 @ =gBgCntRegs
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AAA34 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _080AAA38 @ =gBgSprites_Unknown1
	strb r3, [r2]
	ldr r0, _080AAA3C @ =gBgSprites_Unknown2
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	strb r5, [r0, #3]
	strb r3, [r2, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r5, [r0, #7]
	strb r3, [r2, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r5, [r0, #0xb]
	strb r3, [r2, #3]
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r5, [r0, #0xf]
	adds r0, r4, #0
	bl sub_80AAB6C
	ldr r2, _080AAA40 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAA44 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAA48 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAA10: .4byte gDispCnt
_080AAA14: .4byte 0x00006040
_080AAA18: .4byte sub_80AAC38
_080AAA1C: .4byte sub_80ABAF4
_080AAA20: .4byte gLoadedSaveGame
_080AAA24: .4byte 0x00000366
_080AAA28: .4byte 0xFFFF9C00
_080AAA2C: .4byte 0x040000D4
_080AAA30: .4byte gBgCntRegs
_080AAA34: .4byte 0x85000010
_080AAA38: .4byte gBgSprites_Unknown1
_080AAA3C: .4byte gBgSprites_Unknown2
_080AAA40: .4byte gWinRegs
_080AAA44: .4byte gBgPalette
_080AAA48: .4byte gFlags

	thumb_func_start sub_80AAA4C
sub_80AAA4C: @ 0x080AAA4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r4, #0
	ldr r7, _080AAB5C @ =0x06010000
	ldr r3, _080AAB60 @ =gUnknown_080DA2E8
	movs r0, #0
	mov sl, r0
	movs r5, #0
_080AAA66:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r6, r0
	str r7, [r0]
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #1
	bls _080AAA66
	adds r0, r6, #0
	adds r0, #0x7c
	str r7, [r6, #0x7c]
	ldr r3, _080AAB64 @ =gUnknown_080DA2F8
	ldrb r2, [r6]
	lsls r2, r2, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0xa4
	str r7, [r0]
	ldr r2, _080AAB68 @ =gUnknown_080DA328
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
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
_080AAB5C: .4byte 0x06010000
_080AAB60: .4byte gUnknown_080DA2E8
_080AAB64: .4byte gUnknown_080DA2F8
_080AAB68: .4byte gUnknown_080DA328

	thumb_func_start sub_80AAB6C
sub_80AAB6C: @ 0x080AAB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _080AAC18 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080AAC1C @ =0x00005888
	mov r2, r8
	strh r0, [r2, #4]
	ldr r6, _080AAC20 @ =gBgScrollRegs
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r6, #8]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #8
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r1, _080AAC24 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AAC28 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xf6
	mov r2, sb
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080AAC2C @ =0x00000681
	mov r1, r8
	strh r0, [r1, #2]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AAC30 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080AAC34 @ =0x0000012B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r2, #0x2a
	adds r1, r7, r2
	mov r2, sb
	strb r2, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAC18: .4byte gBgCntRegs
_080AAC1C: .4byte 0x00005888
_080AAC20: .4byte gBgScrollRegs
_080AAC24: .4byte 0x06008000
_080AAC28: .4byte 0x0600C000
_080AAC2C: .4byte 0x00000681
_080AAC30: .4byte 0x06003000
_080AAC34: .4byte 0x0000012B

	thumb_func_start sub_80AAC38
sub_80AAC38: @ 0x080AAC38
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AACFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r7, #0
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _080AACA6
	ldr r2, _080AAD00 @ =gBldRegs
	movs r0, #0xc2
	strh r0, [r2]
	ldr r4, _080AAD04 @ =gDispCnt
	ldrh r0, [r4]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _080AAD08 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080AAD0C @ =0x00001137
	strh r0, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #5
	strh r5, [r6, #4]
	movs r0, #1
	strh r0, [r6, #6]
	adds r0, r6, #0
	bl sub_80AAA4C
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
	bl m4aMPlayAllStop
	movs r0, #0x5b      @ MUS_MESSAGE
	bl m4aSongNumStart
_080AACA6:
	ldr r1, [r6, #0x10]
	ldr r0, _080AAD10 @ =0x00002FFF
	cmp r1, r0
	ble _080AACC0
	ldr r2, _080AAD14 @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r6, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _080AACC0
	str r1, [r6, #0x10]
	movs r7, #1
_080AACC0:
	ldr r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r1, r2
	bgt _080AACE0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r6, #8]
	ldr r0, _080AAD18 @ =0x00003FFF
	cmp r1, r0
	ble _080AACE0
	str r2, [r6, #8]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AACE0:
	ldr r0, _080AAD00 @ =gBldRegs
	ldrh r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	beq _080AAD1C
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r1, _080AAD14 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r6, #4]
	adds r0, r0, r2
	strh r0, [r6, #4]
	b _080AAD22
	.align 2, 0
_080AACFC: .4byte gCurTask
_080AAD00: .4byte gBldRegs
_080AAD04: .4byte gDispCnt
_080AAD08: .4byte gWinRegs
_080AAD0C: .4byte 0x00001137
_080AAD10: .4byte 0x00002FFF
_080AAD14: .4byte 0xFFFFFF00
_080AAD18: .4byte 0x00003FFF
_080AAD1C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AAD22:
	ldr r4, _080AAD5C @ =gWinRegs
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #4]
	cmp r7, #3
	bne _080AAD56
	movs r0, #0xf0
	strh r0, [r3]
	ldr r0, _080AAD60 @ =0x00003017
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r3, #2]
	strh r2, [r3, #4]
	strh r2, [r6, #6]
	strh r2, [r6, #4]
	strh r2, [r6, #2]
	ldr r0, _080AAD64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AAD68 @ =sub_80AAD6C
	str r0, [r1, #8]
_080AAD56:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAD5C: .4byte gWinRegs
_080AAD60: .4byte 0x00003017
_080AAD64: .4byte gCurTask
_080AAD68: .4byte sub_80AAD6C

	thumb_func_start sub_80AAD6C
sub_80AAD6C: @ 0x080AAD6C
	push {r4, r5, lr}
	ldr r0, _080AAD98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABBC8
	ldr r1, _080AAD9C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AADA0
	ldrh r0, [r4, #4]
	adds r0, #0x80
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080AADB4
	.align 2, 0
_080AAD98: .4byte gCurTask
_080AAD9C: .4byte gBldRegs
_080AADA0:
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAE04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAE08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_080AADB4:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x96
	ble _080AAE20
	movs r3, #0x80
	lsls r3, r3, #5
	strh r3, [r4, #4]
	strh r5, [r4, #2]
	ldr r2, _080AAE0C @ =gBldRegs
	movs r0, #0xd0
	strh r0, [r2]
	ldr r1, _080AAE10 @ =gWinRegs
	ldr r0, _080AAE14 @ =0x00003017
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r2, #2]
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r5, [r4, #6]
	strh r3, [r4, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAE04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAE08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080AAE18 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AAE1C @ =sub_80AAE50
	str r0, [r1, #8]
	b _080AAE40
	.align 2, 0
_080AAE04: .4byte gBgPalette
_080AAE08: .4byte gFlags
_080AAE0C: .4byte gBldRegs
_080AAE10: .4byte gWinRegs
_080AAE14: .4byte 0x00003017
_080AAE18: .4byte gCurTask
_080AAE1C: .4byte sub_80AAE50
_080AAE20:
	ldr r2, _080AAE48 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAE4C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAE40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAE48: .4byte gWinRegs
_080AAE4C: .4byte gBgScrollRegs

	thumb_func_start sub_80AAE50
sub_80AAE50: @ 0x080AAE50
	push {r4, r5, lr}
	ldr r5, _080AAE88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80ABBEC
	cmp r0, #1
	bne _080AAE90
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080AAE90
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080AAE8C @ =sub_80AAEC0
	str r0, [r1, #8]
	b _080AAEB0
	.align 2, 0
_080AAE88: .4byte gCurTask
_080AAE8C: .4byte sub_80AAEC0
_080AAE90:
	ldr r2, _080AAEB8 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAEBC @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAEB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAEB8: .4byte gWinRegs
_080AAEBC: .4byte gBgScrollRegs

	thumb_func_start sub_80AAEC0
sub_80AAEC0: @ 0x080AAEC0
	push {r4, r5, lr}
	ldr r5, _080AAEF4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r2, _080AAEF8 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080AAF00
	ldr r1, _080AAEFC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	b _080AAF20
	.align 2, 0
_080AAEF4: .4byte gCurTask
_080AAEF8: .4byte gBldRegs
_080AAEFC: .4byte 0xFFFFFF00
_080AAF00:
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080AAF20
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080AAF1C @ =sub_80ABAF8
	str r0, [r1, #8]
	b _080AAF40
	.align 2, 0
_080AAF1C: .4byte sub_80ABAF8
_080AAF20:
	ldr r2, _080AAF48 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAF4C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAF40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAF48: .4byte gWinRegs
_080AAF4C: .4byte gBgScrollRegs

	thumb_func_start sub_80AAF50
sub_80AAF50: @ 0x080AAF50
	push {r4, r5, lr}
	ldr r5, _080AAF88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r2, _080AAF8C @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _080AAF90
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	b _080AAFA0
	.align 2, 0
_080AAF88: .4byte gCurTask
_080AAF8C: .4byte gBldRegs
_080AAF90:
	ldr r1, _080AAFA8 @ =gWinRegs
	movs r0, #0x17
	strh r0, [r1, #8]
	movs r0, #0x10
	strh r0, [r2, #4]
	ldr r1, [r5]
	ldr r0, _080AAFAC @ =sub_80AAFB0
	str r0, [r1, #8]
_080AAFA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAFA8: .4byte gWinRegs
_080AAFAC: .4byte sub_80AAFB0

	thumb_func_start sub_80AAFB0
sub_80AAFB0: @ 0x080AAFB0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AB090 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r7, #0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r0, [r4, #0x10]
	ldr r1, _080AB094 @ =0x00004FFF
	cmp r0, r1
	bgt _080AAFE8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, r1
	ble _080AAFEA
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x10]
_080AAFE8:
	movs r5, #1
_080AAFEA:
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _080AAFFE
	ldr r1, _080AB098 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _080AB004
	movs r0, #0
	str r0, [r4, #8]
_080AAFFE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080AB004:
	ldr r2, _080AB09C @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _080AB0C8
	ldr r2, _080AB0A0 @ =gLoadedSaveGame
	adds r0, r2, #0
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	mov ip, r2
	cmp r0, #3
	beq _080AB0C0
	ldr r1, _080AB0A4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AB03E
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AB0C0
_080AB03E:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AB0C0
	movs r0, #0
	mov r5, ip
	adds r5, #0x37
	movs r6, #4
_080AB050:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB056:
	adds r0, r3, r4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080AB06A
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AB06A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB056
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB050
	mov r0, ip
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AB0A8
	movs r0, #1
	b _080AB0AE
	.align 2, 0
_080AB090: .4byte gCurTask
_080AB094: .4byte 0x00004FFF
_080AB098: .4byte 0xFFFFFE00
_080AB09C: .4byte gWinRegs
_080AB0A0: .4byte gLoadedSaveGame
_080AB0A4: .4byte gStageData
_080AB0A8:
	cmp r7, #0x1c
	bne _080AB0C0
	movs r0, #2
_080AB0AE:
	bl sub_80AB120
	ldr r0, _080AB0BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AB0C8
	.align 2, 0
_080AB0BC: .4byte gCurTask
_080AB0C0:
	ldr r0, _080AB0D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB0D4 @ =sub_80ABB38
	str r0, [r1, #8]
_080AB0C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB0D0: .4byte gCurTask
_080AB0D4: .4byte sub_80ABB38

	thumb_func_start sub_80AB0D8
sub_80AB0D8: @ 0x080AB0D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x28]
	asrs r2, r0, #8
	strh r2, [r1, #0x12]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB0F6
	subs r0, r2, #4
	strh r0, [r1, #0x12]
_080AB0F6:
	adds r0, r1, #0
	bl DisplaySprite
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB118
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x28]
	asrs r1, r1, #8
	adds r1, #0xa
	strh r1, [r0, #0x12]
	bl DisplaySprite
_080AB118:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB120
sub_80AB120: @ 0x080AB120
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080AB1AC @ =gDispCnt
	movs r1, #0x82
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r5]
	ldr r0, _080AB1B0 @ =sub_80AB1C4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AB1B4 @ =sub_80ABC1C
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r3, #0
	strh r2, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	strb r3, [r0, #1]
	strh r2, [r0, #2]
	str r2, [r0, #0x24]
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldr r2, _080AB1B8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AB1BC @ =gBldRegs
	ldr r0, _080AB1C0 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB1AC: .4byte gDispCnt
_080AB1B0: .4byte sub_80AB1C4
_080AB1B4: .4byte sub_80ABC1C
_080AB1B8: .4byte gWinRegs
_080AB1BC: .4byte gBldRegs
_080AB1C0: .4byte 0x00003FFF

	thumb_func_start sub_80AB1C4
sub_80AB1C4: @ 0x080AB1C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AB270 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r0, _080AB274 @ =gLoadedSaveGame
	ldr r1, _080AB278 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	mov ip, r0
	movs r2, #4
	ldrsh r5, [r7, r2]
	cmp r5, #0
	bne _080AB2A4
	ldr r1, _080AB27C @ =0x06010000
	ldr r3, _080AB280 @ =0x0300002C
	adds r0, r6, r3
	str r1, [r0]
	ldr r2, _080AB284 @ =gUnknown_080DA358
	ldrh r1, [r2]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _080AB288 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB28C @ =gBgCntRegs
	ldr r0, _080AB290 @ =0x00000602
	strh r0, [r1, #2]
	ldr r0, _080AB294 @ =gBgScrollRegs
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r1, _080AB298 @ =0x03000094
	adds r0, r6, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _080AB29C @ =0x06003000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xab
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080AB2A0 @ =0x030000BE
	adds r1, r6, r2
	strb r4, [r1]
	movs r1, #1
	b _080AB380
	.align 2, 0
_080AB270: .4byte gCurTask
_080AB274: .4byte gLoadedSaveGame
_080AB278: .4byte 0x00000366
_080AB27C: .4byte 0x06010000
_080AB280: .4byte 0x0300002C
_080AB284: .4byte gUnknown_080DA358
_080AB288: .4byte gDispCnt
_080AB28C: .4byte gBgCntRegs
_080AB290: .4byte 0x00000602
_080AB294: .4byte gBgScrollRegs
_080AB298: .4byte 0x03000094
_080AB29C: .4byte 0x06003000
_080AB2A0: .4byte 0x030000BE
_080AB2A4:
	cmp r5, #1
	beq _080AB2AA
	b _080AB3AC
_080AB2AA:
	ldr r1, _080AB2DC @ =gBgCntRegs
	movs r3, #0
	ldr r0, _080AB2E0 @ =0x00000E04
	strh r0, [r1]
	ldr r2, _080AB2E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080AB2E8 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _080AB2EC @ =0x03000054
	adds r1, r6, r0
	movs r2, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB2D6
	cmp r0, #3
	bne _080AB2F0
_080AB2D6:
	movs r2, #0xc
	b _080AB2FA
	.align 2, 0
_080AB2DC: .4byte gBgCntRegs
_080AB2E0: .4byte 0x00000E04
_080AB2E4: .4byte gDispCnt
_080AB2E8: .4byte gBgScrollRegs
_080AB2EC: .4byte 0x03000054
_080AB2F0:
	cmp r0, #1
	beq _080AB2FA
	cmp r0, #2
	bne _080AB2FA
	movs r2, #6
_080AB2FA:
	ldr r0, _080AB388 @ =0x06004000
	str r0, [r1, #4]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r4, [r1, #0xa]
	ldr r0, _080AB38C @ =0x06007000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r6, _080AB390 @ =gUnknown_080DA330
	mov r3, ip
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r5, #0x20
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	adds r0, r1, #0
	adds r0, #0x2a
	mov r2, r8
	strb r2, [r0]
	strh r4, [r1, #0x2e]
	adds r0, r1, #0
	bl DrawBackground
	ldr r2, _080AB394 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB398 @ =gBgCntRegs
	ldr r0, _080AB39C @ =0x00001D0D
	strh r0, [r1, #4]
	ldr r0, _080AB3A0 @ =gBgScrollRegs
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r1, _080AB3A4 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AB3A8 @ =0x0600E800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldrh r1, [r6, #0x26]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xbe
	mov r4, r8
	strb r4, [r1]
	movs r1, #2
_080AB380:
	strh r1, [r0, #0x2e]
	bl DrawBackground
	b _080AB494
	.align 2, 0
_080AB388: .4byte 0x06004000
_080AB38C: .4byte 0x06007000
_080AB390: .4byte gUnknown_080DA330
_080AB394: .4byte gDispCnt
_080AB398: .4byte gBgCntRegs
_080AB39C: .4byte 0x00001D0D
_080AB3A0: .4byte gBgScrollRegs
_080AB3A4: .4byte 0x0600C000
_080AB3A8: .4byte 0x0600E800
_080AB3AC:
	cmp r5, #2
	bne _080AB494
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB3BA
	cmp r0, #3
	bne _080AB40C
_080AB3BA:
	ldr r2, _080AB434 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB438 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080AB43C @ =0x00001608
	strh r0, [r1, #6]
	ldr r0, _080AB440 @ =gBgScrollRegs
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r4, _080AB444 @ =0x03000094
	adds r0, r6, r4
	ldr r1, _080AB448 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AB44C @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080AB450 @ =gUnknown_080DA330
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080AB454 @ =0x030000BE
	adds r1, r6, r2
	strb r3, [r1]
	movs r1, #3
	strh r1, [r0, #0x2e]
	bl DrawBackground
_080AB40C:
	ldr r5, _080AB458 @ =gBgPalette
	movs r0, #0
	strh r0, [r5]
	ldr r3, _080AB45C @ =gFlags
	ldr r2, [r3]
	movs r4, #1
	orrs r2, r4
	str r2, [r3]
	strh r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080AB464
	ldr r0, _080AB460 @ =gUnknown_080DA360
	movs r1, #0
	movs r2, #0x50
	bl sub_80C460C
	b _080AB476
	.align 2, 0
_080AB434: .4byte gDispCnt
_080AB438: .4byte gBgCntRegs
_080AB43C: .4byte 0x00001608
_080AB440: .4byte gBgScrollRegs
_080AB444: .4byte 0x03000094
_080AB448: .4byte 0x06008000
_080AB44C: .4byte 0x0600B000
_080AB450: .4byte gUnknown_080DA330
_080AB454: .4byte 0x030000BE
_080AB458: .4byte gBgPalette
_080AB45C: .4byte gFlags
_080AB460: .4byte gUnknown_080DA360
_080AB464:
	ldr r1, _080AB480 @ =0x040000D4
	ldr r0, _080AB484 @ =gUnknown_080DA360
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _080AB488 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r2, r4
	str r2, [r3]
_080AB476:
	ldr r0, _080AB48C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB490 @ =sub_80AB4A4
	str r0, [r1, #8]
	b _080AB49A
	.align 2, 0
_080AB480: .4byte 0x040000D4
_080AB484: .4byte gUnknown_080DA360
_080AB488: .4byte 0x80000050
_080AB48C: .4byte gCurTask
_080AB490: .4byte sub_80AB4A4
_080AB494:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080AB49A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB4A4
sub_80AB4A4: @ 0x080AB4A4
	push {r4, r5, r6, lr}
	ldr r0, _080AB550 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrb r3, [r5, #1]
	cmp r3, #0
	bne _080AB506
	ldr r2, _080AB554 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB558 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AB55C @ =gBldRegs
	ldr r0, _080AB560 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	ldr r0, _080AB564 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #0xe]
_080AB506:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB568 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB55C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080AB570
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080AB56C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r5, #2]
	adds r0, r0, r6
	strh r0, [r5, #2]
	b _080AB596
	.align 2, 0
_080AB550: .4byte gCurTask
_080AB554: .4byte gDispCnt
_080AB558: .4byte gWinRegs
_080AB55C: .4byte gBldRegs
_080AB560: .4byte 0x00003FFF
_080AB564: .4byte gBgScrollRegs
_080AB568: .4byte 0x0300002C
_080AB56C: .4byte 0xFFFFFF00
_080AB570:
	strh r0, [r1, #4]
	bl m4aMPlayAllStop
	ldrb r0, [r5]
	cmp r0, #3
	bne _080AB588
	ldr r0, _080AB584 @ =0x0000029F
	bl m4aSongNumStart
	b _080AB58E
	.align 2, 0
_080AB584: .4byte 0x0000029F
_080AB588:
	ldr r0, _080AB59C @ =0x000002A1
	bl m4aSongNumStart
_080AB58E:
	ldr r0, _080AB5A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB5A4 @ =sub_80AB770
	str r0, [r1, #8]
_080AB596:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB59C: .4byte 0x000002A1
_080AB5A0: .4byte gCurTask
_080AB5A4: .4byte sub_80AB770

	thumb_func_start sub_80AB5A8
sub_80AB5A8: @ 0x080AB5A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080AB640 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080AB5F6
	ldr r2, _080AB644 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB648 @ =gWinRegs
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AB64C @ =gBldRegs
	ldr r0, _080AB650 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r5, #2]
	strb r3, [r5, #1]
_080AB5F6:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB654 @ =0x0300002C
	adds r4, r6, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB64C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AB658
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	b _080AB760
	.align 2, 0
_080AB640: .4byte gCurTask
_080AB644: .4byte gDispCnt
_080AB648: .4byte gWinRegs
_080AB64C: .4byte gBldRegs
_080AB650: .4byte 0x00003FFF
_080AB654: .4byte 0x0300002C
_080AB658:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r5]
	cmp r0, #1
	bne _080AB6D0
	movs r6, #0
	movs r0, #0
	ldr r1, _080AB6BC @ =gLoadedSaveGame
	mov r8, r1
	mov r7, r8
	adds r7, #0x37
	movs r3, #4
	mov ip, r3
_080AB672:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB678:
	adds r0, r3, r4
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AB68C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080AB68C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB678
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB672
	mov r2, r8
	adds r2, #0x33
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_8001E58
	cmp r6, #0x1c
	bne _080AB6C0
	movs r0, #2
	bl sub_80AB120
	b _080AB758
	.align 2, 0
_080AB6BC: .4byte gLoadedSaveGame
_080AB6C0:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _080AB6CC @ =gCurTask
	ldr r1, [r0]
	b _080AB6EA
	.align 2, 0
_080AB6CC: .4byte gCurTask
_080AB6D0:
	cmp r0, #2
	bne _080AB6F8
	ldr r1, _080AB6F0 @ =gLoadedSaveGame
	adds r1, #0x33
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_8001E58
	movs r0, #0
	strh r0, [r5, #4]
	ldr r1, [r7]
_080AB6EA:
	ldr r0, _080AB6F4 @ =sub_80ABC20
	str r0, [r1, #8]
	b _080AB760
	.align 2, 0
_080AB6F0: .4byte gLoadedSaveGame
_080AB6F4: .4byte sub_80ABC20
_080AB6F8:
	cmp r0, #0
	bne _080AB750
	ldr r1, _080AB734 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AB738 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AB73C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AB740 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AB744 @ =gVramGraphicsCopyCursor
	ldr r0, _080AB748 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AB74C @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #4
	bl WarpToMap
	b _080AB760
	.align 2, 0
_080AB734: .4byte 0x0000FFFF
_080AB738: .4byte gBackgroundsCopyQueueCursor
_080AB73C: .4byte gBackgroundsCopyQueueIndex
_080AB740: .4byte gBgSpritesCount
_080AB744: .4byte gVramGraphicsCopyCursor
_080AB748: .4byte gVramGraphicsCopyQueueIndex
_080AB74C: .4byte gStageData
_080AB750:
	movs r0, #3
	movs r1, #1
	bl sub_808723C
_080AB758:
	ldr r0, _080AB76C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AB760:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB76C: .4byte gCurTask

	thumb_func_start sub_80AB770
sub_80AB770: @ 0x080AB770
	push {r4, r5, r6, lr}
	ldr r6, _080AB7C0 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB7C4 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AB7C8
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x77
	bgt _080AB7CC
	adds r0, r1, #1
	b _080AB7CE
	.align 2, 0
_080AB7C0: .4byte gCurTask
_080AB7C4: .4byte 0x0300002C
_080AB7C8:
	cmp r0, #3
	bne _080AB7F4
_080AB7CC:
	movs r0, #0x78
_080AB7CE:
	strh r0, [r5, #4]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x77
	ble _080AB80A
	ldr r0, _080AB7EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB80A
	ldr r0, _080AB7F0 @ =gCurTask
	ldr r1, [r0]
	b _080AB806
	.align 2, 0
_080AB7EC: .4byte gPressedKeys
_080AB7F0: .4byte gCurTask
_080AB7F4:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080AB80A
	ldr r1, [r6]
_080AB806:
	ldr r0, _080AB810 @ =sub_80AB5A8
	str r0, [r1, #8]
_080AB80A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB810: .4byte sub_80AB5A8

	thumb_func_start sub_80AB814
sub_80AB814: @ 0x080AB814
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB818
sub_80AB818: @ 0x080AB818
	push {r4, r5, lr}
	ldr r5, _080AB844 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80AB88C
	adds r0, r4, #0
	bl sub_80A9CA0
	cmp r0, #1
	bne _080AB83C
	ldr r1, [r5]
	ldr r0, _080AB848 @ =sub_80AB84C
	str r0, [r1, #8]
_080AB83C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB844: .4byte gCurTask
_080AB848: .4byte sub_80AB84C

	thumb_func_start sub_80AB84C
sub_80AB84C: @ 0x080AB84C
	push {r4, r5, lr}
	ldr r5, _080AB884 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A9D78
	adds r0, r4, #0
	bl sub_80AB88C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _080AB87C
	ldr r0, _080AB888 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AB87C
	ldr r0, [r5]
	bl TaskDestroy
_080AB87C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB884: .4byte gCurTask
_080AB888: .4byte gBldRegs

	thumb_func_start sub_80AB88C
sub_80AB88C: @ 0x080AB88C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x18
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB8B0
sub_80AB8B0: @ 0x080AB8B0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r2, _080AB8D4 @ =0x00001DFF
	cmp r0, r2
	bgt _080AB8C8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	ble _080AB8D8
_080AB8C8:
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	movs r0, #1
	b _080AB8F2
	.align 2, 0
_080AB8D4: .4byte 0x00001DFF
_080AB8D8:
	ldr r0, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _080AB8EA
	subs r0, #0x40
	str r0, [r1, #0x14]
	cmp r0, r2
	bgt _080AB8F0
_080AB8EA:
	str r2, [r1, #0x14]
	movs r0, #1
	b _080AB8F2
_080AB8F0:
	movs r0, #0
_080AB8F2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AB8F8
sub_80AB8F8: @ 0x080AB8F8
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB8FC
sub_80AB8FC: @ 0x080AB8FC
	push {r4, r5, lr}
	ldr r5, _080AB920 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AA1BC
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080AB924
	adds r0, r4, #0
	bl sub_80AB93C
	b _080AB934
	.align 2, 0
_080AB920: .4byte gCurTask
_080AB924:
	adds r0, r4, #0
	bl sub_80AB960
	cmp r0, #1
	bne _080AB934
	ldr r0, [r5]
	bl TaskDestroy
_080AB934:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB93C
sub_80AB93C: @ 0x080AB93C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _080AB952
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #8]
	cmp r0, #0
	ble _080AB95A
_080AB952:
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #1
	b _080AB95C
_080AB95A:
	movs r0, #0
_080AB95C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AB960
sub_80AB960: @ 0x080AB960
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldr r2, _080AB97C @ =0xFFFF2E00
	cmp r0, r2
	ble _080AB976
	ldr r3, _080AB980 @ =0xFFFFFB00
	adds r0, r0, r3
	str r0, [r1, #8]
	cmp r0, r2
	bge _080AB984
_080AB976:
	str r2, [r1, #8]
	movs r0, #1
	b _080AB986
	.align 2, 0
_080AB97C: .4byte 0xFFFF2E00
_080AB980: .4byte 0xFFFFFB00
_080AB984:
	movs r0, #0
_080AB986:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AB98C
sub_80AB98C: @ 0x080AB98C
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB990
sub_80AB990: @ 0x080AB990
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB994
sub_80AB994: @ 0x080AB994
	push {lr}
	ldr r0, _080AB9C0 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	adds r0, #1
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080AB9BA
	movs r0, #0
	strh r0, [r2, #8]
	ldr r0, _080AB9C4 @ =sub_80AA410
	str r0, [r3, #8]
_080AB9BA:
	pop {r0}
	bx r0
	.align 2, 0
_080AB9C0: .4byte gCurTask
_080AB9C4: .4byte sub_80AA410

	thumb_func_start sub_80AB9C8
sub_80AB9C8: @ 0x080AB9C8
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB9CC
sub_80AB9CC: @ 0x080AB9CC
	push {r4, lr}
	ldr r4, _080AB9EC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80AA62C
	ldr r1, [r4]
	ldr r0, _080AB9F0 @ =sub_80AA6A0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB9EC: .4byte gCurTask
_080AB9F0: .4byte sub_80AA6A0

	thumb_func_start sub_80AB9F4
sub_80AB9F4: @ 0x080AB9F4
	push {lr}
	ldr r0, _080ABA18 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #2
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABA14
	ldr r0, _080ABA1C @ =sub_80AA76C
	str r0, [r2, #8]
_080ABA14:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA18: .4byte gCurTask
_080ABA1C: .4byte sub_80AA76C

	thumb_func_start sub_80ABA20
sub_80ABA20: @ 0x080ABA20
	push {lr}
	ldr r0, _080ABA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABA5E
	ldr r1, _080ABA68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABA6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABA70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABA74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABA78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABA7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABA5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA64: .4byte gCurTask
_080ABA68: .4byte 0x0000FFFF
_080ABA6C: .4byte gBackgroundsCopyQueueCursor
_080ABA70: .4byte gBackgroundsCopyQueueIndex
_080ABA74: .4byte gBgSpritesCount
_080ABA78: .4byte gVramGraphicsCopyCursor
_080ABA7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABA80
sub_80ABA80: @ 0x080ABA80
	push {lr}
	ldr r0, _080ABA90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080ABA90: .4byte gCurTask

	thumb_func_start sub_80ABA94
sub_80ABA94: @ 0x080ABA94
	push {lr}
	ldr r0, _080ABAD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABAD2
	ldr r1, _080ABADC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABAE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABAE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABAE8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABAEC @ =gVramGraphicsCopyCursor
	ldr r0, _080ABAF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABAD2:
	pop {r0}
	bx r0
	.align 2, 0
_080ABAD8: .4byte gCurTask
_080ABADC: .4byte 0x0000FFFF
_080ABAE0: .4byte gBackgroundsCopyQueueCursor
_080ABAE4: .4byte gBackgroundsCopyQueueIndex
_080ABAE8: .4byte gBgSpritesCount
_080ABAEC: .4byte gVramGraphicsCopyCursor
_080ABAF0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABAF4
sub_80ABAF4: @ 0x080ABAF4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ABAF8
sub_80ABAF8: @ 0x080ABAF8
	push {r4, r5, lr}
	ldr r5, _080ABB30 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABB2A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080ABB34 @ =sub_80AAF50
	str r0, [r1, #8]
_080ABB2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ABB30: .4byte gCurTask
_080ABB34: .4byte sub_80AAF50

	thumb_func_start sub_80ABB38
sub_80ABB38: @ 0x080ABB38
	push {lr}
	ldr r0, _080ABB7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABB76
	ldr r1, _080ABB80 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABB84 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABB88 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABB8C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABB90 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABB94 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABB76:
	pop {r0}
	bx r0
	.align 2, 0
_080ABB7C: .4byte gCurTask
_080ABB80: .4byte 0x0000FFFF
_080ABB84: .4byte gBackgroundsCopyQueueCursor
_080ABB88: .4byte gBackgroundsCopyQueueIndex
_080ABB8C: .4byte gBgSpritesCount
_080ABB90: .4byte gVramGraphicsCopyCursor
_080ABB94: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABB98
sub_80ABB98: @ 0x080ABB98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080ABB9E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080ABB9E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABBC8
sub_80ABBC8: @ 0x080ABBC8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bge _080ABBE6
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x18]
	cmp r0, #0
	blt _080ABBE6
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	b _080ABBE8
_080ABBE6:
	movs r0, #0
_080ABBE8:
	pop {r1}
	bx r1

	thumb_func_start sub_80ABBEC
sub_80ABBEC: @ 0x080ABBEC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r0, _080ABC10 @ =0x00006FFF
	cmp r1, r0
	ble _080ABC14
	subs r1, #0x80
	ldrb r0, [r2, #1]
	lsls r0, r0, #7
	subs r1, r1, r0
	str r1, [r2, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080ABC14
	str r0, [r2, #0x20]
	movs r0, #1
	b _080ABC16
	.align 2, 0
_080ABC10: .4byte 0x00006FFF
_080ABC14:
	movs r0, #0
_080ABC16:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ABC1C
sub_80ABC1C: @ 0x080ABC1C
	bx lr
	.align 2, 0

	thumb_func_start sub_80ABC20
sub_80ABC20: @ 0x080ABC20
	push {lr}
	ldr r0, _080ABC64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABC5E
	ldr r1, _080ABC68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABC6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABC70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABC74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABC78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABC7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABC5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABC64: .4byte gCurTask
_080ABC68: .4byte 0x0000FFFF
_080ABC6C: .4byte gBackgroundsCopyQueueCursor
_080ABC70: .4byte gBackgroundsCopyQueueIndex
_080ABC74: .4byte gBgSpritesCount
_080ABC78: .4byte gVramGraphicsCopyCursor
_080ABC7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABC80
sub_80ABC80: @ 0x080ABC80
	push {r4, lr}
	movs r3, #0
	ldr r1, [r0, #0x24]
	adds r1, #0x90
	str r1, [r0, #0x24]
	ldr r2, _080ABCC8 @ =gSineTable
	asrs r1, r1, #8
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _080ABCCC @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080ABCD0 @ =gHBlankCopyTarget
	ldr r0, _080ABCD4 @ =0x0400001A
	str r0, [r1]
	ldr r1, _080ABCD8 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080ABCDC @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
_080ABCBE:
	cmp r3, #0x63
	bls _080ABCE0
	strh r4, [r1]
	b _080ABCE2
	.align 2, 0
_080ABCC8: .4byte gSineTable
_080ABCCC: .4byte gFlags
_080ABCD0: .4byte gHBlankCopyTarget
_080ABCD4: .4byte 0x0400001A
_080ABCD8: .4byte gHBlankCopySize
_080ABCDC: .4byte gBgOffsetsHBlankPrimary
_080ABCE0:
	strh r2, [r1]
_080ABCE2:
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9f
	bls _080ABCBE
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABCF4
sub_80ABCF4: @ 0x080ABCF4
	ldr r2, [r0, #0x18]
	adds r2, #0xc0
	str r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	subs r1, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, _080ABD0C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0, #4]
	asrs r1, r1, #8
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_080ABD0C: .4byte gBgScrollRegs

	thumb_func_start sub_80ABD10
sub_80ABD10: @ 0x080ABD10
	ldr r1, [r0, #0x20]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x20]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r0, #8]
	ldr r3, _080ABD40 @ =gSineTable
	asrs r1, r1, #8
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #3
	movs r2, #0xf4
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080ABD40: .4byte gSineTable

	thumb_func_start sub_80ABD44
sub_80ABD44: @ 0x080ABD44
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ABD98 @ =sub_80ABE28
	ldr r1, _080ABD9C @ =0x0000062C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ABDA0 @ =sub_80AC9E4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0, #1]
	movs r3, #0
	strh r2, [r0, #4]
	ldr r1, _080ABDA4 @ =0x06010000
	str r1, [r0, #0x10]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	strb r3, [r0, #2]
	strb r4, [r0]
	ldr r3, _080ABDA8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDB0
	ldr r0, _080ABDAC @ =gUnknown_080DB824
	movs r1, #0x70
	movs r2, #0x10
	bl CopyPalette
	b _080ABDC6
	.align 2, 0
_080ABD98: .4byte sub_80ABE28
_080ABD9C: .4byte 0x0000062C
_080ABDA0: .4byte sub_80AC9E4
_080ABDA4: .4byte 0x06010000
_080ABDA8: .4byte gFlags
_080ABDAC: .4byte gUnknown_080DB824
_080ABDB0:
	ldr r1, _080ABDE0 @ =0x040000D4
	ldr r0, _080ABDE4 @ =gUnknown_080DB824
	str r0, [r1]
	ldr r0, _080ABDE8 @ =gObjPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _080ABDEC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABDC6:
	ldr r3, _080ABDF0 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDF8
	ldr r0, _080ABDF4 @ =gUnknown_080DB804
	movs r1, #0xe0
	movs r2, #0x10
	bl CopyPalette
	b _080ABE0E
	.align 2, 0
_080ABDE0: .4byte 0x040000D4
_080ABDE4: .4byte gUnknown_080DB824
_080ABDE8: .4byte gObjPalette + 0xE0
_080ABDEC: .4byte 0x80000010
_080ABDF0: .4byte gFlags
_080ABDF4: .4byte gUnknown_080DB804
_080ABDF8:
	ldr r1, _080ABE18 @ =0x040000D4
	ldr r0, _080ABE1C @ =gUnknown_080DB804
	str r0, [r1]
	ldr r0, _080ABE20 @ =gObjPalette + 0x1c0
	str r0, [r1, #4]
	ldr r0, _080ABE24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABE0E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ABE18: .4byte 0x040000D4
_080ABE1C: .4byte gUnknown_080DB804
_080ABE20: .4byte gObjPalette + 0x1c0
_080ABE24: .4byte 0x80000010

	thumb_func_start sub_80ABE28
sub_80ABE28: @ 0x080ABE28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _080AC020 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrb r4, [r7, #1]
	adds r0, r4, #0
	adds r0, #0xa
	cmp r4, r0
	bge _080ABEA4
	ldr r6, _080AC024 @ =gUnknown_080DA420
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
_080ABE56:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	add r1, r8
	str r1, [r7, #0x10]
	ldrh r1, [r6]
	strh r1, [r0, #0xc]
	ldrb r2, [r6, #2]
	adds r1, r4, r2
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r7, #1]
	adds r0, #0xa
	cmp r4, r0
	blt _080ABE56
_080ABEA4:
	ldrb r0, [r7, #1]
	adds r0, #0xa
	movs r2, #0
	strb r0, [r7, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080ABEB6
	b _080AC010
_080ABEB6:
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x20
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r1, _080AC028 @ =0x00000462
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	movs r5, #0x80
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	subs r1, #7
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	subs r1, #9
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r7, #1]
	ldr r0, _080AC020 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC02C @ =sub_80AC030
	str r0, [r1, #8]
_080AC010:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC020: .4byte gCurTask
_080AC024: .4byte gUnknown_080DA420
_080AC028: .4byte 0x00000462
_080AC02C: .4byte sub_80AC030

	thumb_func_start sub_80AC030
sub_80AC030: @ 0x080AC030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r7, _080AC0B8 @ =gUnknown_080DB844
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080AC04C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _080AC0BC @ =0x0000058C
	adds r0, r0, r1
	adds r0, r4, r0
	ldr r1, [r4, #0x10]
	str r1, [r0]
	lsls r3, r5, #3
	adds r1, r7, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	adds r3, r3, r7
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AC04C
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC0C0 @ =sub_80AC0C4
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC0B4: .4byte gCurTask
_080AC0B8: .4byte gUnknown_080DB844
_080AC0BC: .4byte 0x0000058C
_080AC0C0: .4byte sub_80AC0C4

	thumb_func_start sub_80AC0C4
sub_80AC0C4: @ 0x080AC0C4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080AC0F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC0F8
	ldr r0, _080AC0F4 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC104
	b _080AC15C
	.align 2, 0
_080AC0F0: .4byte gCurTask
_080AC0F4: .4byte gLoadedSaveGame
_080AC0F8:
	ldr r0, _080AC13C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
_080AC104:
	ldr r0, _080AC140 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
	ldr r1, _080AC144 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC148 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC14C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC150 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC154 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC158 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC1D8
	.align 2, 0
_080AC13C: .4byte gLoadedSaveGame
_080AC140: .4byte gInput
_080AC144: .4byte 0x0000FFFF
_080AC148: .4byte gBackgroundsCopyQueueCursor
_080AC14C: .4byte gBackgroundsCopyQueueIndex
_080AC150: .4byte gBgSpritesCount
_080AC154: .4byte gVramGraphicsCopyCursor
_080AC158: .4byte gVramGraphicsCopyQueueIndex
_080AC15C:
	ldr r1, [r4, #0xc]
	adds r1, #0x80
	str r1, [r4, #0xc]
	lsrs r1, r1, #8
	subs r1, #0xa
	ldr r2, _080AC1A8 @ =strCredits_CreatedBy
	ldrb r5, [r4, #1]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x24
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _080AC1D8
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AC1B0
	ldrb r1, [r4, #2]
	ldr r0, _080AC1AC @ =0x0000058C
	adds r2, r4, r0
	adds r3, r4, #0
	adds r3, #8
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	bl sub_80ACA80
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	b _080AC1C2
	.align 2, 0
_080AC1A8: .4byte strCredits_CreatedBy
_080AC1AC: .4byte 0x0000058C
_080AC1B0:
	adds r1, r4, #0
	adds r1, #0x14
	adds r2, r4, #0
	adds r2, #8
	adds r3, r4, #0
	adds r3, #0xc
	adds r0, r5, #0
	bl sub_80AC9E8
_080AC1C2:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _080AC1D8
	ldr r0, _080AC1E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC1E4 @ =sub_80AC1E8
	str r0, [r1, #8]
_080AC1D8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC1E0: .4byte gCurTask
_080AC1E4: .4byte sub_80AC1E8

	thumb_func_start sub_80AC1E8
sub_80AC1E8: @ 0x080AC1E8
	push {r4, lr}
	ldr r0, _080AC210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC218
	ldr r0, _080AC214 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC224
	b _080AC27C
	.align 2, 0
_080AC210: .4byte gCurTask
_080AC214: .4byte gLoadedSaveGame
_080AC218:
	ldr r0, _080AC25C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
_080AC224:
	ldr r0, _080AC260 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
	ldr r1, _080AC264 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC268 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC26C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC270 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC274 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC278 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC2A0
	.align 2, 0
_080AC25C: .4byte gLoadedSaveGame
_080AC260: .4byte gInput
_080AC264: .4byte 0x0000FFFF
_080AC268: .4byte gBackgroundsCopyQueueCursor
_080AC26C: .4byte gBackgroundsCopyQueueIndex
_080AC270: .4byte gBgSpritesCount
_080AC274: .4byte gVramGraphicsCopyCursor
_080AC278: .4byte gVramGraphicsCopyQueueIndex
_080AC27C:
	ldr r0, [r4, #0xc]
	adds r0, #0x80
	str r0, [r4, #0xc]
	lsrs r0, r0, #8
	ldr r1, _080AC2A8 @ =strCredits_CreatedBy
	ldr r2, _080AC2AC @ =0x000013D4
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x82
	cmp r0, r1
	blo _080AC2A0
	ldrb r0, [r4]
	bl sub_80ACAF0
	ldr r0, _080AC2B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC2A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC2A8: .4byte strCredits_CreatedBy
_080AC2AC: .4byte 0x000013D4
_080AC2B0: .4byte gCurTask

	thumb_func_start sub_80AC2B4
sub_80AC2B4: @ 0x080AC2B4
	push {r4, lr}
	movs r3, #0
	ldr r2, _080AC380 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080AC384 @ =gHBlankCopyTarget
	ldr r0, _080AC388 @ =0x04000052
	str r0, [r1]
	ldr r1, _080AC38C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080AC390 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r4, r0, #0
_080AC2DA:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bls _080AC2DA
	movs r2, #0x28
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r4, r0, #0
_080AC2F0:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x31
	bls _080AC2F0
	movs r2, #0x32
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC302:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x40
	bls _080AC302
	movs r2, #0x41
	movs r3, #0xf
_080AC320:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x68
	bls _080AC320
	movs r3, #0xe
	movs r2, #0x69
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC334:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x77
	bls _080AC334
	movs r2, #0x73
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r3, r0, #0
_080AC356:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x82
	bls _080AC356
	movs r2, #0x82
	movs r0, #0xff
	lsls r0, r0, #8
	adds r3, r0, #0
_080AC36C:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa0
	bls _080AC36C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC380: .4byte gFlags
_080AC384: .4byte gHBlankCopyTarget
_080AC388: .4byte 0x04000052
_080AC38C: .4byte gHBlankCopySize
_080AC390: .4byte gBgOffsetsHBlankPrimary
_080AC394: .4byte gUnknown_080DB930

	thumb_func_start sub_80AC398
sub_80AC398: @ 0x080AC398
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0x80
	mov sb, r0
	ldr r0, _080AC408 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r2, _080AC40C @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _080AC3C6
	b _080AC4F4
_080AC3C6:
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r4, r1
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, r1, #0
	mov r8, r0
	cmp r3, #0x30
	bne _080AC410
	adds r1, r4, #1
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x14
	adds r1, r0, r1
	lsls r2, r4, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r0, [r1]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r1]
	b _080AC4D6
	.align 2, 0
_080AC408: .4byte gCurTask
_080AC40C: .4byte strCredits_CreatedBy
_080AC410:
	cmp r3, #0x2e
	bne _080AC418
	movs r1, #0x1e
	b _080AC440
_080AC418:
	cmp r3, #0x26
	bne _080AC420
	movs r1, #0x1f
	b _080AC440
_080AC420:
	cmp r3, #0x28
	bne _080AC428
	movs r1, #0x20
	b _080AC440
_080AC428:
	cmp r3, #0x29
	bne _080AC430
	movs r1, #0x21
	b _080AC440
_080AC430:
	cmp r3, #0x2d
	bne _080AC438
	movs r1, #0x22
	b _080AC440
_080AC438:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080AC440:
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r5, r0, r1
	ldr r1, [r6, #0xc]
	movs r0, #0
	mov ip, r0
	strh r1, [r5, #0x10]
	mov r2, r8
	asrs r4, r2, #0x18
	adds r3, r6, #0
	adds r3, #0x14
	cmp r4, #0
	beq _080AC474
	lsls r0, r4, #3
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x10]
_080AC474:
	adds r2, r4, #1
	lsls r2, r2, #3
	adds r2, r3, r2
	lsls r4, r4, #3
	adds r3, r3, r4
	ldr r0, _080AC4BC @ =gUnknown_080DB868
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r4
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x12]
	ldr r0, [r1]
	mov r3, sb
	subs r0, r0, r3
	str r0, [r1]
	ldr r2, _080AC4C0 @ =strCredits_CreatedBy
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AC4C4
	movs r0, #8
	b _080AC4CE
	.align 2, 0
_080AC4BC: .4byte gUnknown_080DB868
_080AC4C0: .4byte strCredits_CreatedBy
_080AC4C4:
	cmp r0, #3
	bne _080AC4CC
	mov r0, ip
	b _080AC4CE
_080AC4CC:
	movs r0, #1
_080AC4CE:
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl DisplaySprite
_080AC4D6:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, r8
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _080AC510 @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bge _080AC4F4
	b _080AC3C6
_080AC4F4:
	ldr r1, [r6, #0x18]
	ldr r0, _080AC514 @ =0x00002CFF
	cmp r1, r0
	bgt _080AC504
	ldr r0, _080AC518 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC504:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC510: .4byte strCredits_CreatedBy
_080AC514: .4byte 0x00002CFF
_080AC518: .4byte gCurTask

	thumb_func_start sub_80AC51C
sub_80AC51C: @ 0x080AC51C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080AC5B4 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldrb r0, [r5, #1]
	adds r1, r0, #0
	cmp r1, #0xe
	bhi _080AC5C0
	adds r0, #5
	strb r0, [r5, #1]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	bhs _080AC606
	ldr r7, _080AC5B8 @ =gUnknown_080DB950
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r1, _080AC5BC @ =gUnknown_080DB958
	mov r8, r1
	movs r2, #1
	add r2, r8
	mov sb, r2
_080AC55A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	adds r1, #0x80
	str r1, [r5, #8]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	ldrb r3, [r7, #2]
	adds r1, r4, r3
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #1
	mov r3, r8
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	add r2, sb
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r2, [r5, #1]
	cmp r4, r2
	blo _080AC55A
	b _080AC606
	.align 2, 0
_080AC5B4: .4byte gCurTask
_080AC5B8: .4byte gUnknown_080DB950
_080AC5BC: .4byte gUnknown_080DB958
_080AC5C0:
	ldr r3, _080AC614 @ =0x03000014
	adds r0, r2, r3
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r5, #8]
	movs r4, #0
	movs r2, #0
	ldr r1, _080AC618 @ =0x000005F1
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r5, #1]
	ldr r1, [r6]
	ldr r0, _080AC61C @ =sub_80AC620
	str r0, [r1, #8]
_080AC606:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC614: .4byte 0x03000014
_080AC618: .4byte 0x000005F1
_080AC61C: .4byte sub_80AC620

	thumb_func_start sub_80AC620
sub_80AC620: @ 0x080AC620
	push {r4, lr}
	ldr r0, _080AC648 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBD4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC650
	ldr r0, _080AC64C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC65C
	b _080AC6B4
	.align 2, 0
_080AC648: .4byte gCurTask
_080AC64C: .4byte gLoadedSaveGame
_080AC650:
	ldr r0, _080AC694 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
_080AC65C:
	ldr r0, _080AC698 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
	ldr r1, _080AC69C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC6A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC6A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC6A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC6AC @ =gVramGraphicsCopyCursor
	ldr r0, _080AC6B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC6CE
	.align 2, 0
_080AC694: .4byte gLoadedSaveGame
_080AC698: .4byte gInput
_080AC69C: .4byte 0x0000FFFF
_080AC6A0: .4byte gBackgroundsCopyQueueCursor
_080AC6A4: .4byte gBackgroundsCopyQueueIndex
_080AC6A8: .4byte gBgSpritesCount
_080AC6AC: .4byte gVramGraphicsCopyCursor
_080AC6B0: .4byte gVramGraphicsCopyQueueIndex
_080AC6B4:
	adds r0, r4, #0
	bl sub_80ACBA8
	cmp r0, #1
	bne _080AC6CE
	movs r0, #0x80
	lsls r0, r0, #2     @ VOICE__ANNOUNCER__CONGRATULATIONS
	bl m4aSongNumStart
	ldr r0, _080AC6D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC6D8 @ =sub_80AC6DC
	str r0, [r1, #8]
_080AC6CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC6D4: .4byte gCurTask
_080AC6D8: .4byte sub_80AC6DC

	thumb_func_start sub_80AC6DC
sub_80AC6DC: @ 0x080AC6DC
	push {r4, lr}
	ldr r0, _080AC724 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC70A
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC70A
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC70A:
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC72C
	ldr r0, _080AC728 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC738
	b _080AC790
	.align 2, 0
_080AC724: .4byte gCurTask
_080AC728: .4byte gLoadedSaveGame
_080AC72C:
	ldr r0, _080AC770 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC790
_080AC738:
	ldr r0, _080AC774 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC790
	ldr r1, _080AC778 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC77C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC780 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC784 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC788 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC78C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC7C2
	.align 2, 0
_080AC770: .4byte gLoadedSaveGame
_080AC774: .4byte gInput
_080AC778: .4byte 0x0000FFFF
_080AC77C: .4byte gBackgroundsCopyQueueCursor
_080AC780: .4byte gBackgroundsCopyQueueIndex
_080AC784: .4byte gBgSpritesCount
_080AC788: .4byte gVramGraphicsCopyCursor
_080AC78C: .4byte gVramGraphicsCopyQueueIndex
_080AC790:
	ldrb r1, [r4, #1]
	cmp r1, #0x12
	bhi _080AC7BA
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bne _080AC7C2
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r1, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080AC7C2
	movs r0, #0x13
	strb r0, [r4, #1]
	b _080AC7C2
_080AC7BA:
	ldr r0, _080AC7C8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC7CC @ =sub_80AC7D0
	str r0, [r1, #8]
_080AC7C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC7C8: .4byte gCurTask
_080AC7CC: .4byte sub_80AC7D0

	thumb_func_start sub_80AC7D0
sub_80AC7D0: @ 0x080AC7D0
	push {r4, lr}
	ldr r0, _080AC7F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC800
	ldr r0, _080AC7FC @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC80C
	b _080AC864
	.align 2, 0
_080AC7F8: .4byte gCurTask
_080AC7FC: .4byte gLoadedSaveGame
_080AC800:
	ldr r0, _080AC844 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC864
_080AC80C:
	ldr r0, _080AC848 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC864
	ldr r1, _080AC84C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC850 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC854 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC858 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC85C @ =gVramGraphicsCopyCursor
	ldr r0, _080AC860 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC8E8
	.align 2, 0
_080AC844: .4byte gLoadedSaveGame
_080AC848: .4byte gInput
_080AC84C: .4byte 0x0000FFFF
_080AC850: .4byte gBackgroundsCopyQueueCursor
_080AC854: .4byte gBackgroundsCopyQueueIndex
_080AC858: .4byte gBgSpritesCount
_080AC85C: .4byte gVramGraphicsCopyCursor
_080AC860: .4byte gVramGraphicsCopyQueueIndex
_080AC864:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _080AC8C8
	ldr r2, _080AC8B0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AC8B4 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AC8B8 @ =gBldRegs
	ldr r0, _080AC8BC @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _080AC8C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC8C4 @ =sub_80AC8F0
	str r0, [r1, #8]
	b _080AC8E8
	.align 2, 0
_080AC8B0: .4byte gDispCnt
_080AC8B4: .4byte gWinRegs
_080AC8B8: .4byte gBldRegs
_080AC8BC: .4byte 0x00003FFF
_080AC8C0: .4byte gCurTask
_080AC8C4: .4byte sub_80AC8F0
_080AC8C8:
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC8E8
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC8E8
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC8E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AC8F0
sub_80AC8F0: @ 0x080AC8F0
	push {r4, lr}
	ldr r0, _080AC914 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC91C
	ldr r0, _080AC918 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC928
	b _080AC980
	.align 2, 0
_080AC914: .4byte gCurTask
_080AC918: .4byte gLoadedSaveGame
_080AC91C:
	ldr r0, _080AC960 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC980
_080AC928:
	ldr r0, _080AC964 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC980
	ldr r1, _080AC968 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC96C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC970 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC974 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC978 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC97C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC9DC
	.align 2, 0
_080AC960: .4byte gLoadedSaveGame
_080AC964: .4byte gInput
_080AC968: .4byte 0x0000FFFF
_080AC96C: .4byte gBackgroundsCopyQueueCursor
_080AC970: .4byte gBackgroundsCopyQueueIndex
_080AC974: .4byte gBgSpritesCount
_080AC978: .4byte gVramGraphicsCopyCursor
_080AC97C: .4byte gVramGraphicsCopyQueueIndex
_080AC980:
	ldr r1, _080AC99C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bls _080AC9A4
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r4]
	bl sub_80AA554
	ldr r0, _080AC9A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AC9DC
	.align 2, 0
_080AC99C: .4byte gBldRegs
_080AC9A0: .4byte gCurTask
_080AC9A4:
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC9D6
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC9D6
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC9D6:
	adds r0, r4, #0
	bl sub_80ACBF0
_080AC9DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AC9E4
sub_80AC9E4: @ 0x080AC9E4
	bx lr
	.align 2, 0

	thumb_func_start sub_80AC9E8
sub_80AC9E8: @ 0x080AC9E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACA6C @ =sub_80AC398
	movs r1, #0x98
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACA70 @ =sub_80ACB48
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _080ACA74 @ =0x0300012C
	adds r0, r3, r2
	str r5, [r0]
	movs r5, #0
	strb r4, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r4, _080ACA78 @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x22]
	str r0, [r1, #0xc]
	str r5, [r1, #0x10]
	movs r2, #0
	ldr r0, _080ACA7C @ =0x03000014
	adds r4, r3, r0
	movs r6, #0
	adds r0, #4
	adds r3, r3, r0
	movs r5, #0x82
	lsls r5, r5, #8
_080ACA4A:
	lsls r1, r2, #3
	adds r0, r4, r1
	str r6, [r0]
	adds r1, r3, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x22
	bls _080ACA4A
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ACA6C: .4byte sub_80AC398
_080ACA70: .4byte sub_80ACB48
_080ACA74: .4byte 0x0300012C
_080ACA78: .4byte strCredits_CreatedBy
_080ACA7C: .4byte 0x03000014

	thumb_func_start sub_80ACA80
sub_80ACA80: @ 0x080ACA80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r7, [sp, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACAE4 @ =sub_80ACB50
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ACAE8 @ =sub_80ACB4C
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strb r4, [r1, #1]
	strb r5, [r1]
	str r6, [r1, #4]
	str r7, [r1, #8]
	ldr r3, _080ACAEC @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #0x14]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE4: .4byte sub_80ACB50
_080ACAE8: .4byte sub_80ACB4C
_080ACAEC: .4byte strCredits_CreatedBy

	thumb_func_start sub_80ACAF0
sub_80ACAF0: @ 0x080ACAF0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACB3C @ =sub_80AC51C
	movs r1, #0xa5
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACB40 @ =sub_80ACBA4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	strb r2, [r0, #1]
	strh r2, [r0, #4]
	movs r1, #0x1e
	strb r1, [r0, #2]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #8
	str r1, [r0, #0x10]
	strh r2, [r0, #6]
	ldr r1, _080ACB44 @ =0x06010000
	str r1, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB3C: .4byte sub_80AC51C
_080ACB40: .4byte sub_80ACBA4
_080ACB44: .4byte 0x06010000

	thumb_func_start sub_80ACB48
sub_80ACB48: @ 0x080ACB48
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACB4C
sub_80ACB4C: @ 0x080ACB4C
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACB50
sub_80ACB50: @ 0x080ACB50
	push {r4, r5, lr}
	ldr r5, _080ACB98 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _080ACB9C @ =gUnknown_080DB864
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	ldr r1, _080ACBA0 @ =0x00001DFF
	cmp r0, r1
	bgt _080ACB92
	ldr r0, [r5]
	bl TaskDestroy
_080ACB92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB98: .4byte gCurTask
_080ACB9C: .4byte gUnknown_080DB864
_080ACBA0: .4byte 0x00001DFF
    
	thumb_func_start sub_80ACBA4
sub_80ACBA4: @ 0x080ACBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACBA8
sub_80ACBA8: @ 0x080ACBA8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #5
	cmp r0, r2
	ble _080ACBC0
	ldr r3, _080ACBC8 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	bgt _080ACBCC
_080ACBC0:
	str r2, [r1, #0x10]
	movs r0, #1
	b _080ACBCE
	.align 2, 0
_080ACBC8: .4byte 0xFFFFFE00
_080ACBCC:
	movs r0, #0
_080ACBCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ACBD4
sub_80ACBD4: @ 0x080ACBD4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80ACBF0
sub_80ACBF0: @ 0x080ACBF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080ACC32
	ldr r6, _080ACC38 @ =gUnknown_080DB958
	adds r7, r6, #1
_080ACC00:
	ldr r0, _080ACC3C @ =gUnknown_080DB97E
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	lsls r2, r4, #1
	adds r1, r2, r6
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080ACC00
_080ACC32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACC38: .4byte gUnknown_080DB958
_080ACC3C: .4byte gUnknown_080DB97E

	thumb_func_start sub_80ACC40
sub_80ACC40: @ 0x080ACC40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r7, #0
	ldr r0, _080ACCF4 @ =sub_80AE248
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ACCF8 @ =sub_80AE224
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0
	mov sb, r0
	strb r7, [r4, #0x1b]
	movs r1, #0
	mov r8, r1
	strh r7, [r4, #0x1c]
	mov r0, r8
	strb r0, [r4, #0x10]
	strh r7, [r4, #0x1e]
	str r7, [r4, #0x14]
	strb r6, [r4, #0x18]
	strb r0, [r4, #0x1a]
	movs r0, #1
	str r0, [r4]
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0x19]
	ldr r1, _080ACCFC @ =0xFFFF2E00
	str r1, [r4, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	movs r0, #0x98
	lsls r0, r0, #7
	str r0, [r4, #0x2c]
	ldr r7, _080ACD00 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	ldr r1, _080ACD04 @ =0x030000B4
	adds r5, r5, r1
	str r0, [r5]
	mov r1, r8
	strb r1, [r0, #6]
	ldr r0, [r5]
	mov r1, sb
	str r1, [r0]
	ldr r1, [r5]
	ldr r0, _080ACD08 @ =0x06012000
	str r0, [r1, #0x28]
	mov r0, sb
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	ldr r2, _080ACD0C @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r5]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	adds r0, r4, #0
	bl sub_80ACD10
	bl m4aMPlayAllStop
	movs r0, #0x3b      @ MUS_DEMO
	bl m4aSongNumStart
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACCF4: .4byte sub_80AE248
_080ACCF8: .4byte sub_80AE224
_080ACCFC: .4byte 0xFFFF2E00
_080ACD00: .4byte 0x00000CAC
_080ACD04: .4byte 0x030000B4
_080ACD08: .4byte 0x06012000
_080ACD0C: .4byte 0x010003C0

	thumb_func_start sub_80ACD10
sub_80ACD10: @ 0x080ACD10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x36
	bl VramMalloc
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0x5c
	str r6, [r7, #0x5c]
	ldr r4, _080ACDB4 @ =gUnknown_080DBA94
	ldr r1, [r4, #0xc]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r4, #8]
	movs r2, #0
	mov sl, r2
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	str r6, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r2, sb
	strh r2, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACDB4: .4byte gUnknown_080DBA94

	thumb_func_start sub_80ACDB8
sub_80ACDB8: @ 0x080ACDB8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080ACDE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	adds r0, r5, #0
	bl sub_80AD030
	adds r0, r5, #0
	bl sub_80AE2C4
	cmp r0, #0
	bne _080ACDE4
	adds r0, r5, #0
	bl sub_80AE2E8
	b _080ACE92
	.align 2, 0
_080ACDE0: .4byte gCurTask
_080ACDE4:
	ldr r2, _080ACE40 @ =gUnknown_080DBC93
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r4, [r5, #8]
	ldrb r6, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	cmp r4, #0
	bne _080ACE54
	ldr r3, [r5]
	cmp r3, #1
	bne _080ACE54
	ldr r1, _080ACE44 @ =gUnknown_080DBC78
	lsls r0, r2, #3
	adds r0, r0, r2
	adds r0, r6, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACE4C
	cmp r1, #0xfe
	beq _080ACE4E
	strb r0, [r5, #0x19]
	ldr r0, _080ACE48 @ =0x030000B4
	adds r2, r7, r0
	ldr r1, [r2]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r0, [r2]
	ldrb r1, [r5, #0x19]
	ldr r2, [r0, #0x28]
	str r2, [sp]
	movs r2, #0x48
	movs r3, #0x28
	bl sub_80AD7B4
	str r4, [r5]
	str r4, [r5, #8]
	b _080ACE4E
	.align 2, 0
_080ACE40: .4byte gUnknown_080DBC93
_080ACE44: .4byte gUnknown_080DBC78
_080ACE48: .4byte 0x030000B4
_080ACE4C:
	str r3, [r5, #8]
_080ACE4E:
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
_080ACE54:
	ldr r0, [r5]
	cmp r0, #0
	bne _080ACE6C
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r4]
	bl sub_80239A8
_080ACE6C:
	ldr r4, [r5]
	cmp r4, #1
	bne _080ACE92
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080ACE84
	adds r0, r1, #0
	bl sub_80239A8
_080ACE84:
	movs r0, #0
	strh r0, [r5, #0x1e]
	str r4, [r5, #8]
	ldr r0, _080ACE9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ACEA0 @ =sub_80ACEA4
	str r0, [r1, #8]
_080ACE92:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACE9C: .4byte gCurTask
_080ACEA0: .4byte sub_80ACEA4

	thumb_func_start sub_80ACEA4
sub_80ACEA4: @ 0x080ACEA4
	push {r4, r5, lr}
	ldr r0, _080ACEE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_80AD030
	ldr r2, _080ACEE4 @ =gUnknown_080DBC78
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xfe
	beq _080ACEEC
	ldr r1, _080ACEE8 @ =0x030000B4
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80239A8
	b _080ACEF6
	.align 2, 0
_080ACEE0: .4byte gCurTask
_080ACEE4: .4byte gUnknown_080DBC78
_080ACEE8: .4byte 0x030000B4
_080ACEEC:
	ldr r1, _080ACF20 @ =0x030000B4
	adds r0, r5, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #6]
_080ACEF6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080ACF38
	movs r3, #1
	str r3, [r4]
	ldr r2, _080ACF24 @ =gUnknown_080DBC78
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080ACF30
	str r3, [r4, #8]
	ldr r0, _080ACF28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ACF2C @ =sub_80ACF48
	b _080ACF36
	.align 2, 0
_080ACF20: .4byte 0x030000B4
_080ACF24: .4byte gUnknown_080DBC78
_080ACF28: .4byte gCurTask
_080ACF2C: .4byte sub_80ACF48
_080ACF30:
	ldr r0, _080ACF40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ACF44 @ =sub_80ACDB8
_080ACF36:
	str r0, [r1, #8]
_080ACF38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACF40: .4byte gCurTask
_080ACF44: .4byte sub_80ACDB8

	thumb_func_start sub_80ACF48
sub_80ACF48: @ 0x080ACF48
	push {r4, r5, r6, lr}
	ldr r0, _080ACFC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r0, #1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80AD030
	ldr r0, _080ACFCC @ =0x030000B4
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_80239A8
	ldr r0, _080ACFD0 @ =gStageData
	ldrb r4, [r0, #6]
	cmp r4, #0
	bne _080AD010
	ldrb r0, [r5, #0x1b]
	ldr r6, _080ACFD4 @ =gBldRegs
	cmp r0, #0
	beq _080ACFAC
	ldr r2, _080ACFD8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080ACFDC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080ACFE0 @ =0x00003FFF
	strh r0, [r6]
	strh r4, [r5, #0x1c]
	strb r3, [r5, #0x1b]
_080ACFAC:
	ldrh r0, [r6, #4]
	cmp r0, #0xf
	bhi _080ACFE4
	ldrh r0, [r5, #0x1c]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #0x1c]
	adds r0, r0, r3
	strh r0, [r5, #0x1c]
	b _080AD010
	.align 2, 0
_080ACFC8: .4byte gCurTask
_080ACFCC: .4byte 0x030000B4
_080ACFD0: .4byte gStageData
_080ACFD4: .4byte gBldRegs
_080ACFD8: .4byte gDispCnt
_080ACFDC: .4byte gWinRegs
_080ACFE0: .4byte 0x00003FFF
_080ACFE4:
	movs r4, #0
	movs r0, #0x10
	strh r0, [r6, #4]
	bl sub_8003D2C
	ldr r1, _080AD018 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AD01C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AD020 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AD024 @ =gBgSpritesCount
	strb r4, [r0]
	ldr r1, _080AD028 @ =gVramGraphicsCopyCursor
	ldr r0, _080AD02C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r5, #0x18]
	bl sub_80AE95C
_080AD010:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AD018: .4byte 0x0000FFFF
_080AD01C: .4byte gBackgroundsCopyQueueCursor
_080AD020: .4byte gBackgroundsCopyQueueIndex
_080AD024: .4byte gBgSpritesCount
_080AD028: .4byte gVramGraphicsCopyCursor
_080AD02C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80AD030
sub_80AD030: @ 0x080AD030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x84
	movs r0, #0
	mov r8, r0
_080AD046:
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r1, r6, r1
	strh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r3, _080AD0AC @ =0xFFFFFBFF
	ands r0, r3
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp]
	cmp r7, #2
	bls _080AD046
	adds r0, r5, #0
	adds r0, #0x5c
	ldr r2, [r5, #0x20]
	asrs r2, r2, #8
	movs r4, #0
	strh r2, [r0, #0x10]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r2, r6, r2
	strh r2, [r0, #0x10]
	ldr r1, [r0, #8]
	ands r1, r3
	str r1, [r0, #8]
	strb r4, [r0, #0x1f]
	bl DisplaySprite
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD0AC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80AD0B0
sub_80AD0B0: @ 0x080AD0B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #0
	ldr r0, _080AD180 @ =sub_80AE3E8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AD184 @ =sub_80AE3D4
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	str r5, [r6]
	str r4, [r6, #4]
	adds r4, #4
	str r4, [r6, #8]
	str r7, [r6, #0xc]
	str r7, [r6, #0x10]
	movs r0, #0x49
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #1
	mov sl, r0
	movs r4, #0
	ldr r0, _080AD188 @ =gUnknown_080DBCAE
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _080AD16E
	ldr r0, _080AD18C @ =gUnknown_080DBAA4
	adds r0, #4
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r5, #0
_080AD10A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r6, r0
	str r7, [r0]
	mov r1, r8
	ldr r2, [r1]
	lsls r3, r4, #3
	adds r2, r3, r2
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r7, r7, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r2, r8
	ldr r1, [r2]
	adds r3, r3, r1
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #4]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #8]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080AD188 @ =gUnknown_080DBCAE
	add r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blo _080AD10A
_080AD16E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD180: .4byte sub_80AE3E8
_080AD184: .4byte sub_80AE3D4
_080AD188: .4byte gUnknown_080DBCAE
_080AD18C: .4byte gUnknown_080DBAA4

	thumb_func_start sub_80AD190
sub_80AD190: @ 0x080AD190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r1, [r5]
	ldrb r0, [r1]
	movs r3, #0
	cmp r0, #0xff
	beq _080AD1A6
	adds r3, r0, #0
_080AD1A6:
	ldr r7, [r5, #0x14]
	movs r6, #0
	ldr r0, _080AD22C @ =gUnknown_080DBCAE
	adds r0, r3, r0
	ldrb r2, [r0]
	cmp r6, r2
	bhs _080AD220
	ldr r1, _080AD230 @ =gUnknown_080DBAA4
	lsls r0, r3, #2
	adds r0, r0, r1
	mov r8, r0
	mov sb, r2
_080AD1BE:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, #0x14
	adds r4, r5, r4
	str r7, [r4]
	mov r0, r8
	ldr r1, [r0]
	lsls r2, r6, #3
	adds r1, r2, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	adds r7, r7, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	mov r1, r8
	ldr r0, [r1]
	adds r2, r2, r0
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	ldr r1, [r0]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #8]
	ldr r2, [r0]
	asrs r2, r2, #8
	strh r2, [r4, #0x12]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sb
	blo _080AD1BE
_080AD220:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD22C: .4byte gUnknown_080DBCAE
_080AD230: .4byte gUnknown_080DBAA4

	thumb_func_start sub_80AD234
sub_80AD234: @ 0x080AD234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	mov sb, r0
	ldr r0, _080AD3E8 @ =sub_80AE45C
	movs r1, #0x9a
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080AD3EC @ =sub_80AE448
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strb r4, [r7]
	str r6, [r7, #4]
	str r5, [r7, #0xc]
	adds r5, #4
	str r5, [r7, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #0x14]
	ldr r0, _080AD3F0 @ =0xFFFFD800
	str r0, [r7, #0x18]
	mov r1, sb
	strh r1, [r7, #8]
	ldrb r4, [r7]
	ldr r1, _080AD3F4 @ =gUnknown_080DB994
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl VramMalloc
	mov sb, r0
	ldr r0, _080AD3F8 @ =gUnknown_080DBCBB
	adds r0, r4, r0
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r6, #0
	ldr r0, _080AD3FC @ =gUnknown_08E2EF44
	lsls r4, r4, #2
	mov r8, r4
	add r0, r8
	ldr r0, [r0]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _080AD32A
	lsls r1, r1, #2
	mov sl, r1
_080AD2B2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r0, r7, r0
	mov r1, sb
	str r1, [r0]
	ldr r4, _080AD400 @ =gUnknown_08E2EF54
	mov r5, r8
	add r4, r8
	ldr r1, [r4]
	add r1, sl
	ldr r2, [r1]
	lsls r3, r6, #3
	adds r2, r3, r2
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	add sb, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r1, [r4]
	add r1, sl
	ldr r1, [r1]
	adds r3, r3, r1
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	movs r1, #0
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	movs r1, #0
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080AD3FC @ =gUnknown_08E2EF44
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080AD2B2
_080AD32A:
	ldrb r0, [r7]
	cmp r0, #1
	bne _080AD396
	movs r6, #0
	ldr r5, _080AD400 @ =gUnknown_08E2EF54
	movs r0, #0
	mov r8, r0
	movs r4, #0
_080AD33A:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0xbc
	adds r0, r7, r0
	mov r1, sb
	str r1, [r0]
	ldr r1, [r5, #0xc]
	ldr r2, [r1]
	lsls r3, r6, #3
	adds r2, r3, r2
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	add sb, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r1, [r5, #0xc]
	ldr r1, [r1]
	adds r3, r3, r1
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080AD33A
_080AD396:
	ldrb r4, [r7]
	cmp r4, #0
	bne _080AD3D8
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, sb
	str r1, [r0]
	ldr r2, _080AD404 @ =gUnknown_080DBA8C
	ldrh r1, [r2]
	movs r3, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
_080AD3D8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD3E8: .4byte sub_80AE45C
_080AD3EC: .4byte sub_80AE448
_080AD3F0: .4byte 0xFFFFD800
_080AD3F4: .4byte gUnknown_080DB994
_080AD3F8: .4byte gUnknown_080DBCBB
_080AD3FC: .4byte gUnknown_08E2EF44
_080AD400: .4byte gUnknown_08E2EF54
_080AD404: .4byte gUnknown_080DBA8C

	thumb_func_start sub_80AD408
sub_80AD408: @ 0x080AD408
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrb r1, [r6]
	ldr r0, [r6, #0x1c]
	mov sb, r0
	movs r0, #0
	mov r8, r0
	ldr r0, _080AD578 @ =gUnknown_08E2EF44
	lsls r7, r1, #2
	adds r0, r7, r0
	ldr r2, [r6, #4]
	ldrb r1, [r2]
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	bhs _080AD4CA
	movs r0, #0
	mov sl, r0
_080AD436:
	mov r0, r8
	lsls r4, r0, #2
	add r4, r8
	lsls r4, r4, #3
	adds r4, #0x1c
	adds r4, r6, r4
	mov r0, sb
	str r0, [r4]
	ldr r3, _080AD57C @ =gUnknown_08E2EF54
	adds r5, r7, #0
	adds r3, r7, r3
	ldrb r0, [r2]
	ldr r1, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r2, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	add sb, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #4]
	ldrb r0, [r0]
	ldr r1, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r2, r0
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x40
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #0x1f]
	mov r0, sl
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080AD578 @ =gUnknown_08E2EF44
	adds r5, r5, r0
	ldr r2, [r6, #4]
	ldrb r1, [r2]
	ldr r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	blo _080AD436
_080AD4CA:
	ldrb r0, [r6]
	cmp r0, #1
	bne _080AD568
	movs r0, #0
	mov r8, r0
	ldr r1, _080AD580 @ =gUnknown_080DBCB9
	ldr r2, [r6, #4]
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	bhs _080AD568
	movs r7, #0
	movs r5, #0
_080AD4E6:
	mov r0, r8
	lsls r4, r0, #2
	add r4, r8
	lsls r4, r4, #3
	adds r4, #0xbc
	adds r4, r6, r4
	mov r0, sb
	str r0, [r4]
	ldr r1, _080AD57C @ =gUnknown_08E2EF54
	ldrb r0, [r2]
	ldr r3, [r1, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r2, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	add sb, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #4]
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r2, r2, r0
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _080AD580 @ =gUnknown_080DBCB9
	ldr r2, [r6, #4]
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	blo _080AD4E6
_080AD568:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD578: .4byte gUnknown_08E2EF44
_080AD57C: .4byte gUnknown_08E2EF54
_080AD580: .4byte gUnknown_080DBCB9

	thumb_func_start sub_80AD584
sub_80AD584: @ 0x080AD584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x36
	bl VramMalloc
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _080AD630 @ =gUnknown_080DBA94
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #5
	adds r5, r5, r1
	ldrh r1, [r4, #0x18]
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #1
	mov sb, r1
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #0xb
	mov r8, r1
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	str r5, [r0]
	ldrh r1, [r4, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	mov r1, r8
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD630: .4byte gUnknown_080DBA94

	thumb_func_start sub_80AD634
sub_80AD634: @ 0x080AD634
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080AD65C @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_80AD72C
	adds r0, r5, #0
	bl sub_80AE63C
	cmp r0, #0
	bne _080AD660
	adds r0, r5, #0
	bl sub_80AE66C
	b _080AD71A
	.align 2, 0
_080AD65C: .4byte gCurTask
_080AD660:
	ldr r2, _080AD6B8 @ =gUnknown_080DBCD9
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r4, [r5, #0xc]
	ldr r0, [r4]
	ldrb r3, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	cmp r0, #1
	bne _080AD71A
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD6CC
	ldr r1, _080AD6BC @ =gUnknown_080DBCBE
	lsls r0, r2, #3
	adds r0, r0, r2
	adds r0, r3, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD6C4
	strb r0, [r5, #0x19]
	ldr r0, _080AD6C0 @ =0x030000B4
	adds r2, r6, r0
	ldr r1, [r2]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r0, [r2]
	ldrb r1, [r5, #0x19]
	ldr r2, [r0, #0x28]
	str r2, [sp]
	movs r2, #0x30
	movs r3, #0x6e
	bl sub_80AD7B4
	movs r0, #0
	str r0, [r5]
	b _080AD6C6
	.align 2, 0
_080AD6B8: .4byte gUnknown_080DBCD9
_080AD6BC: .4byte gUnknown_080DBCBE
_080AD6C0: .4byte 0x030000B4
_080AD6C4:
	str r1, [r4]
_080AD6C6:
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
_080AD6CC:
	ldr r0, [r5]
	cmp r0, #0
	bne _080AD6E4
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r4]
	bl sub_80239A8
_080AD6E4:
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD71A
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080AD6FC
	adds r0, r1, #0
	bl sub_80239A8
_080AD6FC:
	ldrb r0, [r5, #0x10]
	cmp r0, #5
	bne _080AD706
	movs r0, #0x78
	b _080AD708
_080AD706:
	movs r0, #0
_080AD708:
	strh r0, [r5, #0x1e]
	ldr r1, [r5, #0xc]
	movs r0, #0
	str r0, [r1]
	str r0, [r5]
	ldr r0, _080AD724 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AD728 @ =sub_80AE5C4
	str r0, [r1, #8]
_080AD71A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AD724: .4byte gCurTask
_080AD728: .4byte sub_80AE5C4

	thumb_func_start sub_80AD72C
sub_80AD72C: @ 0x080AD72C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r2, #0
	movs r7, #0
_080AD738:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r5, [r0]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r5, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r1
	strh r1, [r5, #0x10]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov r8, r1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	subs r4, #0x40
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080AD738
	adds r0, r6, #0
	adds r0, #0xac
	ldr r4, [r0]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AD7B4
sub_80AD7B4: @ 0x080AD7B4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	str r4, [r6]
	movs r1, #0
	movs r0, #8
	strh r0, [r6, #0xa]
	strh r2, [r6, #0x12]
	strh r3, [r6, #0x14]
	strb r2, [r6, #0xf]
	strb r3, [r6, #0x10]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xe]
	strb r1, [r6, #5]
	strb r1, [r6, #6]
	strh r4, [r6, #8]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0x1c]
	strh r4, [r6, #0x1a]
	strb r1, [r6, #0x1d]
	strb r1, [r6, #0x1e]
	str r5, [r6, #0x24]
	movs r0, #1
	strb r0, [r6, #0x1f]
	ldr r0, _080AD818 @ =gLoadedSaveGame
	ldr r1, _080AD81C @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _080AD800
	movs r0, #5
_080AD800:
	ldr r1, _080AD820 @ =gUnknown_08E7EA78
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6, #0x20]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD818: .4byte gLoadedSaveGame
_080AD81C: .4byte 0x00000366
_080AD820: .4byte gUnknown_08E7EA78

	thumb_func_start sub_80AD824
sub_80AD824: @ 0x080AD824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r7, #0
	ldr r0, _080AD928 @ =sub_80AD968
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AD92C @ =sub_80AE688
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r5, #0
	movs r6, #0
	strh r7, [r4, #0xc]
	strb r5, [r4, #8]
	movs r0, #1
	mov sb, r0
	str r0, [r4]
	str r7, [r4, #4]
	movs r1, #0x12
	mov r8, r1
	mov r2, r8
	strb r2, [r4, #0xa]
	ldr r7, _080AD930 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	str r0, [r4, #0x10]
	strb r5, [r0, #6]
	ldr r0, [r4, #0x10]
	str r6, [r0]
	ldr r1, _080AD934 @ =0x06012000
	str r1, [r0, #0x28]
	str r6, [sp, #4]
	ldr r2, _080AD938 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r4, #0x10]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r1, _080AD93C @ =gDispCnt
	movs r0, #0xc1
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r2, _080AD940 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AD944 @ =gBldRegs
	ldr r0, _080AD948 @ =0x00003FFF
	strh r0, [r1]
	strh r6, [r1, #4]
	str r6, [sp, #8]
	ldr r2, _080AD94C @ =0x040000D4
	add r0, sp, #8
	str r0, [r2]
	ldr r0, _080AD950 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AD954 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _080AD958 @ =gBgSprites_Unknown1
	strb r5, [r3, #2]
	ldr r0, _080AD95C @ =gBgSprites_Unknown2
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	mov r1, r8
	strb r1, [r3, #1]
	movs r1, #0x20
	strb r1, [r0, #4]
	strb r5, [r0, #5]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	strb r5, [r3]
	strb r5, [r0]
	strb r5, [r0, #1]
	subs r1, #0x21
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AD960 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080AD964 @ =gFlags
	ldr r0, [r1]
	mov r2, sb
	orrs r0, r2
	str r0, [r1]
	bl m4aMPlayAllStop
	movs r0, #8         @ MUS_NEWGAME_INTRO
	bl m4aSongNumStart
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD928: .4byte sub_80AD968
_080AD92C: .4byte sub_80AE688
_080AD930: .4byte 0x00000CAC
_080AD934: .4byte 0x06012000
_080AD938: .4byte 0x010003C0
_080AD93C: .4byte gDispCnt
_080AD940: .4byte gWinRegs
_080AD944: .4byte gBldRegs
_080AD948: .4byte 0x00003FFF
_080AD94C: .4byte 0x040000D4
_080AD950: .4byte gBgCntRegs
_080AD954: .4byte 0x85000010
_080AD958: .4byte gBgSprites_Unknown1
_080AD95C: .4byte gBgSprites_Unknown2
_080AD960: .4byte gBgPalette
_080AD964: .4byte gFlags

	thumb_func_start sub_80AD968
sub_80AD968: @ 0x080AD968
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080AD9D4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD9A6
	ldr r1, _080AD9D8 @ =gUnknown_080DBCF4
	ldrb r0, [r5, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x10]
	ldr r2, _080AD9DC @ =0x06012000
	str r2, [r0, #0x28]
	str r2, [r0, #0x24]
	ldrb r1, [r5, #0xa]
	str r2, [sp]
	movs r2, #0xa
	movs r3, #0x41
	bl sub_80AD7B4
	str r4, [r5]
	ldrb r0, [r5, #8]
	adds r0, #1
	strb r0, [r5, #8]
_080AD9A6:
	ldr r0, [r5]
	cmp r0, #0
	bne _080AD9BA
	ldr r0, [r5, #0x10]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r5, #0x10]
	bl sub_80239A8
_080AD9BA:
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD9CA
	movs r0, #0
	str r0, [r5]
	ldr r1, [r6]
	ldr r0, _080AD9E0 @ =sub_80AE69C
	str r0, [r1, #8]
_080AD9CA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AD9D4: .4byte gCurTask
_080AD9D8: .4byte gUnknown_080DBCF4
_080AD9DC: .4byte 0x06012000
_080AD9E0: .4byte sub_80AE69C

	thumb_func_start sub_80AD9E4
sub_80AD9E4: @ 0x080AD9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r7, #0
	ldr r0, _080ADAE0 @ =sub_80ADB20
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ADAE4 @ =sub_80AE71C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r5, #0
	movs r6, #0
	strh r7, [r4, #0xc]
	strb r5, [r4, #8]
	movs r0, #1
	mov sb, r0
	str r0, [r4]
	str r7, [r4, #4]
	movs r1, #0x12
	mov r8, r1
	mov r2, r8
	strb r2, [r4, #0xa]
	ldr r7, _080ADAE8 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	str r0, [r4, #0x10]
	strb r5, [r0, #6]
	ldr r0, [r4, #0x10]
	str r6, [r0]
	ldr r1, _080ADAEC @ =0x06012000
	str r1, [r0, #0x28]
	str r6, [sp, #4]
	ldr r2, _080ADAF0 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r4, #0x10]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r1, _080ADAF4 @ =gDispCnt
	movs r0, #0xc1
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r2, _080ADAF8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080ADAFC @ =gBldRegs
	ldr r0, _080ADB00 @ =0x00003FFF
	strh r0, [r1]
	str r6, [sp, #8]
	ldr r2, _080ADB04 @ =0x040000D4
	add r0, sp, #8
	str r0, [r2]
	ldr r0, _080ADB08 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080ADB0C @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _080ADB10 @ =gBgSprites_Unknown1
	strb r5, [r3, #2]
	ldr r0, _080ADB14 @ =gBgSprites_Unknown2
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	mov r1, r8
	strb r1, [r3, #1]
	movs r1, #0x20
	strb r1, [r0, #4]
	strb r5, [r0, #5]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	strb r5, [r3]
	strb r5, [r0]
	strb r5, [r0, #1]
	subs r1, #0x21
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080ADB18 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080ADB1C @ =gFlags
	ldr r0, [r1]
	mov r2, sb
	orrs r0, r2
	str r0, [r1]
	bl m4aMPlayAllStop
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADAE0: .4byte sub_80ADB20
_080ADAE4: .4byte sub_80AE71C
_080ADAE8: .4byte 0x00000CAC
_080ADAEC: .4byte 0x06012000
_080ADAF0: .4byte 0x010003C0
_080ADAF4: .4byte gDispCnt
_080ADAF8: .4byte gWinRegs
_080ADAFC: .4byte gBldRegs
_080ADB00: .4byte 0x00003FFF
_080ADB04: .4byte 0x040000D4
_080ADB08: .4byte gBgCntRegs
_080ADB0C: .4byte 0x85000010
_080ADB10: .4byte gBgSprites_Unknown1
_080ADB14: .4byte gBgSprites_Unknown2
_080ADB18: .4byte gBgPalette
_080ADB1C: .4byte gFlags

	thumb_func_start sub_80ADB20
sub_80ADB20: @ 0x080ADB20
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080ADB8C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080ADB90 @ =gBldRegs
	movs r5, #0
	strh r5, [r0, #4]
	ldr r0, [r4]
	cmp r0, #1
	bne _080ADB62
	ldr r1, _080ADB94 @ =gUnknown_080DBCF9
	ldrb r0, [r4, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	ldr r2, _080ADB98 @ =0x06012000
	str r2, [r0, #0x28]
	str r2, [r0, #0x24]
	ldrb r1, [r4, #0xa]
	str r2, [sp]
	movs r2, #0xa
	movs r3, #0x41
	bl sub_80AD7B4
	str r5, [r4]
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
_080ADB62:
	ldr r0, [r4]
	cmp r0, #0
	bne _080ADB76
	ldr r0, [r4, #0x10]
	bl sub_8023734
	str r0, [r4]
	ldr r0, [r4, #0x10]
	bl sub_80239A8
_080ADB76:
	ldr r0, [r4]
	cmp r0, #1
	bne _080ADB84
	str r5, [r4]
	ldr r1, [r6]
	ldr r0, _080ADB9C @ =sub_80AE720
	str r0, [r1, #8]
_080ADB84:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ADB8C: .4byte gCurTask
_080ADB90: .4byte gBldRegs
_080ADB94: .4byte gUnknown_080DBCF9
_080ADB98: .4byte 0x06012000
_080ADB9C: .4byte sub_80AE720

	thumb_func_start sub_80ADBA0
sub_80ADBA0: @ 0x080ADBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080ADC60 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r8, r2
	add r8, r4
	movs r0, #0x14
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #0x23
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _080ADC64 @ =0x0300000C
	adds r0, r4, r2
	str r1, [r0]
	ldr r5, _080ADC68 @ =gUnknown_080DBCFC
	ldrh r1, [r5]
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	mov r2, r8
	ldr r1, [r2, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #2
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r2, _080ADC6C @ =0x0300003C
	adds r4, r4, r2
	str r7, [r4]
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	mov r0, sl
	strb r0, [r4, #0x1c]
	mov r1, sb
	strb r1, [r4, #0x1f]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _080ADC60 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080ADC70 @ =sub_80ADC74
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADC60: .4byte gCurTask
_080ADC64: .4byte 0x0300000C
_080ADC68: .4byte gUnknown_080DBCFC
_080ADC6C: .4byte 0x0300003C
_080ADC70: .4byte sub_80ADC74

	thumb_func_start sub_80ADC74
sub_80ADC74: @ 0x080ADC74
	push {r4, lr}
	ldr r0, _080ADC9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ADCA0
	adds r0, r4, #0
	bl sub_80AE850
	adds r0, r4, #0
	bl sub_80AE814
	cmp r0, #1
	bne _080ADCB0
	b _080ADCAA
	.align 2, 0
_080ADC9C: .4byte gCurTask
_080ADCA0:
	adds r0, r4, #0
	bl sub_80AE850
	cmp r0, #0
	bne _080ADCB0
_080ADCAA:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080ADCB0:
	ldrb r0, [r4]
	cmp r0, #1
	beq _080ADCBC
	cmp r0, #3
	beq _080ADCDC
	b _080ADCEA
_080ADCBC:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080ADCD8 @ =gUnknown_080DBCFC
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080ADCEA
	.align 2, 0
_080ADCD8: .4byte gUnknown_080DBCFC
_080ADCDC:
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, _080ADCF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ADCF4 @ =sub_80AE7C4
	str r0, [r1, #8]
_080ADCEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADCF0: .4byte gCurTask
_080ADCF4: .4byte sub_80AE7C4

	thumb_func_start sub_80ADCF8
sub_80ADCF8: @ 0x080ADCF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080ADDFC @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	movs r0, #0x14
	bl VramMalloc
	mov sl, r0
	movs r0, #9
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #0x24
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _080ADE00 @ =0x0300003C
	adds r0, r4, r2
	str r1, [r0]
	ldr r1, _080ADE04 @ =gUnknown_080DBD1C
	mov r8, r1
	ldrh r1, [r1]
	movs r5, #0
	strh r1, [r0, #0xc]
	mov r2, r8
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r1, _080ADE08 @ =0x0300000C
	adds r0, r4, r1
	str r7, [r0]
	ldr r2, _080ADE0C @ =gUnknown_080DBD34
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r2, _080ADE10 @ =0x0300006C
	adds r4, r4, r2
	mov r0, sl
	str r0, [r4]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	mov r0, sb
	strb r0, [r4, #0x1c]
	movs r1, #2
	strb r1, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _080ADDFC @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080ADE14 @ =sub_80ADE18
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADDFC: .4byte gCurTask
_080ADE00: .4byte 0x0300003C
_080ADE04: .4byte gUnknown_080DBD1C
_080ADE08: .4byte 0x0300000C
_080ADE0C: .4byte gUnknown_080DBD34
_080ADE10: .4byte 0x0300006C
_080ADE14: .4byte sub_80ADE18

	thumb_func_start sub_80ADE18
sub_80ADE18: @ 0x080ADE18
	push {r4, r5, lr}
	ldr r0, _080ADE5C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080ADE32
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_080ADE32:
	adds r0, r4, #0
	bl sub_80AE8D4
	cmp r0, #1
	bne _080ADE68
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ADE68
	ldr r0, _080ADE60 @ =0x0300003C
	adds r1, r5, r0
	ldr r2, _080ADE64 @ =gUnknown_080DBD1C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080ADE94
	.align 2, 0
_080ADE5C: .4byte gCurTask
_080ADE60: .4byte 0x0300003C
_080ADE64: .4byte gUnknown_080DBD1C
_080ADE68:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0xd
	bne _080ADE94
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	strh r1, [r4, #2]
	ldr r0, _080ADE8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ADE90 @ =sub_80AE884
	str r0, [r1, #8]
	b _080ADE9A
	.align 2, 0
_080ADE8C: .4byte gCurTask
_080ADE90: .4byte sub_80AE884
_080ADE94:
	adds r0, r4, #0
	bl sub_80ADEA0
_080ADE9A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80ADEA0
sub_80ADEA0: @ 0x080ADEA0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xc
	ldrb r0, [r4]
	adds r5, r4, #0
	adds r5, #0x6c
	cmp r0, #1
	bhi _080ADEB4
	subs r5, #0x30
_080ADEB4:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, #0x12
	strh r0, [r6, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	subs r0, #5
	strh r0, [r6, #0x12]
	ldrb r0, [r4]
	cmp r0, #1
	bhi _080ADEEE
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080ADEF4
_080ADEEE:
	ldr r0, [r6, #8]
	ldr r1, _080ADF0C @ =0xFFFFFBFF
	ands r0, r1
_080ADEF4:
	str r0, [r6, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080ADF0C: .4byte 0xFFFFFBFF

	thumb_func_start sub_80ADF10
sub_80ADF10: @ 0x080ADF10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080AE018 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	movs r0, #0x14
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #0x4f
	bl VramMalloc
	adds r2, r0, #0
	ldr r3, _080AE01C @ =0x0300003C
	adds r0, r4, r3
	str r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r2, r2, r1
	ldr r3, _080AE020 @ =gUnknown_080DBD3C
	mov r8, r3
	ldrh r1, [r3]
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r3, #2
	strb r3, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sl, r1
	str r1, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r3, _080AE024 @ =0x0300000C
	adds r0, r4, r3
	ldr r2, [sp]
	str r2, [r0]
	ldr r2, _080AE028 @ =gUnknown_080DBD54
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	mov r1, sl
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r3, _080AE02C @ =0x0300006C
	adds r4, r4, r3
	str r7, [r4]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	mov r0, sb
	strb r0, [r4, #0x1c]
	movs r1, #2
	strb r1, [r4, #0x1f]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r3, _080AE018 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _080AE030 @ =sub_80AE034
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE018: .4byte gCurTask
_080AE01C: .4byte 0x0300003C
_080AE020: .4byte gUnknown_080DBD3C
_080AE024: .4byte 0x0300000C
_080AE028: .4byte gUnknown_080DBD54
_080AE02C: .4byte 0x0300006C
_080AE030: .4byte sub_80AE034

	thumb_func_start sub_80AE034
sub_80AE034: @ 0x080AE034
	push {r4, r5, lr}
	ldr r5, _080AE080 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080AE060
	ldr r0, _080AE084 @ =0x0300003C
	adds r1, r1, r0
	ldr r2, _080AE088 @ =gUnknown_080DBD3C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080AE060:
	adds r0, r4, #0
	bl sub_80AE09C
	cmp r0, #1
	bne _080AE090
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r1, [r5]
	ldr r0, _080AE08C @ =sub_80AE90C
	str r0, [r1, #8]
	b _080AE096
	.align 2, 0
_080AE080: .4byte gCurTask
_080AE084: .4byte 0x0300003C
_080AE088: .4byte gUnknown_080DBD3C
_080AE08C: .4byte sub_80AE90C
_080AE090:
	adds r0, r4, #0
	bl sub_80AE110
_080AE096:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80AE09C
sub_80AE09C: @ 0x080AE09C
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #4]
	ldr r0, _080AE0EC @ =0x0000BDFF
	cmp r3, r0
	bgt _080AE100
	ldr r1, _080AE0F0 @ =gUnknown_080DBD5C
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r3, r0
	str r1, [r2, #4]
	ldr r0, _080AE0F4 @ =0x000063FF
	cmp r1, r0
	ble _080AE0C2
	ldrb r0, [r2]
	cmp r0, #0
	beq _080AE0DC
_080AE0C2:
	ldr r0, _080AE0F8 @ =0x000081FF
	ldr r1, [r2, #4]
	cmp r1, r0
	ble _080AE0D0
	ldrb r0, [r2]
	cmp r0, #2
	beq _080AE0DC
_080AE0D0:
	ldr r0, _080AE0FC @ =0x00009FFF
	cmp r1, r0
	ble _080AE0E0
	ldrb r0, [r2]
	cmp r0, #3
	bne _080AE0E0
_080AE0DC:
	adds r0, #1
	strb r0, [r2]
_080AE0E0:
	ldr r0, _080AE0EC @ =0x0000BDFF
	cmp r1, r0
	ble _080AE10A
	adds r0, #1
	b _080AE104
	.align 2, 0
_080AE0EC: .4byte 0x0000BDFF
_080AE0F0: .4byte gUnknown_080DBD5C
_080AE0F4: .4byte 0x000063FF
_080AE0F8: .4byte 0x000081FF
_080AE0FC: .4byte 0x00009FFF
_080AE100:
	movs r0, #0xbe
	lsls r0, r0, #8
_080AE104:
	str r0, [r2, #4]
	movs r0, #1
	b _080AE10C
_080AE10A:
	movs r0, #0
_080AE10C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE110
sub_80AE110: @ 0x080AE110
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xc
	ldrb r0, [r4]
	adds r5, r4, #0
	adds r5, #0x6c
	cmp r0, #4
	bhi _080AE124
	subs r5, #0x30
_080AE124:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080AE16C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r0, #0x10
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080AE166
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_080AE166:
	adds r0, r6, #0
	bl DisplaySprite
_080AE16C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80AE174
sub_80AE174: @ 0x080AE174
	push {lr}
	sub sp, #4
	ldr r0, _080AE1A8 @ =sub_80ADF10
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE1AC @ =sub_80AE1B4
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r1, #2]
	ldr r0, _080AE1B0 @ =0xFFFFD800
	str r0, [r1, #4]
	movs r0, #0xf2
	lsls r0, r0, #7
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE1A8: .4byte sub_80ADF10
_080AE1AC: .4byte sub_80AE1B4
_080AE1B0: .4byte 0xFFFFD800

	thumb_func_start sub_80AE1B4
sub_80AE1B4: @ 0x080AE1B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE1C8
sub_80AE1C8: @ 0x080AE1C8
	push {lr}
	sub sp, #4
	ldr r0, _080AE1FC @ =sub_80ADCF8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE200 @ =sub_80AE208
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r1, #2]
	movs r0, #0xbe
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, _080AE204 @ =0xFFFFD800
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE1FC: .4byte sub_80ADCF8
_080AE200: .4byte sub_80AE208
_080AE204: .4byte 0xFFFFD800

	thumb_func_start sub_80AE208
sub_80AE208: @ 0x080AE208
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x6c]
	bl VramFree
	ldr r0, [r4, #0xc]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AE224
sub_80AE224: @ 0x080AE224
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x5c]
	bl VramFree
	ldr r0, _080AE244 @ =0x030000B4
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE244: .4byte 0x030000B4

	thumb_func_start sub_80AE248
sub_80AE248: @ 0x080AE248
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _080AE274 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _080AE280
	ldr r1, _080AE278 @ =0x0300001A
	adds r0, r5, r1
	ldr r2, _080AE27C @ =0x03000028
	adds r1, r5, r2
	bl sub_80AD0B0
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	b _080AE2AC
	.align 2, 0
_080AE274: .4byte gCurTask
_080AE278: .4byte 0x0300001A
_080AE27C: .4byte 0x03000028
_080AE280:
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	ldr r3, _080AE2B4 @ =0x030000B4
	adds r1, r5, r3
	ldr r1, [r1]
	adds r1, #0x24
	ldr r4, _080AE2B8 @ =0x03000008
	adds r2, r5, r4
	ldr r7, _080AE2BC @ =0x03000010
	adds r3, r5, r7
	adds r7, #0x4c
	adds r4, r5, r7
	str r4, [sp]
	adds r7, #0x28
	adds r4, r5, r7
	str r4, [sp, #4]
	bl sub_80AE300
	ldr r1, [r6]
	ldr r0, _080AE2C0 @ =sub_80ACDB8
	str r0, [r1, #8]
_080AE2AC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE2B4: .4byte 0x030000B4
_080AE2B8: .4byte 0x03000008
_080AE2BC: .4byte 0x03000010
_080AE2C0: .4byte sub_80ACDB8

	thumb_func_start sub_80AE2C4
sub_80AE2C4: @ 0x080AE2C4
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	cmp r0, #0
	bge _080AE2DA
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #0x20]
	cmp r0, #0
	ble _080AE2E2
_080AE2DA:
	movs r0, #0
	str r0, [r1, #0x20]
	movs r0, #1
	b _080AE2E4
_080AE2E2:
	movs r0, #0
_080AE2E4:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE2E8
sub_80AE2E8: @ 0x080AE2E8
	ldr r1, [r0, #0x20]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x24]
	movs r2, #0xb0
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	movs r0, #0
	bx lr

	thumb_func_start sub_80AE300
sub_80AE300: @ 0x080AE300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov sl, r1
	mov sb, r2
	mov r8, r3
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r7, #0
	ldr r0, _080AE3B4 @ =sub_80AE53C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE3B8 @ =sub_80AE524
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	movs r6, #0
	strb r7, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #0x14]
	strb r5, [r1, #0x18]
	strb r7, [r1, #0x1a]
	movs r0, #1
	str r0, [r1]
	mov r2, sb
	str r2, [r1, #0xc]
	movs r0, #0x12
	strb r0, [r1, #0x19]
	movs r2, #0xe1
	lsls r2, r2, #9
	str r2, [r1, #0x20]
	movs r0, #0xc4
	lsls r0, r0, #7
	str r0, [r1, #0x24]
	str r2, [r1, #0x28]
	movs r0, #0x92
	lsls r0, r0, #8
	str r0, [r1, #0x2c]
	ldr r2, _080AE3BC @ =0x030000AC
	adds r0, r4, r2
	ldr r2, [sp, #0x28]
	str r2, [r0]
	ldr r2, _080AE3C0 @ =0x030000B0
	adds r0, r4, r2
	ldr r2, [sp, #0x2c]
	str r2, [r0]
	mov r0, sl
	str r0, [r1, #0x30]
	ldr r7, _080AE3C4 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	ldr r1, _080AE3C8 @ =0x030000B4
	adds r4, r4, r1
	str r0, [r4]
	strb r6, [r0, #6]
	ldr r0, [r4]
	str r6, [r0]
	ldr r1, [r4]
	ldr r0, _080AE3CC @ =0x06012F00
	str r0, [r1, #0x28]
	str r6, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	ldr r2, _080AE3D0 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3B4: .4byte sub_80AE53C
_080AE3B8: .4byte sub_80AE524
_080AE3BC: .4byte 0x030000AC
_080AE3C0: .4byte 0x030000B0
_080AE3C4: .4byte 0x00000CAC
_080AE3C8: .4byte 0x030000B4
_080AE3CC: .4byte 0x06012F00
_080AE3D0: .4byte 0x010003C0

	thumb_func_start sub_80AE3D4
sub_80AE3D4: @ 0x080AE3D4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE3E8
sub_80AE3E8: @ 0x080AE3E8
	push {r4, r5, lr}
	ldr r5, _080AE420 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AD190
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE40A
	adds r0, r4, #0
	bl sub_80AE428
_080AE40A:
	ldr r0, _080AE424 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE418
	ldr r0, [r5]
	bl TaskDestroy
_080AE418:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE420: .4byte gCurTask
_080AE424: .4byte gBldRegs

	thumb_func_start sub_80AE428
sub_80AE428: @ 0x080AE428
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _080AE440 @ =0xFFFFBA00
	cmp r1, r0
	ble _080AE43A
	ldr r3, _080AE444 @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
_080AE43A:
	pop {r0}
	bx r0
	.align 2, 0
_080AE440: .4byte 0xFFFFBA00
_080AE444: .4byte 0xFFFFFF00

	thumb_func_start sub_80AE448
sub_80AE448: @ 0x080AE448
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE45C
sub_80AE45C: @ 0x080AE45C
	push {r4, r5, lr}
	ldr r5, _080AE480 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AD408
	ldr r0, _080AE484 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE488
	ldr r0, [r5]
	bl TaskDestroy
	b _080AE4BC
	.align 2, 0
_080AE480: .4byte gCurTask
_080AE484: .4byte gBldRegs
_080AE488:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AE4BC
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AE4BC
	adds r0, r4, #0
	bl sub_80AE4F8
	cmp r0, #0
	bne _080AE4A8
	adds r0, r4, #0
	bl sub_80AE4C4
	b _080AE4BC
_080AE4A8:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _080AE4BC
	adds r0, r4, #0
	bl sub_80AE4C4
_080AE4BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AE4C4
sub_80AE4C4: @ 0x080AE4C4
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0xc]
	ldr r2, [r1]
	asrs r2, r2, #8
	strh r2, [r4, #0x10]
	ldr r1, [r0, #0x10]
	ldr r3, [r1]
	asrs r3, r3, #8
	strh r3, [r4, #0x12]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r4, #0x10]
	ldr r0, [r0, #0x18]
	asrs r0, r0, #8
	adds r3, r3, r0
	strh r3, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AE4F8
sub_80AE4F8: @ 0x080AE4F8
	push {lr}
	adds r1, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r1, #0x14]
	ldr r0, [r1, #0x18]
	ldr r2, _080AE518 @ =0xFFFFE800
	cmp r0, r2
	bge _080AE512
	adds r0, #0x40
	str r0, [r1, #0x18]
	cmp r0, r2
	ble _080AE51C
_080AE512:
	str r2, [r1, #0x18]
	movs r0, #1
	b _080AE51E
	.align 2, 0
_080AE518: .4byte 0xFFFFE800
_080AE51C:
	movs r0, #0
_080AE51E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AE524
sub_80AE524: @ 0x080AE524
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080AE538 @ =0x030000B4
	adds r0, r0, r1
	ldr r0, [r0]
	bl EwramFree
	pop {r0}
	bx r0
	.align 2, 0
_080AE538: .4byte 0x030000B4

	thumb_func_start sub_80AE53C
sub_80AE53C: @ 0x080AE53C
	push {r4, lr}
	ldr r2, _080AE568 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _080AE570
	ldr r2, _080AE56C @ =0x0300001A
	adds r0, r1, r2
	adds r2, #0xe
	adds r1, r1, r2
	ldrb r2, [r4, #0x18]
	bl sub_80AD234
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	b _080AE57A
	.align 2, 0
_080AE568: .4byte gCurTask
_080AE56C: .4byte 0x0300001A
_080AE570:
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r1, [r2]
	ldr r0, _080AE580 @ =sub_80AD634
	str r0, [r1, #8]
_080AE57A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE580: .4byte sub_80AD634

	thumb_func_start sub_80AE584
sub_80AE584: @ 0x080AE584
	push {r4, r5, lr}
	ldr r5, _080AE5B8 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0, #8]
	bl sub_80AD72C
	ldr r0, _080AE5BC @ =0x030000B4
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_80239A8
	ldr r0, _080AE5C0 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE5B2
	ldr r0, [r5]
	bl TaskDestroy
_080AE5B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE5B8: .4byte gCurTask
_080AE5BC: .4byte 0x030000B4
_080AE5C0: .4byte gBldRegs

	thumb_func_start sub_80AE5C4
sub_80AE5C4: @ 0x080AE5C4
	push {r4, r5, r6, lr}
	ldr r6, _080AE5F4 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80AD72C
	ldr r0, [r4]
	cmp r0, #0
	bne _080AE5E8
	ldr r1, _080AE5F8 @ =0x030000B4
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80239A8
_080AE5E8:
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _080AE5FC
	subs r0, #1
	strh r0, [r4, #0x1e]
	b _080AE630
	.align 2, 0
_080AE5F4: .4byte gCurTask
_080AE5F8: .4byte 0x030000B4
_080AE5FC:
	ldr r0, [r4, #0xc]
	ldr r3, [r0]
	cmp r3, #1
	bne _080AE630
	ldr r2, _080AE620 @ =gUnknown_080DBCBE
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE628
	ldr r1, [r6]
	ldr r0, _080AE624 @ =sub_80AE584
	b _080AE62E
	.align 2, 0
_080AE620: .4byte gUnknown_080DBCBE
_080AE624: .4byte sub_80AE584
_080AE628:
	str r3, [r4]
	ldr r1, [r6]
	ldr r0, _080AE638 @ =sub_80AD634
_080AE62E:
	str r0, [r1, #8]
_080AE630:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE638: .4byte sub_80AD634

	thumb_func_start sub_80AE63C
sub_80AE63C: @ 0x080AE63C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	movs r3, #0xf0
	lsls r3, r3, #8
	cmp r1, r3
	ble _080AE656
	ldr r0, _080AE65C @ =0xFFFFFB00
	adds r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, _080AE660 @ =0x0000EFFF
	cmp r1, r0
	bgt _080AE664
_080AE656:
	str r3, [r2, #0x20]
	movs r0, #1
	b _080AE666
	.align 2, 0
_080AE65C: .4byte 0xFFFFFB00
_080AE660: .4byte 0x0000EFFF
_080AE664:
	movs r0, #0
_080AE666:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AE66C
sub_80AE66C: @ 0x080AE66C
	ldr r1, [r0, #0x20]
	ldr r2, _080AE684 @ =0xFFFFE000
	adds r1, r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x24]
	movs r2, #0xb0
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	movs r0, #0
	bx lr
	.align 2, 0
_080AE684: .4byte 0xFFFFE000

	thumb_func_start sub_80AE688
sub_80AE688: @ 0x080AE688
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl EwramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE69C
sub_80AE69C: @ 0x080AE69C
	push {lr}
	ldr r0, _080AE6BC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r1, _080AE6C0 @ =gUnknown_080DBCF4
	ldrb r0, [r3, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE6C8
	ldr r0, _080AE6C4 @ =sub_80AE6D8
	b _080AE6CE
	.align 2, 0
_080AE6BC: .4byte gCurTask
_080AE6C0: .4byte gUnknown_080DBCF4
_080AE6C4: .4byte sub_80AE6D8
_080AE6C8:
	movs r0, #1
	str r0, [r3]
	ldr r0, _080AE6D4 @ =sub_80AD968
_080AE6CE:
	str r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080AE6D4: .4byte sub_80AD968

	thumb_func_start sub_80AE6D8
sub_80AE6D8: @ 0x080AE6D8
	push {lr}
	ldr r1, _080AE704 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AE708 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AE70C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AE710 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AE714 @ =gVramGraphicsCopyCursor
	ldr r0, _080AE718 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl CreateGameIntroState
	pop {r0}
	bx r0
	.align 2, 0
_080AE704: .4byte 0x0000FFFF
_080AE708: .4byte gBackgroundsCopyQueueCursor
_080AE70C: .4byte gBackgroundsCopyQueueIndex
_080AE710: .4byte gBgSpritesCount
_080AE714: .4byte gVramGraphicsCopyCursor
_080AE718: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80AE71C
sub_80AE71C: @ 0x080AE71C
	bx lr
	.align 2, 0

	thumb_func_start sub_80AE720
sub_80AE720: @ 0x080AE720
	push {r4, r5, lr}
	ldr r5, _080AE758 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl sub_80239A8
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _080AE750
	bl sub_8000804
	bl sub_8001E58
	ldr r1, [r5]
	ldr r0, _080AE75C @ =sub_80AE760
	str r0, [r1, #8]
_080AE750:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE758: .4byte gCurTask
_080AE75C: .4byte sub_80AE760

	thumb_func_start sub_80AE760
sub_80AE760: @ 0x080AE760
	push {lr}
	bl sub_80C621C
	movs r0, #1
	bl sub_808ADF0
	pop {r0}
	bx r0

	thumb_func_start sub_80AE770
sub_80AE770: @ 0x080AE770
	push {lr}
	sub sp, #4
	ldr r0, _080AE7A4 @ =sub_80ADBA0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE7A8 @ =sub_80AE7B0
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r1, #2]
	movs r0, #0xbe
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, _080AE7AC @ =0xFFFFD800
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE7A4: .4byte sub_80ADBA0
_080AE7A8: .4byte sub_80AE7B0
_080AE7AC: .4byte 0xFFFFD800

	thumb_func_start sub_80AE7B0
sub_80AE7B0: @ 0x080AE7B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE7C4
sub_80AE7C4: @ 0x080AE7C4
	push {r4, lr}
	ldr r0, _080AE80C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AE850
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0xd2
	bgt _080AE7F4
	adds r0, r1, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd2
	bne _080AE7F4
	movs r0, #0
	bl sub_80ACC40
_080AE7F4:
	ldr r0, _080AE810 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE804
	ldr r0, _080AE80C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AE804:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE80C: .4byte gCurTask
_080AE810: .4byte gBldRegs

	thumb_func_start sub_80AE814
sub_80AE814: @ 0x080AE814
	push {lr}
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r2, [r1, #8]
	ldr r0, _080AE83C @ =0x000079FF
	cmp r2, r0
	bgt _080AE840
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #8]
	movs r2, #0xf4
	lsls r2, r2, #7
	cmp r0, r2
	ble _080AE84A
	str r2, [r1, #8]
	movs r0, #1
	b _080AE84C
	.align 2, 0
_080AE83C: .4byte 0x000079FF
_080AE840:
	movs r0, #0xf4
	lsls r0, r0, #7
	str r0, [r1, #8]
	movs r0, #1
	b _080AE84C
_080AE84A:
	movs r0, #0
_080AE84C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE850
sub_80AE850: @ 0x080AE850
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	adds r5, r1, #0
	adds r5, #0x3c
	cmp r0, #2
	bhi _080AE860
	subs r5, #0x30
_080AE860:
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
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

	thumb_func_start sub_80AE884
sub_80AE884: @ 0x080AE884
	push {r4, lr}
	ldr r0, _080AE8CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ADEA0
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	bgt _080AE8B4
	adds r0, r1, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080AE8B4
	movs r0, #1
	bl sub_80ACC40
_080AE8B4:
	ldr r0, _080AE8D0 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE8C4
	ldr r0, _080AE8CC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AE8C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE8CC: .4byte gCurTask
_080AE8D0: .4byte gBldRegs

	thumb_func_start sub_80AE8D4
sub_80AE8D4: @ 0x080AE8D4
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #8]
	ldr r0, _080AE8F8 @ =0x000079FF
	cmp r2, r0
	bgt _080AE8FC
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r0, [r1, #8]
	movs r2, #0xf4
	lsls r2, r2, #7
	cmp r0, r2
	ble _080AE906
	str r2, [r1, #8]
	movs r0, #1
	b _080AE908
	.align 2, 0
_080AE8F8: .4byte 0x000079FF
_080AE8FC:
	movs r0, #0xf4
	lsls r0, r0, #7
	str r0, [r1, #8]
	movs r0, #1
	b _080AE908
_080AE906:
	movs r0, #0
_080AE908:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE90C
sub_80AE90C: @ 0x080AE90C
	push {r4, lr}
	ldr r0, _080AE954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AE110
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	bgt _080AE93C
	adds r0, r1, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080AE93C
	movs r0, #2
	bl sub_80ACC40
_080AE93C:
	ldr r0, _080AE958 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE94C
	ldr r0, _080AE954 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AE94C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE954: .4byte gCurTask
_080AE958: .4byte gBldRegs

	thumb_func_start sub_80AE95C
sub_80AE95C: @ 0x080AE95C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080AEA10 @ =gDispCnt
	ldr r2, _080AEA14 @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080AEA18 @ =sub_80AEA44
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AEA1C @ =sub_80AED7C
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r0, _080AEA20 @ =gLoadedSaveGame
	ldr r1, _080AEA24 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r3]
	strb r4, [r3, #1]
	movs r0, #0x1b
	strb r0, [r3, #2]
	strb r1, [r3, #3]
	movs r5, #0
	strh r1, [r3, #4]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r3, #0xc]
	ldr r0, _080AEA28 @ =gUnknown_080DBD88
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	str r1, [r3, #0x18]
	str r1, [r3, #0x1c]
	str r1, [r3, #0x20]
	str r1, [sp, #4]
	ldr r2, _080AEA2C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080AEA30 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AEA34 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r4, _080AEA38 @ =gBgSprites_Unknown1
	strb r5, [r4, #2]
	ldr r0, _080AEA3C @ =gBgSprites_Unknown2
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	strb r5, [r4, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r5, [r4]
	strb r5, [r0]
	strb r5, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	ldr r0, _080AEA40 @ =0x06010000
	str r0, [r3, #8]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AEA10: .4byte gDispCnt
_080AEA14: .4byte 0x00001041
_080AEA18: .4byte sub_80AEA44
_080AEA1C: .4byte sub_80AED7C
_080AEA20: .4byte gLoadedSaveGame
_080AEA24: .4byte 0x00000366
_080AEA28: .4byte gUnknown_080DBD88
_080AEA2C: .4byte 0x040000D4
_080AEA30: .4byte gBgCntRegs
_080AEA34: .4byte 0x85000010
_080AEA38: .4byte gBgSprites_Unknown1
_080AEA3C: .4byte gBgSprites_Unknown2
_080AEA40: .4byte 0x06010000

	thumb_func_start sub_80AEA44
sub_80AEA44: @ 0x080AEA44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080AEB40 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _080AEB44 @ =0x03000024
	adds r0, r5, r1
	ldr r2, _080AEB48 @ =gDispCnt
	mov sb, r2
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	orrs r1, r2
	mov r2, sb
	strh r1, [r2]
	ldr r3, _080AEB4C @ =gBgCntRegs
	mov sl, r3
	movs r4, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r3]
	ldr r1, _080AEB50 @ =gBgScrollRegs
	mov r8, r1
	ldr r1, _080AEB54 @ =0x0000FFFC
	mov r2, r8
	strh r1, [r2]
	subs r1, #8
	strh r1, [r2, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AEB58 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r6, _080AEB5C @ =gUnknown_080DBD64
	ldrb r2, [r7]
	lsls r2, r2, #1
	ldrb r3, [r7, #1]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r6
	ldrh r1, [r2]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r3, _080AEB60 @ =0x0300004E
	adds r1, r5, r3
	movs r2, #0
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r3, _080AEB64 @ =0x03000064
	adds r0, r5, r3
	mov r2, sb
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	mov r2, sb
	strh r1, [r2]
	ldr r1, _080AEB68 @ =0x00001608
	mov r3, sl
	strh r1, [r3, #2]
	mov r1, r8
	strh r4, [r1, #4]
	strh r4, [r1, #6]
	ldr r1, _080AEB6C @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AEB70 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xab
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _080AEB74 @ =0x0300008E
	adds r5, r5, r2
	movs r3, #0
	strb r3, [r5]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r4, _080AEB78 @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080AEB80
	ldr r0, _080AEB7C @ =gUnknown_08E2EF64
	ldrb r1, [r7, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0x10
	movs r2, #0x20
	bl sub_80C460C
	b _080AEB9E
	.align 2, 0
_080AEB40: .4byte gCurTask
_080AEB44: .4byte 0x03000024
_080AEB48: .4byte gDispCnt
_080AEB4C: .4byte gBgCntRegs
_080AEB50: .4byte gBgScrollRegs
_080AEB54: .4byte 0x0000FFFC
_080AEB58: .4byte 0x06003000
_080AEB5C: .4byte gUnknown_080DBD64
_080AEB60: .4byte 0x0300004E
_080AEB64: .4byte 0x03000064
_080AEB68: .4byte 0x00001608
_080AEB6C: .4byte 0x06008000
_080AEB70: .4byte 0x0600B000
_080AEB74: .4byte 0x0300008E
_080AEB78: .4byte gFlags
_080AEB7C: .4byte gUnknown_08E2EF64
_080AEB80:
	ldr r1, _080AEBD4 @ =0x040000D4
	ldr r2, _080AEBD8 @ =gUnknown_08E2EF64
	ldrb r0, [r7, #1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _080AEBDC @ =gBgPalette + 0x20
	str r0, [r1, #4]
	ldr r0, _080AEBE0 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_080AEB9E:
	ldr r1, _080AEBE4 @ =gUnknown_080DBE50
	ldrb r0, [r7, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #1]
	adds r0, r7, #1
	adds r1, r7, #2
	adds r2, r7, #0
	adds r2, #0xc
	adds r3, r7, #0
	adds r3, #0x10
	ldr r4, [r7, #8]
	str r4, [sp]
	bl sub_809BF3C
	ldr r0, _080AEBE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AEBEC @ =sub_80AEBF0
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AEBD4: .4byte 0x040000D4
_080AEBD8: .4byte gUnknown_08E2EF64
_080AEBDC: .4byte gBgPalette + 0x20
_080AEBE0: .4byte 0x80000020
_080AEBE4: .4byte gUnknown_080DBE50
_080AEBE8: .4byte gCurTask
_080AEBEC: .4byte sub_80AEBF0

	thumb_func_start sub_80AEBF0
sub_80AEBF0: @ 0x080AEBF0
	push {r4, r5, lr}
	ldr r5, _080AEC60 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _080AEC40
	ldr r2, _080AEC64 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AEC68 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AEC6C @ =gBldRegs
	ldr r0, _080AEC70 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #4]
	strb r3, [r4, #3]
_080AEC40:
	adds r0, r4, #0
	bl sub_80AEDB8
	ldr r1, _080AEC6C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080AEC78
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080AEC74 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #4]
	adds r0, r0, r3
	strh r0, [r4, #4]
	b _080AEC8A
	.align 2, 0
_080AEC60: .4byte gCurTask
_080AEC64: .4byte gDispCnt
_080AEC68: .4byte gWinRegs
_080AEC6C: .4byte gBldRegs
_080AEC70: .4byte 0x00003FFF
_080AEC74: .4byte 0xFFFFFF00
_080AEC78:
	strh r0, [r1, #4]
	bl m4aMPlayAllStop
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _080AEC90 @ =sub_80AED80
	str r0, [r1, #8]
_080AEC8A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AEC90: .4byte sub_80AED80

	thumb_func_start sub_80AEC94
sub_80AEC94: @ 0x080AEC94
	push {r4, r5, lr}
	ldr r0, _080AED00 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _080AECDE
	ldr r2, _080AED04 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AED08 @ =gWinRegs
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AED0C @ =gBldRegs
	ldr r0, _080AED10 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r5, #4]
	strb r3, [r5, #3]
_080AECDE:
	adds r0, r5, #0
	bl sub_80AEDB8
	ldr r1, _080AED0C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AED14
	ldrh r0, [r5, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #4]
	adds r0, r0, r3
	strh r0, [r5, #4]
	b _080AED5A
	.align 2, 0
_080AED00: .4byte gCurTask
_080AED04: .4byte gDispCnt
_080AED08: .4byte gWinRegs
_080AED0C: .4byte gBldRegs
_080AED10: .4byte 0x00003FFF
_080AED14:
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r5, #0xc]
	movs r0, #0x1d
	strb r0, [r5, #2]
	movs r4, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _080AED60 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AED64 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AED68 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AED6C @ =gBgSpritesCount
	strb r4, [r0]
	ldr r1, _080AED70 @ =gVramGraphicsCopyCursor
	ldr r0, _080AED74 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080AED78 @ =gStageData
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrb r1, [r2, #0xa]
	subs r1, #2
	bl WarpToMap
_080AED5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AED60: .4byte 0x0000FFFF
_080AED64: .4byte gBackgroundsCopyQueueCursor
_080AED68: .4byte gBackgroundsCopyQueueIndex
_080AED6C: .4byte gBgSpritesCount
_080AED70: .4byte gVramGraphicsCopyCursor
_080AED74: .4byte gVramGraphicsCopyQueueIndex
_080AED78: .4byte gStageData

	thumb_func_start sub_80AED7C
sub_80AED7C: @ 0x080AED7C
	bx lr
	.align 2, 0

	thumb_func_start sub_80AED80
sub_80AED80: @ 0x080AED80
	push {r4, lr}
	ldr r4, _080AEDAC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80AEDB8
	ldr r0, _080AEDB0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEDA4
	ldr r1, [r4]
	ldr r0, _080AEDB4 @ =sub_80AEC94
	str r0, [r1, #8]
_080AEDA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEDAC: .4byte gCurTask
_080AEDB0: .4byte gPressedKeys
_080AEDB4: .4byte sub_80AEC94

	thumb_func_start sub_80AEDB8
sub_80AEDB8: @ 0x080AEDB8
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	str r2, [r0, #0x1c]
	ldr r1, [r0, #0x20]
	subs r1, #0xc0
	str r1, [r0, #0x20]
	ldr r0, _080AEDD0 @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0, #4]
	asrs r1, r1, #8
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_080AEDD0: .4byte gBgScrollRegs
