.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_802D9A8
Task_802D9A8: @ 0x0802D9A8
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
	ldr r0, _0802DA14 @ =Task_802DADC
	str r0, [r1, #8]
	b _0802DA2C
	.align 2, 0
_0802DA04: .4byte gStageData
_0802DA08: .4byte gPlayers
_0802DA0C: .4byte gCurTask
_0802DA10: .4byte Player_800DB30
_0802DA14: .4byte Task_802DADC
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

	thumb_func_start Task_802DADC
Task_802DADC: @ 0x0802DADC
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
	ldr r0, _0802DB98 @ =Task_ZoneWarpInit
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
_0802DB98: .4byte Task_ZoneWarpInit

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

	thumb_func_start TaskDestructor_ZoneWarp
TaskDestructor_ZoneWarp: @ 0x0802DC0C
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
