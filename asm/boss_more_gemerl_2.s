.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

	thumb_func_start sub_807AD88
sub_807AD88: @ 0x0807AD88
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, _0807ADC4 @ =gUnknown_080D5BD8
	mov r0, sp
	movs r2, #0x14
	bl memcpy
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807ADCC
	ldr r0, _0807ADC8 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x28
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	cmp r1, r0
	blt _0807ADDA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	rsbs r0, r0, #0
	b _0807ADF0
	.align 2, 0
_0807ADC4: .4byte gUnknown_080D5BD8
_0807ADC8: .4byte gCamera
_0807ADCC:
	ldr r0, _0807ADE0 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x28
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	cmp r1, r0
	ble _0807ADE4
_0807ADDA:
	movs r5, #1
	b _0807ADF2
	.align 2, 0
_0807ADE0: .4byte gCamera
_0807ADE4:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
_0807ADF0:
	strh r0, [r4, #0x16]
_0807ADF2:
	movs r0, #0x16
	ldrsh r2, [r4, r0]
	adds r2, r1, r2
	str r2, [r4, #4]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r2, r4, #0
	adds r2, #0x60
	ldr r3, _0807AE34 @ =0xFFFFFF00
	adds r0, r0, r3
	ldr r3, _0807AE38 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807AE34: .4byte 0xFFFFFF00
_0807AE38: .4byte 0x000003FF

	thumb_func_start sub_807AE3C
sub_807AE3C: @ 0x0807AE3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AE80 @ =gUnknown_080D5B00
	adds r7, r0, r1
	movs r6, #0
	ldr r3, _0807AE84 @ =gCamera
	ldr r1, [r3, #0x14]
	subs r1, #0xa0
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4, #8]
	mov ip, r3
	cmp r0, r1
	bgt _0807AE88
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0807AEFA
	movs r6, #1
	b _0807AF30
	.align 2, 0
_0807AE80: .4byte gUnknown_080D5B00
_0807AE84: .4byte gCamera
_0807AE88:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #0x1a]
	cmp r0, #0
	bne _0807AEBC
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AEA0
	movs r0, #0xd0
	b _0807AEA2
_0807AEA0:
	ldr r0, _0807AF28 @ =0x0000FF30
_0807AEA2:
	strh r0, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #6
	subs r0, r0, r1
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r5, _0807AF2C @ =0xFFFFFD00
	adds r0, r5, #0
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r5, r2, #0
_0807AEBC:
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	adds r0, #0x20
	strh r0, [r4, #0x18]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r3, [r4, #8]
	adds r3, r3, r0
	str r3, [r4, #8]
	mov r2, ip
	ldr r1, [r2, #0x14]
	subs r1, #0xa0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	cmp r3, r1
	bge _0807AEF4
	movs r0, #0
	strh r0, [r4, #0x1a]
_0807AEF4:
	movs r0, #0
	cmp r0, #0
	beq _0807AF7C
_0807AEFA:
	cmp r6, #0
	bne _0807AF30
	ldr r0, [r7, #4]
	str r0, [r4]
	strh r6, [r4, #0x1a]
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #4]
	ldr r2, [r2, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	adds r3, r1, #0
	b _0807AF56
	.align 2, 0
_0807AF28: .4byte 0x0000FF30
_0807AF2C: .4byte 0xFFFFFD00
_0807AF30:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AF44
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0x40
	b _0807AF4C
_0807AF44:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x40
_0807AF4C:
	ldr r3, _0807AF74 @ =0x000003FF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	adds r3, r0, #0
_0807AF56:
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r0, _0807AF78 @ =gCamera
	ldr r1, [r0, #0x14]
	subs r1, #0xa0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r4, #8]
	b _0807AF9C
	.align 2, 0
_0807AF74: .4byte 0x000003FF
_0807AF78: .4byte gCamera
_0807AF7C:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	adds r3, r1, #0
_0807AF9C:
	ldr r5, _0807AFB4 @ =0xFFFFFF00
	adds r0, r5, #0
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r2, _0807AFB8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807AFB4: .4byte 0xFFFFFF00
_0807AFB8: .4byte 0x000003FF

	thumb_func_start sub_807AFBC
sub_807AFBC: @ 0x0807AFBC
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r4, #0
	ldrh r0, [r0, #0x1a]
	adds r0, #1
	mov r1, ip
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bne _0807AFD6
	movs r4, #1
	b _0807B038
_0807AFD6:
	mov r3, ip
	movs r5, #0x1a
	ldrsh r2, [r3, r5]
	mov r0, ip
	adds r0, #0x28
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	cmp r2, r0
	blt _0807B038
	mov r0, ip
	adds r0, #0x60
	ldr r6, _0807B058 @ =0xFFFFFF00
	adds r1, r6, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0807B05C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0807B060 @ =gSineTable
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r5, ip
	movs r6, #0x14
	ldrsh r0, [r5, r6]
	adds r0, #0x40
	muls r0, r2, r0
	asrs r0, r0, #0x10
	ldrh r2, [r5, #0x16]
	adds r0, r0, r2
	strh r0, [r5, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r6, #0x14
	ldrsh r0, [r5, r6]
	adds r0, #0x40
	muls r0, r1, r0
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	strh r0, [r5, #0x18]
_0807B038:
	mov r2, ip
	movs r3, #0x16
	ldrsh r1, [r2, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r5, #0x18
	ldrsh r1, [r2, r5]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B058: .4byte 0xFFFFFF00
_0807B05C: .4byte 0x000003FF
_0807B060: .4byte gSineTable

	thumb_func_start sub_807B064
sub_807B064: @ 0x0807B064
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B0B0 @ =gUnknown_080D5B00
	adds r2, r0, r1
	ldr r0, _0807B0B4 @ =gCamera
	ldr r0, [r0, #0x14]
	subs r0, #0x96
	lsls r1, r0, #8
	ldr r3, [r4, #8]
	cmp r3, r1
	ble _0807B0BC
	movs r0, #0
	strh r0, [r4, #0x16]
	ldr r0, _0807B0B8 @ =0x0000FC20
	strh r0, [r4, #0x18]
	ldr r2, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	adds r1, r3, r1
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r4, #0
	adds r1, #0x60
	b _0807B0E6
	.align 2, 0
_0807B0B0: .4byte gUnknown_080D5B00
_0807B0B4: .4byte gCamera
_0807B0B8: .4byte 0x0000FC20
_0807B0BC:
	ldr r0, [r2, #4]
	str r0, [r4]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B0DE
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0x88
	lsls r0, r0, #2
	b _0807B0E6
_0807B0DE:
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0xf8
	lsls r0, r0, #2
_0807B0E6:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r1, _0807B104 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r2]
	adds r0, r0, r3
	ldr r3, _0807B108 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807B104: .4byte 0xFFFFFF00
_0807B108: .4byte 0x000003FF

	thumb_func_start sub_807B10C
sub_807B10C: @ 0x0807B10C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r3, #0
	adds r6, #0x60
	ldr r1, _0807B180 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r6]
	adds r4, r0, r2
	ldr r1, _0807B184 @ =0x000003FF
	adds r0, r1, #0
	ands r4, r0
	ldr r2, _0807B188 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x40
	muls r0, r1, r0
	lsls r0, r0, #6
	lsrs r5, r0, #0x10
	strh r5, [r3, #0x16]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r3, #0x18]
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #4]
	adds r2, r0, r1
	str r2, [r3, #4]
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r3, #8]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _0807B190
	ldr r0, _0807B18C @ =gCamera
	ldr r0, [r0, #0x18]
	lsls r0, r0, #8
	cmp r2, r0
	bge _0807B190
	str r0, [r3, #4]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r2, r6, #0
	b _0807B1C8
	.align 2, 0
_0807B180: .4byte 0xFFFFFF00
_0807B184: .4byte 0x000003FF
_0807B188: .4byte gSineTable
_0807B18C: .4byte gCamera
_0807B190:
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _0807B1B4
	ldr r0, _0807B1B0 @ =gCamera
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #8
	ldr r1, [r3, #4]
	cmp r1, r0
	ble _0807B1B4
	str r0, [r3, #4]
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r2, r3, #0
	adds r2, #0x60
	b _0807B1C8
	.align 2, 0
_0807B1B0: .4byte gCamera
_0807B1B4:
	adds r1, r3, #0
	adds r1, #0x60
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_0807B1C8:
	ldr r1, _0807B1DC @ =0xFFFFFF00
	adds r0, r4, r1
	ldr r3, _0807B1E0 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B1DC: .4byte 0xFFFFFF00
_0807B1E0: .4byte 0x000003FF

	thumb_func_start sub_807B1E4
sub_807B1E4: @ 0x0807B1E4
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B20C @ =gUnknown_080D5B00
	adds r5, r0, r1
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B210
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0xc0
	b _0807B218
	.align 2, 0
_0807B20C: .4byte gUnknown_080D5B00
_0807B210:
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0xc0
_0807B218:
	ldr r4, _0807B278 @ =0x000003FF
	adds r2, r4, #0
	ands r1, r2
	strh r1, [r0]
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807B238
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3, #8]
	movs r0, #1
	strh r0, [r3, #0x1a]
_0807B238:
	ldr r0, [r3, #0x20]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B26E
	ldr r0, [r5, #4]
	str r0, [r3]
	movs r0, #0x5a
	strh r0, [r3, #0x1a]
	ldr r2, [r3, #0x2c]
	ldr r0, [r3, #8]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r3, #4]
	ldr r2, [r2, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldr r1, _0807B27C @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r2, _0807B278 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
_0807B26E:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807B278: .4byte 0x000003FF
_0807B27C: .4byte 0xFFFFFF00

	thumb_func_start sub_807B280
sub_807B280: @ 0x0807B280
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x60
	ldr r2, _0807B358 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r7, r0, r1
	ldr r4, _0807B35C @ =0x000003FF
	adds r0, r4, #0
	ands r7, r0
	ldr r1, _0807B360 @ =gUnknown_080D5BEC
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	movs r0, #0
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r0, #6
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	ldrh r0, [r6, #0x1a]
	subs r0, #1
	strh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807B2CA
	movs r2, #1
	mov r8, r2
_0807B2CA:
	ldr r5, _0807B364 @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r4, #0x26
	adds r4, r4, r6
	mov ip, r4
	ldrb r0, [r4]
	lsls r0, r0, #1
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	add r0, sp
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r6, #0
	adds r4, #0x28
	ldrb r0, [r4]
	lsls r0, r0, #2
	subs r0, #0x10
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r1, [r6, #0x16]
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	lsls r0, r7, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	add r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r4]
	lsls r0, r0, #2
	subs r0, #0x10
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r4, [r6, #0x18]
	adds r0, r0, r4
	strh r0, [r6, #0x18]
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	mov r0, r8
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807B358: .4byte 0xFFFFFF00
_0807B35C: .4byte 0x000003FF
_0807B360: .4byte gUnknown_080D5BEC
_0807B364: .4byte gSineTable

	thumb_func_start sub_807B368
sub_807B368: @ 0x0807B368
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B3B0 @ =gUnknown_080D5B00
	adds r4, r0, r1
	mov r1, ip
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0xf
	bgt _0807B3F4
	cmp r0, #0
	bne _0807B3DE
	mov r0, ip
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x20
	mov r3, ip
	strh r0, [r3, #0x14]
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B3B4
	ldr r0, [r3, #4]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r0, r5
	str r0, [r3, #4]
	b _0807B3BE
	.align 2, 0
_0807B3B0: .4byte gUnknown_080D5B00
_0807B3B4:
	mov r6, ip
	ldr r0, [r6, #4]
	ldr r1, _0807B40C @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r6, #4]
_0807B3BE:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r2, #8]
	mov r0, ip
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xaa
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_0807B3DE:
	mov r5, ip
	movs r6, #0x16
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
_0807B3F4:
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B414
	mov r0, ip
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0x10
	ldr r3, _0807B410 @ =0x000003FF
	adds r2, r3, #0
	b _0807B420
	.align 2, 0
_0807B40C: .4byte 0xFFFFFC00
_0807B410: .4byte 0x000003FF
_0807B414:
	mov r0, ip
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x10
	ldr r5, _0807B48C @ =0x000003FF
	adds r2, r5, #0
_0807B420:
	ands r1, r2
	strh r1, [r0]
	ldr r6, _0807B490 @ =0xFFFFFF00
	adds r1, r6, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0807B48C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0807B494 @ =gSineTable
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r5, ip
	movs r6, #0x14
	ldrsh r0, [r5, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xb
	strh r0, [r5, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xb
	strh r0, [r5, #0x18]
	movs r3, #0x16
	ldrsh r1, [r5, r3]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r6, #0x18
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B484
	ldr r0, [r4, #4]
	str r0, [r5]
	movs r0, #0x2d
	strh r0, [r5, #0x1a]
_0807B484:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B48C: .4byte 0x000003FF
_0807B490: .4byte 0xFFFFFF00
_0807B494: .4byte gSineTable

	thumb_func_start sub_807B498
sub_807B498: @ 0x0807B498
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x60
	ldr r2, _0807B4D0 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r6, [r1]
	adds r4, r0, r6
	ldr r0, _0807B4D4 @ =0x000003FF
	adds r2, r0, #0
	ands r4, r2
	movs r5, #0
	ldrh r0, [r3, #0x1a]
	subs r0, #1
	strh r0, [r3, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807B4BE
	movs r5, #1
_0807B4BE:
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B4D8
	ldrh r0, [r1]
	adds r0, #8
	b _0807B4DC
	.align 2, 0
_0807B4D0: .4byte 0xFFFFFF00
_0807B4D4: .4byte 0x000003FF
_0807B4D8:
	ldrh r0, [r1]
	subs r0, #8
_0807B4DC:
	ands r0, r2
	strh r0, [r1]
	ldr r2, _0807B528 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r6, #0x14
	ldrsh r0, [r3, r6]
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r3, #0x16]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r6, #0x14
	ldrsh r0, [r3, r6]
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r3, #0x18]
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r3, #8]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B528: .4byte gSineTable

	thumb_func_start sub_807B52C
sub_807B52C: @ 0x0807B52C
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r1, #0x60
	ldr r3, _0807B590 @ =0xFFFFFF00
	adds r2, r3, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	ldr r5, _0807B594 @ =0x000003FF
	adds r1, r5, #0
	ands r2, r1
	ldr r4, _0807B598 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, r3
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r5, #0
	ldrsh r3, [r1, r5]
	movs r5, #0x14
	ldrsh r1, [r0, r5]
	muls r1, r3, r1
	asrs r1, r1, #0xe
	ldrh r3, [r0, #0x16]
	adds r1, r1, r3
	strh r1, [r0, #0x16]
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r2, [r2, r5]
	movs r3, #0x14
	ldrsh r1, [r0, r3]
	muls r1, r2, r1
	asrs r1, r1, #0xe
	ldrh r5, [r0, #0x18]
	adds r1, r1, r5
	strh r1, [r0, #0x18]
	movs r1, #0x16
	ldrsh r2, [r0, r1]
	ldr r1, [r0, #4]
	adds r1, r1, r2
	str r1, [r0, #4]
	movs r3, #0x18
	ldrsh r2, [r0, r3]
	ldr r1, [r0, #8]
	adds r1, r1, r2
	str r1, [r0, #8]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807B590: .4byte 0xFFFFFF00
_0807B594: .4byte 0x000003FF
_0807B598: .4byte gSineTable

	thumb_func_start sub_807B59C
sub_807B59C: @ 0x0807B59C
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B5DC @ =gUnknown_080D5B00
	adds r4, r0, r1
	adds r1, r3, #0
	adds r1, #0x60
	movs r0, #0
	strh r0, [r1]
	ldrh r1, [r3, #0x18]
	subs r1, #0x20
	strh r1, [r3, #0x18]
	movs r0, #0x18
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #8]
	adds r0, r0, r2
	str r0, [r3, #8]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0807B5E0 @ =0xFFFFFC00
	cmp r1, r0
	bge _0807B5D4
	ldr r0, [r4, #4]
	str r0, [r3]
_0807B5D4:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807B5DC: .4byte gUnknown_080D5B00
_0807B5E0: .4byte 0xFFFFFC00

	thumb_func_start sub_807B5E4
sub_807B5E4: @ 0x0807B5E4
	push {r4, lr}
	ldr r2, _0807B614 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0807B618
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0807B618
	ldr r0, [r4, #0x1c]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	bl TaskDestroy
	b _0807B65E
	.align 2, 0
_0807B614: .4byte gCurTask
_0807B618:
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_807B664
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0807B658
	ldr r1, [r4, #0x1c]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0807B654 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807B65E
	.align 2, 0
_0807B654: .4byte gCurTask
_0807B658:
	adds r0, r4, #0
	bl sub_807A8B4
_0807B65E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_807B664
sub_807B664: @ 0x0807B664
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	ldr r0, [r4, #8]
	adds r0, #0xa
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _0807B6C0 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bgt _0807B6B4
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, _0807B6C4 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #8]
	cmp r6, #0
	beq _0807B6B2
	movs r0, #0x80
	lsls r0, r0, #2
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
_0807B6B2:
	movs r5, #1
_0807B6B4:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B6C0: .4byte sa2__sub_801EE64
_0807B6C4: .4byte 0xFFFFFF00
