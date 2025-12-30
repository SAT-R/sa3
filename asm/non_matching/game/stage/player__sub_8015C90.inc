
.syntax unified
.text
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #4
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08015CDC
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08015CC8
	ldr r0, _08015CC4 @ =gUnknown_080CE6B8
	subs r1, #0x20
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08015CDA
	.align 2, 0
_08015CC4: .4byte gUnknown_080CE6B8
_08015CC8:
	ldr r0, _08015D00 @ =gUnknown_080CE6B8
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
_08015CDA:
	strh r0, [r4, #0x18]
_08015CDC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	bne _08015D04
	ldr r1, _08015D00 @ =gUnknown_080CE6B8
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	adds r5, r2, #0
	b _08015D0C
	.align 2, 0
_08015D00: .4byte gUnknown_080CE6B8
_08015D04:
	movs r0, #0
	strh r0, [r4, #0x1a]
	adds r5, r4, #0
	adds r5, #0x2a
_08015D0C:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08015D30
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl Player_StopSong
	ldr r0, [r4, #4]
	ldr r1, _08015D48 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015D30:
	ldrb r0, [r5]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #3
	bne _08015D4C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xf2
	bgt _08015D5C
	cmp r0, #0xf0
	blt _08015D5C
	b _08015D64
	.align 2, 0
_08015D48: .4byte 0xFFFDFFFF
_08015D4C:
	cmp r1, #1
	bne _08015D5C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xc4
	bgt _08015D5C
	cmp r0, #0xc1
	bge _08015D64
_08015D5C:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x85
	bne _08015D68
_08015D64:
	movs r0, #0x18
	strh r0, [r4, #0x30]
_08015D68:
	ldr r1, _08015D78 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015D78: .4byte Player_800DAF4
.syntax divided
