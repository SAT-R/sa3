.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start LoadCharacterSelectSprites
LoadCharacterSelectSprites: @ 0x0809B770
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

	thumb_func_start Task_809B8C8
Task_809B8C8: @ 0x0809B8C8
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
	bl CopyObjPaletteMasked
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
	bl CopyObjPaletteMasked
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

	thumb_func_start CreateSomeTask_809BF3C
CreateSomeTask_809BF3C: @ 0x0809BF3C
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
	ldr r0, _0809BF94 @ =Task_809B8C8
	movs r1, #0x9c
	lsls r1, r1, #2   @ 0x270
	ldr r2, _0809BF98 @ =TaskDestructor_809BFE4
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
	bl LoadCharacterSelectSprites
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809BF94: .4byte Task_809B8C8
_0809BF98: .4byte TaskDestructor_809BFE4

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
	ldr r0, _0809BFE0 @ =Task_809B8C8
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0809BFDC: .4byte gCurTask
_0809BFE0: .4byte Task_809B8C8

	thumb_func_start TaskDestructor_809BFE4
TaskDestructor_809BFE4: @ 0x0809BFE4
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
	ldr r0, _0809C0A8 @ =Task_809C44C
	movs r1, #0xae
	lsls r1, r1, #3     @ 0x570
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0809C0AC @ =TaskDestructor_809E280
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
	bl CopyBgPaletteMasked
	b _0809C0F2
	.align 2, 0
_0809C0A0: .4byte gDispCnt
_0809C0A4: .4byte 0x00001141
_0809C0A8: .4byte Task_809C44C
_0809C0AC: .4byte TaskDestructor_809E280
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
	bl CopyBgPaletteMasked
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
	bl CopyBgPaletteMasked
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
	bl CopyBgPaletteMasked
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

	thumb_func_start Task_809C44C
Task_809C44C: @ 0x0809C44C
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
	ldr r0, _0809CA4C @ =Task_809E284
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809CA50 @ =TaskDestructor_809E3B4
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
_0809CA4C: .4byte Task_809E284
_0809CA50: .4byte TaskDestructor_809E3B4
_0809CA54: .4byte 0xFFFFC400
_0809CA58: .4byte 0x03000038
_0809CA5C: .4byte gUnknown_080D9624
_0809CA60: .4byte 0x03000010

@ referenced in Task_809E284()
	thumb_func_start Task_809CA64
Task_809CA64: @ 0x0809CA64
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
	ldr r0, _0809CB14 @ =Task_809CB30
	b _0809CB1E
	.align 2, 0
_0809CB0C: .4byte gUnknown_080D9634
_0809CB10: .4byte gCurTask
_0809CB14: .4byte Task_809CB30
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

	thumb_func_start Task_809CB30
Task_809CB30: @ 0x0809CB30
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

@ Unused?
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
	ldr r0, _0809CC7C @ =Task_809E31C
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
_0809CC7C: .4byte Task_809E31C

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
	ldr r0, _0809CDB4 @ =Task_F4_809E3B8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809CDB8 @ =TaskDestructor_809E4DC
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
_0809CDB4: .4byte Task_F4_809E3B8
_0809CDB8: .4byte TaskDestructor_809E4DC
_0809CDBC: .4byte 0xFFFFD800
_0809CDC0: .4byte gUnknown_080D9644
_0809CDC4: .4byte gUnknown_080D9640

@ Called by Task_F4_809E3B8 with its task-type
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

@ Called by Task_F4_809E3B8 with its task-type
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
	ldr r0, _0809CF94 @ =Task_809E4E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809CF98 @ =TaskDestructor_809E630
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
_0809CF94: .4byte Task_809E4E0
_0809CF98: .4byte TaskDestructor_809E630
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
	ldr r0, _0809D038 @ =Task_809D04C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D03C @ =TaskDestructor_809E688
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
_0809D038: .4byte Task_809D04C
_0809D03C: .4byte TaskDestructor_809E688
_0809D040: .4byte 0xFFFF8800
_0809D044: .4byte 0x03000014
_0809D048: .4byte gUnknown_080D9678

	thumb_func_start Task_809D04C
