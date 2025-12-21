
.syntax unified
.text
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #4]
	ldr r0, _0800CC48 @ =0xFFFEFFFF
	ands r3, r0
	str r3, [r4, #4]
	ldr r2, _0800CC4C @ =gPlayers
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	orrs r3, r0
	str r3, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800CC9C
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0800CC50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	b _0800CC5C
	.align 2, 0
_0800CC48: .4byte 0xFFFEFFFF
_0800CC4C: .4byte gPlayers
_0800CC50:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	ldr r2, _0800CC78 @ =0xFFFFFB00
	adds r0, r0, r2
_0800CC5C:
	str r0, [r4, #0x10]
	movs r0, #0xf5
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800CC7C
	ldr r0, [r4, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #3
	b _0800CC80
	.align 2, 0
_0800CC78: .4byte 0xFFFFFB00
_0800CC7C:
	ldr r0, [r4, #0x14]
	ldr r2, _0800CCA8 @ =0xFFFFFB00
_0800CC80:
	adds r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0800CCAC @ =sub_800E808
	str r0, [r4]
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #0x74
	bl Player_PlaySong
_0800CC9C:
	adds r0, r4, #0
	bl sub_8014E70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CCA8: .4byte 0xFFFFFB00
_0800CCAC: .4byte sub_800E808

.syntax divided
