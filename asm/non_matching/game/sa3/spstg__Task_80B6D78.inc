
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080B6E4C @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _080B6E50 @ =gDispCnt
	movs r2, #0x92
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080B6E54 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _080B6E58 @ =0x00000703
	strh r0, [r1, #2]
	ldr r0, _080B6E5C @ =gBgScrollRegs
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r1, _080B6E60 @ =0x0300000C
	adds r0, r7, r1
	ldr r3, _080B6E64 @ =0x000001AB
	movs r1, #0x1e
	str r1, [sp]
	movs r2, #0x14
	mov sb, r2
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #1
	mov sl, r1
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	movs r2, #7
	bl sub_80B6B3C
	ldr r0, _080B6E68 @ =gBldRegs
	strh r4, [r0, #4]
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r1, _080B6E6C @ =gUnknown_03001EA0
	ldr r0, _080B6E70 @ =0x06010000
	str r0, [r1]
	ldr r0, _080B6E74 @ =gUnknown_03001E9C
	str r4, [r0]
	ldr r0, _080B6E78 @ =gStageData
	ldrb r6, [r0, #0xd]
	cmp r6, #0
	bne _080B6EC4
	ldr r2, _080B6E7C @ =0x0300027E
	adds r0, r7, r2
	ldrb r2, [r0]
	cmp r2, #0
	beq _080B6E94
	ldr r1, _080B6E80 @ =0x0300004C
	adds r0, r7, r1
	ldr r5, _080B6E84 @ =gUnknown_080E3074
	ldr r2, _080B6E88 @ =0x0300027D
	adds r4, r7, r2
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrh r2, [r1, #4]
	ldrh r3, [r1]
	str r6, [sp]
	movs r1, #0x82
	lsls r1, r1, #1
	str r1, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #1
	bl sub_80B6BB8
	ldr r2, _080B6E8C @ =0x03000074
	adds r0, r7, r2
	ldr r3, _080B6E90 @ =0x0000046D
	str r6, [sp]
	movs r1, #0xa5
	lsls r1, r1, #1
	str r1, [sp, #4]
	movs r1, #0x1c
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	mov r1, sl
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #1
	movs r2, #0x28
	bl sub_80B6BB8
	b _080B6FA2
	.align 2, 0
_080B6E4C: .4byte gCurTask
_080B6E50: .4byte gDispCnt
_080B6E54: .4byte gBgCntRegs
_080B6E58: .4byte 0x00000703
_080B6E5C: .4byte gBgScrollRegs
_080B6E60: .4byte 0x0300000C
_080B6E64: .4byte 0x000001AB
_080B6E68: .4byte gBldRegs
_080B6E6C: .4byte gUnknown_03001EA0
_080B6E70: .4byte 0x06010000
_080B6E74: .4byte gUnknown_03001E9C
_080B6E78: .4byte gStageData
_080B6E7C: .4byte 0x0300027E
_080B6E80: .4byte 0x0300004C
_080B6E84: .4byte gUnknown_080E3074
_080B6E88: .4byte 0x0300027D
_080B6E8C: .4byte 0x03000074
_080B6E90: .4byte 0x0000046D
_080B6E94:
	ldr r1, _080B6EBC @ =0x0300009C
	adds r0, r7, r1
	ldr r3, _080B6EC0 @ =0x0000046D
	str r2, [sp]
	movs r1, #0x42
	str r1, [sp, #4]
	movs r1, #0x1c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #1
	movs r2, #0x20
	bl sub_80B6BB8
	movs r0, #0x43      @ MUS_SPECIAL_STAGE_RESULT_2
	bl m4aSongNumStart
	b _080B7012
	.align 2, 0
_080B6EBC: .4byte 0x0300009C
_080B6EC0: .4byte 0x0000046D
_080B6EC4:
	movs r6, #0
	movs r2, #0
	str r2, [sp, #0x18]
	movs r5, #0
	movs r4, #0
	ldr r0, _080B6FAC @ =0x03000074
	adds r3, r7, r0
	ldr r1, _080B6FB0 @ =0x030000C4
	adds r1, r1, r7
	mov sl, r1
	ldr r2, _080B6FB4 @ =0x0300004C
	adds r2, r7, r2
	str r2, [sp, #0x1c]
	adds r0, #0x28
	adds r0, r7, r0
	str r0, [sp, #0x20]
	ldr r1, _080B6FB8 @ =0x0300027F
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r2, #1
_080B6EEC:
	adds r0, r1, #0
	asrs r0, r4
	ands r0, r2
	cmp r0, #0
	beq _080B6EFC
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B6EFC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _080B6EEC
	cmp r6, #1
	bls _080B6F0E
	movs r2, #1
	str r2, [sp, #0x18]
_080B6F0E:
	ldr r0, _080B6FBC @ =0x0000027E
	add r0, r8
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B6F1C
	ldr r5, _080B6FC0 @ =0x0000FFF0
_080B6F1C:
	ldr r7, _080B6FC4 @ =0x00000481
	movs r4, #0
	str r4, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	lsls r5, r5, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xd
	adds r5, r5, r1
	asrs r5, r5, #0x10
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r3, #0
	movs r1, #1
	movs r2, #8
	adds r3, r7, #0
	bl sub_80B6BB8
	str r4, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, sl
	movs r1, #1
	movs r2, #6
	adds r3, r7, #0
	bl sub_80B6BB8
	str r4, [sp]
	movs r0, #0x58
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #9
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	movs r1, #1
	movs r2, #0xc
	adds r3, r7, #0
	bl sub_80B6BB8
	str r4, [sp]
	movs r6, #0x8c
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r0, #0xa
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x20]
	movs r1, #1
	movs r2, #0x16
	adds r3, r7, #0
	bl sub_80B6BB8
	mov r2, sb
	ldrb r4, [r2]
	cmp r4, #0
	beq _080B6FC8
_080B6FA2:
	movs r0, #0x42      @ MUS_SPECIAL_STAGE_RESULT_1
	bl m4aSongNumStart
	b _080B7012
	.align 2, 0
_080B6FAC: .4byte 0x03000074
_080B6FB0: .4byte 0x030000C4
_080B6FB4: .4byte 0x0300004C
_080B6FB8: .4byte 0x0300027F
_080B6FBC: .4byte 0x0000027E
_080B6FC0: .4byte 0x0000FFF0
_080B6FC4: .4byte 0x00000481
_080B6FC8:
	mov r0, r8
	adds r0, #0xec
	str r4, [sp]
	movs r1, #0x24
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0xc
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #1
	movs r2, #0x14
	adds r3, r7, #0
	bl sub_80B6BB8
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, r8
	str r4, [sp]
	movs r1, #0xac
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0xe
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #1
	movs r2, #8
	adds r3, r7, #0
	bl sub_80B6BB8
	ldr r0, _080B7064 @ =0x00000282
	add r0, r8
	strb r4, [r0]
	movs r0, #0x43      @ MUS_SPECIAL_STAGE_RESULT_2
	bl m4aSongNumStart
_080B7012:
	movs r4, #0
	movs r5, #0
_080B7016:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	ldr r2, _080B7068 @ =gUnknown_080E309C
	lsls r1, r4, #3
	adds r1, r1, r2
	ldrh r2, [r1, #4]
	ldrh r3, [r1]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldrb r1, [r1, #2]
	str r1, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #1
	bl sub_80B6BB8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080B7016
	ldr r0, _080B706C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B7070 @ =Task_80B7314
	str r0, [r1, #8]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7064: .4byte 0x00000282
_080B7068: .4byte gUnknown_080E309C
_080B706C: .4byte gCurTask
_080B7070: .4byte Task_80B7314

.syntax divided
