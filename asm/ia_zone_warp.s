.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of ZoneWarp ---

	thumb_func_start CreateEntity_ZoneWarp
CreateEntity_ZoneWarp: @ 0x0802D718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	movs r5, #0
	ldrb r1, [r4, #7]
	movs r0, #1
	ands r1, r0
	ldr r3, _0802D7E4 @ =gStageData
	ldr r6, _0802D7E8 @ =gSaveGame
	cmp r1, #0
	bne _0802D760
	movs r2, #1
_0802D746:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _0802D760
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0802D746
_0802D760:
	ldrb r1, [r3, #9]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0802D770
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802D770:
	ldrb r0, [r6, #0x11]
	subs r0, #1
	lsls r1, r5, #0x10
	asrs r6, r1, #0x10
	cmp r0, r6
	blt _0802D7D4
	ldr r0, _0802D7EC @ =sub_802D7FC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802D7F0 @ =sub_802DC0C
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r2, _0802D7F4 @ =0x0300000C
	adds r1, r3, r2
	strh r7, [r0, #4]
	mov r2, r8
	strh r2, [r0, #6]
	str r4, [r0]
	ldrb r2, [r4]
	strb r2, [r0, #0xa]
	mov r2, sb
	strb r2, [r0, #0xb]
	ldr r0, _0802D7F8 @ =0x03000034
	adds r3, r3, r0
	strb r5, [r3]
	ldrb r0, [r4]
	lsls r0, r0, #3
	lsls r2, r7, #8
	adds r0, r0, r2
	strh r0, [r1, #0x10]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r2, r3, #8
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r4]
	adds r0, r6, #0
	bl sub_802DC20
_0802D7D4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D7E4: .4byte gStageData
_0802D7E8: .4byte gSaveGame
_0802D7EC: .4byte sub_802D7FC
_0802D7F0: .4byte sub_802DC0C
_0802D7F4: .4byte 0x0300000C
_0802D7F8: .4byte 0x03000034

	thumb_func_start sub_802D7FC
sub_802D7FC: @ 0x0802D7FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0802D8B0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _0802D8B4 @ =0x0300000C
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [r2]
	ldr r5, _0802D8B8 @ =gStageData
	ldrb r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802D8BC @ =gPlayers
	adds r4, r0, r1
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802D89E
	ldrb r5, [r5, #6]
	cmp r5, #0
	bne _0802D89E
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0802D89E
	adds r0, r4, #0
	bl sub_8016F28
	ldr r0, [r4, #4]
	ldr r1, _0802D8C0 @ =0x30000002
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xb
	strh r0, [r4, #0x30]
	strh r5, [r4, #0x1c]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8004FF8
	movs r0, #0x6d
	bl sub_8003DF0
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0802D8C4 @ =sub_802D8C8
	str r0, [r1, #8]
_0802D89E:
	bl sub_802DB9C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D8B0: .4byte gCurTask
_0802D8B4: .4byte 0x0300000C
_0802D8B8: .4byte gStageData
_0802D8BC: .4byte gPlayers
_0802D8C0: .4byte 0x30000002
_0802D8C4: .4byte sub_802D8C8

	thumb_func_start sub_802D8C8
sub_802D8C8: @ 0x0802D8C8
	push {r4, r5, r6, lr}
	ldr r0, _0802D91C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802D920 @ =gPlayers
	adds r4, r0, r1
	ldr r3, _0802D924 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, [r5]
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0x10]
	cmp r2, r0
	beq _0802D93A
	cmp r2, r0
	bge _0802D92C
	ldr r6, _0802D928 @ =0xFFFFFE00
	adds r0, r0, r6
	str r0, [r4, #0x10]
	cmp r0, r2
	bgt _0802D93A
	b _0802D938
	.align 2, 0
_0802D91C: .4byte gStageData
_0802D920: .4byte gPlayers
_0802D924: .4byte gCurTask
_0802D928: .4byte 0xFFFFFE00
_0802D92C:
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r4, #0x10]
	cmp r0, r2
	blt _0802D93A
_0802D938:
	str r2, [r4, #0x10]
_0802D93A:
	ldr r0, [r4, #0x14]
	cmp r1, r0
	beq _0802D962
	cmp r1, r0
	bge _0802D954
	ldr r6, _0802D950 @ =0xFFFFFE00
	adds r0, r0, r6
	str r0, [r4, #0x14]
	cmp r0, r1
	bgt _0802D962
	b _0802D960
	.align 2, 0
_0802D950: .4byte 0xFFFFFE00
_0802D954:
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r4, #0x14]
	cmp r0, r1
	blt _0802D962
_0802D960:
	str r1, [r4, #0x14]
_0802D962:
	ldr r0, [r4, #0x10]
	cmp r2, r0
	bne _0802D978
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _0802D978
	ldr r0, [r3]
	ldr r1, _0802D99C @ =sub_802D9A8
	str r1, [r0, #8]
	movs r0, #0x78
	strh r0, [r5, #8]
_0802D978:
	bl sub_802DB9C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0802D994
	ldr r0, _0802D9A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D9A4 @ =sub_802DADC
	str r0, [r1, #8]
	movs r0, #0x1e
	strh r0, [r5, #8]
_0802D994:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D99C: .4byte sub_802D9A8
_0802D9A0: .4byte gCurTask
_0802D9A4: .4byte sub_802DADC

	thumb_func_start sub_802D9A8
sub_802D9A8: @ 0x0802D9A8
	push {r4, r5, r6, lr}
	ldr r0, _0802DA04 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802DA08 @ =gPlayers
	adds r4, r0, r1
	ldr r6, _0802DA0C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_802DB9C
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #8]
	subs r2, r0, #1
	strh r2, [r5, #8]
	ldrh r3, [r4, #0x1e]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0802D9F4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0802DA18
_0802D9F4:
	ldr r1, _0802DA10 @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, [r6]
	ldr r0, _0802DA14 @ =sub_802DADC
	str r0, [r1, #8]
	b _0802DA2C
	.align 2, 0
_0802DA04: .4byte gStageData
_0802DA08: .4byte gPlayers
_0802DA0C: .4byte gCurTask
_0802DA10: .4byte Player_800DB30
_0802DA14: .4byte sub_802DADC
_0802DA18:
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _0802DA26
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0802DA30
_0802DA26:
	ldr r0, [r6]
	ldr r1, _0802DA38 @ =sub_802DA3C
	str r1, [r0, #8]
_0802DA2C:
	movs r0, #0x1e
	strh r0, [r5, #8]
_0802DA30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA38: .4byte sub_802DA3C

	thumb_func_start sub_802DA3C
sub_802DA3C: @ 0x0802DA3C
	push {r4, r5, lr}
	ldr r0, _0802DAB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r4, _0802DABC @ =gStageData
	ldr r0, _0802DAC0 @ =0x03000034
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r4, #9]
	movs r0, #2
	strb r0, [r4, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #2
	movs r5, #0
	strh r0, [r4, #0xe]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #2
	strh r0, [r4, #0x12]
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _0802DA86
	ldrb r1, [r4, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_80275B8
_0802DA86:
	bl sub_8003D2C
	ldr r1, _0802DAC4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0802DAC8 @ =gUnknown_03003F94
	ldr r0, _0802DACC @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0802DAD0 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0802DAD4 @ =gVramGraphicsCopyCursor
	ldr r0, _0802DAD8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4, #9]
	movs r1, #0
	movs r2, #0
	bl sub_8057AA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DAB8: .4byte gCurTask
_0802DABC: .4byte gStageData
_0802DAC0: .4byte 0x03000034
_0802DAC4: .4byte 0x0000FFFF
_0802DAC8: .4byte gUnknown_03003F94
_0802DACC: .4byte gUnknown_03003D20
_0802DAD0: .4byte gUnknown_03006840
_0802DAD4: .4byte gVramGraphicsCopyCursor
_0802DAD8: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_802DADC
sub_802DADC: @ 0x0802DADC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0802DB84 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802DB88 @ =gPlayers
	adds r5, r0, r1
	ldr r0, _0802DB8C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0802DB90 @ =0x0300000C
	adds r1, r1, r0
	mov r8, r1
	ldr r2, [r4]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #0x1a]
	adds r0, #0x2a
	strh r0, [r5, #0x1a]
	bl sub_802DB9C
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0802DB74
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0802DB74
	ldr r0, [r5, #4]
	ldr r1, _0802DB94 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0802DB98 @ =sub_802D7FC
	str r0, [r1, #8]
_0802DB74:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DB84: .4byte gStageData
_0802DB88: .4byte gPlayers
_0802DB8C: .4byte gCurTask
_0802DB90: .4byte 0x0300000C
_0802DB94: .4byte 0xEFFFFFFF
_0802DB98: .4byte sub_802D7FC

	thumb_func_start sub_802DB9C
sub_802DB9C: @ 0x0802DB9C
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802DBF0 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r6, [r4]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _0802DBF4 @ =gCamera
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r0, r2
	strh r2, [r5, #0x10]
	ldr r2, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r5, #0x12]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0802DBF8
	ldrb r0, [r4, #0xa]
	strb r0, [r6]
	ldr r0, [r7]
	bl TaskDestroy
	b _0802DC04
	.align 2, 0
_0802DBF0: .4byte gCurTask
_0802DBF4: .4byte gCamera
_0802DBF8:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0802DC04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802DC0C
sub_802DC0C: @ 0x0802DC0C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_802DC20
sub_802DC20: @ 0x0802DC20
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x18
	bl VramMalloc
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	movs r0, #0xda
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	lsls r4, r4, #1
	adds r4, #1
	strb r4, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	str r1, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

@ --- End of ZoneWarp ---
