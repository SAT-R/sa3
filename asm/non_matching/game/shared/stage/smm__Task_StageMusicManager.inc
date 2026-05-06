
.syntax unified
.text
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
	bl MusManager_Fadeout
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
	movs r0, #0x4b		@ MUS_DROWNING
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
	movs r0, #0x4b		@ MUS_DROWNING
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
	movs r0, #0x49		@ MUS_INVINCIBILITY
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
	movs r0, #0x49		@ MUS_INVINCIBILITY
	bl m4aSongNumStart
	b _08029988
_08029928:
	ldrb r5, [r4, #3]
	cmp r5, #0
	beq _0802993C
	strb r0, [r4, #3]
	movs r0, #1
	strb r0, [r4, #5]
	movs r0, #0x53		@ MUS_1_UP
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
	bl MusManager_UpdateBgmParams
_08029954:
	strb r5, [r4, #1]
	bl MusManager_TempoSettings
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
	bl MusManager_UpdateBgmParams
	b _08029988
	.align 2, 0
_08029980: .4byte gMPlayInfo_BGM
_08029984:
	bl MusManager_TempoSettings
_08029988:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
