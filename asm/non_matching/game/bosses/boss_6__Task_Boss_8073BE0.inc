
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r0, _08073C30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08073C34 @ =0x03000110
	adds r2, r1, r0
	ldr r3, _08073C38 @ =0x03000044
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08073C18
	subs r0, r1, #1
	strh r0, [r5, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08073C18
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08073C18:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08073C3C
	subs r0, r1, #1
	strh r0, [r7]
	adds r6, r5, #0
	adds r6, #0x48
	b _08073C4C
	.align 2, 0
_08073C30: .4byte gCurTask
_08073C34: .4byte 0x03000110
_08073C38: .4byte 0x03000044
_08073C3C:
	adds r0, r5, #0
	adds r0, #0x48
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08073C56
	subs r0, r1, #1
	strh r0, [r6]
_08073C4C:
	ldrh r0, [r6]
	adds r4, r5, #0
	adds r4, #0x3d
	cmp r0, #0
	bne _08073C76
_08073C56:
	adds r0, r5, #0
	bl CreateEggPinballBall
	movs r0, #0x14
	strh r0, [r7]
	ldr r1, _08073CA0 @ =gUnknown_080D58E0
	adds r4, r5, #0
	adds r4, #0x3d
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, _08073CA4 @ =0x00000231
	bl m4aSongNumStart
_08073C76:
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	cmp r0, #0x95
	bgt _08073C84
	adds r0, r5, #0
	bl sub_80740CC
_08073C84:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08073CCA
	ldr r1, _08073CA8 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08073CBC
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08073CB4
	ldr r0, _08073CAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073CB0 @ =Task_Boss_8074C94
	b _08073CC8
	.align 2, 0
_08073CA0: .4byte gUnknown_080D58E0
_08073CA4: .4byte 0x00000231
_08073CA8: .4byte gStageData
_08073CAC: .4byte gCurTask
_08073CB0: .4byte Task_Boss_8074C94
_08073CB4:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08073CBC:
	adds r0, r5, #0
	bl sub_8074E4C
	ldr r0, _08073CDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073CE0 @ =Task_Boss_8073CE4
_08073CC8:
	str r0, [r1, #8]
_08073CCA:
	adds r0, r5, #0
	bl sub_8074CF0
	adds r0, r5, #0
	bl sub_8074148
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073CDC: .4byte gCurTask
_08073CE0: .4byte Task_Boss_8073CE4

.syntax divided
