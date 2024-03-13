.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Minimole
CreateEntity_Minimole: @ 0x0805AE88
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805AF28 @ =sub_805B02C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805AF2C @ =sub_805B2E0
	str r1, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r2, sb
	str r2, [r4]
	ldrb r0, [r2]
	movs r3, #0
	strb r0, [r4, #5]
	strb r5, [r4, #4]
	movs r5, #0
	strh r6, [r4, #8]
	mov r6, r8
	strh r6, [r4, #0xa]
	ldrb r2, [r2]
	lsls r2, r2, #0xb
	str r2, [r4, #0x18]
	mov r6, sb
	ldrb r0, [r6, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x1c]
	str r2, [r4, #0x10]
	str r0, [r4, #0x14]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x1c]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xc]
	strb r5, [r4, #6]
	add r0, sp, #4
	strh r3, [r0]
	ldr r0, _0805AF30 @ =0x0300007C
	adds r1, r1, r0
	ldr r2, _0805AF34 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805AF38
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF28: .4byte sub_805B02C
_0805AF2C: .4byte sub_805B2E0
_0805AF30: .4byte 0x0300007C
_0805AF34: .4byte 0x01000002

	thumb_func_start sub_805AF38
sub_805AF38: @ 0x0805AF38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x16
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x28
	str r5, [r7, #0x28]
	ldr r4, _0805B024 @ =gUnknown_080D1EF4
	ldr r0, [r4, #0x14]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x10]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805B028 @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r3, #0x1c]
	mov r0, sl
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r3, r7, #0
	adds r3, #0x50
	str r5, [r7, #0x50]
	ldrh r0, [r4]
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sb
	strb r0, [r3, #0x1c]
	mov r1, sl
	strb r1, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B024: .4byte gUnknown_080D1EF4
_0805B028: .4byte gUnknown_03001D10

	thumb_func_start sub_805B02C
sub_805B02C: @ 0x0805B02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805B07C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _0805B080 @ =0x03000020
	adds r0, r6, r1
	ldr r2, _0805B084 @ =0x03000008
	adds r4, r6, r2
	subs r1, #0x1a
	adds r5, r6, r1
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_805CD70
	ldr r2, _0805B088 @ =0x03000018
	adds r0, r6, r2
	subs r2, #8
	adds r1, r6, r2
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_805CD70
	adds r0, r7, #0
	bl sub_805B2A4
	cmp r0, #1
	bne _0805B08C
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0805B0E0
	.align 2, 0
_0805B07C: .4byte gCurTask
_0805B080: .4byte 0x03000020
_0805B084: .4byte 0x03000008
_0805B088: .4byte 0x03000018
_0805B08C:
	adds r0, r7, #0
	bl sub_805B158
	ldr r0, _0805B0CC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B0E0
	cmp r1, #4
	beq _0805B0E0
	adds r0, r7, #0
	bl sub_805B22C
	cmp r0, #1
	bne _0805B0E0
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	bne _0805B0DC
	ldr r0, _0805B0D0 @ =0x03000050
	adds r2, r6, r0
	ldr r1, _0805B0D4 @ =gUnknown_080D1EF4
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0805B0D8 @ =sub_805B1CC
	str r0, [r1, #8]
	b _0805B0E0
	.align 2, 0
_0805B0CC: .4byte gUnknown_030008A0
_0805B0D0: .4byte 0x03000050
_0805B0D4: .4byte gUnknown_080D1EF4
_0805B0D8: .4byte sub_805B1CC
_0805B0DC:
	subs r0, #1
	strh r0, [r7, #0xe]
_0805B0E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B0EC
sub_805B0EC: @ 0x0805B0EC
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0xc]
	cmp r1, #0x7f
	bhi _0805B144
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805B106
	adds r0, r1, #2
	b _0805B108
_0805B106:
	adds r0, r1, #1
_0805B108:
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xc]
	cmp r0, #0x40
	bls _0805B11E
	adds r2, r3, #0
	adds r2, #0x50
	ldr r1, _0805B13C @ =gUnknown_080D1EF4
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
_0805B11E:
	ldr r1, _0805B140 @ =gUnknown_082B48B4
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	ldr r1, [r3, #0x14]
	subs r1, r1, r0
	str r1, [r3, #0x1c]
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x18]
	movs r0, #0
	b _0805B154
	.align 2, 0
_0805B13C: .4byte gUnknown_080D1EF4
_0805B140: .4byte gUnknown_082B48B4
_0805B144:
	movs r0, #0
	strh r0, [r3, #0xc]
	ldr r0, [r3, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	movs r0, #1
_0805B154:
	pop {r1}
	bx r1

	thumb_func_start sub_805B158
sub_805B158: @ 0x0805B158
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x50
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _0805B1C8 @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	adds r1, #0x14
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r7, #0
	bl DisplaySprite
	subs r7, #0x28
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B1C8: .4byte gUnknown_03001D10

	thumb_func_start sub_805B1CC
sub_805B1CC: @ 0x0805B1CC
	push {r4, r5, lr}
	ldr r5, _0805B1F4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805B158
	adds r0, r4, #0
	bl sub_805B2A4
	cmp r0, #1
	bne _0805B1F8
	ldr r0, [r5]
	bl TaskDestroy
	b _0805B21E
	.align 2, 0
_0805B1F4: .4byte gCurTask
_0805B1F8:
	ldr r0, _0805B224 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B21E
	cmp r1, #4
	beq _0805B21E
	adds r0, r4, #0
	bl sub_805B0EC
	cmp r0, #1
	bne _0805B21E
	movs r0, #0x3c
	strh r0, [r4, #0xe]
	ldr r1, [r5]
	ldr r0, _0805B228 @ =sub_805B02C
	str r0, [r1, #8]
_0805B21E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B224: .4byte gUnknown_030008A0
_0805B228: .4byte sub_805B02C

	thumb_func_start sub_805B22C
sub_805B22C: @ 0x0805B22C
	push {r4, r5, lr}
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0805B25C
_0805B23C:
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	subs r1, r0, r5
	cmp r1, #0
	blt _0805B24C
	cmp r1, #0x63
	ble _0805B252
	b _0805B256
_0805B24C:
	subs r0, r5, r0
	cmp r0, #0x63
	bgt _0805B256
_0805B252:
	movs r0, #1
	b _0805B26C
_0805B256:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805B25C:
	cmp r4, #1
	bhi _0805B26A
	adds r0, r4, #0
	bl sub_805CD20
	cmp r0, #0
	bne _0805B23C
_0805B26A:
	movs r0, #0
_0805B26C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B274
sub_805B274: @ 0x0805B274
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x50
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r2, r2, r3
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1

	thumb_func_start sub_805B2A4
sub_805B2A4: @ 0x0805B2A4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805B274
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x50
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805B2E0
sub_805B2E0: @ 0x0805B2E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0
