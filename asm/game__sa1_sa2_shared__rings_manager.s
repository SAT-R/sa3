.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- src/game/sa1_sa2_shared/rings_manager.c ---

	thumb_func_start CreateStageRingsManager
CreateStageRingsManager: @ 0x08029AE0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08029AFC @ =gStageData
	ldrh r1, [r0, #0xe]
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08029B32
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0x48
	beq _08029B04
	ldr r0, _08029B00 @ =sub_8029DE0
	b _08029B06
	.align 2, 0
_08029AFC: .4byte gStageData
_08029B00: .4byte sub_8029DE0
_08029B04:
	ldr r0, _08029B4C @ =sub_802A6C4
_08029B06:
	movs r2, #0xa0
	lsls r2, r2, #6
	ldr r1, _08029B50 @ =TaskDestructor_RingsMgr
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldr r0, _08029B54 @ =gUnknown_080CEF58
	asrs r4, r4, #0xe
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r5, r0, #0
	ldr r0, [r4]
	adds r1, r5, #0
	bl RLUnCompWram
_08029B32:
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #0x28]
	adds r3, r0, #0
	ldr r0, _08029B58 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08029B60
	ldr r0, _08029B5C @ =0x06014180
	b _08029B66
	.align 2, 0
_08029B4C: .4byte sub_802A6C4
_08029B50: .4byte TaskDestructor_RingsMgr
_08029B54: .4byte gUnknown_080CEF58
_08029B58: .4byte gStageData
_08029B5C: .4byte 0x06014180
_08029B60:
	cmp r0, #6
	bne _08029B68
	ldr r0, _08029BA0 @ =0x060141A0
_08029B66:
	str r0, [r3]
_08029B68:
	ldr r0, _08029BA4 @ =0x00041200
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08029BA8 @ =0x00000535
	strh r0, [r3, #0xc]
	movs r0, #0x78
	strh r0, [r3, #0x10]
	movs r0, #0x50
	strh r0, [r3, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _08029BAC @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029BA0: .4byte 0x060141A0
_08029BA4: .4byte 0x00041200
_08029BA8: .4byte 0x00000535
_08029BAC: .4byte 0x0000FFFF

	thumb_func_start sub_8029BB0
sub_8029BB0: @ 0x08029BB0
	push {r4, r5, lr}
	ldr r0, _08029C0C @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #2
	beq _08029C42
	ldrb r0, [r2, #4]
	cmp r0, #9
	beq _08029BCE
	cmp r0, #4
	beq _08029BCE
	cmp r0, #5
	beq _08029BCE
	cmp r0, #6
	bne _08029BD4
_08029BCE:
	ldrb r0, [r2, #9]
	cmp r0, #7
	beq _08029C42
_08029BD4:
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029C1C
	ldr r4, _08029C10 @ =gMPlayInfo_SE2
	ldr r1, _08029C14 @ =song117 (SE_RING_OLD_2)
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _08029C18 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _08029C42
	.align 2, 0
_08029C0C: .4byte gStageData
_08029C10: .4byte gMPlayInfo_SE2
_08029C14: .4byte song117 @ SE_RING_OLD_2
_08029C18: .4byte 0x0000FFFF
_08029C1C:
	ldr r4, _08029C48 @ =gMPlayInfo_SE1
	ldr r1, _08029C4C @ =song117
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _08029C50 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_08029C42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029C48: .4byte gMPlayInfo_SE1
_08029C4C: .4byte song117
_08029C50: .4byte 0x0000FFFF

	thumb_func_start sub_8029C54
sub_8029C54: @ 0x08029C54
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r5, _08029CA4 @ =gStageData
	adds r0, r5, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08029CFE
	ldr r0, _08029CA8 @ =sub_802ACF0
	ldr r2, _08029CAC @ =0x00002810
	movs r4, #0
	str r4, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	ldr r1, _08029CB0 @ =0x03000029
	adds r0, r2, r1
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0xac
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r4, _08029CB4 @ =0x03000028
	adds r1, r2, r4
	strb r0, [r1]
	orrs r3, r2
	ldrb r0, [r5, #3]
	cmp r0, #5
	bhi _08029CBC
	ldr r0, _08029CB8 @ =0x06014380
	b _08029CC2
	.align 2, 0
_08029CA4: .4byte gStageData
_08029CA8: .4byte sub_802ACF0
_08029CAC: .4byte 0x00002810
_08029CB0: .4byte 0x03000029
_08029CB4: .4byte 0x03000028
_08029CB8: .4byte 0x06014380
_08029CBC:
	cmp r0, #6
	bne _08029CC4
	ldr r0, _08029D08 @ =0x060143A0
_08029CC2:
	str r0, [r3]
_08029CC4:
	ldr r0, _08029D0C @ =0x00041200
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08029D10 @ =0x00000536
	strh r0, [r3, #0xc]
	strh r7, [r3, #0x10]
	strh r6, [r3, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _08029D14 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	ldr r1, _08029D18 @ =gStageData
	adds r1, #0xb5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_8029BB0
_08029CFE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029D08: .4byte 0x060143A0
_08029D0C: .4byte 0x00041200
_08029D10: .4byte 0x00000536
_08029D14: .4byte 0x0000FFFF
_08029D18: .4byte gStageData

@ --- entities_manager ? ---

	thumb_func_start sub_8029D1C
sub_8029D1C: @ 0x08029D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r5, _08029D6C @ =gStageData
	adds r0, r5, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08029DC2
	ldr r0, _08029D70 @ =sub_802ACF0
	ldr r2, _08029D74 @ =0x00002810
	movs r4, #0
	str r4, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	ldr r1, _08029D78 @ =0x03000029
	adds r0, r2, r1
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0xac
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r4, _08029D7C @ =0x03000028
	adds r1, r2, r4
	strb r0, [r1]
	orrs r3, r2
	ldrb r0, [r5, #3]
	cmp r0, #5
	bhi _08029D84
	ldr r0, _08029D80 @ =0x06014380
	b _08029D8A
	.align 2, 0
_08029D6C: .4byte gStageData
_08029D70: .4byte sub_802ACF0
_08029D74: .4byte 0x00002810
_08029D78: .4byte 0x03000029
_08029D7C: .4byte 0x03000028
_08029D80: .4byte 0x06014380
_08029D84:
	cmp r0, #6
	bne _08029D8C
	ldr r0, _08029DCC @ =0x060143A0
_08029D8A:
	str r0, [r3]
_08029D8C:
	ldr r0, _08029DD0 @ =0x00041200
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08029DD4 @ =0x00000536
	strh r0, [r3, #0xc]
	strh r7, [r3, #0x10]
	strh r6, [r3, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _08029DD8 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	ldr r1, _08029DDC @ =gStageData
	adds r1, #0xb5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029DC2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029DCC: .4byte 0x060143A0
_08029DD0: .4byte 0x00041200
_08029DD4: .4byte 0x00000536
_08029DD8: .4byte 0x0000FFFF
_08029DDC: .4byte gStageData

	thumb_func_start sub_8029DE0
sub_8029DE0: @ 0x08029DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r0, _08029E2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r1, #0x28]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0x18]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #4]
	ldr r2, [r3, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _08029E34
	ldr r0, _08029E30 @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	b _08029E4A
	.align 2, 0
_08029E2C: .4byte gCurTask
_08029E30: .4byte gRefSpriteTables
_08029E34:
	ldr r0, _08029E80 @ =gRefSpriteTables
	ldr r1, [r0]
	ldr r4, [sp, #4]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08029E4A:
	ldr r6, [sp, #8]
	adds r6, #4
	ldm r6!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldm r6!, {r0}
	str r6, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _08029E84 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bls _08029E6A
	b _0802A2BC
_08029E6A:
	movs r0, #0
	str r0, [sp, #0x1c]
	mov r1, sp
	str r1, [sp, #0x20]
_08029E72:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	bne _08029E88
	ldr r0, _08029E84 @ =gStageData
	ldrb r1, [r0, #6]
	b _08029E92
	.align 2, 0
_08029E80: .4byte gRefSpriteTables
_08029E84: .4byte gStageData
_08029E88:
	mov r0, sb
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08029E92:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08029FB0 @ =gPlayers
	adds r0, r0, r1
	mov sb, r0
	adds r4, r1, #0
	mov r3, sb
	ldr r0, [r3, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08029EB4
	b _0802A292
_08029EB4:
	mov r6, sb
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x66
	bne _08029EC0
	b _0802A292
_08029EC0:
	mov r0, sb
	adds r0, #0x48
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08029ECE
	b _0802A292
_08029ECE:
	mov r1, sb
	adds r1, #0x2b
	ldrb r2, [r1]
	movs r0, #0x1c
	ands r0, r2
	str r1, [sp, #0x44]
	cmp r0, #8
	bne _08029EFA
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r4, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ands r0, r3
	cmp r0, #0
	beq _08029EFA
	b _0802A292
_08029EFA:
	mov r1, sb
	adds r1, #0x24
	ldrb r0, [r1]
	rsbs r0, r0, #0
	ldr r3, [sp, #0x20]
	strb r0, [r3]
	mov r2, sb
	adds r2, #0x25
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldrb r0, [r2]
	strb r0, [r3, #3]
	mov r4, sb
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	ble _08029F3A
	b _0802A098
_08029F3A:
	ldr r6, [sp, #0x14]
	cmp sl, r6
	blo _08029F42
	b _0802A098
_08029F42:
	mov r0, sp
	str r0, [sp, #0x24]
_08029F46:
	mov r1, sb
	ldr r2, [r1, #0x10]
	asrs r1, r2, #8
	ldr r3, [sp, #0x24]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	subs r0, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
	mov r4, sb
	ldr r3, [r4, #0x14]
	mov r6, sl
	adds r6, #1
	str r6, [sp, #0x3c]
	cmp r8, r0
	ble _08029F76
	b _0802A076
_08029F76:
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blo _08029F7E
	b _0802A076
_08029F7E:
	ldr r1, [sp, #0x10]
	mov r0, sl
	muls r0, r1, r0
	mov r4, r8
	lsls r1, r4, #2
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	adds r1, r1, r0
	ldr r0, [r1]
	adds r4, #1
	str r4, [sp, #0x38]
	cmp r0, #0
	beq _0802A054
	subs r0, #8
	adds r5, r6, r0
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A054
	mov r4, sp
_08029FA8:
	cmp r1, #0xfe
	bne _08029FB4
	adds r5, #2
	b _0802A04C
	.align 2, 0
_08029FB0: .4byte gPlayers
_08029FB4:
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r3, sl
	lsls r0, r3, #8
	adds r6, r1, r0
	adds r2, r7, #0
	subs r2, #8
	mov r1, sb
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08029FE8
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _08029FF4
	cmp r2, r1
	blt _0802A044
_08029FE8:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A044
_08029FF4:
	adds r2, r6, #0
	subs r2, #0x10
	mov r3, sb
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A010
	cmp r6, r1
	bge _0802A01C
	cmp r2, r1
	blt _0802A044
_0802A010:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A044
_0802A01C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0802A02E
	ldr r2, [sp, #0x44]
	ldrb r1, [r2]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0802A034
_0802A02E:
	movs r0, #1
	bl AddRings
_0802A034:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_8029C54
	movs r0, #0xfe
	strb r0, [r5]
_0802A044:
	adds r5, #2
	mov r6, sb
	ldr r3, [r6, #0x14]
	ldr r2, [r6, #0x10]
_0802A04C:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08029FA8
_0802A054:
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r1, r2, #8
	ldr r4, [sp, #0x24]
	movs r0, #2
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
	cmp r8, r0
	bgt _0802A076
	ldr r6, [sp, #0x10]
	cmp r8, r6
	bhs _0802A076
	b _08029F7E
_0802A076:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r3, #8
	ldr r2, [sp, #0x24]
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	bgt _0802A098
	ldr r3, [sp, #0x14]
	cmp sl, r3
	bhs _0802A098
	b _08029F46
_0802A098:
	ldr r3, _0802A108 @ =gCamera
	ldr r2, [r3, #4]
	lsls r0, r2, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802A0B4
	b _0802A292
_0802A0B4:
	mov r4, sl
	lsls r1, r4, #8
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	blt _0802A0C2
	b _0802A292
_0802A0C2:
	ldr r6, [sp, #0x14]
	cmp sl, r6
	blo _0802A0CA
	b _0802A292
_0802A0CA:
	ldr r0, [r3]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r1, #8
	adds r0, #0xf0
	cmp r1, r0
	blt _0802A0DC
	b _0802A274
_0802A0DC:
	ldr r0, [sp, #0x10]
	mov r2, sl
	muls r2, r0, r2
	mov r3, r8
	lsls r1, r3, #2
	lsls r0, r2, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r0, [r1]
	str r2, [sp, #0x34]
	ldr r6, [sp, #0x10]
	cmp r8, r6
	blo _0802A0FA
	b _0802A274
_0802A0FA:
	cmp r0, #0
	bne _0802A100
	b _0802A246
_0802A100:
	subs r0, #8
	ldr r1, [sp, #8]
	adds r5, r1, r0
	b _0802A23C
	.align 2, 0
_0802A108: .4byte gCamera
_0802A10C:
	cmp r1, #0xfe
	beq _0802A180
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r3, sl
	lsls r0, r3, #8
	adds r6, r1, r0
	ldr r4, _0802A184 @ =gCamera
	ldr r0, [r4]
	subs r0, r7, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802A180
	ldr r0, [r4, #4]
	subs r0, r6, r0
	cmp r0, #0
	blt _0802A180
	subs r0, #0x10
	cmp r0, #0xa0
	bgt _0802A180
	adds r1, r7, #0
	subs r1, #0x40
	mov r2, sb
	ldr r0, [r2, #0x10]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _0802A188
	adds r0, r7, #0
	adds r0, #0x40
	cmp r0, r2
	blt _0802A188
	adds r1, r6, #0
	subs r1, #0x48
	mov r3, sb
	ldr r0, [r3, #0x14]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _0802A188
	adds r0, r6, #0
	adds r0, #0x38
	cmp r0, r2
	blt _0802A188
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	bl sub_802AB10
	movs r0, #0xfe
	strb r0, [r5]
_0802A180:
	adds r5, #2
	b _0802A23C
	.align 2, 0
_0802A184: .4byte gCamera
_0802A188:
	adds r5, #2
	ldr r4, [sp, #4]
	ldrb r1, [r4, #0x1d]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0802A19A
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A1BC
_0802A19A:
	movs r0, #0xff
	ldr r1, [sp, #4]
	strb r0, [r1, #0x1d]
	ldr r2, _0802A1B8 @ =gCamera
	ldr r0, [r2]
	subs r0, r7, r0
	strh r0, [r1, #0x10]
	ldr r0, [r2, #4]
	subs r0, r6, r0
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl DisplaySprite
	b _0802A232
	.align 2, 0
_0802A1B8: .4byte gCamera
_0802A1BC:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	lsls r1, r1, #3
	ldr r0, _0802A2A4 @ =gOamMallocBuffer
	adds r2, r1, r0
	ldrh r0, [r3, #0x14]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	lsrs r0, r0, #6
	str r2, [sp, #0x48]
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802A2A8 @ =iwram_end
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	cmp r0, r4
	bne _0802A1E6
	b _0802A69C
_0802A1E6:
	ldr r1, _0802A2AC @ =0x040000D4
	str r2, [r1]
	str r4, [r1, #4]
	ldr r0, _0802A2B0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	ldr r1, _0802A2B4 @ =gCamera
	ldr r0, [r1, #4]
	subs r0, r6, r0
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	ldr r1, _0802A2B4 @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	ldr r2, _0802A2B8 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_0802A232:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_0802A23C:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A246
	b _0802A10C
_0802A246:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r3, _0802A2B4 @ =gCamera
	ldr r0, [r3]
	adds r0, #0xf0
	cmp r1, r0
	bge _0802A274
	mov r4, r8
	lsls r1, r4, #2
	ldr r6, [sp, #0x34]
	lsls r0, r6, #2
	ldr r2, [sp, #8]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r3, [sp, #0x10]
	cmp r8, r3
	bhs _0802A274
	b _0802A0FA
_0802A274:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r0, #8
	ldr r3, _0802A2B4 @ =gCamera
	ldr r0, [r3, #4]
	adds r0, #0xa0
	cmp r1, r0
	bge _0802A292
	ldr r4, [sp, #0x14]
	cmp sl, r4
	bhs _0802A292
	b _0802A0CA
_0802A292:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	cmp r0, #1
	bhi _0802A2A2
	b _08029E72
_0802A2A2:
	b _0802A514
	.align 2, 0
_0802A2A4: .4byte gOamMallocBuffer
_0802A2A8: .4byte iwram_end
_0802A2AC: .4byte 0x040000D4
_0802A2B0: .4byte 0x80000003
_0802A2B4: .4byte gCamera
_0802A2B8: .4byte 0x000001FF
_0802A2BC:
	movs r6, #0
	str r6, [sp, #0x1c]
	mov r0, sp
	str r0, [sp, #0x2c]
_0802A2C4:
	movs r1, #0
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r3, _0802A3C8 @ =gPlayers
	adds r0, r0, r3
	mov sb, r0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r1, #0x14
	bne _0802A2EC
	b _0802A506
_0802A2EC:
	cmp r1, #8
	bne _0802A2F2
	b _0802A506
_0802A2F2:
	ldr r0, _0802A3CC @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	cmp sb, r0
	beq _0802A31E
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	cmp sb, r0
	bne _0802A322
_0802A31E:
	movs r4, #1
	str r4, [sp, #0x28]
_0802A322:
	mov r6, sb
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x40]
	cmp r1, #0
	beq _0802A338
	b _0802A506
_0802A338:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x66
	bne _0802A342
	b _0802A506
_0802A342:
	mov r0, sb
	adds r0, #0x48
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0802A350
	b _0802A506
_0802A350:
	mov r1, sb
	adds r1, #0x24
	ldrb r0, [r1]
	rsbs r0, r0, #0
	ldr r3, [sp, #0x2c]
	strb r0, [r3]
	mov r2, sb
	adds r2, #0x25
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldrb r0, [r2]
	strb r0, [r3, #3]
	ldr r1, [r6, #0x14]
	asrs r1, r1, #8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	ble _0802A38E
	b _0802A506
_0802A38E:
	ldr r4, [sp, #0x14]
	cmp sl, r4
	blo _0802A396
	b _0802A506
_0802A396:
	mov r6, sp
	str r6, [sp, #0x30]
_0802A39A:
	mov r0, sb
	ldr r2, [r0, #0x10]
	asrs r1, r2, #8
	ldr r3, [sp, #0x30]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	subs r0, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
	mov r4, sb
	ldr r3, [r4, #0x14]
	mov r6, sl
	adds r6, #1
	str r6, [sp, #0x3c]
	b _0802A4D8
	.align 2, 0
_0802A3C8: .4byte gPlayers
_0802A3CC: .4byte gStageData
_0802A3D0:
	ldr r1, [sp, #0x10]
	mov r0, sl
	muls r0, r1, r0
	mov r4, r8
	lsls r1, r4, #2
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	adds r1, r1, r0
	ldr r0, [r1]
	adds r4, #1
	str r4, [sp, #0x38]
	cmp r0, #0
	beq _0802A4C2
	subs r0, #8
	adds r5, r6, r0
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A4C2
	mov r4, sp
_0802A3FA:
	cmp r1, #0xfe
	bne _0802A402
	adds r5, #2
	b _0802A4BA
_0802A402:
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r3, sl
	lsls r0, r3, #8
	adds r6, r1, r0
	adds r2, r7, #0
	subs r2, #8
	mov r1, sb
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A436
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _0802A442
	cmp r2, r1
	blt _0802A4B2
_0802A436:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A4B2
_0802A442:
	adds r2, r6, #0
	subs r2, #0x10
	mov r3, sb
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A45E
	cmp r6, r1
	bge _0802A46A
	cmp r2, r1
	blt _0802A4B2
_0802A45E:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A4B2
_0802A46A:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0802A4A2
	ldr r0, _0802A490 @ =gStageData
	ldrb r0, [r0, #6]
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	bne _0802A494
	movs r0, #1
	bl AddRings
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_8029C54
	b _0802A4AE
	.align 2, 0
_0802A490: .4byte gStageData
_0802A494:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_8029D1C
	b _0802A4AE
_0802A4A2:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_8029D1C
_0802A4AE:
	movs r0, #0xfe
	strb r0, [r5]
_0802A4B2:
	adds r5, #2
	mov r2, sb
	ldr r3, [r2, #0x14]
	ldr r2, [r2, #0x10]
_0802A4BA:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A3FA
_0802A4C2:
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r1, r2, #8
	ldr r6, [sp, #0x30]
	movs r0, #2
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
_0802A4D8:
	cmp r8, r0
	bgt _0802A4E4
	ldr r0, [sp, #0x10]
	cmp r8, r0
	bhs _0802A4E4
	b _0802A3D0
_0802A4E4:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r3, #8
	ldr r2, [sp, #0x30]
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	bgt _0802A506
	ldr r3, [sp, #0x14]
	cmp sl, r3
	bhs _0802A506
	b _0802A39A
_0802A506:
	ldr r4, [sp, #0x40]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	cmp r0, #3
	bhi _0802A514
	b _0802A2C4
_0802A514:
	ldr r2, _0802A524 @ =gCamera
	ldr r0, [r2, #4]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r1, r1, #8
	b _0802A68E
	.align 2, 0
_0802A524: .4byte gCamera
_0802A528:
	ldr r0, [r2]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r1, #8
	adds r0, #0xf0
	cmp r1, r0
	blt _0802A53A
	b _0802A67E
_0802A53A:
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blo _0802A542
	b _0802A67E
_0802A542:
	ldr r1, [sp, #0x10]
	mov r0, sl
	muls r0, r1, r0
	mov r2, r8
	lsls r1, r2, #2
	lsls r0, r0, #2
	ldr r3, [sp, #8]
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0802A55C
	b _0802A660
_0802A55C:
	subs r0, #8
	adds r5, r3, r0
	b _0802A656
_0802A562:
	cmp r1, #0xfe
	beq _0802A59A
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r4, r8
	lsls r0, r4, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r6, sl
	lsls r0, r6, #8
	adds r6, r1, r0
	ldr r1, _0802A5A0 @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802A59A
	ldr r2, _0802A5A0 @ =gCamera
	ldr r0, [r2, #4]
	subs r0, r6, r0
	cmp r0, #0
	blt _0802A59A
	subs r0, #0x10
	cmp r0, #0xa0
	ble _0802A5A4
_0802A59A:
	adds r5, #2
	b _0802A656
	.align 2, 0
_0802A5A0: .4byte gCamera
_0802A5A4:
	adds r5, #2
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	ldr r4, [sp, #0x18]
	cmp r4, #0
	beq _0802A5B6
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A5D8
_0802A5B6:
	movs r0, #0xff
	ldr r1, [sp, #4]
	strb r0, [r1, #0x1d]
	ldr r2, _0802A5D4 @ =gCamera
	ldr r0, [r2]
	subs r0, r7, r0
	strh r0, [r1, #0x10]
	ldr r0, [r2, #4]
	subs r0, r6, r0
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl DisplaySprite
	b _0802A64C
	.align 2, 0
_0802A5D4: .4byte gCamera
_0802A5D8:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	lsls r1, r1, #3
	ldr r0, _0802A6AC @ =gOamMallocBuffer
	adds r2, r1, r0
	ldrh r0, [r3, #0x14]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	lsrs r0, r0, #6
	str r2, [sp, #0x48]
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802A6B0 @ =iwram_end
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	cmp r0, r4
	beq _0802A69C
	ldr r1, _0802A6B4 @ =0x040000D4
	str r2, [r1]
	str r4, [r1, #4]
	ldr r0, _0802A6B8 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	ldr r1, _0802A6BC @ =gCamera
	ldr r0, [r1, #4]
	subs r0, r6, r0
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	ldr r1, _0802A6BC @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	ldr r2, _0802A6C0 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_0802A64C:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_0802A656:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A660
	b _0802A562
_0802A660:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r3, _0802A6BC @ =gCamera
	ldr r0, [r3]
	adds r0, #0xf0
	cmp r1, r0
	bge _0802A67E
	ldr r4, [sp, #0x10]
	cmp r8, r4
	bhs _0802A67E
	b _0802A542
_0802A67E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r0, #8
	ldr r2, _0802A6BC @ =gCamera
	ldr r0, [r2, #4]
_0802A68E:
	adds r0, #0xa0
	cmp r1, r0
	bge _0802A69C
	ldr r6, [sp, #0x14]
	cmp sl, r6
	bhs _0802A69C
	b _0802A528
_0802A69C:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A6AC: .4byte gOamMallocBuffer
_0802A6B0: .4byte iwram_end
_0802A6B4: .4byte 0x040000D4
_0802A6B8: .4byte 0x80000003
_0802A6BC: .4byte gCamera
_0802A6C0: .4byte 0x000001FF

	thumb_func_start sub_802A6C4
sub_802A6C4: @ 0x0802A6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _0802A74C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r1, #0x28]
	str r0, [sp, #8]
	ldr r4, _0802A750 @ =gStageData
	ldrh r1, [r4, #0xe]
	movs r2, #0
	str r2, [sp, #0x18]
	ldr r0, _0802A754 @ =gCamera
	adds r0, #0x6a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0802A706
	ldr r0, _0802A758 @ =gUnknown_080CEF58
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [sp, #8]
	bl RLUnCompWram
_0802A706:
	ldrb r0, [r4, #9]
	cmp r0, #8
	bne _0802A714
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _0802A714
	b _0802AAE6
_0802A714:
	mov r0, sp
	movs r1, #0xf6
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r1, #0xa
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r4, [sp, #4]
	ldr r2, [r4, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _0802A760
	ldr r0, _0802A75C @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r4, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	b _0802A776
	.align 2, 0
_0802A74C: .4byte gCurTask
_0802A750: .4byte gStageData
_0802A754: .4byte gCamera
_0802A758: .4byte gUnknown_080CEF58
_0802A75C: .4byte gRefSpriteTables
_0802A760:
	ldr r0, _0802A79C @ =gRefSpriteTables
	ldr r1, [r0]
	ldr r6, [sp, #4]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_0802A776:
	ldr r0, [sp, #8]
	adds r0, #4
	adds r1, r0, #0
	ldm r1!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldm r1!, {r0}
	str r1, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r2, #0
_0802A790:
	cmp r2, #0
	bne _0802A7A4
	ldr r0, _0802A7A0 @ =gStageData
	ldrb r1, [r0, #6]
	b _0802A7AE
	.align 2, 0
_0802A79C: .4byte gRefSpriteTables
_0802A7A0: .4byte gStageData
_0802A7A4:
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802A7AE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802A884 @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	mov r3, sl
	ldr r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	adds r2, #1
	str r2, [sp, #0x28]
	cmp r1, #0
	beq _0802A7D2
	b _0802A95E
_0802A7D2:
	movs r4, #0x30
	ldrsh r0, [r3, r4]
	cmp r0, #0x66
	bne _0802A7DC
	b _0802A95E
_0802A7DC:
	mov r0, sl
	adds r0, #0x48
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	beq _0802A7EA
	b _0802A95E
_0802A7EA:
	ldr r2, [r3, #0x14]
	asrs r1, r2, #8
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	subs r1, #0x10
	asrs r1, r1, #8
	adds r3, r2, #0
	cmp sb, r1
	ble _0802A814
	b _0802A95E
_0802A814:
	ldr r0, [sp, #0x14]
	cmp sb, r0
	blo _0802A81C
	b _0802A95E
_0802A81C:
	mov r1, sp
	str r1, [sp, #0x1c]
_0802A820:
	mov r4, sl
	ldr r2, [r4, #0x10]
	asrs r1, r2, #8
	ldr r6, [sp, #0x1c]
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r1, r0
	subs r0, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	subs r1, #8
	asrs r1, r1, #8
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r8, r1
	bgt _0802A93C
	ldr r1, [sp, #0x10]
	cmp r8, r1
	bhs _0802A93C
_0802A850:
	ldr r4, [sp, #0x10]
	mov r0, sb
	muls r0, r4, r0
	mov r6, r8
	lsls r1, r6, #2
	lsls r0, r0, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r6, #1
	str r6, [sp, #0x20]
	cmp r0, #0
	beq _0802A91C
	subs r0, #8
	adds r5, r4, r0
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A91C
	mov r4, sp
_0802A87A:
	cmp r1, #0xfe
	bne _0802A888
	adds r5, #2
	b _0802A914
	.align 2, 0
_0802A884: .4byte gPlayers
_0802A888:
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r6, r8
	lsls r0, r6, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r2, sb
	lsls r0, r2, #8
	adds r6, r1, r0
	movs r3, #1
	cmp r3, #0
	beq _0802A90C
	adds r2, r7, #0
	subs r2, #8
	mov r1, sl
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A8C2
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _0802A8CE
	cmp r2, r1
	blt _0802A90C
_0802A8C2:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A90C
_0802A8CE:
	adds r2, r6, #0
	subs r2, #0x10
	mov r3, sl
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A8EA
	cmp r6, r1
	bge _0802A8F6
	cmp r2, r1
	blt _0802A90C
_0802A8EA:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A90C
_0802A8F6:
	movs r0, #1
	bl AddRings
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_8029C54
	movs r0, #0xfe
	strb r0, [r5]
_0802A90C:
	adds r5, #2
	mov r6, sl
	ldr r3, [r6, #0x14]
	ldr r2, [r6, #0x10]
_0802A914:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A87A
_0802A91C:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r0, r2, #8
	ldr r4, [sp, #0x1c]
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	subs r0, #8
	asrs r0, r0, #8
	cmp r8, r0
	bgt _0802A93C
	ldr r6, [sp, #0x10]
	cmp r8, r6
	blo _0802A850
_0802A93C:
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	asrs r0, r3, #8
	ldr r2, [sp, #0x1c]
	movs r1, #3
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	subs r0, #0x10
	asrs r0, r0, #8
	cmp sb, r0
	bgt _0802A95E
	ldr r4, [sp, #0x14]
	cmp sb, r4
	bhs _0802A95E
	b _0802A820
_0802A95E:
	ldr r6, [sp, #0x28]
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bhi _0802A96A
	b _0802A790
_0802A96A:
	ldr r2, _0802A97C @ =gCamera
	ldr r0, [r2, #4]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r1, r1, #8
	adds r0, #0xa0
	mov sl, r2
	b _0802AADA
	.align 2, 0
_0802A97C: .4byte gCamera
_0802A980:
	ldr r0, [r2]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r1, #8
	adds r0, #0xf0
	cmp r1, r0
	blt _0802A992
	b _0802AAC8
_0802A992:
	ldr r1, [sp, #0x10]
	cmp r8, r1
	blo _0802A99A
	b _0802AAC8
_0802A99A:
	ldr r2, [sp, #0x10]
	mov r0, sb
	muls r0, r2, r0
	mov r3, r8
	lsls r1, r3, #2
	lsls r0, r0, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802AAAA
	subs r0, #8
	adds r5, r4, r0
	b _0802AAA2
_0802A9B8:
	cmp r1, #0xfe
	beq _0802A9EE
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r6, r8
	lsls r0, r6, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r2, sb
	lsls r0, r2, #8
	adds r6, r1, r0
	mov r3, sl
	ldr r0, [r3]
	subs r0, r7, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802A9EE
	ldr r0, [r3, #4]
	subs r0, r6, r0
	cmp r0, #0
	blt _0802A9EE
	subs r0, #0x10
	cmp r0, #0xa0
	ble _0802A9F2
_0802A9EE:
	adds r5, #2
	b _0802AAA2
_0802A9F2:
	adds r5, #2
	ldr r4, [sp, #4]
	ldrb r1, [r4, #0x1d]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0802AA04
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802AA20
_0802AA04:
	movs r0, #0xff
	ldr r1, [sp, #4]
	strb r0, [r1, #0x1d]
	mov r2, sl
	ldr r0, [r2]
	subs r0, r7, r0
	strh r0, [r1, #0x10]
	ldr r0, [r2, #4]
	subs r0, r6, r0
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl DisplaySprite
	b _0802AA94
_0802AA20:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	lsls r1, r1, #3
	ldr r0, _0802AAF8 @ =gOamMallocBuffer
	adds r2, r1, r0
	ldrh r0, [r3, #0x14]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	lsrs r0, r0, #6
	str r2, [sp, #0x2c]
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802AAFC @ =iwram_end
	ldr r0, [r0]
	ldr r2, [sp, #0x2c]
	cmp r0, r4
	beq _0802AAE6
	ldr r1, _0802AB00 @ =0x040000D4
	str r2, [r1]
	str r4, [r1, #4]
	ldr r0, _0802AB04 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	mov r1, sl
	ldr r0, [r1, #4]
	subs r0, r6, r0
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	mov r1, sl
	ldr r0, [r1]
	subs r0, r7, r0
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	ldr r2, _0802AB08 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_0802AA94:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r3, _0802AB0C @ =gCamera
	mov sl, r3
_0802AAA2:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A9B8
_0802AAAA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	mov r4, sl
	ldr r0, [r4]
	adds r0, #0xf0
	cmp r1, r0
	bge _0802AAC8
	ldr r6, [sp, #0x10]
	cmp r8, r6
	bhs _0802AAC8
	b _0802A99A
_0802AAC8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	mov r2, sl
	ldr r0, [r2, #4]
	adds r0, #0xa0
_0802AADA:
	cmp r1, r0
	bge _0802AAE6
	ldr r0, [sp, #0x14]
	cmp sb, r0
	bhs _0802AAE6
	b _0802A980
_0802AAE6:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AAF8: .4byte gOamMallocBuffer
_0802AAFC: .4byte iwram_end
_0802AB00: .4byte 0x040000D4
_0802AB04: .4byte 0x80000003
_0802AB08: .4byte 0x000001FF
_0802AB0C: .4byte gCamera

	thumb_func_start sub_802AB10
sub_802AB10: @ 0x0802AB10
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0802AB7C @ =sub_802AB8C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0, #0x28]
	movs r2, #0
	strh r6, [r0, #0x2c]
	strh r4, [r0, #0x10]
	strh r5, [r0, #0x12]
	ldr r1, _0802AB80 @ =0x06014180
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	ldr r1, _0802AB84 @ =0x00000535
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	ldr r1, _0802AB88 @ =0x00041200
	str r1, [r0, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AB7C: .4byte sub_802AB8C
_0802AB80: .4byte 0x06014180
_0802AB84: .4byte 0x00000535
_0802AB88: .4byte 0x00041200

	thumb_func_start sub_802AB8C
sub_802AB8C: @ 0x0802AB8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802ACB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r7, [r0, #0x28]
	adds r4, r0, #0
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x10]
	subs r1, r1, r0
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #0x12]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldrh r1, [r4, #0x2c]
	adds r1, #0x40
	strh r1, [r4, #0x2c]
	movs r1, #0x2c
	ldrsh r2, [r4, r1]
	ldr r3, _0802ACB4 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	muls r1, r2, r1
	asrs r1, r1, #0x16
	ldrh r2, [r4, #0x10]
	adds r1, r1, r2
	strh r1, [r4, #0x10]
	movs r5, #0x2c
	ldrsh r1, [r4, r5]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0x16
	ldrh r5, [r4, #0x12]
	adds r0, r0, r5
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x12]
	mov sb, r0
	ldrh r1, [r4, #0x10]
	mov sl, r1
	movs r2, #0x10
	ldrsh r3, [r4, r2]
	adds r2, r3, #0
	subs r2, #8
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r5, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, r6
	cmp r2, r1
	bgt _0802AC34
	adds r0, r3, #0
	adds r0, #8
	cmp r0, r1
	bge _0802AC46
	cmp r2, r1
	blt _0802ACB8
_0802AC34:
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0802ACB8
_0802AC46:
	mov r5, sb
	lsls r2, r5, #0x10
	asrs r6, r2, #0x10
	adds r5, r6, #0
	subs r5, #0x10
	ldr r1, [r7, #0x14]
	asrs r1, r1, #8
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x31
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r1, r3
	mov r8, r2
	cmp r5, r1
	bgt _0802AC74
	cmp r6, r1
	bge _0802AC84
	cmp r5, r1
	blt _0802ACB8
_0802AC74:
	adds r0, #0x33
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r5
	blt _0802ACB8
_0802AC84:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802ACA4
	movs r0, #1
	bl AddRings
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	asrs r1, r2, #0x10
	bl sub_8029C54
_0802ACA4:
	ldr r0, _0802ACB0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802ACDE
	.align 2, 0
_0802ACB0: .4byte gCurTask
_0802ACB4: .4byte gSineTable
_0802ACB8:
	ldr r2, _0802ACEC @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x10]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x12]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r5, sl
	strh r5, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
_0802ACDE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACEC: .4byte gCamera

	thumb_func_start sub_802ACF0
sub_802ACF0: @ 0x0802ACF0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802AD34 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r5, [r4, #0x10]
	ldrh r6, [r4, #0x12]
	ldr r1, _0802AD38 @ =gCamera
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r4, #0x10]
	ldr r1, [r1, #4]
	ldrh r0, [r4, #0x12]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802AD40
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0802AD3C @ =gStageData
	adds r0, #0xb5
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
	b _0802AD4A
	.align 2, 0
_0802AD34: .4byte gCurTask
_0802AD38: .4byte gCamera
_0802AD3C: .4byte gStageData
_0802AD40:
	adds r0, r4, #0
	bl DisplaySprite
	strh r5, [r4, #0x10]
	strh r6, [r4, #0x12]
_0802AD4A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_RingsMgr
TaskDestructor_RingsMgr: @ 0x0802AD50
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl EwramFree
	pop {r0}
	bx r0
