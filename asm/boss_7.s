.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start Task_100_8076B58
Task_100_8076B58: @ 0x08076B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08076CB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xcc
	adds r0, r3, r0
	str r0, [sp]
	ldr r1, _08076CB4 @ =0x030000B3
	adds r2, r3, r1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08076CB8 @ =0x030000FC
	adds r0, r3, r2
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076C50
	ldr r1, _08076CBC @ =0x030000B1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076C50
	movs r2, #0
	mov sb, r2
	ldr r0, _08076CC0 @ =0x030000F4
	adds r0, r0, r3
	mov r8, r0
	movs r1, #5
	rsbs r1, r1, #0
	mov sl, r1
_08076BAC:
	mov r2, sb
	lsls r0, r2, #2
	add r0, r8
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08076C42
	movs r2, #0
	ldr r0, [r5, #0x14]
	asrs r1, r0, #8
	movs r0, #0xb2
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08076BD2
	ldr r0, _08076CC4 @ =0x000001C7
	cmp r1, r0
	bgt _08076BD4
_08076BD2:
	movs r2, #1
_08076BD4:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _08076BEC
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08076BEE
_08076BEC:
	movs r2, #0
_08076BEE:
	cmp r2, #0
	beq _08076C42
	mov r2, r8
	ldr r1, [r2]
	ldr r0, [r1, #4]
	movs r6, #0xc0
	lsls r6, r6, #0x10
	ands r0, r6
	cmp r0, #0
	beq _08076C16
	adds r0, r1, #0
	bl sub_8016F28
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x2c
	ldrb r0, [r1]
	mov r2, sl
	ands r0, r2
	strb r0, [r1]
_08076C16:
	adds r4, r7, #0
	adds r4, #0xf8
	ldr r1, [r4]
	ldr r0, [r1, #4]
	ands r0, r6
	cmp r0, #0
	beq _08076C3C
	adds r0, r1, #0
	bl sub_8016F28
	ldr r0, [r4]
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r3, sl
	ands r1, r3
	strb r1, [r0]
	ldr r0, [r4]
	bl Player_8005380
_08076C3C:
	adds r0, r5, #0
	bl Call__Player_8014550
_08076C42:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _08076BAC
_08076C50:
	adds r0, r7, #0
	adds r0, #0xb2
	ldrb r6, [r0]
	cmp r6, #0
	beq _08076D0C
	movs r5, #0
	adds r7, #0xf4
	mov r8, r7
_08076C60:
	lsls r0, r5, #2
	add r0, r8
	ldr r4, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08076CC8 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [sp]
	adds r1, r4, #0
	bl ResolvePlayerSpriteCollision
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _08076CCC @ =Player_800E67C
	bl SetPlayerCallback
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	ldr r1, _08076CD0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, _08076CD4 @ =0x000369FF
	cmp r1, r0
	ble _08076CDC
	adds r0, r1, #0
	ldr r1, _08076CD8 @ =0x0004A500
	cmp r0, r1
	ble _08076CDE
	adds r0, r1, #0
	b _08076CDE
	.align 2, 0
_08076CB0: .4byte gCurTask
_08076CB4: .4byte 0x030000B3
_08076CB8: .4byte 0x030000FC
_08076CBC: .4byte 0x030000B1
_08076CC0: .4byte 0x030000F4
_08076CC4: .4byte 0x000001C7
_08076CC8: .4byte 0xFFFEFFFF
_08076CCC: .4byte Player_800E67C
_08076CD0: .4byte 0xFFFFFEFF
_08076CD4: .4byte 0x000369FF
_08076CD8: .4byte 0x0004A500
_08076CDC:
	ldr r0, _08076D00 @ =0x00036A00
_08076CDE:
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08076C60
	ldr r0, _08076D04 @ =0x00000236
	bl m4aSongNumStart
	ldr r0, _08076D08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08076DB6
	.align 2, 0
_08076D00: .4byte 0x00036A00
_08076D04: .4byte 0x00000236
_08076D08: .4byte gCurTask
_08076D0C:
	adds r0, r7, #0
	bl sub_8076DD4
	ldr r4, _08076DC8 @ =gStageData
	ldrb r1, [r4, #6]
	adds r0, r7, #0
	bl sub_80772F0
	ldrb r0, [r4, #3]
	cmp r0, #5
	beq _08076D42
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08076DCC @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	bl sub_80772F0
_08076D42:
	str r6, [r7, #4]
	str r6, [r7, #0x54]
	adds r0, r7, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08076D62
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076DB6
_08076D62:
	adds r6, r7, #0
	adds r6, #0xcc
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, _08076DD0 @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r0, #0xc8
	adds r0, r0, r7
	mov r8, r0
	adds r7, #4
_08076D84:
	strh r4, [r6, #0x10]
	lsls r1, r5, #2
	adds r1, r7, r1
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, _08076DD0 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	cmp r5, #0x14
	bls _08076D84
_08076DB6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076DC8: .4byte gStageData
_08076DCC: .4byte gPlayers
_08076DD0: .4byte gCamera

	thumb_func_start sub_8076DD4
sub_8076DD4: @ 0x08076DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	movs r2, #0
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _08076DF0
	movs r0, #0
	str r0, [sp]
	b _08076E0A
_08076DF0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x14
	bhi _08076E0A
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08076DF0
	str r2, [sp]
_08076E0A:
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x12
	bls _08076E2E
	movs r3, #0
	mov r1, ip
	adds r1, #4
	movs r2, #0
_08076E1C:
	lsls r0, r3, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _08076E1C
	b _0807715C
_08076E2E:
	mov r2, ip
	adds r2, #0xbc
	ldr r1, [sp]
	lsls r3, r1, #2
	mov r1, ip
	adds r1, #4
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [r2]
	mov r0, ip
	adds r0, #0xb5
	ldrb r4, [r0]
	movs r5, #0x58
	add r5, ip
	mov sb, r5
	str r1, [sp, #0x14]
	str r2, [sp, #0xc]
	mov r8, r3
	adds r6, r0, #0
	movs r7, #0xc0
	add r7, ip
	mov sl, r7
	adds r0, #2
	str r0, [sp, #4]
	adds r1, #0xb4
	str r1, [sp, #8]
	ldr r2, [sp]
	subs r2, #1
	str r2, [sp, #0x10]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp, #0x18]
	cmp r4, #0
	beq _08076EBC
	movs r3, #1
	movs r5, #0
	mov ip, r6
	ldr r7, [sp, #0x14]
	mov r4, sb
_08076E7C:
	mov r0, sl
	ldr r2, [r0]
	cmp r2, #0
	bge _08076E94
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _08076EB8
	b _08076EA2
_08076E94:
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	ble _08076EB8
_08076EA2:
	adds r1, r4, r1
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0]
	adds r5, r5, r0
	cmp r3, #0
	bne _08076E7C
_08076EB8:
	movs r0, #0
	strb r0, [r6]
_08076EBC:
	mov r2, sb
	add r2, r8
	ldr r1, [r2]
	mov r3, sl
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r2]
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08076F0C
	ldr r0, [r3]
	cmp r0, #0
	bge _08076EF8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	bge _08076F0C
	movs r0, #0
	strb r0, [r1]
	b _08076F0C
_08076EF8:
	ldr r5, [sp, #4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	ble _08076F0C
	movs r0, #0
	strb r0, [r5]
_08076F0C:
	ldr r4, [sp, #8]
	ldrb r1, [r4]
	cmp r1, #0
	beq _08076F72
	ldr r7, [sp, #0xc]
	ldr r0, [r7]
	cmp r0, #0
	bge _08076F44
	ldr r0, [sp, #0x14]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	blt _08076F9C
	mov r2, sb
	add r2, r8
	ldr r0, [r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _08076F9C
_08076F44:
	cmp r0, #0
	beq _08076F9C
	ldr r0, [sp, #0x14]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bge _08076F9C
	mov r2, sb
	add r2, r8
	ldr r0, [r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	mov r2, sl
	ldr r0, [r2]
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _08076F9C
_08076F72:
	ldr r5, [sp, #0xc]
	ldr r0, [r5]
	cmp r0, #0
	bge _08076F86
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	cmp r0, #0
	blt _08076F9C
	b _08076F94
_08076F86:
	cmp r0, #0
	beq _08076F9C
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	cmp r0, #0
	bge _08076F9C
_08076F94:
	mov r0, sb
	add r0, r8
	str r1, [r0]
	str r1, [r2]
_08076F9C:
	ldr r4, [sp, #0x14]
	add r4, r8
	ldr r7, [sp, #0xc]
	ldr r0, [r7]
	ldr r1, [r4]
	subs r0, r0, r1
	str r0, [r7]
	mov r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bge _08077088
	ldr r3, [sp]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	adds r6, r5, #0
	cmp r5, #0
	bge _08076FD2
	rsbs r6, r5, #0
_08076FD2:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r4, r3, #0
	cmp r2, #0
	beq _0807701A
	ldr r7, _08077080 @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_08076FE8:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08076FFE
	ldr r1, _08077084 @ =0x00003FFF
	adds r0, r0, r1
_08076FFE:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	bne _08076FE8
_0807701A:
	movs r0, #0x14
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r4, r3, #0
	cmp r2, #0x13
	bls _08077040
	b _0807715C
_08077040:
	ldr r7, _08077080 @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_0807704A:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08077060
	ldr r1, _08077084 @ =0x00003FFF
	adds r0, r0, r1
_08077060:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x13
	bls _0807704A
	b _0807715C
	.align 2, 0
_08077080: .4byte gSineTable
_08077084: .4byte 0x00003FFF
_08077088:
	ldr r3, [sp]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r7, #0
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	adds r6, r5, #0
	cmp r5, #0
	bge _080770AA
	rsbs r6, r5, #0
_080770AA:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	subs r0, r7, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	beq _080770F6
	ldr r7, _0807716C @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_080770C4:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _080770DA
	ldr r1, _08077170 @ =0x00003FFF
	adds r0, r0, r1
_080770DA:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	bne _080770C4
_080770F6:
	movs r0, #0x14
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	subs r4, r4, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r2, #0x13
	bhi _0807715C
	ldr r7, _0807716C @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_0807712A:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08077140
	ldr r1, _08077170 @ =0x00003FFF
	adds r0, r0, r1
_08077140:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x13
	bls _0807712A
_0807715C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807716C: .4byte gSineTable
_08077170: .4byte 0x00003FFF

	thumb_func_start sub_8077174
sub_8077174: @ 0x08077174
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0
	mov sb, r1
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	movs r3, #0
	movs r4, #0
	movs r5, #0
	ldr r2, _080771DC @ =0x03000004
	adds r7, r1, r2
	adds r0, r2, #0
	adds r0, r0, r1
	mov r8, r0
	adds r2, #0x54
	adds r1, r1, r2
_0807719E:
	lsls r2, r3, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080771AE
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080771AE:
	adds r0, r1, r2
	ldr r0, [r0]
	mov r6, ip
	adds r6, #0x58
	cmp r0, #0
	bne _080771C0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080771C0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _0807719E
	cmp r4, #0x15
	bne _080771E0
	mov r1, ip
	adds r1, #0xb7
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov sb, r0
	b _0807722A
	.align 2, 0
_080771DC: .4byte 0x03000004
_080771E0:
	cmp r5, #0x15
	bne _0807722A
	movs r1, #0
	movs r3, #0
	movs r4, #0
	mov r5, r8
_080771EC:
	lsls r0, r3, #2
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #0
	bge _080771F8
	rsbs r0, r0, #0
_080771F8:
	cmp r0, r1
	ble _08077206
	ldr r1, [r2]
	cmp r1, #0
	bge _08077204
	rsbs r1, r1, #0
_08077204:
	adds r4, r3, #0
_08077206:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _080771EC
	lsls r1, r4, #2
	mov r2, r8
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _08077222
	adds r1, r6, r1
	movs r0, #0x20
	b _08077228
_08077222:
	adds r1, r6, r1
	movs r0, #0x20
	rsbs r0, r0, #0
_08077228:
	str r0, [r1]
_0807722A:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8077238
sub_8077238: @ 0x08077238
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	asrs r2, r2, #8
	ldr r1, _08077274 @ =0xFFFFFCA0
	adds r0, r2, r1
	cmp r0, #0
	bge _08077262
	adds r1, #0xf
	adds r0, r2, r1
_08077262:
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08077278
	movs r4, #0
	b _0807727E
	.align 2, 0
_08077274: .4byte 0xFFFFFCA0
_08077278:
	cmp r0, #0x14
	ble _0807727E
	movs r4, #0x14
_0807727E:
	movs r1, #0
	lsls r2, r4, #0x18
	mov r3, ip
	adds r3, #0x58
	movs r0, #0xc0
	add r0, ip
	mov r8, r0
	movs r0, #0xb7
	add ip, r0
	asrs r6, r2, #0x18
	adds r5, r3, #0
	movs r7, #0
_08077296:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, r6
	beq _080772A4
	lsls r0, r1, #2
	adds r0, r5, r0
	str r7, [r0]
_080772A4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08077296
	mov r1, sl
	cmp r1, #0
	beq _080772CA
	asrs r0, r2, #0x16
	adds r0, r3, r0
	mov r1, sb
	adds r1, #1
	str r1, [r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	mov r2, r8
	str r0, [r2]
	b _080772DC
_080772CA:
	asrs r0, r2, #0x16
	adds r0, r3, r0
	mov r2, sb
	rsbs r1, r2, #0
	adds r1, #1
	str r1, [r0]
	movs r0, #0x80
	mov r1, r8
	str r0, [r1]
_080772DC:
	mov r2, ip
	strb r4, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80772F0
sub_80772F0: @ 0x080772F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0xcc
	adds r0, r0, r6
	mov r8, r0
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf4
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r7, r0, #0
	subs r7, #0xa0
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r3, _0807734C @ =0xFFFFFCA0
	adds r0, r1, r3
	cmp r0, #0
	bge _08077338
	ldr r2, _08077350 @ =0xFFFFFCAF
	adds r0, r1, r2
_08077338:
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	str r3, [sp, #8]
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08077354
	movs r0, #0
	str r0, [sp, #8]
	b _0807735C
	.align 2, 0
_0807734C: .4byte 0xFFFFFCA0
_08077350: .4byte 0xFFFFFCAF
_08077354:
	cmp r0, #0x14
	ble _0807735C
	movs r1, #0x14
	str r1, [sp, #8]
_0807735C:
	ldr r2, [sp, #8]
	lsls r3, r2, #0x18
	asrs r5, r3, #0x18
	lsls r0, r5, #4
	adds r7, r7, r0
	adds r0, r6, #0
	adds r0, #0xc8
	lsls r1, r5, #2
	adds r2, r6, #4
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	str r0, [sp, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	mov sb, r3
	mov sl, r2
	cmp r0, #0
	beq _080773C6
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080773C6
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _080773C6
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _080773B4
	ldr r0, [r4, #0x14]
	ldr r3, _080773B0 @ =0xFFFFFC00
	adds r0, r0, r3
	b _080773BC
	.align 2, 0
_080773B0: .4byte 0xFFFFFC00
_080773B4:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
_080773BC:
	adds r1, r6, #0
	adds r1, #0xbc
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080773C6:
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080773D0
	rsbs r1, r1, #0
_080773D0:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _080773DC
	movs r3, #1
	str r3, [sp, #0xc]
_080773DC:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0807742C
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0x14]
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r3, r2, #0
	ands r3, r1
	cmp r3, #0
	beq _08077412
	ldr r0, [r4, #4]
	ands r0, r1
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0807742C
_08077412:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807742C
	ldr r1, [r4, #0x14]
	ldr r7, _08077480 @ =0xFFFFFF00
	adds r1, r1, r7
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	subs r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807742C:
	ldr r0, _08077484 @ =gStageData
	ldr r1, [sp, #4]
	ldrb r0, [r0, #6]
	cmp r1, r0
	beq _08077438
	b _080776B8
_08077438:
	adds r0, r6, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080774CC
	adds r0, r6, #0
	adds r0, #0xb7
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0
	beq _080774E0
	movs r3, #0
	ldr r2, [r4, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080774E0
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080774E0
	adds r0, r6, #0
	adds r0, #0xfc
	ldr r1, [r0]
	adds r1, #0x23
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _08077488
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	rsbs r0, r2, #0
	lsrs r3, r0, #0x1f
	b _08077494
	.align 2, 0
_08077480: .4byte 0xFFFFFF00
_08077484: .4byte gStageData
_08077488:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	bne _08077494
	movs r3, #1
_08077494:
	movs r2, #0
	ldrsb r2, [r7, r2]
	subs r0, r2, #3
	mov r7, sb
	asrs r1, r7, #0x18
	cmp r0, r1
	bgt _080774E0
	adds r0, r2, #3
	cmp r0, r1
	blt _080774E0
	cmp r3, #0
	beq _080774E0
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080774E0
	ldr r1, _080774C8 @ =Player_80068EC
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _080774E0
	.align 2, 0
_080774C8: .4byte Player_80068EC
_080774CC:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080774E0
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080774E0
	movs r0, #1
	str r0, [sp, #0x10]
_080774E0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _080774E8
	b _08077646
_080774E8:
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r3, sb
	asrs r1, r3, #0x18
	adds r7, r0, #0
	cmp r2, r1
	bne _0807756E
	cmp r2, #0
	bne _08077500
	b _08077640
_08077500:
	cmp r2, #0x14
	bne _08077506
	b _08077640
_08077506:
	lsls r2, r2, #2
	subs r0, #0x5c
	adds r3, r0, r2
	ldr r0, [r3]
	cmp r0, #0
	bge _08077514
	rsbs r0, r0, #0
_08077514:
	cmp r0, #0x80
	ble _0807751A
	b _08077640
_0807751A:
	add r2, sl
	ldr r1, [r2]
	cmp r1, #0
	bge _08077524
	rsbs r1, r1, #0
_08077524:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0807752E
	b _08077640
_0807752E:
	ldr r0, [r2]
	cmp r0, #0
	beq _0807753E
	adds r0, r6, #0
	adds r0, #0xc0
	ldr r0, [r0]
	rsbs r0, r0, #0
	b _0807763E
_0807753E:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807755C
	ldr r0, _08077558 @ =0xFFFFFC00
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0x80
	str r0, [r1]
	b _08077640
	.align 2, 0
_08077558: .4byte 0xFFFFFC00
_0807755C:
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r1]
	b _08077640
_0807756E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0807758E
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	cmp r1, #0
	bge _08077586
	rsbs r1, r1, #0
_08077586:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _08077594
_0807758E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08077640
_08077594:
	mov r1, sb
	asrs r0, r1, #0x18
	cmp r0, #0
	beq _08077640
	cmp r0, #0x14
	beq _08077640
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x58
	movs r2, #0xc0
	adds r2, r2, r6
	mov r8, r2
	adds r6, #0xb5
	mov ip, r6
	adds r5, r0, #0
	adds r2, r3, #0
	movs r6, #0
_080775B6:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, r5
	beq _080775C4
	lsls r0, r1, #2
	adds r0, r2, r0
	str r6, [r0]
_080775C4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _080775B6
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _080775EC
	mov r2, sb
	asrs r1, r2, #0x16
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	cmp r2, #0
	bge _080775E6
	rsbs r2, r2, #0
_080775E6:
	ldr r0, _08077600 @ =0x00000DFF
	cmp r2, r0
	ble _08077608
_080775EC:
	mov r1, sb
	asrs r0, r1, #0x16
	adds r2, r3, r0
	ldr r1, _08077604 @ =gUnknown_080D5998
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #1
	str r0, [r2]
	b _08077610
	.align 2, 0
_08077600: .4byte 0x00000DFF
_08077604: .4byte gUnknown_080D5998
_08077608:
	adds r1, r3, r1
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
_08077610:
	mov r2, sp
	ldrb r0, [r2, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08077638
	mov r1, sb
	asrs r0, r1, #0x16
	adds r0, r3, r0
	ldr r1, [r0]
	rsbs r1, r1, #0
	str r1, [r0]
	movs r0, #0x80
	mov r2, r8
	str r0, [r2]
	b _08077640
_08077638:
	movs r0, #0x80
	rsbs r0, r0, #0
	mov r3, r8
_0807763E:
	str r0, [r3]
_08077640:
	mov r0, sp
	ldrb r0, [r0, #8]
	b _080776B6
_08077646:
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _080776B4
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _080776B4
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x58
	adds r5, r7, #0
	adds r2, r3, #0
	movs r6, #0
_08077672:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08077684
	lsls r0, r1, #2
	adds r0, r2, r0
	str r6, [r0]
_08077684:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08077672
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r0, #0
	bne _080776B4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080776B0
	movs r0, #0x20
	rsbs r0, r0, #0
	b _080776B2
_080776B0:
	movs r0, #0x20
_080776B2:
	str r0, [r2]
_080776B4:
	movs r0, #0xff
_080776B6:
	strb r0, [r7]
_080776B8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_D8_EggGravityInit
Task_D8_EggGravityInit: @ 0x080776C8
	push {r4, r5, lr}
	ldr r4, _080776E8 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080776EC
	adds r0, r2, #0
	bl TaskDestroy
	b _0807770C
	.align 2, 0
_080776E8: .4byte gCurTask
_080776EC:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08077700
	ldr r1, [r4]
	ldr r0, _080776FC @ =Task_D8_8077718
	b _08077704
	.align 2, 0
_080776FC: .4byte Task_D8_8077718
_08077700:
	ldr r1, [r4]
	ldr r0, _08077714 @ =sub_8077764
_08077704:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8076328
_0807770C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08077714: .4byte sub_8077764

	thumb_func_start Task_D8_8077718
Task_D8_8077718: @ 0x08077718
	push {r4, r5, lr}
	ldr r5, _08077738 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0807773C
	adds r0, r2, #0
	bl TaskDestroy
	b _0807775A
	.align 2, 0
_08077738: .4byte gCurTask
_0807773C:
	adds r0, r4, #0
	bl sub_8076328
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0807775A
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807775A
	ldr r1, [r5]
	ldr r0, _08077760 @ =sub_8077764
	str r0, [r1, #8]
_0807775A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08077760: .4byte sub_8077764

	thumb_func_start sub_8077764
sub_8077764: @ 0x08077764
	push {r4, r5, lr}
	ldr r5, _08077784 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08077788
	adds r0, r2, #0
	bl TaskDestroy
	b _080777A0
	.align 2, 0
_08077784: .4byte gCurTask
_08077788:
	adds r0, r4, #0
	bl sub_8076328
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080777A0
	movs r0, #0
	strh r0, [r4, #0x30]
	ldr r1, [r5]
	ldr r0, _080777A8 @ =Task_D8_8075064
	str r0, [r1, #8]
_080777A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080777A8: .4byte Task_D8_8075064

	thumb_func_start Task_D8_80777AC
Task_D8_80777AC: @ 0x080777AC
	push {r4, lr}
	ldr r0, _08077808 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080777FC
	movs r1, #0
	ldr r3, _0807780C @ =gPlayers
	ldr r2, _08077810 @ =0x000001C1
_080777CA:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	cmp r0, r2
	ble _08077802
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080777CA
	movs r0, #0x34
	bl sub_80299D4
	ldr r0, _08077808 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08077814 @ =Task_D8_8075204
	str r0, [r1, #8]
_080777FC:
	adds r0, r4, #0
	bl sub_8076328
_08077802:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08077808: .4byte gCurTask
_0807780C: .4byte gPlayers
_08077810: .4byte 0x000001C1
_08077814: .4byte Task_D8_8075204

	thumb_func_start sub_8077818
sub_8077818: @ 0x08077818
	bx lr
	.align 2, 0

	thumb_func_start sub_807781C
sub_807781C: @ 0x0807781C
	bx lr
	.align 2, 0

	thumb_func_start sub_8077820
sub_8077820: @ 0x08077820
	push {lr}
	ldr r0, _0807784C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x50]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x54]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_8076328
	pop {r0}
	bx r0
	.align 2, 0
_0807784C: .4byte gCurTask

	thumb_func_start TaskDestructor_EggGravity
TaskDestructor_EggGravity: @ 0x08077850
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x48]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	ldr r0, [r4, #0x58]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8077874
sub_8077874: @ 0x08077874
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0x58
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _080778C0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080778A0
	cmp r1, #8
	beq _080778A0
	cmp r1, #0x10
	bne _080778C0
_080778A0:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080778C0
	ldr r1, [r4]
	ldr r0, [r4, #0x14]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
_080778C0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
    .align 2 , 0
    
    thumb_func_start sub_80778C8
sub_80778C8:
    bx lr
	
    thumb_func_start sub_80778CC
sub_80778CC:
    bx lr
	
	thumb_func_start sub_80778D0
sub_80778D0: @ 0x080778D0
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x22
	ldrb r0, [r3]
	cmp r0, #0
	beq _080778F4
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r1, _080778F0 @ =0xFFFF7400
	cmp r0, r1
	bge _0807790E
	movs r0, #0
	b _08077906
	.align 2, 0
_080778F0: .4byte 0xFFFF7400
_080778F4:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r1, #0x8c
	lsls r1, r1, #8
	cmp r0, r1
	ble _0807790E
	movs r0, #1
_08077906:
	strb r0, [r3]
	ldr r0, [r2, #8]
	rsbs r0, r0, #0
	str r0, [r2, #8]
_0807790E:
	movs r0, #0
	str r0, [r2, #0x18]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8077918
sub_8077918: @ 0x08077918
	push {lr}
	adds r2, r0, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807793C
	ldr r0, _08077938 @ =gUnknown_080D5954
	adds r1, r2, #0
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	rsbs r0, r0, #0
	b _0807794A
	.align 2, 0
_08077938: .4byte gUnknown_080D5954
_0807793C:
	ldr r0, _08077950 @ =gUnknown_080D5954
	adds r1, r2, #0
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0807794A:
	str r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08077950: .4byte gUnknown_080D5954

	thumb_func_start sub_8077954
sub_8077954: @ 0x08077954
	lsls r1, r1, #0x18
	adds r0, #0x80
	ldr r2, _08077970 @ =gUnknown_080D5904
	lsrs r1, r1, #0x16
	adds r1, r1, r2
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrh r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldr r1, _08077974 @ =0x0000FFFF
	strh r1, [r0, #0x18]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0
_08077970: .4byte gUnknown_080D5904
_08077974: .4byte 0x0000FFFF

	thumb_func_start sub_8077978
sub_8077978: @ 0x08077978
	bx lr
	.align 2, 0

    thumb_func_start sub_807797C
sub_807797C:
    bx lr
	.align 2, 0
	
    thumb_func_start sub_8077980
sub_8077980:
    bx lr
	.align 2, 0
	
	thumb_func_start sub_8077984
sub_8077984: @ 0x08077984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0xcc
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, _080779E8 @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r0, #0xc8
	adds r0, r0, r7
	mov r8, r0
_080779AA:
	strh r4, [r6, #0x10]
	lsls r0, r5, #2
	adds r1, r7, #4
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, _080779E8 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r5, #0x14
	bls _080779AA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080779E8: .4byte gCamera

	thumb_func_start TaskDestructor_100_80779EC
TaskDestructor_100_80779EC: @ 0x080779EC
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08077A00 @ =0x030000CC
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08077A00: .4byte 0x030000CC

	thumb_func_start sub_8077A04
sub_8077A04: @ 0x08077A04
	ldrh r0, [r0, #6]
	ldr r2, _08077A10 @ =0x030000B6
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08077A10: .4byte 0x030000B6

	thumb_func_start sub_8077A14
sub_8077A14: @ 0x08077A14
	ldrh r0, [r0, #6]
	ldr r2, _08077A20 @ =0x030000B8
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08077A20: .4byte 0x030000B8
	.align 2, 0

    thumb_func_start sub_8077A24
sub_8077A24:
	bx lr
	.align 2, 0

	thumb_func_start sub_8077A28
sub_8077A28: @ 0x08077A28
	adds r2, r0, #0
	adds r2, #0x2b
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	movs r1, #1
	strh r1, [r0, #0x2c]
	adds r0, #0xd4
	strb r2, [r0]
	bx lr

	thumb_func_start sub_8077A3C
sub_8077A3C: @ 0x08077A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #8]
	adds r4, r1, #0
	adds r5, r2, #0
	str r3, [sp, #0xc]
	movs r3, #1
	add r0, sp, #4
	strb r3, [r0]
	ldr r0, _08077A98 @ =Task_84_8077C08
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08077A9C @ =TaskDestructor_8078A64
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [sp, #8]
	str r0, [r6, #0x20]
	cmp r0, #0
	beq _08077AA0
	add r0, sp, #8
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r6, #8]
	adds r0, #0x12
	str r0, [r6, #0xc]
	b _08077AA4
	.align 2, 0
_08077A98: .4byte Task_84_8077C08
_08077A9C: .4byte TaskDestructor_8078A64
_08077AA0:
	str r4, [r6, #8]
	str r5, [r6, #0xc]
_08077AA4:
	ldr r2, _08077BF8 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r5, _08077BFC @ =0x00196225
	muls r0, r5, r0
	ldr r4, _08077C00 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x7f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x3b
	bhi _08077AC0
	movs r3, #0xff
_08077AC0:
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0]
	lsls r0, r3, #0x18
	adds r2, r6, #0
	adds r2, #0x54
	str r2, [sp, #0x10]
	adds r7, r6, #4
	str r7, [sp, #0x14]
	add r3, sp, #4
	adds r1, r6, #0
	adds r1, #0x10
	str r1, [sp, #0x18]
	ldr r2, _08077BF8 @ =gPseudoRandom
	mov ip, r2
	mov sl, r5
	mov sb, r4
	movs r7, #0x1f
	mov r8, r7
	asrs r5, r0, #0x18
	adds r4, r6, #0
	adds r4, #0x18
_08077AEC:
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldr r0, [sp, #0x18]
	adds r1, r0, r1
	mov r2, ip
	ldr r0, [r2]
	mov r2, sl
	muls r2, r0, r2
	add r2, sb
	mov r7, ip
	str r2, [r7]
	lsrs r0, r2, #8
	mov r7, r8
	ands r0, r7
	muls r0, r5, r0
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r4, r1
	mov r0, sl
	muls r0, r2, r0
	add r0, sb
	mov r2, ip
	str r0, [r2]
	lsrs r0, r0, #8
	ands r0, r7
	muls r0, r5, r0
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldr r7, [sp, #0x18]
	adds r1, r7, r1
	ldr r0, [r1]
	lsls r0, r0, #8
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1]
	lsls r0, r0, #8
	str r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08077AEC
	ldr r0, [sp, #0x3c]
	str r0, [r6]
	ldr r0, _08077BF8 @ =gPseudoRandom
	ldr r1, [r0]
	ldr r0, _08077BFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077C00 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _08077BF8 @ =gPseudoRandom
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #3
	ands r0, r1
	add r2, sp, #4
	movs r1, #0
	strb r1, [r2]
	adds r4, r2, #0
	ldr r1, _08077C04 @ =gUnknown_080D59FC
	lsls r0, r0, #3
	adds r7, r0, r1
	adds r1, #4
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
_08077B80:
	ldrb r0, [r4]
	ldr r1, [sp, #0x10]
	cmp r0, #0
	beq _08077B8C
	adds r1, r6, #0
	adds r1, #0x24
_08077B8C:
	ldr r2, [sp, #0xc]
	str r2, [r1]
	mov r2, r8
	ldr r0, [r2]
	lsls r0, r0, #5
	ldr r2, [sp, #0xc]
	adds r2, r2, r0
	str r2, [sp, #0xc]
	ldrh r0, [r7]
	strh r0, [r1, #0xc]
	ldrb r0, [r7, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sb
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08077B80
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077BF8: .4byte gPseudoRandom
_08077BFC: .4byte 0x00196225
_08077C00: .4byte 0x3C6EF35F
_08077C04: .4byte gUnknown_080D59FC

	thumb_func_start Task_84_8077C08
Task_84_8077C08: @ 0x08077C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r6, #1
	add r0, sp, #4
	strb r6, [r0]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08077C58 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _08077C60
	ldr r2, _08077C5C @ =0x03000020
	adds r0, r1, r2
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	movs r2, #0x10
	ldrsh r4, [r0, r2]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	adds r5, r0, #0
	adds r5, #0x20
	b _08077C6E
	.align 2, 0
_08077C58: .4byte gCurTask
_08077C5C: .4byte 0x03000020
_08077C60:
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r4, [r0]
	ldr r0, [r2, #0xc]
	ldr r5, [r0]
	asrs r4, r4, #8
	asrs r5, r5, #8
_08077C6E:
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x54
	str r0, [sp, #0x10]
	movs r1, #4
	add r1, r8
	mov sb, r1
	add r7, sp, #4
	mov r2, sp
	strh r4, [r2, #0xc]
	ldr r0, _08077C90 @ =gPseudoRandom
	mov sl, r0
_08077C8A:
	ldr r4, [sp, #0x10]
	b _08077D02
	.align 2, 0
_08077C90: .4byte gPseudoRandom
_08077C94:
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08077D34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077D38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrb r1, [r7]
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sp
	ldrh r2, [r2, #0xc]
	adds r0, r2, r0
	strh r0, [r4, #0x10]
	ldrb r1, [r7]
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r5, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r6, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r6, #0
	bne _08077CE6
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08077CE6:
	ldrb r0, [r7]
	add r0, sb
	strb r6, [r0]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08077D0C
	cmp r0, #0
	beq _08077C8A
	mov r4, r8
	adds r4, #0x24
_08077D02:
	ldrb r0, [r7]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077C94
_08077D0C:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08077D22
	mov r2, r8
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08077D3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08077D22:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077D34: .4byte 0x00196225
_08077D38: .4byte 0x3C6EF35F
_08077D3C: .4byte gCurTask

	thumb_func_start sub_8077D40
sub_8077D40: @ 0x08077D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	strb r0, [r7, #8]
	movs r0, #1
	str r0, [r7]
	ldr r2, _08077E60 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r4, _08077E64 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _08077E68 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x7f
	ands r0, r1
	movs r1, #1
	cmp r0, #0x3b
	bhi _08077D72
	movs r1, #0xff
_08077D72:
	movs r6, #0
	adds r0, r7, #0
	adds r0, #0x14
	str r0, [sp]
	lsls r1, r1, #0x18
	str r1, [sp, #0xc]
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	adds r0, #0x10
	str r0, [sp, #8]
	adds r1, #0x10
	str r1, [sp, #0x10]
	mov sl, r2
	mov sb, r4
	mov r8, r3
	movs r2, #0x1f
	mov ip, r2
	ldr r3, [sp, #0xc]
	asrs r5, r3, #0x18
_08077D9A:
	lsls r3, r6, #2
	ldr r0, [sp]
	adds r4, r0, r3
	mov r1, sl
	ldr r0, [r1]
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	lsrs r0, r1, #8
	mov r2, ip
	ands r0, r2
	muls r0, r5, r0
	str r0, [r4]
	ldr r0, [sp, #4]
	adds r2, r0, r3
	mov r0, sb
	muls r0, r1, r0
	add r0, r8
	mov r1, sl
	str r0, [r1]
	lsrs r0, r0, #8
	mov r1, ip
	ands r0, r1
	muls r0, r5, r0
	str r0, [r2]
	ldr r0, [r4]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r2]
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, [sp, #8]
	adds r1, r0, r3
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, [sp, #0x10]
	adds r3, r1, r3
	ldr r0, [r2]
	str r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08077D9A
	ldr r5, _08077E60 @ =gPseudoRandom
	ldr r0, [r5]
	ldr r6, _08077E64 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r4, _08077E68 @ =0x3C6EF35F
	adds r2, r2, r4
	lsrs r0, r2, #8
	movs r1, #0xf
	ands r0, r1
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x18
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r5]
	lsrs r0, r0, #8
	movs r1, #0x3f
	ands r0, r1
	rsbs r0, r0, #0
	lsls r3, r3, #5
	str r3, [r7, #0x34]
	lsls r0, r0, #5
	str r0, [r7, #0x38]
	movs r6, #0
	mov r8, r5
	ldr r5, _08077E6C @ =gUnknown_080D5A44
	movs r0, #0
	mov sb, r0
	movs r4, #0
_08077E32:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08077E64 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08077E68 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #8
	movs r0, #3
	ands r2, r0
	cmp r2, #2
	bls _08077E4C
	movs r2, #2
_08077E4C:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bne _08077E70
	adds r3, r7, #0
	adds r3, #0xd4
	cmp r6, #0
	beq _08077E78
	subs r3, #0x30
	b _08077E78
	.align 2, 0
_08077E60: .4byte gPseudoRandom
_08077E64: .4byte 0x00196225
_08077E68: .4byte 0x3C6EF35F
_08077E6C: .4byte gUnknown_080D5A44
_08077E70:
	adds r3, r7, #0
	adds r3, #0xa4
	cmp r6, #0
	bne _08077ECA
_08077E78:
	ldr r0, [r7, #0x3c]
	str r0, [r3]
	lsls r2, r2, #3
	adds r0, r5, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	adds r2, r2, r5
	ldrh r0, [r2]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r0, sb
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08077E32
_08077ECA:
	movs r6, #0
	ldr r1, _08077F04 @ =gPseudoRandom
	mov r8, r1
	ldr r5, _08077F08 @ =gUnknown_080D5A14
	movs r2, #0
	mov sb, r2
	movs r4, #0
_08077ED8:
	mov r3, r8
	ldr r1, [r3]
	ldr r0, _08077F0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077F10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r2, r0, #8
	movs r0, #7
	ands r2, r0
	cmp r2, #5
	bls _08077EF2
	movs r2, #5
_08077EF2:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bne _08077F14
	adds r3, r7, #0
	adds r3, #0x74
	cmp r6, #0
	beq _08077F1C
	subs r3, #0x30
	b _08077F1C
	.align 2, 0
_08077F04: .4byte gPseudoRandom
_08077F08: .4byte gUnknown_080D5A14
_08077F0C: .4byte 0x00196225
_08077F10: .4byte 0x3C6EF35F
_08077F14:
	adds r3, r7, #0
	adds r3, #0x44
	cmp r6, #0
	bne _08077F70
_08077F1C:
	ldr r0, [r7, #0x3c]
	str r0, [r3]
	lsls r2, r2, #3
	adds r0, r5, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	adds r2, r2, r5
	ldrh r0, [r2]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r2, sb
	strb r2, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #1
	strb r0, [r7, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08077ED8
_08077F70:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8077F80
sub_8077F80: @ 0x08077F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0]
	movs r7, #0
	ldr r0, _08077FC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08077FD0
	ldr r2, _08077FCC @ =0x03000040
	adds r0, r1, r2
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r1, [r0, #0x14]
	movs r2, #0x10
	ldrsh r1, [r1, r2]
	str r1, [sp, #8]
	ldr r0, [r0, #0x14]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	adds r0, #0x20
	add r1, sp, #8
	b _08077FE8
	.align 2, 0
_08077FC8: .4byte gCurTask
_08077FCC: .4byte 0x03000040
_08077FD0:
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	add r1, sp, #8
	str r0, [r1, #4]
	ldr r0, [sp, #8]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
_08077FE8:
	str r0, [r1, #4]
	adds r5, r1, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8078A78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8078070
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08078050
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r6, r5, #0
	adds r3, r1, #0
	adds r5, r4, #0
	adds r5, #0x2c
_08078010:
	ldrb r2, [r3]
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r6, #4]
	adds r0, r0, r1
	cmp r0, #0xb3
	ble _08078028
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08078028:
	adds r0, r2, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08078010
	ldr r1, [r4]
	cmp r1, #0
	bne _08078062
	cmp r7, #2
	bne _08078062
	ldr r0, [r4, #4]
	strb r1, [r0]
	ldr r0, _0807804C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08078062
	.align 2, 0
_0807804C: .4byte gCurTask
_08078050:
	ldr r1, [r4]
	cmp r1, #0
	bne _08078062
	ldr r0, [r4, #4]
	strb r1, [r0]
	ldr r0, _0807806C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08078062:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807806C: .4byte gCurTask

	thumb_func_start sub_8078070
sub_8078070: @ 0x08078070
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
_08078078:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _0807808A
	adds r4, r5, #0
	adds r4, #0xd4
	cmp r7, #0
	beq _0807808E
	subs r4, #0x30
	b _0807808E
_0807808A:
	adds r4, r5, #0
	adds r4, #0xa4
_0807808E:
	ldr r2, _080780EC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080780F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080780F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	cmp r0, #1
	bne _080780D2
	ldr r1, [r6]
	lsls r2, r7, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	str r0, [r5]
	adds r0, r4, #0
	bl DisplaySprite
_080780D2:
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0807812A
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _080780F8
	adds r4, r5, #0
	adds r4, #0x74
	cmp r7, #0
	beq _080780FC
	subs r4, #0x30
	b _080780FC
	.align 2, 0
_080780EC: .4byte gPseudoRandom
_080780F0: .4byte 0x00196225
_080780F4: .4byte 0x3C6EF35F
_080780F8:
	adds r4, r5, #0
	adds r4, #0x44
_080780FC:
	ldr r1, [r6]
	lsls r2, r7, #2
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0807812A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08078078
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807813C
sub_807813C: @ 0x0807813C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r3, [r4, #0xc]
	adds r0, r0, r3
	str r0, [r4, #0x20]
	asrs r0, r0, #8
	ldr r1, _08078160 @ =gCamera
	ldr r2, [r1]
	adds r5, r0, r2
	ldr r0, [r1, #0x1c]
	adds r7, r1, #0
	cmp r5, r0
	ble _08078164
	movs r0, #0xff
	b _0807816C
	.align 2, 0
_08078160: .4byte gCamera
_08078164:
	ldr r0, [r7, #0x18]
	cmp r5, r0
	bge _08078172
	movs r0, #1
_0807816C:
	strb r0, [r4, #5]
	rsbs r0, r3, #0
	str r0, [r4, #0xc]
_08078172:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldr r2, [r7]
	adds r1, r1, r2
	asrs r0, r0, #8
	ldr r2, [r7, #4]
	adds r0, r0, r2
	adds r6, r0, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _080781A4 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080781A8
	movs r0, #0xff
	b _080781B0
	.align 2, 0
_080781A4: .4byte sa2__sub_801EE64
_080781A8:
	ldr r0, [r7, #0x10]
	cmp r6, r0
	bge _080781B8
	movs r0, #1
_080781B0:
	strb r0, [r4, #6]
	ldr r0, [r4, #0x10]
	rsbs r0, r0, #0
	str r0, [r4, #0x10]
_080781B8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80781C0
sub_80781C0: @ 0x080781C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08078360 @ =Task_BC_8078C3C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078364 @ =TaskDestructor_8078C28
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	mov sl, r0
	str r5, [r0]
	ldr r2, _08078368 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r6, _0807836C @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08078370 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	mov r8, r1
	ands r0, r1
	movs r3, #0
	mov r1, sl
	strb r0, [r1, #5]
	ldr r0, [r2]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #5
	ands r0, r1
	mov r1, sl
	strb r0, [r1, #6]
	strh r3, [r1, #8]
	str r3, [r1, #0x20]
	mov r3, r8
	strb r3, [r1, #4]
	str r4, [r1, #0x10]
	adds r0, r4, #4
	str r0, [r1, #0x14]
	ldr r0, [r4]
	str r0, [r1, #0x18]
	ldr r0, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r1, _08078374 @ =gCamera
	ldr r0, [r1]
	mov r3, sl
	strh r0, [r3, #0xa]
	ldr r0, [r1, #4]
	strh r0, [r3, #0xc]
	movs r7, #0
	ldr r4, _08078378 @ =0x03000024
	add r4, sb
	adds r3, r2, #0
	ldr r0, _08078378 @ =0x03000024
	add r0, sb
	str r0, [sp, #0xc]
_0807824E:
	lsls r2, r7, #3
	adds r2, r4, r2
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, _0807837C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807824E
	movs r7, #0
	movs r3, #0x28
	add r3, sl
	mov r8, r3
	movs r0, #0x3c
	add r0, sl
	mov sb, r0
	movs r1, #0x40
	add r1, sl
	mov ip, r1
	mov r3, sl
	adds r3, #0x60
	str r3, [sp, #8]
	mov r0, sl
	adds r0, #0x54
	str r0, [sp, #4]
	mov r4, r8
	ldr r3, _08078368 @ =gPseudoRandom
	ldr r6, _0807836C @ =0x00196225
	ldr r5, _08078370 @ =0x3C6EF35F
_0807829A:
	lsls r2, r7, #3
	adds r2, r4, r2
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, _0807837C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807829A
	movs r7, #0
	mov r6, sb
	ldr r5, [sp, #0xc]
	mov r4, ip
	mov r3, r8
_080782C8:
	lsls r1, r7, #3
	adds r2, r6, r1
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080782C8
	movs r7, #0
	ldr r5, _08078368 @ =gPseudoRandom
	ldr r3, _0807836C @ =0x00196225
	mov r8, r3
	ldr r6, _08078370 @ =0x3C6EF35F
_080782EE:
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r4, r0, r3
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r6
	str r2, [r5]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	adds r0, #5
	lsls r0, r0, #7
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, [sp, #4]
	adds r4, r1, r3
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	adds r2, r2, r6
	str r2, [r5]
	lsrs r0, r2, #8
	movs r1, #5
	ands r0, r1
	lsls r3, r0, #4
	str r3, [r4]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807833A
	rsbs r0, r3, #0
	str r0, [r4]
_0807833A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080782EE
	movs r0, #0x90      @ SE_CAPSULE_DESTROY
	bl m4aSongNumStart
	mov r0, sl
	bl sub_8078380
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078360: .4byte Task_BC_8078C3C
_08078364: .4byte TaskDestructor_8078C28
_08078368: .4byte gPseudoRandom
_0807836C: .4byte 0x00196225
_08078370: .4byte 0x3C6EF35F
_08078374: .4byte gCamera
_08078378: .4byte 0x03000024
_0807837C: .4byte 0xFFFFF000

	thumb_func_start sub_8078380
sub_8078380: @ 0x08078380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r5, _08078460 @ =gUnknown_080D5A44
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r5, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _08078464 @ =gUnknown_080D5A14
	mov r8, r0
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r4, r0
	bl VramMalloc
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0x6c
	str r7, [r6, #0x6c]
	lsls r4, r4, #5
	adds r7, r7, r4
	ldrb r1, [r6, #5]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrh r1, [r1]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #5]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r1, #0
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldrb r0, [r6, #6]
	cmp r0, #7
	beq _08078452
	adds r0, r6, #0
	adds r0, #0x94
	str r7, [r0]
	ldrb r1, [r6, #6]
	lsls r1, r1, #3
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #6]
	lsls r1, r1, #3
	add r1, r8
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	orrs r1, r5
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	mov r1, sb
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
_08078452:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078460: .4byte gUnknown_080D5A44
_08078464: .4byte gUnknown_080D5A14

	thumb_func_start sub_8078468
sub_8078468: @ 0x08078468
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	mov r7, ip
	adds r7, #0x40
	ldr r3, _080784A8 @ =0x0000B3FF
	mov sb, r3
_08078480:
	lsls r2, r6, #3
	adds r0, r7, r2
	mov r3, ip
	ldr r1, [r3, #0x1c]
	ldr r0, [r0]
	adds r1, r1, r0
	adds r5, r2, #0
	cmp r1, sb
	bgt _080784D8
	lsls r0, r6, #2
	mov r1, ip
	adds r1, #0x54
	adds r3, r1, r0
	ldr r2, [r3]
	adds r4, r0, #0
	cmp r2, #0
	ble _080784AC
	adds r0, r2, #0
	adds r0, #0x10
	b _080784B0
	.align 2, 0
_080784A8: .4byte 0x0000B3FF
_080784AC:
	adds r0, r2, #0
	subs r0, #0x10
_080784B0:
	str r0, [r3]
	mov r2, ip
	adds r2, #0x3c
	adds r2, r2, r5
	adds r1, r1, r4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, ip
	adds r0, #0x60
	adds r0, r0, r4
	ldr r1, [r0]
	adds r1, #0x40
	str r1, [r0]
	adds r2, r7, r5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _080784E2
_080784D8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080784E2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08078480
	mov r0, r8
	cmp r0, #3
	beq _080784F6
	movs r0, #0
	b _080784F8
_080784F6:
	movs r0, #1
_080784F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078504
sub_8078504: @ 0x08078504
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x6c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r8, r0
	movs r7, #0
_0807851A:
	ldr r1, [r5, #0x10]
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x24
	adds r6, r0, r2
	ldr r0, [r1]
	ldr r1, [r6]
	adds r0, r0, r1
	asrs r3, r0, #8
	strh r3, [r4, #0x10]
	ldr r1, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x28
	adds r2, r0, r2
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	cmp r7, #0
	beq _08078554
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r3, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #0x12]
_08078554:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807851A
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078570
sub_8078570: @ 0x08078570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r7, sp
_0807857E:
	ldrb r0, [r4, #6]
	cmp r0, #7
	beq _08078636
	adds r5, r4, #0
	adds r5, #0x94
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r6, [r4, #0x18]
	adds r3, r0, #0
	cmp r1, r6
	beq _080785E4
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	beq _080785E4
	ldr r2, _080785E0 @ =gCamera
	ldr r0, [r2]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r7]
	ldr r0, [r2, #4]
	ldrh r1, [r4, #0xc]
	subs r0, r0, r1
	strh r0, [r7, #2]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, r6, r1
	mov r0, r8
	lsls r3, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #8
	strh r1, [r5, #0x10]
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	adds r2, r4, #0
	adds r2, #0x40
	adds r1, r2, r3
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	b _080785FE
	.align 2, 0
_080785E0: .4byte gCamera
_080785E4:
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	adds r3, r2, #0
	adds r2, r4, #0
	adds r2, #0x40
_080785FE:
	ldr r0, [r4, #0x14]
	adds r1, r2, r3
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r1, r0, #8
	strh r1, [r5, #0x12]
	mov r2, r8
	cmp r2, #0
	beq _08078630
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x12]
_08078630:
	adds r0, r5, #0
	bl DisplaySprite
_08078636:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #2
	bls _0807857E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078650
sub_8078650: @ 0x08078650
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08078694 @ =gSineTable
	asrs r0, r0, #7
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	str r1, [r3, #0x14]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	str r0, [r3, #0x1c]
	ldr r1, [r3, #0x18]
	ldr r2, _08078698 @ =0xFFFFFC00
	adds r1, r1, r2
	str r1, [r3, #0x18]
	ldr r0, [r3, #0x20]
	adds r0, r0, r2
	str r0, [r3, #0x20]
	ldr r0, _0807869C @ =0xFFFFC400
	cmp r1, r0
	blt _080786A0
	movs r0, #0
	b _080786B0
	.align 2, 0
_08078694: .4byte gSineTable
_08078698: .4byte 0xFFFFFC00
_0807869C: .4byte 0xFFFFC400
_080786A0:
	ldr r1, [r3, #0x24]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	str r0, [r3, #0x18]
	str r0, [r3, #0x20]
	str r0, [r3, #0x10]
	movs r0, #1
_080786B0:
	pop {r1}
	bx r1

	thumb_func_start sub_80786B4
sub_80786B4: @ 0x080786B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r0, _08078754 @ =sub_8078764
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078758 @ =sub_8078D18
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, [r6]
	str r0, [r5, #4]
	ldr r0, [r6, #4]
	str r0, [r5, #0xc]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	str r0, [r5, #0x10]
	mov r0, r8
	str r0, [r5, #0x14]
	mov r1, sb
	str r1, [r5, #0x18]
	mov r0, sl
	str r0, [r5]
	ldr r6, _0807875C @ =gUnknown_080D5A44
	ldr r0, [r6, #0xc]
	bl VramMalloc
	ldr r1, _08078760 @ =0x0300001C
	adds r4, r4, r1
	str r0, [r4]
	ldrh r0, [r6, #8]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	str r1, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078754: .4byte sub_8078764
_08078758: .4byte sub_8078D18
_0807875C: .4byte gUnknown_080D5A44
_08078760: .4byte 0x0300001C

	thumb_func_start sub_8078764
sub_8078764: @ 0x08078764
	push {r4, r5, r6, r7, lr}
	ldr r7, _080787D0 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ldr r1, [r6, #0xc]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2e]
	ldr r0, _080787D4 @ =0x0300001C
	adds r5, r5, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2e]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	cmp r4, #0
	bne _080787CA
	ldr r0, [r6]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
_080787CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080787D0: .4byte gCurTask
_080787D4: .4byte 0x0300001C

	thumb_func_start sub_80787D8
sub_80787D8: @ 0x080787D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r7, #0
	ldr r0, _08078878 @ =gUnknown_080D5A64
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _0807887C @ =gSineTable
	mov sb, r0
_080787F4:
	mov r1, ip
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, sl
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r5, r0, #3
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #0xc]
	lsls r0, r7, #3
	mov r3, r8
	adds r3, #0x28
	adds r3, r3, r0
	mov r1, ip
	str r1, [r3]
	mov r4, r8
	adds r4, #0x24
	adds r4, r4, r0
	str r1, [r4]
	asrs r2, r2, #6
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #8
	adds r6, r0, r1
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r5, r5, #6
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r5, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r1, [r6]
	lsrs r0, r1, #6
	cmp r0, #0x10
	blo _08078880
	movs r0, #1
	b _08078892
	.align 2, 0
_08078878: .4byte gUnknown_080D5A64
_0807887C: .4byte gSineTable
_08078880:
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r6]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080787F4
	movs r0, #0
_08078892:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80788A4
sub_80788A4: @ 0x080788A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0]
	ldr r0, _080788FC @ =sub_8077F80
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08078900 @ =sub_8078A68
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [sp, #8]
	str r0, [r5, #0x40]
	str r4, [r5, #0x3c]
	cmp r0, #0
	beq _08078904
	add r0, sp, #8
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r5, #0xc]
	adds r0, #0x12
	str r0, [r5, #0x10]
	b _08078908
	.align 2, 0
_080788FC: .4byte sub_8077F80
_08078900: .4byte sub_8078A68
_08078904:
	str r6, [r5, #0xc]
	str r7, [r5, #0x10]
_08078908:
	movs r0, #0
	strb r0, [r5, #9]
	ldr r0, [sp, #0x20]
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8077D40
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0


    @ TODO: Called from Boss 2 (EggWheeler)!
	thumb_func_start sub_8078920
sub_8078920: @ 0x08078920
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08078968 @ =sub_8078C90
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0807896C @ =TaskDestructor_28_8078C8C
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	str r4, [r0, #8]
	adds r4, #4
	str r4, [r0, #0xc]
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #6]
	strb r2, [r0, #4]
	str r6, [r0, #0x24]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078968: .4byte sub_8078C90
_0807896C: .4byte TaskDestructor_28_8078C8C

	thumb_func_start sub_8078970
sub_8078970: @ 0x08078970
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080789E0 @ =Task_30_8078AC4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080789E4 @ =TaskDestructor_8078AC0
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strh r2, [r0, #8]
	str r2, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	strb r4, [r0, #4]
	str r6, [r0]
	ldr r1, [r5]
	str r1, [r0, #0x20]
	ldr r1, [r5, #4]
	str r1, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #0xc]
	ldr r1, _080789E8 @ =0xFFFFFC00
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	mov r1, r8
	str r1, [r0, #0x28]
	mov r1, sb
	str r1, [r0, #0x2c]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080789E0: .4byte Task_30_8078AC4
_080789E4: .4byte TaskDestructor_8078AC0
_080789E8: .4byte 0xFFFFFC00

	thumb_func_start sub_80789EC
sub_80789EC: @ 0x080789EC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08078A58 @ =Task_68_8078D34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078A5C @ =sub_8078D30
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r5, [r0]
	str r4, [r0, #0x18]
	adds r4, #4
	str r4, [r0, #0x1c]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #6]
	strb r2, [r0, #4]
	str r6, [r0, #0x64]
	movs r2, #0
	ldr r0, _08078A60 @ =0x03000024
	adds r6, r3, r0
	movs r4, #0
	adds r0, #4
	adds r5, r3, r0
	subs r0, #0x20
	adds r3, r3, r0
_08078A34:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	lsls r0, r2, #1
	adds r0, r3, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08078A34
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078A58: .4byte Task_68_8078D34
_08078A5C: .4byte sub_8078D30
_08078A60: .4byte 0x03000024

	thumb_func_start TaskDestructor_8078A64
TaskDestructor_8078A64: @ 0x08078A64
	bx lr
	.align 2, 0
    

	thumb_func_start sub_8078A68
sub_8078A68: @ 0x08078A68
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0, #4]
	movs r0, #0
	strb r0, [r1]
	bx lr

	thumb_func_start sub_8078A78
sub_8078A78: @ 0x08078A78
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r4, #0
	mov r6, ip
	adds r6, #0x2c
	ldr r5, [r1, #4]
_08078A84:
	lsls r1, r4, #2
	adds r3, r6, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r0, r5, r0
	cmp r0, #0xb3
	bgt _08078AAE
	mov r2, ip
	adds r2, #0x24
	adds r2, r2, r1
	ldr r0, [r2]
	mov r7, ip
	ldr r1, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r7, #0x38]
	adds r1, #0x20
	str r1, [r7, #0x38]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
_08078AAE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08078A84
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_8078AC0
TaskDestructor_8078AC0: @ 0x08078AC0
	bx lr
	.align 2, 0

	thumb_func_start Task_30_8078AC4
Task_30_8078AC4: @ 0x08078AC4
	push {r4, r5, lr}
	ldr r5, _08078AF4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8078B74
	adds r0, r4, #0
	bl sub_807813C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08078AEC
	ldr r0, [r5]
	bl TaskDestroy
_08078AEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078AF4: .4byte gCurTask

	thumb_func_start sub_8078AF8
sub_8078AF8: @ 0x08078AF8
	push {r4, lr}
	ldr r4, _08078B1C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_8078BAC
	cmp r0, #1
	bne _08078B14
	ldr r1, [r4]
	ldr r0, _08078B20 @ =sub_8078B24
	str r0, [r1, #8]
_08078B14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08078B1C: .4byte gCurTask
_08078B20: .4byte sub_8078B24

	thumb_func_start sub_8078B24
sub_8078B24: @ 0x08078B24
	push {lr}
	ldr r2, _08078B48 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	cmp r0, #0xb3
	bls _08078B44
	ldr r1, [r1]
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08078B4C @ =sub_8078B50
	str r0, [r1, #8]
_08078B44:
	pop {r0}
	bx r0
	.align 2, 0
_08078B48: .4byte gCurTask
_08078B4C: .4byte sub_8078B50

	thumb_func_start sub_8078B50
sub_8078B50: @ 0x08078B50
	push {lr}
	ldr r2, _08078B70 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08078B70: .4byte gCurTask

	thumb_func_start sub_8078B74
sub_8078B74: @ 0x08078B74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x28]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08078BA4
	movs r5, #0
	cmp r5, r0
	bhs _08078BA4
_08078B86:
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #4]
	cmp r5, r0
	blo _08078B86
_08078BA4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078BAC
sub_8078BAC: @ 0x08078BAC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r2, #0
	ldr r0, [r5, #0x28]
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	ldr r3, _08078C14 @ =gCamera
	ldr r3, [r3, #4]
	adds r0, r0, r3
	str r4, [sp]
	ldr r3, _08078C18 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08078BF2
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #0xff
	strb r0, [r5, #6]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_08078BF2:
	movs r0, #6
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x18]
	subs r1, r1, r0
	str r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	adds r2, r2, r1
	str r2, [r5, #0x10]
	ldr r0, [r5, #0x24]
	adds r0, r0, r2
	str r0, [r5, #0x24]
	cmp r2, #0
	beq _08078C1C
	movs r0, #0
	b _08078C1E
	.align 2, 0
_08078C14: .4byte gCamera
_08078C18: .4byte sa2__sub_801EE64
_08078C1C:
	movs r0, #1
_08078C1E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_8078C28
TaskDestructor_8078C28: @ 0x08078C28
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_BC_8078C3C
Task_BC_8078C3C: @ 0x08078C3C
	push {r4, r5, lr}
	ldr r5, _08078C88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _08078C58
	adds r0, r4, #0
	bl sub_8078504
	strb r0, [r4, #4]
_08078C58:
	adds r0, r4, #0
	bl sub_8078570
	adds r0, r4, #0
	bl sub_8078468
	cmp r0, #1
	bne _08078C82
	ldr r0, [r4]
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #0xc8
	bls _08078C7C
	movs r0, #0
	strb r0, [r1]
_08078C7C:
	ldr r0, [r5]
	bl TaskDestroy
_08078C82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078C88: .4byte gCurTask

	thumb_func_start TaskDestructor_28_8078C8C
TaskDestructor_28_8078C8C: @ 0x08078C8C
	bx lr
	.align 2, 0

	thumb_func_start sub_8078C90
sub_8078C90: @ 0x08078C90
	push {r4, r5, lr}
	ldr r5, _08078CB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8078650
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08078CB8
	ldr r0, [r5]
	bl TaskDestroy
	b _08078CBE
	.align 2, 0
_08078CB4: .4byte gCurTask
_08078CB8:
	adds r0, r4, #0
	bl sub_8078CC4
_08078CBE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8078CC4
sub_8078CC4: @ 0x08078CC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
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

	thumb_func_start sub_8078D18
sub_8078D18: @ 0x08078D18
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8078D2C
sub_8078D2C: @ 0x08078D2C
	bx lr
	.align 2, 0

	thumb_func_start sub_8078D30
sub_8078D30: @ 0x08078D30
	bx lr
	.align 2, 0

	thumb_func_start Task_68_8078D34
Task_68_8078D34: @ 0x08078D34
	push {r4, r5, lr}
	ldr r5, _08078D68 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8078D6C
	adds r0, r4, #0
	bl sub_80787D8
	cmp r0, #1
	bne _08078D60
	ldr r0, [r4]
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
_08078D60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078D68: .4byte gCurTask

	thumb_func_start sub_8078D6C
sub_8078D6C: @ 0x08078D6C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_08078D72:
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x18]
	lsls r3, r5, #3
	adds r2, r4, #0
	adds r2, #0x24
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08078D72
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
.endif
