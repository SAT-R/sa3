.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

	thumb_func_start Task_801F184
Task_801F184: @ 0x0801F184
	push {r4, lr}
	ldr r0, _0801F1A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F1AC
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F1B0
	.align 2, 0
_0801F1A8: .4byte gCurTask
_0801F1AC:
	ldr r0, [r2, #0x10]
	ldr r1, _0801F1CC @ =0xFFFFE800
_0801F1B0:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F1D0
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F1D4
	.align 2, 0
_0801F1CC: .4byte 0xFFFFE800
_0801F1D0:
	ldr r0, [r2, #0x14]
	ldr r1, _0801F208 @ =0xFFFFE800
_0801F1D4:
	adds r0, r0, r1
	str r0, [r4, #0xc]
	movs r0, #1
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F248
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0801F214
	ldr r0, _0801F20C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F210 @ =sub_801FC2C
	b _0801F246
	.align 2, 0
_0801F208: .4byte 0xFFFFE800
_0801F20C: .4byte gCurTask
_0801F210: .4byte sub_801FC2C
_0801F214:
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F226
	movs r0, #0x3c
	strb r0, [r4, #0x1a]
	b _0801F248
_0801F226:
	ldr r0, [r2, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F240
	ldr r0, _0801F238 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F23C @ =sub_801EF6C
	b _0801F246
	.align 2, 0
_0801F238: .4byte gCurTask
_0801F23C: .4byte sub_801EF6C
_0801F240:
	ldr r0, _0801F250 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F254 @ =sub_801EE74
_0801F246:
	str r0, [r1, #8]
_0801F248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F250: .4byte gCurTask
_0801F254: .4byte sub_801EE74

	thumb_func_start sub_801F258
sub_801F258: @ 0x0801F258
	push {r4, r5, r6, lr}
	ldr r2, _0801F284 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r5, #0
	ldr r4, [r3, #0x50]
	ldr r0, [r4, #0x10]
	str r0, [r3, #8]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0801F288
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0801F28C
	.align 2, 0
_0801F284: .4byte gCurTask
_0801F288:
	ldr r0, [r4, #0x14]
	ldr r1, _0801F2E8 @ =0xFFFFF000
_0801F28C:
	adds r0, r0, r1
	str r0, [r3, #0xc]
	movs r4, #0
	movs r0, #0x18
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	movs r0, #5
	strb r0, [r3, #0x18]
	movs r0, #7
	strb r0, [r3, #0x19]
	ldrh r1, [r3, #0x16]
	ldr r0, _0801F2EC @ =0x0000FFF9
	ands r0, r1
	strh r0, [r3, #0x16]
	adds r2, r3, #0
	adds r2, #0x20
	ldr r0, [r3, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F2BE
	movs r5, #0x80
	lsls r5, r5, #3
_0801F2BE:
	str r5, [r2, #8]
	ldr r1, _0801F2F0 @ =gCheeseTileData
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strh r4, [r2, #0x16]
	ldr r0, _0801F2F4 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r6]
	ldr r0, _0801F2F8 @ =sub_801F2FC
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2E8: .4byte 0xFFFFF000
_0801F2EC: .4byte 0x0000FFF9
_0801F2F0: .4byte gCheeseTileData
_0801F2F4: .4byte 0x0000FFFF
_0801F2F8: .4byte sub_801F2FC

	thumb_func_start sub_801F2FC
sub_801F2FC: @ 0x0801F2FC
	push {r4, lr}
	ldr r0, _0801F328 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r4, #8]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F32C
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0801F332
	.align 2, 0
_0801F328: .4byte gCurTask
_0801F32C:
	ldr r0, [r2, #0x14]
	ldr r2, _0801F348 @ =0xFFFFF400
	adds r0, r0, r2
_0801F332:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F34C
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F352
	.align 2, 0
_0801F348: .4byte 0xFFFFF400
_0801F34C:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F368 @ =0x0000FFFE
	ands r0, r1
_0801F352:
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0801F36C
	subs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #4
	bl sub_8020130
	b _0801F372
	.align 2, 0
_0801F368: .4byte 0x0000FFFE
_0801F36C:
	movs r0, #6
	bl sub_8020130
_0801F372:
	bl Task_8020284
	ldr r0, [r4, #8]
	ldr r1, [r4]
	subs r2, r0, r1
	cmp r2, #0
	blt _0801F38C
	ldr r0, _0801F388 @ =0x000003FE
	cmp r2, r0
	ble _0801F394
	b _0801F3CE
	.align 2, 0
_0801F388: .4byte 0x000003FE
_0801F38C:
	subs r1, r1, r0
	ldr r0, _0801F3A8 @ =0x000003FE
	cmp r1, r0
	bgt _0801F3CE
_0801F394:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	subs r2, r0, r1
	cmp r2, #0
	blt _0801F3B0
	ldr r0, _0801F3AC @ =0x000004FE
	cmp r2, r0
	ble _0801F3B8
	b _0801F3CE
	.align 2, 0
_0801F3A8: .4byte 0x000003FE
_0801F3AC: .4byte 0x000004FE
_0801F3B0:
	subs r1, r1, r0
	ldr r0, _0801F3EC @ =0x000004FE
	cmp r1, r0
	bgt _0801F3CE
_0801F3B8:
	ldr r1, _0801F3F0 @ =gCheeseTileData
	ldrh r0, [r1, #0x1c]
	strh r0, [r4, #0x2c]
	ldrh r0, [r1, #0x1e]
	adds r1, r4, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldr r0, _0801F3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F3F8 @ =sub_801F418
	str r0, [r1, #8]
_0801F3CE:
	ldr r1, [r4, #0x50]
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0xbe
	beq _0801F408
	ldr r0, [r1, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F400
	ldr r0, _0801F3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F3FC @ =sub_801EF6C
	b _0801F406
	.align 2, 0
_0801F3EC: .4byte 0x000004FE
_0801F3F0: .4byte gCheeseTileData
_0801F3F4: .4byte gCurTask
_0801F3F8: .4byte sub_801F418
_0801F3FC: .4byte sub_801EF6C
_0801F400:
	ldr r0, _0801F410 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F414 @ =sub_801EE74
_0801F406:
	str r0, [r1, #8]
_0801F408:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F410: .4byte gCurTask
_0801F414: .4byte sub_801EE74

	thumb_func_start sub_801F418
sub_801F418: @ 0x0801F418
	push {r4, lr}
	ldr r0, _0801F444 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r4]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F448
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0801F44E
	.align 2, 0
_0801F444: .4byte gCurTask
_0801F448:
	ldr r0, [r2, #0x14]
	ldr r2, _0801F464 @ =0xFFFFF400
	adds r0, r0, r2
_0801F44E:
	str r0, [r4, #4]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F468
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F46E
	.align 2, 0
_0801F464: .4byte 0xFFFFF400
_0801F468:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F490 @ =0x0000FFFE
	ands r0, r1
_0801F46E:
	strh r0, [r4, #0x16]
	bl Task_8020284
	ldr r1, [r4, #0x50]
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0xbe
	beq _0801F4A4
	ldr r0, [r1, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F49C
	ldr r0, _0801F494 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F498 @ =sub_801EF6C
	b _0801F4A2
	.align 2, 0
_0801F490: .4byte 0x0000FFFE
_0801F494: .4byte gCurTask
_0801F498: .4byte sub_801EF6C
_0801F49C:
	ldr r0, _0801F4AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F4B0 @ =sub_801EE74
_0801F4A2:
	str r0, [r1, #8]
_0801F4A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F4AC: .4byte gCurTask
_0801F4B0: .4byte sub_801EE74

	thumb_func_start sub_801F4B4
sub_801F4B4: @ 0x0801F4B4
	push {r4, r5, lr}
	ldr r5, _0801F51C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, [r1, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r1, #8]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r0, [r2, #0x14]
	str r0, [r1, #4]
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	movs r0, #4
	strb r0, [r1, #0x18]
	movs r0, #9
	strb r0, [r1, #0x19]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801F520 @ =0x0000FFF9
	ands r0, r2
	strh r0, [r1, #0x16]
	ldr r0, _0801F524 @ =0x03000020
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r1, _0801F528 @ =gCheeseTileData
	ldrh r0, [r1, #0x24]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x26]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F52C @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r5]
	ldr r0, _0801F530 @ =sub_8020660
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F51C: .4byte gCurTask
_0801F520: .4byte 0x0000FFF9
_0801F524: .4byte 0x03000020
_0801F528: .4byte gCheeseTileData
_0801F52C: .4byte 0x0000FFFF
_0801F530: .4byte sub_8020660

	thumb_func_start sub_801F534
sub_801F534: @ 0x0801F534
	push {r4, r5, lr}
	ldr r5, _0801F59C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, [r1, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r1, #8]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r0, [r2, #0x14]
	str r0, [r1, #4]
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	movs r0, #4
	strb r0, [r1, #0x18]
	movs r0, #0xa
	strb r0, [r1, #0x19]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801F5A0 @ =0x0000FFF9
	ands r0, r2
	strh r0, [r1, #0x16]
	ldr r0, _0801F5A4 @ =0x03000020
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r1, _0801F5A8 @ =gCheeseTileData
	ldrh r0, [r1, #0x28]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F5AC @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r5]
	ldr r0, _0801F5B0 @ =sub_80206B0
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F59C: .4byte gCurTask
_0801F5A0: .4byte 0x0000FFF9
_0801F5A4: .4byte 0x03000020
_0801F5A8: .4byte gCheeseTileData
_0801F5AC: .4byte 0x0000FFFF
_0801F5B0: .4byte sub_80206B0

	thumb_func_start sub_801F5B4
sub_801F5B4: @ 0x0801F5B4
	push {r4, r5, lr}
	ldr r5, _0801F61C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r0, [r2, #0x50]
	adds r1, r0, #0
	adds r1, #0xb0
	ldr r1, [r1]
	str r1, [r2, #8]
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r2, #0xc]
	ldrh r0, [r2, #0x16]
	movs r1, #2
	movs r4, #0
	orrs r0, r1
	strh r0, [r2, #0x16]
	movs r0, #9
	strb r0, [r2, #0x18]
	strb r1, [r2, #0x19]
	movs r0, #0x1e
	strb r0, [r2, #0x1a]
	ldr r0, _0801F620 @ =0x03000020
	adds r3, r3, r0
	ldr r1, _0801F624 @ =gCheeseTileData
	ldrh r0, [r1, #8]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F628 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r0, [r2, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	ldr r1, [r5]
	ldr r0, _0801F62C @ =sub_801F630
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F61C: .4byte gCurTask
_0801F620: .4byte 0x03000020
_0801F624: .4byte gCheeseTileData
_0801F628: .4byte 0x0000FFFF
_0801F62C: .4byte sub_801F630

	thumb_func_start sub_801F630
sub_801F630: @ 0x0801F630
	push {r4, lr}
	ldr r0, _0801F670 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801F65E
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r4, #0xc]
_0801F65E:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801F674
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F67A
	.align 2, 0
_0801F670: .4byte gCurTask
_0801F674:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F6B0 @ =0x0000FFFE
	ands r0, r1
_0801F67A:
	strh r0, [r4, #0x16]
	movs r0, #2
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F6C8
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F6B4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F6C0
	ldr r0, _0801F6B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F6BC @ =sub_801EF6C
	b _0801F6C6
	.align 2, 0
_0801F6B0: .4byte 0x0000FFFE
_0801F6B4: .4byte 0x0000FFFD
_0801F6B8: .4byte gCurTask
_0801F6BC: .4byte sub_801EF6C
_0801F6C0:
	ldr r0, _0801F6D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F6D4 @ =sub_801EE74
_0801F6C6:
	str r0, [r1, #8]
_0801F6C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F6D0: .4byte gCurTask
_0801F6D4: .4byte sub_801EE74

	thumb_func_start sub_801F6D8
sub_801F6D8: @ 0x0801F6D8
	push {r4, lr}
	ldr r4, _0801F728 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldrh r3, [r1, #0x16]
	ldr r0, _0801F72C @ =0x0000FFFD
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #0x16]
	movs r0, #0xb
	strb r0, [r1, #0x18]
	movs r0, #3
	strb r0, [r1, #0x19]
	movs r0, #0x1e
	strb r0, [r1, #0x1a]
	ldr r0, _0801F730 @ =0x03000020
	adds r2, r2, r0
	ldr r1, _0801F734 @ =gCheeseTileData
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	strh r3, [r2, #0x16]
	ldr r0, _0801F738 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r4]
	ldr r0, _0801F73C @ =sub_801F740
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F728: .4byte gCurTask
_0801F72C: .4byte 0x0000FFFD
_0801F730: .4byte 0x03000020
_0801F734: .4byte gCheeseTileData
_0801F738: .4byte 0x0000FFFF
_0801F73C: .4byte sub_801F740

	thumb_func_start sub_801F740
sub_801F740: @ 0x0801F740
	push {r4, lr}
	ldr r0, _0801F764 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F768
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F76C
	.align 2, 0
_0801F764: .4byte gCurTask
_0801F768:
	ldr r0, [r2, #0x10]
	ldr r1, _0801F788 @ =0xFFFFE800
_0801F76C:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0801F78C
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F790
	.align 2, 0
_0801F788: .4byte 0xFFFFE800
_0801F78C:
	ldr r0, [r2, #0x14]
	ldr r1, _0801F7A4 @ =0xFFFFE800
_0801F790:
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801F7A8
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F7AE
	.align 2, 0
_0801F7A4: .4byte 0xFFFFE800
_0801F7A8:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F7D4 @ =0x0000FFFE
	ands r0, r1
_0801F7AE:
	strh r0, [r4, #0x16]
	movs r0, #1
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F7CE
	ldr r0, _0801F7D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F7DC @ =sub_801EE74
	str r0, [r1, #8]
_0801F7CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7D4: .4byte 0x0000FFFE
_0801F7D8: .4byte gCurTask
_0801F7DC: .4byte sub_801EE74

	thumb_func_start sub_801F7E0
sub_801F7E0: @ 0x0801F7E0
	push {r4, lr}
	ldr r4, _0801F830 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldrh r3, [r1, #0x16]
	ldr r0, _0801F834 @ =0x0000FFFD
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #0x16]
	movs r0, #0xb
	strb r0, [r1, #0x18]
	movs r0, #3
	strb r0, [r1, #0x19]
	movs r0, #0x1e
	strb r0, [r1, #0x1a]
	ldr r0, _0801F838 @ =0x03000020
	adds r2, r2, r0
	ldr r1, _0801F83C @ =gCheeseTileData
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	strh r3, [r2, #0x16]
	ldr r0, _0801F840 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r4]
	ldr r0, _0801F844 @ =sub_801F848
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F830: .4byte gCurTask
_0801F834: .4byte 0x0000FFFD
_0801F838: .4byte 0x03000020
_0801F83C: .4byte gCheeseTileData
_0801F840: .4byte 0x0000FFFF
_0801F844: .4byte sub_801F848

	thumb_func_start sub_801F848
sub_801F848: @ 0x0801F848
	push {r4, r5, r6, lr}
	ldr r0, _0801F898 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r2, [r5, #0x1b]
	ldr r3, [r5, #0x50]
	ldr r4, _0801F89C @ =gSineTable
	lsls r2, r2, #4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r1, [r0, r6]
	asrs r1, r1, #1
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5, #8]
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F8A0
	ldrh r1, [r5, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F8A6
	.align 2, 0
_0801F898: .4byte gCurTask
_0801F89C: .4byte gSineTable
_0801F8A0:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801F8CC @ =0x0000FFFE
	ands r0, r1
_0801F8A6:
	strh r0, [r5, #0x16]
	movs r0, #1
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8C6
	ldr r0, _0801F8D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F8D4 @ =sub_801EF6C
	str r0, [r1, #8]
_0801F8C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F8CC: .4byte 0x0000FFFE
_0801F8D0: .4byte gCurTask
_0801F8D4: .4byte sub_801EF6C

	thumb_func_start sub_801F8D8
sub_801F8D8: @ 0x0801F8D8
	push {r4, lr}
	ldr r0, _0801F8F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F900
	ldr r0, [r2, #0x10]
	ldr r1, _0801F8FC @ =0xFFFFE800
	b _0801F906
	.align 2, 0
_0801F8F8: .4byte gCurTask
_0801F8FC: .4byte 0xFFFFE800
_0801F900:
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
_0801F906:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x14]
	str r0, [r4, #0xc]
	ldrh r1, [r4, #0x16]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strh r0, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0x19]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _0801F960 @ =gCheeseTileData
	ldrh r0, [r2, #0x20]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0x22]
	strb r0, [r1, #0x1a]
	strh r3, [r1, #0x16]
	ldr r0, _0801F964 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	ldr r0, _0801F968 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F96C @ =sub_801F970
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F960: .4byte gCheeseTileData
_0801F964: .4byte 0x0000FFFF
_0801F968: .4byte gCurTask
_0801F96C: .4byte sub_801F970

	thumb_func_start sub_801F970
sub_801F970: @ 0x0801F970
	push {r4, lr}
	ldr r0, _0801F994 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F998
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F99E
	.align 2, 0
_0801F994: .4byte gCurTask
_0801F998:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F9C8 @ =0x0000FFFE
	ands r0, r1
_0801F99E:
	strh r0, [r4, #0x16]
	movs r0, #2
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F9C2
	movs r0, #0xf
	strb r0, [r4, #0x1a]
	ldr r0, _0801F9CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F9D0 @ =sub_801F9D4
	str r0, [r1, #8]
_0801F9C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F9C8: .4byte 0x0000FFFE
_0801F9CC: .4byte gCurTask
_0801F9D0: .4byte sub_801F9D4

	thumb_func_start sub_801F9D4
sub_801F9D4: @ 0x0801F9D4
	push {r4, lr}
	ldr r0, _0801F9F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F9FC
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FA02
	.align 2, 0
_0801F9F8: .4byte gCurTask
_0801F9FC:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FA2C @ =0x0000FFFE
	ands r0, r1
_0801FA02:
	strh r0, [r4, #0x16]
	movs r0, #0
	bl sub_8020130
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	beq _0801FA30
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0x1a]
	movs r0, #0xf
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	b _0801FA42
	.align 2, 0
_0801FA2C: .4byte 0x0000FFFE
_0801FA30:
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0x1a]
	movs r0, #0xf
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
_0801FA42:
	str r0, [r4]
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0801FA56
	ldr r0, _0801FA5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FA60 @ =sub_801EE74
	str r0, [r1, #8]
_0801FA56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FA5C: .4byte gCurTask
_0801FA60: .4byte sub_801EE74

	thumb_func_start sub_801FA64
sub_801FA64: @ 0x0801FA64
	push {r4, lr}
	ldr r0, _0801FA84 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FA8C
	ldr r0, [r2, #0x10]
	ldr r1, _0801FA88 @ =0xFFFFE800
	b _0801FA92
	.align 2, 0
_0801FA84: .4byte gCurTask
_0801FA88: .4byte 0xFFFFE800
_0801FA8C:
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
_0801FA92:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x14]
	str r0, [r4, #0xc]
	ldrh r1, [r4, #0x16]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strh r0, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0x19]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _0801FAEC @ =gCheeseTileData
	ldrh r0, [r2, #0x20]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0x22]
	strb r0, [r1, #0x1a]
	strh r3, [r1, #0x16]
	ldr r0, _0801FAF0 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	ldr r0, _0801FAF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FAF8 @ =sub_801FAFC
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FAEC: .4byte gCheeseTileData
_0801FAF0: .4byte 0x0000FFFF
_0801FAF4: .4byte gCurTask
_0801FAF8: .4byte sub_801FAFC

	thumb_func_start sub_801FAFC
sub_801FAFC: @ 0x0801FAFC
	push {r4, r5, r6, lr}
	ldr r0, _0801FB20 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FB24
	ldrh r1, [r5, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FB2A
	.align 2, 0
_0801FB20: .4byte gCurTask
_0801FB24:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801FB98 @ =0x0000FFFE
	ands r0, r1
_0801FB2A:
	strh r0, [r5, #0x16]
	movs r0, #2
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB90
	ldr r4, _0801FB9C @ =gSineTable
	ldrb r0, [r5, #0x1d]
	lsls r0, r0, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #5
	bl __divsi3
	asrs r6, r0, #2
	str r6, [r5, #8]
	ldrb r0, [r5, #0x1d]
	lsls r0, r0, #3
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #5
	bl __divsi3
	asrs r1, r0, #2
	str r1, [r5, #0xc]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801FB84
	rsbs r0, r6, #0
	str r0, [r5, #8]
	rsbs r0, r1, #0
	str r0, [r5, #0xc]
_0801FB84:
	movs r0, #0xf
	strb r0, [r5, #0x1a]
	ldr r0, _0801FBA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FBA4 @ =sub_801FBA8
	str r0, [r1, #8]
_0801FB90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB98: .4byte 0x0000FFFE
_0801FB9C: .4byte gSineTable
_0801FBA0: .4byte gCurTask
_0801FBA4: .4byte sub_801FBA8

	thumb_func_start sub_801FBA8
sub_801FBA8: @ 0x0801FBA8
	push {r4, lr}
	ldr r0, _0801FBCC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FBD0
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FBD6
	.align 2, 0
_0801FBCC: .4byte gCurTask
_0801FBD0:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FC20 @ =0x0000FFFE
	ands r0, r1
_0801FBD6:
	strh r0, [r4, #0x16]
	movs r0, #0
	bl sub_8020130
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	ldr r3, [r4, #0x50]
	ldrb r0, [r4, #0x1a]
	movs r2, #0xf
	subs r0, r2, r0
	ldr r1, [r4, #8]
	muls r1, r0, r1
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r4]
	ldrb r0, [r4, #0x1a]
	subs r2, r2, r0
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r4, #4]
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0801FC18
	ldr r0, _0801FC24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FC28 @ =sub_801EE74
	str r0, [r1, #8]
_0801FC18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FC20: .4byte 0x0000FFFE
_0801FC24: .4byte gCurTask
_0801FC28: .4byte sub_801EE74

	thumb_func_start sub_801FC2C
sub_801FC2C: @ 0x0801FC2C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _0801FCC0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r5, r3
	ldr r0, [r3, #0x50]
	adds r0, #0x2a
	ldrb r4, [r0]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0xa
	movs r1, #0xd0
	lsls r1, r1, #0xc
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	ldr r0, _0801FCC4 @ =gCheeseTileData
	lsls r1, r4, #2
	adds r2, r1, r0
	ldrh r2, [r2]
	mov sb, r2
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	ldr r0, [r3]
	str r0, [r3, #8]
	ldr r0, [r3, #4]
	str r0, [r3, #0xc]
	movs r6, #0
	movs r2, #0
	strh r2, [r3, #0x10]
	strh r2, [r3, #0x12]
	ldrh r1, [r3, #0x16]
	ldr r0, _0801FCC8 @ =0x0000FFFD
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strh r0, [r3, #0x16]
	strb r6, [r3, #0x18]
	strb r4, [r3, #0x19]
	strb r6, [r3, #0x1a]
	ldr r0, _0801FCCC @ =0x03000020
	adds r5, r5, r0
	mov r1, sb
	strh r1, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	strh r2, [r5, #0x16]
	ldr r0, _0801FCD0 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0801FCD4 @ =sub_801FCD8
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCC0: .4byte gCurTask
_0801FCC4: .4byte gCheeseTileData
_0801FCC8: .4byte 0x0000FFFD
_0801FCCC: .4byte 0x03000020
_0801FCD0: .4byte 0x0000FFFF
_0801FCD4: .4byte sub_801FCD8

	thumb_func_start sub_801FCD8
sub_801FCD8: @ 0x0801FCD8
	push {r4, lr}
	ldr r0, _0801FCFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FD00
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _0801FD06
	.align 2, 0
_0801FCFC: .4byte gCurTask
_0801FD00:
	ldr r0, [r2, #0x10]
	ldr r2, _0801FD20 @ =0xFFFFE800
	adds r0, r0, r2
_0801FD06:
	str r0, [r4, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801FD24
	ldr r0, [r2, #0x14]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r0, r3
	b _0801FD2A
	.align 2, 0
_0801FD20: .4byte 0xFFFFE800
_0801FD24:
	ldr r0, [r2, #0x14]
	ldr r1, _0801FD40 @ =0xFFFFE800
	adds r0, r0, r1
_0801FD2A:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801FD44
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FD4A
	.align 2, 0
_0801FD40: .4byte 0xFFFFE800
_0801FD44:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FDA4 @ =0x0000FFFE
	ands r0, r1
_0801FD4A:
	strh r0, [r4, #0x16]
	movs r0, #1
	bl sub_8020130
	bl Task_8020284
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FD6A
	subs r0, r2, #1
	strh r0, [r1]
_0801FD6A:
	ldr r0, [r4, #0x54]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FD7E
	subs r0, r2, #1
	strh r0, [r1]
_0801FD7E:
	ldr r0, [r4, #0x50]
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0801FD9E
	ldr r0, [r4, #0x54]
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FDA8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	bl sub_801ECAC
_0801FD9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FDA4: .4byte 0x0000FFFE
_0801FDA8: .4byte 0x0000FFFB

	thumb_func_start sub_801FDAC
sub_801FDAC: @ 0x0801FDAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0801FE2C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, ip
	adds r4, r1, r0
	ldr r3, [r4, #0x50]
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	cmp r0, r8
	bne _0801FE44
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _0801FE30 @ =gCheeseTileData
	lsls r1, r5, #2
	adds r2, r1, r0
	ldrh r7, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r6, [r1]
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FE34 @ =0x0000FFFD
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x16]
	movs r0, #0xb
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x19]
	movs r0, #0x1e
	strb r0, [r4, #0x1a]
	ldr r3, _0801FE38 @ =0x03000020
	add r3, ip
	strh r7, [r3, #0xc]
	strb r6, [r3, #0x1a]
	strh r1, [r3, #0x16]
	ldr r0, _0801FE3C @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	mov r0, r8
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0801FE40 @ =sub_8020038
	b _0801FEB0
	.align 2, 0
_0801FE2C: .4byte gCurTask
_0801FE30: .4byte gCheeseTileData
_0801FE34: .4byte 0x0000FFFD
_0801FE38: .4byte 0x03000020
_0801FE3C: .4byte 0x0000FFFF
_0801FE40: .4byte sub_8020038
_0801FE44:
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xa
	movs r1, #0xe0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _0801FEC0 @ =gCheeseTileData
	lsls r1, r5, #2
	adds r2, r1, r0
	ldrh r7, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r6, [r1]
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r4, #0xc]
	ldrh r1, [r4, #0x16]
	movs r0, #2
	movs r2, #0
	orrs r0, r1
	strh r0, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x19]
	movs r0, #0x1e
	strb r0, [r4, #0x1a]
	ldr r3, _0801FEC4 @ =0x03000020
	add r3, ip
	strh r7, [r3, #0xc]
	strb r6, [r3, #0x1a]
	strh r2, [r3, #0x16]
	ldr r0, _0801FEC8 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	mov r0, r8
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r0, [r4, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0801FECC @ =sub_801FED0
_0801FEB0:
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEC0: .4byte gCheeseTileData
_0801FEC4: .4byte 0x03000020
_0801FEC8: .4byte 0x0000FFFF
_0801FECC: .4byte sub_801FED0

	thumb_func_start sub_801FED0
sub_801FED0: @ 0x0801FED0
	push {r4, lr}
	ldr r0, _0801FF10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801FEFE
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r4, #0xc]
_0801FEFE:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801FF14
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FF1A
	.align 2, 0
_0801FF10: .4byte gCurTask
_0801FF14:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FF44 @ =0x0000FFFE
	ands r0, r1
_0801FF1A:
	strh r0, [r4, #0x16]
	movs r0, #2
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FF54
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FF48 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, _0801FF4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FF50 @ =sub_801FC2C
	str r0, [r1, #8]
	b _0801FF9C
	.align 2, 0
_0801FF44: .4byte 0x0000FFFE
_0801FF48: .4byte 0x0000FFFD
_0801FF4C: .4byte gCurTask
_0801FF50: .4byte sub_801FC2C
_0801FF54:
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FF68
	subs r0, r2, #1
	strh r0, [r1]
_0801FF68:
	ldr r0, [r4, #0x54]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FF7C
	subs r0, r2, #1
	strh r0, [r1]
_0801FF7C:
	ldr r0, [r4, #0x50]
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0801FF9C
	ldr r0, [r4, #0x54]
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FFA4 @ =0x0000FFF9
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	bl sub_801ECAC
_0801FF9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFA4: .4byte 0x0000FFF9

	thumb_func_start sub_801FFA8
sub_801FFA8: @ 0x0801FFA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08020020 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #0x50]
	adds r0, #0x2a
	ldrb r3, [r0]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0xa
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r3, r3, r1
	lsrs r3, r3, #0x10
	ldr r0, _08020024 @ =gCheeseTileData
	lsls r1, r3, #2
	adds r2, r1, r0
	ldrh r6, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r2, [r1]
	ldrh r1, [r4, #0x16]
	ldr r0, _08020028 @ =0x0000FFFD
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x16]
	movs r0, #0xb
	strb r0, [r4, #0x18]
	strb r3, [r4, #0x19]
	movs r0, #0x1e
	strb r0, [r4, #0x1a]
	ldr r0, _0802002C @ =0x03000020
	adds r5, r5, r0
	strh r6, [r5, #0xc]
	strb r2, [r5, #0x1a]
	strh r1, [r5, #0x16]
	ldr r0, _08020030 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08020034 @ =sub_8020038
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020020: .4byte gCurTask
_08020024: .4byte gCheeseTileData
_08020028: .4byte 0x0000FFFD
_0802002C: .4byte 0x03000020
_08020030: .4byte 0x0000FFFF
_08020034: .4byte sub_8020038

	thumb_func_start sub_8020038
sub_8020038: @ 0x08020038
	push {r4, lr}
	ldr r0, _08020068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #1
	bl sub_8020130
	bl Task_8020284
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802006C
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _08020072
	.align 2, 0
_08020068: .4byte gCurTask
_0802006C:
	ldr r0, [r2, #0x10]
	ldr r2, _08020090 @ =0xFFFFE800
	adds r0, r0, r2
_08020072:
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _08020094
	ldr r0, [r2, #0x14]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r0, r3
	b _0802009A
	.align 2, 0
_08020090: .4byte 0xFFFFE800
_08020094:
	ldr r0, [r2, #0x14]
	ldr r1, _080200AC @ =0xFFFFE800
	adds r0, r0, r1
_0802009A:
	str r0, [r4, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bge _080200B0
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _080200B6
	.align 2, 0
_080200AC: .4byte 0xFFFFE800
_080200B0:
	ldrh r1, [r4, #0x16]
	ldr r0, _080200D0 @ =0x0000FFFE
	ands r0, r1
_080200B6:
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080200DC
	ldr r0, _080200D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080200D8 @ =sub_801FC2C
	str r0, [r1, #8]
	b _08020124
	.align 2, 0
_080200D0: .4byte 0x0000FFFE
_080200D4: .4byte gCurTask
_080200D8: .4byte sub_801FC2C
_080200DC:
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080200F0
	subs r0, r2, #1
	strh r0, [r1]
_080200F0:
	ldr r0, [r4, #0x54]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08020104
	subs r0, r2, #1
	strh r0, [r1]
_08020104:
	ldr r0, [r4, #0x50]
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _08020124
	ldr r0, [r4, #0x54]
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x16]
	ldr r0, _0802012C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	bl sub_801ECAC
_08020124:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802012C: .4byte 0x0000FFFB

	thumb_func_start sub_8020130
sub_8020130: @ 0x08020130
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _080201B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5, #8]
	ldr r0, [r5, #0xc]
	mov r8, r0
	movs r2, #0
	ldr r1, _080201B4 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020170
	ldrb r0, [r1, #0xa]
	cmp r0, #8
	beq _08020170
	cmp r0, #9
	beq _08020170
	ldrb r0, [r1, #4]
	cmp r0, #9
	beq _08020170
	b _08020276
_08020170:
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r6, r0, #8
	ldr r0, [r5, #4]
	mov r1, r8
	subs r0, r1, r0
	asrs r4, r0, #8
	cmp r6, #0
	bne _08020186
	cmp r4, #0
	beq _08020196
_08020186:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08020196:
	adds r1, r6, #0
	cmp r6, #0
	bge _0802019E
	rsbs r1, r6, #0
_0802019E:
	adds r0, r4, #0
	cmp r4, #0
	bge _080201A6
	rsbs r0, r4, #0
_080201A6:
	cmp r1, r0
	ble _080201B8
	adds r0, r6, #0
	b _080201BA
	.align 2, 0
_080201B0: .4byte gCurTask
_080201B4: .4byte gStageData
_080201B8:
	adds r0, r4, #0
_080201BA:
	cmp r0, #0
	bge _080201C0
	rsbs r0, r0, #0
_080201C0:
	lsls r1, r0, #5
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	ldr r3, _080201D4 @ =0x00007FFF
	cmp r1, r3
	ble _080201D8
	adds r1, r3, #0
	b _080201E0
	.align 2, 0
_080201D4: .4byte 0x00007FFF
_080201D8:
	lsls r0, r0, #7
	cmp r1, r0
	bge _080201E0
	adds r1, r0, #0
_080201E0:
	strh r1, [r5, #0x14]
	ldr r4, _0802022C @ =gSineTable
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r3, #0x14
	ldrsh r1, [r5, r3]
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	ldr r0, [r5]
	adds r6, r0, r3
	str r6, [r5]
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r1, r0, r1
	lsls r1, r1, #8
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r3, #0
	bge _08020230
	cmp r7, r6
	ble _08020236
	b _08020234
	.align 2, 0
_0802022C: .4byte gSineTable
_08020230:
	cmp r7, r6
	bge _08020236
_08020234:
	str r7, [r5]
_08020236:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08020248
	ldr r0, [r5, #4]
	cmp r8, r0
	ble _08020252
	mov r3, r8
	str r3, [r5, #4]
	b _08020252
_08020248:
	ldr r0, [r5, #4]
	cmp r8, r0
	bge _08020252
	mov r0, r8
	str r0, [r5, #4]
_08020252:
	ldr r2, [r5, #0x50]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020276
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0802026E
	movs r0, #0
	bl sub_801EBC0
	b _08020276
_0802026E:
	movs r0, #4
	adds r1, r2, #0
	bl sub_801EBC0
_08020276:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8020284
Task_8020284: @ 0x08020284
	push {r4, r5, r6, r7, lr}
	ldr r0, _08020304 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r3, [r5, #0x50]
	adds r0, #0x20
	adds r4, r1, r0
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	bne _080202A8
	b _080203BC
_080202A8:
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, _08020308 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0x10]
	adds r1, r1, r2
	strh r1, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x12]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r3, #0xe0
	ldr r0, [r3]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, _0802030C @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r4, #8]
	ldr r0, [r3]
	ldr r2, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	orrs r2, r1
	str r2, [r4, #8]
	ldrb r0, [r5, #0x19]
	cmp r0, #0xc
	bls _08020310
	ldr r0, [r3]
	adds r0, #0x2b
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r2, r0
	b _08020318
	.align 2, 0
_08020304: .4byte gCurTask
_08020308: .4byte gCamera
_0802030C: .4byte 0xFFFFCFFF
_08020310:
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, _0802032C @ =0xFFFBFFFF
	ands r2, r0
_08020318:
	str r2, [r4, #8]
	ldrh r1, [r5, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08020334
	ldr r0, [r4, #8]
	ldr r1, _08020330 @ =0xFFFFFBFF
	ands r0, r1
	b _0802033C
	.align 2, 0
_0802032C: .4byte 0xFFFBFFFF
_08020330: .4byte 0xFFFFFBFF
_08020334:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0802033C:
	str r0, [r4, #8]
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020356
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0802035C
_08020356:
	ldr r0, [r4, #8]
	ldr r1, _080203C4 @ =0xFFFFF7FF
	ands r0, r1
_0802035C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #0x50]
	ldr r1, [r0]
	ldr r3, _080203C8 @ =sub_800EAEC
	cmp r1, r3
	beq _080203A4
	ldr r7, _080203CC @ =Player_800EAAC
	cmp r1, r7
	beq _080203A4
	ldr r6, _080203D0 @ =gPlayers
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r2, r0, #0x1e
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r3
	beq _080203A4
	adds r0, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r0, [r1]
	cmp r0, r7
	bne _080203AC
_080203A4:
	ldrh r1, [r5, #0x16]
	movs r0, #8
	orrs r0, r1
	strh r0, [r5, #0x16]
_080203AC:
	ldrh r1, [r5, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080203BC
	adds r0, r4, #0
	bl DisplaySprite
_080203BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080203C4: .4byte 0xFFFFF7FF
_080203C8: .4byte sub_800EAEC
_080203CC: .4byte Player_800EAAC
_080203D0: .4byte gPlayers

	thumb_func_start sub_80203D4
sub_80203D4: @ 0x080203D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08020424 @ =gStageData
	adds r6, r0, #0
	adds r6, #0x98
	ldr r5, [r6]
	cmp r5, #0
	bne _0802041A
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0802041A
	ldr r0, _08020428 @ =Task_801EDB4
	ldr r2, _0802042C @ =0x00003010
	ldr r1, _08020430 @ =TaskDestructor_8020434
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	str r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r4, #0x10]
	str r0, [r1]
	ldr r0, [r4, #0x14]
	str r0, [r1, #4]
	str r4, [r1, #0x50]
	str r5, [r1, #0x54]
_0802041A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020424: .4byte gStageData
_08020428: .4byte Task_801EDB4
_0802042C: .4byte 0x00003010
_08020430: .4byte TaskDestructor_8020434

	thumb_func_start TaskDestructor_8020434
TaskDestructor_8020434: @ 0x08020434
	ldr r0, _08020440 @ =gStageData
	adds r0, #0x98
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08020440: .4byte gStageData

	thumb_func_start sub_8020444
sub_8020444: @ 0x08020444
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802046C @ =gStageData
	adds r0, #0x98
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0802047C
	ldr r0, [r3, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	beq _08020474
	ldr r0, _08020470 @ =sub_801EE74
	b _0802047E
	.align 2, 0
_0802046C: .4byte gStageData
_08020470: .4byte sub_801EE74
_08020474:
	ldr r0, _08020478 @ =sub_801EF6C
	b _0802047E
	.align 2, 0
_08020478: .4byte sub_801EF6C
_0802047C:
	ldr r0, _08020484 @ =sub_801FC2C
_0802047E:
	str r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08020484: .4byte sub_801FC2C

	thumb_func_start sub_8020488
sub_8020488: @ 0x08020488
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080204C0 @ =gStageData
	adds r0, #0x98
	ldr r4, [r0]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080204F4
	ldr r2, [r3, #0xc]
	movs r0, #0x18
	ands r2, r0
	cmp r2, #8
	beq _080204D8
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080204D0
	cmp r2, #0x10
	beq _080204C8
	ldr r0, _080204C4 @ =sub_801F6D8
	b _0802050E
	.align 2, 0
_080204C0: .4byte gStageData
_080204C4: .4byte sub_801F6D8
_080204C8:
	ldr r0, _080204CC @ =sub_801F7E0
	b _0802050E
	.align 2, 0
_080204CC: .4byte sub_801F7E0
_080204D0:
	ldr r0, _080204D4 @ =sub_801F5B4
	b _0802050E
	.align 2, 0
_080204D4: .4byte sub_801F5B4
_080204D8:
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080204EC
	ldr r0, _080204E8 @ =sub_801F8D8
	b _0802050E
	.align 2, 0
_080204E8: .4byte sub_801F8D8
_080204EC:
	ldr r0, _080204F0 @ =sub_801FA64
	b _0802050E
	.align 2, 0
_080204F0: .4byte sub_801FA64
_080204F4:
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802050C
	ldr r0, _08020508 @ =sub_801FFA8
	b _0802050E
	.align 2, 0
_08020508: .4byte sub_801FFA8
_0802050C:
	ldr r0, _08020518 @ =sub_801FDAC
_0802050E:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020518: .4byte sub_801FDAC

	thumb_func_start sub_802051C
sub_802051C: @ 0x0802051C
	ldr r0, _08020528 @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _0802052C @ =Task_801F0DC
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020528: .4byte gStageData
_0802052C: .4byte Task_801F0DC

	thumb_func_start sub_8020530
sub_8020530: @ 0x08020530
	ldr r0, _0802053C @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _08020540 @ =sub_801F258
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0802053C: .4byte gStageData
_08020540: .4byte sub_801F258

	thumb_func_start sub_8020544
sub_8020544: @ 0x08020544
	ldr r0, _08020550 @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _08020554 @ =sub_801F4B4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020550: .4byte gStageData
_08020554: .4byte sub_801F4B4

	thumb_func_start sub_8020558
sub_8020558: @ 0x08020558
	ldr r0, _08020564 @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _08020568 @ =sub_801F534
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020564: .4byte gStageData
_08020568: .4byte sub_801F534

	thumb_func_start sub_802056C
sub_802056C: @ 0x0802056C
	push {r4, lr}
	ldr r0, _08020590 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020594
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _08020598
	.align 2, 0
_08020590: .4byte gCurTask
_08020594:
	ldr r0, [r2, #0x10]
	ldr r1, _080205D0 @ =0xFFFFE800
_08020598:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x14]
	ldr r1, _080205D0 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	movs r0, #1
	bl sub_8020130
	bl Task_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080205E4
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _080205DC
	ldr r0, _080205D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080205D8 @ =sub_801EF6C
	b _080205E2
	.align 2, 0
_080205D0: .4byte 0xFFFFE800
_080205D4: .4byte gCurTask
_080205D8: .4byte sub_801EF6C
_080205DC:
	ldr r0, _080205EC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080205F0 @ =sub_801EE74
_080205E2:
	str r0, [r1, #8]
_080205E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080205EC: .4byte gCurTask
_080205F0: .4byte sub_801EE74

	thumb_func_start sub_80205F4
sub_80205F4: @ 0x080205F4
	push {r4, lr}
	ldr r0, _08020638 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	bl sub_8020130
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020650
	ldr r3, [r4, #0x50]
	ldr r0, _0802063C @ =gStageData
	adds r0, #0x98
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0802064C
	ldr r0, [r3, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	beq _08020644
	ldr r0, _08020640 @ =sub_801EE74
	b _0802064E
	.align 2, 0
_08020638: .4byte gCurTask
_0802063C: .4byte gStageData
_08020640: .4byte sub_801EE74
_08020644:
	ldr r0, _08020648 @ =sub_801EF6C
	b _0802064E
	.align 2, 0
_08020648: .4byte sub_801EF6C
_0802064C:
	ldr r0, _0802065C @ =sub_801FC2C
_0802064E:
	str r0, [r2, #8]
_08020650:
	bl Task_8020284
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802065C: .4byte sub_801FC2C

	thumb_func_start sub_8020660
sub_8020660: @ 0x08020660
	push {lr}
	ldr r0, _08020684 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020688
	ldrh r1, [r2, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0802068E
	.align 2, 0
_08020684: .4byte gCurTask
_08020688:
	ldrh r1, [r2, #0x16]
	ldr r0, _080206AC @ =0x0000FFFE
	ands r0, r1
_0802068E:
	strh r0, [r2, #0x16]
	ldr r1, [r2, #0x50]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0xc]
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldr r0, [r1, #0x14]
	str r0, [r2, #4]
	bl Task_8020284
	pop {r0}
	bx r0
	.align 2, 0
_080206AC: .4byte 0x0000FFFE

	thumb_func_start sub_80206B0
sub_80206B0: @ 0x080206B0
	push {lr}
	ldr r0, _080206D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080206D8
	ldrh r1, [r2, #0x16]
	movs r0, #1
	orrs r0, r1
	b _080206DE
	.align 2, 0
_080206D4: .4byte gCurTask
_080206D8:
	ldrh r1, [r2, #0x16]
	ldr r0, _080206FC @ =0x0000FFFE
	ands r0, r1
_080206DE:
	strh r0, [r2, #0x16]
	ldr r1, [r2, #0x50]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0xc]
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldr r0, [r1, #0x14]
	str r0, [r2, #4]
	bl Task_8020284
	pop {r0}
	bx r0
	.align 2, 0
_080206FC: .4byte 0x0000FFFE

@ bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);
	thumb_func_start sub_8020700
sub_8020700: @ 0x08020700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	mov sl, r2
	ldr r0, [sp, #0x24]
	mov ip, r0
	ldr r0, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r3, [r0]
	adds r6, r3, #0
	adds r6, #0xc
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802073A
	b _08020860
_0802073A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	mov r8, r2
	cmp r0, r4
	bne _08020752
	b _08020860
_08020752:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	lsls r2, r1, #3
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _08020766
	b _08020860
_08020766:
	cmp r1, #0
	bne _08020788
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _080207AC
_08020788:
	mov r1, sp
	adds r2, r6, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_080207AC:
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r2, r0, #8
	ldr r0, [r1, #0x14]
	asrs r5, r0, #8
	ldrh r0, [r1, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080207D4
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080207D2
	subs r5, #0x20
	b _080207D4
_080207D2:
	adds r5, #0x20
_080207D4:
	mov r1, r8
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sb
	adds r1, r0, r4
	mov r0, sp
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r2, r2, r6
	cmp r1, r2
	bgt _08020808
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _08020818
	cmp r1, r2
	blt _08020860
_08020808:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	blt _08020860
_08020818:
	mov r1, r8
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	mov r0, sp
	movs r6, #1
	ldrsb r6, [r0, r6]
	adds r1, r5, r6
	cmp r2, r1
	bgt _0802084C
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0802085C
	cmp r2, r1
	blt _08020860
_0802084C:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _08020860
_0802085C:
	movs r0, #1
	b _08020862
_08020860:
	movs r0, #0
_08020862:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8020874
sub_8020874: @ 0x08020874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	mov sl, r1
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x34]
	mov ip, r0              @ ip = Player *p
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	mov r0, ip
	adds r0, #0xe0
	ldr r3, [r0]
	adds r6, r3, #0
	adds r6, #0xc
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080208DC
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	mov r0, r8
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	adds r7, r2, #0
	cmp r0, r4
	beq _080208DC
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	lsls r2, r1, #3
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _080208E0
_080208DC:
	movs r0, #0
	b _0802093E
_080208E0:
	cmp r1, #0
	bne _08020902
	add r1, sp, #0xc
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	adds r0, r1, #0
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _08020926
_08020902:
	add r1, sp, #0xc
	adds r2, r6, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_08020926:
	asrs r1, r7, #0x10
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	mov r0, sb
	str r0, [sp, #8]
	mov r0, r8
	mov r2, sl
	ldr r3, [sp, #0x10]
	bl sub_8020A58
_0802093E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    @ Collision Player->Sprite
	thumb_func_start sub_8020950
sub_8020950: @ 0x08020950
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	movs r4, #0
	ldr r1, [r6, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080209AA
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080209AE
_080209AA:
	movs r0, #0
	b _08020A48
_080209AE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080209CA
	ldr r0, [r5, #0x6c]
	cmp r0, r6
	bne _080209CA
	movs r4, #1
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
_080209CA:
	ldrh r1, [r5, #0x30]
	adds r0, r1, #0
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080209E8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbc
	beq _080209E8
	cmp r0, #0xbd
	beq _080209E8
	cmp r0, #0xbe
	bne _080209EA
_080209E8:
	movs r7, #1
_080209EA:
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	str r7, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	mov r3, sb
	bl sub_8020A58
	adds r2, r0, #0
	cmp r2, #0
	beq _08020A2A
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08020A46
	ldr r0, [r5, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r5, #4]
	str r6, [r5, #0x6c]
	cmp r4, #0
	bne _08020A46
	cmp r6, #0
	bne _08020A46
	ldrh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
	b _08020A46
_08020A2A:
	cmp r4, #0
	beq _08020A46
	ldr r1, [r5, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08020A46
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
	str r2, [r5, #0x6c]
_08020A46:
	adds r0, r2, #0
_08020A48:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    @ Collision?
	thumb_func_start sub_8020A58
sub_8020A58: @ 0x08020A58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	mov sl, r2
	str r3, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov ip, r0              @ ip = Player *
	ldr r0, [sp, #0x40]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r1, #0x14]
	asrs r7, r0, #8
	movs r6, #0
	ldrh r0, [r1, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020AA6
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020AA4
	subs r7, #0x20
	b _08020AA6
_08020AA4:
	adds r7, #0x20
_08020AA6:
	lsls r1, r2, #0x10
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r4, r2, r0
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r3, r0, #0
	add r3, sl
	ldr r5, [sp, #0x38]     @ r5 = void *param4
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov r5, sb
	adds r2, r5, r0
	mov r8, r1
	str r0, [sp, #0x10]
	cmp r3, r2
	bgt _08020AEA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08020AFC
	cmp r3, r2
	bge _08020AEA
	b _08020CC6
_08020AEA:
	ldr r5, [sp, #0x38]
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _08020AFC
	b _08020CC6
_08020AFC:
	mov r2, r8
	asrs r0, r2, #0xd
	ldr r5, [sp]
	adds r3, r5, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r0, [sp, #4]
	adds r2, r0, r4
	ldr r1, [sp, #0x38]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r1, r7, r0
	str r0, [sp, #0xc]
	cmp r2, r1
	bgt _08020B36
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020B48
	cmp r2, r1
	bge _08020B36
	b _08020CC6
_08020B36:
	ldr r3, [sp, #0x38]
	movs r0, #3
	ldrsb r0, [r3, r0]
	ldr r5, [sp, #0xc]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _08020B48
	b _08020CC6
_08020B48:
	mov r1, r8
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r0, #2
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r2, r5, r4
	asrs r2, r2, #1
	add r2, sl
	subs r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [sp, #4]
	adds r3, r1, r0
	cmp r2, sb
	bgt _08020B90
	mov r2, sl
	adds r0, r2, r4
	ldr r1, [sp, #0x10]
	add r1, sb
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _08020BA2
_08020B90:
	mov r1, sl
	adds r0, r1, r5
	ldr r2, [sp, #0x38]
	movs r1, #2
	ldrsb r1, [r2, r1]
	add r1, sb
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
_08020BA2:
	orrs r6, r0
	cmp r3, r7
	ble _08020BE6
	mov r3, r8
	asrs r0, r3, #0xd
	ldr r1, [sp]
	adds r0, r1, r0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r3, [sp, #0x38]
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r7, r0
	subs r3, r1, r0
	mov r0, ip
	ldr r1, [r0, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, #0
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _08020BDE
	subs r1, r3, #2
	cmp r1, #0
	ble _08020C26
	b _08020C24
_08020BDE:
	adds r1, r3, #5
	cmp r1, #0
	ble _08020C1A
	b _08020C18
_08020BE6:
	mov r1, r8
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r0, r2, r0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #4]
	adds r0, r3, r0
	ldr r2, [sp, #0xc]
	adds r1, r7, r2
	subs r3, r0, r1
	mov r0, ip
	ldr r1, [r0, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, #0
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _08020C1E
	subs r1, r3, #5
	cmp r1, #0
	bge _08020C1A
_08020C18:
	movs r1, #0
_08020C1A:
	orrs r6, r4
	b _08020C2C
_08020C1E:
	adds r1, r3, #2
	cmp r1, #0
	bge _08020C26
_08020C24:
	movs r1, #0
_08020C26:
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
_08020C2C:
	adds r2, r5, #0
	cmp r5, #0
	bge _08020C34
	rsbs r2, r5, #0
_08020C34:
	adds r0, r1, #0
	cmp r0, #0
	bge _08020C3C
	rsbs r0, r0, #0
_08020C3C:
	cmp r2, r0
	bge _08020C48
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r6, r0
	b _08020C88
_08020C48:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r6
	cmp r0, #0
	beq _08020C88
	mov r1, ip
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08020C6C
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08020C6C
	movs r0, #0
	b _08020CC8
_08020C6C:
	movs r2, #4
	ands r2, r7
	cmp r2, #0
	bne _08020C88
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C88
	mov r1, ip
	strh r2, [r1, #0x1c]
_08020C88:
	lsls r0, r5, #8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	orrs r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r6
	cmp r0, #0
	beq _08020CB4
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _08020CB8
	ldr r0, _08020CB0 @ =0xFFF300FF
	b _08020CB6
	.align 2, 0
_08020CB0: .4byte 0xFFF300FF
_08020CB4:
	ldr r0, _08020CD8 @ =0xFFFF00FF
_08020CB6:
	ands r6, r0
_08020CB8:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r6
	cmp r0, #0
	bne _08020CC6
	ldr r0, _08020CDC @ =0xFFFFFF00
	ands r6, r0
_08020CC6:
	adds r0, r6, #0
_08020CC8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020CD8: .4byte 0xFFFF00FF
_08020CDC: .4byte 0xFFFFFF00

@ Input:
    @ R0 = s
    @ R1 = worldX (not Q)
    @ R2 = worldY (not Q)
    @ R3 = (u16) param3
	thumb_func_start sub_8020CE0
sub_8020CE0: @ 0x08020CE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	mov sl, r2
	ldr r6, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0xc
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08020E28
	lsls r2, r5, #0x10
	asrs r1, r2, #0xd
	mov r0, r8
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov ip, r2
	cmp r0, r1
	beq _08020E28
	ldr r0, [r7, #0x20]
	cmp r0, r1
	beq _08020E28
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	ldrh r0, [r6, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020D8A
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020D80
	lsls r0, r5, #0x10
	ldr r1, _08020D7C @ =0xFFE00000
	b _08020D86
	.align 2, 0
_08020D7C: .4byte 0xFFE00000
_08020D80:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
_08020D86:
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_08020D8A:
	mov r1, ip
	asrs r0, r1, #0xd
	mov r1, r8
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x24
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, sb
	adds r4, r0, r3
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r4, r1
	bgt _08020DC4
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r4, r0
	cmp r0, r1
	bge _08020DD4
	cmp r4, r1
	blt _08020E28
_08020DC4:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r4
	blt _08020E28
_08020DD4:
	mov r1, ip
	asrs r0, r1, #0xd
	mov r1, r8
	adds r3, r1, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	movs r5, #1
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08020E0E
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020E1E
	cmp r2, r1
	blt _08020E28
_08020E0E:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08020E28
_08020E1E:
	adds r0, r6, #0
	bl Player_8014550
	movs r0, #1
	b _08020E2A
_08020E28:
	movs r0, #0
_08020E2A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8020E3C
sub_8020E3C: @ 0x08020E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov sl, r2
	ldr r6, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	mov ip, r0
	movs r0, #0xc
	add r0, ip
	mov r8, r0
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08020F20
	lsls r0, r3, #0x10
	asrs r2, r0, #0xd
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r1, r2
	ldr r1, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r0
	cmp r1, r3
	beq _08020F20
	mov r1, r8
	ldr r0, [r1, #0x28]
	cmp r0, r3
	beq _08020F20
	adds r3, r7, r2
	adds r0, r3, #0
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r2, r5, r4
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08020EBE
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020ED0
	cmp r2, r1
	blt _08020F20
_08020EBE:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08020F20
_08020ED0:
	mov r1, sb
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	movs r1, #0x2d
	add r1, r8
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08020F0A
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020F1C
	cmp r2, r1
	blt _08020F20
_08020F0A:
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08020F20
_08020F1C:
	movs r0, #1
	b _08020F22
_08020F20:
	movs r0, #0
_08020F22:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8020F30
sub_8020F30: @ 0x08020F30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov ip, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r4, [r0]
	adds r7, r4, #0
	adds r7, #0xc
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r3, [r0]
	movs r0, #0xc
	adds r0, r0, r3
	mov sb, r0
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020F6C
	b _080210AA
_08020F6C:
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r2
	cmp r0, r1
	bne _08020F84
	b _080210AA
_08020F84:
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r1
	bne _08020F98
	b _080210AA
_08020F98:
	cmp r3, #0
	bne _08020FBA
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _08020FDE
_08020FBA:
	mov r1, sp
	adds r2, r7, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_08020FDE:
	mov r3, r8
	asrs r0, r3, #0x10
	cmp r0, #0
	bne _08021002
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	b _0802102A
_08021002:
	add r1, sp, #4
	lsls r0, r0, #3
	mov r3, sb
	adds r2, r3, r0
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_0802102A:
	adds r6, r1, #0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r6, r3]
	adds r2, r0, r3
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov r1, sp
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _08021058
	movs r0, #2
	ldrsb r0, [r6, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08021068
	cmp r2, r1
	blt _080210AA
_08021058:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _080210AA
_08021068:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r4, #1
	ldrsb r4, [r6, r4]
	adds r3, r0, r4
	mov r1, ip
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r3, r2
	bgt _08021096
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _080210A6
	cmp r3, r2
	blt _080210AA
_08021096:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	blt _080210AA
_080210A6:
	movs r0, #1
	b _080210AC
_080210AA:
	movs r0, #0
_080210AC:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80210BC
sub_80210BC: @ 0x080210BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov ip, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r6, [r0]
	movs r0, #0xc
	adds r0, r0, r6
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r3, [r0]
	movs r1, #0xc
	adds r1, r1, r3
	mov sl, r1
	movs r4, #0
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08021124
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r2
	cmp r0, r1
	beq _08021124
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #3
	adds r0, r6, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r1
	bne _08021128
_08021124:
	movs r0, #0
	b _0802139A
_08021128:
	ldr r0, _08021154 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080211AE
	cmp r3, #0
	bne _08021158
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _0802117C
	.align 2, 0
_08021154: .4byte gStageData
_08021158:
	mov r1, sp
	add r2, r8
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_0802117C:
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080211CA
	add r1, sp, #4
	lsls r0, r0, #3
	mov r3, sl
	adds r2, r3, r0
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _080211E4
_080211AE:
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
_080211CA:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
_080211E4:
	mov sl, r1
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r7, r0, #8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x10]
	asrs r6, r0, #8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	mov r8, r0
	mov r2, sl
	movs r3, #0
	ldrsb r3, [r2, r3]
	adds r2, r6, r3
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r1, r7, r0
	cmp r2, r1
	bgt _08021228
	mov r5, sl
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802123C
	cmp r2, r1
	bge _08021228
	b _08021398
_08021228:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #8]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0802123C
	b _08021398
_0802123C:
	mov r5, sl
	movs r3, #1
	ldrsb r3, [r5, r3]
	mov r0, r8
	adds r2, r0, r3
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r1, r0, #0
	add r1, sb
	cmp r2, r1
	bgt _0802126A
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802127E
	cmp r2, r1
	bge _0802126A
	b _08021398
_0802126A:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #8]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0802127E
	b _08021398
_0802127E:
	mov r0, sl
	movs r5, #0
	ldrsb r5, [r0, r5]
	movs r3, #2
	ldrsb r3, [r0, r3]
	adds r0, r5, r3
	asrs r0, r0, #1
	adds r0, r6, r0
	mov r2, sl
	movs r1, #1
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #3]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	asrs r1, r1, #1
	add r1, r8
	str r1, [sp, #0xc]
	cmp r0, r7
	bgt _080212BA
	adds r1, r6, r3
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	subs r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _080212CC
_080212BA:
	adds r1, r6, r5
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	subs r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xc
_080212CC:
	orrs r4, r0
	ldr r5, [sp, #0xc]
	cmp r5, sb
	ble _080212F8
	mov r0, sl
	movs r1, #1
	ldrsb r1, [r0, r1]
	add r1, r8
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	subs r2, r1, r0
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0802131E
	b _0802131A
_080212F8:
	mov r2, sl
	movs r1, #3
	ldrsb r1, [r2, r1]
	add r1, r8
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	subs r2, r1, r0
	mov r5, ip
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0802131E
_0802131A:
	orrs r4, r1
	b _08021324
_0802131E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_08021324:
	adds r1, r3, #0
	cmp r3, #0
	bge _0802132C
	rsbs r1, r3, #0
_0802132C:
	adds r0, r2, #0
	cmp r2, #0
	bge _08021334
	rsbs r0, r2, #0
_08021334:
	cmp r1, r0
	bge _0802133E
	movs r0, #0xc0
	lsls r0, r0, #0xc
	b _08021342
_0802133E:
	movs r0, #0xc0
	lsls r0, r0, #0xa
_08021342:
	ands r4, r0
	lsls r0, r3, #8
	movs r3, #0xff
	lsls r3, r3, #8
	ands r0, r3
	movs r1, #0xff
	ands r2, r1
	orrs r0, r2
	orrs r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08021370
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	bne _08021374
	ldr r0, _0802136C @ =0xFFF300FF
	b _08021372
	.align 2, 0
_0802136C: .4byte 0xFFF300FF
_08021370:
	ldr r0, _0802138C @ =0xFFFF00FF
_08021372:
	ands r4, r0
_08021374:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _08021394
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	bne _08021398
	ldr r0, _08021390 @ =0xFFFCFF00
	b _08021396
	.align 2, 0
_0802138C: .4byte 0xFFFF00FF
_08021390: .4byte 0xFFFCFF00
_08021394:
	ldr r0, _080213AC @ =0xFFFFFF00
_08021396:
	ands r4, r0
_08021398:
	adds r0, r4, #0
_0802139A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080213AC: .4byte 0xFFFFFF00

	thumb_func_start ResolvePlayerSpriteCollision
ResolvePlayerSpriteCollision: @ 0x080213B0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, [r4, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080213E8
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	ands r3, r1
	cmp r3, #0
	bne _080213E8
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080213E8
	ldr r0, [r2, #0x6c]
	cmp r0, r4
	bne _080213E8
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #4]
	str r3, [r2, #0x6c]
_080213E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Call__Player_8014550
Call__Player_8014550: @ 0x080213F0
	push {lr}
	bl Player_8014550
	pop {r0}
	bx r0
	.align 2, 0
