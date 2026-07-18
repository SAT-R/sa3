
.syntax unified
.text
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r1, [r4, #0x34]
	cmp r1, #0x6e
	beq _0806DE34
	cmp r1, #0x6e
	bgt _0806DD58
	cmp r1, #0xa
	beq _0806DD8A
	cmp r1, #0xa
	bgt _0806DD52
	cmp r1, #0
	beq _0806DD76
	b _0806DEC2
_0806DD52:
	cmp r1, #0x64
	beq _0806DE18
	b _0806DEC2
_0806DD58:
	cmp r1, #0xd2
	bne _0806DD5E
	b _0806DE82
_0806DD5E:
	cmp r1, #0xd2
	bgt _0806DD6A
	cmp r1, #0xc8
	bne _0806DD68
	b _0806DE64
_0806DD68:
	b _0806DEC2
_0806DD6A:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DD74
	b _0806DEA2
_0806DD74:
	b _0806DEC2
_0806DD76:
	movs r0, #1
	strh r0, [r4, #0x36]
	movs r0, #0xa
	strh r0, [r4, #0x34]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	b _0806DEC2
_0806DD8A:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806DE04 @ =0x000003FF
	cmp r0, r1
	ble _0806DD9C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806DD9C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806DE08 @ =0x00007FFF
	cmp r0, r1
	ble _0806DDB8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806DDB8:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806DE0C @ =0x0000B4FF
	cmp r1, r0
	ble _0806DDD6
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806DDD6:
	cmp r3, #1
	bne _0806DEC2
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806DE10 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0x64
	strh r0, [r4, #0x34]
	ldr r0, _0806DE14 @ =0x00000227
	bl m4aSongNumStart
	b _0806DEC2
	.align 2, 0
_0806DE04: .4byte 0x000003FF
_0806DE08: .4byte 0x00007FFF
_0806DE0C: .4byte 0x0000B4FF
_0806DE10: .4byte 0xFFFFFE00
_0806DE14: .4byte 0x00000227
_0806DE18:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806DE52
	ldr r0, _0806DE30 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x6e
	b _0806DE50
	.align 2, 0
_0806DE30: .4byte 0xFFFFFE40
_0806DE34:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806DE60 @ =0x000047FF
	cmp r1, r0
	ble _0806DE52
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xc8
_0806DE50:
	strh r0, [r4, #0x34]
_0806DE52:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4, #4]
	b _0806DEC2
	.align 2, 0
_0806DE60: .4byte 0x000047FF
_0806DE64:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DEC2
	adds r0, r4, #0
	movs r1, #1
	bl sub_806D808
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xd2
	strh r0, [r4, #0x34]
	b _0806DEC2
_0806DE82:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DEC2
	adds r0, r4, #0
	movs r1, #0
	bl sub_806D808
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806DEC2
_0806DEA2:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0806DEC2
	movs r0, #1
	strh r0, [r4, #0x36]
	strh r1, [r4, #0x34]
	bl sub_807A4A8
	ldr r0, _0806DED0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806DED4 @ =sub_806D2F8
	str r0, [r1, #8]
_0806DEC2:
	adds r0, r4, #0
	bl sub_806D568
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806DED0: .4byte gCurTask
_0806DED4: .4byte sub_806D2F8

.syntax divided
