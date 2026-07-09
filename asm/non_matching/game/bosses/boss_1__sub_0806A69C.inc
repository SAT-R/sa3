
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r1, _0806A6F8 @ =gStageData
	adds r7, r1, #0
	adds r7, #0x88
	ldr r1, [r7]
	ldrh r5, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0806A704
	movs r3, #0
	strb r3, [r6, #0xc]
	ldr r0, _0806A6FC @ =0x03000138
	adds r5, r5, r0
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r0, r4
	str r0, [r1, #4]
	ldr r2, [r6, #0x54]
	ldr r0, [r2, #4]
	orrs r0, r4
	str r0, [r2, #4]
	strh r3, [r6, #0x32]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x2e]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	ldr r1, [r6, #0x54]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	ldr r1, [r7]
	ldr r0, _0806A700 @ =Task_806A760
	str r0, [r1, #8]
	b _0806A720
	.align 2, 0
_0806A6F8: .4byte gStageData
_0806A6FC: .4byte 0x03000138
_0806A700: .4byte Task_806A760
_0806A704:
	cmp r1, #1
	blt _0806A720
	cmp r1, #4
	bgt _0806A720
	cmp r1, #3
	blt _0806A720
	ldrb r1, [r6, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806A720
	adds r0, r6, #0
	bl sub_806A5DC
_0806A720:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
