.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80B6370
sub_80B6370: @ 0x080B6370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080B6448 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	mov sl, r2
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r3, sl
	adds r4, r3, r2
	ldr r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r0, #2
	add r0, sb
	lsls r0, r0, #3
	ldr r5, _080B644C @ =0x000004B4
	adds r0, r0, r5
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r3, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	ldr r0, [r0, #0x54]
	asrs r0, r0, #8
	movs r3, #0x1e
	subs r3, r3, r0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	lsls r0, r0, #4
	str r0, [sp, #8]
	mov r0, sp
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	add r7, sp, #0x14
	ldr r2, [r4]
	adds r0, r7, #0
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6438
	movs r0, #2
	ldrsh r6, [r7, r0]
	movs r1, #4
	ldrsh r5, [r7, r1]
	movs r3, #6
	ldrsh r0, [r7, r3]
	subs r5, r5, r0
	ldr r0, _080B6450 @ =0x03000004
	add r0, sl
	ldr r2, _080B6454 @ =0x0400000A
	mov r1, r8
	bl CpuSet
	mov r4, sb
	adds r4, #0x18
	ldr r0, _080B6458 @ =0x000C0060
	orrs r0, r4
	mov r1, r8
	str r0, [r1, #8]
	strh r6, [r1, #0x10]
	ldr r0, _080B645C @ =0x030008E0
	add r0, sl
	ldrh r0, [r0]
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	mov r0, r8
	bl sub_8E8_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6460 @ =gOamBuffer + 0x6
	adds r4, r4, r0
	ldrh r0, [r7, #0xc]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0xe]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0x10]
	strh r0, [r4]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
_080B6438:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6448: .4byte gCurTask
_080B644C: .4byte 0x000004B4
_080B6450: .4byte 0x03000004
_080B6454: .4byte 0x0400000A
_080B6458: .4byte 0x000C0060
_080B645C: .4byte 0x030008E0
_080B6460: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B6464
sub_80B6464: @ 0x080B6464
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _080B6524 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	ldr r0, [r4]
	ldr r5, _080B6528 @ =0x030000F4
	adds r6, r2, r5
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r3
	ldr r0, [r0, #0x54]
	asrs r0, r0, #0xa
	movs r3, #0x1e
	subs r3, r3, r0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	mov r0, sp
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	add r7, sp, #0x14
	ldr r2, [r4]
	adds r0, r7, #0
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6514
	movs r1, #2
	ldrsh r0, [r7, r1]
	mov r8, r0
	movs r0, #4
	ldrsh r5, [r7, r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	subs r5, r5, r0
	ldr r2, _080B652C @ =0x0400000A
	adds r0, r6, #0
	adds r1, r6, #0
	bl CpuSet
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x14
	ldr r0, _080B6530 @ =0x000C0060
	orrs r0, r4
	str r0, [r6, #8]
	mov r1, r8
	strh r1, [r6, #0x10]
	strh r5, [r6, #0x12]
	movs r0, #0xc0
	strh r0, [r6, #0x14]
	adds r0, r6, #0
	bl sub_8E8_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6534 @ =gOamBuffer + 0x6
	adds r4, r4, r0
	ldrh r0, [r7, #0xc]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0xe]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0x10]
	strh r0, [r4]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
_080B6514:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6524: .4byte gCurTask
_080B6528: .4byte 0x030000F4
_080B652C: .4byte 0x0400000A
_080B6530: .4byte 0x000C0060
_080B6534: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B6538
sub_80B6538: @ 0x080B6538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _080B65D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r6, r0, r3
	ldr r0, [r6]
	ldr r1, [r0, #8]
	ldrh r2, [r1, #6]
	adds r3, r3, r2
	mov ip, r3
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _080B65D8 @ =0x030000A0
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0xe
	adds r5, r5, r0
	movs r1, #0
	ldr r0, _080B65DC @ =0x0300008C
	adds r7, r2, r0
	movs r2, #0
	mov r8, r2
_080B6576:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080B65E0 @ =0x000006D4
	adds r0, r0, r2
	adds r3, r6, r0
	ldrb r2, [r3, #0x1a]
	cmp r2, #0
	bne _080B65E8
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r1, [r4]
	subs r1, r5, r1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #0xb
	str r0, [r3, #0xc]
	ldr r1, [r4, #4]
	ldr r0, _080B65E4 @ =0xFF973C00
	adds r1, r1, r0
	ldr r0, [r7]
	subs r0, r0, r1
	asrs r0, r0, #6
	str r0, [r3, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #4
	movs r0, #0x8c
	lsls r0, r0, #8
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x90
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #2
	str r0, [r3, #0x14]
	strh r2, [r3, #0x18]
	movs r0, #1
	strb r0, [r3, #0x1a]
	mov r1, r8
	strb r1, [r3, #0x1b]
	b _080B65F2
	.align 2, 0
_080B65D4: .4byte gCurTask
_080B65D8: .4byte 0x030000A0
_080B65DC: .4byte 0x0300008C
_080B65E0: .4byte 0x000006D4
_080B65E4: .4byte 0xFF973C00
_080B65E8:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080B6576
_080B65F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B65FC
sub_80B65FC: @ 0x080B65FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r1, [sp, #0x28]
	ldr r1, _080B6710 @ =gCurTask
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r1, r3
	str r1, [sp, #0x30]
	ldr r1, [r1]
	str r1, [sp, #0x34]
	ldr r1, [r1, #8]
	ldrh r2, [r1, #6]
	ldr r4, [sp, #0x34]
	ldr r1, [r4, #0xc]
	ldrh r1, [r1, #6]
	adds r1, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r5, #0x8b
	lsls r5, r5, #4
	adds r0, r4, r5
	movs r4, #2
	ldrsh r3, [r0, r4]
	mov sb, r3
	ldr r5, _080B6714 @ =0x030000A0
	adds r0, r2, r5
	ldr r0, [r0]
	movs r3, #0x78
	subs r0, r3, r0
	asrs r0, r0, #2
	add sb, r0
	ldr r4, _080B6718 @ =0x0300008C
	adds r0, r2, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	str r5, [sp, #0x38]
	ldr r5, _080B671C @ =0x03000090
	adds r2, r2, r5
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r3, r3, r0
	mov r8, r3
	ldr r0, [r1, #0x54]
	asrs r0, r0, #0xa
	movs r1, #0x1e
	subs r1, r1, r0
	str r1, [sp, #0x2c]
	add r8, r1
	movs r2, #0
	mov r7, sp
_080B666E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B6720 @ =0x000006D4
	adds r0, r0, r1
	ldr r3, [sp, #0x30]
	adds r5, r3, r0
	ldrb r0, [r5, #0x1a]
	str r2, [sp, #0x3c]
	cmp r0, #0
	beq _080B674A
	ldr r3, [r5]
	ldr r0, [r5, #0xc]
	adds r3, r3, r0
	str r3, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x10]
	adds r2, r2, r0
	str r2, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #8]
	asrs r3, r3, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0xc
	mov r0, sb
	subs r0, #0xa
	cmp r3, r0
	ble _080B66DA
	adds r0, #0x14
	cmp r3, r0
	bge _080B66DA
	ldr r0, [sp, #0x38]
	subs r0, #0xa
	cmp r2, r0
	ble _080B66DA
	ldr r0, [sp, #0x38]
	adds r0, #8
	cmp r2, r0
	bge _080B66DA
	mov r0, r8
	subs r0, #0x11
	cmp r1, r0
	blt _080B66DA
	adds r0, #0x25
	cmp r1, r0
	bgt _080B66DA
	ldr r0, [sp, #0x34]
	movs r1, #5
	bl sub_80B4654
_080B66DA:
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	movs r4, #0
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0xc]
	strh r0, [r7, #0xe]
	strh r1, [r7, #0x10]
	movs r0, #5
	strh r0, [r7, #0x12]
	add r6, sp, #0x14
	ldr r0, [sp, #0x30]
	ldr r2, [r0]
	adds r0, r6, #0
	mov r1, sp
	ldr r3, [sp, #0x2c]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B6724
	strb r4, [r5, #0x1a]
	b _080B674A
	.align 2, 0
_080B6710: .4byte gCurTask
_080B6714: .4byte 0x030000A0
_080B6718: .4byte 0x0300008C
_080B671C: .4byte 0x03000090
_080B6720: .4byte 0x000006D4
_080B6724:
	mov r1, sl
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #2
	adds r5, r5, r4
	lsls r5, r5, #2
	ldr r2, [sp, #0x28]
	adds r5, r2, r5
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, _080B6770 @ =0x04000005
	bl CpuSet
	movs r0, #6
	strh r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
_080B674A:
	ldr r3, [sp, #0x3c]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B666E
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B6770: .4byte 0x04000005

.if 0
.endif
