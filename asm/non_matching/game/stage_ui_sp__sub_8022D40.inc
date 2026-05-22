
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022D74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r3, _08022D78 @ =gStageData
	adds r7, r3, #0
	adds r7, #0x8e
	ldr r4, _08022D7C @ =0x0000015F
_08022D58:
	ldrb r1, [r7]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bne _08022D80
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, r0, r4
	movs r1, #8
	strb r1, [r0]
	b _08022D8C
	.align 2, 0
_08022D74: .4byte gCurTask
_08022D78: .4byte gStageData
_08022D7C: .4byte 0x0000015F
_08022D80:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, r0, r4
	strb r5, [r0]
_08022D8C:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08022D58
	adds r0, r3, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	ldrb r3, [r3, #6]
	cmp r0, r3
	beq _08022DCC
	cmp r0, #0xff
	beq _08022DCC
	bl IsOpponentOnScreen
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022DCC
	bl sub_8022E84
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08022DCC:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r6, r1
	movs r5, #0
_08022DD4:
	ldr r0, _08022E78 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08022DF2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08022DF2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08022DD4
	adds r4, r6, #0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
_08022E12:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08022E12
	ldr r0, _08022E7C @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _08022E80 @ =0x00000E0F
	movs r6, #0
	cmp r1, r0
	bhi _08022E4A
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x1f
_08022E4A:
	movs r5, #0
	movs r7, #0
_08022E4E:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strb r6, [r4, #0x1f]
	adds r0, r4, #0
	bl DisplaySprite
	strb r7, [r4, #0x1f]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08022E4E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022E78: .4byte gUnknown_03001060
_08022E7C: .4byte gStageData
_08022E80: .4byte 0x00000E0F

.syntax divided
