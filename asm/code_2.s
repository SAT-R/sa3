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
	lsls r1, r1, #3
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
	ldr r0, _0809CDB4 @ =Task_809E3B8
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
_0809CDB4: .4byte Task_809E3B8
_0809CDB8: .4byte TaskDestructor_809E4DC
_0809CDBC: .4byte 0xFFFFD800
_0809CDC0: .4byte gUnknown_080D9644
_0809CDC4: .4byte gUnknown_080D9640

@ Called by Task_809E3B8 with its task-type
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

@ Called by Task_809E3B8 with its task-type
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

	thumb_func_start TaskDestructor_809E3B4
TaskDestructor_809E3B4: @ 0x0809E3B4
	bx lr
	.align 2, 0

	thumb_func_start Task_809E3B8
Task_809E3B8: @ 0x0809E3B8
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

	thumb_func_start TaskDestructor_809E4DC
TaskDestructor_809E4DC: @ 0x0809E4DC
	bx lr
	.align 2, 0

@ ---------- sub_809CC80 split??? ----------

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

@ ----------

@ Probably VERY similar to the Singleplayer Character Select
@ Called as follows in Task_EC_808D718();
@ extern void CreateCharacterSelectMultiplayer(SDC_EC *strcEC);
	thumb_func_start CreateCharacterSelectMultiplayer
CreateCharacterSelectMultiplayer: @ 0x0809F850
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0809F944 @ =gDispCnt
	ldr r2, _0809F948 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809F94C @ =Task_809FCFC
	movs r1, #0xad
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0809F950 @ =TaskDestructor_80A13B0
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
_0809F94C: .4byte Task_809FCFC
_0809F950: .4byte TaskDestructor_80A13B0
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

	thumb_func_start Task_809FCFC
Task_809FCFC: @ 0x0809FCFC
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
	bl CreateSomeTask_809BF3C
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
	ldr r0, _0809FEAC @ =Task_809FEB0
_0809FE9E:
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FEA8: .4byte gCurTask
_0809FEAC: .4byte Task_809FEB0

	thumb_func_start Task_809FEB0
Task_809FEB0: @ 0x0809FEB0
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
	ldr r0, _080A00D8 @ =Task_809FEB0
	b _080A00FC
	.align 2, 0
_080A00D8: .4byte Task_809FEB0
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
	ldr r0, _080A0164 @ =Task_809FEB0
	b _080A0188
	.align 2, 0
_080A0164: .4byte Task_809FEB0
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
	bl CreateSomeTask_809BF3C
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
	ldr r0, _080A0320 @ =Task_809FEB0
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A0320: .4byte Task_809FEB0
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
	bl CopyObjPaletteMasked
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
	bl CopyObjPaletteMasked
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

	thumb_func_start TaskDestructor_80A13B0
TaskDestructor_80A13B0: @ 0x080A13B0
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
	ldr r0, _080A1494 @ =Task_809FEB0
	str r0, [r1, #8]
_080A148E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1494: .4byte Task_809FEB0

	thumb_func_start Task_CallDestroy_80A1498
Task_CallDestroy_80A1498: @ 0x080A1498
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
	ldr r0, _080A14E0 @ =Task_CallDestroy_80A1498
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A14DC: .4byte gCurTask
_080A14E0: .4byte Task_CallDestroy_80A1498

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

@ ----------

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
	ldr r0, _080A1B18 @ =Task_80A1BEC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A1B1C @ =TaskDestructor_80A2098
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
_080A1B18: .4byte Task_80A1BEC
_080A1B1C: .4byte TaskDestructor_80A2098
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

	thumb_func_start Task_80A1BEC
Task_80A1BEC: @ 0x080A1BEC
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
	bl CreateMainMenu
	b _080A1DB4
_080A1D9E:
	cmp r1, #3
	bne _080A1DAC
	movs r0, #0
	movs r1, #4
	bl CreateMainMenu
	b _080A1DB4
_080A1DAC:
	movs r0, #0
	movs r1, #0
	bl CreateMainMenu
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
	movs r0, #0x6b      @ SE_ABORT
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
	movs r0, #0x63      @ MUS_VS_SUCCESS
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
	ldr r4, _080A2020 @ =gTilemapIdsConnectionStatus
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
_080A2020: .4byte gTilemapIdsConnectionStatus

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
	ldr r2, _080A2088 @ =gTilemapIdsConnectionStatus
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
_080A2088: .4byte gTilemapIdsConnectionStatus

	thumb_func_start sub_80A208C
sub_80A208C: @ 0x080A208C
	push {lr}
	adds r0, #0x94
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_80A2098
TaskDestructor_80A2098: @ 0x080A2098
	bx lr
	.align 2, 0

@ ----------

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
	lsls r1, r1, #1         @ 424 - Opening Sky/Grass Tilemap
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
	ldr r1, _080A2298 @ =0x000001A7 @ Opening Circular Flash
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
	ldr r0, _080A22A4 @ =0x000001A9 @ Presented by SEGA logo
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
	lsls r0, r0, #1         @ Create by Sonic Team Logo
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
	ldr r0, _080A269C @ =Task_80A2A9C
	b _080A26EC
	.align 2, 0
_080A2698: .4byte gCurTask
_080A269C: .4byte Task_80A2A9C
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
	ldr r0, _080A26C0 @ =Task_80A2A9C
	b _080A26EC
	.align 2, 0
_080A26BC: .4byte gCurTask
_080A26C0: .4byte Task_80A2A9C
_080A26C4:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r6, r2
	b _080A26E2
_080A26CC:
	ldr r0, _080A26D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26D8 @ =Task_80A2A9C
	b _080A26EC
	.align 2, 0
_080A26D4: .4byte gCurTask
_080A26D8: .4byte Task_80A2A9C
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

	thumb_func_start Task_80A2A9C
Task_80A2A9C: @ 0x080A2A9C
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
	lsls r1, r1, #1         @ Opening Eggman
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
	bl CreateSomeTask_809BF3C
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
