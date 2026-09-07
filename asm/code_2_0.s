.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?

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
