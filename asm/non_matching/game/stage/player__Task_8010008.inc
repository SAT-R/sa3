
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r7, _0801003C @ =gPlayers
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, _08010040 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x14
	adds r4, r1, r0
	ldrh r0, [r5, #0xa]
	adds r6, r2, #0
	cmp r0, #0xb
	beq _08010088
	cmp r0, #0xb
	bgt _08010044
	cmp r0, #0
	beq _08010058
	cmp r0, #0xa
	beq _08010070
	b _080100EE
	.align 2, 0
_0801003C: .4byte gPlayers
_08010040: .4byte gCurTask
_08010044:
	cmp r0, #0x15
	beq _080100B8
	cmp r0, #0x15
	bgt _08010052
	cmp r0, #0x14
	beq _080100A0
	b _080100EE
_08010052:
	cmp r0, #0x64
	beq _080100D8
	b _080100EE
_08010058:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0x45
	ble _080100EE
	ldr r0, _0801006C @ =0x00000522
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xa
	b _080100EC
	.align 2, 0
_0801006C: .4byte 0x00000522
_08010070:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0x77
	ble _080100EE
	movs r0, #0
	ldr r1, _08010084 @ =0x0000051B
	strh r1, [r4, #0xc]
	strb r0, [r4, #0x1a]
	movs r0, #0xb
	b _080100EC
	.align 2, 0
_08010084: .4byte 0x0000051B
_08010088:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xb3
	ble _080100EE
	ldr r0, _0801009C @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0x14
	b _080100EC
	.align 2, 0
_0801009C: .4byte 0x0000051B
_080100A0:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xef
	ble _080100EE
	ldr r0, _080100B4 @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0x15
	b _080100EC
	.align 2, 0
_080100B4: .4byte 0x0000051B
_080100B8:
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080100D0 @ =0x0000012B
	cmp r1, r0
	ble _080100EE
	ldr r0, _080100D4 @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0x64
	b _080100EC
	.align 2, 0
_080100D0: .4byte 0x0000012B
_080100D4: .4byte 0x0000051B
_080100D8:
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08010110 @ =0x00000167
	cmp r1, r0
	ble _080100EE
	ldr r0, _08010114 @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1a]
	movs r0, #0xc8
_080100EC:
	strh r0, [r5, #0xa]
_080100EE:
	ldr r3, [r5, #0x10]
	ldr r0, [r3, #0x10]
	str r0, [r5]
	ldr r0, [r3, #0x14]
	str r0, [r5, #4]
	ldr r2, _08010118 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	beq _0801011C
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	movs r0, #0x91
	lsls r0, r0, #1
	cmp r1, r0
	beq _08010158
	b _08010150
	.align 2, 0
_08010110: .4byte 0x00000167
_08010114: .4byte 0x0000051B
_08010118: .4byte gStageData
_0801011C:
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0801012E
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _08010158
	b _08010150
_0801012E:
	ldrh r0, [r2, #0x14]
	ldrh r1, [r2, #0x16]
	orrs r0, r1
	ldrh r1, [r2, #0x18]
	orrs r0, r1
	ldrh r1, [r3, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08010150
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08010158
_08010150:
	ldr r0, [r6]
	bl TaskDestroy
	b _0801017A
_08010158:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _08010180 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801017A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010180: .4byte gCamera

.syntax divided
