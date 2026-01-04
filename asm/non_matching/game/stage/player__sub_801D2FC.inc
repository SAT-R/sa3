
.syntax unified
.text
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012634
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801D3B0
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0801D324
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801D32C
_0801D324:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801D32C:
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D380
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D35C
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801D364
_0801D35C:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801D364:
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012BA4
	ldr r1, _0801D37C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D3DC
	.align 2, 0
_0801D37C: .4byte Player_8005380
_0801D380:
	ldr r1, _0801D3AC @ =sub_801DD2C
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xea
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #6
	bl sub_8012F74
	adds r0, r4, #0
	movs r1, #0x6f
	bl Player_PlaySong
	b _0801D3DC
	.align 2, 0
_0801D3AC: .4byte sub_801DD2C
_0801D3B0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D3E8
	ldr r2, _0801D3E0 @ =0x00000149
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0801D3DC
	adds r0, r4, #0
	bl sub_801D3F0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	ldr r1, _0801D3E4 @ =sub_801D8E8
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D3DC:
	movs r0, #1
	b _0801D3EA
	.align 2, 0
_0801D3E0: .4byte 0x00000149
_0801D3E4: .4byte sub_801D8E8
_0801D3E8:
	movs r0, #0
_0801D3EA:
	pop {r4}
	pop {r1}
	bx r1

.syntax divided
