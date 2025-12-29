
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013ACC @ =gPlayers
	adds r5, r1, r0
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0xc
	adds r4, r0, #0
	ldr r0, _08013AD0 @ =gCamera
	ldrh r3, [r0]
	ldrh r7, [r0, #4]
	movs r0, #0x2a
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08013AA6
	b _08013D64
_08013AA6:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08013AB4
	b _08013D64
_08013AB4:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013AD4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08013D64
	.align 2, 0
_08013ACC: .4byte gPlayers
_08013AD0: .4byte gCamera
_08013AD4:
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #8]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08013AFE
	movs r0, #8
	strb r0, [r6, #0x1c]
_08013AFE:
	ldrh r2, [r5, #0x34]
	ldrh r3, [r5, #0x36]
	ldr r0, _08013B78 @ =gPlayerCharacterIdleAnims
	mov r7, ip
	ldrb r1, [r7]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08013B7C @ =0xFFED0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08013B24
	cmp r3, #1
	beq _08013B38
_08013B24:
	cmp r2, #0xb
	bne _08013B2C
	cmp r3, #0
	beq _08013B38
_08013B2C:
	cmp r2, #0x83
	beq _08013B32
	b _08013D64
_08013B32:
	cmp r3, #0
	beq _08013B38
	b _08013D64
_08013B38:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #1
	beq _08013B48
	b _08013C48
_08013B48:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r5, r3
	strb r1, [r0]
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x24
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	ands r0, r2
	cmp r0, #0
	bne _08013B80
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013B84
	.align 2, 0
_08013B78: .4byte gPlayerCharacterIdleAnims
_08013B7C: .4byte 0xFFED0000
_08013B80:
	movs r0, #0x80
	lsls r0, r0, #1
_08013B84:
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08013B98
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08013B98:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08013BA6
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08013BA6:
	ldr r0, [r5, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013BD0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08013BC8 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013BCC @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08013BD6
	.align 2, 0
_08013BC8: .4byte 0xFFFFFF00
_08013BCC: .4byte 0x000003FF
_08013BD0:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08013BD6:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013C3A
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08013C20
	b _08013D64
_08013C20:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	beq _08013C3A
	ldr r0, _08013C44 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C3A
	b _08013D64
_08013C3A:
	adds r0, r6, #0
	bl DisplaySprite
	b _08013D64
	.align 2, 0
_08013C44: .4byte gStageData
_08013C48:
	cmp r2, #2
	beq _08013C4E
	b _08013D64
_08013C4E:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	cmp r0, #0
	bne _08013C5E
	cmp r1, #0
	beq _08013C6E
_08013C5E:
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _08013C7C
_08013C6E:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	movs r1, #0x40
	cmp r0, #0
	beq _08013C7C
	movs r1, #0xc0
_08013C7C:
	ldr r3, _08013CA4 @ =0x00000149
	adds r0, r5, r3
	strb r1, [r0]
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x25
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013CA8
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013CAC
	.align 2, 0
_08013CA4: .4byte 0x00000149
_08013CA8:
	movs r0, #0x80
	lsls r0, r0, #1
_08013CAC:
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08013CC0
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08013CC0:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08013CCE
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08013CCE:
	ldr r0, [r5, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013CF8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08013CF0 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013CF4 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08013CFE
	.align 2, 0
_08013CF0: .4byte 0xFFFFFF00
_08013CF4: .4byte 0x000003FF
_08013CF8:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08013CFE:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013D5E
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	bne _08013D64
	adds r0, r5, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	beq _08013D5E
	ldr r0, _08013D6C @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08013D64
_08013D5E:
	adds r0, r6, #0
	bl DisplaySprite
_08013D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013D6C: .4byte gStageData
.syntax divided
