.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_80297BC
Task_80297BC: @ 0x080297BC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802980C @ =gMPlayTable
	ldr r0, [r0]
	ldr r7, [r0]
	ldr r0, _08029810 @ =gMusicManagerState
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080297D0
	b _08029988
_080297D0:
	ldr r2, _08029814 @ =gPlayers
	ldr r3, _08029818 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov ip, r0
	adds r0, r2, #4
	add r0, ip
	ldr r4, [r0]
	movs r5, #0x80
	lsls r5, r5, #1
	ands r5, r4
	cmp r5, #0
	beq _080297F4
	b _08029988
_080297F4:
	ldrh r0, [r6, #6]
	cmp r0, #0
	beq _0802981C
	bl sub_8029A5C
	movs r0, #0xff
	strb r0, [r6]
	strh r5, [r6, #6]
	movs r0, #1
	strb r0, [r6, #5]
	b _08029988
	.align 2, 0
_0802980C: .4byte gMPlayTable
_08029810: .4byte gMusicManagerState
_08029814: .4byte gPlayers
_08029818: .4byte gStageData
_0802981C:
	ldr r1, _08029874 @ =gSongTable
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r1, r5
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r7, r0
	bne _08029880
	ldr r0, _08029878 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08029880
	cmp r1, #0
	blt _08029880
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	beq _08029860
	add r2, ip
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bne _08029866
	adds r0, r2, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _08029866
_08029860:
	movs r0, #0x4b
	bl m4aSongNumStop
_08029866:
	ldr r0, _0802987C @ =gMusicManagerState
	movs r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	movs r1, #1
	strb r1, [r0, #5]
	b _08029988
	.align 2, 0
_08029874: .4byte gSongTable
_08029878: .4byte gMPlayInfo_BGM
_0802987C: .4byte gMusicManagerState
_08029880:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08029896
	movs r0, #0
	strb r0, [r6, #4]
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0x4b
	bl m4aSongNumStart
	b _08029988
_08029896:
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _080298D8
	ldr r0, _080298D4 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _080298D8
	cmp r1, #0
	blt _080298D8
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x4c
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bgt _080298D8
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0x49
	bl m4aSongNumStop
	b _08029988
	.align 2, 0
_080298D4: .4byte gMPlayInfo_BGM
_080298D8:
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r7, r0
	beq _08029910
	movs r4, #0x92
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r7, r0
	beq _08029910
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x4c
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _08029910
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08029918
	b _0802991A
_08029910:
	adds r4, r6, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08029928
_08029918:
	movs r0, #0
_0802991A:
	strb r0, [r6, #2]
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0x49
	bl m4aSongNumStart
	b _08029988
_08029928:
	ldrb r5, [r4, #3]
	cmp r5, #0
	beq _0802993C
	strb r0, [r4, #3]
	movs r0, #1
	strb r0, [r4, #5]
	movs r0, #0x53
	bl m4aSongNumStart
	b _08029988
_0802993C:
	ldrb r7, [r4, #1]
	cmp r7, #0
	beq _0802995C
	ldrh r0, [r4, #8]
	bl m4aSongNumStart
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _08029954
	strb r5, [r4, #5]
	bl sub_8029A30
_08029954:
	strb r5, [r4, #1]
	bl sub_8029A78
	b _08029988
_0802995C:
	ldr r0, _08029980 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0802996A
	cmp r1, #0
	bge _08029984
_0802996A:
	ldrh r0, [r6, #8]
	bl m4aSongNumStartOrContinue
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _08029988
	strb r7, [r6, #5]
	bl sub_8029A30
	b _08029988
	.align 2, 0
_08029980: .4byte gMPlayInfo_BGM
_08029984:
	bl sub_8029A78
_08029988:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	@ Input
	@ R0: songId
	thumb_func_start sub_8029990
sub_8029990: @ 0x08029990
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080299CC @ =Task_80297BC
	movs r2, #0x80
	lsls r2, r2, #7
	movs r5, #0
	str r5, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _080299D0 @ =gMusicManagerState
	movs r2, #0
	strh r4, [r0, #8]
	movs r1, #1
	strb r1, [r0, #1]
	strb r2, [r0]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strh r5, [r0, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080299CC: .4byte Task_80297BC
_080299D0: .4byte gMusicManagerState

	thumb_func_start sub_80299D4
sub_80299D4: @ 0x080299D4
	ldr r2, _080299E4 @ =gMusicManagerState
	movs r1, #0
	strb r1, [r2]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080299E4: .4byte gMusicManagerState

	thumb_func_start sub_80299E8
sub_80299E8: @ 0x080299E8
	ldr r2, _080299F8 @ =gMusicManagerState
	movs r1, #0
	strb r1, [r2]
	strh r0, [r2, #8]
	movs r0, #2
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080299F8: .4byte gMusicManagerState

	thumb_func_start sub_80299FC
sub_80299FC: @ 0x080299FC
	push {lr}
	ldr r0, _08029A10 @ =gMPlayInfo_BGM
	bl MPlayStop
	ldr r1, _08029A14 @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08029A10: .4byte gMPlayInfo_BGM
_08029A14: .4byte gMusicManagerState

	thumb_func_start sub_8029A18
sub_8029A18: @ 0x08029A18
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrContinue
	ldr r1, _08029A2C @ =gMusicManagerState
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08029A2C: .4byte gMusicManagerState

	thumb_func_start sub_8029A30
sub_8029A30: @ 0x08029A30
	push {r4, lr}
	ldr r4, _08029A58 @ =gMPlayInfo_BGM
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	bl sub_8029A78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029A58: .4byte gMPlayInfo_BGM

	thumb_func_start sub_8029A5C
sub_8029A5C: @ 0x08029A5C
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _08029A74 @ =gMPlayInfo_BGM
	lsrs r1, r1, #0x14
	bl m4aMPlayFadeOutTemporarily
	bl sub_8029A78
	pop {r0}
	bx r0
	.align 2, 0
_08029A74: .4byte gMPlayInfo_BGM

	thumb_func_start sub_8029A78
sub_8029A78: @ 0x08029A78
	push {lr}
	ldr r2, _08029AA4 @ =gPlayers
	ldr r0, _08029AA8 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x5e
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08029AB0
	ldr r0, _08029AAC @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
	b _08029AD6
	.align 2, 0
_08029AA4: .4byte gPlayers
_08029AA8: .4byte gStageData
_08029AAC: .4byte gMPlayInfo_BGM
_08029AB0:
	adds r0, r1, #0
	adds r0, #0x60
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08029ACC
	ldr r0, _08029AC8 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
	b _08029AD6
	.align 2, 0
_08029AC8: .4byte gMPlayInfo_BGM
_08029ACC:
	ldr r0, _08029ADC @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
_08029AD6:
	pop {r0}
	bx r0
	.align 2, 0
_08029ADC: .4byte gMPlayInfo_BGM
