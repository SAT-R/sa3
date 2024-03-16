.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_BuBu
CreateEntity_BuBu: @ 0x0805EBFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805EC84 @ =sub_805ED48
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805EC88 @ =sub_805F2AC
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x10]
	strb r2, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r0, #0x5a
	strh r0, [r7, #0xe]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r2, [r7, #8]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805EC8C
	movs r0, #0xff
	b _0805EC8E
	.align 2, 0
_0805EC84: .4byte sub_805ED48
_0805EC88: .4byte sub_805F2AC
_0805EC8C:
	movs r0, #1
_0805EC8E:
	strb r0, [r7, #9]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _0805ECC0 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r7, #0
	bl sub_805ECC4
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805ECC0: .4byte 0x01000002

	thumb_func_start sub_805ECC4
sub_805ECC4: @ 0x0805ECC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x2c
	str r0, [r4, #0x2c]
	ldr r1, _0805ED40 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805ED44 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805ED2E
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805ED2E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ED40: .4byte gUnknown_080D1F8C
_0805ED44: .4byte gCamera

	thumb_func_start sub_805ED48
sub_805ED48: @ 0x0805ED48
	push {r4, lr}
	ldr r0, _0805ED94 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805ED98 @ =0x0300001C
	adds r0, r3, r1
	subs r1, #0x12
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805ED9C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805ED80
	cmp r1, #4
	beq _0805ED80
	adds r0, r4, #0
	bl sub_805F15C
_0805ED80:
	adds r0, r4, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805EDA0
	ldr r0, _0805ED94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805EDF8
	.align 2, 0
_0805ED94: .4byte gCurTask
_0805ED98: .4byte 0x0300001C
_0805ED9C: .4byte gUnknown_030008A0
_0805EDA0:
	adds r0, r4, #0
	bl sub_805F268
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	ble _0805EDB4
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _0805EDD8
_0805EDB4:
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _0805EDCC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0805EDD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805EDD4 @ =sub_805EE0C
	b _0805EDF6
	.align 2, 0
_0805EDCC: .4byte gUnknown_080D1F8C
_0805EDD0: .4byte gCurTask
_0805EDD4: .4byte sub_805EE0C
_0805EDD8:
	adds r0, r4, #0
	bl sub_805F1A0
	cmp r0, #1
	bne _0805EDF8
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _0805EE00 @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, _0805EE04 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805EE08 @ =sub_805F094
_0805EDF6:
	str r0, [r1, #8]
_0805EDF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE00: .4byte gUnknown_080D1F8C
_0805EE04: .4byte gCurTask
_0805EE08: .4byte sub_805F094

	thumb_func_start sub_805EE0C
sub_805EE0C: @ 0x0805EE0C
	push {r4, r5, r6, lr}
	ldr r6, _0805EE2C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805EE30
	ldr r0, [r6]
	bl TaskDestroy
	b _0805EEA2
	.align 2, 0
_0805EE2C: .4byte gCurTask
_0805EE30:
	adds r0, r5, #0
	bl sub_805F268
	cmp r0, #0
	bne _0805EE84
	ldr r0, _0805EE54 @ =0x0300002C
	adds r3, r4, r0
	ldr r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805EE5C
	ldr r0, _0805EE58 @ =0xFFFFFBFF
	ands r1, r0
	b _0805EE5E
	.align 2, 0
_0805EE54: .4byte 0x0300002C
_0805EE58: .4byte 0xFFFFFBFF
_0805EE5C:
	orrs r1, r2
_0805EE5E:
	str r1, [r3, #8]
	ldr r1, _0805EE78 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	strb r2, [r5, #6]
	ldr r0, _0805EE7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805EE80 @ =sub_805ED48
	b _0805EEA0
	.align 2, 0
_0805EE78: .4byte gUnknown_080D1F8C
_0805EE7C: .4byte gCurTask
_0805EE80: .4byte sub_805ED48
_0805EE84:
	adds r0, r5, #0
	bl sub_805F1A0
	cmp r0, #1
	bne _0805EEA2
	ldr r0, _0805EEA8 @ =0x0300002C
	adds r2, r4, r0
	ldr r1, _0805EEAC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _0805EEB0 @ =sub_805F094
_0805EEA0:
	str r0, [r1, #8]
_0805EEA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EEA8: .4byte 0x0300002C
_0805EEAC: .4byte gUnknown_080D1F8C
_0805EEB0: .4byte sub_805F094

	thumb_func_start sub_805EEB4
sub_805EEB4: @ 0x0805EEB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r3, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r3, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	mov sb, r2
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r3, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	mov sl, r2
	ldr r1, _0805EF5C @ =gUnknown_03001CFC
	ldr r3, [r1]
	cmp r3, #0
	bne _0805EEEE
	b _0805F010
_0805EEEE:
	ldr r1, _0805EF60 @ =gUnknown_030008A0
	ldrb r2, [r1, #4]
	subs r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bhi _0805EEFE
	b _0805F012
_0805EEFE:
	cmp r2, #4
	bne _0805EF04
	b _0805F012
_0805EF04:
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	movs r6, #0
	movs r2, #0xfd
	lsls r2, r2, #0x18
	mov r8, r2
	mov r3, sl
	subs r3, #8
	str r3, [sp, #0xc]
_0805EF1A:
	lsls r0, r6, #2
	adds r1, r0, r6
	lsls r3, r1, #2
	adds r4, r5, r3
	ldrh r1, [r4, #0x34]
	adds r7, r0, #0
	cmp r1, #0
	beq _0805EFF8
	movs r0, #1
	str r0, [sp]
	mov r2, sb
	subs r2, #8
	adds r1, r5, #0
	adds r1, #0x28
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r3, r0, #8
	mov ip, r1
	cmp r2, r3
	blt _0805EF64
	ldrh r0, [r4, #0x30]
	adds r0, #0x40
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0x12
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _0805EF84
	strh r1, [r4, #0x30]
	b _0805EF84
	.align 2, 0
_0805EF5C: .4byte gUnknown_03001CFC
_0805EF60: .4byte gUnknown_030008A0
_0805EF64:
	mov r0, sb
	adds r0, #8
	cmp r0, r3
	bgt _0805EF80
	ldrh r0, [r4, #0x30]
	subs r0, #0x40
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	mov r3, r8
	asrs r1, r3, #0x10
	cmp r0, r8
	bge _0805EF84
	strh r1, [r4, #0x30]
	b _0805EF84
_0805EF80:
	movs r0, #1
	str r0, [sp, #4]
_0805EF84:
	adds r0, r7, r6
	lsls r3, r0, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r2, r0, #8
	adds r4, r1, #0
	ldr r1, [sp, #0xc]
	cmp r1, r2
	blt _0805EFB4
	adds r1, r5, r3
	ldrh r0, [r1, #0x32]
	adds r0, #0x40
	strh r0, [r1, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0x12
	asrs r2, r3, #0x10
	cmp r0, r2
	ble _0805EFD6
	strh r2, [r1, #0x32]
	b _0805EFD6
_0805EFB4:
	mov r0, sl
	adds r0, #8
	cmp r0, r2
	bgt _0805EFD2
	adds r1, r5, r3
	ldrh r0, [r1, #0x32]
	subs r0, #0x40
	strh r0, [r1, #0x32]
	lsls r0, r0, #0x10
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r8
	bge _0805EFD6
	strh r2, [r1, #0x32]
	b _0805EFD6
_0805EFD2:
	movs r0, #1
	str r0, [sp, #8]
_0805EFD6:
	ldr r1, [sp, #4]
	cmp r1, #1
	bne _0805EFF8
	ldr r2, [sp, #8]
	cmp r2, #1
	bne _0805EFF8
	adds r1, r7, r6
	lsls r1, r1, #2
	mov r3, ip
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	bl sub_8029C54
_0805EFF8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x1f
	bls _0805EF1A
	ldr r0, [sp]
	cmp r0, #0
	bne _0805F00C
	movs r0, #1
	b _0805F012
_0805F00C:
	movs r0, #0
	b _0805F012
_0805F010:
	movs r0, #0
_0805F012:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F024
sub_805F024: @ 0x0805F024
	push {lr}
	adds r2, r0, #0
	ldr r1, _0805F060 @ =gUnknown_080D1FAC
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	ldr r3, _0805F064 @ =0xFFFFC000
	adds r0, r0, r3
	cmp r1, r0
	bge _0805F044
	str r0, [r2, #0x20]
_0805F044:
	ldr r0, [r2, #0x18]
	ldr r1, _0805F064 @ =0xFFFFC000
	adds r0, r0, r1
	ldr r1, [r2, #0x20]
	cmp r1, r0
	bne _0805F06C
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	bne _0805F068
	movs r0, #0x5a
	strh r0, [r2, #0xe]
	movs r0, #1
	b _0805F08E
	.align 2, 0
_0805F060: .4byte gUnknown_080D1FAC
_0805F064: .4byte 0xFFFFC000
_0805F068:
	subs r0, #1
	strh r0, [r2, #0xe]
_0805F06C:
	ldrh r0, [r2, #0x10]
	cmp r0, #5
	bhi _0805F076
	adds r0, #1
	b _0805F08A
_0805F076:
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0805F088
	movs r0, #2
	strb r0, [r2, #6]
_0805F088:
	movs r0, #0
_0805F08A:
	strh r0, [r2, #0x10]
	movs r0, #0
_0805F08E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F094
sub_805F094: @ 0x0805F094
	push {r4, r5, r6, lr}
	ldr r6, _0805F0CC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0805F0D0 @ =0x0300001C
	adds r0, r4, r1
	subs r1, #0x12
	adds r2, r4, r1
	subs r1, #2
	adds r3, r4, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r5, #0
	bl sub_805F268
	adds r0, r5, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805F0D4
	ldr r0, [r6]
	bl TaskDestroy
	b _0805F0F2
	.align 2, 0
_0805F0CC: .4byte gCurTask
_0805F0D0: .4byte 0x0300001C
_0805F0D4:
	adds r0, r5, #0
	bl sub_805EEB4
	cmp r0, #1
	bne _0805F0F2
	ldr r0, _0805F0F8 @ =0x0300002C
	adds r2, r4, r0
	ldr r1, _0805F0FC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _0805F100 @ =sub_805F104
	str r0, [r1, #8]
_0805F0F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F0F8: .4byte 0x0300002C
_0805F0FC: .4byte gUnknown_080D1F8C
_0805F100: .4byte sub_805F104

	thumb_func_start sub_805F104
sub_805F104: @ 0x0805F104
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805F12C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_805F268
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805F130
	ldr r0, [r7]
	bl TaskDestroy
	b _0805F148
	.align 2, 0
_0805F12C: .4byte gCurTask
_0805F130:
	cmp r5, #0
	bne _0805F148
	ldr r0, _0805F150 @ =0x0300002C
	adds r2, r6, r0
	ldr r1, _0805F154 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805F158 @ =sub_805ED48
	str r0, [r1, #8]
_0805F148:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F150: .4byte 0x0300002C
_0805F154: .4byte gUnknown_080D1F8C
_0805F158: .4byte sub_805ED48

	thumb_func_start sub_805F15C
sub_805F15C: @ 0x0805F15C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805F182
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x28]
	cmp r0, r1
	bgt _0805F196
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	ble _0805F196
	b _0805F194
_0805F182:
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	blt _0805F196
	ldr r3, _0805F19C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	bge _0805F196
_0805F194:
	str r1, [r2, #0x1c]
_0805F196:
	pop {r0}
	bx r0
	.align 2, 0
_0805F19C: .4byte 0xFFFFFF00

	thumb_func_start sub_805F1A0
sub_805F1A0: @ 0x0805F1A0
	push {lr}
	ldr r1, _0805F1D0 @ =gUnknown_03001CFC
	ldr r1, [r1]
	cmp r1, #0
	beq _0805F1D8
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	movs r3, #0
_0805F1B4:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0x34]
	cmp r1, #0
	bne _0805F1D4
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #0x1f
	bls _0805F1B4
	b _0805F1DA
	.align 2, 0
_0805F1D0: .4byte gUnknown_03001CFC
_0805F1D4:
	movs r0, #1
	b _0805F1DA
_0805F1D8:
	movs r0, #0
_0805F1DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F1E0
sub_805F1E0: @ 0x0805F1E0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x20]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	blt _0805F1FA
	str r2, [r1, #0x20]
	movs r0, #1
	b _0805F1FC
_0805F1FA:
	movs r0, #0
_0805F1FC:
	pop {r1}
	bx r1

	thumb_func_start sub_805F200
sub_805F200: @ 0x0805F200
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x2c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F22C
sub_805F22C: @ 0x0805F22C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805F200
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
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

	thumb_func_start sub_805F268
sub_805F268: @ 0x0805F268
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805F2A8 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F2A8: .4byte gCamera

	thumb_func_start sub_805F2AC
sub_805F2AC: @ 0x0805F2AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0
