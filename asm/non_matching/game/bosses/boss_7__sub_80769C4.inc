
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r1, _08076A14 @ =gStageData
	adds r7, r1, #0
	adds r7, #0x88
	ldr r1, [r7]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	ldrb r1, [r0, #2]
	movs r4, #0x7f
	ands r4, r1
	adds r1, r4, #0
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r4, #1
	bne _08076A28
	ldr r0, _08076A18 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08076A1C @ =0x030000D4
	adds r5, r3, r1
	ldrb r1, [r5]
	cmp r1, #0
	bne _08076A46
	lsls r0, r2, #8
	str r0, [r6, #0x14]
	ldr r2, _08076A20 @ =0x0300002B
	adds r0, r3, r2
	strb r1, [r0]
	movs r0, #1
	strh r4, [r6, #0x2c]
	strb r0, [r5]
	ldr r1, [r7]
	ldr r0, _08076A24 @ =Task_D8_8075EE8
	str r0, [r1, #8]
	b _08076A46
	.align 2, 0
_08076A14: .4byte gStageData
_08076A18: .4byte 0x03000021
_08076A1C: .4byte 0x030000D4
_08076A20: .4byte 0x0300002B
_08076A24: .4byte Task_D8_8075EE8
_08076A28:
	cmp r1, #1
	blt _08076A46
	cmp r1, #4
	bgt _08076A46
	cmp r1, #3
	blt _08076A46
	ldr r1, _08076A4C @ =0x03000026
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08076A46
	ldr r2, _08076A50 @ =0x03000027
	adds r1, r3, r2
	movs r0, #1
	strb r0, [r1]
_08076A46:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076A4C: .4byte 0x03000026
_08076A50: .4byte 0x03000027
.syntax divided