Task_809D04C: @ 0x0809D04C
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
	ldr r0, _0809D0F8 @ =Task_809D148
	str r0, [r1, #8]
	b _0809D13C
	.align 2, 0
_0809D0F4: .4byte 0x00006614
_0809D0F8: .4byte Task_809D148
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

	thumb_func_start Task_809D148
Task_809D148: @ 0x0809D148
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
	ldr r0, _0809D2E0 @ =Task_809D3C4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D2E4 @ =TaskDestructor_809E774
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
_0809D2E0: .4byte Task_809D3C4
_0809D2E4: .4byte TaskDestructor_809E774
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

	thumb_func_start Task_809D3C4
Task_809D3C4: @ 0x0809D3C4
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
	ldr r0, _0809D494 @ =Task_809E68C
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
_0809D494: .4byte Task_809E68C

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
	ldr r0, _0809D5B4 @ =Task_809E68C
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
_0809D5B4: .4byte Task_809E68C

	thumb_func_start sub_809D5B8
sub_809D5B8: @ 0x0809D5B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0809D670 @ =Task_809D810
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D674 @ =TaskDestructor_809E858
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
_0809D670: .4byte Task_809D810
_0809D674: .4byte TaskDestructor_809E858
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

	thumb_func_start Task_809D810
Task_809D810: @ 0x0809D810
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
	ldr r0, _0809DE98 @ =Task_809E778
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
_0809DE98: .4byte Task_809E778

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

	thumb_func_start TaskDestructor_809E280
TaskDestructor_809E280: @ 0x0809E280
	bx lr
	.align 2, 0

	thumb_func_start Task_809E284
Task_809E284: @ 0x0809E284
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
	ldr r0, _0809E318 @ =Task_809CA64
	str r0, [r1, #8]
_0809E30E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E314: .4byte gCurTask
_0809E318: .4byte Task_809CA64

	thumb_func_start Task_809E31C
Task_809E31C: @ 0x0809E31C
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

	thumb_func_start TaskDestructor_809E3B4
TaskDestructor_809E3B4: @ 0x0809E3B4
	bx lr
	.align 2, 0

	thumb_func_start Task_F4_809E3B8
Task_F4_809E3B8: @ 0x0809E3B8
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
	ldr r0, _0809E454 @ =Task_809E458
	str r0, [r1, #8]
_0809E448:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E450: .4byte gCurTask
_0809E454: .4byte Task_809E458

	thumb_func_start Task_809E458
Task_809E458: @ 0x0809E458
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

	thumb_func_start TaskDestructor_809E4DC
TaskDestructor_809E4DC: @ 0x0809E4DC
	bx lr
	.align 2, 0

	thumb_func_start Task_809E4E0
Task_809E4E0: @ 0x0809E4E0
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
	ldr r0, _0809E570 @ =Task_809E574
	str r0, [r1, #8]
_0809E56A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E570: .4byte Task_809E574

	thumb_func_start Task_809E574
Task_809E574: @ 0x0809E574
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
    
	thumb_func_start TaskDestructor_809E630
TaskDestructor_809E630: @ 0x0809E630
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

	thumb_func_start TaskDestructor_809E688
TaskDestructor_809E688: @ 0x0809E688
	bx lr
	.align 2, 0

	thumb_func_start Task_809E68C
Task_809E68C: @ 0x0809E68C
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

	thumb_func_start TaskDestructor_809E774
TaskDestructor_809E774: @ 0x0809E774
	bx lr
	.align 2, 0

	thumb_func_start Task_809E778
Task_809E778: @ 0x0809E778
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
	bl CreateMultiPakConnectionCheck
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

	thumb_func_start TaskDestructor_809E858
TaskDestructor_809E858: @ 0x0809E858
	bx lr
	.align 2, 0

@ ---------- unsure about split ----------
@ sub_809E85C() only referenced once above, so probably part of module

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
	ldr r0, _0809E8E4 @ =Task_809EBF4
	movs r1, #0xf0
	lsls r1, r1, #1     @ 0x1E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0809E8E8 @ =TaskDestructor_809F84C
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
	ldr r3, _0809E8F0 @ =0x00000366 @ .language
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
_0809E8E4: .4byte Task_809EBF4
_0809E8E8: .4byte TaskDestructor_809F84C
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
	ldr r5, _0809EB6C @ =sAnimsTimeAttackDigits
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
_0809EB6C: .4byte sAnimsTimeAttackDigits
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
	lsls r1, r1, #1         @ Tilemap-ID: 354 (Stage preview icons)
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

	thumb_func_start Task_809EBF4
Task_809EBF4: @ 0x0809EBF4
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
	ldr r5, _0809F5E0 @ =sAnimsTimeAttackDigits
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
_0809F5E0: .4byte sAnimsTimeAttackDigits

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

	thumb_func_start TaskDestructor_809F84C
TaskDestructor_809F84C: @ 0x0809F84C
	bx lr
	.align 2, 0
