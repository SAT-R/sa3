.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805D188
sub_805D188: @ 0x0805D188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	lsls r1, r1, #0x18
	mov sb, r1
	mov r0, sb
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r3, #0
	adds r0, #0x68
	str r0, [sp]
	movs r0, #0x20
	str r3, [sp, #4]
	bl VramMalloc
	adds r5, r0, #0
	ldr r3, [sp, #4]
	adds r7, r3, #0
	adds r7, #0xa4
	str r5, [r7]
	ldr r4, _0805D290 @ =gUnknown_080D1F4C
	ldr r0, [r4, #0xc]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #8]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #0xa]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r1, [r3, #0x60]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805D294 @ =gCamera
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r3, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	str r0, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp]
	mov r2, sb
	str r3, [sp, #4]
	bl sub_805D298
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r3, [sp, #4]
	adds r7, r3, #0
	adds r7, #0x74
	str r5, [r3, #0x74]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r1, [r3, #0x60]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r3, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	mov r0, r8
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	mov r0, sl
	str r0, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp]
	mov r2, sb
	bl sub_805D298
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D290: .4byte gUnknown_080D1F4C
_0805D294: .4byte gCamera

	thumb_func_start sub_805D298
sub_805D298: @ 0x0805D298
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	cmp r2, #2
	beq _0805D2C8
	cmp r2, #2
	bgt _0805D2B8
	cmp r2, #1
	beq _0805D2BE
	b _0805D30E
_0805D2B8:
	cmp r0, #3
	beq _0805D2EA
	b _0805D30E
_0805D2BE:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
	b _0805D30E
_0805D2C8:
	movs r0, #0x6a
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r3]
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r3, #8]
	strh r1, [r3, #2]
	strh r1, [r3, #4]
	adds r0, r4, #0
	adds r1, r3, #0
	bl TransformSprite
	b _0805D30E
_0805D2EA:
	movs r0, #0x6b
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3]
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	adds r0, r4, #0
	adds r1, r3, #0
	bl TransformSprite
_0805D30E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D314
sub_805D314: @ 0x0805D314
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805D394 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805DADC
	adds r7, r0, #0
	ldr r0, _0805D398 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805D3DA
	cmp r1, #4
	beq _0805D3DA
	ldr r1, _0805D39C @ =0x03000060
	adds r6, r4, r1
	ldr r0, _0805D3A0 @ =0x03000018
	adds r2, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_805D708
	cmp r7, #0
	bne _0805D36E
	ldr r0, _0805D3A4 @ =0x0300008F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0805D3A8 @ =0x0300008C
	adds r1, r4, r0
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0805D3AC @ =0x0300008A
	adds r0, r4, r1
	strh r7, [r0]
_0805D36E:
	ldrh r0, [r5, #0x16]
	cmp r0, #0x7f
	bhi _0805D3B4
	adds r0, #1
	strh r0, [r5, #0x16]
	ldr r0, _0805D3B0 @ =0x03000074
	adds r1, r4, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805D3DA
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0805D3DA
	.align 2, 0
_0805D394: .4byte gCurTask
_0805D398: .4byte gStageData
_0805D39C: .4byte 0x03000060
_0805D3A0: .4byte 0x03000018
_0805D3A4: .4byte 0x0300008F
_0805D3A8: .4byte 0x0300008C
_0805D3AC: .4byte 0x0300008A
_0805D3B0: .4byte 0x03000074
_0805D3B4:
	movs r0, #0
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x18]
	movs r3, #0
	mov r6, r8
	ldr r5, _0805D3E4 @ =sub_805D3EC
	ldr r0, _0805D3E8 @ =0x0300001A
	adds r1, r4, r0
	movs r2, #0
_0805D3C6:
	lsls r0, r3, #1
	adds r0, r1, r0
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0805D3C6
	ldr r0, [r6]
	str r5, [r0, #8]
_0805D3DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D3E4: .4byte sub_805D3EC
_0805D3E8: .4byte 0x0300001A

	thumb_func_start sub_805D3EC
sub_805D3EC: @ 0x0805D3EC
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0805D43C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _0805D440 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805D450
	cmp r1, #4
	beq _0805D450
	adds r0, r4, #0
	bl sub_805D5F0
	cmp r0, #1
	bne _0805D450
	adds r0, r4, #0
	bl sub_805DADC
	movs r1, #0
	strb r1, [r4, #6]
	mov r0, sp
	strh r1, [r0]
	ldr r0, _0805D444 @ =0x03000008
	adds r1, r5, r0
	ldr r2, _0805D448 @ =0x01000005
	mov r0, sp
	bl CpuSet
	ldr r1, [r6]
	ldr r0, _0805D44C @ =sub_805DDCC
	str r0, [r1, #8]
	b _0805D470
	.align 2, 0
_0805D43C: .4byte gCurTask
_0805D440: .4byte gStageData
_0805D444: .4byte 0x03000008
_0805D448: .4byte 0x01000005
_0805D44C: .4byte sub_805DDCC
_0805D450:
	adds r0, r4, #0
	bl sub_805DADC
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805D470
	ldr r0, _0805D478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805D470:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D478: .4byte gCurTask

	thumb_func_start sub_805D47C
sub_805D47C: @ 0x0805D47C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r3, [r1, #0x28]
	subs r3, r3, r0
	str r3, [sp, #8]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x2c]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	mov r2, ip
	ldr r5, [r2, #0x58]
	str r5, [sp]
	ldr r2, [r2, #0x5c]
	str r2, [sp, #4]
	subs r1, r1, r2
	asrs r1, r1, #6
	mov r4, ip
	ldrh r0, [r4, #8]
	lsrs r4, r0, #6
	muls r1, r4, r1
	adds r2, r2, r1
	mov r1, ip
	str r2, [r1, #0x64]
	subs r3, r3, r5
	asrs r3, r3, #6
	adds r1, r3, #0
	muls r1, r4, r1
	adds r2, r5, r1
	mov r4, ip
	str r2, [r4, #0x60]
	adds r0, #0x80
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	cmp r0, #0x3f
	bhi _0805D520
	mov r0, ip
	adds r0, #0x68
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0805D4FC
	subs r1, r2, r5
	cmp r1, #0
	bge _0805D4EA
	subs r1, r5, r2
_0805D4EA:
	ldr r0, _0805D514 @ =0x000039FF
	cmp r1, r0
	bgt _0805D520
	mov r1, sb
	ldrh r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x64]
	cmp r0, #0
	beq _0805D534
_0805D4FC:
	mov r4, ip
	ldr r0, [r4, #0x64]
	ldr r1, [sp, #4]
	subs r2, r0, r1
	adds r3, r0, #0
	cmp r2, #0
	blt _0805D518
	ldr r0, _0805D514 @ =0x000039FF
	cmp r2, r0
	bgt _0805D520
	b _0805D534
	.align 2, 0
_0805D514: .4byte 0x000039FF
_0805D518:
	subs r1, r1, r3
	ldr r0, _0805D530 @ =0x000039FF
	cmp r1, r0
	ble _0805D534
_0805D520:
	movs r0, #1
	str r0, [sp, #0x10]
	movs r1, #0x68
	add r1, ip
	mov sb, r1
	mov r2, ip
	ldr r3, [r2, #0x64]
	b _0805D538
	.align 2, 0
_0805D530: .4byte 0x000039FF
_0805D534:
	movs r4, #0
	str r4, [sp, #0x10]
_0805D538:
	mov r1, ip
	ldr r0, [r1, #0x60]
	str r0, [r1, #0x30]
	str r3, [r1, #0x34]
	movs r2, #0
	movs r4, #0x30
	add r4, ip
	mov r8, r4
	mov r7, ip
	adds r7, #0x34
	movs r0, #7
	movs r1, #1
	mov sl, r1
	mov r4, sl
	lsls r4, r0
	mov sl, r4
_0805D558:
	movs r3, #0xa
	cmp r2, #0
	bne _0805D560
	movs r3, #0xe
_0805D560:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	bne _0805D574
	lsls r0, r2, #3
	add r0, r8
	adds r2, #1
	lsls r1, r2, #3
	add r1, r8
	b _0805D57E
_0805D574:
	lsls r0, r2, #3
	adds r0, r7, r0
	adds r2, #1
	lsls r1, r2, #3
	adds r1, r7, r1
_0805D57E:
	ldr r0, [r0]
	ldr r1, [r1]
	subs r4, r0, r1
	adds r6, r2, #0
	cmp r4, #0
	bge _0805D58C
	subs r4, r1, r0
_0805D58C:
	lsls r0, r3, #8
	cmp r4, r0
	blt _0805D5D6
	mov r2, ip
	ldr r5, [r2, #0x58]
	str r5, [sp]
	ldr r0, [r2, #0x5c]
	str r0, [sp, #4]
	lsls r3, r6, #3
	adds r4, r7, r3
	str r0, [r4]
	add r3, r8
	str r5, [r3]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	asrs r1, r1, #6
	lsls r0, r6, #1
	adds r2, #8
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r1, #6
	ldrh r0, [r2]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2]
	add r0, sl
	strh r0, [r2]
_0805D5D6:
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805D558
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805D5F0
sub_805D5F0: @ 0x0805D5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov ip, r0
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldr r5, [r1, #0x58]
	str r5, [sp]
	ldr r3, [r1, #0x5c]
	str r3, [sp, #4]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0x10
	ldr r2, [r1, #0x28]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r1, [r1, #0x14]
	lsls r1, r1, #0x10
	mov r4, ip
	ldr r0, [r4, #0x2c]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r0, r0, r3
	asrs r0, r0, #6
	ldrh r1, [r4, #8]
	lsrs r4, r1, #6
	muls r0, r4, r0
	adds r3, r3, r0
	mov r7, ip
	str r3, [r7, #0x64]
	subs r2, r2, r5
	asrs r2, r2, #6
	adds r0, r2, #0
	muls r0, r4, r0
	adds r5, r5, r0
	str r5, [r7, #0x60]
	subs r1, #0x40
	strh r1, [r7, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x16
	cmp r1, #0x3f
	bls _0805D652
	mov r0, r8
	strh r0, [r7, #8]
	movs r1, #1
	mov r8, r1
_0805D652:
	mov r4, ip
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x30]
	movs r3, #0
	adds r4, #0x34
	str r4, [sp, #0x10]
	movs r5, #0x30
	add r5, ip
	mov sl, r5
	movs r7, #8
	add r7, ip
	mov sb, r7
_0805D66A:
	mov r0, ip
	ldr r6, [r0, #0x58]
	str r6, [sp]
	ldr r5, [r0, #0x5c]
	str r5, [sp, #4]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r2, [r1, #0x28]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x2c]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0x14]
	lsls r3, r3, #3
	ldr r7, [sp, #0x10]
	adds r4, r7, r3
	str r5, [r4]
	add r3, sl
	str r6, [r3]
	subs r1, r1, r5
	asrs r1, r1, #6
	ldr r5, [sp, #0x14]
	lsls r0, r5, #1
	mov r7, sb
	adds r5, r7, r0
	ldrh r0, [r5]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	subs r2, r2, r6
	asrs r2, r2, #6
	ldrh r0, [r5]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	subs r0, #0x40
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	cmp r0, #0x3f
	bls _0805D6E0
	movs r0, #0
	strh r0, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0805D6E0:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0805D66A
	mov r4, r8
	cmp r4, #5
	beq _0805D6F4
	movs r0, #0
	b _0805D6F6
_0805D6F4:
	movs r0, #1
_0805D6F6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805D708
sub_805D708: @ 0x0805D708
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r4, r2, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0xff
	bhi _0805D726
	adds r0, #2
	mov r1, ip
	strh r0, [r1, #0x18]
	b _0805D72C
_0805D726:
	movs r0, #0
	mov r2, ip
	strh r0, [r2, #0x18]
_0805D72C:
	mov r0, ip
	adds r0, #0x68
	ldrh r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _0805D774
	ldr r3, _0805D770 @ =gSineTable
	ldrh r0, [r4]
	lsls r0, r0, #3
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov r5, ip
	ldr r0, [r5, #0x60]
	subs r0, r0, r1
	str r0, [r5, #0x60]
	ldrh r0, [r4]
	lsls r0, r0, #2
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r5, #0x64]
	adds r0, r0, r1
	b _0805D7AA
	.align 2, 0
_0805D770: .4byte gSineTable
_0805D774:
	ldr r3, _0805D7E8 @ =gSineTable
	ldrh r0, [r4]
	lsls r0, r0, #2
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov r5, ip
	ldr r0, [r5, #0x60]
	adds r0, r0, r1
	str r0, [r5, #0x60]
	ldrh r0, [r4]
	lsls r0, r0, #3
	ands r0, r2
	lsls r0, r0, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r5, #0x64]
	subs r0, r0, r1
_0805D7AA:
	str r0, [r5, #0x64]
	mov r2, ip
	ldr r0, [r2, #0x60]
	str r0, [r2, #0x30]
	ldr r0, [r2, #0x64]
	str r0, [r2, #0x34]
	movs r2, #0
	movs r5, #0x30
	add r5, ip
	mov r8, r5
	mov r7, ip
	adds r7, #0x34
	ldr r0, _0805D7E8 @ =gSineTable
	mov sl, r0
	movs r1, #0xff
	mov sb, r1
_0805D7CA:
	movs r3, #5
	cmp r2, #0
	bne _0805D7D2
	movs r3, #7
_0805D7D2:
	ldr r5, [sp]
	ldrh r0, [r5]
	cmp r0, #0
	bne _0805D7EC
	lsls r0, r2, #3
	add r0, r8
	adds r2, #1
	lsls r1, r2, #3
	add r1, r8
	b _0805D7F6
	.align 2, 0
_0805D7E8: .4byte gSineTable
_0805D7EC:
	lsls r0, r2, #3
	adds r0, r7, r0
	adds r2, #1
	lsls r1, r2, #3
	adds r1, r7, r1
_0805D7F6:
	ldr r0, [r0]
	ldr r1, [r1]
	subs r4, r0, r1
	adds r6, r2, #0
	cmp r4, #0
	bge _0805D804
	subs r4, r1, r0
_0805D804:
	lsls r0, r3, #8
	cmp r4, r0
	blt _0805D8BC
	lsls r0, r6, #1
	mov r1, ip
	adds r1, #0x1a
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0xff
	bhi _0805D81C
	adds r0, #2
	b _0805D81E
_0805D81C:
	movs r0, #0
_0805D81E:
	strh r0, [r2]
	ldr r2, [sp]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0805D872
	lsls r3, r6, #3
	mov r5, r8
	adds r4, r5, r3
	lsls r2, r6, #1
	adds r5, r1, r2
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r4]
	subs r1, r1, r0
	str r1, [r4]
	adds r3, r7, r3
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #2
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r3]
	adds r1, r1, r0
	b _0805D8BA
_0805D872:
	lsls r3, r6, #3
	mov r5, r8
	adds r4, r5, r3
	lsls r2, r6, #1
	adds r5, r1, r2
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #2
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r4]
	adds r3, r7, r3
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #3
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r3]
	subs r1, r1, r0
_0805D8BA:
	str r1, [r3]
_0805D8BC:
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805D7CA
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805D8D4
sub_805D8D4: @ 0x0805D8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #3
	mov sb, r0
	b _0805D9A2
_0805D8EA:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _0805D942
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x64]
	subs r2, r1, r0
	cmp r2, #0
	blt _0805D90C
	cmp r2, sb
	ble _0805D912
	b _0805D998
_0805D90C:
	subs r0, r0, r1
	cmp r0, sb
	bgt _0805D998
_0805D912:
	ldr r0, [r4, #0x7c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D930
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x60]
	adds r6, r1, #0
	cmp r0, r2
	ble _0805D98E
	b _0805D998
_0805D930:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x60]
	adds r6, r1, #0
	cmp r0, r2
	blt _0805D998
	b _0805D98E
_0805D942:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r3, r1, r0
	ldr r0, [r4, #0x60]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _0805D95A
	cmp r2, sb
	ble _0805D960
	b _0805D998
_0805D95A:
	subs r0, r0, r3
	cmp r0, sb
	bgt _0805D998
_0805D960:
	ldrh r2, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _0805D978
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x64]
	cmp r1, r0
	ble _0805D98E
_0805D978:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bne _0805D998
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x64]
	cmp r1, r0
	blt _0805D998
_0805D98E:
	str r6, [r4, #0x28]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x2c]
	movs r0, #1
	b _0805D9B4
_0805D998:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0805D9A2:
	mov r0, r8
	cmp r0, #1
	bhi _0805D9B2
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805D8EA
_0805D9B2:
	movs r0, #0
_0805D9B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805D9C0
sub_805D9C0: @ 0x0805D9C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0x68
	adds r0, r0, r6
	mov sl, r0
	movs r7, #0
	add r1, sp, #0x28
	mov sb, r1
	mov r8, sp
_0805D9DC:
	subs r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805DA1A
	lsls r0, r7, #3
	adds r0, #0x30
	adds r4, r6, r0
	adds r5, r6, #0
	adds r5, #0xa4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, sp
	bl sub_805DE9C
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x12]
	mov r2, r8
	strh r0, [r2, #0xc]
	ldrh r0, [r6, #0x14]
	strh r0, [r2, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r2, #8]
_0805DA1A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0805D9DC
	adds r4, r6, #0
	adds r4, #0x60
	adds r5, r6, #0
	adds r5, #0x74
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, sp
	bl sub_805DE9C
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	ldr r2, _0805DA84 @ =gCamera
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	mov r2, sp
	ldrb r0, [r6, #5]
	strb r0, [r2, #8]
	mov r2, sb
	strh r1, [r2]
	strh r1, [r2, #2]
	mov r4, sl
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DA88
	movs r0, #0x14
	strh r0, [r2]
	movs r0, #0x16
	strh r0, [r2, #2]
	b _0805DA9A
	.align 2, 0
_0805DA84: .4byte gCamera
_0805DA88:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _0805DA9A
	movs r0, #0xa
	mov r1, sb
	strh r0, [r1]
	movs r0, #0x32
	strh r0, [r1, #2]
_0805DA9A:
	ldr r1, [sp, #0x1c]
	mov r2, sb
	ldrh r0, [r2]
	ldrh r4, [r1, #0x10]
	adds r0, r0, r4
	strh r0, [r1, #0x10]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r2, #2]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	mov r0, sp
	bl sub_805C280
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x10]
	mov r4, sb
	ldrh r2, [r4]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x12]
	ldrh r2, [r4, #2]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805DADC
sub_805DADC: @ 0x0805DADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov r3, sp
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #8
	ldr r2, _0805DBF8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #2]
	adds r4, r5, #0
	adds r4, #0x74
	ldr r0, [r5, #0x60]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r2, r0, r1
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x64]
	asrs r1, r1, #8
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805DB38
	adds r1, r5, #0
	adds r1, #0x68
	strh r2, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
_0805DB38:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	str r0, [sp, #4]
	adds r0, r4, #0
	bl DisplaySprite
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0xa4
	str r0, [sp, #0xc]
	adds r1, r5, #0
	adds r1, #0x30
	str r1, [sp, #8]
	movs r2, #0x34
	adds r2, r2, r5
	mov sl, r2
	adds r4, r0, #0
	mov r8, sp
_0805DB5E:
	lsls r1, r7, #3
	ldr r3, [sp, #8]
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r6, r8
	ldrh r6, [r6]
	adds r2, r0, r6
	strh r2, [r4, #0x10]
	add r1, sl
	ldr r1, [r1]
	asrs r1, r1, #8
	mov r3, r8
	ldrh r0, [r3, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r6, #0x20
	mov sb, r6
	ands r0, r6
	cmp r0, #0
	beq _0805DB9C
	adds r1, r5, #0
	adds r1, #0x68
	strh r2, [r1, #6]
	ldr r2, [sp, #0xc]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #8]
	ldr r0, [sp, #0xc]
	bl TransformSprite
_0805DB9C:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _0805DB5E
	ldr r4, [sp, #0xc]
	ldr r0, [r5, #0x58]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r2, r0, r1
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #8
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _0805DBE0
	adds r1, r5, #0
	adds r1, #0x68
	strh r2, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
_0805DBE0:
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DBF8: .4byte gCamera

	thumb_func_start CreateEntity_Uutsubo_1
CreateEntity_Uutsubo_1: @ 0x0805DBFC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
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
	ldr r0, _0805DC68 @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DC6C @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #1
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DC68: .4byte sub_805DDCC
_0805DC6C: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_0
CreateEntity_Uutsubo_0: @ 0x0805DC70
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
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
	ldr r0, _0805DCDC @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DCE0 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #0
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DCDC: .4byte sub_805DDCC
_0805DCE0: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_2
CreateEntity_Uutsubo_2: @ 0x0805DCE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
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
	ldr r0, _0805DD50 @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DD54 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #2
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD50: .4byte sub_805DDCC
_0805DD54: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_3
CreateEntity_Uutsubo_3: @ 0x0805DD58
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
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
	ldr r0, _0805DDC4 @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DDC8 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #3
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDC4: .4byte sub_805DDCC
_0805DDC8: .4byte sub_805DEC4

	thumb_func_start sub_805DDCC
sub_805DDCC: @ 0x0805DDCC
	push {r4, r5, lr}
	ldr r5, _0805DE04 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE08 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE10
	cmp r1, #4
	beq _0805DE10
	adds r0, r4, #0
	bl sub_805D8D4
	cmp r0, #1
	bne _0805DE10
	ldr r1, [r5]
	ldr r0, _0805DE0C @ =sub_805DE34
	str r0, [r1, #8]
	b _0805DE2A
	.align 2, 0
_0805DE04: .4byte gCurTask
_0805DE08: .4byte gStageData
_0805DE0C: .4byte sub_805DE34
_0805DE10:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE2A
	ldr r0, _0805DE30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE30: .4byte gCurTask

	thumb_func_start sub_805DE34
sub_805DE34: @ 0x0805DE34
	push {r4, r5, lr}
	ldr r5, _0805DE6C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE70 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE78
	cmp r1, #4
	beq _0805DE78
	adds r0, r4, #0
	bl sub_805D47C
	cmp r0, #1
	bne _0805DE78
	ldr r1, [r5]
	ldr r0, _0805DE74 @ =sub_805D314
	str r0, [r1, #8]
	b _0805DE92
	.align 2, 0
_0805DE6C: .4byte gCurTask
_0805DE70: .4byte gStageData
_0805DE74: .4byte sub_805D314
_0805DE78:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE92
	ldr r0, _0805DE98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE98: .4byte gCurTask

	thumb_func_start sub_805DE9C
sub_805DE9C: @ 0x0805DE9C
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x14]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805DEC4
sub_805DEC4: @ 0x0805DEC4
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0805DED8 @ =0x030000A4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0805DED8: .4byte 0x030000A4
