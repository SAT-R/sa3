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

	thumb_func_start Task_270_809B8C8
Task_270_809B8C8: @ 0x0809B8C8
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
	ldr r0, _0809B96C @ =Task_270_809BF9C
	str r0, [r1, #8]
_0809B960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B968: .4byte gCurTask
_0809B96C: .4byte Task_270_809BF9C

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

.if 0
.endif
