.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_800132C
sub_800132C: @ 0x0800132C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	mov sb, r1
	ldr r0, _080015E4 @ =0x47544E4C
	str r0, [r6]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	mov r3, sb
	ldm r3!, {r0}
	str r0, [r6, #8]
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0xc
_08001352:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _08001352
	movs r1, #0
	strb r1, [r6, #0x18]
	mov r2, sb
	ldrb r0, [r2, #0x10]
	strb r0, [r6, #0x19]
	ldrb r0, [r2, #0x11]
	strb r0, [r6, #0x1a]
	ldrb r0, [r2, #0x12]
	strb r0, [r6, #0x1b]
	strb r1, [r6, #0x1c]
	movs r5, #0
	movs r3, #0x2c
	adds r3, r3, r6
	mov r8, r3
	mov r7, sb
	adds r7, #0x22
	movs r0, #0x33
	adds r0, r0, r6
	mov ip, r0
	movs r1, #0x29
	add r1, sb
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x3e
	str r2, [sp, #0x48]
	mov r3, sb
	adds r3, #0x37
	str r3, [sp, #0x3c]
	mov r0, sb
	adds r0, #0x32
	str r0, [sp, #0x34]
	adds r1, r6, #0
	adds r1, #0x3c
	str r1, [sp, #0x40]
	mov r2, sb
	ldrh r3, [r2, #0x34]
	mov r2, sp
	strh r3, [r2, #0x30]
	adds r0, r6, #0
	adds r0, #0x62
	str r0, [sp, #4]
	mov r1, sb
	adds r1, #0x33
	str r1, [sp, #0x38]
	adds r2, r6, #0
	adds r2, #0x3d
	str r2, [sp, #0x44]
	mov r3, sb
	adds r3, #0x60
	str r3, [sp]
	adds r0, #2
	str r0, [sp, #0x10]
	adds r1, #0x2f
	str r1, [sp, #0xc]
	adds r2, #0x28
	str r2, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #8]
	adds r0, #2
	str r0, [sp, #0x1c]
	adds r1, r6, #0
	adds r1, #0x67
	str r1, [sp, #0x20]
	adds r2, #7
	str r2, [sp, #0x28]
	adds r3, #3
	str r3, [sp, #0x18]
	adds r0, #0xa
	str r0, [sp, #0x2c]
	mov r1, sb
	adds r1, #0x68
	str r1, [sp, #0x24]
	adds r4, r6, #0
	adds r4, #0x1e
	subs r3, #0x50
_08001402:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _08001402
	movs r5, #0
	mov r4, r8
	adds r3, r7, #0
_08001422:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08001422
	movs r5, #0
	mov r4, ip
	mov r3, sl
_08001440:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001440
	movs r5, #0
	ldr r2, [sp, #0x48]
	mov ip, r2
	ldr r3, [sp, #0x3c]
	mov r8, r3
_08001462:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r4, r7, #0xe
_08001468:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r3, ip
	adds r2, r3, r1
	add r1, r8
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08001468
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001462
	ldr r2, [sp, #0x34]
	ldrb r0, [r2]
	ldr r3, [sp, #0x40]
	strb r0, [r3]
	movs r1, #0
	mov r0, sp
	ldrh r2, [r0, #0x30]
	ldr r0, [sp, #4]
	strh r2, [r0]
	ldr r3, [sp, #0x38]
	ldrb r0, [r3]
	ldr r2, [sp, #0x44]
	strb r0, [r2]
	ldr r3, [sp]
	ldrb r0, [r3]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	ldr r2, [sp, #0x1c]
	strb r0, [r2]
	ldr r3, [sp, #0x20]
	strb r1, [r3]
	movs r5, #0
	ldr r0, [sp, #0x2c]
	mov r8, r0
	ldr r7, [sp, #0x24]
_080014D2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r1, r6, r2
	mov ip, r1
	mov r0, sb
	adds r3, r0, r2
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x68
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x75
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x69
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x77
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x76
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x6b
	strb r1, [r0]
	ldr r3, [sp, #0x28]
	adds r1, r3, r2
	ldr r3, [sp, #0x18]
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0
	adds r4, r2, #0
_08001522:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r4
	mov r3, r8
	adds r2, r3, r0
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _08001522
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _080014D2
	movs r5, #0
_08001552:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r1, r7, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov sl, r0
_08001560:
	movs r4, #0
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
_0800156E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	add r0, r8
	add r0, sl
	adds r3, r6, r0
	mov ip, r3
	mov r1, sb
	adds r3, r1, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, ip
	strb r1, [r0]
	ldr r1, _080015E8 @ =0x0000012D
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r1, #4
	add r1, ip
	strb r0, [r1]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	adds r1, #4
	add r1, ip
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #4
	ble _0800156E
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08001560
	adds r0, r7, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08001552
	movs r0, #0xd7
	lsls r0, r0, #2
	add r0, sb
	ldrh r1, [r0]
	cmp r1, #2
	beq _08001600
	cmp r1, #2
	bgt _080015EC
	cmp r1, #1
	beq _080015F6
	b _08001614
	.align 2, 0
_080015E4: .4byte 0x47544E4C
_080015E8: .4byte 0x0000012D
_080015EC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800160C
	b _08001614
_080015F6:
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r0, r6, r3
	strb r1, [r0]
	b _08001614
_08001600:
	ldr r0, _08001608 @ =0x00000361
	adds r1, r6, r0
	b _08001610
	.align 2, 0
_08001608: .4byte 0x00000361
_0800160C:
	ldr r2, _08001628 @ =0x00000362
	adds r1, r6, r2
_08001610:
	movs r0, #1
	strb r0, [r1]
_08001614:
	ldr r0, _0800162C @ =0x0000035E
	add r0, sb
	ldrh r1, [r0]
	cmp r1, #2
	beq _08001640
	cmp r1, #2
	bgt _08001630
	cmp r1, #1
	beq _0800163A
	b _08001654
	.align 2, 0
_08001628: .4byte 0x00000362
_0800162C: .4byte 0x0000035E
_08001630:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800164C
	b _08001654
_0800163A:
	movs r3, #0xd8
	lsls r3, r3, #2
	b _0800164E
_08001640:
	ldr r2, _08001648 @ =0x00000361
	adds r0, r6, r2
	strb r1, [r0]
	b _08001654
	.align 2, 0
_08001648: .4byte 0x00000361
_0800164C:
	ldr r3, _0800166C @ =0x00000362
_0800164E:
	adds r1, r6, r3
	movs r0, #2
	strb r0, [r1]
_08001654:
	movs r2, #0xd8
	lsls r2, r2, #2
	mov r1, sb
	adds r0, r1, r2
	ldrh r1, [r0]
	cmp r1, #2
	beq _0800167E
	cmp r1, #2
	bgt _08001670
	cmp r1, #1
	beq _0800167A
	b _08001690
	.align 2, 0
_0800166C: .4byte 0x00000362
_08001670:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08001688
	b _08001690
_0800167A:
	adds r1, r6, r2
	b _0800168C
_0800167E:
	ldr r2, _08001684 @ =0x00000361
	adds r1, r6, r2
	b _0800168C
	.align 2, 0
_08001684: .4byte 0x00000361
_08001688:
	ldr r3, _080016DC @ =0x00000362
	adds r1, r6, r3
_0800168C:
	movs r0, #4
	strb r0, [r1]
_08001690:
	movs r0, #0xd9
	lsls r0, r0, #2
	mov r2, sb
	adds r1, r2, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	movs r2, #0
	strb r1, [r0]
	ldr r0, _080016E0 @ =0x00000365
	mov r3, sb
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r0, _080016E4 @ =0x00000366
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r1, _080016E8 @ =0x00000367
	adds r0, r6, r1
	strb r2, [r0]
	adds r0, r6, #0
	bl GetSaveSectorChecksum
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r6, r2
	str r0, [r1]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080016DC: .4byte 0x00000362
_080016E0: .4byte 0x00000365
_080016E4: .4byte 0x00000366
_080016E8: .4byte 0x00000367

	thumb_func_start sub_80016EC
sub_80016EC: @ 0x080016EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	mov sb, r1
	ldr r0, [r1, #8]
	adds r3, r6, #0
	stm r3!, {r0}
	movs r5, #0
	mov r4, sb
	adds r4, #0xc
_08001708:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r3, r0
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _08001708
	adds r0, r6, #0
	adds r0, #0x36
	movs r1, #0
	strb r1, [r0]
	mov r2, sb
	ldrb r0, [r2, #0x19]
	strb r0, [r6, #0x10]
	ldrb r0, [r2, #0x1a]
	strb r0, [r6, #0x11]
	ldrb r0, [r2, #0x1b]
	strb r0, [r6, #0x12]
	adds r0, r6, #0
	adds r0, #0x5b
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x2c
	add r3, sb
	mov r8, r3
	movs r0, #0x29
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x33
	add r1, sb
	mov ip, r1
	adds r2, r6, #0
	adds r2, #0x37
	str r2, [sp, #8]
	mov r3, sb
	adds r3, #0x3e
	str r3, [sp, #0x14]
	mov r0, sb
	adds r0, #0x3c
	str r0, [sp, #0xc]
	adds r1, r6, #0
	adds r1, #0x32
	str r1, [sp]
	mov r2, sb
	adds r2, #0x62
	str r2, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0x33
	str r0, [sp, #4]
	mov r1, sb
	adds r1, #0x64
	str r1, [sp, #0x30]
	adds r2, r6, #0
	adds r2, #0x60
	str r2, [sp, #0x18]
	adds r3, #0x28
	str r3, [sp, #0x34]
	adds r0, #0x2f
	str r0, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x38]
	adds r2, #1
	str r2, [sp, #0x1c]
	adds r3, r6, #0
	adds r3, #0x63
	str r3, [sp, #0x28]
	adds r0, #2
	str r0, [sp, #0x2c]
	adds r1, #6
	str r1, [sp, #0x40]
	adds r2, #7
	str r2, [sp, #0x3c]
	mov r3, sb
	adds r3, #0x70
	str r3, [sp, #0x44]
	adds r4, r6, #0
	adds r4, #0x14
	subs r3, #0x52
_080017C0:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _080017C0
	movs r5, #0
	adds r4, r7, #0
	mov r3, r8
_080017E0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _080017E0
	movs r5, #0
	mov r4, sl
	mov r3, ip
_080017FE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080017FE
	movs r5, #0
	ldr r0, [sp, #8]
	mov ip, r0
	ldr r1, [sp, #0x14]
	mov r8, r1
_08001820:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r4, r7, #0xe
_08001826:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r3, ip
	adds r2, r3, r1
	add r1, r8
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08001826
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001820
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r1, [sp, #0x24]
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r6, #0x34]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	ldr r3, [sp, #4]
	strb r0, [r3]
	ldr r2, [sp, #0x30]
	ldrb r0, [r2]
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	ldr r2, [sp, #0x34]
	ldrb r0, [r2]
	ldr r3, [sp, #0x20]
	strb r0, [r3]
	ldr r2, [sp, #0x38]
	ldrb r0, [r2]
	ldr r3, [sp, #0x1c]
	strb r0, [r3]
	ldr r0, [sp, #0x28]
	strb r1, [r0]
	movs r5, #0
	ldr r1, [sp, #0x3c]
	mov r8, r1
	ldr r7, [sp, #0x44]
_0800188E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r3, r6, r2
	mov ip, r3
	mov r0, sb
	adds r3, r0, r2
	adds r0, r3, #0
	adds r0, #0x68
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x74
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x69
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x75
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	adds r1, #2
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x6b
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x76
	strb r1, [r0]
	ldr r3, [sp, #0x2c]
	adds r1, r3, r2
	ldr r3, [sp, #0x40]
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0
	adds r4, r2, #0
_080018DE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r4
	mov r3, r8
	adds r2, r3, r0
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _080018DE
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0800188E
	movs r5, #0
_0800190E:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r1, r7, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov sl, r0
_0800191C:
	movs r4, #0
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
_0800192A:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	add r0, r8
	add r0, sl
	adds r3, r6, r0
	mov ip, r3
	mov r1, sb
	adds r3, r1, r0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	add r0, ip
	strb r1, [r0]
	ldr r1, _080019A4 @ =0x00000131
	adds r0, r3, r1
	ldrb r0, [r0]
	subs r1, #4
	add r1, ip
	strb r0, [r1]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	subs r1, #4
	add r1, ip
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #4
	ble _0800192A
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800191C
	adds r0, r7, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0800190E
	movs r2, #0xd8
	lsls r2, r2, #2
	mov r3, sb
	adds r0, r3, r2
	ldrb r1, [r0]
	cmp r1, #2
	beq _080019B8
	cmp r1, #2
	bgt _080019A8
	cmp r1, #1
	beq _080019AE
	b _080019CA
	.align 2, 0
_080019A4: .4byte 0x00000131
_080019A8:
	cmp r1, #4
	beq _080019C4
	b _080019CA
_080019AE:
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	b _080019CA
_080019B8:
	ldr r3, _080019C0 @ =0x0000035E
	adds r1, r6, r3
	b _080019C6
	.align 2, 0
_080019C0: .4byte 0x0000035E
_080019C4:
	adds r1, r6, r2
_080019C6:
	movs r0, #1
	strh r0, [r1]
_080019CA:
	ldr r0, _080019E0 @ =0x00000361
	add r0, sb
	ldrb r1, [r0]
	cmp r1, #2
	beq _080019F2
	cmp r1, #2
	bgt _080019E4
	cmp r1, #1
	beq _080019EA
	b _08001A0A
	.align 2, 0
_080019E0: .4byte 0x00000361
_080019E4:
	cmp r1, #4
	beq _08001A00
	b _08001A0A
_080019EA:
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r1, r6, r0
	b _08001A06
_080019F2:
	ldr r2, _080019FC @ =0x0000035E
	adds r0, r6, r2
	strh r1, [r0]
	b _08001A0A
	.align 2, 0
_080019FC: .4byte 0x0000035E
_08001A00:
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r1, r6, r3
_08001A06:
	movs r0, #2
	strh r0, [r1]
_08001A0A:
	ldr r0, _08001A20 @ =0x00000362
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #2
	beq _08001A32
	cmp r0, #2
	bgt _08001A24
	cmp r0, #1
	beq _08001A2A
	b _08001A48
	.align 2, 0
_08001A20: .4byte 0x00000362
_08001A24:
	cmp r0, #4
	beq _08001A3C
	b _08001A48
_08001A2A:
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r1, r6, r0
	b _08001A42
_08001A32:
	ldr r2, _08001A38 @ =0x0000035E
	adds r1, r6, r2
	b _08001A42
	.align 2, 0
_08001A38: .4byte 0x0000035E
_08001A3C:
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r1, r6, r3
_08001A42:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_08001A48:
	movs r0, #0xd9
	lsls r0, r0, #2
	mov r2, sb
	adds r1, r2, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08001A84 @ =0x00000365
	mov r3, sb
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r0, _08001A88 @ =0x00000366
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r1, _08001A8C @ =0x00000367
	adds r0, r6, r1
	strb r2, [r0]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001A84: .4byte 0x00000365
_08001A88: .4byte 0x00000366
_08001A8C: .4byte 0x00000367

	thumb_func_start sub_8001A90
sub_8001A90: @ 0x08001A90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	movs r0, #0
	mov sb, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	ldr r4, _08001ABC @ =0x0000FFFF
	mov sl, r4
	ldr r0, _08001AC0 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001AC4
	mov r0, r8
	b _08001B4A
	.align 2, 0
_08001ABC: .4byte 0x0000FFFF
_08001AC0: .4byte gFlags
_08001AC4:
	movs r1, #0
_08001AC6:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	asrs r6, r0, #0x10
	lsls r5, r6, #3
	mov r0, sp
	adds r4, r0, r5
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #8
	bl ReadFlash
	ldr r1, [r4]
	ldr r0, _08001B10 @ =0x47544E4C
	cmp r1, r0
	bne _08001B14
	add r2, sp, #4
	adds r0, r2, r5
	ldr r0, [r0]
	cmp r0, sb
	bls _08001AF2
	mov sb, r0
_08001AF2:
	cmp r0, r8
	bhs _08001AFA
	mov r8, r0
	mov sl, r7
_08001AFA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001AC6
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	beq _08001B18
	b _08001B44
	.align 2, 0
_08001B10: .4byte 0x47544E4C
_08001B14:
	adds r0, r6, #0
	b _08001B4A
_08001B18:
	mov r8, sb
	movs r1, #0
	adds r3, r2, #0
	ldr r2, _08001B5C @ =0xFFFFFF00
_08001B20:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xd
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, r2
	bls _08001B36
	cmp r0, r8
	bhi _08001B36
	mov r8, r0
	lsrs r4, r1, #0x10
	mov sl, r4
_08001B36:
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001B20
_08001B44:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
_08001B4A:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001B5C: .4byte 0xFFFFFF00

	thumb_func_start sub_8001B60
sub_8001B60: @ 0x08001B60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	movs r0, #0
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	ldr r0, _08001B90 @ =0x0000FFFF
	mov sl, r0
	ldr r0, _08001B94 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001B98
	movs r0, #2
	rsbs r0, r0, #0
	b _08001C18
	.align 2, 0
_08001B90: .4byte 0x0000FFFF
_08001B94: .4byte gFlags
_08001B98:
	movs r1, #0
_08001B9A:
	lsls r4, r1, #0x10
	lsrs r7, r4, #0x10
	asrs r6, r4, #0xd
	mov r1, sp
	adds r5, r1, r6
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #8
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08001C28 @ =0x47544E4C
	cmp r1, r0
	bne _08001BCC
	add r0, sp, #4
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r8
	bls _08001BC6
	mov r8, r0
	mov sl, r7
_08001BC6:
	cmp r0, sb
	bhs _08001BCC
	mov sb, r0
_08001BCC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001B9A
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	bne _08001C12
	movs r0, #0
	mov r8, r0
	movs r1, #0
	add r2, sp, #4
	ldr r3, _08001C2C @ =0xFFFFFEFF
_08001BEC:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xd
	adds r0, r2, r0
	ldr r0, [r0]
	adds r4, r1, #0
	cmp r0, r3
	bhi _08001C04
	cmp r0, r8
	blo _08001C04
	mov r8, r0
	lsrs r1, r4, #0x10
	mov sl, r1
_08001C04:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001BEC
_08001C12:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
_08001C18:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001C28: .4byte 0x47544E4C
_08001C2C: .4byte 0xFFFFFEFF

	thumb_func_start sub_8001C30
sub_8001C30: @ 0x08001C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov ip, r1
	movs r7, #0
	ldr r5, _08001D50 @ =gSaveGame + 0x64
	ldrb r0, [r5, #0x10]
	mov sl, r5
	cmp r0, #0
	beq _08001CA0
_08001C4A:
	ldr r0, [r5]
	cmp r0, sb
	bne _08001C80
	movs r2, #0
	ldrh r0, [r5, #4]
	mov r1, ip
	ldrh r1, [r1]
	cmp r0, r1
	bne _08001C7C
	adds r3, r5, #4
_08001C5E:
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _08001C7C
	lsls r0, r0, #1
	adds r1, r3, r0
	add r0, ip
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08001C5E
_08001C7C:
	cmp r2, #6
	beq _08001D3E
_08001C80:
	lsls r0, r7, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r7, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #9
	bgt _08001CA0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sl
	adds r5, r0, r1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08001C4A
_08001CA0:
	cmp r7, #0xa
	bne _08001CA6
	movs r7, #9
_08001CA6:
	lsls r0, r7, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r7, r0, #0x18
	lsls r0, r7, #0x18
	cmp r0, #0
	blt _08001D0E
	ldr r1, _08001D54 @ =gSaveGame + 0x78
	mov r8, r1
_08001CBA:
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r0, r8
	adds r3, r1, r0
	ldr r0, _08001D50 @ =gSaveGame + 0x64
	adds r5, r1, r0
	adds r4, r5, #0
	ldm r4!, {r0}
	adds r6, r3, #0
	stm r6!, {r0}
	movs r2, #0
_08001CD4:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r2, r6, r1
	adds r1, r4, r1
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	ble _08001CD4
	ldrb r0, [r5, #0x10]
	strb r0, [r3, #0x10]
	ldrb r0, [r5, #0x11]
	strb r0, [r3, #0x11]
	ldrb r0, [r5, #0x12]
	strb r0, [r3, #0x12]
	ldrb r0, [r5, #0x13]
	strb r0, [r3, #0x13]
	lsls r0, r7, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	lsls r0, r7, #0x18
	cmp r0, #0
	bge _08001CBA
_08001D0E:
	mov r5, sl
	adds r3, r5, #0
	mov r0, sb
	stm r3!, {r0}
	movs r7, #0
_08001D18:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r2, r3, r0
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #5
	ble _08001D18
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0x10]
	strb r1, [r5, #0x11]
	strb r1, [r5, #0x12]
	strb r1, [r5, #0x13]
_08001D3E:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001D50: .4byte gSaveGame + 0x64
_08001D54: .4byte gSaveGame + 0x78

	thumb_func_start sub_8001D58
sub_8001D58: @ 0x08001D58
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08001DBC @ =gDispCnt
	ldrb r1, [r0]
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r4, [r0]
	ldr r1, _08001DC0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08001DC4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08001DC8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08001DCC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08001DD0 @ =gVramGraphicsCopyCursor
	ldr r0, _08001DD4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08001DD8 @ =Task_8000918
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	movs r1, #0
	strh r4, [r0, #4]
	strb r1, [r0, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001DBC: .4byte gDispCnt
_08001DC0: .4byte 0x0000FFFF
_08001DC4: .4byte gBackgroundsCopyQueueCursor
_08001DC8: .4byte gBackgroundsCopyQueueIndex
_08001DCC: .4byte gBgSpritesCount
_08001DD0: .4byte gVramGraphicsCopyCursor
_08001DD4: .4byte gVramGraphicsCopyQueueIndex
_08001DD8: .4byte Task_8000918

	thumb_func_start sub_8001DDC
sub_8001DDC: @ 0x08001DDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08001E00 @ =gSaveGame
	adds r1, r4, #0
	bl ClearSave
	ldr r0, _08001E04 @ =gUnknown_03000980
	adds r1, r4, #0
	bl ClearSave
	ldr r0, _08001E08 @ =gSaveSectorData
	adds r1, r4, #0
	bl ValidateSaveSector
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001E00: .4byte gSaveGame
_08001E04: .4byte gUnknown_03000980
_08001E08: .4byte gSaveSectorData

@ --- Split ??? ---

	thumb_func_start sub_8001E0C
sub_8001E0C: @ 0x08001E0C
	push {r4, lr}
	ldr r0, _08001E44 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08001E3C
	movs r0, #0
_08001E1E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8001224
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _08001E1E
	bl sub_8001FD4
	bl sub_8002024
_08001E3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001E44: .4byte gFlags

	thumb_func_start sub_8001E48
sub_8001E48: @ 0x08001E48
	push {lr}
	ldr r0, _08001E54 @ =gSaveGame
	bl CompleteSave
	pop {r0}
	bx r0
	.align 2, 0
_08001E54: .4byte gSaveGame

	thumb_func_start sub_8001E58
sub_8001E58: @ 0x08001E58
	push {lr}
	ldr r1, _08001E78 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08001E68
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08001E7C
_08001E68:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08001E7C
	bl sub_8001FD4
	b _08001E7E
	.align 2, 0
_08001E78: .4byte gStageData
_08001E7C:
	movs r0, #0
_08001E7E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8001E84
sub_8001E84: @ 0x08001E84
	push {lr}
	bl sub_8002024
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8001E94
sub_8001E94: @ 0x08001E94
	push {r4, r5, lr}
	sub sp, #0x80
	ldr r0, _08001EA8 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001EB0
	b _08001EDC
	.align 2, 0
_08001EA8: .4byte gFlags
_08001EAC:
	movs r0, #1
	b _08001EDE
_08001EB0:
	movs r1, #0
_08001EB2:
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r5, r1, #0x10
	lsls r1, r5, #3
	mov r2, sp
	adds r4, r2, r1
	movs r1, #0
	adds r2, r4, #0
	movs r3, #8
	bl ReadFlash
	ldr r1, [r4]
	ldr r0, _08001EE8 @ =0x47544E4C
	cmp r1, r0
	beq _08001EAC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001EB2
_08001EDC:
	movs r0, #0
_08001EDE:
	add sp, #0x80
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001EE8: .4byte 0x47544E4C

	thumb_func_start sub_8001EEC
sub_8001EEC: @ 0x08001EEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08001F20 @ =gSaveGame
	ldrb r1, [r2, #0x10]
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0x3c
	bl sub_802616C
	ldr r1, _08001F24 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08001F0E
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08001F1C
_08001F0E:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08001F1C
	bl sub_8001FD4
_08001F1C:
	pop {r0}
	bx r0
	.align 2, 0
_08001F20: .4byte gSaveGame
_08001F24: .4byte gStageData

	thumb_func_start SetChaoFlag
SetChaoFlag: @ 0x08001F28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08001F44 @ =gSaveGame
	ldr r1, _08001F48 @ =gStageData
	ldrb r2, [r1, #9]
	lsls r2, r2, #1
	adds r3, #0x14
	adds r2, r2, r3
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08001F44: .4byte gSaveGame
_08001F48: .4byte gStageData

	thumb_func_start GetChaoFlag
GetChaoFlag: @ 0x08001F4C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08001F68 @ =gSaveGame
	lsrs r2, r2, #0xf
	adds r0, #0x14
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r1
	ldrh r1, [r2]
	ands r0, r1
	bx lr
	.align 2, 0
_08001F68: .4byte gSaveGame

	thumb_func_start GetChaoCount
GetChaoCount: @ 0x08001F6C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	movs r3, #0
	movs r2, #0
	lsrs r0, r0, #0xf
	ldr r1, _08001FAC @ =gSaveGame + 0x14
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r5, #1
_08001F7E:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08001F96
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
_08001F96:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08001F7E
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001FAC: .4byte gSaveGame + 0x14

	thumb_func_start Task_8001FB0
Task_8001FB0: @ 0x08001FB0
	push {r4, lr}
	ldr r0, _08001FD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r4, [r1]
	bl TaskDestroy
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FD0: .4byte gCurTask

	thumb_func_start sub_8001FD4
sub_8001FD4: @ 0x08001FD4
	push {r4, r5, r6, lr}
	ldr r4, _08002008 @ =gSaveGame
	ldr r5, _0800200C @ =gUnknown_03000980
	ldr r6, _08002010 @ =gSaveSectorData
	adds r0, r4, #0
	bl ValidateSave
	ldr r2, _08002014 @ =0x040000DA
	adds r0, r4, #0
	adds r1, r5, #0
	bl CpuSet
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_800132C
	bl sub_8001A90
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08002018
	adds r1, r6, #0
	bl sub_8001120
	b _0800201C
	.align 2, 0
_08002008: .4byte gSaveGame
_0800200C: .4byte gUnknown_03000980
_08002010: .4byte gSaveSectorData
_08002014: .4byte 0x040000DA
_08002018:
	movs r0, #1
	rsbs r0, r0, #0
_0800201C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8002024
sub_8002024: @ 0x08002024
	push {r4, r5, r6, lr}
	ldr r6, _08002040 @ =gSaveGame
	ldr r5, _08002044 @ =gUnknown_03000980
	ldr r4, _08002048 @ =gSaveSectorData
	bl sub_8001B60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800204C
	movs r0, #1
	rsbs r0, r0, #0
	b _0800207A
	.align 2, 0
_08002040: .4byte gSaveGame
_08002044: .4byte gUnknown_03000980
_08002048: .4byte gSaveSectorData
_0800204C:
	adds r1, r4, #0
	bl sub_8002084
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08002060
	adds r0, r4, #0
	movs r1, #0
	bl ValidateSaveSector
_08002060:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80016EC
	adds r0, r5, #0
	bl ValidateSave
	ldr r2, _08002080 @ =0x040000DA
	adds r0, r5, #0
	adds r1, r6, #0
	bl CpuSet
	movs r0, #0
_0800207A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002080: .4byte 0x040000DA

	thumb_func_start sub_8002084
sub_8002084: @ 0x08002084
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r7, r5, r0
_08002094:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0xdb
	lsls r3, r3, #2
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _080020BC @ =0x47544E4C
	cmp r1, r0
	bne _080020C0
	adds r0, r5, #0
	bl GetSaveSectorChecksum
	ldr r1, [r7]
	cmp r1, r0
	bne _080020C0
	movs r0, #0
	b _080020EA
	.align 2, 0
_080020BC: .4byte 0x47544E4C
_080020C0:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_8001224
	cmp r4, #0
	bne _080020D0
	movs r4, #0xf
	b _080020D6
_080020D0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080020D6:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08002094
	movs r0, #1
	rsbs r0, r0, #0
_080020EA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80020F0
sub_80020F0: @ 0x080020F0
	push {r4, r5, lr}
	ldr r2, _08002108 @ =gSaveGame
	ldr r1, _0800210C @ =gUnknown_03000980
	movs r3, #0
	movs r4, #0xda
	lsls r4, r4, #1
_080020FC:
	ldrh r0, [r2]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08002110
	movs r0, #1
	b _08002126
	.align 2, 0
_08002108: .4byte gSaveGame
_0800210C: .4byte gUnknown_03000980
_08002110:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r2, #2
	adds r1, #2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	blt _080020FC
	movs r0, #0
_08002126:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start GetSaveSectorChecksum
GetSaveSectorChecksum: @ 0x0800212C
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	movs r4, #0xda
	lsls r4, r4, #2
_08002138:
	adds r0, r3, r1
	ldr r0, [r0]
	adds r2, r2, r0
	adds r1, #4
	cmp r1, r4
	blo _08002138
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800214C
sub_800214C: @ 0x0800214C
	push {r4, r5, r6, lr}
	ldr r6, _08002180 @ =gPlayers
	ldr r1, _08002184 @ =gStageData
	ldrb r0, [r1, #3]
	adds r2, r1, #0
	cmp r0, #7
	beq _08002188
	adds r1, #0xb4
	movs r0, #2
	strb r0, [r1]
	movs r3, #0
	adds r4, r2, #0
	adds r4, #0xbe
	movs r2, #0
_08002168:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08002168
	b _080021A4
	.align 2, 0
_08002180: .4byte gPlayers
_08002184: .4byte gStageData
_08002188:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #0
	strb r1, [r0]
	adds r3, r2, #0
	adds r3, #0x8e
	movs r0, #0xff
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x98
	str r1, [r0]
	movs r0, #0
	bl sub_8029774
_080021A4:
	movs r3, #0
	ldr r2, _080021E4 @ =gStageData
	movs r4, #0
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r6, #0
	adds r1, #0xc4
_080021B2:
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, r1, r5
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080021B2
	ldrb r0, [r2, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080021E8
	movs r0, #1
	strh r0, [r2, #0x14]
	movs r0, #2
	strh r0, [r2, #0x16]
	adds r0, #0xfe
	b _08002204
	.align 2, 0
_080021E4: .4byte gStageData
_080021E8:
	ldr r1, _0800220C @ =gSaveGame
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
_08002204:
	strh r0, [r2, #0x18]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800220C: .4byte gSaveGame

	thumb_func_start WarpToMap
WarpToMap: @ 0x08002210
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r4, _0800225C @ =gStageData
	lsrs r6, r0, #0x10
	asrs r5, r0, #0x10
	adds r7, r4, #0
	cmp r5, #0x48
	bgt _0800226C
	cmp r5, #0x46
	bgt _08002260
	subs r0, r5, #1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	subs r1, r5, r1
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r5, #1
	beq _08002266
	cmp r5, #0xb
	beq _08002266
	strb r2, [r4, #9]
	strb r1, [r4, #0xa]
	b _0800226A
	.align 2, 0
_0800225C: .4byte gStageData
_08002260:
	adds r0, r6, #0
	subs r0, #0x40
	strb r0, [r4, #9]
_08002266:
	movs r0, #1
	strb r0, [r4, #0xa]
_0800226A:
	strh r6, [r4, #0xe]
_0800226C:
	mov r0, r8
	strb r0, [r4, #0xb]
	ldr r1, _080022A4 @ =gSaveGame
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r0, [r7, #9]
	cmp r0, #6
	bhi _080022A8
	ldrb r2, [r7, #0xa]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080022A0
	adds r0, r2, #0
	cmp r0, #8
	beq _080022A0
	cmp r0, #9
	bne _080022A8
_080022A0:
	movs r0, #1
	b _080022AE
	.align 2, 0
_080022A4: .4byte gSaveGame
_080022A8:
	ldr r2, _080022DC @ =0x00000365
	adds r0, r1, r2
	ldrb r0, [r0]
_080022AE:
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xb6
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0x2d
	strh r1, [r0]
	ldr r0, _080022E0 @ =sub_8003F40
	ldr r1, _080022E4 @ =0x00007FFF
	bl sub_8001D58
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080022DC: .4byte 0x00000365
_080022E0: .4byte sub_8003F40
_080022E4: .4byte 0x00007FFF

	thumb_func_start sub_80022E8
sub_80022E8: @ 0x080022E8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, r1, #0
	ldr r4, _08002314 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #7
	beq _0800235C
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x48
	bgt _08002338
	cmp r5, #0x46
	ble _08002318
	adds r0, r1, #0
	subs r0, #0x3f
	strb r0, [r4, #9]
	movs r0, #3
	strb r0, [r4, #0xa]
	strh r1, [r4, #0xe]
	b _08002338
	.align 2, 0
_08002314: .4byte gStageData
_08002318:
	subs r0, r5, #1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	subs r1, r5, r1
	adds r1, #1
	strb r2, [r4, #9]
	strb r1, [r4, #0xa]
	strh r6, [r4, #0xe]
_08002338:
	ldr r1, _08002354 @ =gSaveGame
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r4, #1]
	ldr r0, _08002358 @ =0x00000366
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
	strb r2, [r4, #2]
	strb r2, [r4, #0xb]
	b _08002364
	.align 2, 0
_08002354: .4byte gSaveGame
_08002358: .4byte 0x00000366
_0800235C:
	movs r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strh r0, [r4, #0xe]
_08002364:
	adds r0, r4, #0
	adds r0, #0xb6
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _08002384 @ =sub_8003F8C
	bl sub_8001D58
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002384: .4byte sub_8003F8C

	thumb_func_start sub_8002388
sub_8002388: @ 0x08002388
	push {r4, r5, lr}
	ldr r2, _0800240C @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb7
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x4c
	strh r1, [r0]
	movs r0, #0
	ldr r5, _08002410 @ =gPlayers
	movs r4, #0
_080023A4:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0xc4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	subs r0, #0x40
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	strh r4, [r3, #0x1c]
	subs r0, #0x3e
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	ldrh r0, [r2, #0x28]
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	ldrh r0, [r2, #0x2a]
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _080023A4
	bl m4aMPlayAllStop
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800240C: .4byte gStageData
_08002410: .4byte gPlayers

	thumb_func_start sub_8002414
sub_8002414: @ 0x08002414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080024E0 @ =Task_8003FEC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080024E4 @ =TaskDestructor_8003D28
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080024E8 @ =0x03000004
	adds r7, r2, r0
	ldr r0, _080024EC @ =0x06012800
	str r0, [r7]
	ldr r6, _080024F0 @ =0x00000593
	strh r6, [r7, #0xc]
	strb r3, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	movs r0, #0x50
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	str r1, [r7, #8]
	ldr r0, _080024F4 @ =0x0300002C
	adds r7, r2, r0
	ldr r0, _080024F8 @ =0x060129C0
	str r0, [r7]
	strh r6, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	str r4, [r7, #0x20]
	str r1, [r7, #8]
	ldr r1, _080024FC @ =gStageData
	movs r0, #7
	strb r0, [r1, #4]
	movs r1, #0
	ldr r6, _08002500 @ =gPlayers
	movs r5, #0x9e
	lsls r5, r5, #1
	movs r3, #0
	ldr r4, _08002504 @ =0x0000013D
_080024A4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r2, r1, r5
	strb r3, [r2]
	adds r1, r1, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080024A4
	bl sub_80299FC
	movs r0, #0x52
	bl m4aSongNumStart
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080024E0: .4byte Task_8003FEC
_080024E4: .4byte TaskDestructor_8003D28
_080024E8: .4byte 0x03000004
_080024EC: .4byte 0x06012800
_080024F0: .4byte 0x00000593
_080024F4: .4byte 0x0300002C
_080024F8: .4byte VRAM + 0x000129C0
_080024FC: .4byte gStageData
_08002500: .4byte gPlayers
_08002504: .4byte 0x0000013D

	thumb_func_start sub_8002508
sub_8002508: @ 0x08002508
	push {r4, r5, lr}
	ldr r4, _08002564 @ =gStageData
	ldrb r0, [r4, #4]
	adds r3, r4, #0
	cmp r0, #6
	beq _0800259E
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _08002568 @ =gPlayers
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1c
	ldrb r0, [r3, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08002570
	ldr r2, _0800256C @ =0x0000FFFE
	adds r0, r2, #0
	ldrb r2, [r3, #0xa]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08002572
	.align 2, 0
_08002564: .4byte gStageData
_08002568: .4byte gPlayers
_0800256C: .4byte 0x0000FFFE
_08002570:
	movs r2, #4
_08002572:
	movs r0, #6
	strb r0, [r4, #4]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002592
	ldr r0, _080025A4 @ =gSaveGame
	adds r0, #0x22
	ldrb r3, [r3, #9]
	adds r3, r0, r3
	ldrb r0, [r3]
	cmp r0, #8
	bhi _08002592
	adds r0, #1
	strb r0, [r3]
_08002592:
	adds r0, r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8053284
_0800259E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080025A4: .4byte gSaveGame

	thumb_func_start AddRings
AddRings: @ 0x080025A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080025FC @ =gStageData
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldrh r0, [r6, #0xe]
	cmp r0, #0x48
	beq _080025E6
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _080025E6
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080025E0
	cmp r0, #5
	bne _080025E6
_080025E0:
	movs r0, #1
	bl AddLives
_080025E6:
	ldr r1, _080025FC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08002600
	adds r1, #0xac
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0800260E
	movs r0, #0xff
	strh r0, [r1]
	b _0800260E
	.align 2, 0
_080025FC: .4byte gStageData
_08002600:
	adds r2, r1, #0
	adds r2, #0xac
	ldrh r0, [r2]
	ldr r1, _08002614 @ =0x000003E7
	cmp r0, r1
	bls _0800260E
	strh r1, [r2]
_0800260E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002614: .4byte 0x000003E7

	thumb_func_start sub_8002618
sub_8002618: @ 0x08002618
	push {lr}
	sub sp, #0x1c
	ldr r1, _08002638 @ =gUnknown_080CE52C
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	ldr r0, _0800263C @ =gStageData
	ldrb r1, [r0, #0xa]
	ldrb r2, [r0, #9]
	adds r0, r2, #0
	cmp r0, #8
	bne _08002640
	movs r0, #0x38
	b _080026B2
	.align 2, 0
_08002638: .4byte gUnknown_080CE52C
_0800263C: .4byte gStageData
_08002640:
	cmp r0, #7
	bne _08002648
	movs r0, #0x11
	b _080026B2
_08002648:
	subs r0, r1, #1
	lsls r3, r1, #0x10
	cmp r0, #8
	bhi _080026B6
	lsls r0, r0, #2
	ldr r1, _0800265C @ =_08002660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800265C: .4byte _08002660
_08002660: @ jump table
	.4byte _08002684 @ case 0
	.4byte _08002698 @ case 1
	.4byte _08002698 @ case 2
	.4byte _08002698 @ case 3
	.4byte _08002698 @ case 4
	.4byte _080026B6 @ case 5
	.4byte _080026A8 @ case 6
	.4byte _080026A4 @ case 7
	.4byte _080026A4 @ case 8
_08002684:
	ldr r0, _08002694 @ =gStageData
	ldrh r0, [r0, #0xe]
	movs r1, #4
	cmp r0, #0xb
	bne _08002690
	movs r1, #7
_08002690:
	adds r0, r1, #0
	b _080026B2
	.align 2, 0
_08002694: .4byte gStageData
_08002698:
	asrs r0, r3, #0x10
	lsls r1, r2, #2
	subs r1, #2
	adds r0, r0, r1
	add r0, sp
	b _080026B0
_080026A4:
	movs r0, #0x4c
	b _080026B2
_080026A8:
	lsls r1, r2, #2
	mov r0, sp
	adds r0, #1
	adds r0, r0, r1
_080026B0:
	ldrb r0, [r0]
_080026B2:
	bl sub_8029990
_080026B6:
	add sp, #0x1c
	pop {r0}
	bx r0

	thumb_func_start sub_80026BC
sub_80026BC: @ 0x080026BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r6, _080026D8 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #6
	bne _080026DC
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #1
	b _080026E2
	.align 2, 0
_080026D8: .4byte gStageData
_080026DC:
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #0
_080026E2:
	strh r0, [r1]
	ldr r0, [r6, #0x24]
	adds r1, r6, #0
	adds r1, #0xae
	movs r5, #0
	movs r4, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb5
	strb r5, [r0]
	ldr r2, _080027D8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080027DC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080027E0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x86
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x87
	strb r5, [r0]
	subs r0, #2
	strb r5, [r0]
	movs r0, #1
	strb r0, [r6, #4]
	ldr r0, _080027E4 @ =Task_8002988
	movs r2, #0x80
	lsls r2, r2, #1
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	adds r1, r6, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	subs r0, #0x86
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0
	movs r7, #0x4e
	adds r7, r7, r6
	mov r8, r7
	movs r1, #0x5e
	adds r1, r1, r6
	mov ip, r1
	movs r7, #0x6e
	adds r7, r7, r6
	mov sb, r7
	adds r5, r6, #0
	adds r5, #0x2e
	movs r3, #0
	adds r4, r6, #0
	adds r4, #0x3e
_08002776:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r0, r5, r1
	strh r3, [r0]
	adds r0, r4, r1
	strh r3, [r0]
	mov r7, r8
	adds r0, r7, r1
	strh r3, [r0]
	mov r7, ip
	adds r0, r7, r1
	strh r3, [r0]
	add r1, sb
	strh r3, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #7
	ble _08002776
	ldr r0, _080027E8 @ =gUnknown_03001060
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080027EC @ =gStageData
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	bl sub_8003E44
	movs r7, #0xe
	ldrsh r0, [r6, r7]
	bl sub_8002838
	ldrb r0, [r4, #3]
	cmp r0, #7
	beq _0800281C
	bl Create_gTask_03001CFC
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _080027F4
	bl sub_8052E30
	ldr r0, _080027F0 @ =gPlayers
	ldrb r1, [r4, #9]
	bl sub_8004F48
	b _08002816
	.align 2, 0
_080027D8: .4byte gPseudoRandom
_080027DC: .4byte 0x00196225
_080027E0: .4byte 0x3C6EF35F
_080027E4: .4byte Task_8002988
_080027E8: .4byte gUnknown_03001060
_080027EC: .4byte gStageData
_080027F0: .4byte gPlayers
_080027F4:
	cmp r0, #2
	bne _0800280C
	bl sub_8053030
	ldr r0, _08002808 @ =gPlayers
	ldrb r1, [r4, #9]
	bl sub_8004F48
	b _08002826
	.align 2, 0
_08002808: .4byte gPlayers
_0800280C:
	bl sub_80215A0
	adds r1, r4, #0
	adds r1, #0xa4
	str r0, [r1]
_08002816:
	bl sub_8002618
	b _08002826
_0800281C:
	bl sub_8022FB0
	ldr r0, _08002834 @ =0x00000322 @ MUS_VS_BGM_7
	bl m4aSongNumStart
_08002826:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002834: .4byte 0x00000322

	thumb_func_start sub_8002838
sub_8002838: @ 0x08002838
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _08002864 @ =gStageData
	movs r2, #0
	ldrb r0, [r3, #3]
	cmp r0, #7
	bne _0800284A
	b _08002978
_0800284A:
	lsls r0, r1, #0x10
	ldr r1, _08002868 @ =0xFFF30000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #0x24
	bls _08002858
	b _08002950
_08002858:
	lsls r0, r0, #2
	ldr r1, _0800286C @ =_08002870
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002864: .4byte gStageData
_08002868: .4byte 0xFFF30000
_0800286C: .4byte _08002870
_08002870: @ jump table
	.4byte _08002904 @ case 0
	.4byte _08002950 @ case 1
	.4byte _08002950 @ case 2
	.4byte _08002950 @ case 3
	.4byte _08002950 @ case 4
	.4byte _08002950 @ case 5
	.4byte _08002950 @ case 6
	.4byte _08002950 @ case 7
	.4byte _08002950 @ case 8
	.4byte _08002950 @ case 9
	.4byte _08002950 @ case 10
	.4byte _08002910 @ case 11
	.4byte _0800291C @ case 12
	.4byte _08002950 @ case 13
	.4byte _08002950 @ case 14
	.4byte _08002950 @ case 15
	.4byte _08002950 @ case 16
	.4byte _08002950 @ case 17
	.4byte _08002950 @ case 18
	.4byte _08002950 @ case 19
	.4byte _08002950 @ case 20
	.4byte _08002950 @ case 21
	.4byte _08002950 @ case 22
	.4byte _08002950 @ case 23
	.4byte _08002950 @ case 24
	.4byte _08002950 @ case 25
	.4byte _08002950 @ case 26
	.4byte _08002950 @ case 27
	.4byte _08002950 @ case 28
	.4byte _08002950 @ case 29
	.4byte _08002928 @ case 30
	.4byte _08002934 @ case 31
	.4byte _0800294C @ case 32
	.4byte _08002950 @ case 33
	.4byte _08002950 @ case 34
	.4byte _08002950 @ case 35
	.4byte _08002940 @ case 36
_08002904:
	ldr r0, _0800290C @ =gUnknown_08E2EC78
	ldr r2, [r0]
	b _08002950
	.align 2, 0
_0800290C: .4byte gUnknown_08E2EC78
_08002910:
	ldr r0, _08002918 @ =gUnknown_08E2EC78
	ldr r2, [r0, #4]
	b _08002950
	.align 2, 0
_08002918: .4byte gUnknown_08E2EC78
_0800291C:
	ldr r0, _08002924 @ =gUnknown_08E2EC78
	ldr r2, [r0, #8]
	b _08002950
	.align 2, 0
_08002924: .4byte gUnknown_08E2EC78
_08002928:
	ldr r0, _08002930 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x10]
	b _08002950
	.align 2, 0
_08002930: .4byte gUnknown_08E2EC78
_08002934:
	ldr r0, _0800293C @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x14]
	b _08002950
	.align 2, 0
_0800293C: .4byte gUnknown_08E2EC78
_08002940:
	ldr r0, _08002948 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x18]
	b _08002950
	.align 2, 0
_08002948: .4byte gUnknown_08E2EC78
_0800294C:
	ldr r0, _08002974 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x1c]
_08002950:
	cmp r2, #0
	beq _08002978
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r2, #4
	str r0, [r1]
	ldrh r1, [r2, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	movs r1, #0
	bl sub_80525F0
	b _08002982
	.align 2, 0
_08002974: .4byte gUnknown_08E2EC78
_08002978:
	adds r0, r3, #0
	adds r0, #0x84
	strb r2, [r0]
	subs r0, #4
	str r2, [r0]
_08002982:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8002988
Task_8002988: @ 0x08002988
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _080029F0 @ =gStageData
	ldr r1, _080029F4 @ =gUnknown_080CE548
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_805235C
	bl sub_802B788
	ldrb r0, [r5, #3]
	cmp r0, #7
	beq _080029AE
	bl sub_8029AE0
_080029AE:
	ldr r1, _080029F8 @ =gCamera
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldrh r0, [r5, #0xe]
	ldrb r1, [r5, #0xb]
	bl sub_804F740
	ldrb r0, [r5, #3]
	cmp r0, #7
	bne _080029C6
	b _08002AC0
_080029C6:
	cmp r0, #5
	bhi _08002A00
	ldrb r4, [r5, #6]
	adds r0, r4, #0
	bl sub_8004178
	ldr r1, _080029FC @ =gPlayers
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r1
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004178
	b _08002A1C
	.align 2, 0
_080029F0: .4byte gStageData
_080029F4: .4byte gUnknown_080CE548
_080029F8: .4byte gCamera
_080029FC: .4byte gPlayers
_08002A00:
	cmp r0, #6
	bne _08002A1C
	movs r2, #0
_08002A06:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8004178
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08002A06
_08002A1C:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08002A2E
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056AB0
	b _08002B44
_08002A2E:
	ldrb r0, [r5, #9]
	adds r1, r0, #0
	cmp r1, #6
	bhi _08002A9C
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	bne _08002A50
	ldrh r0, [r5, #0xe]
	cmp r0, #0xb
	beq _08002A90
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	beq _08002A90
	ldrb r0, [r5, #9]
	bl sub_8056AFC
	b _08002B44
_08002A50:
	cmp r1, #2
	bne _08002A58
	adds r0, #9
	b _08002A88
_08002A58:
	cmp r1, #7
	bls _08002AA0
	cmp r1, #8
	bne _08002A74
	ldr r0, _08002A70 @ =gStageData
	adds r0, #0xbe
	ldrb r1, [r5, #9]
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #1
	b _08002A80
	.align 2, 0
_08002A70: .4byte gStageData
_08002A74:
	ldr r0, _08002A98 @ =gStageData
	adds r0, #0xbe
	ldrb r4, [r5, #9]
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #2
_08002A80:
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r5, #9]
	adds r0, #0x12
_08002A88:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_806611C
_08002A90:
	bl sub_8057ECC
	b _08002B44
	.align 2, 0
_08002A98: .4byte gStageData
_08002A9C:
	cmp r1, #7
	bne _08002AAC
_08002AA0:
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056B78
	b _08002B44
_08002AAC:
	cmp r1, #8
	bne _08002B44
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056B78
	bl sub_8081C80
	b _08002B44
_08002AC0:
	movs r2, #0
	ldr r7, _08002BA0 @ =gPlayers
	mov r8, r7
_08002AC6:
	ldr r0, _08002BA4 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _08002B2A
	adds r0, r4, #0
	bl sub_8004178
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r1, r8
	adds r5, r0, r1
	mov r7, sp
	adds r0, r7, r4
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2a
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r3]
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _08002BA8 @ =gStageData
	movs r3, #3
	ldrb r0, [r0, #6]
	cmp r4, r0
	bne _08002B16
	movs r3, #1
_08002B16:
	adds r2, r5, #0
	adds r2, #0x2b
	lsls r3, r3, #2
	ldrb r0, [r2]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_08002B2A:
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r6, r7
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08002AC6
	bl sub_8057ECC
	ldr r0, _08002BA8 @ =gStageData
	adds r0, #0xae
	ldr r1, _08002BAC @ =0x00002A30
	strh r1, [r0]
_08002B44:
	ldr r0, _08002BB0 @ =0x0400004C
	movs r1, #0
	strh r1, [r0]
	ldr r4, _08002BA8 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08002B8A
	bl sub_80261B0
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _08002B7C
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08002B7C
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xb]
	bl sub_80275F0
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _08002B7C
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002B7C:
	ldr r0, _08002BA8 @ =gStageData
	adds r2, r0, #0
	adds r2, #0xb9
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x85
	strb r1, [r0]
_08002B8A:
	ldr r0, _08002BB4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002BB8 @ =Task_8002BBC
	str r0, [r1, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002BA0: .4byte gPlayers
_08002BA4: .4byte gUnknown_03001060
_08002BA8: .4byte gStageData
_08002BAC: .4byte 0x00002A30
_08002BB0: .4byte 0x0400004C
_08002BB4: .4byte gCurTask
_08002BB8: .4byte Task_8002BBC

	thumb_func_start Task_8002BBC
Task_8002BBC: @ 0x08002BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08002BF8 @ =gStageData
	movs r0, #0
	mov sl, r0
	ldr r0, _08002BFC @ =gNextFreeAffineIndex
	movs r1, #6
	strb r1, [r0]
	ldrb r0, [r3, #3]
	cmp r0, #4
	bls _08002C04
	adds r1, r3, #0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08002C04
	ldr r2, _08002C00 @ =gMultiSioRecv
	ldr r1, [r1, #0x1c]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r2, #2]
	adds r2, r3, #0
	str r0, [r2, #0x1c]
	ldrb r1, [r2, #4]
	b _08002C16
	.align 2, 0
_08002BF8: .4byte gStageData
_08002BFC: .4byte gNextFreeAffineIndex
_08002C00: .4byte gMultiSioRecv
_08002C04:
	ldrb r0, [r3, #4]
	adds r1, r0, #0
	cmp r1, #4
	beq _08002C16
	ldr r0, [r3, #0x1c]
	adds r0, #1
	str r0, [r3, #0x1c]
	movs r0, #1
	mov sl, r0
_08002C16:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08002D12
	cmp r1, #3
	beq _08002C24
	b _08002DC0
_08002C24:
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	add r0, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08002CC8 @ =0x00008C9F
	cmp r0, r2
	bhi _08002C3A
	b _08002DC0
_08002C3A:
	strh r2, [r1]
	ldr r3, _08002CC4 @ =gStageData
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08002C4C
	ldrb r0, [r3, #3]
	cmp r0, #6
	beq _08002C4C
	b _08002DC0
_08002C4C:
	ldr r0, _08002CC4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08002CCC @ =gPlayers
	adds r4, r0, r2
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
	adds r5, r0, r2
	ldr r0, [r4, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08002C82
	b _08002DC0
_08002C82:
	bl sub_8003A14
	ldr r1, _08002CC4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08002C9C
	bl sub_802789C
	ldr r0, _08002CC4 @ =gStageData
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002C9C:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #9]
	cmp r0, #8
	beq _08002CD0
	adds r0, r4, #0
	bl sub_8008E38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _08002CBA
	b _08002DC0
_08002CBA:
	adds r0, r5, #0
	bl sub_8008E38
	b _08002DC0
	.align 2, 0
_08002CC4: .4byte gStageData
_08002CC8: .4byte 0x00008C9F
_08002CCC: .4byte gPlayers
_08002CD0:
	ldr r3, _08002CF4 @ =gStageData
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08002CF8
	adds r0, r4, #0
	bl sub_8008E38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08002DC0
	adds r0, r5, #0
	bl sub_80105F0
	b _08002DC0
	.align 2, 0
_08002CF4: .4byte gStageData
_08002CF8:
	adds r0, r5, #0
	bl sub_8008E38
	ldr r0, [r5, #4]
	orrs r0, r6
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	orrs r0, r6
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_80105F0
	b _08002DC0
_08002D12:
	cmp r1, #3
	bne _08002D82
	ldr r5, _08002E0C @ =gMultiSioRecv
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0x3c
	beq _08002D60
	cmp r2, #0x78
	beq _08002D60
	cmp r2, #0xb4
	beq _08002D60
	cmp r2, #0xf0
	beq _08002D60
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	bne _08002D66
_08002D60:
	ldr r0, _08002E10 @ =0x00000336
	bl m4aSongNumStart
_08002D66:
	ldrh r1, [r4]
	ldr r0, _08002E14 @ =0x00002A30
	cmp r1, r0
	bhi _08002D76
	ldrh r1, [r5]
	ldr r0, _08002E18 @ =0x0000600E
	cmp r1, r0
	bne _08002D82
_08002D76:
	movs r0, #0
	strh r0, [r4]
	ldr r0, _08002E1C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002E20 @ =sub_8003288
	str r0, [r1, #8]
_08002D82:
	ldr r3, _08002E24 @ =gUnknown_03001060
	adds r4, r3, #0
	adds r4, #0x52
	ldrh r0, [r4]
	mov r1, sl
	adds r2, r0, r1
	strh r2, [r4]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08002E28 @ =0x000001FF
	cmp r0, r5
	bls _08002DC0
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	ands r2, r5
	strh r2, [r4]
	adds r2, r3, #0
	adds r2, #0x54
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
_08002DC0:
	ldr r0, _08002E2C @ =gStageData
	ldrb r1, [r0, #3]
	cmp r1, #7
	bne _08002DCA
	b _08003008
_08002DCA:
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002E76
	movs r2, #0
	mov r8, r2
	mov sb, r1
_08002DDA:
	mov r3, sb
	ldrb r0, [r3]
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002E62
	lsls r1, r3, #1
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x2e
	adds r1, r1, r0
	ldrh r3, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r3, r0
	cmp r0, #0
	bge _08002E30
	movs r0, #0
	b _08002E34
	.align 2, 0
_08002E0C: .4byte gMultiSioRecv
_08002E10: .4byte 0x00000336
_08002E14: .4byte 0x00002A30
_08002E18: .4byte 0x0000600E
_08002E1C: .4byte gCurTask
_08002E20: .4byte sub_8003288
_08002E24: .4byte gUnknown_03001060
_08002E28: .4byte 0x000001FF
_08002E2C: .4byte gStageData
_08002E30:
	mov r2, sl
	subs r0, r3, r2
_08002E34:
	strh r0, [r1]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	ldr r6, _08002EB8 @ =gStageData
	adds r6, #0x2e
	adds r4, r0, r6
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002E50
	ldr r0, _08002EBC @ =0x00000249
	bl m4aSongNumStart
_08002E50:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002E62
	movs r1, #1
	lsls r1, r5
	mov r3, sb
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
_08002E62:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov r8, r3
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002DDA
_08002E76:
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002F02
	movs r0, #0
	mov r8, r0
	adds r6, r1, #0
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x3e
	mov sb, r1
_08002E8C:
	ldrb r0, [r6]
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002EEE
	lsls r0, r3, #1
	mov r1, sb
	adds r2, r0, r1
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _08002EC0
	movs r0, #0
	b _08002EC4
	.align 2, 0
_08002EB8: .4byte gStageData
_08002EBC: .4byte 0x00000249
_08002EC0:
	mov r3, sl
	subs r0, r1, r3
_08002EC4:
	strh r0, [r2]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	mov r1, sb
	adds r4, r0, r1
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002EDE
	ldr r0, _08002F44 @ =0x00000249
	bl m4aSongNumStart
_08002EDE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002EEE
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
	strb r0, [r6]
_08002EEE:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002E8C
_08002F02:
	movs r2, #0
	mov r8, r2
	ldr r3, _08002F48 @ =gStageData + 0x5E
	mov sb, r3
	movs r0, #0x10
	add r0, sb
	mov ip, r0
	ldr r1, _08002F4C @ =0x03FF0000
	mov sl, r1
_08002F14:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xf
	mov r0, sb
	adds r6, r1, r0
	subs r0, #0x10
	adds r4, r1, r0
	add r1, ip
	ldrh r5, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r7, r2, #0
	cmp r0, #0
	beq _08002F82
	ldrh r0, [r1]
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r3, #0
	bne _08002F50
	movs r3, #0x78
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _08002F80
	.align 2, 0
_08002F44: .4byte 0x00000249
_08002F48: .4byte gStageData + 0x5E
_08002F4C: .4byte 0x03FF0000
_08002F50:
	cmp r3, #0
	bge _08002F62
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002F82
	movs r0, #1
	b _08002F80
_08002F62:
	subs r0, r5, r0
	strh r0, [r4]
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #7
	bgt _08002F74
	adds r0, r3, #1
	strh r0, [r1]
_08002F74:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _08002F82
	movs r0, #0
	strh r0, [r4]
_08002F80:
	strh r0, [r1]
_08002F82:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _08002F90
	strh r1, [r4]
_08002F90:
	movs r0, #0
	ldrsh r3, [r4, r0]
	ldrh r0, [r6]
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r3, r1
	ble _08002FB2
	adds r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08002FCA
	b _08002FC8
_08002FB2:
	cmp r3, r1
	bge _08002FCA
	subs r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08002FCA
_08002FC8:
	strh r3, [r6]
_08002FCA:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r7, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002F14
	bl sub_80043B8
	ldr r3, _08003034 @ =gStageData
	ldrb r2, [r3, #3]
	cmp r2, #7
	beq _08003008
	ldr r0, _08003038 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003008
	cmp r2, #1
	beq _08003008
	cmp r2, #2
	beq _08003008
	ldrh r0, [r3, #0xe]
	cmp r0, #1
	bne _08003004
	cmp r2, #5
	beq _08003008
_08003004:
	bl sub_800341C
_08003008:
	ldr r4, _08003034 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08003018
	bl sub_8026478
	bl sub_80264F0
_08003018:
	adds r1, r4, #0
	adds r1, #0xbb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08003026
	subs r0, #1
	strb r0, [r1]
_08003026:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003034: .4byte gStageData
_08003038: .4byte gPressedKeys
