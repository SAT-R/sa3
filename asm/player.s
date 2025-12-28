.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8012BA4
sub_8012BA4: @ 0x08012BA4
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08012BC4
	adds r0, r2, #0
	adds r0, #0x24
	movs r1, #6
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #0xe
	strb r0, [r1]
	b _08012C12
_08012BC4:
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	str r1, [r2, #4]
	movs r0, #0
	strh r0, [r2, #0x30]
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r0, #0
	subs r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08012BEC
	rsbs r3, r3, #0
_08012BEC:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08012BFC
	rsbs r3, r3, #0
_08012BFC:
	adds r1, r2, #0
	adds r1, #0x24
	movs r0, #6
	strb r0, [r1]
	movs r0, #0xe
	mov r1, ip
	strb r0, [r1]
	lsls r1, r3, #8
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
_08012C12:
	ldr r0, [r2, #4]
	movs r1, #0x47
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	movs r3, #0x30
	ldrsh r0, [r2, r3]
	cmp r0, #0xe6
	ble _08012C2E
	strh r1, [r2, #0x30]
_08012C2E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012C34
sub_8012C34: @ 0x08012C34
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r3, sp, #4
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012C4C
	movs r2, #0
_08012C4C:
	cmp r2, #0
	bne _08012C5C
	movs r0, #2
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
	b _08012C66
_08012C5C:
	movs r0, #3
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
_08012C66:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012CEA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012C7A
	rsbs r2, r2, #0
_08012C7A:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012CA8
	ldr r1, _08012CA4 @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012CB0
	.align 2, 0
_08012CA4: .4byte Player_80077CC
_08012CA8:
	ldr r1, _08012CF4 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08012CB0:
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012CCA
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_80042F4
_08012CCA:
	adds r1, r4, #0
	adds r1, #0x24
	movs r2, #0
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	strh r2, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_08012CEA:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012CF4: .4byte Player_8005380

	thumb_func_start sub_8012CF8
sub_8012CF8: @ 0x08012CF8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r3, sp, #4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08012D18
	movs r0, #2
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
	b _08012D22
_08012D18:
	movs r0, #3
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
_08012D22:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012E0E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012D36
	rsbs r2, r2, #0
_08012D36:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012D64
	ldr r1, _08012D60 @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012D6C
	.align 2, 0
_08012D60: .4byte Player_80077CC
_08012D64:
	ldr r1, _08012DD8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08012D6C:
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012D86
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_80042F4
_08012D86:
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08012DA8
	rsbs r1, r1, #0
_08012DA8:
	strh r1, [r4, #0x1c]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08012DBA
	rsbs r0, r1, #0
	strh r0, [r4, #0x1c]
_08012DBA:
	adds r1, r4, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	adds r2, r1, #0
	cmp r0, #1
	beq _08012DDC
	cmp r0, #1
	ble _08012DF6
	cmp r0, #2
	beq _08012DE6
	cmp r0, #3
	beq _08012DEE
	b _08012DF6
	.align 2, 0
_08012DD8: .4byte Player_8005380
_08012DDC:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08012DF4
_08012DE6:
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _08012DF4
_08012DEE:
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
_08012DF4:
	str r0, [r4, #4]
_08012DF6:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08012E0E
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_08012E0E:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012E18
sub_8012E18: @ 0x08012E18
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012E34
	movs r0, #1
	eors r2, r0
	ands r2, r0
_08012E34:
	cmp r2, #0
	bne _08012E44
	movs r0, #2
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8011024
	b _08012E4E
_08012E44:
	movs r0, #3
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8011024
_08012E4E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8012E54
sub_8012E54: @ 0x08012E54
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	adds r1, #0x29
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r0, r0, #6
	cmp r0, #1
	beq _08012E8A
	cmp r0, #1
	bgt _08012E7C
	cmp r0, #0
	beq _08012E86
	b _08012EA0
_08012E7C:
	cmp r0, #2
	beq _08012E8E
	cmp r0, #3
	beq _08012E92
	b _08012EA0
_08012E86:
	movs r0, #3
	b _08012E94
_08012E8A:
	movs r0, #0
	b _08012E94
_08012E8E:
	movs r0, #2
	b _08012E94
_08012E92:
	movs r0, #1
_08012E94:
	adds r1, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	adds r3, r0, #0
_08012EA0:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012EA8
sub_8012EA8: @ 0x08012EA8
	push {lr}
	bl sub_801139C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012EB8
sub_8012EB8: @ 0x08012EB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80114CC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08012EFE
	adds r0, r4, #0
	bl sub_801139C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012EE8
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, _08012EE4 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012EFE
	.align 2, 0
_08012EE4: .4byte Player_800DAF4
_08012EE8:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	ands r0, r3
	str r0, [r4, #4]
_08012EFE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8012F04
sub_8012F04: @ 0x08012F04
	push {lr}
	bl sub_8011434
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012F10
sub_8012F10: @ 0x08012F10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012F30
	ldr r1, _08012F2C @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012F38
	.align 2, 0
_08012F2C: .4byte Player_80077CC
_08012F30:
	ldr r1, _08012F70 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08012F38:
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012F52
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_80042F4
_08012F52:
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012F70: .4byte Player_8005380

	thumb_func_start sub_8012F74
sub_8012F74: @ 0x08012F74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r1, r5, #0
	bl sub_80042F4
	adds r0, r4, #0
	adds r0, #0x24
	strb r6, [r0]
	adds r4, #0x25
	strb r5, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012F94
sub_8012F94: @ 0x08012F94
	adds r3, r0, #0
	adds r3, #0x24
	strb r1, [r3]
	adds r0, #0x25
	strb r2, [r0]
	bx lr

	thumb_func_start sub_8012FA0
sub_8012FA0: @ 0x08012FA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #6
	movs r6, #0xe
	movs r1, #0xe
	bl sub_80042F4
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	adds r4, #0x25
	strb r6, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012FC0
sub_8012FC0: @ 0x08012FC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #6
	movs r6, #9
	movs r1, #9
	bl sub_80042F4
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	adds r4, #0x25
	strb r6, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_8012FE0
Player_8012FE0: @ 0x080Player_8012FE0
	movs r2, #6
	movs r3, #0xe
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	adds r0, #0x25
	strb r3, [r0]
	bx lr

	thumb_func_start sub_8012FF0
sub_8012FF0: @ 0x08012FF0
	movs r2, #6
	movs r3, #9
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	adds r0, #0x25
	strb r3, [r0]
	bx lr

	thumb_func_start sub_8013000
sub_8013000: @ 0x08013000
	push {lr}
	bl sub_801139C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801300C
sub_801300C: @ 0x0801300C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _08013040 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r5, [r0]
	adds r4, r5, #0
	adds r4, #0xc
	ldr r0, _08013044 @ =gStageData
	ldrb r1, [r0, #3]
	mov ip, r0
	cmp r1, #5
	bhi _08013054
	cmp r2, #0
	bne _0801304C
	ldr r0, _08013048 @ =0x06010000
	b _08013096
	.align 2, 0
_08013040: .4byte gPlayers
_08013044: .4byte gStageData
_08013048: .4byte 0x06010000
_0801304C:
	ldr r0, _08013050 @ =0x06010800
	b _08013096
	.align 2, 0
_08013050: .4byte 0x06010800
_08013054:
	cmp r1, #6
	bne _08013090
	cmp r2, #1
	beq _08013078
	cmp r2, #1
	bgt _08013066
	cmp r2, #0
	beq _08013070
	b _08013098
_08013066:
	cmp r2, #2
	beq _08013080
	cmp r2, #3
	beq _08013088
	b _08013098
_08013070:
	ldr r0, _08013074 @ =0x06010000
	b _08013096
	.align 2, 0
_08013074: .4byte 0x06010000
_08013078:
	ldr r0, _0801307C @ =0x06010800
	b _08013096
	.align 2, 0
_0801307C: .4byte 0x06010800
_08013080:
	ldr r0, _08013084 @ =0x06011000
	b _08013096
	.align 2, 0
_08013084: .4byte 0x06011000
_08013088:
	ldr r0, _0801308C @ =0x06011800
	b _08013096
	.align 2, 0
_0801308C: .4byte 0x06011800
_08013090:
	lsls r0, r2, #0xb
	ldr r1, _080130C8 @ =0x06010000
	adds r0, r0, r1
_08013096:
	str r0, [r5, #0xc]
_08013098:
	movs r3, #0x80
	lsls r3, r3, #5
	movs r2, #0x20
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	orrs r0, r2
	orrs r0, r3
	str r0, [r4, #8]
	ldrh r0, [r6, #0x34]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	mov r2, ip
	ldrb r0, [r2, #6]
	cmp r0, r1
	bne _080130CC
	movs r0, #0x10
	b _080130D4
	.align 2, 0
_080130C8: .4byte 0x06010000
_080130CC:
	adds r0, r7, #0
	adds r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080130D4:
	lsls r0, r0, #6
	movs r1, #0
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08013108 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	ldrh r0, [r6, #0x36]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	strh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013108: .4byte 0x0000FFFF

	thumb_func_start sub_801310C
sub_801310C: @ 0x0801310C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013140 @ =gPlayers
	adds r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #0xe4
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0xc
	subs r0, #0xba
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08013144
	cmp r0, #2
	beq _08013174
	b _08013206
	.align 2, 0
_08013140: .4byte gPlayers
_08013144:
	ldr r0, _08013154 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0801315C
	ldr r0, _08013158 @ =0x06011800
	b _08013162
	.align 2, 0
_08013154: .4byte gStageData
_08013158: .4byte 0x06011800
_0801315C:
	cmp r1, #6
	bne _08013164
	ldr r0, _08013170 @ =0x06013000
_08013162:
	str r0, [r3, #0xc]
_08013164:
	movs r0, #0xae
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r0, #2
	b _0801319E
	.align 2, 0
_08013170: .4byte 0x06013000
_08013174:
	ldr r0, _08013184 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0801318C
	ldr r0, _08013188 @ =0x06011000
	b _08013192
	.align 2, 0
_08013184: .4byte gStageData
_08013188: .4byte 0x06011000
_0801318C:
	cmp r1, #6
	bne _08013194
	ldr r0, _080131CC @ =0x06012800
_08013192:
	str r0, [r3, #0xc]
_08013194:
	ldr r0, _080131D0 @ =0x00000151
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r0, #3
_0801319E:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, _080131D4 @ =0x00040020
	orrs r0, r1
	str r0, [r2, #8]
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldrb r1, [r5, #6]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080131D8
	movs r0, #0x10
	b _080131E0
	.align 2, 0
_080131CC: .4byte 0x06012800
_080131D0: .4byte 0x00000151
_080131D4: .4byte 0x00040020
_080131D8:
	adds r0, r4, #0
	adds r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080131E0:
	lsls r0, r0, #6
	movs r1, #0
	strh r0, [r2, #0x14]
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	strh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r1, [r3, #6]
	strh r1, [r3, #8]
_08013206:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801320C
sub_801320C: @ 0x0801320C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r5, #0xc
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	movs r6, #1
	rsbs r6, r6, #0
	cmp r1, r6
	beq _08013310
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08013250
	ldr r2, _08013264 @ =gUnknown_080CE7E2
	adds r0, r1, #0
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r3, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r6
	beq _0801324C
	strh r3, [r4, #0x34]
	strh r1, [r4, #0x36]
_0801324C:
	movs r0, #0x10
	strb r0, [r5, #0x1c]
_08013250:
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #9
	beq _080132B0
	cmp r0, #9
	bgt _08013268
	cmp r0, #8
	beq _0801326E
	b _080132E4
	.align 2, 0
_08013264: .4byte gUnknown_080CE7E2
_08013268:
	cmp r0, #0xfa
	beq _08013294
	b _080132E4
_0801326E:
	ldr r1, _08013290 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _080132D4
	.align 2, 0
_08013290: .4byte gPlayerCharacterIdleAnims
_08013294:
	ldr r0, _080132AC @ =0x000002BD
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #4
	bls _080132D4
	movs r0, #4
	b _080132D4
	.align 2, 0
_080132AC: .4byte 0x000002BD
_080132B0:
	ldr r1, _080132E0 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #9
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #3
	bls _080132D4
	movs r0, #3
_080132D4:
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8014230
	b _08013310
	.align 2, 0
_080132E0: .4byte gPlayerCharacterIdleAnims
_080132E4:
	movs r6, #0x30
	ldrsh r1, [r4, r6]
	cmp r1, #0xa4
	bgt _08013310
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08013310
	ldr r0, _08013354 @ =gUnknown_080CE7E2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, _08013358 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x34]
_08013310:
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x1c
	ands r0, r1
	mov r8, r2
	cmp r0, #0xc
	bne _08013360
	ldrh r2, [r4, #0x34]
	ldr r3, _08013358 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1b
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #8
	cmp r2, r0
	beq _08013348
	lsrs r0, r1, #0x1b
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #9
	cmp r2, r0
	bne _0801335C
_08013348:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8014230
	b _08013360
	.align 2, 0
_08013354: .4byte gUnknown_080CE7E2
_08013358: .4byte gPlayerCharacterIdleAnims
_0801335C:
	movs r0, #0x10
	strb r0, [r5, #0x1c]
_08013360:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801337C
	ldrh r0, [r5, #0xc]
	ldrh r3, [r4, #0x34]
	cmp r0, r3
	bne _0801337C
	ldrb r0, [r5, #0x1a]
	ldrh r6, [r4, #0x36]
	cmp r0, r6
	beq _0801339E
_0801337C:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r4, #0x36]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
_0801339E:
	adds r0, r4, #0
	bl sub_801409C
	movs r7, #0
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080134D8 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	bne _080133CC
	b _080134FA
_080133CC:
	ldr r1, _080134DC @ =gPlayerCharacterIdleAnims
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	mov sl, r0
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5c
	mov ip, r1
	mov sb, r2
	ldrh r2, [r5, #0xc]
	cmp r2, r0
	beq _080133FC
	mov r1, sl
	lsrs r0, r1, #0x1b
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5d
	cmp r2, r0
	bne _08013412
_080133FC:
	ldrh r1, [r6, #0x34]
	ldr r0, _080134E0 @ =0x0000015F
	cmp r1, r0
	beq _08013410
	adds r0, #0x3e
	cmp r1, r0
	beq _08013410
	subs r0, #0x3d
	cmp r1, r0
	bne _08013412
_08013410:
	movs r7, #1
_08013412:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5e
	cmp r2, r0
	bne _08013430
	ldrh r1, [r6, #0x34]
	ldr r0, _080134E4 @ =0x00000202
	cmp r1, r0
	bne _08013430
	movs r7, #1
_08013430:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5f
	cmp r2, r0
	bne _0801344E
	ldrh r1, [r6, #0x34]
	ldr r0, _080134E8 @ =0x00000203
	cmp r1, r0
	bne _0801344E
	movs r7, #2
_0801344E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	adds r6, r1, #0
	cmp r0, #0
	beq _08013482
	ldr r2, _080134D8 @ =gPlayers
	mov r0, r8
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
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013482
	movs r7, #3
_08013482:
	cmp r7, #0
	beq _080134FA
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080134D8 @ =gPlayers
	adds r2, r0, r1
	ldr r0, [r2, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r4, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r6
	ldr r1, [r2, #4]
	movs r3, #1
	ands r1, r3
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #4]
	cmp r7, #2
	bne _080134C2
	ldrh r0, [r2, #0x36]
	strh r0, [r4, #0x36]
	ldrh r0, [r2, #0x36]
	strb r0, [r5, #0x1a]
_080134C2:
	cmp r7, #3
	bne _080134FA
	ldr r0, [r2, #4]
	ands r0, r3
	cmp r0, #0
	beq _080134F0
	ldr r0, [r4, #0x10]
	ldr r3, _080134EC @ =0xFFFFF600
	adds r0, r0, r3
	b _080134F8
	.align 2, 0
_080134D8: .4byte gPlayers
_080134DC: .4byte gPlayerCharacterIdleAnims
_080134E0: .4byte 0x0000015F
_080134E4: .4byte 0x00000202
_080134E8: .4byte 0x00000203
_080134EC: .4byte 0xFFFFF600
_080134F0:
	ldr r0, [r4, #0x10]
	movs r6, #0xa0
	lsls r6, r6, #4
	adds r0, r0, r6
_080134F8:
	str r0, [r4, #0x10]
_080134FA:
	ldrh r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801350C
sub_801350C: @ 0x0801350C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, #0xc
	mov r8, r0
	ldrh r2, [r5, #0x30]
	ldrh r6, [r5, #0x34]
	ldrh r7, [r5, #0x36]
	ldr r1, _08013578 @ =gPlayerCharacterIdleAnims
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r2, #0
	subs r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08013608
	cmp r7, #0
	bne _0801357C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801357C
	adds r0, r6, #0
	subs r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801357C
	movs r0, #1
	strh r0, [r5, #0x36]
	ldr r0, [r5, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FF0
	b _080136CC
	.align 2, 0
_08013578: .4byte gPlayerCharacterIdleAnims
_0801357C:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _08013586
	b _080136CC
_08013586:
	cmp r7, #1
	beq _0801358C
	b _080136CC
_0801358C:
	adds r0, r6, #0
	subs r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801359A
	b _080136CC
_0801359A:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _080135D8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _080135D4 @ =sub_805217C
	str r4, [sp, #4]
	bl sub_80519EC
	b _080135FE
	.align 2, 0
_080135D4: .4byte sub_805217C
_080135D8:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _08013604 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80519EC
_080135FE:
	cmp r0, #0x20
	bgt _080136CC
	b _080136A0
	.align 2, 0
_08013604: .4byte sub_805217C
_08013608:
	cmp r2, #0x15
	bne _080136CC
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _080136CC
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _0801364C
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _08013648 @ =sub_805217C
	str r4, [sp, #4]
	b _0801366E
	.align 2, 0
_08013648: .4byte sub_805217C
_0801364C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _08013684 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
_0801366E:
	bl sub_80519EC
	adds r2, r0, #0
	cmp r6, #0x15
	bne _08013688
	cmp r7, #0
	bne _08013688
	movs r0, #1
	strh r0, [r5, #0x36]
	b _080136CC
	.align 2, 0
_08013684: .4byte sub_805217C
_08013688:
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	bne _080136A6
	cmp r6, #0x15
	bne _080136A6
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080136A6
_080136A0:
	movs r0, #2
	strh r0, [r5, #0x36]
	b _080136CC
_080136A6:
	cmp r2, #0x20
	bgt _080136CC
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _080136CC
	ldr r0, _080136D8 @ =gPlayerCharacterIdleAnims
	adds r1, r5, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x17
	strh r0, [r5, #0x34]
	strh r2, [r5, #0x36]
_080136CC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080136D8: .4byte gPlayerCharacterIdleAnims

	thumb_func_start sub_80136DC
sub_80136DC: @ 0x080136DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _08013750 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xc
	adds r4, r0, #0
	ldr r2, _08013754 @ =gCamera
	ldrh r1, [r2, #4]
	movs r7, #0
	mov ip, r7
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r2, [r2, r7]
	subs r0, r0, r2
	strh r0, [r5, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r2
	strh r0, [r4, #6]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldr r1, _08013758 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08013764
	ldrb r0, [r1, #6]
	cmp r0, r3
	beq _0801375C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _08013762
	.align 2, 0
_08013750: .4byte gPlayers
_08013754: .4byte gCamera
_08013758: .4byte gStageData
_0801375C:
	ldr r0, [r5, #8]
	ldr r1, _080137C8 @ =0xFFFFFDFF
	ands r0, r1
_08013762:
	str r0, [r5, #8]
_08013764:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080137D8
	ldrh r1, [r6, #0x34]
	ldrh r0, [r6, #0x36]
	mov sb, r0
	ldr r3, _080137CC @ =gPlayerCharacterIdleAnims
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1b
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r0, r1, r0
	cmp r0, #0xa4
	bgt _0801379C
	lsrs r0, r2, #0x1b
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0801379C:
	cmp r1, #8
	beq _08013808
	cmp r1, #0x6f
	beq _08013808
	cmp r1, #0x8c
	beq _08013808
	cmp r1, #0x8d
	beq _08013808
	ldr r0, _080137D0 @ =0x000002BD
	cmp r1, r0
	beq _08013808
	cmp r1, #0x73
	beq _08013808
	cmp r1, r0
	beq _08013808
	ldr r0, _080137D4 @ =0x00000519
	cmp r1, r0
	bne _08013802
	mov r0, sb
	cmp r0, #0
	bne _08013802
	b _08013808
	.align 2, 0
_080137C8: .4byte 0xFFFFFDFF
_080137CC: .4byte gPlayerCharacterIdleAnims
_080137D0: .4byte 0x000002BD
_080137D4: .4byte 0x00000519
_080137D8:
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	cmp r1, #8
	beq _080137FE
	cmp r1, #0x6f
	beq _080137FE
	cmp r1, #0x8c
	beq _080137FE
	cmp r1, #0x8d
	beq _080137FE
	cmp r1, #0xfa
	beq _080137FE
	cmp r1, #0xb1
	beq _080137FE
	cmp r1, #0xb2
	beq _080137FE
	ldr r0, _0801383C @ =0x00000111
	cmp r1, r0
	bne _08013802
_080137FE:
	movs r3, #1
	mov ip, r3
_08013802:
	mov r7, ip
	cmp r7, #0
	beq _080138F4
_08013808:
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, [r5, #8]
	ldr r0, _08013840 @ =0xFFFFF3FF
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	movs r2, #0x20
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r2
	orrs r1, r0
	str r1, [r5, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013844
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013848
	.align 2, 0
_0801383C: .4byte 0x00000111
_08013840: .4byte 0xFFFFF3FF
_08013844:
	movs r0, #0x80
	lsls r0, r0, #1
_08013848:
	strh r0, [r4, #2]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801385C
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_0801385C:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _0801386A
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_0801386A:
	ldr r0, [r6, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013894
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _0801388C @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013890 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _0801389A
	.align 2, 0
_0801388C: .4byte 0xFFFFFF00
_08013890: .4byte 0x000003FF
_08013894:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_0801389A:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r6, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r6, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	ldr r1, [r5, #8]
	ldr r0, _080138F0 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #8]
	movs r7, #0x30
	ldrsh r0, [r6, r7]
	cmp r0, #0x6f
	beq _080138DE
	cmp r0, #0xb1
	beq _080138DE
	cmp r0, #0xb2
	beq _080138DE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
_080138DE:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	b _0801398A
	.align 2, 0
_080138F0: .4byte 0xFFFFCFFF
_080138F4:
	mov r0, ip
	strh r0, [r4]
	ldr r2, [r5, #8]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013916
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r5, #8]
	b _08013922
_08013916:
	ldr r0, _08013938 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r5, #8]
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
_08013922:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801393C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08013942
	.align 2, 0
_08013938: .4byte 0xFFFFFBFF
_0801393C:
	ldr r0, [r5, #8]
	ldr r1, _08013954 @ =0xFFFFF7FF
	ands r0, r1
_08013942:
	str r0, [r5, #8]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x67
	bne _0801395C
	ldr r0, [r5, #8]
	ldr r1, _08013958 @ =0xFFFFCFFF
	ands r0, r1
	b _08013982
	.align 2, 0
_08013954: .4byte 0xFFFFF7FF
_08013958: .4byte 0xFFFFCFFF
_0801395C:
	ldrh r1, [r6, #0x34]
	ldr r2, _080139BC @ =gPlayerCharacterIdleAnims
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #0x8e
	beq _08013984
	ldr r0, [r5, #8]
	ldr r1, _080139C0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
_08013982:
	str r0, [r5, #8]
_08013984:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0801398A:
	movs r7, #1
	ldr r2, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	bne _08013A20
	ldr r0, _080139C4 @ =gStageData
	ldrb r1, [r0, #3]
	adds r4, r0, #0
	cmp r1, #7
	bne _080139AC
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013A20
_080139AC:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r3, r0
	cmp r3, #0
	beq _080139C8
	movs r7, #0
	b _08013A2A
	.align 2, 0
_080139BC: .4byte gPlayerCharacterIdleAnims
_080139C0: .4byte 0xFFFFCFFF
_080139C4: .4byte gStageData
_080139C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	bne _08013A16
	adds r0, r6, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080139EA
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080139EA
	movs r7, #0
_080139EA:
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08013A16
	ldrb r0, [r4, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013A60 @ =gPlayers
	adds r1, r1, r0
	cmp r6, r1
	bne _08013A14
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013A16
_08013A14:
	movs r7, #0
_08013A16:
	ldr r0, _08013A64 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08013A20
	movs r7, #1
_08013A20:
	cmp r7, #0
	beq _08013A2A
	adds r0, r5, #0
	bl DisplaySprite
_08013A2A:
	ldr r1, _08013A64 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _08013A52
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r1, #9]
	ldrb r1, [r1, #6]
	cmp r0, r1
	bne _08013A44
	cmp r2, #8
	bne _08013A4C
_08013A44:
	cmp r2, #8
	bne _08013A52
	cmp r0, #0
	bne _08013A52
_08013A4C:
	adds r0, r6, #0
	bl sub_8019858
_08013A52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013A60: .4byte gPlayers
_08013A64: .4byte gStageData

	thumb_func_start sub_8013A68
sub_8013A68: @ 0x08013A68
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013ACC @ =gPlayers
	adds r5, r1, r0
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0xc
	adds r4, r0, #0
	ldr r0, _08013AD0 @ =gCamera
	ldrh r3, [r0]
	ldrh r7, [r0, #4]
	movs r0, #0x2a
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08013AA6
	b _08013D64
_08013AA6:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08013AB4
	b _08013D64
_08013AB4:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013AD4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08013D64
	.align 2, 0
_08013ACC: .4byte gPlayers
_08013AD0: .4byte gCamera
_08013AD4:
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #8]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08013AFE
	movs r0, #8
	strb r0, [r6, #0x1c]
_08013AFE:
	ldrh r2, [r5, #0x34]
	ldrh r3, [r5, #0x36]
	ldr r0, _08013B78 @ =gPlayerCharacterIdleAnims
	mov r7, ip
	ldrb r1, [r7]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08013B7C @ =0xFFED0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08013B24
	cmp r3, #1
	beq _08013B38
_08013B24:
	cmp r2, #0xb
	bne _08013B2C
	cmp r3, #0
	beq _08013B38
_08013B2C:
	cmp r2, #0x83
	beq _08013B32
	b _08013D64
_08013B32:
	cmp r3, #0
	beq _08013B38
	b _08013D64
_08013B38:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #1
	beq _08013B48
	b _08013C48
_08013B48:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r5, r3
	strb r1, [r0]
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x24
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	ands r0, r2
	cmp r0, #0
	bne _08013B80
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013B84
	.align 2, 0
_08013B78: .4byte gPlayerCharacterIdleAnims
_08013B7C: .4byte 0xFFED0000
_08013B80:
	movs r0, #0x80
	lsls r0, r0, #1
_08013B84:
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08013B98
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08013B98:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08013BA6
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08013BA6:
	ldr r0, [r5, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013BD0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08013BC8 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013BCC @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08013BD6
	.align 2, 0
_08013BC8: .4byte 0xFFFFFF00
_08013BCC: .4byte 0x000003FF
_08013BD0:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08013BD6:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013C3A
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08013C20
	b _08013D64
_08013C20:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	beq _08013C3A
	ldr r0, _08013C44 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C3A
	b _08013D64
_08013C3A:
	adds r0, r6, #0
	bl DisplaySprite
	b _08013D64
	.align 2, 0
_08013C44: .4byte gStageData
_08013C48:
	cmp r2, #2
	beq _08013C4E
	b _08013D64
_08013C4E:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	cmp r0, #0
	bne _08013C5E
	cmp r1, #0
	beq _08013C6E
_08013C5E:
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _08013C7C
_08013C6E:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	movs r1, #0x40
	cmp r0, #0
	beq _08013C7C
	movs r1, #0xc0
_08013C7C:
	ldr r3, _08013CA4 @ =0x00000149
	adds r0, r5, r3
	strb r1, [r0]
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x25
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013CA8
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013CAC
	.align 2, 0
_08013CA4: .4byte 0x00000149
_08013CA8:
	movs r0, #0x80
	lsls r0, r0, #1
_08013CAC:
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08013CC0
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08013CC0:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08013CCE
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08013CCE:
	ldr r0, [r5, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013CF8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08013CF0 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013CF4 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08013CFE
	.align 2, 0
_08013CF0: .4byte 0xFFFFFF00
_08013CF4: .4byte 0x000003FF
_08013CF8:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08013CFE:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013D5E
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	bne _08013D64
	adds r0, r5, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	beq _08013D5E
	ldr r0, _08013D6C @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08013D64
_08013D5E:
	adds r0, r6, #0
	bl DisplaySprite
_08013D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013D6C: .4byte gStageData

	thumb_func_start sub_8013D70
sub_8013D70: @ 0x08013D70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r6, r1, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08013DB0 @ =gPlayers
	adds r4, r0, r1
	ldr r5, _08013DB4 @ =gStageData
	ldrb r1, [r5, #0xb]
	adds r7, r1, #0
	ldrb r0, [r5, #3]
	cmp r0, #5
	bhi _08013DBC
	ldr r0, _08013DB8 @ =gUnknown_080D1750
	mov r3, r8
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	ldr r0, [r2]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	b _08013E02
	.align 2, 0
_08013DB0: .4byte gPlayers
_08013DB4: .4byte gStageData
_08013DB8: .4byte gUnknown_080D1750
_08013DBC:
	cmp r0, #7
	beq _08013DE0
	ldr r0, _08013DDC @ =gUnknown_080D1750
	mov r3, r8
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	ldr r0, [r2]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	b _08013E02
	.align 2, 0
_08013DDC: .4byte gUnknown_080D1750
_08013DE0:
	ldr r1, _08013E30 @ =gUnknown_080CE6A8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldrb r0, [r5, #6]
	cmp r0, r6
	bne _08013E04
	lsls r1, r7, #2
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
_08013E02:
	strh r0, [r5, #0x2a]
_08013E04:
	ldr r2, _08013E34 @ =gStageData
	movs r0, #0
	str r0, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x20
	strb r0, [r1]
	strh r0, [r4, #0x1c]
	ldrb r0, [r2, #3]
	adds r3, r2, #0
	cmp r0, #2
	bne _08013EEC
	cmp r6, #0
	bne _08013EEC
	mov r0, r8
	subs r0, #0xd
	cmp r0, #0x2a
	bhi _08013EEC
	lsls r0, r0, #2
	ldr r1, _08013E38 @ =_08013E3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013E30: .4byte gUnknown_080CE6A8
_08013E34: .4byte gStageData
_08013E38: .4byte _08013E3C
_08013E3C: @ jump table
	.4byte _08013EE8 @ case 0
	.4byte _08013EEC @ case 1
	.4byte _08013EEC @ case 2
	.4byte _08013EEC @ case 3
	.4byte _08013EEC @ case 4
	.4byte _08013EEC @ case 5
	.4byte _08013EEC @ case 6
	.4byte _08013EEC @ case 7
	.4byte _08013EEC @ case 8
	.4byte _08013EEC @ case 9
	.4byte _08013EEC @ case 10
	.4byte _08013EE8 @ case 11
	.4byte _08013EEC @ case 12
	.4byte _08013EEC @ case 13
	.4byte _08013EEC @ case 14
	.4byte _08013EEC @ case 15
	.4byte _08013EEC @ case 16
	.4byte _08013EEC @ case 17
	.4byte _08013EEC @ case 18
	.4byte _08013EEC @ case 19
	.4byte _08013EEC @ case 20
	.4byte _08013EEC @ case 21
	.4byte _08013EE8 @ case 22
	.4byte _08013EEC @ case 23
	.4byte _08013EEC @ case 24
	.4byte _08013EEC @ case 25
	.4byte _08013EEC @ case 26
	.4byte _08013EEC @ case 27
	.4byte _08013EEC @ case 28
	.4byte _08013EEC @ case 29
	.4byte _08013EEC @ case 30
	.4byte _08013EEC @ case 31
	.4byte _08013EE8 @ case 32
	.4byte _08013EEC @ case 33
	.4byte _08013EEC @ case 34
	.4byte _08013EEC @ case 35
	.4byte _08013EEC @ case 36
	.4byte _08013EEC @ case 37
	.4byte _08013EEC @ case 38
	.4byte _08013EEC @ case 39
	.4byte _08013EEC @ case 40
	.4byte _08013EEC @ case 41
	.4byte _08013EE8 @ case 42
_08013EE8:
	movs r0, #0
	strh r0, [r4, #0x1c]
_08013EEC:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0xe0
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08013F24 @ =gUnknown_03001B00
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #3]
	cmp r0, #7
	beq _08013F38
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08013F2C
	cmp r0, #2
	bne _08013F38
	adds r1, r4, #0
	adds r1, #0xe4
	ldr r0, _08013F28 @ =gUnknown_030010D0
	b _08013F3E
	.align 2, 0
_08013F24: .4byte gUnknown_03001B00
_08013F28: .4byte gUnknown_030010D0
_08013F2C:
	adds r1, r4, #0
	adds r1, #0xe4
	ldr r0, _08013F34 @ =gUnknown_0300110C
	b _08013F3E
	.align 2, 0
_08013F34: .4byte gUnknown_0300110C
_08013F38:
	adds r1, r4, #0
	adds r1, #0xe4
	movs r0, #0
_08013F3E:
	str r0, [r1]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8013F4C
sub_8013F4C: @ 0x08013F4C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _08013F7C @ =gStageData
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldrh r0, [r1, #0x2a]
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r1, #3]
	adds r6, r1, #0
	cmp r0, #7
	beq _08013F8C
	ldrb r0, [r6, #9]
	cmp r0, #8
	bne _08013F8C
	ldr r0, _08013F80 @ =gPlayers
	ldr r1, _08013F84 @ =sub_800F7C0
	cmp r5, r0
	bne _08013F76
	ldr r1, _08013F88 @ =sub_800F22C
_08013F76:
	str r1, [r5]
	b _08013F90
	.align 2, 0
_08013F7C: .4byte gStageData
_08013F80: .4byte gPlayers
_08013F84: .4byte sub_800F7C0
_08013F88: .4byte sub_800F22C
_08013F8C:
	ldr r0, _08014094 @ =Player_800522C
	str r0, [r5]
_08013F90:
	movs r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #0x14
	str r0, [r5, #4]
	ldrh r1, [r6, #0xe]
	cmp r1, #0xb
	bne _08013FA8
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _08013FB2
_08013FA8:
	cmp r1, #1
	bne _08013FBA
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bne _08013FBA
_08013FB2:
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
_08013FBA:
	adds r1, r5, #0
	adds r1, #0x24
	movs r2, #0
	movs r0, #6
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	movs r4, #0xe
	strb r4, [r0]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x61
	movs r0, #0x98
	lsls r0, r0, #4
	str r0, [r1]
	adds r1, #4
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r1]
	adds r1, #4
	movs r0, #8
	str r0, [r1]
	adds r1, #4
	movs r0, #0x40
	str r0, [r1]
	movs r3, #0
	strh r2, [r5, #0x30]
	ldr r0, _08014098 @ =0x0000FFFF
	strh r0, [r5, #0x32]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r5, #0x34]
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	subs r1, #0x42
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x54
	strh r2, [r0]
	adds r0, #4
	movs r1, #0x3c
	strb r1, [r0]
	movs r0, #0x59
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0xa
	mov r7, ip
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	strb r4, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #7
	strh r2, [r0]
	adds r0, #0xe
	strh r2, [r0]
	subs r0, #4
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #0x44
	adds r1, #0xc4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08014074
	adds r0, r5, #0
	bl sub_8014258
_08014074:
	adds r1, r5, #0
	adds r1, #0x78
	movs r2, #3
	adds r4, r1, #0
	movs r3, #0
_0801407E:
	stm r1!, {r3}
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0801407E
	movs r0, #0x7f
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014094: .4byte Player_800522C
_08014098: .4byte 0x0000FFFF

	thumb_func_start sub_801409C
sub_801409C: @ 0x0801409C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080141E0 @ =gPlayers
	adds r5, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xcb
	bne _080140D0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xcb
	beq _080140D0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl Player_StopSong
_080140D0:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _080140F0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _080140E8
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xd0
	bne _080140F0
_080140E8:
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
_080140F0:
	ldrh r1, [r4, #0x32]
	adds r0, r1, #0
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08014112
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	beq _08014112
	cmp r0, #0xd2
	beq _08014112
	cmp r0, #0xd5
	beq _08014112
	cmp r0, #0xd4
	bne _0801413C
_08014112:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801413C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	beq _0801413C
	cmp r0, #0xd2
	beq _0801413C
	cmp r0, #0xd5
	beq _0801413C
	cmp r0, #0xd4
	beq _0801413C
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
_0801413C:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0x6f
	beq _0801414C
	cmp r0, #0xb1
	beq _0801414C
	cmp r0, #0xb2
	bne _08014164
_0801414C:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x6f
	beq _08014164
	cmp r0, #0xb1
	beq _08014164
	cmp r0, #0xb2
	beq _08014164
	adds r0, r4, #0
	movs r1, #0x72
	bl Player_StopSong
_08014164:
	ldrh r1, [r4, #0x32]
	adds r0, r1, #0
	subs r0, #0xd6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801417E
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd9
	beq _0801417E
	cmp r0, #0xda
	bne _080141A0
_0801417E:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xd6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080141A0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd9
	beq _080141A0
	cmp r0, #0xda
	beq _080141A0
	ldr r1, _080141E4 @ =0x0000021A
	adds r0, r4, #0
	bl Player_StopSong
_080141A0:
	ldrh r0, [r4, #0x32]
	subs r0, #0xbc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080141C0
	ldrh r0, [r4, #0x30]
	subs r0, #0xbc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080141C0
	adds r0, r4, #0
	movs r1, #0xe3
	bl Player_StopSong
_080141C0:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xf7
	bne _080141D8
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xf7
	beq _080141D8
	ldr r1, _080141E8 @ =0x00000211
	adds r0, r4, #0
	bl Player_StopSong
_080141D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080141E0: .4byte gPlayers
_080141E4: .4byte 0x0000021A
_080141E8: .4byte 0x00000211

	thumb_func_start sub_80141EC
sub_80141EC: @ 0x080141EC
	push {r4, r5, r6, lr}
	sub sp, #0x64
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r1, _0801421C @ =gUnknown_080CE644
	mov r0, sp
	movs r2, #0x64
	bl memcpy
	ldr r0, _08014220 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08014224
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	b _08014226
	.align 2, 0
_0801421C: .4byte gUnknown_080CE644
_08014220: .4byte gStageData
_08014224:
	movs r0, #0x42
_08014226:
	str r0, [r6, #0xc]
	add sp, #0x64
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8014230
sub_8014230: @ 0x08014230
	push {lr}
	adds r2, r1, #0
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	asrs r1, r0, #5
	asrs r0, r0, #6
	adds r0, r1, r0
	cmp r0, #0
	bge _08014244
	rsbs r0, r0, #0
_08014244:
	cmp r0, #7
	ble _08014250
	cmp r0, #0x80
	ble _08014252
	movs r0, #0x80
	b _08014252
_08014250:
	movs r0, #8
_08014252:
	strb r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_8014258
sub_8014258: @ 0x08014258
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08014280 @ =gStageData
	adds r0, #0xac
	ldrh r3, [r0]
	adds r4, r3, #0
	ldr r0, [r2, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080142BA
	cmp r3, #0x95
	bls _08014284
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _080142C2
	.align 2, 0
_08014280: .4byte gStageData
_08014284:
	cmp r3, #0x63
	bls _08014296
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	orrs r0, r1
	b _080142C2
_08014296:
	cmp r3, #0x31
	bls _080142A8
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	b _080142C2
_080142A8:
	cmp r4, #0xa
	bls _080142BA
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _080142C2
_080142BA:
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
_080142C2:
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80142CC
sub_80142CC: @ 0x080142CC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsrs r5, r0, #4
	ldr r0, _08014318 @ =gStageData
	ldrb r1, [r0, #3]
	mov ip, r0
	cmp r1, #7
	beq _080143BA
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	ldr r2, [r3, #4]
	cmp r0, #0
	beq _0801431C
	ldr r0, [r3, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801431C
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0801431C
	adds r2, r3, #0
	adds r2, #0x8c
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r2]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #0xc0
	lsls r0, r0, #4
	b _0801434A
	.align 2, 0
_08014318: .4byte gStageData
_0801431C:
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08014338
	adds r2, r3, #0
	adds r2, #0x8c
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r2]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #0xc0
	lsls r0, r0, #4
	b _0801434A
_08014338:
	adds r2, r3, #0
	adds r2, #0x8c
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r2]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #0x98
	lsls r0, r0, #4
_0801434A:
	str r0, [r1]
	adds r7, r2, #0
	adds r6, r1, #0
	adds r4, r3, #0
	adds r4, #0x90
	ldr r1, _08014388 @ =gUnknown_080CECB2
	lsls r2, r5, #2
	adds r0, r2, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	str r0, [r4]
	adds r5, r3, #0
	adds r5, #0x94
	adds r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	str r0, [r5]
	adds r0, r3, #0
	adds r0, #0x5e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801438C
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r4]
	ldr r0, [r5]
	lsls r0, r0, #1
	str r0, [r5]
	b _080143D8
	.align 2, 0
_08014388: .4byte gUnknown_080CECB2
_0801438C:
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #6
	bne _080143D8
	adds r0, r3, #0
	adds r0, #0x60
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080143D8
	ldr r0, [r7]
	asrs r0, r0, #2
	str r0, [r7]
	ldr r0, [r6]
	asrs r0, r0, #2
	str r0, [r6]
	ldr r0, [r4]
	asrs r0, r0, #1
	str r0, [r4]
	ldr r0, [r5]
	asrs r0, r0, #1
	str r0, [r5]
	b _080143D8
_080143BA:
	adds r1, r3, #0
	adds r1, #0x8c
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r1]
	subs r1, #4
	movs r0, #0x98
	lsls r0, r0, #4
	str r0, [r1]
	adds r1, #8
	movs r0, #0xc
	str r0, [r1]
	adds r1, #4
	movs r0, #0x40
	str r0, [r1]
_080143D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80143E0
sub_80143E0: @ 0x080143E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080144AE
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08014440
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080144AE
	ldr r1, _08014438 @ =gUnknown_080CECC6
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0801442A
	rsbs r1, r1, #0
_0801442A:
	ldr r0, _0801443C @ =0x000004BF
	cmp r1, r0
	bgt _080144AE
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	b _080144AE
	.align 2, 0
_08014438: .4byte gUnknown_080CECC6
_0801443C: .4byte 0x000004BF
_08014440:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080144A8
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _08014454
	rsbs r1, r1, #0
_08014454:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r1, r0
	blt _080144A8
	adds r2, r4, #0
	adds r2, #0x50
	ldr r1, _080144A0 @ =gUnknown_080CECC6
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _080144AE
	adds r0, r4, #0
	bl Player_BoostModeEngage
	ldrb r1, [r5]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _080144AE
	ldr r1, _080144A4 @ =gCamera
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #0x20]
	adds r0, r4, #0
	movs r1, #0xdd
	bl Player_PlaySong
	b _080144AE
	.align 2, 0
_080144A0: .4byte gUnknown_080CECC6
_080144A4: .4byte gCamera
_080144A8:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080144AE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80144B4
sub_80144B4: @ 0x080144B4
	push {lr}
	adds r2, r0, #0
	movs r0, #0x1c
	ldrsh r3, [r2, r0]
	cmp r3, #0
	bge _080144C2
	rsbs r3, r3, #0
_080144C2:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r3, r0
	bgt _080144D6
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	b _08014548
_080144D6:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r3, r0
	bgt _080144EC
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	b _08014546
_080144EC:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _08014502
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	b _08014546
_08014502:
	movs r0, #0xe0
	lsls r0, r0, #3
	cmp r3, r0
	ble _08014516
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014524
_08014516:
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	b _08014546
_08014524:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r3, r0
	bgt _0801453A
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	b _08014546
_0801453A:
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
_08014546:
	orrs r0, r1
_08014548:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_8014550
Player_8014550: @ 0x08014550
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r7, _080145FC @ =gStageData
	ldrb r0, [r7, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801465E
	adds r0, r4, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sl, r0
	cmp r1, #0
	bgt _0801465E
	adds r0, #2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0801465E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080145A6
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl Player_StopSong
	ldr r0, [r4, #4]
	ldr r1, _08014600 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
_080145A6:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r7, #3]
	cmp r0, #7
	beq _08014642
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	movs r2, #0x2b
	adds r2, r2, r4
	mov r8, r2
	ldrb r0, [r2]
	movs r1, #0x1c
	mov sb, r1
	mov r3, sb
	ands r3, r0
	cmp r3, #8
	beq _08014642
	ldrb r1, [r7, #0xa]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08014642
	adds r0, r1, #0
	cmp r0, #8
	beq _08014642
	cmp r0, #9
	beq _08014642
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrb r2, [r5]
	movs r1, #0x30
	ands r1, r2
	cmp r1, #0
	beq _08014604
	movs r0, #0xcf
	ands r0, r2
	strb r0, [r5]
	b _08014642
	.align 2, 0
_080145FC: .4byte gStageData
_08014600: .4byte 0xFFFDFFFF
_08014604:
	adds r5, r7, #0
	adds r5, #0xac
	ldrh r0, [r5]
	cmp r0, #0
	bne _08014616
	adds r0, r4, #0
	bl Player_HitWithoutRingsUpdate
	b _0801465E
_08014616:
	cmp r3, #4
	bne _08014642
	ldrh r6, [r5]
	strh r1, [r5]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_802AE64
	ldrb r0, [r7, #3]
	cmp r0, #4
	bls _08014642
	mov r0, r8
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #4
	bne _08014642
	ldrh r1, [r5]
	adds r0, r6, #0
	bl sub_80274AC
_08014642:
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	ldr r1, _0801466C @ =Player_8008CD0
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0x78
	mov r1, sl
	strh r0, [r1]
_0801465E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801466C: .4byte Player_8008CD0

	thumb_func_start sub_8014670
sub_8014670: @ 0x08014670
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0801470C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08014704
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0x66
	beq _08014696
	adds r1, r3, #0
	adds r1, #0x4a
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08014696
	subs r0, r2, #1
	strh r0, [r1]
_08014696:
	adds r1, r3, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146BC
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080146BC
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
_080146BC:
	adds r1, r3, #0
	adds r1, #0x5e
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146CE
	subs r0, r2, #1
	strh r0, [r1]
_080146CE:
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146E0
	subs r0, r2, #1
	strh r0, [r1]
_080146E0:
	adds r1, r3, #0
	adds r1, #0x62
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146F2
	subs r0, r2, #1
	strh r0, [r1]
_080146F2:
	adds r2, r3, #0
	adds r2, #0x66
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08014704
	subs r0, r1, #1
	strh r0, [r2]
_08014704:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801470C: .4byte gStageData

	thumb_func_start sub_8014710
sub_8014710: @ 0x08014710
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08014796
	movs r5, #0
	ldr r0, _0801476C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08014796
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08014796
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014796
	adds r2, r4, #0
	adds r2, #0x57
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0801475A
	subs r0, r1, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08014784
_0801475A:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08014770
	movs r5, #1
	b _08014788
	.align 2, 0
_0801476C: .4byte gStageData
_08014770:
	subs r0, r3, #1
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r2]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_801782C
_08014784:
	cmp r5, #0
	beq _08014796
_08014788:
	adds r0, r4, #0
	movs r1, #0x9d
	bl Player_PlaySong
	adds r0, r4, #0
	bl Player_HitWithoutRings
_08014796:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Player_801479C
Player_801479C: @ 0x0801479C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x88
	movs r3, #0x1c
	ldrsh r1, [r2, r3]
	ldr r4, [r0]
	movs r5, #0
	ldrsh r3, [r0, r5]
	cmp r1, r3
	ble _080147B4
	strh r4, [r2, #0x1c]
	b _080147C0
_080147B4:
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmn r0, r3
	bge _080147C0
	rsbs r0, r4, #0
	strh r0, [r2, #0x1c]
_080147C0:
	movs r3, #0x1c
	ldrsh r4, [r2, r3]
	adds r0, r2, #0
	adds r0, #0x26
	ldr r5, _08014808 @ =gSineTable
	ldrb r3, [r0]
	lsls r0, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x18]
	ldr r1, [r2, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080147EE
	strh r1, [r2, #0x1a]
_080147EE:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	ldrh r3, [r2, #0x1a]
	adds r0, r0, r3
	strh r0, [r2, #0x1a]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014808: .4byte gSineTable

	thumb_func_start sub_801480C
sub_801480C: @ 0x0801480C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r5, [r0]
	ldr r0, _08014890 @ =gStageData
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _08014828
	b _08014934
_08014828:
	adds r0, r4, #0
	bl sub_8031BAC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r7, r6, #0
	cmp r6, #2
	bne _0801483A
	b _08014934
_0801483A:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08014858
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08014858:
	adds r0, r5, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sub_8012E54
	cmp r0, #3
	ble _08014934
	mov r1, r8
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _080148FC
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801489C
	cmp r6, #0
	beq _0801488A
	ldr r0, [r4, #0x14]
	ldr r2, _08014894 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x14]
_0801488A:
	ldr r1, _08014898 @ =Player_8007EAC
	b _080148EA
	.align 2, 0
_08014890: .4byte gStageData
_08014894: .4byte 0xFFFFFE00
_08014898: .4byte Player_8007EAC
_0801489C:
	ldr r1, [r4, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080148C0
	cmp r6, #0
	beq _080148B2
	ldr r0, [r4, #0x14]
	ldr r1, _080148B8 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_080148B2:
	ldr r1, _080148BC @ =Player_8006250
	b _080148EA
	.align 2, 0
_080148B8: .4byte 0xFFFFFE00
_080148BC: .4byte Player_8006250
_080148C0:
	movs r0, #6
	ands r1, r0
	cmp r1, #4
	bne _080148DC
	ldrh r1, [r4, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080148DC
	ldr r1, _080148D8 @ =sub_801DFC4
	b _080148EA
	.align 2, 0
_080148D8: .4byte sub_801DFC4
_080148DC:
	cmp r7, #0
	beq _080148E8
	ldr r0, [r4, #0x14]
	ldr r2, _080148F4 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x14]
_080148E8:
	ldr r1, _080148F8 @ =Player_8006310
_080148EA:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08014910
	.align 2, 0
_080148F4: .4byte 0xFFFFFE00
_080148F8: .4byte Player_8006310
_080148FC:
	cmp r7, #0
	beq _08014908
	ldr r0, [r4, #0x14]
	ldr r1, _0801492C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08014908:
	ldr r1, _08014930 @ =Player_8006250
	adds r0, r4, #0
	bl SetPlayerCallback
_08014910:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014926
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
_08014926:
	movs r0, #1
	b _08014936
	.align 2, 0
_0801492C: .4byte 0xFFFFFE00
_08014930: .4byte Player_8006250
_08014934:
	movs r0, #0
_08014936:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014940
sub_8014940: @ 0x08014940
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r5, r0, #1
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r6, [r0]
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0x66
	beq _080149DC
	ldr r1, [r3, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080149DC
	ldrh r2, [r3, #0x18]
	ldrh r4, [r3, #0x1e]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080149A0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801497E
	movs r0, #1
	orrs r1, r0
	str r1, [r3, #4]
_0801497E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r6, #0
	cmp r0, r1
	bge _080149DA
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _080149DA
	lsls r0, r1, #0x10
	b _080149D8
_080149A0:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080149DA
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080149BA
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #4]
_080149BA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	ble _080149DA
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _080149DA
	lsls r0, r6, #0x10
_080149D8:
	lsrs r2, r0, #0x10
_080149DA:
	strh r2, [r3, #0x18]
_080149DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_80149E4
Player_80149E4: @ 0x080149E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x1a]
	adds r3, r2, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
	movs r0, #0x80
	ands r1, r0
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _08014A08
	cmp r2, #0
	beq _08014A14
_08014A08:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
_08014A14:
	adds r0, r1, #0
	subs r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08014A4C
	cmp r0, #1
	bgt _08014A32
	cmp r0, #0
	beq _08014A3C
	b _08014A5A
_08014A32:
	cmp r0, #2
	beq _08014A44
	cmp r0, #3
	beq _08014A54
	b _08014A5A
_08014A3C:
	adds r0, r4, #0
	bl sub_8011D08
	b _08014A5A
_08014A44:
	adds r0, r4, #0
	bl sub_8011E70
	b _08014A5A
_08014A4C:
	adds r0, r4, #0
	bl sub_8011FB8
	b _08014A5A
_08014A54:
	adds r0, r4, #0
	bl sub_8012118
_08014A5A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8014A60
sub_8014A60: @ 0x08014A60
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x80
	bne _08014AF0
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #0x1c]
	cmp r0, #0
	bne _08014AA8
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08014AA8
	ldr r0, [r4, #4]
	ldr r1, _08014AA0 @ =0x00020006
	ands r0, r1
	cmp r0, #0
	bne _08014AA8
	ldr r1, _08014AA4 @ =Player_8007FE8
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	b _08014AF2
	.align 2, 0
_08014AA0: .4byte 0x00020006
_08014AA4: .4byte Player_8007FE8
_08014AA8:
	adds r0, r2, #0
	adds r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _08014AF0
	ldr r2, [r4, #4]
	ldr r0, _08014AE8 @ =0x00020006
	ands r0, r2
	cmp r0, #0
	bne _08014AF0
	ldr r0, [r4, #0xc]
	movs r1, #6
	ands r0, r1
	cmp r0, #2
	bne _08014AF0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _08014AF0
	ldr r1, _08014AEC @ =Player_800891C
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x6d
	bl Player_PlaySong
	movs r0, #1
	b _08014AF2
	.align 2, 0
_08014AE8: .4byte 0x00020006
_08014AEC: .4byte Player_800891C
_08014AF0:
	movs r0, #0
_08014AF2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8014AF8
sub_8014AF8: @ 0x08014AF8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _08014B68 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08014B6C @ =gPlayers
	adds r6, r0, r1
	ldr r3, _08014B70 @ =gStageData
	ldrb r4, [r3, #3]
	cmp r4, #7
	beq _08014BBC
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08014BB2
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08014BB2
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r3, #0x18]
	ands r0, r1
	cmp r0, #0
	bne _08014BB2
	ldr r0, [r2, #4]
	ldr r1, _08014B74 @ =0x08820046
	ands r0, r1
	cmp r0, #0
	bne _08014BB2
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08014B78
	subs r0, r3, #1
	b _08014BBA
	.align 2, 0
_08014B68: .4byte gCurTask
_08014B6C: .4byte gPlayers
_08014B70: .4byte gStageData
_08014B74: .4byte 0x08820046
_08014B78:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08014B84
	movs r0, #6
	b _08014BAC
_08014B84:
	cmp r4, #4
	bhi _08014BAA
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #4
	bne _08014BAA
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08014BAA
	movs r0, #0xfb
	b _08014BAC
_08014BAA:
	movs r0, #7
_08014BAC:
	strh r0, [r2, #0x30]
	movs r0, #1
	b _08014BBE
_08014BB2:
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #1
_08014BBA:
	strh r0, [r1]
_08014BBC:
	movs r0, #0
_08014BBE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014BC4
sub_8014BC4: @ 0x08014BC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08014BFC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08014BD2
	b _08014D62
_08014BD2:
	ldrh r0, [r1, #0xe]
	cmp r0, #1
	bne _08014BDA
	b _08014D62
_08014BDA:
	cmp r0, #0xb
	bne _08014BE0
	b _08014D62
_08014BE0:
	ldrh r0, [r5, #0x1e]
	ldrh r2, [r1, #0x18]
	ands r2, r0
	cmp r2, #0
	beq _08014CA0
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08014C00
	movs r0, #1
	b _08014D64
	.align 2, 0
_08014BFC: .4byte gStageData
_08014C00:
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x1d
	bgt _08014C14
	adds r0, r3, #1
	strh r0, [r1]
	b _08014D62
_08014C14:
	movs r4, #0x80
	lsls r4, r4, #0xf
	ands r2, r4
	cmp r2, #0
	bne _08014C28
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl Player_PlaySong
_08014C28:
	ldr r0, [r5, #4]
	orrs r0, r4
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r4, r0, #0
	cmp r1, #0x3c
	beq _08014C3E
	b _08014D62
_08014C3E:
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	adds r0, r5, #0
	bl sub_80193A4
	ldr r0, [r5, #4]
	movs r1, #0x24
	ands r0, r1
	cmp r0, #4
	bne _08014C64
	ldr r1, _08014C60 @ =sub_800E150
	adds r0, r5, #0
	bl SetPlayerCallback
	b _08014C6C
	.align 2, 0
_08014C60: .4byte sub_800E150
_08014C64:
	ldr r1, _08014C94 @ =Player_80077CC
	adds r0, r5, #0
	bl SetPlayerCallback
_08014C6C:
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl Player_StopSong
	ldr r1, _08014C98 @ =0x0000021B
	adds r0, r5, #0
	bl Player_PlaySong
	ldr r0, [r5, #4]
	ldr r1, _08014C9C @ =0xFFBFFFF5
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0
	strh r0, [r4]
	movs r0, #1
	b _08014D64
	.align 2, 0
_08014C94: .4byte Player_80077CC
_08014C98: .4byte 0x0000021B
_08014C9C: .4byte 0xFFBFFFF5
_08014CA0:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x40
	cmp r0, #0
	beq _08014CDC
	adds r4, r5, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08014CDC
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	beq _08014CDC
	cmp r0, #0x1d
	bgt _08014CDC
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r4]
	strh r2, [r1]
	adds r0, r5, #0
	bl sub_800C3AC
	b _08014D62
_08014CDC:
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014D38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _08014D30 @ =gPlayers
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_800BF78
	ldr r0, [r4, #4]
	ldr r1, _08014D34 @ =0xFE7FFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_80193CC
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl Player_StopSong
	adds r4, r5, #0
	adds r4, #0x42
	b _08014D5E
	.align 2, 0
_08014D30: .4byte gPlayers
_08014D34: .4byte 0xFE7FFFFF
_08014D38:
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r0, #0
	cmp r1, #0
	beq _08014D50
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl Player_StopSong
_08014D50:
	adds r0, r5, #0
	bl sub_80193A4
	ldr r0, [r5, #4]
	ldr r1, _08014D6C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08014D5E:
	movs r0, #0
	strh r0, [r4]
_08014D62:
	movs r0, #0
_08014D64:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014D6C: .4byte 0xFFBFFFFF

	thumb_func_start sub_8014D70
sub_8014D70: @ 0x08014D70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014E5C
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08014E5C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x15
	bhi _08014E36
	lsls r0, r0, #2
	ldr r1, _08014DA4 @ =_08014DA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014DA4: .4byte _08014DA8
_08014DA8: @ jump table
	.4byte _08014E08 @ case 0
	.4byte _08014E36 @ case 1
	.4byte _08014E36 @ case 2
	.4byte _08014E08 @ case 3
	.4byte _08014E36 @ case 4
	.4byte _08014E36 @ case 5
	.4byte _08014E36 @ case 6
	.4byte _08014E36 @ case 7
	.4byte _08014E00 @ case 8
	.4byte _08014E00 @ case 9
	.4byte _08014E36 @ case 10
	.4byte _08014E36 @ case 11
	.4byte _08014E36 @ case 12
	.4byte _08014E36 @ case 13
	.4byte _08014E08 @ case 14
	.4byte _08014E36 @ case 15
	.4byte _08014E36 @ case 16
	.4byte _08014E36 @ case 17
	.4byte _08014E04 @ case 18
	.4byte _08014E36 @ case 19
	.4byte _08014E36 @ case 20
	.4byte _08014E1C @ case 21
_08014E00:
	movs r0, #8
	b _08014E0A
_08014E04:
	movs r0, #0x10
	b _08014E0A
_08014E08:
	movs r0, #0
_08014E0A:
	strh r0, [r4, #0x30]
	ldr r1, _08014E18 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08014E36
	.align 2, 0
_08014E18: .4byte Player_8005380
_08014E1C:
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08014E2A
	movs r0, #0x14
	b _08014E2C
_08014E2A:
	movs r0, #0x6c
_08014E2C:
	strh r0, [r4, #0x30]
	ldr r1, _08014E64 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_08014E36:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08014E68 @ =gPlayers
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r2, _08014E6C @ =0xFE7FFFFF
	ands r0, r2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	ands r0, r2
	str r0, [r4, #4]
_08014E5C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08014E64: .4byte Player_800DAF4
_08014E68: .4byte gPlayers
_08014E6C: .4byte 0xFE7FFFFF

	thumb_func_start sub_8014E70
sub_8014E70: @ 0x08014E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_08014E7E:
	movs r2, #0x40
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08014E8E
	cmp r0, #0
	ble _08014E9A
	b _08014E98
_08014E8E:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014E9A
_08014E98:
	movs r2, #0xc0
_08014E9A:
	lsls r0, r3, #0x10
	adds r7, r0, #0
	cmp r7, #0
	beq _08014EBE
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _08014EAC
	rsbs r1, r1, #0
_08014EAC:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08014F78
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r2, r0, #0x18
_08014EBE:
	adds r6, r5, #0
	adds r6, #0x26
	ldrb r4, [r6]
	adds r0, r4, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08014EE8
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08014EE8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8011BFC
	lsls r2, r0, #8
	cmp r2, #0
	bgt _08014F78
	movs r0, #1
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r1, r0, #6
	cmp r1, #1
	beq _08014F30
	cmp r1, #1
	bgt _08014F12
	cmp r1, #0
	beq _08014F1C
	b _08014F78
_08014F12:
	cmp r1, #2
	beq _08014F36
	cmp r1, #3
	beq _08014F56
	b _08014F78
_08014F1C:
	ldr r0, [r5, #0x14]
	adds r0, r0, r2
	str r0, [r5, #0x14]
	strb r1, [r6]
	asrs r0, r7, #0x10
	cmp r0, #0
	bne _08014F78
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
	b _08014F78
_08014F30:
	ldr r0, [r5, #0x10]
	subs r0, r0, r2
	b _08014F5A
_08014F36:
	ldr r0, [r5, #0x14]
	subs r0, r0, r2
	str r0, [r5, #0x14]
	movs r0, #0
	strb r0, [r6]
	asrs r0, r7, #0x10
	cmp r0, #0
	bne _08014F4C
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08014F4C:
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	b _08014F78
_08014F56:
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
_08014F5A:
	str r0, [r5, #0x10]
	asrs r2, r7, #0x10
	cmp r2, #0
	bne _08014F78
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08014F74
	movs r0, #0x40
	orrs r1, r0
	str r1, [r5, #4]
_08014F74:
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1c]
_08014F78:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08014F88
	b _08014E7E
_08014F88:
	mov r0, r8
	cmp r0, #0
	beq _08014F9A
	adds r0, r5, #0
	adds r0, #0x99
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_08014F9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8014FA4
sub_8014FA4: @ 0x08014FA4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r2, #0x40
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014FB8
	movs r2, #0xc0
_08014FB8:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sp
	adds r4, r5, #0
	adds r4, #0x28
	ldrb r0, [r4]
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r0, [r6]
	strb r0, [r1, #1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_8011BFC
	lsls r2, r0, #8
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r4]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r6]
	cmp r2, #0
	bgt _0801505A
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r0, r0, #6
	cmp r0, #1
	beq _08015022
	cmp r0, #1
	bgt _08015008
	cmp r0, #0
	beq _08015012
	b _08015046
_08015008:
	cmp r0, #2
	beq _08015028
	cmp r0, #3
	beq _08015038
	b _08015046
_08015012:
	ldr r0, [r5, #0x14]
	adds r0, r0, r2
	str r0, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
	b _08015046
_08015022:
	ldr r0, [r5, #0x10]
	subs r0, r0, r2
	b _0801503C
_08015028:
	ldr r0, [r5, #0x14]
	subs r0, r0, r2
	str r0, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
	b _0801503E
_08015038:
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
_0801503C:
	str r0, [r5, #0x10]
_0801503E:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x18]
_08015046:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x99
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0801505A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015064
sub_8015064: @ 0x08015064
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r7, _0801508C @ =gCamera
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	movs r0, #0
	mov sb, r0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _08015090
	movs r0, #1
	b _08015132
	.align 2, 0
_0801508C: .4byte gCamera
_08015090:
	adds r0, r4, #0
	bl sub_8016FA8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080150E0
	ldr r0, [r4, #4]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080150B4
	ldr r0, _080150B0 @ =0x0000FD60
	b _080150B6
	.align 2, 0
_080150B0: .4byte 0x0000FD60
_080150B4:
	ldr r0, _080150CC @ =0x0000FB20
_080150B6:
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080150D0
	ldr r0, [r7, #0x10]
	lsls r5, r0, #8
	b _080150D6
	.align 2, 0
_080150CC: .4byte 0x0000FB20
_080150D0:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	subs r5, r0, #1
_080150D6:
	adds r0, r4, #0
	bl Player_HitWithoutRingsUpdate
	movs r0, #1
	mov sb, r0
_080150E0:
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	mov r8, r6
	mov ip, r5
	ldr r0, [r7, #0x18]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r6, r0
	blt _08015102
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #8
	ldr r7, _08015140 @ =0xFFFFF4FF
	adds r1, r0, r7
	adds r0, r6, #0
	cmp r0, r1
	ble _08015102
	adds r0, r1, #0
_08015102:
	adds r6, r0, #0
	lsls r0, r2, #8
	cmp r5, r0
	blt _08015116
	lsls r0, r3, #8
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	ble _08015116
	adds r0, r1, #0
_08015116:
	adds r5, r0, #0
	cmp r6, r8
	beq _08015122
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_08015122:
	cmp r5, ip
	beq _0801512C
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0801512C:
	str r6, [r4, #0x10]
	str r5, [r4, #0x14]
	mov r0, sb
_08015132:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015140: .4byte 0xFFFFF4FF

	thumb_func_start sub_8015144
sub_8015144: @ 0x08015144
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x26
	ldrb r3, [r0]
	adds r0, r3, #0
	adds r0, #0x60
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xbf
	bgt _080151BE
	ldr r0, [r2, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08015188
	ldr r1, _08015184 @ =gSineTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r1, r0, #5
	ldrh r3, [r2, #0x1c]
	movs r4, #0x1c
	ldrsh r0, [r2, r4]
	cmp r0, #0
	beq _080151BE
	adds r0, r3, r1
	b _080151BC
	.align 2, 0
_08015184: .4byte gSineTable
_08015188:
	movs r0, #0x1c
	ldrsh r4, [r2, r0]
	ldrh r5, [r2, #0x1c]
	cmp r4, #0
	beq _080151BE
	ldr r1, _080151B0 @ =gSineTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	asrs r1, r0, #8
	cmp r4, #0
	ble _080151B4
	cmp r1, #0
	bgt _080151BA
	b _080151B8
	.align 2, 0
_080151B0: .4byte gSineTable
_080151B4:
	cmp r1, #0
	blt _080151BA
_080151B8:
	asrs r1, r0, #0xa
_080151BA:
	adds r0, r5, r1
_080151BC:
	strh r0, [r2, #0x1c]
_080151BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80151C4
sub_80151C4: @ 0x080151C4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08015200 @ =gSineTable
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #5
	ldrh r1, [r3, #0x1c]
	adds r2, r0, r1
	strh r2, [r3, #0x1c]
	ldrh r1, [r3, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015204
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08015222
	adds r0, r2, #0
	subs r0, #8
	b _08015220
	.align 2, 0
_08015200: .4byte gSineTable
_08015204:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015222
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	bls _08015222
	adds r0, r2, #0
	adds r0, #8
_08015220:
	strh r0, [r3, #0x1c]
_08015222:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015228
sub_8015228: @ 0x08015228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r6, #0x14]
	asrs r5, r0, #8
	ldr r0, _080152E0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	bne _0801524A
	b _080153A8
_0801524A:
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _08015254
	rsbs r0, r0, #0
_08015254:
	cmp r0, #0x7f
	ble _0801525A
	b _080153A8
_0801525A:
	adds r7, r6, #0
	adds r7, #0x25
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	movs r3, #0x27
	adds r3, r3, r6
	mov r8, r3
	ldrb r2, [r3]
	movs r1, #0
	str r1, [sp]
	ldr r1, _080152E4 @ =sub_805217C
	str r1, [sp, #4]
	mov r1, sb
	movs r3, #8
	bl sub_80517FC
	cmp r0, #8
	bgt _08015282
	b _080153A8
_08015282:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080152E8
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
	mov r1, sb
	subs r1, #2
	adds r4, r6, #0
	adds r4, #0x24
	movs r2, #0
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	add r3, sp, #8
	str r3, [sp]
	ldr r3, _080152E4 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	mov sl, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
	mov r1, sb
	adds r1, #2
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	mov r4, sp
	adds r4, #9
	str r4, [sp]
	ldr r3, _080152E4 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	b _08015334
	.align 2, 0
_080152E0: .4byte gStageData
_080152E4: .4byte sub_805217C
_080152E8:
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	mov r1, sb
	subs r1, #2
	adds r4, r6, #0
	adds r4, #0x24
	movs r2, #0
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	add r3, sp, #8
	str r3, [sp]
	ldr r3, _08015360 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	mov sl, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	mov r1, sb
	adds r1, #2
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	mov r4, sp
	adds r4, #9
	str r4, [sp]
	ldr r3, _08015360 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
_08015334:
	mov r1, sl
	cmp r1, #8
	ble _08015368
	cmp r0, #0
	bne _08015368
	ldrb r4, [r4]
	cmp r4, #0xff
	beq _08015350
	cmp r4, #1
	beq _08015350
	cmp r4, #0x7f
	beq _08015350
	cmp r4, #0x81
	bne _08015368
_08015350:
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08015390
	ldr r1, _08015364 @ =sub_800DFEC
	b _08015392
	.align 2, 0
_08015360: .4byte sub_805217C
_08015364: .4byte sub_800DFEC
_08015368:
	mov r3, sl
	cmp r3, #0
	bne _080153A8
	cmp r0, #8
	ble _080153A8
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08015386
	cmp r0, #1
	beq _08015386
	cmp r0, #0x7f
	beq _08015386
	cmp r0, #0x81
	bne _080153A8
_08015386:
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080153A0
_08015390:
	ldr r1, _0801539C @ =sub_800E01C
_08015392:
	adds r0, r6, #0
	bl SetPlayerCallback
	b _080153A8
	.align 2, 0
_0801539C: .4byte sub_800E01C
_080153A0:
	ldr r1, _080153B8 @ =sub_800DFEC
	adds r0, r6, #0
	bl SetPlayerCallback
_080153A8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080153B8: .4byte sub_800DFEC

	thumb_func_start sub_80153BC
sub_80153BC: @ 0x080153BC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08015400
	ldr r1, [r4, #4]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080153FA
	movs r5, #1
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0x1a]
_080153FA:
	orrs r1, r2
	str r1, [r4, #4]
	b _08015422
_08015400:
	ldr r1, [r4, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801540C
	movs r5, #1
_0801540C:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0xe
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x78
	strb r0, [r1]
_08015422:
	cmp r5, #0
	beq _0801544E
	ldr r0, _0801545C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0801544E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801544E
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	bl sub_80172F0
	adds r0, r4, #0
	movs r1, #0x9c
	bl Player_PlaySong
_0801544E:
	adds r0, r4, #0
	bl sub_8014710
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801545C: .4byte gStageData

	thumb_func_start sub_8015460
sub_8015460: @ 0x08015460
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r2, [r4, #0x14]
	asrs r2, r2, #8
	adds r1, r4, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	cmp r0, r1
	bgt _0801549E
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080154A6
_0801549E:
	ldrh r0, [r4, #0x1a]
	subs r0, #0x10
	strh r0, [r4, #0x1a]
	b _080154AA
_080154A6:
	str r1, [r4, #0x14]
	strh r5, [r4, #0x1a]
_080154AA:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080154DA
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080154CA
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	b _080154F2
_080154CA:
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _0801550A
	adds r0, r1, #0
	adds r0, #8
	b _08015508
_080154DA:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015514
	ldr r1, [r4, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080154F8
	orrs r1, r2
	str r1, [r4, #4]
_080154F2:
	strh r0, [r4, #0x18]
	movs r5, #3
	b _0801554C
_080154F8:
	ldrh r2, [r4, #0x18]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _08015510 @ =0xFFFFFF00
	cmp r1, r0
	ble _0801550A
	adds r0, r2, #0
	subs r0, #8
_08015508:
	strh r0, [r4, #0x18]
_0801550A:
	movs r5, #1
	b _0801554C
	.align 2, 0
_08015510: .4byte 0xFFFFFF00
_08015514:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08015538
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08015534
	adds r0, r1, #0
	subs r0, #0x20
	strh r0, [r4, #0x1a]
_08015534:
	movs r5, #2
	b _0801554C
_08015538:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08015544
	movs r5, #4
	b _0801554C
_08015544:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x18]
_0801554C:
	adds r0, r4, #0
	bl Player_80149E4
	ldr r0, [r4, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015568
sub_8015568: @ 0x08015568
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080155AC @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	bne _08015576
	b _08015A3C
_08015576:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08015586
	b _08015A3C
_08015586:
	ldrh r1, [r4, #0x20]
	ldrh r0, [r2, #0x16]
	ands r0, r1
	cmp r0, #0
	bne _08015592
	b _08015A3C
_08015592:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _080155A2
	b _08015A3C
_080155A2:
	lsls r0, r0, #2
	ldr r1, _080155B0 @ =_080155B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080155AC: .4byte gStageData
_080155B0: .4byte _080155B4
_080155B4: @ jump table
	.4byte _080155C8 @ case 0
	.4byte _08015674 @ case 1
	.4byte _08015720 @ case 2
	.4byte _080157CC @ case 3
	.4byte _08015874 @ case 4
_080155C8:
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
	ldr r1, _08015658 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801560C
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801565C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801560C:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801562E
	ldr r0, _08015660 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015664 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_0801562E:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801563C
	b _080158E4
_0801563C:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _0801566C
	cmp r1, #8
	bls _0801564C
	b _08015A0C
_0801564C:
	cmp r1, #0
	beq _08015652
	b _08015A3C
_08015652:
	ldr r1, _08015668 @ =sub_8019FF8
	b _08015A2E
	.align 2, 0
_08015658: .4byte gPlayers
_0801565C: .4byte 0xFFBFFFFF
_08015660: .4byte 0xFF7FFFFF
_08015664: .4byte 0xFEFFFFFF
_08015668: .4byte sub_8019FF8
_0801566C:
	ldr r1, _08015670 @ =sub_801A05C
	b _08015A2E
	.align 2, 0
_08015670: .4byte sub_801A05C
_08015674:
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
	ldr r1, _080156F0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080156B8
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080156F4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080156B8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080156DA
	ldr r0, _080156F8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080156FC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080156DA:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _08015710
	cmp r1, #8
	bhi _08015700
	cmp r1, #0
	beq _08015706
	b _08015A3C
	.align 2, 0
_080156F0: .4byte gPlayers
_080156F4: .4byte 0xFFBFFFFF
_080156F8: .4byte 0xFF7FFFFF
_080156FC: .4byte 0xFEFFFFFF
_08015700:
	cmp r1, #0x10
	beq _08015718
	b _08015A0C
_08015706:
	ldr r1, _0801570C @ =sub_801AA54
	b _08015A2E
	.align 2, 0
_0801570C: .4byte sub_801AA54
_08015710:
	ldr r1, _08015714 @ =sub_801AAEC
	b _08015A2E
	.align 2, 0
_08015714: .4byte sub_801AAEC
_08015718:
	ldr r1, _0801571C @ =sub_801AB10
	b _08015A2E
	.align 2, 0
_0801571C: .4byte sub_801AB10
_08015720:
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
	ldr r1, _080157B0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015764
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080157B4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015764:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015786
	ldr r0, _080157B8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080157BC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015786:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08015794
	b _080158E4
_08015794:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _080157C4
	cmp r1, #8
	bls _080157A4
	b _08015A0C
_080157A4:
	cmp r1, #0
	beq _080157AA
	b _08015A3C
_080157AA:
	ldr r1, _080157C0 @ =sub_801BCCC
	b _08015A2E
	.align 2, 0
_080157B0: .4byte gPlayers
_080157B4: .4byte 0xFFBFFFFF
_080157B8: .4byte 0xFF7FFFFF
_080157BC: .4byte 0xFEFFFFFF
_080157C0: .4byte sub_801BCCC
_080157C4:
	ldr r1, _080157C8 @ =sub_801BD1C
	b _08015A2E
	.align 2, 0
_080157C8: .4byte sub_801BD1C
_080157CC:
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
	ldr r1, _08015858 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015810
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801585C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015810:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015832
	ldr r0, _08015860 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015864 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015832:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080158E4
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _0801586C
	cmp r1, #8
	bls _0801584E
	b _08015A0C
_0801584E:
	cmp r1, #0
	beq _08015854
	b _08015A3C
_08015854:
	ldr r1, _08015868 @ =sub_801D7B0
	b _08015A2E
	.align 2, 0
_08015858: .4byte gPlayers
_0801585C: .4byte 0xFFBFFFFF
_08015860: .4byte 0xFF7FFFFF
_08015864: .4byte 0xFEFFFFFF
_08015868: .4byte sub_801D7B0
_0801586C:
	ldr r1, _08015870 @ =sub_801D804
	b _08015A2E
	.align 2, 0
_08015870: .4byte sub_801D804
_08015874:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _0801590C
	subs r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080158F8 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080158C2
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080158FC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080158C2:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080158E4
	ldr r0, _08015900 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015904 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080158E4:
	ldr r1, _08015908 @ =sub_800C87C
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xd
	adds r1, r4, #0
	bl sub_801EBC0
	movs r0, #1
	b _08015A3E
	.align 2, 0
_080158F8: .4byte gPlayers
_080158FC: .4byte 0xFFBFFFFF
_08015900: .4byte 0xFF7FFFFF
_08015904: .4byte 0xFEFFFFFF
_08015908: .4byte sub_800C87C
_0801590C:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x80
	bne _0801599C
	ldr r0, [r4, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801599C
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
	ldr r1, _08015988 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015962
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0801598C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015962:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015984
	ldr r0, _08015990 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015994 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015984:
	ldr r1, _08015998 @ =sub_801E888
	b _08015A2E
	.align 2, 0
_08015988: .4byte gPlayers
_0801598C: .4byte 0xFFBFFFFF
_08015990: .4byte 0xFF7FFFFF
_08015994: .4byte 0xFEFFFFFF
_08015998: .4byte sub_801E888
_0801599C:
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
	ldr r1, _08015A14 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080159E0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08015A18 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080159E0:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015A02
	ldr r0, _08015A1C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015A20 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015A02:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08015A24
_08015A0C:
	cmp r1, #0x18
	beq _08015A2C
	b _08015A3C
	.align 2, 0
_08015A14: .4byte gPlayers
_08015A18: .4byte 0xFFBFFFFF
_08015A1C: .4byte 0xFF7FFFFF
_08015A20: .4byte 0xFEFFFFFF
_08015A24:
	ldr r1, _08015A28 @ =sub_801E69C
	b _08015A2E
	.align 2, 0
_08015A28: .4byte sub_801E69C
_08015A2C:
	ldr r1, _08015A38 @ =Player_8009780
_08015A2E:
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	b _08015A3E
	.align 2, 0
_08015A38: .4byte Player_8009780
_08015A3C:
	movs r0, #0
_08015A3E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8015A44
sub_8015A44: @ 0x08015A44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08015B70 @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0x1c
	ands r0, r2
	cmp r0, #8
	bne _08015A72
	b _08015C80
_08015A72:
	cmp r0, #0x14
	bne _08015A78
	b _08015C80
_08015A78:
	ldr r0, _08015B74 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08015A82
	b _08015C80
_08015A82:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08015A90
	b _08015C80
_08015A90:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08015A9E
	b _08015C80
_08015A9E:
	movs r2, #0
	mov sb, r2
_08015AA2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r7
	lsls r1, r1, #4
	ldr r2, _08015B70 @ =gPlayers
	adds r4, r1, r2
	mov r8, r0
	cmp r4, r5
	bne _08015ABE
	b _08015C6E
_08015ABE:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0x14
	bne _08015ACE
	b _08015C6E
_08015ACE:
	cmp r1, #8
	bne _08015AD4
	b _08015C6E
_08015AD4:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08015AE2
	b _08015C6E
_08015AE2:
	ldr r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #0x16
	ands r0, r2
	cmp r0, #0
	beq _08015AF0
	b _08015C6E
_08015AF0:
	ands r1, r2
	cmp r1, #0
	beq _08015AF8
	b _08015C6E
_08015AF8:
	ldr r2, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bge _08015B12
	rsbs r2, r2, #0
_08015B12:
	cmp r2, #0x40
	ble _08015B18
	b _08015C6E
_08015B18:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08015B22
	rsbs r0, r0, #0
_08015B22:
	cmp r0, #0x40
	ble _08015B28
	b _08015C6E
_08015B28:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015BB4
	ldr r6, _08015B74 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08015B44
	b _08015C66
_08015B44:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	beq _08015B78
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0xa
	beq _08015B56
	b _08015C66
_08015B56:
	adds r0, r5, #0
	bl sub_8015C90
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0x78
	strh r1, [r0]
	ldr r2, _08015B74 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08015B6E
	b _08015C80
_08015B6E:
	b _08015B9C
	.align 2, 0
_08015B70: .4byte gPlayers
_08015B74: .4byte gStageData
_08015B78:
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0xa
	beq _08015C66
	adds r0, r5, #0
	bl Player_8014550
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015B96
	ldrb r6, [r6, #6]
	cmp r0, r6
	bne _08015C80
_08015B96:
	mov r3, sb
	lsls r0, r3, #0x18
	b _08015BFA
_08015B9C:
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	mov r3, r8
	asrs r0, r3, #0x10
	cmp r1, r0
	beq _08015BB0
	ldrb r0, [r2, #6]
	cmp r1, r0
	bne _08015C80
_08015BB0:
	ldrb r0, [r2, #6]
	b _08015C42
_08015BB4:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C08
	ldr r6, _08015BDC @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08015BE0
	cmp r4, sl
	beq _08015C66
	adds r0, r5, #0
	bl Player_8014550
	b _08015C80
	.align 2, 0
_08015BDC: .4byte gStageData
_08015BE0:
	adds r0, r5, #0
	bl Player_8014550
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015BF6
	ldrb r6, [r6, #6]
	cmp r0, r6
	bne _08015C80
_08015BF6:
	mov r1, sb
	lsls r0, r1, #0x18
_08015BFA:
	lsrs r0, r0, #0x18
	bl sub_80276A8
	adds r0, r4, #0
	bl sub_80293E8
	b _08015C80
_08015C08:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C54
	adds r0, r5, #0
	bl sub_8015C90
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0x78
	strh r1, [r0]
	ldr r1, _08015C50 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08015C80
	adds r0, r1, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015C40
	ldrb r2, [r1, #6]
	cmp r0, r2
	bne _08015C80
_08015C40:
	ldrb r0, [r1, #6]
_08015C42:
	bl sub_80276A8
	adds r0, r5, #0
	bl sub_80293E8
	b _08015C80
	.align 2, 0
_08015C50: .4byte gStageData
_08015C54:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C6E
_08015C66:
	adds r0, r5, #0
	bl sub_8015C90
	b _08015C80
_08015C6E:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08015C80
	b _08015AA2
_08015C80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015C90
sub_8015C90: @ 0x08015C90
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

	thumb_func_start sub_8015D7C
sub_8015D7C: @ 0x08015D7C
	push {r4, r5, lr}
	sub sp, #0xd8
	adds r5, r0, #0
	ldr r2, _08015DBC @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #6
	bne _08015DB8
	ldrb r0, [r2, #4]
	cmp r0, #3
	bne _08015DB8
	ldr r0, [r5, #4]
	ldr r1, _08015DC0 @ =0x59000200
	ands r0, r1
	cmp r0, #0
	bne _08015DB8
	ldr r4, _08015DC4 @ =gCamera
	ldr r3, _08015DC8 @ =gUnknown_080D05A8
	ldrh r0, [r2, #0xe]
	lsls r2, r0, #2
	adds r1, r2, r3
	ldr r0, [r4, #0x1c]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08015DB8
	adds r0, r3, #2
	adds r0, r2, r0
	ldr r1, [r4, #0x14]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08015DCC
_08015DB8:
	movs r0, #0
	b _08015E00
	.align 2, 0
_08015DBC: .4byte gStageData
_08015DC0: .4byte 0x59000200
_08015DC4: .4byte gCamera
_08015DC8: .4byte gUnknown_080D05A8
_08015DCC:
	ldr r1, _08015E08 @ =gUnknown_080CE6CC
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _08015DFE
	ldr r2, [r5]
_08015DE0:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	add r0, sp
	ldr r0, [r0]
	cmp r2, r0
	beq _08015DB8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0xe
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	bne _08015DE0
_08015DFE:
	movs r0, #1
_08015E00:
	add sp, #0xd8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015E08: .4byte gUnknown_080CE6CC

	thumb_func_start sub_8015E0C
sub_8015E0C: @ 0x08015E0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08015E3C @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	bne _08015E20
	bl _0801679C
_08015E20:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _08015E32
	bl _0801679C
_08015E32:
	lsls r0, r0, #2
	ldr r1, _08015E40 @ =_08015E44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015E3C: .4byte gStageData
_08015E40: .4byte _08015E44
_08015E44: @ jump table
	.4byte _08015E58 @ case 0
	.4byte _080160B4 @ case 1
	.4byte _080162EC @ case 2
	.4byte _08016418 @ case 3
	.4byte _08016550 @ case 4
_08015E58:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _08015E66
	b _0801655C
_08015E66:
	ldrh r0, [r4, #0x1e]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x40
	beq _08015E78
	cmp r1, #0x80
	beq _08015F04
	ldr r1, [r4, #0xc]
	b _08015F90
_08015E78:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08015E86
	b _08015F90
_08015E86:
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
	ldr r1, _08015EF0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015EC8
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08015EF4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015EC8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015EEA
	ldr r0, _08015EF8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015EFC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015EEA:
	ldr r1, _08015F00 @ =sub_801A120
	bl _0801677C
	.align 2, 0
_08015EF0: .4byte gPlayers
_08015EF4: .4byte 0xFFBFFFFF
_08015EF8: .4byte 0xFF7FFFFF
_08015EFC: .4byte 0xFEFFFFFF
_08015F00: .4byte sub_801A120
_08015F04:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08015F90
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
	ldr r1, _08015F7C @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015F52
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08015F80 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015F52:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015F74
	ldr r0, _08015F84 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015F88 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015F74:
	ldr r1, _08015F8C @ =sub_801A17C
	bl _0801677C
	.align 2, 0
_08015F7C: .4byte gPlayers
_08015F80: .4byte 0xFFBFFFFF
_08015F84: .4byte 0xFF7FFFFF
_08015F88: .4byte 0xFEFFFFFF
_08015F8C: .4byte sub_801A17C
_08015F90:
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _08015FAA
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08016034
	bl _0801679C
_08015FAA:
	ldr r5, [r4, #4]
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	beq _08015FB8
	bl _0801679C
_08015FB8:
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
	ldr r1, _08016020 @ =gPlayers
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015FFA
	adds r0, r4, #0
	adds r0, #0x42
	strh r5, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08016024 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015FFA:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801601C
	ldr r0, _08016028 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r6, #4]
	ldr r1, _0801602C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6, #4]
_0801601C:
	ldr r1, _08016030 @ =Player_8006424
	b _0801677C
	.align 2, 0
_08016020: .4byte gPlayers
_08016024: .4byte 0xFFBFFFFF
_08016028: .4byte 0xFF7FFFFF
_0801602C: .4byte 0xFEFFFFFF
_08016030: .4byte Player_8006424
_08016034:
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
	ldr r1, _080160A0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016078
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080160A4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016078:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801609A
	ldr r0, _080160A8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080160AC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_0801609A:
	ldr r1, _080160B0 @ =sub_801A0C0
	b _0801677C
	.align 2, 0
_080160A0: .4byte gPlayers
_080160A4: .4byte 0xFFBFFFFF
_080160A8: .4byte 0xFF7FFFFF
_080160AC: .4byte 0xFEFFFFFF
_080160B0: .4byte sub_801A0C0
_080160B4:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	ldr r1, [r4, #0xc]
	cmp r0, #0x80
	bne _08016148
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08016148
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
	ldr r1, _08016134 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801610E
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08016138 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801610E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016130
	ldr r0, _0801613C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016140 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016130:
	ldr r1, _08016144 @ =sub_801A46C
	b _0801677C
	.align 2, 0
_08016134: .4byte gPlayers
_08016138: .4byte 0xFFBFFFFF
_0801613C: .4byte 0xFF7FFFFF
_08016140: .4byte 0xFEFFFFFF
_08016144: .4byte sub_801A46C
_08016148:
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r2, r3, #0
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _080161EC
	cmp r2, r0
	bhi _08016166
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _0801616E
	b _0801679C
_08016166:
	cmp r2, r3
	bne _0801616C
	b _0801626C
_0801616C:
	b _0801679C
_0801616E:
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
	ldr r1, _080161D8 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080161B2
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080161DC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080161B2:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080161D4
	ldr r0, _080161E0 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080161E4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080161D4:
	ldr r1, _080161E8 @ =sub_801AB34
	b _0801677C
	.align 2, 0
_080161D8: .4byte gPlayers
_080161DC: .4byte 0xFFBFFFFF
_080161E0: .4byte 0xFF7FFFFF
_080161E4: .4byte 0xFEFFFFFF
_080161E8: .4byte sub_801AB34
_080161EC:
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
	ldr r1, _08016258 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016230
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801625C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016230:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016252
	ldr r0, _08016260 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016264 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016252:
	ldr r1, _08016268 @ =sub_801AB58
	b _0801677C
	.align 2, 0
_08016258: .4byte gPlayers
_0801625C: .4byte 0xFFBFFFFF
_08016260: .4byte 0xFF7FFFFF
_08016264: .4byte 0xFEFFFFFF
_08016268: .4byte sub_801AB58
_0801626C:
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
	ldr r1, _080162D8 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080162B0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080162DC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080162B0:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080162D2
	ldr r0, _080162E0 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080162E4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080162D2:
	ldr r1, _080162E8 @ =sub_801AB7C
	b _0801677C
	.align 2, 0
_080162D8: .4byte gPlayers
_080162DC: .4byte 0xFFBFFFFF
_080162E0: .4byte 0xFF7FFFFF
_080162E4: .4byte 0xFEFFFFFF
_080162E8: .4byte sub_801AB7C
_080162EC:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _080162FA
	b _0801655C
_080162FA:
	ldr r1, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08016314
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _0801639C
	b _0801679C
_08016314:
	ldr r0, [r4, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08016320
	b _0801679C
_08016320:
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
	ldr r1, _08016388 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016362
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0801638C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016362:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016384
	ldr r0, _08016390 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016394 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016384:
	ldr r1, _08016398 @ =Player_8006424
	b _0801677C
	.align 2, 0
_08016388: .4byte gPlayers
_0801638C: .4byte 0xFFBFFFFF
_08016390: .4byte 0xFF7FFFFF
_08016394: .4byte 0xFEFFFFFF
_08016398: .4byte Player_8006424
_0801639C:
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
	ldr r1, _08016404 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080163DE
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08016408 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080163DE:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016400
	ldr r0, _0801640C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016410 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016400:
	ldr r1, _08016414 @ =sub_801BD84
	b _0801677C
	.align 2, 0
_08016404: .4byte gPlayers
_08016408: .4byte 0xFFBFFFFF
_0801640C: .4byte 0xFF7FFFFF
_08016410: .4byte 0xFEFFFFFF
_08016414: .4byte sub_801BD84
_08016418:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _08016426
	b _0801655C
_08016426:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	ldr r1, [r4, #0xc]
	cmp r0, #0x80
	bne _080164B8
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080164B8
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
	ldr r1, _080164A4 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801647E
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _080164A8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801647E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080164A0
	ldr r0, _080164AC @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080164B0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080164A0:
	ldr r1, _080164B4 @ =sub_801D84C
	b _0801677C
	.align 2, 0
_080164A4: .4byte gPlayers
_080164A8: .4byte 0xFFBFFFFF
_080164AC: .4byte 0xFF7FFFFF
_080164B0: .4byte 0xFEFFFFFF
_080164B4: .4byte sub_801D84C
_080164B8:
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	beq _080164C8
	b _0801679C
_080164C8:
	ldr r5, [r4, #4]
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	beq _080164D4
	b _0801679C
_080164D4:
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
	ldr r1, _0801653C @ =gPlayers
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016516
	adds r0, r4, #0
	adds r0, #0x42
	strh r5, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08016540 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016516:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016538
	ldr r0, _08016544 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r6, #4]
	ldr r1, _08016548 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6, #4]
_08016538:
	ldr r1, _0801654C @ =Player_8006424
	b _0801677C
	.align 2, 0
_0801653C: .4byte gPlayers
_08016540: .4byte 0xFFBFFFFF
_08016544: .4byte 0xFF7FFFFF
_08016548: .4byte 0xFEFFFFFF
_0801654C: .4byte Player_8006424
_08016550:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _080165E8
_0801655C:
	subs r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080165D4 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801659E
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080165D8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801659E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080165C0
	ldr r0, _080165DC @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080165E0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080165C0:
	ldr r1, _080165E4 @ =sub_800C910
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xd
	adds r1, r4, #0
	bl sub_801EBC0
	movs r0, #1
	b _0801679E
	.align 2, 0
_080165D4: .4byte gPlayers
_080165D8: .4byte 0xFFBFFFFF
_080165DC: .4byte 0xFF7FFFFF
_080165E0: .4byte 0xFEFFFFFF
_080165E4: .4byte sub_800C910
_080165E8:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	ldr r1, [r4, #0xc]
	cmp r0, #0x80
	bne _0801667C
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0801667C
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
	ldr r1, _08016668 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016640
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0801666C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016640:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016662
	ldr r0, _08016670 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016674 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016662:
	ldr r1, _08016678 @ =sub_801E7BC
	b _0801677C
	.align 2, 0
_08016668: .4byte gPlayers
_0801666C: .4byte 0xFFBFFFFF
_08016670: .4byte 0xFF7FFFFF
_08016674: .4byte 0xFEFFFFFF
_08016678: .4byte sub_801E7BC
_0801667C:
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _08016694
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08016714
	b _0801679C
_08016694:
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
	ldr r1, _08016700 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080166D8
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08016704 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080166D8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080166FA
	ldr r0, _08016708 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _0801670C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080166FA:
	ldr r1, _08016710 @ =sub_801E6F4
	b _0801677C
	.align 2, 0
_08016700: .4byte gPlayers
_08016704: .4byte 0xFFBFFFFF
_08016708: .4byte 0xFF7FFFFF
_0801670C: .4byte 0xFEFFFFFF
_08016710: .4byte sub_801E6F4
_08016714:
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
	ldr r1, _08016788 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016758
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801678C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016758:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801677A
	ldr r0, _08016790 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016794 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_0801677A:
	ldr r1, _08016798 @ =sub_801E758
_0801677C:
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	b _0801679E
	.align 2, 0
_08016788: .4byte gPlayers
_0801678C: .4byte 0xFFBFFFFF
_08016790: .4byte 0xFF7FFFFF
_08016794: .4byte 0xFEFFFFFF
_08016798: .4byte sub_801E758
_0801679C:
	movs r0, #0
_0801679E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80167A4
sub_80167A4: @ 0x080167A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080167D0 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _080167B6
	b _08016CFC
_080167B6:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _080167C6
	b _08016CFC
_080167C6:
	lsls r0, r0, #2
	ldr r1, _080167D4 @ =_080167D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080167D0: .4byte gStageData
_080167D4: .4byte _080167D8
_080167D8: @ jump table
	.4byte _080167EC @ case 0
	.4byte _080168B0 @ case 1
	.4byte _08016978 @ case 2
	.4byte _08016B84 @ case 3
	.4byte _08016C44 @ case 4
_080167EC:
	ldr r0, [r5, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	subs r1, #0x80
	cmp r0, r1
	beq _080167FC
	b _08016CFC
_080167FC:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016884 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016840
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016888 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016840:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016862
	ldr r0, _0801688C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016890 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016862:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08016898
	ldr r4, _08016894 @ =Player_8007620
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_08016884: .4byte gPlayers
_08016888: .4byte 0xFFBFFFFF
_0801688C: .4byte 0xFF7FFFFF
_08016890: .4byte 0xFEFFFFFF
_08016894: .4byte Player_8007620
_08016898:
	ldr r4, _080168AC @ =sub_8019B4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_080168AC: .4byte sub_8019B4C
_080168B0:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016930 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080168F4
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016934 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080168F4:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016916
	ldr r0, _08016938 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _0801693C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016916:
	ldr r0, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _08016950
	cmp r0, r1
	bhi _08016940
	cmp r0, #0x80
	beq _08016946
	b _08016CFC
	.align 2, 0
_08016930: .4byte gPlayers
_08016934: .4byte 0xFFBFFFFF
_08016938: .4byte 0xFF7FFFFF
_0801693C: .4byte 0xFEFFFFFF
_08016940:
	cmp r0, r2
	beq _08016964
	b _08016CFC
_08016946:
	ldr r1, _0801694C @ =sub_801A9EC
	b _08016CEE
	.align 2, 0
_0801694C: .4byte sub_801A9EC
_08016950:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801695C
	b _08016CFC
_0801695C:
	ldr r1, _08016960 @ =sub_801ABA0
	b _08016CEE
	.align 2, 0
_08016960: .4byte sub_801ABA0
_08016964:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016970
	b _08016CFC
_08016970:
	ldr r1, _08016974 @ =sub_801ABA0
	b _08016CEE
	.align 2, 0
_08016974: .4byte sub_801ABA0
_08016978:
	ldr r4, [r5, #4]
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	bne _08016984
	b _08016A94
_08016984:
	ldr r0, [r5, #0xc]
	movs r6, #0x80
	lsls r6, r6, #0xe
	ands r6, r0
	cmp r6, #0
	beq _08016A10
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080169FC @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080169D4
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016A00 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080169D4:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080169F6
	ldr r0, _08016A04 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016A08 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080169F6:
	ldr r1, _08016A0C @ =sub_801BF6C
	b _08016CEE
	.align 2, 0
_080169FC: .4byte gPlayers
_08016A00: .4byte 0xFFBFFFFF
_08016A04: .4byte 0xFF7FFFFF
_08016A08: .4byte 0xFEFFFFFF
_08016A0C: .4byte sub_801BF6C
_08016A10:
	movs r7, #0x80
	lsls r7, r7, #0xf
	ands r0, r7
	cmp r0, #0
	bne _08016A1C
	b _08016CFC
_08016A1C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016A80 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	ands r0, r7
	cmp r0, #0
	beq _08016A5A
	adds r0, r5, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r5, #4]
	ldr r1, _08016A84 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016A5A:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016A7C
	ldr r0, _08016A88 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016A8C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016A7C:
	ldr r1, _08016A90 @ =sub_801AE70
	b _08016CEE
	.align 2, 0
_08016A80: .4byte gPlayers
_08016A84: .4byte 0xFFBFFFFF
_08016A88: .4byte 0xFF7FFFFF
_08016A8C: .4byte 0xFEFFFFFF
_08016A90: .4byte sub_801AE70
_08016A94:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016B10 @ =gPlayers
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016AD6
	adds r0, r5, #0
	adds r0, #0x42
	strh r4, [r0]
	ldr r0, [r5, #4]
	ldr r1, _08016B14 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016AD6:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016AF8
	ldr r0, _08016B18 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r6, #4]
	ldr r1, _08016B1C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6, #4]
_08016AF8:
	ldr r1, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r1, r2
	cmp r1, #0x80
	beq _08016B38
	cmp r1, #0x80
	bhi _08016B20
	cmp r1, #0
	beq _08016B2E
	b _08016CFC
	.align 2, 0
_08016B10: .4byte gPlayers
_08016B14: .4byte 0xFFBFFFFF
_08016B18: .4byte 0xFF7FFFFF
_08016B1C: .4byte 0xFEFFFFFF
_08016B20:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08016B40
	cmp r1, r2
	beq _08016B7C
	b _08016CFC
_08016B2E:
	ldr r1, _08016B34 @ =sub_801BDD8
	b _08016CEE
	.align 2, 0
_08016B34: .4byte sub_801BDD8
_08016B38:
	ldr r1, _08016B3C @ =sub_801ADF4
	b _08016CEE
	.align 2, 0
_08016B3C: .4byte sub_801ADF4
_08016B40:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08016B64
	ldr r4, _08016B60 @ =Player_8007620
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_08016B60: .4byte Player_8007620
_08016B64:
	ldr r4, _08016B78 @ =sub_801BEA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_08016B78: .4byte sub_801BEA0
_08016B7C:
	ldr r1, _08016B80 @ =sub_801BF08
	b _08016CEE
	.align 2, 0
_08016B80: .4byte sub_801BF08
_08016B84:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016BF8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016BC8
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016BFC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016BC8:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016BEA
	ldr r0, _08016C00 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016C04 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016BEA:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016C0C
	ldr r1, _08016C08 @ =sub_801D950
	b _08016CEE
	.align 2, 0
_08016BF8: .4byte gPlayers
_08016BFC: .4byte 0xFFBFFFFF
_08016C00: .4byte 0xFF7FFFFF
_08016C04: .4byte 0xFEFFFFFF
_08016C08: .4byte sub_801D950
_08016C0C:
	ldr r0, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _08016C34
	cmp r0, r1
	bhi _08016C26
	cmp r0, #0x80
	beq _08016C2C
	b _08016CFC
_08016C26:
	cmp r0, r2
	beq _08016C3C
	b _08016CFC
_08016C2C:
	ldr r1, _08016C30 @ =sub_801D8A8
	b _08016CEE
	.align 2, 0
_08016C30: .4byte sub_801D8A8
_08016C34:
	ldr r1, _08016C38 @ =sub_801C348
	b _08016CEE
	.align 2, 0
_08016C38: .4byte sub_801C348
_08016C3C:
	ldr r1, _08016C40 @ =sub_801C2D8
	b _08016CEE
	.align 2, 0
_08016C40: .4byte sub_801C2D8
_08016C44:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016CC4 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl Player_StopSong
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016C88
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016CC8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016C88:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016CAA
	ldr r0, _08016CCC @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016CD0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016CAA:
	ldr r0, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _08016CE4
	cmp r0, r1
	bhi _08016CD4
	cmp r0, #0x80
	beq _08016CDA
	b _08016CFC
	.align 2, 0
_08016CC4: .4byte gPlayers
_08016CC8: .4byte 0xFFBFFFFF
_08016CCC: .4byte 0xFF7FFFFF
_08016CD0: .4byte 0xFEFFFFFF
_08016CD4:
	cmp r0, r2
	beq _08016CEC
	b _08016CFC
_08016CDA:
	ldr r1, _08016CE0 @ =sub_801E828
	b _08016CEE
	.align 2, 0
_08016CE0: .4byte sub_801E828
_08016CE4:
	ldr r1, _08016CE8 @ =sub_801E038
	b _08016CEE
	.align 2, 0
_08016CE8: .4byte sub_801E038
_08016CEC:
	ldr r1, _08016CF8 @ =sub_801E8E0
_08016CEE:
	adds r0, r5, #0
	bl SetPlayerCallback
_08016CF4:
	movs r0, #1
	b _08016CFE
	.align 2, 0
_08016CF8: .4byte sub_801E8E0
_08016CFC:
	movs r0, #0
_08016CFE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8016D04
sub_8016D04: @ 0x08016D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08016D2C @ =sub_800BBA0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x9e
	bl Player_PlaySong
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0xe
	strb r0, [r1]
	adds r4, #0x57
	movs r0, #0x78
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016D2C: .4byte sub_800BBA0

	thumb_func_start sub_8016D30
sub_8016D30: @ 0x08016D30
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	eors r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ands r0, r4
	cmp r0, #0
	beq _08016D54
	ldrh r0, [r2, #0x1a]
	rsbs r0, r0, #0
	strh r0, [r2, #0x1a]
_08016D54:
	ldrh r3, [r2, #0x1a]
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	movs r1, #0xf0
	lsls r1, r1, #4
	cmp r0, r1
	ble _08016D64
	adds r3, r1, #0
_08016D64:
	strh r3, [r2, #0x1a]
	ldr r0, [r2, #4]
	ands r0, r4
	cmp r0, #0
	beq _08016D78
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	subs r0, r0, r1
	b _08016D80
_08016D78:
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
_08016D80:
	str r0, [r2, #0x14]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8016D88
sub_8016D88: @ 0x08016D88
	push {lr}
	adds r2, r0, #0
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #2
	bne _08016DE8
	ldr r3, _08016DBC @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r0, [r3, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08016DE8
	ldrb r0, [r3, #3]
	cmp r0, #7
	beq _08016DEC
	ldr r1, [r2, #0xc]
	movs r0, #6
	ands r1, r0
	cmp r1, #4
	beq _08016DD0
	cmp r1, #4
	bhi _08016DC0
	cmp r1, #2
	beq _08016DC6
	b _08016DE8
	.align 2, 0
_08016DBC: .4byte gStageData
_08016DC0:
	cmp r1, #6
	beq _08016DD8
	b _08016DE8
_08016DC6:
	ldr r1, _08016DCC @ =Player_800872C
	b _08016DDA
	.align 2, 0
_08016DCC: .4byte Player_800872C
_08016DD0:
	ldr r1, _08016DD4 @ =sub_801DFC4
	b _08016DDA
	.align 2, 0
_08016DD4: .4byte sub_801DFC4
_08016DD8:
	ldr r1, _08016DE4 @ =sub_801E65C
_08016DDA:
	adds r0, r2, #0
	bl SetPlayerCallback
	b _08016DF4
	.align 2, 0
_08016DE4: .4byte sub_801E65C
_08016DE8:
	movs r0, #0
	b _08016DF6
_08016DEC:
	ldr r1, _08016DFC @ =Player_800872C
	adds r0, r2, #0
	bl SetPlayerCallback
_08016DF4:
	movs r0, #1
_08016DF6:
	pop {r1}
	bx r1
	.align 2, 0
_08016DFC: .4byte Player_800872C

	thumb_func_start sub_8016E00
sub_8016E00: @ 0x08016E00
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x4e
	ldrh r1, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08016E16
	subs r0, r1, #1
	b _08016E40
_08016E16:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08016E42
	movs r0, #0x1c
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08016E30
	rsbs r1, r1, #0
_08016E30:
	ldr r0, _08016E48 @ =0x000001DF
	cmp r1, r0
	bgt _08016E42
	ldr r1, _08016E4C @ =Player_800DAF4
	adds r0, r2, #0
	bl SetPlayerCallback
	movs r0, #0x1e
_08016E40:
	strh r0, [r4]
_08016E42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016E48: .4byte 0x000001DF
_08016E4C: .4byte Player_800DAF4

	thumb_func_start sub_8016E50
sub_8016E50: @ 0x08016E50
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016E64
	ldrh r0, [r2, #0x1a]
	adds r0, #0xc
	b _08016E68
_08016E64:
	ldrh r0, [r2, #0x1a]
	adds r0, #0x2a
_08016E68:
	strh r0, [r2, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8016E70
sub_8016E70: @ 0x08016E70
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08016E8A
	adds r0, r4, #0
	bl sub_8012C34
	adds r0, r4, #0
	bl sub_8012CF8
	b _08016E96
_08016E8A:
	adds r0, r4, #0
	bl sub_8012CF8
	adds r0, r4, #0
	bl sub_8012C34
_08016E96:
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08016EA6
	ldr r0, _08016EAC @ =0xFFF7FFFF
	ands r1, r0
	str r1, [r4, #4]
_08016EA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016EAC: .4byte 0xFFF7FFFF

	thumb_func_start sub_8016EB0
sub_8016EB0: @ 0x08016EB0
	push {lr}
	adds r1, r0, #0
	adds r1, #0x26
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	bge _08016EC8
	adds r1, #2
	cmp r1, #0
	ble _08016ED4
	b _08016ED2
_08016EC8:
	cmp r1, #0
	ble _08016ED4
	subs r1, #2
	cmp r1, #0
	bge _08016ED4
_08016ED2:
	movs r1, #0
_08016ED4:
	adds r0, #0x26
	strb r1, [r0]
	pop {r0}
	bx r0

	thumb_func_start sub_8016EDC
sub_8016EDC: @ 0x08016EDC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x40
	bne _08016F20
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08016F20
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08016F20
	ldr r0, [r2, #4]
	ldr r1, _08016F18 @ =0x00020006
	ands r0, r1
	cmp r0, #0
	bne _08016F20
	ldr r1, _08016F1C @ =Player_80082BC
	adds r0, r2, #0
	bl SetPlayerCallback
	movs r0, #1
	b _08016F22
	.align 2, 0
_08016F18: .4byte 0x00020006
_08016F1C: .4byte Player_80082BC
_08016F20:
	movs r0, #0
_08016F22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016F28
sub_8016F28: @ 0x08016F28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016F98 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl Player_StopSong
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016F6E
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08016F9C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016F6E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016F90
	ldr r0, _08016FA0 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016FA4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016F90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016F98: .4byte gPlayers
_08016F9C: .4byte 0xFFBFFFFF
_08016FA0: .4byte 0xFF7FFFFF
_08016FA4: .4byte 0xFEFFFFFF

	thumb_func_start sub_8016FA8
sub_8016FA8: @ 0x08016FA8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _08016FE4 @ =gCamera
	ldr r4, [r2, #0x14]
	ldr r3, _08016FE8 @ =gStageData
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08016FEC @ =gPlayers
	adds r1, r1, r0
	cmp r2, r1
	beq _08016FCC
	ldrb r0, [r3, #4]
	cmp r0, #1
	beq _08016FFA
_08016FCC:
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08016FF0
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	cmp r4, r0
	bgt _08016FFA
_08016FE0:
	movs r0, #1
	b _08016FFC
	.align 2, 0
_08016FE4: .4byte gCamera
_08016FE8: .4byte gStageData
_08016FEC: .4byte gPlayers
_08016FF0:
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	subs r0, #1
	cmp r4, r0
	bge _08016FE0
_08016FFA:
	movs r0, #0
_08016FFC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8017004
sub_8017004: @ 0x08017004
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #0x20
	bne _0801704C
	ldr r0, _08017030 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08017038
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08017038
	ldr r1, _08017034 @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08017040
	.align 2, 0
_08017030: .4byte gStageData
_08017034: .4byte Player_80077CC
_08017038:
	ldr r1, _08017054 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08017040:
	ldrh r0, [r4, #0x18]
	movs r1, #0
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
_0801704C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017054: .4byte Player_8005380

	thumb_func_start sub_8017058
sub_8017058: @ 0x08017058
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08017094 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0801708E
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801708E
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _0801708E
	adds r0, r4, #0
	bl sub_8015E0C
	cmp r0, #0
	bne _08017098
	adds r0, r4, #0
	bl sub_80167A4
	cmp r0, #0
	bne _08017098
_0801708E:
	movs r0, #0
	b _0801709A
	.align 2, 0
_08017094: .4byte gStageData
_08017098:
	movs r0, #1
_0801709A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80170A0
sub_80170A0: @ 0x080170A0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017124 @ =sub_8018238
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017128 @ =sub_8019318
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r5, [r4, #0x28]
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080170E2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r4, #8]
_080170E2:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080170F8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080170F8:
	movs r2, #0
	movs r1, #0
	ldr r0, _0801712C @ =0x00000533
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017130 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017124: .4byte sub_8018238
_08017128: .4byte sub_8019318
_0801712C: .4byte 0x00000533
_08017130: .4byte 0x0000FFFF

	thumb_func_start sub_8017134
sub_8017134: @ 0x08017134
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080171A0 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080171A4 @ =sub_801932C
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _080171A8 @ =0x00000534
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _080171AC @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080171B0
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, #0xe
	b _080171B6
	.align 2, 0
_080171A0: .4byte sub_801952C
_080171A4: .4byte sub_801932C
_080171A8: .4byte 0x00000534
_080171AC: .4byte 0x0000FFFF
_080171B0:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
_080171B6:
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80171C0
sub_80171C0: @ 0x080171C0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017248 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _0801724C @ =sub_8019340
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	adds r3, r5, #0
	adds r3, #0xe0
	ldr r0, [r3]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r4, #8]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08017208
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
_08017208:
	movs r2, #0
	movs r1, #0
	ldr r0, _08017250 @ =0x00000531
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	ldr r0, [r3]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017254 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017248: .4byte sub_801952C
_0801724C: .4byte sub_8019340
_08017250: .4byte 0x00000531
_08017254: .4byte 0x0000FFFF

	thumb_func_start sub_8017258
sub_8017258: @ 0x08017258
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080172E0 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080172E4 @ =sub_8019340
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x19
	bl VramMalloc
	str r0, [r4]
	adds r3, r5, #0
	adds r3, #0xe0
	ldr r0, [r3]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r4, #8]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080172A0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
_080172A0:
	movs r2, #0
	movs r1, #0
	ldr r0, _080172E8 @ =0x00000543
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	ldr r0, [r3]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _080172EC @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080172E0: .4byte sub_801952C
_080172E4: .4byte sub_8019340
_080172E8: .4byte 0x00000543
_080172EC: .4byte 0x0000FFFF

	thumb_func_start sub_80172F0
sub_80172F0: @ 0x080172F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08017354 @ =sub_801957C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017358 @ =sub_8019354
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	str r1, [r4, #8]
	movs r2, #0
	ldr r0, _0801735C @ =0x000003CB
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017360 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	strh r5, [r4, #0x2a]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017354: .4byte sub_801957C
_08017358: .4byte sub_8019354
_0801735C: .4byte 0x000003CB
_08017360: .4byte 0x0000FFFF

	thumb_func_start sub_8017364
sub_8017364: @ 0x08017364
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xd8
	ldr r6, [r4]
	cmp r6, #0
	bne _080173DC
	ldr r0, _080173E4 @ =sub_80182D4
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080173E8 @ =sub_8019368
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r5, [r4, #0x28]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r4, #0x2c]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080173BA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r4, #8]
_080173BA:
	movs r0, #0xf3
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x16]
	ldr r0, _080173EC @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
_080173DC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080173E4: .4byte sub_80182D4
_080173E8: .4byte sub_8019368
_080173EC: .4byte 0x0000FFFF

	thumb_func_start sub_80173F0
sub_80173F0: @ 0x080173F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08017558 @ =sub_801839C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _0801755C @ =sub_8019318
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	movs r0, #0xd
	bl VramMalloc
	adds r6, r0, #0
	str r6, [r7]
	mov r1, r8
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	ldr r2, _08017560 @ =0x0300007C
	adds r1, r5, r2
	movs r4, #0
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldr r0, _08017564 @ =0x03000004
	adds r1, r5, r0
	str r6, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r1, #8]
	ldr r0, _08017568 @ =0x0000038F
	strh r0, [r1, #0xc]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	ldr r0, _0801756C @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	mov sl, r2
	mov r0, sl
	strb r0, [r1, #0x1c]
	movs r2, #0
	strb r2, [r1, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r1, _08017570 @ =0x03000080
	adds r0, r5, r1
	strh r4, [r0]
	ldr r2, _08017574 @ =0x03000082
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #0x30
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #0x30
	adds r0, r5, r2
	strh r4, [r0]
	ldr r0, _08017578 @ =0x0300002C
	adds r1, r5, r0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r6, r2
	str r6, [r1]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r1, #8]
	ldr r0, _08017568 @ =0x0000038F
	strh r0, [r1, #0xc]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #0x18]
	movs r0, #2
	strb r0, [r1, #0x1a]
	subs r0, #3
	strb r0, [r1, #0x1b]
	mov r2, sl
	strb r2, [r1, #0x1c]
	strb r4, [r1, #0x1f]
	mov r6, sb
	str r6, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	mov r1, r8
	ldrh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r1, [r1, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #1
	mov r8, r4
	ldr r6, _0801757C @ =gSineTable
	mov sl, r6
	ldr r0, _08017580 @ =0x000003FF
	mov sb, r0
_080174F0:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	lsls r4, r3, #2
	adds r0, r7, #0
	adds r0, #0x80
	adds r0, r0, r4
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x82
	adds r0, r0, r4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0xb0
	adds r1, r1, r4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r5, r6
	lsls r0, r0, #1
	add r0, sl
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r2, r2, #0x12
	adds r2, #8
	asrs r0, r2
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0xb2
	adds r1, r1, r4
	lsls r0, r5, #1
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	asrs r0, r2
	strh r0, [r1]
	adds r5, #0xe0
	mov r6, sb
	ands r5, r6
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0xb
	ble _080174F0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017558: .4byte sub_801839C
_0801755C: .4byte sub_8019318
_08017560: .4byte 0x0300007C
_08017564: .4byte 0x03000004
_08017568: .4byte 0x0000038F
_0801756C: .4byte 0x0000FFFF
_08017570: .4byte 0x03000080
_08017574: .4byte 0x03000082
_08017578: .4byte 0x0300002C
_0801757C: .4byte gSineTable
_08017580: .4byte 0x000003FF

	thumb_func_start sub_8017584
sub_8017584: @ 0x08017584
	push {r4, lr}
	mov ip, r0
	ldr r1, _080175A8 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	beq _08017600
	ldrb r0, [r1, #3]
	cmp r0, #5
	bhi _08017600
	ldr r0, _080175AC @ =gPlayers
	cmp ip, r0
	bne _080175B4
	movs r1, #0x8a
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080175B0 @ =0x06012800
	b _080175BC
	.align 2, 0
_080175A8: .4byte gStageData
_080175AC: .4byte gPlayers
_080175B0: .4byte 0x06012800
_080175B4:
	movs r1, #0x8a
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08017608 @ =0x06013000
_080175BC:
	str r0, [r1]
	movs r1, #0x8a
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	ldr r4, _0801760C @ =gUnknown_08E2EAF4
	ldrh r2, [r4]
	movs r3, #0
	movs r0, #0
	strh r2, [r1, #0xc]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	ldr r0, _08017610 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, ip
	strb r3, [r0]
	ldr r0, _08017614 @ =0x0000013D
	add r0, ip
	strb r3, [r0]
_08017600:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017608: .4byte 0x06013000
_0801760C: .4byte gUnknown_08E2EAF4
_08017610: .4byte 0x0000FFFF
_08017614: .4byte 0x0000013D

	thumb_func_start sub_8017618
sub_8017618: @ 0x08017618
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _08017650 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bls _0801762E
	b _08017820
_0801762E:
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801763C
	b _08017820
_0801763C:
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017658
	ldr r1, _08017654 @ =0x0000013D
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	b _08017820
	.align 2, 0
_08017650: .4byte gStageData
_08017654: .4byte 0x0000013D
_08017658:
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _08017660
	b _08017820
_08017660:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080176A6
	ldr r0, [r6, #4]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0x80
	bne _080176A6
	movs r5, #0x80
_080176A6:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r2, #0xf
	adds r7, r2, #0
	ands r7, r0
	adds r7, #1
	movs r1, #0xf0
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
	cmp r5, #0
	bne _080176D4
	strb r5, [r3]
	ldr r1, _080176D0 @ =0x0000013D
	adds r0, r6, r1
	strb r5, [r0]
	b _08017820
	.align 2, 0
_080176D0: .4byte 0x0000013D
_080176D4:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _080176F4 @ =0x0000013D
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r5
	beq _0801775C
	cmp r5, #0x20
	beq _08017714
	cmp r5, #0x20
	bgt _080176F8
	cmp r5, #0x10
	beq _08017724
	b _08017820
	.align 2, 0
_080176F4: .4byte 0x0000013D
_080176F8:
	cmp r5, #0x40
	beq _08017702
	cmp r5, #0x80
	beq _0801773C
	b _08017820
_08017702:
	ldr r0, _08017710 @ =gUnknown_08E2EAF4
	ldrh r1, [r0, #8]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #0xa]
	strb r0, [r4, #0x1a]
	b _0801774E
	.align 2, 0
_08017710: .4byte gUnknown_08E2EAF4
_08017714:
	ldr r0, _08017720 @ =gUnknown_08E2EAF4
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #6]
	b _0801772C
	.align 2, 0
_08017720: .4byte gUnknown_08E2EAF4
_08017724:
	ldr r0, _08017738 @ =gUnknown_08E2EAF4
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #2]
_0801772C:
	strb r0, [r4, #0x1a]
	adds r0, r6, #0
	movs r1, #0x97
	bl Player_PlaySong
	b _0801774E
	.align 2, 0
_08017738: .4byte gUnknown_08E2EAF4
_0801773C:
	ldr r0, _080177AC @ =gUnknown_08E2EAF4
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #0xe]
	strb r0, [r4, #0x1a]
	adds r0, r6, #0
	movs r1, #0x97
	bl Player_PlaySong
_0801774E:
	ldr r0, _080177B0 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _080177B4 @ =0x0000013D
	adds r0, r6, r1
	strb r5, [r0]
_0801775C:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r2, _080177B8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r2, r6, #0
	adds r2, #0xe0
	ldr r0, [r2]
	ldrh r0, [r0, #0x20]
	subs r0, #0x40
	strh r0, [r4, #0x14]
	ldr r0, [r4, #8]
	ldr r1, _080177BC @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r2]
	ldr r0, [r0, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080177C0 @ =gPlayers
	cmp r6, r0
	bne _080177C4
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	beq _080177D0
	movs r0, #1
	mov r8, r0
	b _080177D0
	.align 2, 0
_080177AC: .4byte gUnknown_08E2EAF4
_080177B0: .4byte 0x0000FFFF
_080177B4: .4byte 0x0000013D
_080177B8: .4byte gCamera
_080177BC: .4byte 0xFFFFCFFF
_080177C0: .4byte gPlayers
_080177C4:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	bne _080177D0
	movs r1, #1
	mov r8, r1
_080177D0:
	ldr r0, _080177EC @ =gStageData
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _0801780A
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080177F0
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _080177F8
	.align 2, 0
_080177EC: .4byte gStageData
_080177F0:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_080177F8:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017814
	b _08017820
_0801780A:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08017814:
	mov r0, r8
	cmp r0, #0
	beq _08017820
	adds r0, r4, #0
	bl DisplaySprite
_08017820:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801782C
sub_801782C: @ 0x0801782C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	bgt _080178E8
	cmp r1, #5
	bne _08017860
	ldr r0, _080178F4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080178F8 @ =gPlayers
	adds r0, r0, r1
	cmp r0, r7
	bne _08017860
	ldr r1, _080178FC @ =gUnknown_03001CF0
	movs r0, #0x10
	strb r0, [r1, #4]
_08017860:
	ldr r0, _08017900 @ =sub_80184F8
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017904 @ =sub_80193EC
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	str r7, [r5, #0x2c]
	movs r0, #0
	mov r8, r0
	movs r3, #0
	strh r3, [r5, #0x28]
	ldr r6, _08017908 @ =gUnknown_08E2EAD0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r6, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5]
	ldr r3, [sp, #4]
	str r3, [r5, #8]
	adds r0, r4, r6
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	adds r6, #2
	adds r4, r4, r6
	ldrh r0, [r4]
	strb r0, [r5, #0x1a]
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801790C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r5, #0x12]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x16]
	ldr r0, _08017910 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, r8
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080178E8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080178F4: .4byte gStageData
_080178F8: .4byte gPlayers
_080178FC: .4byte gUnknown_03001CF0
_08017900: .4byte sub_80184F8
_08017904: .4byte sub_80193EC
_08017908: .4byte gUnknown_08E2EAD0
_0801790C: .4byte gCamera
_08017910: .4byte 0x0000FFFF

	thumb_func_start sub_8017914
sub_8017914: @ 0x08017914
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017950 @ =sub_8019698
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017954 @ =sub_8019400
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #0x28]
	adds r4, r0, #0
	ldr r0, _08017958 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _0801795C
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xfa
	lsls r0, r0, #2
	b _08017968
	.align 2, 0
_08017950: .4byte sub_8019698
_08017954: .4byte sub_8019400
_08017958: .4byte gStageData
_0801795C:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _080179B4 @ =0x000003CA
_08017968:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017984
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r4, #8]
_08017984:
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x16]
	ldr r0, _080179B8 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r5, #0
	bl Player_PlaySong
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080179B4: .4byte 0x000003CA
_080179B8: .4byte 0x0000FFFF

	thumb_func_start sub_80179BC
sub_80179BC: @ 0x080179BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0
	beq _08017A3E
	cmp r1, #0x14
	beq _08017A3E
	adds r4, r6, #0
	adds r4, #0xdc
	ldr r5, [r4]
	cmp r5, #0
	bne _08017A3E
	ldr r0, _08017A48 @ =sub_80191C8
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017A4C @ =sub_8019390
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r6, [r4, #0x28]
	movs r0, #8
	bl VramMalloc
	str r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08017A1C
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r2
	str r0, [r4, #8]
_08017A1C:
	movs r1, #0
	ldr r0, _08017A50 @ =0x000005E3
	strh r0, [r4, #0xc]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x16]
	ldr r0, _08017A54 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
_08017A3E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017A48: .4byte sub_80191C8
_08017A4C: .4byte sub_8019390
_08017A50: .4byte 0x000005E3
_08017A54: .4byte 0x0000FFFF

	thumb_func_start sub_8017A58
sub_8017A58: @ 0x08017A58
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0
	beq _08017ADC
	cmp r1, #0x14
	beq _08017ADC
	ldr r0, _08017A9C @ =sub_8019240
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0, #0x28]
	movs r1, #0x1e
	strh r1, [r0, #0x2c]
	adds r3, r0, #0
	ldr r0, _08017AA0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08017AA8
	ldr r0, _08017AA4 @ =0x06014180
	b _08017AAE
	.align 2, 0
_08017A9C: .4byte sub_8019240
_08017AA0: .4byte gStageData
_08017AA4: .4byte 0x06014180
_08017AA8:
	cmp r0, #6
	bne _08017AB0
	ldr r0, _08017AE4 @ =0x060141A0
_08017AAE:
	str r0, [r3]
_08017AB0:
	movs r2, #0
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	ldr r0, _08017AE8 @ =0x00000535
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	ldr r0, _08017AEC @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	ldr r0, _08017AF0 @ =0x000C1200
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
_08017ADC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017AE4: .4byte 0x060141A0
_08017AE8: .4byte 0x00000535
_08017AEC: .4byte 0x0000FFFF
_08017AF0: .4byte 0x000C1200

	thumb_func_start sub_8017AF4
sub_8017AF4: @ 0x08017AF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017B60 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017B64 @ =sub_8019428
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08017B68 @ =0x00000534
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017B6C @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #8
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #9
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08017B70
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, #0xe
	b _08017B76
	.align 2, 0
_08017B60: .4byte sub_801952C
_08017B64: .4byte sub_8019428
_08017B68: .4byte 0x00000534
_08017B6C: .4byte 0x0000FFFF
_08017B70:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
_08017B76:
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8017B80
sub_8017B80: @ 0x08017B80
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017BF0 @ =sub_80195CC
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017BF4 @ =sub_8019464
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #0x28]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	ldr r0, [r4, #4]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _08017BC2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_08017BC2:
	movs r2, #0
	movs r1, #0
	movs r0, #0x2b
	strh r0, [r5, #0xc]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x16]
	ldr r0, _08017BF8 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	strb r3, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017BF0: .4byte sub_80195CC
_08017BF4: .4byte sub_8019464
_08017BF8: .4byte 0x0000FFFF

	thumb_func_start sub_8017BFC
sub_8017BFC: @ 0x08017BFC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08017C98 @ =sub_8018550
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017C9C @ =sub_801948C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	str r6, [r4, #0x28]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	movs r0, #0x6b
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017CA0 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r1, _08017CA4 @ =0x0300002C
	adds r0, r5, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	movs r0, #0
	adds r1, #1
	adds r4, r5, r1
	adds r1, #2
	adds r5, r5, r1
_08017C6C:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	adds r3, r4, r2
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r3]
	adds r2, r5, r2
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #7
	ble _08017C6C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017C98: .4byte sub_8018550
_08017C9C: .4byte sub_801948C
_08017CA0: .4byte 0x0000FFFF
_08017CA4: .4byte 0x0300002C

	thumb_func_start sub_8017CA8
sub_8017CA8: @ 0x08017CA8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017D08 @ =sub_801862C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017D0C @ =sub_80194A0
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [r4, #0x28]
	movs r0, #8
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08017D10 @ =0x0000053F
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017D14 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017D08: .4byte sub_801862C
_08017D0C: .4byte sub_80194A0
_08017D10: .4byte 0x0000053F
_08017D14: .4byte 0x0000FFFF

	thumb_func_start Player_8017D18
Player_8017D18: @ 0x08017D18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017DA4 @ =sub_80186A0
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017DA8 @ =sub_80194B4
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017DAC @ =0x00000525
_08017D4E:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017DB0 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017D4E
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017DA4: .4byte sub_80186A0
_08017DA8: .4byte sub_80194B4
_08017DAC: .4byte 0x00000525
_08017DB0: .4byte 0x0000FFFF

	thumb_func_start sub_8017DB4
sub_8017DB4: @ 0x08017DB4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017E40 @ =sub_8018984
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017E44 @ =sub_8019504
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017E48 @ =0x00000525
_08017DEA:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017E4C @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017DEA
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017E40: .4byte sub_8018984
_08017E44: .4byte sub_8019504
_08017E48: .4byte 0x00000525
_08017E4C: .4byte 0x0000FFFF

	thumb_func_start sub_8017E50
sub_8017E50: @ 0x08017E50
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017EE4 @ =sub_8018AF8
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017EE8 @ =sub_80194C8
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017EEC @ =0x00000525
_08017E8E:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017EF0 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017E8E
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017EE4: .4byte sub_8018AF8
_08017EE8: .4byte sub_80194C8
_08017EEC: .4byte 0x00000525
_08017EF0: .4byte 0x0000FFFF

	thumb_func_start sub_8017EF4
sub_8017EF4: @ 0x08017EF4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017F88 @ =sub_8018C6C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017F8C @ =sub_80194DC
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017F90 @ =0x00000525
_08017F32:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017F94 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017F32
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017F88: .4byte sub_8018C6C
_08017F8C: .4byte sub_80194DC
_08017F90: .4byte 0x00000525
_08017F94: .4byte 0x0000FFFF

	thumb_func_start sub_8017F98
sub_8017F98: @ 0x08017F98
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08018024 @ =sub_8018814
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08018028 @ =sub_80194B4
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _0801802C @ =0x00000525
_08017FCE:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08018030 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017FCE
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018024: .4byte sub_8018814
_08018028: .4byte sub_80194B4
_0801802C: .4byte 0x00000525
_08018030: .4byte 0x0000FFFF

	thumb_func_start sub_8018034
sub_8018034: @ 0x08018034
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080180C8 @ =sub_8018DDC
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080180CC @ =sub_80194DC
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _080180D0 @ =0x00000525
_08018072:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _080180D4 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08018072
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080180C8: .4byte sub_8018DDC
_080180CC: .4byte sub_80194DC
_080180D0: .4byte 0x00000525
_080180D4: .4byte 0x0000FFFF

	thumb_func_start sub_80180D8
sub_80180D8: @ 0x080180D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xd0
	ldr r0, [r4]
	cmp r0, #0
	bne _08018156
	ldr r0, _08018114 @ =sub_8018F90
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08018118 @ =sub_80193E8
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #0x28]
	adds r3, r0, #0
	ldr r0, _0801811C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08018124
	ldr r0, _08018120 @ =0x06014580
	b _08018126
	.align 2, 0
_08018114: .4byte sub_8018F90
_08018118: .4byte sub_80193E8
_0801811C: .4byte gStageData
_08018120: .4byte 0x06014580
_08018124:
	ldr r0, _08018160 @ =0x060145A0
_08018126:
	str r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08018164 @ =0x0000053C
	strh r0, [r3, #0xc]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _08018168 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
_08018156:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018160: .4byte 0x060145A0
_08018164: .4byte 0x0000053C
_08018168: .4byte 0x0000FFFF

	thumb_func_start sub_801816C
sub_801816C: @ 0x0801816C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xd4
	ldr r0, [r1]
	cmp r0, #0
	bne _08018218
	movs r6, #0
	ldr r0, _08018224 @ =gPlayers
	mov r8, r1
	ldr r3, _08018228 @ =sub_8018F90
	adds r7, r5, #0
	adds r7, #0x2a
	cmp r5, r0
	beq _080181B2
	adds r2, r0, #0
_08018192:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _080181B2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r5, r0
	bne _08018192
_080181B2:
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	adds r0, r3, #0
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r5, [r1, #0x28]
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r1, #8]
	ldr r2, _0801822C @ =gUnknown_08E2EB04
	ldrb r0, [r7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	ldr r0, _08018230 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	ldrb r0, [r7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08018234 @ =sub_8019628
	str r0, [r1, #8]
_08018218:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018224: .4byte gPlayers
_08018228: .4byte sub_8018F90
_0801822C: .4byte gUnknown_08E2EB04
_08018230: .4byte 0x0000FFFF
_08018234: .4byte sub_8019628

	thumb_func_start sub_8018238
sub_8018238: @ 0x08018238
	push {r4, lr}
	ldr r2, _08018268 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0xa
	beq _08018254
	cmp r0, #0xf7
	bne _08018260
_08018254:
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801826C
_08018260:
	ldr r0, [r2]
	bl TaskDestroy
	b _080182CE
	.align 2, 0
_08018268: .4byte gCurTask
_0801826C:
	adds r0, r3, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xff
	bgt _08018284
	movs r1, #0
	ldr r0, _08018280 @ =0x00000532
	b _08018288
	.align 2, 0
_08018280: .4byte 0x00000532
_08018284:
	movs r1, #0
	ldr r0, _080182B4 @ =0x00000533
_08018288:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080182B8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r2, r0, r1
	strh r2, [r4, #0x12]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080182BC
	adds r0, r2, #0
	subs r0, #9
	b _080182C0
	.align 2, 0
_080182B4: .4byte 0x00000533
_080182B8: .4byte gCamera
_080182BC:
	adds r0, r2, #0
	adds r0, #9
_080182C0:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080182CE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80182D4
sub_80182D4: @ 0x080182D4
	push {r4, r5, r6, lr}
	ldr r6, _08018324 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4, #0x28]
	ldr r2, [r5, #4]
	ldr r0, _08018328 @ =0x01041000
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bne _0801830A
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	asrs r3, r0, #0x10
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	subs r0, #8
	cmp r3, r0
	blt _0801830A
	adds r0, #0x10
	cmp r3, r0
	ble _08018330
_0801830A:
	ldr r1, _0801832C @ =0x00000119
	adds r0, r5, #0
	bl Player_StopSong
	adds r1, r5, #0
	adds r1, #0xd8
	movs r0, #0
	str r0, [r1]
	ldr r0, [r6]
	bl TaskDestroy
	b _0801838C
	.align 2, 0
_08018324: .4byte gCurTask
_08018328: .4byte 0x01041000
_0801832C: .4byte 0x00000119
_08018330:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08018354
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r2, _08018350 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08018366
	.align 2, 0
_08018350: .4byte gCamera
_08018354:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r2, _08018394 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r1, _08018398 @ =0xFFFFFBFF
	ands r0, r1
_08018366:
	str r0, [r4, #8]
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r0, #2
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801838C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018394: .4byte gCamera
_08018398: .4byte 0xFFFFFBFF

	thumb_func_start sub_801839C
sub_801839C: @ 0x0801839C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080184E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0
	ldr r2, _080184EC @ =0x03000080
	adds r2, r2, r1
	mov sl, r2
	ldr r3, _080184F0 @ =0x03000082
	adds r3, r3, r1
	mov sb, r3
	ldr r5, _080184EC @ =0x03000080
	adds r4, r1, r5
_080183C6:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #2
	adds r1, r4, r3
	adds r0, r7, #0
	adds r0, #0xb0
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x82
	adds r1, r1, r3
	adds r0, r7, #0
	adds r0, #0xb2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xb
	ble _080183C6
	adds r6, r7, #4
	movs r5, #0x7c
	adds r5, r5, r7
	mov r8, r5
	ldr r4, _080184F4 @ =gCamera
	ldr r0, [r4]
	ldrh r1, [r5]
	subs r1, r1, r0
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x10]
	adds r5, r7, #0
	adds r5, #0x7e
	ldr r0, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r6, #0x28
	ldr r0, [r4]
	mov r2, r8
	ldrh r1, [r2]
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	movs r0, #0
	adds r3, r7, #0
	adds r3, #0x54
	str r3, [sp]
	mov ip, r8
	mov r8, r4
	str r5, [sp, #4]
_08018480:
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	lsls r4, r3, #2
	adds r4, #0x54
	adds r4, r7, r4
	mov r5, r8
	ldr r0, [r5]
	mov r5, ip
	ldrh r1, [r5]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r2, r2, r0
	asrs r2, r2, #0xe
	mov r5, sl
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4]
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r5, [sp, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	add r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4, #2]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #9
	ble _08018480
	adds r0, r6, #0
	ldr r1, [sp]
	movs r2, #0xa
	bl DisplaySprites
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080184E8: .4byte gCurTask
_080184EC: .4byte 0x03000080
_080184F0: .4byte 0x03000082
_080184F4: .4byte gCamera

	thumb_func_start sub_80184F8
sub_80184F8: @ 0x080184F8
	push {r4, r5, lr}
	ldr r0, _08018520 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r4, [r3, #0x2c]
	ldrh r0, [r3, #0x28]
	adds r0, #1
	strh r0, [r3, #0x28]
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0x27
	ble _08018524
	adds r0, r2, #0
	bl TaskDestroy
	b _08018546
	.align 2, 0
_08018520: .4byte gCurTask
_08018524:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801854C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	asrs r0, r5, #0x11
	adds r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	adds r0, r3, #0
	bl DisplaySprite
_08018546:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801854C: .4byte gCamera

	thumb_func_start sub_8018550
sub_8018550: @ 0x08018550
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _08018590 @ =gUnknown_080CE7A4
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r2, _08018594 @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r4, [r6, #0x28]
	adds r0, #0x2c
	adds r5, r3, r0
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xaa
	bne _08018588
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bls _08018598
_08018588:
	ldr r0, [r2]
	bl TaskDestroy
	b _08018612
	.align 2, 0
_08018590: .4byte gUnknown_080CE7A4
_08018594: .4byte gCurTask
_08018598:
	ldr r0, _0801861C @ =0x0300002D
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	ldr r0, _08018620 @ =0x0300002E
	adds r0, r0, r3
	mov ip, r0
	add r1, ip
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	ldr r0, _08018624 @ =0x03000030
	adds r7, r3, r0
	adds r1, r7, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1]
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _08018612
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08018612
	movs r0, #0
	ldrsb r0, [r5, r0]
	add r0, sp
	ldrb r0, [r0]
	subs r0, #8
	ldrb r1, [r2]
	subs r1, r1, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	mov r2, ip
	adds r0, r2, r1
	ldr r3, _08018628 @ =gCamera
	ldr r2, [r3]
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r6, #0x10]
	adds r1, r7, r1
	ldr r2, [r3, #4]
	ldrh r0, [r1]
	subs r0, r0, r2
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08018612:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801861C: .4byte 0x0300002D
_08018620: .4byte 0x0300002E
_08018624: .4byte 0x03000030
_08018628: .4byte gCamera

	thumb_func_start sub_801862C
sub_801862C: @ 0x0801862C
	push {r4, lr}
	ldr r0, _08018650 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldrh r0, [r3, #0x30]
	subs r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08018654
	adds r0, r2, #0
	bl TaskDestroy
	b _0801869A
	.align 2, 0
_08018650: .4byte gCurTask
_08018654:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801867C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08018684
	ldr r0, [r4, #8]
	ldr r1, _08018680 @ =0xFFFFFBFF
	ands r0, r1
	b _0801868C
	.align 2, 0
_0801867C: .4byte gCamera
_08018680: .4byte 0xFFFFFBFF
_08018684:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0801868C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801869A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80186A0
sub_80186A0: @ 0x080186A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080186D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r1, #8]
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	cmp r1, #0xfe
	beq _080186D4
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	beq _080186D4
	adds r0, r2, #0
	bl TaskDestroy
	b _08018802
	.align 2, 0
_080186D0: .4byte gCurTask
_080186D4:
	mov r1, r8
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _0801877C
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	beq _0801877C
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, #9
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r2, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	ldr r0, [r7, #4]
	ands r0, r6
	cmp r0, #0
	beq _08018734
	ldr r1, _08018730 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018740
	.align 2, 0
_08018730: .4byte gUnknown_080CE7A8
_08018734:
	ldr r1, _08018764 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018740:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018768
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _0801877A
	.align 2, 0
_08018764: .4byte gUnknown_080CE7A8
_08018768:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
_0801877A:
	strh r0, [r2, #0x2c]
_0801877C:
	movs r2, #0
	ldr r0, _080187C8 @ =gCamera
	mov sb, r0
_08018782:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _080187F4
	adds r5, r4, #0
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080187CC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080187D2
	.align 2, 0
_080187C8: .4byte gCamera
_080187CC:
	ldr r0, [r4, #8]
	ldr r1, _08018810 @ =0xFFFFF7FF
	ands r0, r1
_080187D2:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080187F4
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_080187F4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018782
_08018802:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018810: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018814
sub_8018814: @ 0x08018814
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08018840 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r1, #8]
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _08018844
	adds r0, r2, #0
	bl TaskDestroy
	b _08018972
	.align 2, 0
_08018840: .4byte gCurTask
_08018844:
	mov r1, r8
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _080188EC
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	beq _080188EC
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, #3
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r2, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	ldr r0, [r7, #4]
	ands r0, r6
	cmp r0, #0
	beq _080188A4
	ldr r1, _080188A0 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _080188B0
	.align 2, 0
_080188A0: .4byte gUnknown_080CE7A8
_080188A4:
	ldr r1, _080188D4 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_080188B0:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080188D8
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _080188EA
	.align 2, 0
_080188D4: .4byte gUnknown_080CE7A8
_080188D8:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
_080188EA:
	strh r0, [r2, #0x2c]
_080188EC:
	movs r2, #0
	ldr r0, _08018938 @ =gCamera
	mov sb, r0
_080188F2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018964
	adds r5, r4, #0
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801893C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018942
	.align 2, 0
_08018938: .4byte gCamera
_0801893C:
	ldr r0, [r4, #8]
	ldr r1, _08018980 @ =0xFFFFF7FF
	ands r0, r1
_08018942:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018964
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018964:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080188F2
_08018972:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018980: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018984
sub_8018984: @ 0x08018984
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080189B0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r1, #8]
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldr r0, _080189B4 @ =0x0000010D
	cmp r1, r0
	beq _080189B8
	adds r0, r2, #0
	bl TaskDestroy
	b _08018AE6
	.align 2, 0
_080189B0: .4byte gCurTask
_080189B4: .4byte 0x0000010D
_080189B8:
	mov r1, r8
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _08018A60
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	beq _08018A60
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, #0x11
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r2, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	ldr r0, [r7, #4]
	ands r0, r6
	cmp r0, #0
	beq _08018A18
	ldr r1, _08018A14 @ =gUnknown_080CE7B0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018A24
	.align 2, 0
_08018A14: .4byte gUnknown_080CE7B0
_08018A18:
	ldr r1, _08018A48 @ =gUnknown_080CE7B0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018A24:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018A4C
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018A5E
	.align 2, 0
_08018A48: .4byte gUnknown_080CE7B0
_08018A4C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
_08018A5E:
	strh r0, [r2, #0x2c]
_08018A60:
	movs r2, #0
	ldr r0, _08018AAC @ =gCamera
	mov sb, r0
_08018A66:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018AD8
	adds r5, r4, #0
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018AB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018AB6
	.align 2, 0
_08018AAC: .4byte gCamera
_08018AB0:
	ldr r0, [r4, #8]
	ldr r1, _08018AF4 @ =0xFFFFF7FF
	ands r0, r1
_08018AB6:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018AD8
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018AD8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018A66
_08018AE6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AF4: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018AF8
sub_8018AF8: @ 0x08018AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08018B24 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7, #8]
	mov r8, r0
	movs r3, #0x30
	ldrsh r1, [r0, r3]
	ldr r0, _08018B28 @ =0x00000103
	cmp r1, r0
	beq _08018B2C
	adds r0, r2, #0
	bl TaskDestroy
	b _08018C5A
	.align 2, 0
_08018B24: .4byte gCurTask
_08018B28: .4byte 0x00000103
_08018B2C:
	ldrh r0, [r7, #4]
	adds r1, r0, #1
	strh r1, [r7, #4]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _08018BD4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08018BD4
	movs r1, #4
	ldrsh r0, [r7, r1]
	subs r0, #9
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08018B8C
	ldr r1, _08018B88 @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018B98
	.align 2, 0
_08018B88: .4byte gUnknown_080CE7B8
_08018B8C:
	ldr r1, _08018BBC @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018B98:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018BC0
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018BD2
	.align 2, 0
_08018BBC: .4byte gUnknown_080CE7B8
_08018BC0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2c]
	adds r0, r0, r3
_08018BD2:
	strh r0, [r2, #0x2c]
_08018BD4:
	movs r2, #0
	ldr r0, _08018C20 @ =gCamera
	mov sb, r0
_08018BDA:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r4, r7, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018C4C
	adds r5, r4, #0
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018C24
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018C2A
	.align 2, 0
_08018C20: .4byte gCamera
_08018C24:
	ldr r0, [r4, #8]
	ldr r1, _08018C68 @ =0xFFFFF7FF
	ands r0, r1
_08018C2A:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018C4C
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018C4C:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018BDA
_08018C5A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018C68: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018C6C
sub_8018C6C: @ 0x08018C6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08018C98 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7, #8]
	mov r8, r0
	movs r3, #0x30
	ldrsh r1, [r0, r3]
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	beq _08018C9C
	adds r0, r2, #0
	bl TaskDestroy
	b _08018DCA
	.align 2, 0
_08018C98: .4byte gCurTask
_08018C9C:
	ldrh r0, [r7, #4]
	adds r1, r0, #1
	strh r1, [r7, #4]
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _08018D44
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08018D44
	movs r1, #4
	ldrsh r0, [r7, r1]
	subs r0, #0xd
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08018CFC
	ldr r1, _08018CF8 @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018D08
	.align 2, 0
_08018CF8: .4byte gUnknown_080CE7B8
_08018CFC:
	ldr r1, _08018D2C @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018D08:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018D30
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018D42
	.align 2, 0
_08018D2C: .4byte gUnknown_080CE7B8
_08018D30:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2c]
	adds r0, r0, r3
_08018D42:
	strh r0, [r2, #0x2c]
_08018D44:
	movs r2, #0
	ldr r0, _08018D90 @ =gCamera
	mov sb, r0
_08018D4A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r4, r7, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018DBC
	adds r5, r4, #0
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018D94
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018D9A
	.align 2, 0
_08018D90: .4byte gCamera
_08018D94:
	ldr r0, [r4, #8]
	ldr r1, _08018DD8 @ =0xFFFFF7FF
	ands r0, r1
_08018D9A:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018DBC
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018DBC:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018D4A
_08018DCA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018DD8: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018DDC
sub_8018DDC: @ 0x08018DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08018E14 @ =gCurTask
	ldr r4, [r2]
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7, #8]
	mov r8, r0
	adds r0, #0xe0
	ldr r3, [r0]
	ldrh r1, [r3, #0x18]
	ldr r0, _08018E18 @ =0x000002F7
	cmp r1, r0
	bne _08018E1C
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #2
	bne _08018E1C
	adds r0, r4, #0
	bl TaskDestroy
	b _08018F7E
	.align 2, 0
_08018E14: .4byte gCurTask
_08018E18: .4byte 0x000002F7
_08018E1C:
	mov r3, r8
	movs r0, #0x30
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08018E38
	adds r0, #8
	cmp r1, r0
	beq _08018E38
	ldr r0, [r2]
	bl TaskDestroy
	b _08018F7E
_08018E38:
	ldrh r0, [r7, #4]
	adds r1, r0, #1
	strh r1, [r7, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08018EEE
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08018EEE
	movs r1, #4
	ldrsh r0, [r7, r1]
	subs r0, #0xa
	movs r1, #0xf
	ands r0, r1
	lsrs r5, r0, #2
	adds r0, r5, #0
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08018E98
	ldr r1, _08018E94 @ =gUnknown_080CE7C0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018EA4
	.align 2, 0
_08018E94: .4byte gUnknown_080CE7C0
_08018E98:
	ldr r1, _08018EC8 @ =gUnknown_080CE7C0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018EA4:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018ECC
	lsls r0, r5, #1
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018EDC
	.align 2, 0
_08018EC8: .4byte gUnknown_080CE7C0
_08018ECC:
	lsls r0, r5, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2c]
	adds r0, r0, r3
_08018EDC:
	strh r0, [r2, #0x2c]
	ldr r0, _08018F3C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #8]
	ldr r1, _08018F40 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #8]
_08018EEE:
	movs r2, #0
	ldr r0, _08018F44 @ =gCamera
	mov sb, r0
_08018EF4:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r4, r7, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018F70
	adds r5, r4, #0
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018F48
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018F4E
	.align 2, 0
_08018F3C: .4byte 0x0000FFFF
_08018F40: .4byte 0xFFFFBFFF
_08018F44: .4byte gCamera
_08018F48:
	ldr r0, [r4, #8]
	ldr r1, _08018F8C @ =0xFFFFF7FF
	ands r0, r1
_08018F4E:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018F70
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018F70:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018EF4
_08018F7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018F8C: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018F90
sub_8018F90: @ 0x08018F90
	push {r4, r5, lr}
	ldr r0, _08018FCC @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r2, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08018FD4
	adds r2, r3, #0
	adds r2, #0xd0
	ldr r0, [r2]
	cmp r0, #0
	bne _08018FB8
	b _080190BE
_08018FB8:
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r2]
	ldr r0, _08018FD0 @ =sub_8019150
	str r0, [r1, #8]
	b _080190BE
	.align 2, 0
_08018FCC: .4byte gCurTask
_08018FD0: .4byte sub_8019150
_08018FD4:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08019080
	ldr r0, _08019010 @ =sub_80190C8
	str r0, [r5, #8]
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08019014 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	ldr r0, _08019018 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08019020
	ldr r0, _0801901C @ =0x06014580
	b _08019022
	.align 2, 0
_08019010: .4byte sub_80190C8
_08019014: .4byte gPlayers
_08019018: .4byte gStageData
_0801901C: .4byte 0x06014580
_08019020:
	ldr r0, _08019064 @ =0x060145A0
_08019022:
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r3, #0
	movs r1, #0
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08019068 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r2, #0
	cmp r0, #0
	beq _0801905A
	cmp r0, #3
	beq _0801905A
	cmp r0, #4
	bne _08019070
_0801905A:
	movs r1, #0
	ldr r0, _0801906C @ =0x0000053D
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	b _080190BE
	.align 2, 0
_08019064: .4byte 0x060145A0
_08019068: .4byte 0x0000FFFF
_0801906C: .4byte 0x0000053D
_08019070:
	ldr r0, _0801907C @ =0x0000053D
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	b _080190BE
	.align 2, 0
_0801907C: .4byte 0x0000053D
_08019080:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08019094
	ldr r0, _08019090 @ =0xFFFFFBFF
	ands r1, r0
	b _0801909A
	.align 2, 0
_08019090: .4byte 0xFFFFFBFF
_08019094:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
_0801909A:
	str r1, [r4, #8]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080190C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080190BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080190C4: .4byte gCamera

	thumb_func_start sub_80190C8
sub_80190C8: @ 0x080190C8
	push {r4, lr}
	ldr r0, _08019118 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801911C @ =gPlayers
	adds r3, r0, r1
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019124
	adds r2, #0xd0
	ldr r0, [r2]
	cmp r0, #0
	beq _08019146
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r2]
	ldr r0, _08019120 @ =sub_8019150
	str r0, [r1, #8]
	b _08019146
	.align 2, 0
_08019118: .4byte gCurTask
_0801911C: .4byte gPlayers
_08019120: .4byte sub_8019150
_08019124:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801914C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019146:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801914C: .4byte gCamera

	thumb_func_start sub_8019150
sub_8019150: @ 0x08019150
	push {r4, lr}
	ldr r0, _0801917C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _08019180
	adds r4, r3, #0
	adds r4, #0xd0
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	b _080191BE
	.align 2, 0
_0801917C: .4byte gCurTask
_08019180:
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019194
	ldr r0, _08019190 @ =0xFFFFFBFF
	ands r2, r0
	b _0801919A
	.align 2, 0
_08019190: .4byte 0xFFFFFBFF
_08019194:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
_0801919A:
	str r2, [r4, #8]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080191C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080191BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080191C4: .4byte gCamera

	thumb_func_start sub_80191C8
sub_80191C8: @ 0x080191C8
	push {r4, lr}
	ldr r0, _080191EC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r1, [r3, #0x60]
	cmp r1, #0
	bne _080191F0
	adds r0, r3, #0
	adds r0, #0xdc
	str r1, [r0]
	adds r0, r2, #0
	bl TaskDestroy
	b _08019234
	.align 2, 0
_080191EC: .4byte gCurTask
_080191F0:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801921C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08019220
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08019226
	.align 2, 0
_0801921C: .4byte gCamera
_08019220:
	ldr r0, [r4, #8]
	ldr r1, _0801923C @ =0xFFFFF7FF
	ands r0, r1
_08019226:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019234:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801923C: .4byte 0xFFFFF7FF

	thumb_func_start sub_8019240
sub_8019240: @ 0x08019240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08019280 @ =gUnknown_080CE7C8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r4, _08019284 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x10]
	ldrh r0, [r5, #0x2c]
	subs r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019288
	movs r0, #0x75
	bl sub_8003DF0
	ldr r0, [r4]
	bl TaskDestroy
	b _08019304
	.align 2, 0
_08019280: .4byte gUnknown_080CE7C8
_08019284: .4byte gCurTask
_08019288:
	ldrh r4, [r5, #0x2c]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	movs r2, #1
	add r2, sp
	mov sl, r2
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	ldr r7, _08019314 @ =gCamera
	mov r8, r7
	movs r0, #1
	ands r0, r6
	lsls r0, r0, #2
	mov sb, r0
_080192A8:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	adds r1, r4, r0
	lsls r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	muls r2, r6, r2
	add r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r0, #0
	muls r3, r6, r3
	ldr r7, [sp, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	mov r7, r8
	ldr r0, [r7]
	subs r1, r1, r0
	lsls r2, r2, #0x16
	asrs r2, r2, #0x18
	adds r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldr r0, [r7, #4]
	subs r1, r1, r0
	lsls r3, r3, #0x16
	asrs r3, r3, #0x18
	adds r3, r3, r1
	adds r3, #8
	strh r3, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080192A8
_08019304:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019314: .4byte gCamera

	thumb_func_start sub_8019318
sub_8019318: @ 0x08019318
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801932C
sub_801932C: @ 0x0801932C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019340
sub_8019340: @ 0x08019340
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019354
sub_8019354: @ 0x08019354
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019368
sub_8019368: @ 0x08019368
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801937C
sub_801937C: @ 0x0801937C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019390
sub_8019390: @ 0x08019390
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80193A4
sub_80193A4: @ 0x080193A4
	push {lr}
	adds r2, r0, #0
	adds r2, #0xd0
	ldr r0, [r2]
	cmp r0, #0
	beq _080193C2
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r2]
	ldr r0, _080193C8 @ =sub_8019150
	str r0, [r1, #8]
_080193C2:
	pop {r0}
	bx r0
	.align 2, 0
_080193C8: .4byte sub_8019150

	thumb_func_start sub_80193CC
sub_80193CC: @ 0x080193CC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xd0
	ldr r0, [r4]
	cmp r0, #0
	beq _080193E0
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_080193E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80193E8
sub_80193E8: @ 0x080193E8
	bx lr
	.align 2, 0

	thumb_func_start sub_80193EC
sub_80193EC: @ 0x080193EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019400
sub_8019400: @ 0x08019400
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019414
sub_8019414: @ 0x08019414
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019428
sub_8019428: @ 0x08019428
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801943C
sub_801943C: @ 0x0801943C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019450
sub_8019450: @ 0x08019450
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019464
sub_8019464: @ 0x08019464
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019478
sub_8019478: @ 0x08019478
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801948C
sub_801948C: @ 0x0801948C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194A0
sub_80194A0: @ 0x080194A0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194B4
sub_80194B4: @ 0x080194B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194C8
sub_80194C8: @ 0x080194C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194DC
sub_80194DC: @ 0x080194DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194F0
sub_80194F0: @ 0x080194F0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019504
sub_8019504: @ 0x08019504
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019518
sub_8019518: @ 0x08019518
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801952C
sub_801952C: @ 0x0801952C
	push {r4, lr}
	ldr r0, _08019550 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019554
	adds r0, r2, #0
	bl TaskDestroy
	b _08019572
	.align 2, 0
_08019550: .4byte gCurTask
_08019554:
	ldr r2, _08019578 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019572:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019578: .4byte gCamera

	thumb_func_start sub_801957C
sub_801957C: @ 0x0801957C
	push {r4, lr}
	ldr r0, _080195A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080195A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080195C2
	.align 2, 0
_080195A0: .4byte gCurTask
_080195A4:
	ldr r2, _080195C8 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080195C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080195C8: .4byte gCamera

	thumb_func_start sub_80195CC
sub_80195CC: @ 0x080195CC
	push {r4, lr}
	ldr r0, _080195F8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080195F0
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0xa7
	beq _080195FC
_080195F0:
	adds r0, r2, #0
	bl TaskDestroy
	b _0801961E
	.align 2, 0
_080195F8: .4byte gCurTask
_080195FC:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _08019624 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801961E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019624: .4byte gCamera

	thumb_func_start sub_8019628
sub_8019628: @ 0x08019628
	push {r4, r5, lr}
	ldr r0, _08019664 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	adds r4, r0, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801966C
	adds r4, r1, #0
	adds r4, #0xd0
	ldr r0, [r4]
	cmp r0, #0
	beq _08019690
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r4]
	ldr r0, _08019668 @ =sub_8019150
	str r0, [r1, #8]
	b _08019690
	.align 2, 0
_08019664: .4byte gCurTask
_08019668: .4byte sub_8019150
_0801966C:
	movs r5, #0x80
	lsls r5, r5, #0x11
	ands r5, r2
	cmp r5, #0
	bne _08019684
	adds r4, r1, #0
	adds r4, #0xd4
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
	b _08019690
_08019684:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8019698
sub_8019698: @ 0x08019698
	push {r4, r5, r6, lr}
	ldr r6, _080196C4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x28]
	ldr r1, [r4]
	ldr r0, _080196C8 @ =Player_800BD88
	cmp r1, r0
	beq _080196CC
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r4, #0
	bl Player_StopSong
	ldr r0, [r6]
	bl TaskDestroy
	b _080196F8
	.align 2, 0
_080196C4: .4byte gCurTask
_080196C8: .4byte Player_800BD88
_080196CC:
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r4, #0
	bl Player_PlayOrContinueSong
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r2, _08019700 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080196F8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019700: .4byte gCamera

	thumb_func_start sub_8019704
sub_8019704: @ 0x08019704
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019718
sub_8019718: @ 0x08019718
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08019734 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #6
	bne _08019738
	adds r1, r5, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	b _08019846
	.align 2, 0
_08019734: .4byte gStageData
_08019738:
	ldrb r0, [r5, #9]
	cmp r0, #8
	beq _08019758
	ldrb r0, [r5, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08019754 @ =gPlayers
	adds r1, r1, r0
	cmp r1, r6
	bne _08019846
	b _0801975E
	.align 2, 0
_08019754: .4byte gPlayers
_08019758:
	ldr r0, _0801980C @ =gPlayers
	cmp r6, r0
	bne _08019846
_0801975E:
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r4]
	cmp r0, #0
	bne _08019846
	ldr r0, _08019810 @ =Task_80198A8
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r1, _08019814 @ =TaskDestructor_8019A78
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r3, r1, r0
	ldrb r0, [r5, #3]
	cmp r0, #5
	bls _08019792
	cmp r0, #6
	bne _08019796
_08019792:
	ldr r0, _08019818 @ =0x06012000
	str r0, [r3]
_08019796:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	strh r1, [r3, #0xc]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _0801981C @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r2, #2
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	strh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	strh r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r2, [r0]
	ldr r0, _08019820 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	beq _0801982C
	ldr r1, _08019824 @ =gUnknown_080CE7E2
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _08019828 @ =gPlayerCharacterIdleAnims
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	bl sub_8019AB4
	b _08019834
	.align 2, 0
_0801980C: .4byte gPlayers
_08019810: .4byte Task_80198A8
_08019814: .4byte TaskDestructor_8019A78
_08019818: .4byte 0x06012000
_0801981C: .4byte 0x0000FFFF
_08019820: .4byte gStageData
_08019824: .4byte gUnknown_080CE7E2
_08019828: .4byte gPlayerCharacterIdleAnims
_0801982C:
	ldr r0, _08019850 @ =0x00000521
	movs r1, #0x10
	bl sub_8019AB4
_08019834:
	ldr r0, _08019854 @ =gUnknown_03001BF0
	adds r1, r0, #0
	adds r1, #0xc0
	str r6, [r1]
	adds r0, #0xc4
	movs r1, #0
	strb r1, [r0]
	bl sub_8019A7C
_08019846:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019850: .4byte 0x00000521
_08019854: .4byte gUnknown_03001BF0

	thumb_func_start sub_8019858
sub_8019858: @ 0x08019858
	push {r4, r5, r6, lr}
	ldr r2, _080198A4 @ =gUnknown_03001BF0
	adds r4, r2, #0
	adds r4, #0xc4
	ldrb r1, [r4]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r2
	adds r2, r0, #0
	adds r2, #0xe0
	ldr r5, [r2]
	adds r6, r5, #0
	adds r6, #0xc
	adds r1, #1
	movs r2, #7
	ands r1, r2
	strb r1, [r4]
	ldr r1, [r0, #0x10]
	str r1, [r3]
	ldr r1, [r0, #0x14]
	str r1, [r3, #4]
	ldr r1, [r6, #8]
	str r1, [r3, #8]
	ldr r1, [r0, #4]
	str r1, [r3, #0xc]
	ldrh r1, [r0, #0x34]
	strh r1, [r3, #0x10]
	ldrh r1, [r5]
	strh r1, [r3, #0x12]
	ldrh r0, [r0, #0x36]
	strb r0, [r3, #0x14]
	ldrb r0, [r6, #0x1c]
	strb r0, [r3, #0x15]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080198A4: .4byte gUnknown_03001BF0

	thumb_func_start Task_80198A8
Task_80198A8: @ 0x080198A8
	push {r4, r5, r6, lr}
	ldr r0, _0801991C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r4, _08019920 @ =gUnknown_03001BF0
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080198CC
	b _08019A50
_080198CC:
	ldr r1, _08019924 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080198DA
	b _08019A50
_080198DA:
	ldrb r0, [r1, #9]
	cmp r0, #8
	bne _080198F0
	ldr r0, _08019928 @ =gPlayers
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080198F0
	b _08019A50
_080198F0:
	adds r0, r4, #0
	adds r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0801992C @ =0x0300003C
	adds r3, r2, r0
	ldrb r2, [r3]
	adds r0, r2, #0
	subs r0, #8
	subs r1, r1, r0
	movs r0, #7
	ands r1, r0
	movs r0, #6
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r0, r4
	cmp r2, #6
	bne _08019930
	movs r0, #2
	b _08019932
	.align 2, 0
_0801991C: .4byte gCurTask
_08019920: .4byte gUnknown_03001BF0
_08019924: .4byte gStageData
_08019928: .4byte gPlayers
_0801992C: .4byte 0x0300003C
_08019930:
	adds r0, r2, #2
_08019932:
	strb r0, [r3]
	adds r4, r6, #0
	adds r4, #0xc
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #0x14]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _080199B0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x12]
	strh r0, [r6]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, [r4, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080199DA
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r2, _080199B4 @ =gNextFreeAffineIndex
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080199B8
	movs r0, #0x80
	lsls r0, r0, #1
	b _080199BC
	.align 2, 0
_080199B0: .4byte gCamera
_080199B4: .4byte gNextFreeAffineIndex
_080199B8:
	movs r0, #0xff
	lsls r0, r0, #8
_080199BC:
	strh r0, [r6, #2]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080199D0
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r6, #2]
_080199D0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _080199FC
_080199DA:
	movs r2, #0x40
	rsbs r2, r2, #0
	ands r2, r1
	str r2, [r4, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080199F6
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	b _080199FA
_080199F6:
	ldr r0, _08019A18 @ =0xFFFFF7FF
	ands r2, r0
_080199FA:
	str r2, [r4, #8]
_080199FC:
	ldr r0, _08019A1C @ =gStageData
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08019A3A
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08019A20
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _08019A28
	.align 2, 0
_08019A18: .4byte 0xFFFFF7FF
_08019A1C: .4byte gStageData
_08019A20:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_08019A28:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019A44
	b _08019A50
_08019A3A:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08019A44:
	movs r0, #1
	cmp r0, #0
	beq _08019A50
	adds r0, r4, #0
	bl DisplaySprite
_08019A50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_BoostModeEngage
Player_BoostModeEngage: @ 0x08019A58
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start Player_BoostModeDisengage
Player_BoostModeDisengage: @ 0x08019A64
	adds r3, r0, #0
	adds r3, #0x2b
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	bx lr
    
	thumb_func_start TaskDestructor_8019A78
TaskDestructor_8019A78: @ 0x08019A78
	bx lr
	.align 2, 0

	thumb_func_start sub_8019A7C
sub_8019A7C: @ 0x08019A7C
	push {r4, lr}
	ldr r1, _08019AB0 @ =gUnknown_03001BF0
	movs r3, #0
	movs r2, #0
	movs r4, #0x10
_08019A86:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x12]
	strb r2, [r1, #0x14]
	strb r4, [r1, #0x15]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, #0x18
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08019A86
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019AB0: .4byte gUnknown_03001BF0

	thumb_func_start sub_8019AB4
sub_8019AB4: @ 0x08019AB4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _08019B04 @ =gAnimations
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0]
	ldm r2!, {r1}
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019B3A
	ldm r2!, {r1}
	ldr r5, [r2]
	lsrs r4, r5, #0x10
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xff
	ands r5, r0
	ldr r6, _08019B08 @ =gFlags
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08019B10
	ldr r0, _08019B0C @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	bl CopyPalette
	b _08019B3A
	.align 2, 0
_08019B04: .4byte gAnimations
_08019B08: .4byte gFlags
_08019B0C: .4byte gRefSpriteTables
_08019B10:
	ldr r2, _08019B40 @ =0x040000D4
	ldr r0, _08019B44 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r4, #1
	ldr r1, _08019B48 @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	lsls r0, r5, #1
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r6]
_08019B3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019B40: .4byte 0x040000D4
_08019B44: .4byte gRefSpriteTables
_08019B48: .4byte gObjPalette

	thumb_func_start sub_8019B4C
sub_8019B4C: @ 0x08019B4C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08019BAC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FF0
	movs r2, #0
	movs r1, #0
	movs r0, #0xab
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x26
	strb r2, [r0]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019BC0
	ldrh r1, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	ldr r2, _08019BB0 @ =0xFFFFFC00
	cmp r0, r2
	ble _08019BF2
	adds r0, r1, r2
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08019BB4 @ =0xFFFFFA00
	cmp r1, r0
	bge _08019BB8
	movs r0, #0xfa
	lsls r0, r0, #8
	b _08019BF0
	.align 2, 0
_08019BAC: .4byte 0xFFFFBFFF
_08019BB0: .4byte 0xFFFFFC00
_08019BB4: .4byte 0xFFFFFA00
_08019BB8:
	cmp r1, r2
	ble _08019BF2
	strh r2, [r5, #0x18]
	b _08019BF2
_08019BC0:
	ldrh r1, [r5, #0x18]
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	ldr r2, _08019BE4 @ =0x000003FF
	cmp r0, r2
	bgt _08019BF2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, r3
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08019BE8
	strh r1, [r5, #0x18]
	b _08019BF2
	.align 2, 0
_08019BE4: .4byte 0x000003FF
_08019BE8:
	cmp r0, r2
	bgt _08019BF2
	movs r0, #0x80
	lsls r0, r0, #3
_08019BF0:
	strh r0, [r5, #0x18]
_08019BF2:
	ldr r0, _08019C1C @ =0x0000FE80
	strh r0, [r5, #0x1a]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #4
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x70
	bl Player_PlaySong
	ldr r4, _08019C20 @ =sub_8019CF0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019C1C: .4byte 0x0000FE80
_08019C20: .4byte sub_8019CF0

	thumb_func_start sub_8019C24
sub_8019C24: @ 0x08019C24
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08019C6C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019C78
	ldrh r2, [r5, #0x18]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	ldr r1, _08019C70 @ =0xFFFFFD00
	cmp r0, r1
	ble _08019C9A
	adds r0, r2, r1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08019C74 @ =0xFFFFFB00
	cmp r0, r1
	bge _08019C9A
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #0x18]
	b _08019C9A
	.align 2, 0
_08019C6C: .4byte 0xFFFFBFFF
_08019C70: .4byte 0xFFFFFD00
_08019C74: .4byte 0xFFFFFB00
_08019C78:
	ldrh r2, [r5, #0x18]
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	ldr r0, _08019CBC @ =0x000002FF
	cmp r1, r0
	bgt _08019C9A
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08019C9A
	strh r1, [r5, #0x18]
_08019C9A:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldr r0, [r5, #4]
	ldr r1, _08019CC0 @ =0x00008004
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08019CC4
	cmp r0, #4
	beq _08019CCA
	b _08019CD6
	.align 2, 0
_08019CBC: .4byte 0x000002FF
_08019CC0: .4byte 0x00008004
_08019CC4:
	movs r0, #0xa9
	strh r0, [r5, #0x30]
	b _08019CD6
_08019CCA:
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8018034
_08019CD6:
	ldr r4, _08019CEC @ =sub_801A224
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019CEC: .4byte sub_801A224

	thumb_func_start sub_8019CF0
sub_8019CF0: @ 0x08019CF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	beq _08019D44
	cmp r0, #1
	bne _08019D5E
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D5E
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl Player_8012FE0
	ldr r0, [r4, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08019D3C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08019D40 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08019D94
	.align 2, 0
_08019D3C: .4byte 0xFFFFBFFF
_08019D40: .4byte Player_800DAF4
_08019D44:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D5E
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	movs r0, #0x14
	strh r0, [r1]
_08019D5E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D94
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019D94
	ldr r1, _08019D9C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08019D94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019D9C: .4byte Player_8005380

	thumb_func_start sub_8019DA0
sub_8019DA0: @ 0x08019DA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08019DC0
	ldrh r0, [r4, #0x1c]
	adds r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08019DCE
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _08019DCE
_08019DC0:
	ldrh r0, [r4, #0x1c]
	subs r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08019DCE
	strh r1, [r4, #0x1c]
_08019DCE:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08019DE8
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08019E38
_08019DE8:
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08019E20 @ =sub_8019E94
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019E28
	ldr r1, _08019E24 @ =0x00000213
	adds r0, r4, #0
	bl Player_PlaySong
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x40
	b _08019E36
	.align 2, 0
_08019E20: .4byte sub_8019E94
_08019E24: .4byte 0x00000213
_08019E28:
	adds r0, r4, #0
	movs r1, #0x6f
	bl Player_PlaySong
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x20
_08019E36:
	strh r0, [r1]
_08019E38:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019E84
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08019E84
	ldr r1, _08019E8C @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, _08019E90 @ =0x00000213
	adds r0, r4, #0
	bl Player_StopSong
	adds r0, r4, #0
	movs r1, #0x6f
	bl Player_StopSong
_08019E84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019E8C: .4byte Player_800DB30
_08019E90: .4byte 0x00000213

	thumb_func_start sub_8019E94
sub_8019E94: @ 0x08019E94
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08019EB4
	ldrh r0, [r4, #0x1c]
	adds r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08019EC2
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _08019EC2
_08019EB4:
	ldrh r0, [r4, #0x1c]
	subs r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08019EC2
	strh r1, [r4, #0x1c]
_08019EC2:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _08019EF4
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldr r1, _08019F74 @ =sub_801A1D4
	adds r0, r4, #0
	bl SetPlayerCallback
_08019EF4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019F6E
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08019F40
	ldr r1, _08019F78 @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, _08019F7C @ =0x00000213
	adds r0, r4, #0
	bl Player_StopSong
	adds r0, r4, #0
	movs r1, #0x6f
	bl Player_StopSong
_08019F40:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, r5
	beq _08019F6E
	ldr r0, [r4, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08019F6E
	adds r0, r3, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r1, #7
	ands r1, r0
	cmp r1, #7
	bne _08019F6E
	adds r0, r4, #0
	bl sub_8017AF4
_08019F6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019F74: .4byte sub_801A1D4
_08019F78: .4byte Player_800DB30
_08019F7C: .4byte 0x00000213

	thumb_func_start sub_8019F80
sub_8019F80: @ 0x08019F80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019F9E
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _08019F9E
	adds r0, #1
	strh r0, [r4, #0x36]
_08019F9E:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019FEA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08019FEA
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r0, [r4, #4]
	ldr r1, _08019FF0 @ =0xFFFF7FFD
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _08019FF4 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_08019FEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019FF0: .4byte 0xFFFF7FFD
_08019FF4: .4byte Player_800DAF4

	thumb_func_start sub_8019FF8
sub_8019FF8: @ 0x08019FF8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A030 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r5, #4]
	movs r0, #0xa5
	strh r0, [r5, #0x30]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801A034
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801A038
	.align 2, 0
_0801A030: .4byte 0xFFFFBFFF
_0801A034:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801A038:
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x5a
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0801A058 @ =sub_8019DA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A058: .4byte sub_8019DA0

	thumb_func_start sub_801A05C
sub_801A05C: @ 0x0801A05C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A094 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r5, #4]
	movs r0, #0xa6
	strh r0, [r5, #0x30]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801A098
	movs r0, #0xfb
	lsls r0, r0, #8
	b _0801A09C
	.align 2, 0
_0801A094: .4byte 0xFFFFBFFF
_0801A098:
	movs r0, #0xa0
	lsls r0, r0, #3
_0801A09C:
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x5a
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _0801A0BC @ =sub_8019DA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A0BC: .4byte sub_8019DA0

	thumb_func_start sub_801A0C0
sub_801A0C0: @ 0x0801A0C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A114 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801A118 @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xa7
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x10
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x71
	bl Player_PlaySong
	adds r0, r4, #0
	bl sub_8017B80
	ldr r5, _0801A11C @ =sub_801A280
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A114: .4byte 0xFFFFBFFF
_0801A118: .4byte 0x00008006
_0801A11C: .4byte sub_801A280

	thumb_func_start sub_801A120
sub_801A120: @ 0x0801A120
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A170 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801A174 @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xac
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0x70
	bl Player_PlaySong
	ldr r5, _0801A178 @ =sub_8019F80
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A170: .4byte 0xFFFFBFFF
_0801A174: .4byte 0x00008006
_0801A178: .4byte sub_8019F80

	thumb_func_start sub_801A17C
sub_801A17C: @ 0x0801A17C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A1C8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801A1CC @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xaa
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8017BFC
	ldr r5, _0801A1D0 @ =sub_801A2DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A1C8: .4byte 0xFFFFBFFF
_0801A1CC: .4byte 0x00008004
_0801A1D0: .4byte sub_801A2DC

	thumb_func_start sub_801A1D4
sub_801A1D4: @ 0x0801A1D4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A1F0
	ldr r1, _0801A220 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A1F0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A21A
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801A21A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A220: .4byte Player_8005380

	thumb_func_start sub_801A224
sub_801A224: @ 0x0801A224
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A242
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801A242
	movs r0, #1
	strh r0, [r4, #0x36]
_0801A242:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A278
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801A278:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A280
sub_801A280: @ 0x0801A280
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A2D0
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A2D0
	ldr r1, _0801A2D8 @ =sub_800DF10
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A2D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A2D8: .4byte sub_800DF10

	thumb_func_start sub_801A2DC
sub_801A2DC: @ 0x0801A2DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A324
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A324
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _0801A324
	adds r0, #1
	strh r0, [r4, #0x36]
	strh r1, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	ldr r1, _0801A32C @ =sub_801A330
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A324:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A32C: .4byte sub_801A330

	thumb_func_start sub_801A330
sub_801A330: @ 0x0801A330
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A37C
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801A37C
	strh r1, [r4, #0x18]
	ldr r0, _0801A384 @ =0x0000FB80
	strh r0, [r4, #0x1a]
	ldr r1, _0801A388 @ =sub_801A38C
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0xdf
	bl Player_PlaySong
_0801A37C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A384: .4byte 0x0000FB80
_0801A388: .4byte sub_801A38C

	thumb_func_start sub_801A38C
sub_801A38C: @ 0x0801A38C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A3D2
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801A3D2
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl Player_8012FE0
	ldr r1, _0801A3D8 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A3D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A3D8: .4byte Player_800DAF4

	thumb_func_start sub_801A3DC
sub_801A3DC: @ 0x0801A3DC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A3FC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
_0801A3FC:
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0801A416
	cmp r0, #2
	beq _0801A41A
	b _0801A41E
_0801A416:
	movs r0, #0xc5
	b _0801A41C
_0801A41A:
	movs r0, #0xdb
_0801A41C:
	strh r0, [r5, #0x30]
_0801A41E:
	movs r1, #0
	strh r1, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2f
	movs r0, #1
	strb r0, [r2]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A460 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _0801A464 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801A468 @ =sub_801A644
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A460: .4byte 0xFFFFBFFF
_0801A464: .4byte 0x00040004
_0801A468: .4byte sub_801A644

	thumb_func_start sub_801A46C
sub_801A46C: @ 0x0801A46C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A48C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
_0801A48C:
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A4B4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0801A4B8
	cmp r0, #2
	beq _0801A4C6
	b _0801A4CA
	.align 2, 0
_0801A4B4: .4byte 0xFFFFBFFF
_0801A4B8:
	movs r0, #0xbb
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0xe6
	bl Player_PlaySong
	b _0801A4CA
_0801A4C6:
	movs r0, #0xdd
	strh r0, [r5, #0x30]
_0801A4CA:
	adds r2, r5, #0
	adds r2, #0x2f
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ldr r1, _0801A4FC @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801A500 @ =sub_801AD10
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A4FC: .4byte 0x00040004
_0801A500: .4byte sub_801AD10

	thumb_func_start sub_801A504
sub_801A504: @ 0x0801A504
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
	adds r0, r5, #0
	bl sub_8016F28
	ldr r0, [r5, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	movs r0, #0xc1
	strh r0, [r5, #0x30]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0xff
	bgt _0801A554
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
_0801A554:
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1a]
	movs r0, #0
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	ldr r4, _0801A59C @ =sub_801A87C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A59C: .4byte sub_801A87C

	thumb_func_start sub_801A5A0
sub_801A5A0: @ 0x0801A5A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801A5CC @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0801A5D4
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801A5D0 @ =sub_801AC04
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801A63C
	.align 2, 0
_0801A5CC: .4byte gStageData
_0801A5D0: .4byte sub_801AC04
_0801A5D4:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801A5FC
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A5FC
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_0801A5FC:
	adds r0, r4, #0
	bl sub_8014940
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0x7f
	bgt _0801A61E
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x1a]
_0801A61E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A63C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801A63C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A644
sub_801A644: @ 0x0801A644
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r2, #0x9c
	lsls r2, r2, #3
	cmp r0, #0
	beq _0801A65A
	movs r2, #0xa8
	lsls r2, r2, #2
_0801A65A:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801A680
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A680
	movs r0, #1
	strh r0, [r4, #0x36]
	rsbs r1, r2, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #0x1a]
_0801A680:
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #1
	bne _0801A6A4
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0801A6A4
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r1, _0801A6A0 @ =sub_800DF10
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801A6DA
	.align 2, 0
_0801A6A0: .4byte sub_800DF10
_0801A6A4:
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0801A6DA
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A6DA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801A6DA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801A6E0
sub_801A6E0: @ 0x0801A6E0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801A724
	subs r0, r2, #1
	strh r0, [r1]
	ldr r0, _0801A71C @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801A724
	movs r0, #0xbf
	strh r0, [r4, #0x30]
	ldr r1, _0801A720 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0xe3
	bl Player_StopSong
	b _0801A7F0
	.align 2, 0
_0801A71C: .4byte gStageData
_0801A720: .4byte Player_800DAF4
_0801A724:
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	cmp r0, #1
	beq _0801A756
	ldrh r3, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801A750
	adds r0, r3, #0
	subs r0, #0x18
	strh r0, [r4, #0x1a]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801A786
_0801A750:
	movs r0, #1
	strb r0, [r2]
	b _0801A786
_0801A756:
	ldr r0, _0801A7B4 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801A780
	movs r3, #0x1a
	ldrsh r1, [r4, r3]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801A780
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0801A780
	movs r0, #2
	strb r0, [r2]
_0801A780:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801A786:
	adds r0, r4, #0
	bl sub_801A7FC
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0801A796
	rsbs r1, r1, #0
_0801A796:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	ble _0801A7C4
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0801A7B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #1
	subs r0, r1, r0
	b _0801A7C2
	.align 2, 0
_0801A7B4: .4byte gStageData
_0801A7B8:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r1, r0
_0801A7C2:
	strh r0, [r4, #0x18]
_0801A7C4:
	adds r0, r4, #0
	bl sub_800E04C
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A7F0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801A7F0
	adds r0, r4, #0
	movs r1, #0xe3
	bl Player_StopSong
	ldr r1, _0801A7F8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A7F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A7F8: .4byte Player_8005380

	thumb_func_start sub_801A7FC
sub_801A7FC: @ 0x0801A7FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801A824
	movs r0, #0xbe
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0xe3
	bl Player_StopSong
	movs r0, #5
	adds r1, r4, #0
	bl sub_801EBC0
	b _0801A874
_0801A824:
	ldrh r2, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801A838
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A84A
_0801A838:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801A84E
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A84E
_0801A84A:
	movs r0, #0xbd
	b _0801A86A
_0801A84E:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xbd
	bne _0801A868
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A86C
_0801A868:
	movs r0, #0xbc
_0801A86A:
	strh r0, [r4, #0x30]
_0801A86C:
	adds r0, r4, #0
	movs r1, #0xe3
	bl Player_PlayOrContinueSong
_0801A874:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A87C
sub_801A87C: @ 0x0801A87C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801A894
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _0801A92A
_0801A894:
	adds r0, r4, #0
	bl sub_8015460
	movs r1, #0x18
	ldrsh r2, [r4, r1]
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	movs r1, #0x1a
	ldrsh r2, [r4, r1]
	ldr r1, [r4, #0x14]
	adds r1, r1, r2
	str r1, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bhi _0801A918
	lsls r0, r0, #2
	ldr r1, _0801A8C0 @ =_0801A8C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A8C0: .4byte _0801A8C4
_0801A8C4: @ jump table
	.4byte _0801A8D8 @ case 0
	.4byte _0801A8DE @ case 1
	.4byte _0801A8E4 @ case 2
	.4byte _0801A8EC @ case 3
	.4byte _0801A8F2 @ case 4
_0801A8D8:
	movs r0, #0xc1
	strh r0, [r4, #0x30]
	b _0801A918
_0801A8DE:
	movs r0, #0xc4
	strh r0, [r4, #0x30]
	b _0801A918
_0801A8E4:
	adds r0, r4, #0
	bl sub_801ADC0
	b _0801A92A
_0801A8EC:
	movs r0, #0xc2
	strh r0, [r4, #0x30]
	b _0801A918
_0801A8F2:
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801A914 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_800DAF4
	b _0801A92A
	.align 2, 0
_0801A914: .4byte 0xFFFBFFFF
_0801A918:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A92A
	adds r0, r4, #0
	bl sub_8017004
_0801A92A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801A930
sub_801A930: @ 0x0801A930
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	beq _0801A94A
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _0801A9E0
_0801A94A:
	adds r0, r5, #0
	bl sub_8015460
	movs r1, #0x18
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #0x10]
	adds r1, r1, r2
	str r1, [r5, #0x10]
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	ldr r1, [r5, #0x14]
	adds r1, r1, r2
	str r1, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0801A988
	ldr r4, _0801A984 @ =sub_801A87C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	adds r0, r5, #0
	adds r0, #0x9e
	strh r6, [r0]
	b _0801A9E0
	.align 2, 0
_0801A984: .4byte sub_801A87C
_0801A988:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0801A99C
	subs r0, r2, #1
	strh r0, [r1]
	b _0801A9B2
_0801A99C:
	adds r2, r5, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0801A9E8 @ =0xFFFFFBB0
	cmp r1, r0
	ble _0801A9B2
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
_0801A9B2:
	ldrh r2, [r5, #0x36]
	cmp r2, #0
	bne _0801A9CE
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A9CE
	adds r0, r2, #1
	strh r0, [r5, #0x36]
_0801A9CE:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A9E0
	adds r0, r5, #0
	bl sub_8017004
_0801A9E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A9E8: .4byte 0xFFFFFBB0

	thumb_func_start sub_801A9EC
sub_801A9EC: @ 0x0801A9EC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801AA44 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, _0801AA48 @ =0x0000FE2C
	strh r0, [r4, #0x1a]
	movs r0, #0xc0
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldr r0, [r4, #4]
	ldr r1, _0801AA4C @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r5, _0801AA50 @ =sub_801A5A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AA44: .4byte 0xFFFFBFFF
_0801AA48: .4byte 0x0000FE2C
_0801AA4C: .4byte 0x00040004
_0801AA50: .4byte sub_801A5A0

	thumb_func_start sub_801AA54
sub_801AA54: @ 0x0801AA54
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AA6A
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AA6A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_801AC58
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AA78
sub_801AA78: @ 0x0801AA78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8005B04
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AADC
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AACA
	ldr r1, _0801AAE4 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AACA:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801AADC
	ldr r1, _0801AAE8 @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AADC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AAE4: .4byte Player_8005380
_0801AAE8: .4byte Player_800DB30

	thumb_func_start sub_801AAEC
sub_801AAEC: @ 0x0801AAEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB02
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB02:
	adds r0, r4, #0
	movs r1, #1
	bl sub_801AC58
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB10
sub_801AB10: @ 0x0801AB10
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB26
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB26:
	adds r0, r4, #0
	movs r1, #2
	bl sub_801AC58
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB34
sub_801AB34: @ 0x0801AB34
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB4A
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB4A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_801ACBC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB58
sub_801AB58: @ 0x0801AB58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB6E
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_801ACBC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB7C
sub_801AB7C: @ 0x0801AB7C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB92
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB92:
	adds r0, r4, #0
	movs r1, #2
	bl sub_801ACBC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801ABA0
sub_801ABA0: @ 0x0801ABA0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801ABC0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
_0801ABC0:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ldr r1, _0801ABFC @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801AC00 @ =sub_801A6E0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ABFC: .4byte 0x00040004
_0801AC00: .4byte sub_801A6E0

	thumb_func_start sub_801AC04
sub_801AC04: @ 0x0801AC04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AC4E
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AC4E
	movs r0, #0xbf
	strh r0, [r4, #0x30]
	ldr r1, _0801AC54 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AC4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AC54: .4byte Player_800DAF4

	thumb_func_start sub_801AC58
sub_801AC58: @ 0x0801AC58
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801AC88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	cmp r4, #1
	bne _0801AC90
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801AC8C
	movs r0, #0xb6
	b _0801AC9E
	.align 2, 0
_0801AC88: .4byte 0xFFFFBFFF
_0801AC8C:
	movs r0, #0xb7
	b _0801AC9E
_0801AC90:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801AC9C
	movs r0, #0xb4
	b _0801AC9E
_0801AC9C:
	movs r0, #0xb5
_0801AC9E:
	strh r0, [r5, #0x30]
	ldr r4, _0801ACB8 @ =sub_801AA78
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ACB8: .4byte sub_801AA78

	thumb_func_start sub_801ACBC
sub_801ACBC: @ 0x0801ACBC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801ACEC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	cmp r4, #1
	bne _0801ACF0
	movs r0, #0xba
	b _0801ACF2
	.align 2, 0
_0801ACEC: .4byte 0xFFFFBFFF
_0801ACF0:
	movs r0, #0xb9
_0801ACF2:
	strh r0, [r5, #0x30]
	ldr r4, _0801AD0C @ =Player_800DAF4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AD0C: .4byte Player_800DAF4

	thumb_func_start sub_801AD10
sub_801AD10: @ 0x0801AD10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AD58
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r2, [r4, #0x36]
	adds r3, r2, #0
	cmp r3, #0
	bne _0801AD58
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AD58
	adds r0, r2, #1
	strh r0, [r4, #0x36]
	strh r3, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	ldr r1, _0801AD60 @ =sub_801AD64
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AD58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AD60: .4byte sub_801AD64

	thumb_func_start sub_801AD64
sub_801AD64: @ 0x0801AD64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ADB6
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801ADA4
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4, #0x1a]
_0801ADA4:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801ADB6
	ldr r1, _0801ADBC @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801ADB6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801ADBC: .4byte Player_8005380

	thumb_func_start sub_801ADC0
sub_801ADC0: @ 0x0801ADC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0xc3
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
	ldr r5, _0801ADF0 @ =sub_801A930
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ADF0: .4byte sub_801A930

	thumb_func_start sub_801ADF4
sub_801ADF4: @ 0x0801ADF4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801AE14
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl Player_8012FE0
_0801AE14:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #1
	strb r4, [r0]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ands r0, r4
	cmp r0, #0
	beq _0801AE3A
	movs r0, #0xff
	lsls r0, r0, #8
	b _0801AE3E
_0801AE3A:
	movs r0, #0x80
	lsls r0, r0, #1
_0801AE3E:
	strh r0, [r5, #0x18]
	ldr r0, _0801AE64 @ =0x0000FF80
	strh r0, [r5, #0x1a]
	ldr r0, [r5, #4]
	ldr r1, _0801AE68 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801AE6C @ =sub_801B608
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AE64: .4byte 0x0000FF80
_0801AE68: .4byte 0x00040004
_0801AE6C: .4byte sub_801B608

	thumb_func_start sub_801AE70
sub_801AE70: @ 0x0801AE70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801AE90
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl Player_8012FE0
_0801AE90:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801AEA6
	movs r0, #0
	strh r0, [r5, #0x1a]
_0801AEA6:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #4]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801AEBA
	strh r2, [r5, #0x1c]
_0801AEBA:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801AED4
	ldrh r0, [r5, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	b _0801AEE2
_0801AED4:
	ldrh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_0801AEE2:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	adds r0, r5, #0
	adds r0, #0x26
	strb r4, [r0]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r6, r5, r1
	strb r4, [r6]
	adds r1, #1
	adds r0, r5, r1
	strb r4, [r0]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldrb r1, [r6]
	movs r0, #4
	orrs r0, r1
	strb r0, [r6]
	ldr r0, [r5, #4]
	ldr r1, _0801AF48 @ =0x00040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801AF4C @ =sub_801BA2C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF48: .4byte 0x00040004
_0801AF4C: .4byte sub_801BA2C

	thumb_func_start sub_801AF50
sub_801AF50: @ 0x0801AF50
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AF6C
	ldr r1, _0801AF8C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AF6C:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801AF78
	rsbs r0, r0, #0
_0801AF78:
	lsls r0, r0, #0x10
	ldr r1, _0801AF90 @ =0xFFE00000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801AF94
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801AFA0
	.align 2, 0
_0801AF8C: .4byte Player_8005380
_0801AF90: .4byte 0xFFE00000
_0801AF94:
	cmp r2, #0
	beq _0801AF9E
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801AFA0
_0801AF9E:
	strh r1, [r4, #0x1c]
_0801AFA0:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AFE2
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801AFE2
	ldr r1, _0801AFE8 @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AFE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AFE8: .4byte Player_800DB30

	thumb_func_start sub_801AFEC
sub_801AFEC: @ 0x0801AFEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r6, r4, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r5, r4, r1
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r1, #0
	ldrsh r7, [r6, r1]
	cmp r7, #0
	bne _0801B03C
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801B038 @ =sub_801B11C
	adds r0, r4, #0
	bl SetPlayerCallback
	strh r7, [r5]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl Player_StopSong
	b _0801B114
	.align 2, 0
_0801B038: .4byte sub_801B11C
_0801B03C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0801B070
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl Player_StopSong
	ldr r1, _0801B06C @ =sub_801B1B0
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0x78
	strh r0, [r6]
	b _0801B114
	.align 2, 0
_0801B06C: .4byte sub_801B1B0
_0801B070:
	ldr r0, _0801B09C @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801B080
	movs r0, #0x1e
	strh r0, [r6]
_0801B080:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801B08C
	rsbs r0, r0, #0
_0801B08C:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801B0A0 @ =0x000003FF
	cmp r1, r0
	bgt _0801B0A4
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B0A8
	.align 2, 0
_0801B09C: .4byte gStageData
_0801B0A0: .4byte 0x000003FF
_0801B0A4:
	adds r0, r1, #0
	subs r0, #0x40
_0801B0A8:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B0BA
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801B0C6
_0801B0BA:
	cmp r2, #0
	beq _0801B0C4
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801B0C6
_0801B0C4:
	strh r1, [r4, #0x1c]
_0801B0C6:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801B0E4
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801B0DE
	ldrh r0, [r4, #0x1c]
	subs r0, #0x10
	b _0801B0E2
_0801B0DE:
	ldrh r0, [r4, #0x1c]
	adds r0, #0x10
_0801B0E2:
	strh r0, [r4, #0x1c]
_0801B0E4:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B114
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801B114:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B11C
sub_801B11C: @ 0x0801B11C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B138
	ldr r1, _0801B154 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801B138:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801B144
	rsbs r0, r0, #0
_0801B144:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801B158 @ =0x000003FF
	cmp r1, r0
	bgt _0801B15C
	adds r0, r1, #0
	subs r0, #0x20
	b _0801B160
	.align 2, 0
_0801B154: .4byte Player_8005380
_0801B158: .4byte 0x000003FF
_0801B15C:
	adds r0, r1, #0
	subs r0, #0x80
_0801B160:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B172
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801B17E
_0801B172:
	cmp r2, #0
	beq _0801B17C
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801B17E
_0801B17C:
	strh r1, [r4, #0x1c]
_0801B17E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B1A8
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801B1A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B1B0
sub_801B1B0: @ 0x0801B1B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B1E4
	movs r0, #3
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801B1E0 @ =sub_801B11C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B250
	.align 2, 0
_0801B1E0: .4byte sub_801B11C
_0801B1E4:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801B1F0
	rsbs r0, r0, #0
_0801B1F0:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801B200 @ =0x000003FF
	cmp r1, r0
	bgt _0801B204
	adds r0, r1, #0
	subs r0, #0x20
	b _0801B208
	.align 2, 0
_0801B200: .4byte 0x000003FF
_0801B204:
	adds r0, r1, #0
	subs r0, #0x80
_0801B208:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B21A
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801B226
_0801B21A:
	cmp r2, #0
	beq _0801B224
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801B226
_0801B224:
	strh r1, [r4, #0x1c]
_0801B226:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B250
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801B250:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B258
sub_801B258: @ 0x0801B258
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B2D2
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B2D2
	ldr r0, _0801B2D8 @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #0x14
	strh r0, [r4, #0x30]
	ldr r1, _0801B2DC @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x13
	strh r0, [r4, #0x34]
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r1, _0801B2E0 @ =sub_800DF5C
	adds r0, r4, #0
	bl SetPlayerCallback
_0801B2D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B2D8: .4byte 0xFFFFBFFF
_0801B2DC: .4byte gPlayerCharacterIdleAnims
_0801B2E0: .4byte sub_800DF5C

	thumb_func_start sub_801B2E4
sub_801B2E4: @ 0x0801B2E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B2FE
	subs r0, r1, #1
	strh r0, [r2]
_0801B2FE:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B330
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B32A
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B35A
_0801B32A:
	movs r0, #1
	strb r0, [r3]
	b _0801B35A
_0801B330:
	ldr r0, _0801B398 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B354
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B354
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B354
	movs r0, #2
	strb r0, [r3]
_0801B354:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B35A:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B452
	adds r0, r4, #0
	bl sub_801B458
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B452
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B3A0
	ldr r1, _0801B39C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801B452
	.align 2, 0
_0801B398: .4byte gStageData
_0801B39C: .4byte Player_8005380
_0801B3A0:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r1, r0
	cmp r1, #0
	beq _0801B44C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r3, [r0]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801B3F4 @ =gPlayers
	adds r2, r0, r1
	ldr r0, _0801B3F8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0801B3E2
	movs r5, #0x1c
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #8
	beq _0801B3E2
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #8
	bne _0801B3FC
_0801B3E2:
	ldrh r0, [r2, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801B426
	movs r6, #1
	b _0801B42A
	.align 2, 0
_0801B3F4: .4byte gPlayers
_0801B3F8: .4byte gStageData
_0801B3FC:
	ldrh r3, [r2, #0x34]
	ldr r5, _0801B444 @ =gPlayerCharacterIdleAnims
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1b
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x5c
	cmp r3, r0
	beq _0801B426
	lsrs r0, r1, #0x1b
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x5d
	cmp r3, r0
	beq _0801B426
	movs r6, #1
_0801B426:
	cmp r6, #0
	beq _0801B452
_0801B42A:
	ldr r0, [r4, #4]
	ldr r1, _0801B448 @ =0xDDFBFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl Player_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_800DAF4
	b _0801B452
	.align 2, 0
_0801B444: .4byte gPlayerCharacterIdleAnims
_0801B448: .4byte 0xDDFBFFFF
_0801B44C:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B452:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801B458
sub_801B458: @ 0x0801B458
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B478
	movs r0, #0xd0
	strh r0, [r2, #0x30]
	adds r0, r2, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801B4C8
_0801B478:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B48C
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B49E
_0801B48C:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B4A2
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B4A2
_0801B49E:
	movs r0, #0xcf
	b _0801B4BE
_0801B4A2:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xcf
	bne _0801B4BC
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B4C0
_0801B4BC:
	movs r0, #0xce
_0801B4BE:
	strh r0, [r2, #0x30]
_0801B4C0:
	adds r0, r2, #0
	movs r1, #0x78
	bl Player_PlayOrContinueSong
_0801B4C8:
	pop {r0}
	bx r0

	thumb_func_start sub_801B4CC
sub_801B4CC: @ 0x0801B4CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B4E4
	subs r0, r1, #1
	strh r0, [r2]
_0801B4E4:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B518
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B514 @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B50E
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B540
_0801B50E:
	movs r0, #1
	strb r0, [r3]
	b _0801B540
	.align 2, 0
_0801B514: .4byte 0xFFFFFE80
_0801B518:
	ldr r0, _0801B574 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B53A
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B578 @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B53A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B53A
	movs r0, #2
	strb r0, [r3]
_0801B53A:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B540:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B586
	adds r0, r4, #0
	bl sub_801B58C
	adds r0, r4, #0
	bl sub_801C00C
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B580
	ldr r1, _0801B57C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801B586
	.align 2, 0
_0801B574: .4byte gStageData
_0801B578: .4byte 0xFFFFFE80
_0801B57C: .4byte Player_8005380
_0801B580:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B586:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801B58C
sub_801B58C: @ 0x0801B58C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B5B2
	movs r0, #0xd0
	strh r0, [r2, #0x30]
	ldrh r0, [r2, #0x1a]
	adds r0, #0x10
	strh r0, [r2, #0x1a]
	adds r0, r2, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801B602
_0801B5B2:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B5C6
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B5D8
_0801B5C6:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B5DC
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B5DC
_0801B5D8:
	movs r0, #0xd2
	b _0801B5F8
_0801B5DC:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xcf
	bne _0801B5F6
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B5FA
_0801B5F6:
	movs r0, #0xd1
_0801B5F8:
	strh r0, [r2, #0x30]
_0801B5FA:
	adds r0, r2, #0
	movs r1, #0x78
	bl Player_PlayOrContinueSong
_0801B602:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B608
sub_801B608: @ 0x0801B608
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801B620 @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0801B628
	movs r0, #0xd3
	strh r0, [r4, #0x30]
	ldr r1, _0801B624 @ =sub_801BFD4
	b _0801B688
	.align 2, 0
_0801B620: .4byte gStageData
_0801B624: .4byte sub_801BFD4
_0801B628:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_801B6A8
	adds r0, r4, #0
	bl sub_8014940
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0801B64A
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801B656
_0801B64A:
	cmp r0, #0
	ble _0801B658
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801B656:
	str r0, [r4, #4]
_0801B658:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B6A2
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B69C
	ldr r1, _0801B698 @ =Player_8005380
_0801B688:
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801B6A2
	.align 2, 0
_0801B698: .4byte Player_8005380
_0801B69C:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B6A2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801B6A8
sub_801B6A8: @ 0x0801B6A8
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B6C8
	movs r0, #0xd0
	strh r0, [r2, #0x30]
	adds r0, r2, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801B718
_0801B6C8:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B6DC
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B6F6
_0801B6DC:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B6EE
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B6F6
_0801B6EE:
	movs r0, #0x30
	ldrsh r3, [r2, r0]
	cmp r3, #0xd4
	beq _0801B6FC
_0801B6F6:
	movs r0, #0xd4
	strh r0, [r2, #0x30]
	b _0801B710
_0801B6FC:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B710
	strh r3, [r2, #0x30]
_0801B710:
	adds r0, r2, #0
	movs r1, #0x78
	bl Player_PlayOrContinueSong
_0801B718:
	pop {r0}
	bx r0

	thumb_func_start sub_801B71C
sub_801B71C: @ 0x0801B71C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B734
	subs r0, r1, #1
	strh r0, [r2]
_0801B734:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B768
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B764 @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B75E
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B790
_0801B75E:
	movs r0, #1
	strb r0, [r3]
	b _0801B790
	.align 2, 0
_0801B764: .4byte 0xFFFFFE80
_0801B768:
	ldr r0, _0801B7C8 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B78A
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B7CC @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B78A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B78A
	movs r0, #2
	strb r0, [r3]
_0801B78A:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B790:
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0xd0
	beq _0801B7D4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xee
	bgt _0801B7D4
	ldr r0, _0801B7C8 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801B7D4
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801B7D0 @ =sub_801B824
	b _0801B80A
	.align 2, 0
_0801B7C8: .4byte gStageData
_0801B7CC: .4byte 0xFFFFFE80
_0801B7D0: .4byte sub_801B824
_0801B7D4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B81E
	adds r0, r4, #0
	bl sub_801C068
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B81E
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801B818
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
	ldr r1, _0801B814 @ =Player_8005380
_0801B80A:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B81E
	.align 2, 0
_0801B814: .4byte Player_8005380
_0801B818:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B81E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801B824
sub_801B824: @ 0x0801B824
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801B83C
	subs r0, r2, #1
	strh r0, [r1]
_0801B83C:
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	cmp r0, #1
	beq _0801B870
	ldrh r3, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B86C @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B866
	adds r0, r3, #0
	subs r0, #0x30
	strh r0, [r4, #0x1a]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B876
_0801B866:
	movs r0, #1
	strb r0, [r2]
	b _0801B876
	.align 2, 0
_0801B86C: .4byte 0xFFFFFE80
_0801B870:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B876:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B89C
	movs r0, #0
	strh r0, [r4, #0x36]
	ldr r1, _0801B898 @ =sub_801B71C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B8D2
	.align 2, 0
_0801B898: .4byte sub_801B71C
_0801B89C:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B8D2
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B8D2
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801B8D2
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
	ldr r1, _0801B8D8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801B8D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B8D8: .4byte Player_8005380

	thumb_func_start sub_801B8DC
sub_801B8DC: @ 0x0801B8DC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B8F4
	subs r0, r1, #1
	strh r0, [r2]
_0801B8F4:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B926
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B920
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B950
_0801B920:
	movs r0, #1
	strb r0, [r3]
	b _0801B950
_0801B926:
	ldr r0, _0801B988 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B94A
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B94A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B94A
	movs r0, #2
	strb r0, [r3]
_0801B94A:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B950:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B99E
	adds r0, r4, #0
	bl sub_801B9A8
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B99E
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801B990
	ldr r1, _0801B98C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B99E
	.align 2, 0
_0801B988: .4byte gStageData
_0801B98C: .4byte Player_8005380
_0801B990:
	ldr r1, _0801B9A4 @ =0x0000021A
	adds r0, r4, #0
	bl Player_PlayOrContinueSong
	adds r0, r4, #0
	bl sub_801C14C
_0801B99E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B9A4: .4byte 0x0000021A

	thumb_func_start sub_801B9A8
sub_801B9A8: @ 0x0801B9A8
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B9CC
	movs r0, #0xd8
	strh r0, [r2, #0x30]
	ldr r1, _0801B9C8 @ =0x0000021A
	adds r0, r2, #0
	bl Player_StopSong
	b _0801BA24
	.align 2, 0
_0801B9C8: .4byte 0x0000021A
_0801B9CC:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B9E0
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B9F2
_0801B9E0:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B9F8
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B9F8
_0801B9F2:
	movs r0, #0xd7
	strh r0, [r2, #0x30]
	b _0801BA24
_0801B9F8:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xcf
	beq _0801BA06
	movs r0, #0xd6
	strh r0, [r2, #0x30]
	b _0801BA24
_0801BA06:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801BA24
	movs r0, #0xd6
	strh r0, [r2, #0x30]
	ldr r1, _0801BA28 @ =0x0000021A
	adds r0, r2, #0
	bl Player_PlayOrContinueSong
_0801BA24:
	pop {r0}
	bx r0
	.align 2, 0
_0801BA28: .4byte 0x0000021A

	thumb_func_start sub_801BA2C
sub_801BA2C: @ 0x0801BA2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801BA44 @ =0x0000014B
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801BA48
	adds r0, r4, #0
	bl sub_801BAFC
	b _0801BA56
	.align 2, 0
_0801BA44: .4byte 0x0000014B
_0801BA48:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801BA56
	strh r0, [r4, #0x36]
_0801BA56:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801BA6A
	subs r0, r1, #1
	strh r0, [r2]
_0801BA6A:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801BAA0
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801BA9C @ =0xFFFFFF00
	cmp r1, r0
	blt _0801BA94
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801BAC8
_0801BA94:
	movs r0, #1
	strb r0, [r3]
	b _0801BAC8
	.align 2, 0
_0801BA9C: .4byte 0xFFFFFF00
_0801BAA0:
	ldr r0, _0801BAF4 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801BAC2
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801BAF8 @ =0xFFFFFF00
	cmp r1, r0
	blt _0801BAC2
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801BAC2
	movs r0, #2
	strb r0, [r3]
_0801BAC2:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801BAC8:
	adds r0, r4, #0
	bl sub_801BC48
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801BAEC
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_801C098
	adds r0, r4, #0
	bl sub_801C14C
_0801BAEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAF4: .4byte gStageData
_0801BAF8: .4byte 0xFFFFFF00

	thumb_func_start sub_801BAFC
sub_801BAFC: @ 0x0801BAFC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xda
	bne _0801BB38
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801BB72
	ldr r1, [r5, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801BB2E
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _0801BB30
_0801BB2E:
	orrs r1, r2
_0801BB30:
	str r1, [r5, #4]
	movs r0, #0xd9
	strh r0, [r5, #0x30]
	b _0801BB72
_0801BB38:
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BB56
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BB50
	movs r0, #0xda
	strh r0, [r5, #0x30]
_0801BB50:
	ldrh r0, [r5, #0x18]
	subs r0, #0x20
	b _0801BB70
_0801BB56:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BB72
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BB6C
	movs r0, #0xda
	strh r0, [r5, #0x30]
_0801BB6C:
	ldrh r0, [r5, #0x18]
	adds r0, #0x20
_0801BB70:
	strh r0, [r5, #0x18]
_0801BB72:
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r1, r0, #0
	cmp r0, #0
	bge _0801BB7E
	rsbs r1, r0, #0
_0801BB7E:
	cmp r1, #7
	bgt _0801BB86
	movs r0, #0
	b _0801BBBA
_0801BB86:
	cmp r0, #0
	bge _0801BB8C
	rsbs r0, r0, #0
_0801BB8C:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0801BBA6
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0801BBA2
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801BBBA
_0801BBA2:
	strh r1, [r5, #0x18]
	b _0801BBBC
_0801BBA6:
	ldrh r1, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0801BBB6
	adds r0, r1, #0
	adds r0, #8
	b _0801BBBA
_0801BBB6:
	adds r0, r1, #0
	subs r0, #8
_0801BBBA:
	strh r0, [r5, #0x18]
_0801BBBC:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0801BC12
	ldr r0, _0801BC00 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801BC12
	ldr r0, _0801BC04 @ =0x0000014B
	adds r1, r5, r0
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0xd9
	strh r0, [r5, #0x30]
	adds r0, #0xb3
	strh r0, [r5, #0x34]
	movs r4, #1
	strh r4, [r5, #0x36]
	ldr r1, _0801BC08 @ =0x0000021A
	adds r0, r5, #0
	bl Player_PlaySong
	ldr r0, [r5, #4]
	ands r0, r4
	cmp r0, #0
	beq _0801BC0C
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801BC10
	.align 2, 0
_0801BC00: .4byte gStageData
_0801BC04: .4byte 0x0000014B
_0801BC08: .4byte 0x0000021A
_0801BC0C:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801BC10:
	strh r0, [r5, #0x18]
_0801BC12:
	ldrh r1, [r5, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r5, r2]
	cmp r0, #0x7f
	bgt _0801BC22
	adds r0, r1, #0
	adds r0, #0x18
	b _0801BC26
_0801BC22:
	adds r0, r1, #0
	subs r0, #0x18
_0801BC26:
	strh r0, [r5, #0x1a]
	ldr r1, _0801BC34 @ =gCamera
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ble _0801BC38
	subs r0, #2
	b _0801BC3E
	.align 2, 0
_0801BC34: .4byte gCamera
_0801BC38:
	cmp r0, #0
	bge _0801BC40
	adds r0, #4
_0801BC3E:
	str r0, [r1, #0x40]
_0801BC40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801BC48
sub_801BC48: @ 0x0801BC48
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0801BC80
	movs r0, #0xd8
	strh r0, [r4, #0x30]
	adds r1, #0xce
	adds r0, r4, #0
	bl Player_StopSong
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BC76
	ldr r0, [r4, #4]
	movs r1, #1
	b _0801BCA0
_0801BC76:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BCC0
	b _0801BCAC
_0801BC80:
	ldr r1, _0801BCA8 @ =0x0000014B
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801BCB8
	movs r0, #0xd9
	strh r0, [r4, #0x30]
	adds r0, #0xb3
	strh r0, [r4, #0x34]
	movs r1, #1
	strh r1, [r4, #0x36]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0801BCAC
	ldr r0, [r4, #4]
_0801BCA0:
	orrs r0, r1
	str r0, [r4, #4]
	b _0801BCC0
	.align 2, 0
_0801BCA8: .4byte 0x0000014B
_0801BCAC:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	b _0801BCC0
_0801BCB8:
	ldr r1, _0801BCC8 @ =0x0000021A
	adds r0, r4, #0
	bl Player_PlayOrContinueSong
_0801BCC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BCC8: .4byte 0x0000021A

	thumb_func_start sub_801BCCC
sub_801BCCC: @ 0x0801BCCC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801BD14 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xca
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x79
	bl Player_PlaySong
	ldr r5, _0801BD18 @ =sub_801AF50
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD14: .4byte 0xFFFFBFFF
_0801BD18: .4byte sub_801AF50

	thumb_func_start sub_801BD1C
sub_801BD1C: @ 0x0801BD1C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801BD7C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xcb
	strh r0, [r4, #0x30]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x1e
	strh r0, [r1]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl Player_PlaySong
	ldr r5, _0801BD80 @ =sub_801AFEC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD7C: .4byte 0xFFFFBFFF
_0801BD80: .4byte sub_801AFEC

	thumb_func_start sub_801BD84
sub_801BD84: @ 0x0801BD84
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	ldr r1, _0801BDCC @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0xcd
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801BDD0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	movs r1, #0x71
	bl Player_PlaySong
	ldr r5, _0801BDD4 @ =sub_801B258
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BDCC: .4byte 0x00008006
_0801BDD0: .4byte 0xFFFFBFFF
_0801BDD4: .4byte sub_801B258

	thumb_func_start sub_801BDD8
sub_801BDD8: @ 0x0801BDD8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BDF4
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl Player_8012FE0
_0801BDF4:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	strh r2, [r5, #0x1a]
	movs r0, #0xce
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ldr r1, _0801BE38 @ =0x00040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BE3C @ =sub_801B2E4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BE38: .4byte 0x00040004
_0801BE3C: .4byte sub_801B2E4

	thumb_func_start sub_801BE40
sub_801BE40: @ 0x0801BE40
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BE5C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl Player_8012FE0
_0801BE5C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r2, #0
	adds r0, #0x3a
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	strh r2, [r4, #0x1a]
	movs r0, #0xce
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldr r0, [r4, #4]
	ldr r1, _0801BE98 @ =0x20040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801BE9C @ =sub_801B2E4
	adds r0, r4, #0
	bl SetPlayerCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BE98: .4byte 0x20040004
_0801BE9C: .4byte sub_801B2E4

	thumb_func_start sub_801BEA0
sub_801BEA0: @ 0x0801BEA0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BEC0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl Player_8012FE0
_0801BEC0:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	strh r2, [r5, #0x18]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ldr r1, _0801BF00 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BF04 @ =sub_801B4CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF00: .4byte 0x00040004
_0801BF04: .4byte sub_801B4CC

	thumb_func_start sub_801BF08
sub_801BF08: @ 0x0801BF08
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BF28
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl Player_8012FE0
_0801BF28:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd5
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ldr r1, _0801BF64 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BF68 @ =sub_801B71C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF64: .4byte 0x00040004
_0801BF68: .4byte sub_801B71C

	thumb_func_start sub_801BF6C
sub_801BF6C: @ 0x0801BF6C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BF8C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl Player_8012FE0
_0801BF8C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd6
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_BoostModeDisengage
	ldr r0, [r5, #4]
	ldr r1, _0801BFCC @ =0x00040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BFD0 @ =sub_801B8DC
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BFCC: .4byte 0x00040004
_0801BFD0: .4byte sub_801B8DC

	thumb_func_start sub_801BFD4
sub_801BFD4: @ 0x0801BFD4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1a]
	adds r0, #0x2a
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C002
	adds r0, r4, #0
	bl sub_801C00C
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C002
	ldr r1, _0801C008 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801C002:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C008: .4byte Player_8005380

	thumb_func_start sub_801C00C
sub_801C00C: @ 0x0801C00C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x90
	ldr r1, [r0]
	asrs r1, r1, #1
	str r1, [r0]
	adds r0, r4, #0
	bl sub_8014940
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801C034
	ldr r0, _0801C030 @ =0x0000FF80
	b _0801C03A
	.align 2, 0
_0801C030: .4byte 0x0000FF80
_0801C034:
	cmp r1, #0x80
	ble _0801C03C
	movs r0, #0x80
_0801C03A:
	strh r0, [r4, #0x18]
_0801C03C:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C060
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801C060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801C068
sub_801C068: @ 0x0801C068
	push {lr}
	adds r1, r0, #0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0801C088
	movs r0, #0xd0
	strh r0, [r1, #0x30]
	adds r0, r1, #0
	movs r1, #0x78
	bl Player_StopSong
	b _0801C094
_0801C088:
	movs r0, #0xd5
	strh r0, [r1, #0x30]
	adds r0, r1, #0
	movs r1, #0x78
	bl Player_PlayOrContinueSong
_0801C094:
	pop {r0}
	bx r0

	thumb_func_start sub_801C098
sub_801C098: @ 0x0801C098
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
	bne _0801C100
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0801C0C0
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801C0C8
_0801C0C0:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801C0C8:
	str r0, [r4, #4]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801C0E2
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801C0EA
_0801C0E2:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801C0EA:
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r1, _0801C108 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, _0801C10C @ =0x0000021A
	adds r0, r4, #0
	bl Player_StopSong
_0801C100:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C108: .4byte Player_8005380
_0801C10C: .4byte 0x0000021A

	thumb_func_start sub_801C110
sub_801C110: @ 0x0801C110
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #4
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0801C142
	movs r0, #0
	strh r0, [r4, #0x1a]
_0801C142:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801C14C
sub_801C14C: @ 0x0801C14C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C1C4
	adds r1, #0xcc
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801C1C4
	ldr r1, [r4, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r1, r2
	cmp r1, #0x80
	beq _0801C194
	cmp r1, #0x80
	bhi _0801C17C
	cmp r1, #0
	beq _0801C18A
	b _0801C1B4
_0801C17C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801C19C
	cmp r1, r2
	beq _0801C1AC
	b _0801C1B4
_0801C18A:
	ldr r1, _0801C190 @ =sub_801B2E4
	b _0801C19E
	.align 2, 0
_0801C190: .4byte sub_801B2E4
_0801C194:
	ldr r1, _0801C198 @ =sub_801B608
	b _0801C19E
	.align 2, 0
_0801C198: .4byte sub_801B608
_0801C19C:
	ldr r1, _0801C1A8 @ =sub_801B4CC
_0801C19E:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801C1B4
	.align 2, 0
_0801C1A8: .4byte sub_801B4CC
_0801C1AC:
	ldr r1, _0801C1CC @ =sub_801B71C
	adds r0, r4, #0
	bl SetPlayerCallback
_0801C1B4:
	ldr r1, _0801C1D0 @ =0x0000021A
	adds r0, r4, #0
	bl Player_StopSong
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_PlayOrContinueSong
_0801C1C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C1CC: .4byte sub_801B71C
_0801C1D0: .4byte 0x0000021A

	thumb_func_start sub_801C1D4
sub_801C1D4: @ 0x0801C1D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801C22A
	adds r1, #0xcc
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801C22A
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801C20C
	ldr r1, _0801C208 @ =sub_801B8DC
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xd6
	b _0801C220
	.align 2, 0
_0801C208: .4byte sub_801B8DC
_0801C20C:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0801C222
	ldr r1, _0801C230 @ =sub_801BA2C
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xd9
_0801C220:
	strh r0, [r4, #0x30]
_0801C222:
	adds r0, r4, #0
	movs r1, #0x78
	bl Player_StopSong
_0801C22A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C230: .4byte sub_801BA2C

	thumb_func_start sub_801C234
sub_801C234: @ 0x0801C234
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r0, [r5, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	movs r0, #0xf0
	strh r0, [r5, #0x30]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0xff
	bgt _0801C27E
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
_0801C27E:
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1a]
	movs r0, #0
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_8017CA8
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r4, _0801C2D4 @ =sub_801CB68
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2D4: .4byte sub_801CB68

	thumb_func_start sub_801C2D8
sub_801C2D8: @ 0x0801C2D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #0xeb
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r5, r4, r0
	strb r1, [r5]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, _0801C340 @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #0x74
	bl Player_PlaySong
	ldr r5, _0801C344 @ =sub_801CFFC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C340: .4byte 0x00040004
_0801C344: .4byte sub_801CFFC

	thumb_func_start sub_801C348
sub_801C348: @ 0x0801C348
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801C3A8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FF0
	movs r2, #0
	movs r1, #0
	movs r0, #0xed
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x26
	strb r2, [r0]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C3BC
	ldrh r1, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	ldr r2, _0801C3AC @ =0xFFFFFC00
	cmp r0, r2
	ble _0801C3EE
	adds r0, r1, r2
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801C3B0 @ =0xFFFFFA00
	cmp r1, r0
	bge _0801C3B4
	movs r0, #0xfa
	lsls r0, r0, #8
	b _0801C3EC
	.align 2, 0
_0801C3A8: .4byte 0xFFFFBFFF
_0801C3AC: .4byte 0xFFFFFC00
_0801C3B0: .4byte 0xFFFFFA00
_0801C3B4:
	cmp r1, r2
	ble _0801C3EE
	strh r2, [r5, #0x18]
	b _0801C3EE
_0801C3BC:
	ldrh r1, [r5, #0x18]
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	ldr r2, _0801C3E0 @ =0x000003FF
	cmp r0, r2
	bgt _0801C3EE
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, r3
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _0801C3E4
	strh r1, [r5, #0x18]
	b _0801C3EE
	.align 2, 0
_0801C3E0: .4byte 0x000003FF
_0801C3E4:
	cmp r0, r2
	bgt _0801C3EE
	movs r0, #0x80
	lsls r0, r0, #3
_0801C3EC:
	strh r0, [r5, #0x18]
_0801C3EE:
	movs r0, #0
	strh r0, [r5, #0x1a]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0x10
	strh r0, [r1]
	ldr r4, _0801C410 @ =sub_801D5CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C410: .4byte sub_801D5CC

	thumb_func_start sub_801C414
sub_801C414: @ 0x0801C414
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801C480
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801C43C
	ldr r0, [r5, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #2
	b _0801C440
_0801C43C:
	ldr r0, [r5, #0x14]
	ldr r1, _0801C474 @ =0xFFFFFD00
_0801C440:
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r4, #0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldrh r0, [r5, #0x36]
	adds r0, #1
	strh r0, [r5, #0x36]
	ldr r1, _0801C478 @ =0x00000215
	adds r0, r5, #0
	bl Player_PlaySong
	str r4, [r5, #0x6c]
	ldr r0, [r5, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	ldr r1, _0801C47C @ =sub_801DAD8
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0801C498
	.align 2, 0
_0801C474: .4byte 0xFFFFFD00
_0801C478: .4byte 0x00000215
_0801C47C: .4byte sub_801DAD8
_0801C480:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C498
	adds r0, r5, #0
	bl sub_8012EB8
	adds r0, r5, #0
	bl sub_8016E00
_0801C498:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801C4A0
sub_801C4A0: @ 0x0801C4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, _0801C54C @ =0x00000149
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0801C4BC
	b _0801C83C
_0801C4BC:
	ldr r0, [r5, #4]
	movs r3, #0x20
	ands r3, r0
	adds r2, r0, #0
	cmp r3, #0
	beq _0801C4CA
	b _0801C76E
_0801C4CA:
	strh r3, [r5, #0x1c]
	strh r3, [r5, #0x18]
	strh r3, [r5, #0x1a]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xee
	beq _0801C4DC
	movs r0, #0xef
	strh r0, [r5, #0x30]
_0801C4DC:
	ldrh r1, [r5, #0x1e]
	movs r0, #0x40
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	bne _0801C4EA
	b _0801C638
_0801C4EA:
	ldrh r1, [r5, #0x34]
	movs r0, #0x8f
	lsls r0, r0, #2
	cmp r1, r0
	beq _0801C4F6
	b _0801C638
_0801C4F6:
	ldr r0, _0801C550 @ =0xDFFFFFFF
	mov sb, r0
	ands r2, r0
	str r2, [r5, #4]
	adds r7, r5, #0
	adds r7, #0x5b
	ldrb r0, [r7]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r6, r0, #8
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _0801C528
	rsbs r6, r6, #0
_0801C528:
	ldr r0, [r5, #0x14]
	subs r0, r0, r6
	str r0, [r5, #0x14]
	adds r0, r5, #0
	str r3, [sp, #4]
	bl sub_801C884
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	adds r0, r0, r6
	str r0, [r5, #0x14]
	ldr r3, [sp, #4]
	cmp r4, #2
	ble _0801C554
	adds r0, r5, #0
	bl sub_801DE1C
	b _0801C86A
	.align 2, 0
_0801C54C: .4byte 0x00000149
_0801C550: .4byte 0xDFFFFFFF
_0801C554:
	cmp r4, #0
	ble _0801C588
	adds r1, r5, #0
	adds r1, #0x26
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	strh r3, [r5, #0x1c]
	strh r3, [r5, #0x18]
	strh r3, [r5, #0x1a]
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801C584 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	mov r1, sb
	b _0801C788
	.align 2, 0
_0801C584: .4byte 0xFFFFFB00
_0801C588:
	movs r0, #0xef
	strh r0, [r5, #0x30]
	strh r3, [r5, #0x36]
	ldrb r0, [r7]
	cmp r0, #1
	bne _0801C5A4
	adds r0, r5, #0
	movs r1, #0x7d
	bl Player_StopSong
	adds r0, r5, #0
	movs r1, #0x7d
	bl Player_PlaySong
_0801C5A4:
	cmp r4, #0
	bge _0801C5AA
	b _0801C86A
_0801C5AA:
	ldr r0, [r5, #4]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0801C5D8
	ldr r0, [r5, #0x14]
	movs r1, #0x90
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #3
	adds r1, r5, #0
	mov r2, sp
	movs r3, #0
	bl sub_8011024
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, _0801C5D4 @ =0xFFFFF700
	b _0801C5F4
	.align 2, 0
_0801C5D4: .4byte 0xFFFFF700
_0801C5D8:
	ldr r0, [r5, #0x14]
	ldr r1, _0801C614 @ =0xFFFFF700
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #2
	adds r1, r5, #0
	mov r2, sp
	movs r3, #0
	bl sub_8011024
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	movs r1, #0x90
	lsls r1, r1, #4
_0801C5F4:
	adds r0, r0, r1
	str r0, [r5, #0x14]
	cmp r4, #0
	bge _0801C624
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801C618
	adds r1, r4, #1
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	b _0801C730
	.align 2, 0
_0801C614: .4byte 0xFFFFF700
_0801C618:
	adds r1, r4, #1
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	b _0801C730
_0801C624:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0xc0
	cmp r0, #0
	beq _0801C632
	movs r1, #0x80
_0801C632:
	rsbs r0, r1, #0
	strh r0, [r5, #0x1a]
	b _0801C730
_0801C638:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0801C71C
	ldrh r1, [r5, #0x34]
	movs r0, #0x8f
	lsls r0, r0, #2
	cmp r1, r0
	bne _0801C71C
	ldr r0, _0801C6B0 @ =0xDFFFFFFF
	mov sb, r0
	ands r2, r0
	str r2, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x5b
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r6, r0, #8
	ldr r0, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #9
	ands r0, r7
	mov r8, r2
	cmp r0, #0
	beq _0801C67C
	rsbs r6, r6, #0
_0801C67C:
	ldr r0, [r5, #0x14]
	adds r0, r0, r6
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_801C884
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	subs r0, r0, r6
	str r0, [r5, #0x14]
	cmp r4, #0
	ble _0801C6B8
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801C6B4 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	mov r1, sb
	b _0801C788
	.align 2, 0
_0801C6B0: .4byte 0xDFFFFFFF
_0801C6B4: .4byte 0xFFFFFB00
_0801C6B8:
	ldr r0, [r5, #4]
	ands r0, r7
	cmp r0, #0
	beq _0801C6C4
	movs r0, #2
	b _0801C6C6
_0801C6C4:
	movs r0, #3
_0801C6C6:
	adds r1, r5, #0
	mov r2, sp
	movs r3, #0
	bl sub_8011024
	adds r4, r0, #0
	cmp r4, #0
	bge _0801C6EA
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801C754
	lsls r1, r4, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	b _0801C75A
_0801C6EA:
	movs r0, #0xef
	strh r0, [r5, #0x30]
	movs r0, #1
	strh r0, [r5, #0x36]
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0xc0
	cmp r0, #0
	beq _0801C700
	movs r1, #0x80
_0801C700:
	strh r1, [r5, #0x1a]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801C730
	adds r0, r5, #0
	movs r1, #0x7d
	bl Player_StopSong
	adds r0, r5, #0
	movs r1, #0x7d
	bl Player_PlaySong
	b _0801C730
_0801C71C:
	adds r1, r5, #0
	adds r1, #0x5b
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_801C884
	adds r4, r0, #0
	cmp r4, #0
	bgt _0801C76E
_0801C730:
	ldrh r1, [r5, #0x1e]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801C742
	ldrh r1, [r5, #0x34]
	ldr r0, _0801C7A0 @ =0x0000023B
	cmp r1, r0
	bne _0801C7D2
_0801C742:
	movs r0, #3
	adds r1, r5, #0
	mov r2, sp
	movs r3, #0
	bl sub_8011024
	adds r4, r0, #0
	cmp r4, #0
	bge _0801C7B0
_0801C754:
	lsls r1, r4, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
_0801C75A:
	str r0, [r5, #0x14]
	mov r0, sp
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	movs r0, #0
	strb r1, [r2]
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1a]
_0801C76E:
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801C7A4 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801C7A8 @ =0xDFFFFFFF
_0801C788:
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801C7AC @ =sub_801D9D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _0801C86A
	.align 2, 0
_0801C7A0: .4byte 0x0000023B
_0801C7A4: .4byte 0xFFFFFB00
_0801C7A8: .4byte 0xDFFFFFFF
_0801C7AC: .4byte sub_801D9D0
_0801C7B0:
	ldrh r1, [r5, #0x34]
	ldr r0, _0801C808 @ =0x0000023B
	cmp r1, r0
	bne _0801C7CA
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801C7D2
_0801C7CA:
	movs r0, #0xef
	strh r0, [r5, #0x30]
	ldr r0, _0801C80C @ =0x0000FFFF
	strh r0, [r5, #0x32]
_0801C7D2:
	ldr r0, _0801C810 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801C86A
	ldr r0, [r5, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #5
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bne _0801C82C
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C818
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801C82C
	ldr r1, _0801C814 @ =sub_801DE94
	b _0801C82E
	.align 2, 0
_0801C808: .4byte 0x0000023B
_0801C80C: .4byte 0x0000FFFF
_0801C810: .4byte gStageData
_0801C814: .4byte sub_801DE94
_0801C818:
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C82C
	ldr r1, _0801C828 @ =sub_801DE94
	b _0801C82E
	.align 2, 0
_0801C828: .4byte sub_801DE94
_0801C82C:
	ldr r1, _0801C838 @ =Player_800657C
_0801C82E:
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0801C86A
	.align 2, 0
_0801C838: .4byte Player_800657C
_0801C83C:
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801C878 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801C87C @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801C880 @ =sub_801D9D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
_0801C86A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C878: .4byte 0xFFFFFB00
_0801C87C: .4byte 0xDFFFFFFF
_0801C880: .4byte sub_801D9D0

	thumb_func_start sub_801C884
sub_801C884: @ 0x0801C884
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0801C8DC
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	subs r0, #2
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r4, sp, #8
	str r4, [sp]
	ldr r4, _0801C8D8 @ =sub_805203C
	str r4, [sp, #4]
	bl sub_80517FC
	adds r2, r0, #0
	add r0, sp, #8
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801C914
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0x40
	b _0801C926
	.align 2, 0
_0801C8D8: .4byte sub_805203C
_0801C8DC:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #8
	str r3, [sp]
	ldr r3, _0801C91C @ =sub_805203C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	add r0, sp, #8
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0801C920
_0801C914:
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	b _0801C928
	.align 2, 0
_0801C91C: .4byte sub_805203C
_0801C920:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xc0
_0801C926:
	strb r0, [r1]
_0801C928:
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801C934
sub_801C934: @ 0x0801C934
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801C9A2
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801C96C
	adds r0, r5, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	b _0801C97A
_0801C96C:
	adds r0, r5, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
_0801C97A:
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C990
	ldr r0, [r5, #0x10]
	ldr r1, _0801C98C @ =0xFFFFF000
	b _0801C996
	.align 2, 0
_0801C98C: .4byte 0xFFFFF000
_0801C990:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #5
_0801C996:
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl Player_8005380
	b _0801C9FA
_0801C9A2:
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801C9E8
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801C9DC @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801C9E0 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801C9E4 @ =sub_801D9D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _0801C9FA
	.align 2, 0
_0801C9DC: .4byte 0xFFFFFB00
_0801C9E0: .4byte 0xDFFFFFFF
_0801C9E4: .4byte sub_801D9D0
_0801C9E8:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C9FA
	adds r0, r5, #0
	bl sub_8016D30
_0801C9FA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801CA00
sub_801CA00: @ 0x0801CA00
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r3, #0
	ldr r1, [r5, #4]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801CA50
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801CA44 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801CA48 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801CA4C @ =sub_801D9D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _0801CB5C
	.align 2, 0
_0801CA44: .4byte 0xFFFFFB00
_0801CA48: .4byte 0xDFFFFFFF
_0801CA4C: .4byte sub_801D9D0
_0801CA50:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801CA66
	ldrh r1, [r5, #0x1e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CA72
	movs r3, #1
	b _0801CADE
_0801CA66:
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801CA72
	movs r3, #1
_0801CA72:
	cmp r3, #0
	bne _0801CADE
	ldr r2, [r5, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0801CA96
	movs r4, #8
_0801CA96:
	ldr r1, _0801CAC4 @ =gUnknown_080CE5B8
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r4, #1
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _0801CAAE
	rsbs r3, r3, #0
_0801CAAE:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0801CACC
	cmp r1, #0
	beq _0801CAC8
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _0801CACA
	.align 2, 0
_0801CAC4: .4byte gUnknown_080CE5B8
_0801CAC8:
	orrs r2, r4
_0801CACA:
	str r2, [r5, #4]
_0801CACC:
	strh r3, [r5, #0x1c]
	adds r0, r5, #0
	bl Player_800891C
	adds r0, r5, #0
	movs r1, #0x6e
	bl Player_PlaySong
	b _0801CB5C
_0801CADE:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r4, [r0]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _0801CAFC
	asrs r0, r2, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0801CAFC
	movs r4, #0
_0801CAFC:
	ldr r0, _0801CB64 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801CB2C
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r2, r4, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bge _0801CB22
	adds r2, r1, #0
_0801CB22:
	adds r4, r2, #0
	adds r0, r5, #0
	movs r1, #0x6d
	bl Player_PlaySong
_0801CB2C:
	strh r4, [r6]
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CB5C
	adds r0, r5, #0
	bl sub_8012EB8
	ldr r0, [r5, #4]
	movs r1, #0x82
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #4
	bne _0801CB5C
	adds r0, r5, #0
	bl Player_8012FE0
	movs r0, #0x18
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_800DAF4
_0801CB5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB64: .4byte gStageData

	thumb_func_start sub_801CB68
sub_801CB68: @ 0x0801CB68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801CB80
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _0801CC0E
_0801CB80:
	adds r0, r4, #0
	bl sub_8015460
	movs r1, #0x18
	ldrsh r2, [r4, r1]
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	movs r1, #0x1a
	ldrsh r2, [r4, r1]
	ldr r1, [r4, #0x14]
	adds r1, r1, r2
	str r1, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bhi _0801CBFC
	lsls r0, r0, #2
	ldr r1, _0801CBAC @ =_0801CBB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CBAC: .4byte _0801CBB0
_0801CBB0: @ jump table
	.4byte _0801CBC4 @ case 0
	.4byte _0801CBC4 @ case 1
	.4byte _0801CBCA @ case 2
	.4byte _0801CBD2 @ case 3
	.4byte _0801CBD8 @ case 4
_0801CBC4:
	movs r0, #0xf0
	strh r0, [r4, #0x30]
	b _0801CBFC
_0801CBCA:
	adds r0, r4, #0
	bl sub_801DEE4
	b _0801CC0E
_0801CBD2:
	movs r0, #0xf1
	strh r0, [r4, #0x30]
	b _0801CBFC
_0801CBD8:
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801CBF8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_800DAF4
	b _0801CC0E
	.align 2, 0
_0801CBF8: .4byte 0xFFFBFFFF
_0801CBFC:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CC0E
	adds r0, r4, #0
	bl sub_8017004
_0801CC0E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801CC14
sub_801CC14: @ 0x0801CC14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	beq _0801CC2E
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _0801CCA8
_0801CC2E:
	adds r0, r5, #0
	bl sub_8015460
	movs r1, #0x18
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #0x10]
	adds r1, r1, r2
	str r1, [r5, #0x10]
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	ldr r1, [r5, #0x14]
	adds r1, r1, r2
	str r1, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0801CC6C
	ldr r4, _0801CC68 @ =sub_801CB68
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	adds r0, r5, #0
	adds r0, #0x9e
	strh r6, [r0]
	b _0801CCA8
	.align 2, 0
_0801CC68: .4byte sub_801CB68
_0801CC6C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0801CC80
	subs r0, r2, #1
	strh r0, [r1]
	b _0801CC96
_0801CC80:
	adds r2, r5, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0801CCB0 @ =0xFFFFFBB0
	cmp r1, r0
	ble _0801CC96
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
_0801CC96:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CCA8
	adds r0, r5, #0
	bl sub_8017004
_0801CCA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CCB0: .4byte 0xFFFFFBB0

	thumb_func_start sub_801CCB4
sub_801CCB4: @ 0x0801CCB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #6
	bl sub_8012F94
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801CCE2
	movs r0, #0
	strh r0, [r4, #0x1a]
_0801CCE2:
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #0x1c]
	ldr r1, [r4, #4]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0801CCF8
	asrs r0, r2, #1
	strh r0, [r4, #0x1c]
_0801CCF8:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801CD12
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r3, [r0]
	b _0801CD20
_0801CD12:
	ldrh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_0801CD20:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r5, r4, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, _0801CD4C @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CD4C: .4byte 0x00040004

	thumb_func_start sub_801CD50
sub_801CD50: @ 0x0801CD50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r0, #0
	movs r7, #0
	ldr r1, _0801CDF4 @ =gUnknown_080CECD0
	mov r0, sp
	movs r2, #0x14
	bl memcpy
	add r6, sp, #0x14
	ldr r1, _0801CDF8 @ =gUnknown_080CECE4
	adds r0, r6, #0
	movs r2, #0x14
	bl memcpy
	adds r0, r4, #0
	bl sub_801D1D0
	adds r0, r4, #0
	bl sub_801D2FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CD86
	adds r0, r4, #0
	bl sub_801CE94
_0801CD86:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	beq _0801CE4C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r3, [r0]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801CDFC @ =gPlayers
	adds r2, r0, r1
	ldr r0, _0801CE00 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0801CDCC
	movs r5, #0x1c
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #8
	beq _0801CDCC
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #8
	bne _0801CE04
_0801CDCC:
	movs r0, #0x30
	ldrsh r3, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1a
	add r0, sp
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801CE28
	lsrs r1, r1, #0x1a
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801CE28
	movs r7, #1
	b _0801CE2C
	.align 2, 0
_0801CDF4: .4byte gUnknown_080CECD0
_0801CDF8: .4byte gUnknown_080CECE4
_0801CDFC: .4byte gPlayers
_0801CE00: .4byte gStageData
_0801CE04:
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1a
	adds r0, r6, r0
	ldrh r2, [r2, #0x34]
	ldrh r0, [r0]
	cmp r2, r0
	beq _0801CE28
	lsrs r1, r1, #0x1a
	mov r0, sp
	adds r0, #0x16
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r2, r0
	beq _0801CE28
	movs r7, #1
_0801CE28:
	cmp r7, #0
	beq _0801CE80
_0801CE2C:
	ldr r0, _0801CE48 @ =0xDDFBFFFF
	mov r1, ip
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl Player_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_800DAF4
	b _0801CE8C
	.align 2, 0
_0801CE48: .4byte 0xDDFBFFFF
_0801CE4C:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801CE80
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801CE80
	ldr r0, _0801CE7C @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801CE80
	adds r0, r4, #0
	bl Player_8007620
	b _0801CE8C
	.align 2, 0
_0801CE7C: .4byte gStageData
_0801CE80:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8015064
_0801CE8C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801CE94
sub_801CE94: @ 0x0801CE94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801CEF8 @ =gPlayers
	adds r5, r0, r1
	movs r3, #0
	ldr r0, _0801CEFC @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r2, [r0, #0x14]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CECA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r3, r0, #0x1f
_0801CECA:
	ldrh r0, [r4, #0x1e]
	ands r2, r0
	cmp r2, #0
	bne _0801CEE0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0801CEE0
	movs r3, #1
_0801CEE0:
	cmp r3, #0
	beq _0801CF20
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #0x18]
	cmp r0, #0
	bgt _0801CF00
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801CF08
	.align 2, 0
_0801CEF8: .4byte gPlayers
_0801CEFC: .4byte gStageData
_0801CF00:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801CF08:
	str r0, [r4, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0x18]
	ldr r1, _0801CF1C @ =sub_801DF80
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801CF46
	.align 2, 0
_0801CF1C: .4byte sub_801DF80
_0801CF20:
	adds r0, r4, #0
	bl sub_801CF4C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0801CF46
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_0801CF46:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801CF4C
sub_801CF4C: @ 0x0801CF4C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r4, [r0]
	ldr r2, [r3, #4]
	movs r0, #0x42
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #4]
	lsls r5, r4, #0x18
	asrs r1, r5, #0x18
	movs r6, #0x7f
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0801CF82
	movs r0, #0xe7
	strh r0, [r3, #0x30]
	lsrs r0, r5, #0x18
	cmp r0, #0x80
	bne _0801CF9A
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #4]
	b _0801CF9A
_0801CF82:
	cmp r1, #0
	bge _0801CF8C
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801CF8C:
	movs r0, #0xe8
	strh r0, [r3, #0x30]
	ldr r0, _0801CFA0 @ =0x00000203
	strh r0, [r3, #0x34]
	ands r4, r6
	lsrs r0, r4, #5
	strh r0, [r3, #0x36]
_0801CF9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFA0: .4byte 0x00000203

	thumb_func_start sub_801CFA4
sub_801CFA4: @ 0x0801CFA4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r4, [r0]
	ldr r2, [r3, #4]
	movs r0, #0x42
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #4]
	lsls r5, r4, #0x18
	asrs r1, r5, #0x18
	movs r6, #0x7f
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0801CFDA
	movs r0, #0xf3
	strh r0, [r3, #0x30]
	lsrs r0, r5, #0x18
	cmp r0, #0x80
	bne _0801CFF2
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #4]
	b _0801CFF2
_0801CFDA:
	cmp r1, #0
	bge _0801CFE4
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801CFE4:
	movs r0, #0xe8
	strh r0, [r3, #0x30]
	ldr r0, _0801CFF8 @ =0x00000203
	strh r0, [r3, #0x34]
	ands r4, r6
	lsrs r0, r4, #5
	strh r0, [r3, #0x36]
_0801CFF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFF8: .4byte 0x00000203

	thumb_func_start sub_801CFFC
sub_801CFFC: @ 0x0801CFFC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D0D8
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801D0D8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0801D0D8
	movs r0, #0xe
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #6
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801D068
	strh r2, [r4, #0x1a]
_0801D068:
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #0x1c]
	ldr r1, [r4, #4]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D07E
	asrs r0, r2, #1
	strh r0, [r4, #0x1c]
_0801D07E:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801D098
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r3, [r0]
	b _0801D0A6
_0801D098:
	ldrh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_0801D0A6:
	movs r1, #0
	movs r0, #0xec
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r5, r4, r0
	strb r1, [r5]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, _0801D0E0 @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, _0801D0E4 @ =sub_801DCDC
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D0D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0E0: .4byte 0x00040004
_0801D0E4: .4byte sub_801DCDC

	thumb_func_start sub_801D0E8
sub_801D0E8: @ 0x0801D0E8
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	ldr r0, _0801D140 @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r3, [r0, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801D108
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_0801D108:
	ldrh r0, [r2, #0x1e]
	ands r3, r0
	ldr r4, [r2, #4]
	cmp r3, #0
	bne _0801D11E
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r4
	cmp r0, #0
	bne _0801D11E
	movs r5, #1
_0801D11E:
	adds r1, r4, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D12A
	movs r5, #1
_0801D12A:
	cmp r5, #0
	beq _0801D160
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	ldrh r3, [r2, #0x18]
	cmp r0, #0
	bgt _0801D144
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #4]
	b _0801D14C
	.align 2, 0
_0801D140: .4byte gStageData
_0801D144:
	movs r0, #2
	rsbs r0, r0, #0
	ands r4, r0
	str r4, [r2, #4]
_0801D14C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x12
	strh r0, [r2, #0x18]
	ldr r1, _0801D15C @ =sub_801DF80
	adds r0, r2, #0
	bl SetPlayerCallback
	b _0801D166
	.align 2, 0
_0801D15C: .4byte sub_801DF80
_0801D160:
	adds r0, r2, #0
	bl sub_801D16C
_0801D166:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801D16C
sub_801D16C: @ 0x0801D16C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r4, [r0]
	ldr r2, [r3, #4]
	movs r0, #0x42
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #4]
	lsls r5, r4, #0x18
	asrs r1, r5, #0x18
	movs r6, #0x7f
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0801D1A2
	movs r0, #0xec
	strh r0, [r3, #0x30]
	lsrs r0, r5, #0x18
	cmp r0, #0x80
	bne _0801D1C2
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #4]
	b _0801D1C2
_0801D1A2:
	cmp r1, #0
	bge _0801D1AC
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801D1AC:
	movs r0, #0xe8
	strh r0, [r3, #0x30]
	ldr r0, _0801D1C8 @ =0x00000203
	strh r0, [r3, #0x34]
	ands r4, r6
	lsrs r0, r4, #5
	strh r0, [r3, #0x36]
	ldr r1, _0801D1CC @ =sub_801CD50
	adds r0, r3, #0
	bl SetPlayerCallback
_0801D1C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D1C8: .4byte 0x00000203
_0801D1CC: .4byte sub_801CD50

	thumb_func_start sub_801D1D0
sub_801D1D0: @ 0x0801D1D0
	push {lr}
	mov ip, r0
	movs r1, #0x1c
	ldrsh r3, [r0, r1]
	cmp r3, #0
	bge _0801D1DE
	rsbs r3, r3, #0
_0801D1DE:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	ldr r0, _0801D1F0 @ =0x000002FF
	cmp r3, r0
	bgt _0801D1F4
	adds r3, #6
	b _0801D204
	.align 2, 0
_0801D1F0: .4byte 0x000002FF
_0801D1F4:
	ldr r0, _0801D238 @ =0x00000EFF
	cmp r3, r0
	bgt _0801D204
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0
	bne _0801D204
	adds r3, #3
_0801D204:
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D220
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r3, r0
	ble _0801D220
	subs r3, #9
	cmp r3, r0
	bge _0801D220
	adds r3, r0, #0
_0801D220:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D23C
	rsbs r0, r3, #0
	mov r1, ip
	strh r0, [r1, #0x1c]
	b _0801D240
	.align 2, 0
_0801D238: .4byte 0x00000EFF
_0801D23C:
	mov r0, ip
	strh r3, [r0, #0x1c]
_0801D240:
	mov r0, ip
	ldrh r1, [r0, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801D26A
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	beq _0801D2A0
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _0801D260
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801D260:
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D29E
_0801D26A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D28E
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801D2A0
	cmp r0, #0
	ble _0801D284
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801D284:
	lsls r0, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x12
	adds r0, r0, r2
	b _0801D29E
_0801D28E:
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801D2A0
	adds r0, r1, #2
	lsls r0, r0, #0x18
_0801D29E:
	lsrs r2, r0, #0x18
_0801D2A0:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	strb r2, [r0]
	ldr r1, _0801D2D4 @ =gSineTable
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x15
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r3, ip
	strh r0, [r3, #0x18]
	ldrh r1, [r3, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r3, r2]
	cmp r0, #0x7f
	bgt _0801D2D8
	adds r0, r1, #0
	adds r0, #0x18
	b _0801D2DE
	.align 2, 0
_0801D2D4: .4byte gSineTable
_0801D2D8:
	adds r0, r1, #0
	subs r0, #0x18
	mov r3, ip
_0801D2DE:
	strh r0, [r3, #0x1a]
	ldr r1, _0801D2EC @ =gCamera
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ble _0801D2F0
	subs r0, #2
	b _0801D2F6
	.align 2, 0
_0801D2EC: .4byte gCamera
_0801D2F0:
	cmp r0, #0
	bge _0801D2F8
	adds r0, #4
_0801D2F6:
	str r0, [r1, #0x40]
_0801D2F8:
	pop {r0}
	bx r0

	thumb_func_start sub_801D2FC
sub_801D2FC: @ 0x0801D2FC
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

	thumb_func_start sub_801D3F0
sub_801D3F0: @ 0x0801D3F0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D4C4
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #8
	bl sub_8011024
	adds r6, r0, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _0801D424
	b _0801D52C
_0801D424:
	cmp r6, #0
	bne _0801D42A
	b _0801D548
_0801D42A:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _0801D47C
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	subs r1, #1
	adds r2, r5, #0
	adds r2, #0x24
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _0801D478 @ =sub_805217C
	str r4, [sp, #4]
	bl sub_80517FC
	cmp r0, #0
	bge _0801D4B6
	b _0801D52C
	.align 2, 0
_0801D478: .4byte sub_805217C
_0801D47C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	subs r1, #1
	adds r2, r5, #0
	adds r2, #0x24
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _0801D4C0 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	blt _0801D52C
_0801D4B6:
	lsls r1, r6, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	b _0801D546
	.align 2, 0
_0801D4C0: .4byte sub_805217C
_0801D4C4:
	ldr r0, [r5, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #8
	bl sub_8011024
	adds r6, r0, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	bne _0801D52C
	cmp r6, #0
	beq _0801D548
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	bne _0801D540
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r1, #1
	adds r2, r5, #0
	adds r2, #0x24
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _0801D538 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _0801D540
_0801D52C:
	ldr r1, _0801D53C @ =sub_801DF80
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0801D548
	.align 2, 0
_0801D538: .4byte sub_805217C
_0801D53C: .4byte sub_801DF80
_0801D540:
	lsls r1, r6, #8
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
_0801D546:
	str r0, [r5, #0x10]
_0801D548:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801D550
sub_801D550: @ 0x0801D550
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0801D56C
	adds r0, r1, #0
	adds r0, #0x18
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801D580
	b _0801D578
_0801D56C:
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0801D580
_0801D578:
	adds r0, r4, #0
	bl sub_801DD68
	b _0801D5C0
_0801D580:
	ldr r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0801D598
	ldr r1, _0801D594 @ =sub_801DF80
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D5C0
	.align 2, 0
_0801D594: .4byte sub_801DF80
_0801D598:
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012BA4
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r4, #0
	bl Player_8005380
	adds r0, r4, #0
	bl sub_8012EA8
	ldr r1, _0801D5C8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D5C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5C8: .4byte Player_8005380

	thumb_func_start sub_801D5CC
sub_801D5CC: @ 0x0801D5CC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801D628
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D5F4
	ldr r0, _0801D620 @ =0x0000FE80
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0x70
	bl Player_PlaySong
_0801D5F4:
	adds r0, r4, #0
	bl sub_8017004
	ldr r1, [r4, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #4
	beq _0801D678
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801D624 @ =sub_801D684
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D678
	.align 2, 0
_0801D620: .4byte 0x0000FE80
_0801D624: .4byte sub_801D684
_0801D628:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D678
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801D678
	movs r0, #0x24
	ands r0, r1
	cmp r0, #4
	beq _0801D678
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801D680 @ =sub_801D684
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D678:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D680: .4byte sub_801D684

	thumb_func_start sub_801D684
sub_801D684: @ 0x0801D684
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801D6A8
	ldr r1, _0801D6A4 @ =Player_800891C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D732
	.align 2, 0
_0801D6A4: .4byte Player_800891C
_0801D6A8:
	ldrh r0, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r1, #0
	ble _0801D6B6
	subs r0, #8
	b _0801D6BC
_0801D6B6:
	cmp r1, #0
	bge _0801D6BE
	adds r0, #8
_0801D6BC:
	strh r0, [r4, #0x1c]
_0801D6BE:
	ldrh r0, [r4, #0x1c]
	adds r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0801D6CE
	movs r0, #0
	strh r0, [r4, #0x1c]
_0801D6CE:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0801D6E4
	adds r0, r4, #0
	bl Player_8005380
	adds r0, r4, #0
	bl sub_8012EA8
	b _0801D732
_0801D6E4:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D732
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D732
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801D732
	ldr r1, _0801D738 @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D732:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D738: .4byte Player_800DB30

	thumb_func_start Player_801D73C
Player_801D73C: @ 0x0801D73C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D7A6
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801D778 @ =gPlayers
	adds r0, r0, r1
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D77C
	movs r0, #0xf9
	lsls r0, r0, #8
	b _0801D780
	.align 2, 0
_0801D778: .4byte gPlayers
_0801D77C:
	movs r0, #0xe0
	lsls r0, r0, #3
_0801D780:
	strh r0, [r2, #0x18]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #4]
	movs r0, #0x14
	strh r0, [r2, #0x30]
	movs r0, #0xfe
	lsls r0, r0, #1
	strh r0, [r2, #0x34]
	movs r0, #1
	strh r0, [r2, #0x36]
	ldr r1, _0801D7AC @ =Player_801DF18
	adds r0, r2, #0
	bl SetPlayerCallback
_0801D7A6:
	pop {r0}
	bx r0
	.align 2, 0
_0801D7AC: .4byte Player_801DF18

	thumb_func_start sub_801D7B0
sub_801D7B0: @ 0x0801D7B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D7FC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r5, #0
	movs r0, #0xe2
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x7e
	bl Player_PlaySong
	strh r5, [r4, #0x1c]
	ldr r5, _0801D800 @ =sub_801DA04
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D7FC: .4byte 0xFFFFBFFF
_0801D800: .4byte sub_801DA04

	thumb_func_start sub_801D804
sub_801D804: @ 0x0801D804
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D844 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xe3
	strh r0, [r4, #0x30]
	ldr r5, _0801D848 @ =sub_801C414
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D844: .4byte 0xFFFFBFFF
_0801D848: .4byte sub_801C414

	thumb_func_start sub_801D84C
sub_801D84C: @ 0x0801D84C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D89C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0801D8A0 @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xe5
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	adds r0, #0x1b
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0xe2
	bl Player_PlaySong
	ldr r5, _0801D8A4 @ =sub_801DB20
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D89C: .4byte 0xFFFFBFFF
_0801D8A0: .4byte 0x00008004
_0801D8A4: .4byte sub_801DB20

	thumb_func_start sub_801D8A8
sub_801D8A8: @ 0x0801D8A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_801CCB4
	movs r0, #0xe7
	strh r0, [r5, #0x30]
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0801D8C6
	ldr r0, _0801D8E0 @ =0xFFFFFD00
	cmp r1, r0
	bge _0801D8C8
_0801D8C6:
	strh r0, [r5, #0x1a]
_0801D8C8:
	ldr r4, _0801D8E4 @ =sub_801CD50
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8E0: .4byte 0xFFFFFD00
_0801D8E4: .4byte sub_801CD50

	thumb_func_start sub_801D8E8
sub_801D8E8: @ 0x0801D8E8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0xee
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D948 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	bl sub_8012F94
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r5, _0801D94C @ =sub_801DDF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D948: .4byte 0xFFFFBFFF
_0801D94C: .4byte sub_801DDF4

	thumb_func_start sub_801D950
sub_801D950: @ 0x0801D950
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_801CCB4
	movs r0, #0xf3
	strh r0, [r4, #0x30]
	ldr r5, _0801D974 @ =sub_801DC34
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D974: .4byte sub_801DC34

	thumb_func_start sub_801D978
sub_801D978: @ 0x0801D978
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D9C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801D9C8 @ =0x20008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xf6
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x14
	strh r0, [r1]
	ldr r5, _0801D9CC @ =Player_801D73C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D9C4: .4byte 0xFFFFBFFF
_0801D9C8: .4byte 0x20008004
_0801D9CC: .4byte Player_801D73C

	thumb_func_start sub_801D9D0
sub_801D9D0: @ 0x0801D9D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D9FC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801D9FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801DA04
sub_801DA04: @ 0x0801DA04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DA6A
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DA6A
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DA6A
	adds r0, r4, #0
	movs r1, #0x7e
	bl Player_PlaySong
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801DA70 @ =sub_801DA74
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DA6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA70: .4byte sub_801DA74

	thumb_func_start sub_801DA74
sub_801DA74: @ 0x0801DA74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DACC
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DACC
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DACC
	ldr r1, _0801DAD4 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DACC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DAD4: .4byte Player_8005380

	thumb_func_start sub_801DAD8
sub_801DAD8: @ 0x0801DAD8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801DAF4
	ldr r1, _0801DAF0 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801DB18
	.align 2, 0
_0801DAF0: .4byte Player_800DAF4
_0801DAF4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DB18
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801DB18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801DB20
sub_801DB20: @ 0x0801DB20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DB66
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DB66
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DB66
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801DB6C @ =sub_801DB70
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DB66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DB6C: .4byte sub_801DB70

	thumb_func_start sub_801DB70
sub_801DB70: @ 0x0801DB70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DBBE
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DBBE
	ldr r1, [r4]
	ldr r0, _0801DBC4 @ =Player_8005380
	cmp r1, r0
	beq _0801DBB0
	ldr r0, _0801DBC8 @ =Player_80077CC
	cmp r1, r0
	bne _0801DBBE
_0801DBB0:
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801DBCC @ =sub_801DBD0
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DBBE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DBC4: .4byte Player_8005380
_0801DBC8: .4byte Player_80077CC
_0801DBCC: .4byte sub_801DBD0

	thumb_func_start sub_801DBD0
sub_801DBD0: @ 0x0801DBD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DC28
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DC28
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DC28
	ldr r1, _0801DC30 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DC28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC30: .4byte Player_8005380

	thumb_func_start sub_801DC34
sub_801DC34: @ 0x0801DC34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D1D0
	adds r0, r4, #0
	bl sub_801D2FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DC4E
	adds r0, r4, #0
	bl sub_801DC60
_0801DC4E:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8015064
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DC60
sub_801DC60: @ 0x0801DC60
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r0, _0801DCAC @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r3, [r0, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC80
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_0801DC80:
	ldrh r0, [r2, #0x1e]
	ands r3, r0
	cmp r3, #0
	bne _0801DC96
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0801DC96
	movs r4, #1
_0801DC96:
	cmp r4, #0
	beq _0801DCD0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	ldrh r3, [r2, #0x18]
	cmp r0, #0
	bgt _0801DCB0
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	b _0801DCB8
	.align 2, 0
_0801DCAC: .4byte gStageData
_0801DCB0:
	ldr r0, [r2, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801DCB8:
	str r0, [r2, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x12
	strh r0, [r2, #0x18]
	ldr r1, _0801DCCC @ =sub_801DF80
	adds r0, r2, #0
	bl SetPlayerCallback
	b _0801DCD6
	.align 2, 0
_0801DCCC: .4byte sub_801DF80
_0801DCD0:
	adds r0, r2, #0
	bl sub_801CFA4
_0801DCD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DCDC
sub_801DCDC: @ 0x0801DCDC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DCF8
	ldr r1, _0801DCFC @ =sub_801DD00
	adds r0, r2, #0
	bl SetPlayerCallback
_0801DCF8:
	pop {r0}
	bx r0
	.align 2, 0
_0801DCFC: .4byte sub_801DD00

	thumb_func_start sub_801DD00
sub_801DD00: @ 0x0801DD00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D1D0
	adds r0, r4, #0
	bl sub_801D2FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DD1A
	adds r0, r4, #0
	bl sub_801D0E8
_0801DD1A:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8015064
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DD2C
sub_801DD2C: @ 0x0801DD2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D550
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801DD44
	adds r0, r4, #0
	bl sub_8016E50
_0801DD44:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DD62
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016E00
_0801DD62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DD68
sub_801DD68: @ 0x0801DD68
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_8012634
	movs r0, #1
	adds r1, r5, #0
	mov r2, sp
	movs r3, #0
	bl sub_8012E18
	adds r2, r0, #0
	cmp r2, #0xb
	bgt _0801DDA6
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801DD92
	rsbs r2, r2, #0
_0801DD92:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	b _0801DDDE
_0801DDA6:
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801DDDE
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801DDE8 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801DDEC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801DDF0 @ =sub_801D9D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
_0801DDDE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDE8: .4byte 0xFFFFFB00
_0801DDEC: .4byte 0xDFFFFFFF
_0801DDF0: .4byte sub_801D9D0

	thumb_func_start sub_801DDF4
sub_801DDF4: @ 0x0801DDF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801C4A0
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DE14
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8017004
_0801DE14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801DE1C
sub_801DE1C: @ 0x0801DE1C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf5
	strh r0, [r5, #0x30]
	ldr r0, [r5, #4]
	ldr r1, _0801DE48 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801DE4C
	adds r0, r5, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	b _0801DE5A
	.align 2, 0
_0801DE48: .4byte 0xDFFFFFFF
_0801DE4C:
	adds r0, r5, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
_0801DE5A:
	str r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801DE8C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0801DE90 @ =sub_801C934
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE8C: .4byte 0xFFFFBFFF
_0801DE90: .4byte sub_801C934

	thumb_func_start sub_801DE94
sub_801DE94: @ 0x0801DE94
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	movs r1, #0x12
	orrs r0, r1
	str r0, [r4, #4]
	movs r5, #0
	movs r0, #0xf4
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FC0
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #0x6d
	bl Player_PlaySong
	ldr r5, _0801DEE0 @ =sub_801CA00
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEE0: .4byte sub_801CA00

	thumb_func_start sub_801DEE4
sub_801DEE4: @ 0x0801DEE4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0xf2
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
	ldr r5, _0801DF14 @ =sub_801CC14
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF14: .4byte sub_801CC14

	thumb_func_start Player_801DF18
Player_801DF18: @ 0x0801DF18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DF6E
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	beq _0801DF4E
	movs r0, #1
	strh r0, [r4, #0x36]
_0801DF4E:
	ldr r2, [r4, #4]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801DF60
	ldr r1, [r4]
	ldr r0, _0801DF74 @ =Player_801DF18
	cmp r1, r0
	beq _0801DF6E
_0801DF60:
	ldr r0, _0801DF78 @ =0xDDFFFFFF
	ands r2, r0
	str r2, [r4, #4]
	ldr r1, _0801DF7C @ =Player_800891C
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DF6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF74: .4byte Player_801DF18
_0801DF78: .4byte 0xDDFFFFFF
_0801DF7C: .4byte Player_800891C

	thumb_func_start sub_801DF80
sub_801DF80: @ 0x0801DF80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xe9
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_8012FE0
	ldr r0, [r4, #0x14]
	ldr r1, _0801DFB8 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801DFBC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r5, _0801DFC0 @ =sub_801D9D0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFB8: .4byte 0xFFFFFB00
_0801DFBC: .4byte 0xDFFFFFFF
_0801DFC0: .4byte sub_801D9D0

	thumb_func_start sub_801DFC4
sub_801DFC4: @ 0x0801DFC4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801DFFC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	movs r0, #0xf8
	strh r0, [r5, #0x30]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E000
	movs r0, #0xfc
	lsls r0, r0, #8
	b _0801E004
	.align 2, 0
_0801DFFC: .4byte 0xFFFFBFFF
_0801E000:
	movs r0, #0x80
	lsls r0, r0, #3
_0801E004:
	strh r0, [r5, #0x18]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldr r1, _0801E030 @ =0x00000212
	adds r0, r5, #0
	bl Player_PlaySong
	adds r0, r5, #0
	bl sub_8016F28
	ldr r4, _0801E034 @ =sub_801E92C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E030: .4byte 0x00000212
_0801E034: .4byte sub_801E92C

	thumb_func_start sub_801E038
sub_801E038: @ 0x0801E038
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
	movs r0, #0xfd
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E070 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E074
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801E078
	.align 2, 0
_0801E070: .4byte 0xFFFFBFFF
_0801E074:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801E078:
	strh r0, [r5, #0x18]
	movs r0, #0
	strh r0, [r5, #0x1a]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x14
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x70
	bl Player_PlaySong
	ldr r4, _0801E0A8 @ =sub_801EAF4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E0A8: .4byte sub_801EAF4

	thumb_func_start sub_801E0AC
sub_801E0AC: @ 0x0801E0AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_8012FC0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x14
	cmp r0, r1
	bhi _0801E0DE
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E0D8
	movs r0, #0xfc
	lsls r0, r0, #8
	b _0801E0DC
_0801E0D8:
	movs r0, #0x80
	lsls r0, r0, #3
_0801E0DC:
	strh r0, [r5, #0x18]
_0801E0DE:
	movs r0, #0
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #4]
	ldr r0, _0801E118 @ =0x00000101
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0x6f
	bl Player_PlaySong
	adds r0, r5, #0
	bl sub_8016F28
	ldr r4, _0801E11C @ =sub_801E4C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E118: .4byte 0x00000101
_0801E11C: .4byte sub_801E4C0

	thumb_func_start sub_801E120
sub_801E120: @ 0x0801E120
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801E178
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0801E144
	movs r4, #8
_0801E144:
	ldr r1, _0801E170 @ =gUnknown_080CE5B8
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E15C
	rsbs r2, r2, #0
_0801E15C:
	strh r2, [r5, #0x1c]
	ldr r1, _0801E174 @ =Player_8005380
	adds r0, r5, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	movs r1, #0x6e
	bl Player_PlaySong
	b _0801E1D4
	.align 2, 0
_0801E170: .4byte gUnknown_080CE5B8
_0801E174: .4byte Player_8005380
_0801E178:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r4, [r0]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _0801E196
	asrs r0, r2, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0801E196
	movs r4, #0
_0801E196:
	ldr r0, _0801E210 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801E1D2
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r2, r4, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bge _0801E1BC
	adds r2, r1, #0
_0801E1BC:
	adds r4, r2, #0
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801E214 @ =0x00000211
	adds r0, r5, #0
	bl Player_PlaySong
_0801E1D2:
	strh r4, [r6]
_0801E1D4:
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E218
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E248
	adds r0, r5, #0
	bl sub_8016E50
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8016EB0
	adds r0, r5, #0
	bl Player_80149E4
	adds r0, r5, #0
	bl sub_8017004
	b _0801E248
	.align 2, 0
_0801E210: .4byte gStageData
_0801E214: .4byte 0x00000211
_0801E218:
	adds r0, r5, #0
	bl sub_8015144
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E248
	adds r0, r5, #0
	bl Player_801479C
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8012EB8
	adds r0, r5, #0
	bl sub_8016E00
_0801E248:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E250
sub_801E250: @ 0x0801E250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E2CC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801E292
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801E292
	movs r0, #1
	strh r0, [r4, #0x36]
_0801E292:
	ldr r1, [r4]
	ldr r0, _0801E2D4 @ =Player_8005380
	cmp r1, r0
	beq _0801E2AA
	ldr r0, _0801E2D8 @ =Player_80077CC
	cmp r1, r0
	beq _0801E2AA
	ldr r0, [r4, #4]
	ldr r1, _0801E2DC @ =0x00004024
	ands r0, r1
	cmp r0, #4
	beq _0801E2CC
_0801E2AA:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r1, _0801E2E0 @ =sub_801EA44
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801E2CC
	adds r0, r4, #0
	movs r1, #0xdf
	bl Player_PlaySong
_0801E2CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E2D4: .4byte Player_8005380
_0801E2D8: .4byte Player_80077CC
_0801E2DC: .4byte 0x00004024
_0801E2E0: .4byte sub_801EA44

	thumb_func_start sub_801E2E4
sub_801E2E4: @ 0x0801E2E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E30A
	ldr r0, [r4, #4]
	ldr r1, _0801E350 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801E354 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_0801E30A:
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E326
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E326
	adds r0, r4, #0
	movs r1, #0x81
	bl Player_PlaySong
_0801E326:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E34A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E34A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E350: .4byte 0xFFFF7FFF
_0801E354: .4byte Player_800DAF4

	thumb_func_start sub_801E358
sub_801E358: @ 0x0801E358
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E390
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	ldr r1, _0801E388 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801E38C @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E3D0
	.align 2, 0
_0801E388: .4byte 0xFFFF7FFF
_0801E38C: .4byte Player_800DAF4
_0801E390:
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E3AC
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E3AC
	adds r0, r4, #0
	movs r1, #0x81
	bl Player_PlaySong
_0801E3AC:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E3D0
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E3D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E3D8
sub_801E3D8: @ 0x0801E3D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E438
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801E404
	ldr r0, _0801E400 @ =0x0000FE08
	b _0801E406
	.align 2, 0
_0801E400: .4byte 0x0000FE08
_0801E404:
	ldr r0, _0801E418 @ =0x0000FC58
_0801E406:
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0801E41C @ =0xFFFFFD00
	cmp r1, r0
	bge _0801E420
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801E428
	.align 2, 0
_0801E418: .4byte 0x0000FC58
_0801E41C: .4byte 0xFFFFFD00
_0801E420:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0801E42A
_0801E428:
	strh r0, [r4, #0x18]
_0801E42A:
	ldr r1, _0801E434 @ =sub_801EA9C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E444
	.align 2, 0
_0801E434: .4byte sub_801EA9C
_0801E438:
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E444:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E44C
sub_801E44C: @ 0x0801E44C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0801E46C
	adds r0, r4, #0
	movs r1, #0x80
	bl Player_PlaySong
_0801E46C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801E4A0
	ldr r0, _0801E488 @ =0x0000FA50
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E48C
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0801E490
	.align 2, 0
_0801E488: .4byte 0x0000FA50
_0801E48C:
	movs r0, #0x80
	lsls r0, r0, #2
_0801E490:
	strh r0, [r4, #0x18]
	ldr r1, _0801E49C @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E4B8
	.align 2, 0
_0801E49C: .4byte Player_800DAF4
_0801E4A0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E4B8
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
_0801E4B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E4C0
sub_801E4C0: @ 0x0801E4C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0801E4DA
	adds r0, #0x10
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0801E4EC
	b _0801E4E8
_0801E4DA:
	cmp r1, #0
	ble _0801E4EC
	subs r0, #0x10
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801E4EC
_0801E4E8:
	movs r0, #0
	strh r0, [r4, #0x18]
_0801E4EC:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801E50E
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801E50E
	ldr r0, _0801E53C @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #1
	strh r0, [r4, #0x36]
_0801E50E:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0801E544
	ldr r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801E54E
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E53C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r1, _0801E540 @ =sub_801EB94
	b _0801E58E
	.align 2, 0
_0801E53C: .4byte 0xFFFFBFFF
_0801E540: .4byte sub_801EB94
_0801E544:
	ldr r0, [r4, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	beq _0801E5A0
_0801E54E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E5DA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801E5DA
	adds r0, r4, #0
	bl sub_8012FF0
	ldr r0, _0801E598 @ =0x00000101
	strh r0, [r4, #0x30]
	ldr r1, _0801E59C @ =sub_801E4C0
_0801E58E:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E5DA
	.align 2, 0
_0801E598: .4byte 0x00000101
_0801E59C: .4byte sub_801E4C0
_0801E5A0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E5DA
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EA8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801E5C4
	ldr r0, [r4, #4]
	orrs r0, r5
	b _0801E5CC
_0801E5C4:
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
_0801E5CC:
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	bl sub_8014E70
_0801E5DA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801E5E0
sub_801E5E0: @ 0x0801E5E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801E60C @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0801E614
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801E610 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E654
	.align 2, 0
_0801E60C: .4byte gStageData
_0801E610: .4byte Player_800DAF4
_0801E614:
	adds r0, r4, #0
	bl sub_8014940
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0x7f
	bgt _0801E636
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x1a]
_0801E636:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E654
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E654:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E65C
sub_801E65C: @ 0x0801E65C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8012FC0
	movs r0, #0xf7
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_80170A0
	ldr r1, _0801E694 @ =0x00000211
	adds r0, r4, #0
	bl Player_PlaySong
	ldr r5, _0801E698 @ =sub_801E120
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E694: .4byte 0x00000211
_0801E698: .4byte sub_801E120

	thumb_func_start sub_801E69C
sub_801E69C: @ 0x0801E69C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E6EC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xff
	strh r0, [r4, #0x30]
	ldr r5, _0801E6F0 @ =sub_801E980
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E6EC: .4byte 0xFFFFBFFF
_0801E6F0: .4byte sub_801E980

	thumb_func_start sub_801E6F4
sub_801E6F4: @ 0x0801E6F4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E748 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0801E74C @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E750 @ =0x00000103
	strh r0, [r4, #0x30]
	adds r0, #0x45
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8017E50
	ldr r5, _0801E754 @ =sub_801E2E4
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E748: .4byte 0xFFFFBFFF
_0801E74C: .4byte 0x00008004
_0801E750: .4byte 0x00000103
_0801E754: .4byte sub_801E2E4

	thumb_func_start sub_801E758
sub_801E758: @ 0x0801E758
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E7B0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0801E7B4 @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r0, #0x44
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8017EF4
	ldr r5, _0801E7B8 @ =sub_801E358
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E7B0: .4byte 0xFFFFBFFF
_0801E7B4: .4byte 0x00008004
_0801E7B8: .4byte sub_801E358

	thumb_func_start sub_801E7BC
sub_801E7BC: @ 0x0801E7BC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	ldr r1, _0801E81C @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E820 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r4, #0x1a]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	strh r2, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8018034
	ldr r5, _0801E824 @ =sub_801E9E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E81C: .4byte 0x00008004
_0801E820: .4byte 0xFFFFBFFF
_0801E824: .4byte sub_801E9E0

	thumb_func_start sub_801E828
sub_801E828: @ 0x0801E828
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	bl sub_8012FA0
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	ldr r0, _0801E880 @ =0x00000105
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r5, _0801E884 @ =sub_801E3D8
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E880: .4byte 0x00000105
_0801E884: .4byte sub_801E3D8

	thumb_func_start sub_801E888
sub_801E888: @ 0x0801E888
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	movs r5, #4
	orrs r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x1a]
	movs r0, #0x81
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_8017F98
	ldr r5, _0801E8DC @ =sub_801E44C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E8DC: .4byte sub_801E44C

	thumb_func_start sub_801E8E0
sub_801E8E0: @ 0x0801E8E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x1a]
	movs r0, #0x83
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldr r0, [r4, #4]
	ldr r1, _0801E924 @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r5, _0801E928 @ =sub_801E5E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E924: .4byte 0x00040004
_0801E928: .4byte sub_801E5E0

	thumb_func_start sub_801E92C
sub_801E92C: @ 0x0801E92C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801E948 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801E950
	ldr r1, _0801E94C @ =sub_801E0AC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E97A
	.align 2, 0
_0801E948: .4byte gStageData
_0801E94C: .4byte sub_801E0AC
_0801E950:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E97A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E97A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801E980
sub_801E980: @ 0x0801E980
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E9A0
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E9A0
	ldr r1, _0801E9D8 @ =0x00000216
	adds r0, r4, #0
	bl Player_PlaySong
_0801E9A0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E9D2
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801E9D2
	ldr r1, _0801E9DC @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801E9D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E9D8: .4byte 0x00000216
_0801E9DC: .4byte Player_8005380

	thumb_func_start sub_801E9E0
sub_801E9E0: @ 0x0801E9E0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EA38
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801EA38
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801EA38
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801EA40 @ =sub_801E250
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EA38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA40: .4byte sub_801E250

	thumb_func_start sub_801EA44
sub_801EA44: @ 0x0801EA44
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801EA70
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r0, [r4, #4]
	ldr r1, _0801EA68 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801EA6C @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801EA94
	.align 2, 0
_0801EA68: .4byte 0xFFFF7FFF
_0801EA6C: .4byte Player_800DAF4
_0801EA70:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EA94
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801EA94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801EA9C
sub_801EA9C: @ 0x0801EA9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EAEC
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801EABC
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0801EABC
	movs r0, #1
	strh r0, [r4, #0x36]
_0801EABC:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EAEC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801EAEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801EAF4
sub_801EAF4: @ 0x0801EAF4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EB38
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _0801EB38
	ldr r1, _0801EB40 @ =sub_801EB44
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EB38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB40: .4byte sub_801EB44

	thumb_func_start sub_801EB44
sub_801EB44: @ 0x0801EB44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EB88
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801EB88
	ldr r1, _0801EB90 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EB88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB90: .4byte Player_8005380

	thumb_func_start sub_801EB94
sub_801EB94: @ 0x0801EB94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801EBB0
	ldr r1, _0801EBBC @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EBB0:
	adds r0, r4, #0
	bl sub_8014E70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EBBC: .4byte Player_8005380

	thumb_func_start sub_801EBC0
sub_801EBC0: @ 0x0801EBC0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0801EBF8 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ECA6
	cmp r4, #0
	beq _0801ECA6
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, #6
	beq _0801EBFC
	cmp r1, #7
	beq _0801EC0A
	ldr r0, [r5, #0x50]
	cmp r0, r4
	beq _0801EC18
	adds r0, r4, #0
	bl sub_801ECAC
	b _0801ECA6
	.align 2, 0
_0801EBF8: .4byte gStageData
_0801EBFC:
	str r4, [r5, #0x50]
	movs r0, #0
	str r0, [r5, #0x54]
	adds r0, r4, #0
	bl sub_8020544
	b _0801ECA6
_0801EC0A:
	str r4, [r5, #0x50]
	movs r0, #0
	str r0, [r5, #0x54]
	adds r0, r4, #0
	bl sub_8020558
	b _0801ECA6
_0801EC18:
	ldrb r0, [r5, #0x18]
	cmp r0, r1
	beq _0801ECA6
	cmp r0, #0xf
	beq _0801ECA6
	cmp r1, #0xd
	bhi _0801EC8A
	lsls r0, r1, #2
	ldr r1, _0801EC30 @ =_0801EC34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801EC30: .4byte _0801EC34
_0801EC34: @ jump table
	.4byte _0801EC6C @ case 0
	.4byte _0801EC6C @ case 1
	.4byte _0801EC8A @ case 2
	.4byte _0801EC8A @ case 3
	.4byte _0801EC7C @ case 4
	.4byte _0801EC84 @ case 5
	.4byte _0801EC8A @ case 6
	.4byte _0801EC8A @ case 7
	.4byte _0801EC8A @ case 8
	.4byte _0801EC74 @ case 9
	.4byte _0801EC74 @ case 10
	.4byte _0801EC8A @ case 11
	.4byte _0801EC6C @ case 12
	.4byte _0801EC74 @ case 13
_0801EC6C:
	adds r0, r4, #0
	bl sub_8020444
	b _0801EC8A
_0801EC74:
	adds r0, r4, #0
	bl sub_8020488
	b _0801EC8A
_0801EC7C:
	adds r0, r4, #0
	bl sub_802051C
	b _0801EC8A
_0801EC84:
	adds r0, r4, #0
	bl sub_8020530
_0801EC8A:
	str r4, [r5, #0x50]
	strb r6, [r5, #0x18]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801EC9C
	strb r1, [r5, #0x1c]
	b _0801EC9E
_0801EC9C:
	strb r0, [r5, #0x1c]
_0801EC9E:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r5, #0x1d]
_0801ECA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801ECAC
sub_801ECAC: @ 0x0801ECAC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _0801ECF0 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x98
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r4, [r3, #0x50]
	adds r7, r2, #0
	cmp r4, r5
	beq _0801EDA4
	cmp r5, #0
	beq _0801EDA4
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0801ECF4
	ldr r0, [r3, #0x54]
	cmp r0, #0
	beq _0801ECE8
	adds r1, r4, #0
	adds r1, #0x54
	movs r0, #0
	strh r0, [r1]
_0801ECE8:
	movs r0, #0
	str r0, [r3, #0x54]
	b _0801ECF6
	.align 2, 0
_0801ECF0: .4byte gStageData
_0801ECF4:
	str r4, [r3, #0x54]
_0801ECF6:
	str r5, [r3, #0x50]
	ldr r0, [r3, #0x54]
	cmp r0, #0
	beq _0801ED48
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	bne _0801ED48
	ldr r0, [r3, #0x50]
	ldr r1, [r0, #4]
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0801ED20
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801ED24
_0801ED20:
	ldr r0, [r2, #0x10]
	ldr r1, _0801ED3C @ =0xFFFFE800
_0801ED24:
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801ED40
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801ED44
	.align 2, 0
_0801ED3C: .4byte 0xFFFFE800
_0801ED40:
	ldr r0, [r2, #0x14]
	ldr r1, _0801ED5C @ =0xFFFFE800
_0801ED44:
	adds r0, r0, r1
	str r0, [r3, #4]
_0801ED48:
	movs r0, #0xf
	strb r0, [r3, #0x18]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ED60
	strb r1, [r3, #0x1c]
	b _0801ED62
	.align 2, 0
_0801ED5C: .4byte 0xFFFFE800
_0801ED60:
	strb r0, [r3, #0x1c]
_0801ED62:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r3, #0x1d]
	ldrb r0, [r7, #3]
	cmp r0, #4
	bls _0801EDA0
	movs r1, #0
	ldr r0, _0801EDAC @ =gPlayers
	cmp r0, r5
	beq _0801ED94
	adds r2, r0, #0
_0801ED7A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0801ED94
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r5
	bne _0801ED7A
_0801ED94:
	ldrb r7, [r7, #6]
	cmp r1, r7
	bne _0801EDA0
	adds r0, r1, #0
	bl sub_80276A8
_0801EDA0:
	ldr r0, _0801EDB0 @ =sub_801F064
	str r0, [r6, #8]
_0801EDA4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EDAC: .4byte gPlayers
_0801EDB0: .4byte sub_801F064

	thumb_func_start sub_801EDB4
sub_801EDB4: @ 0x0801EDB4
	push {r4, r5, r6, lr}
	ldr r4, _0801EDFC @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #4]
	ldr r1, _0801EE00 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r6, #0xc]
	movs r2, #0
	movs r1, #0
	strh r1, [r6, #0x10]
	strh r1, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x14]
	strh r1, [r6, #0x16]
	movs r0, #0x3c
	strb r0, [r6, #0x1a]
	strb r2, [r6, #0x1b]
	strb r2, [r6, #0x19]
	ldr r0, _0801EE04 @ =0x03000020
	adds r5, r3, r0
	ldr r0, _0801EE08 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _0801EE10
	ldr r0, _0801EE0C @ =0x06014000
	b _0801EE16
	.align 2, 0
_0801EDFC: .4byte gCurTask
_0801EE00: .4byte 0xFFFFE800
_0801EE04: .4byte 0x03000020
_0801EE08: .4byte gStageData
_0801EE0C: .4byte 0x06014000
_0801EE10:
	cmp r0, #6
	bne _0801EE18
	ldr r0, _0801EE64 @ =0x06014020
_0801EE16:
	str r0, [r5]
_0801EE18:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	ldr r1, _0801EE68 @ =gUnknown_08E2EB18
	ldrh r0, [r1]
	movs r3, #0
	movs r2, #0
	strh r0, [r5, #0xc]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r2, [r5, #0x16]
	ldr r0, _0801EE6C @ =0x0000FFFF
	strh r0, [r5, #0x18]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r3, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	ldr r1, [r4]
	ldr r0, _0801EE70 @ =sub_802056C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EE64: .4byte 0x06014020
_0801EE68: .4byte gUnknown_08E2EB18
_0801EE6C: .4byte 0x0000FFFF
_0801EE70: .4byte sub_802056C

	thumb_func_start sub_801EE74
sub_801EE74: @ 0x0801EE74
	push {r4, r5, r6, lr}
	ldr r6, _0801EED0 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r0, [r1]
	str r0, [r1, #8]
	ldr r0, [r1, #4]
	str r0, [r1, #0xc]
	movs r4, #0
	movs r5, #0
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	ldrh r3, [r1, #0x16]
	ldr r0, _0801EED4 @ =0x0000FFF9
	ands r0, r3
	strh r0, [r1, #0x16]
	strb r4, [r1, #0x18]
	strb r4, [r1, #0x19]
	strb r4, [r1, #0x1a]
	ldr r0, _0801EED8 @ =0x03000020
	adds r2, r2, r0
	ldr r1, _0801EEDC @ =gUnknown_08E2EB18
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strh r5, [r2, #0x16]
	ldr r0, _0801EEE0 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r6]
	ldr r0, _0801EEE4 @ =sub_801EEE8
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EED0: .4byte gCurTask
_0801EED4: .4byte 0x0000FFF9
_0801EED8: .4byte 0x03000020
_0801EEDC: .4byte gUnknown_08E2EB18
_0801EEE0: .4byte 0x0000FFFF
_0801EEE4: .4byte sub_801EEE8

	thumb_func_start sub_801EEE8
sub_801EEE8: @ 0x0801EEE8
	push {lr}
	ldr r0, _0801EF0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r2, [r3, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801EF10
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801EF14
	.align 2, 0
_0801EF0C: .4byte gCurTask
_0801EF10:
	ldr r0, [r2, #0x10]
	ldr r1, _0801EF30 @ =0xFFFFE800
_0801EF14:
	adds r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #0x50]
	ldr r1, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0801EF34
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801EF38
	.align 2, 0
_0801EF30: .4byte 0xFFFFE800
_0801EF34:
	ldr r0, [r2, #0x14]
	ldr r1, _0801EF4C @ =0xFFFFE800
_0801EF38:
	adds r0, r0, r1
	str r0, [r3, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r3]
	cmp r1, r0
	bge _0801EF50
	ldrh r1, [r3, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801EF56
	.align 2, 0
_0801EF4C: .4byte 0xFFFFE800
_0801EF50:
	ldrh r1, [r3, #0x16]
	ldr r0, _0801EF68 @ =0x0000FFFE
	ands r0, r1
_0801EF56:
	strh r0, [r3, #0x16]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	pop {r0}
	bx r0
	.align 2, 0
_0801EF68: .4byte 0x0000FFFE

	thumb_func_start sub_801EF6C
sub_801EF6C: @ 0x0801EF6C
	push {r4, r5, r6, lr}
	ldr r6, _0801EFD0 @ =gCurTask
	ldr r0, [r6]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r1, #8]
	ldr r0, [r1, #4]
	str r0, [r1, #0xc]
	movs r5, #0
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801EFD4 @ =0x0000FFFB
	ands r0, r2
	movs r2, #2
	orrs r0, r2
	strh r0, [r1, #0x16]
	movs r0, #1
	strb r0, [r1, #0x18]
	movs r0, #4
	strb r0, [r1, #0x19]
	strb r5, [r1, #0x1a]
	ldr r0, _0801EFD8 @ =0x03000020
	adds r3, r3, r0
	ldr r1, _0801EFDC @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x10]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801EFE0 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r6]
	ldr r0, _0801EFE4 @ =sub_801EFE8
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EFD0: .4byte gCurTask
_0801EFD4: .4byte 0x0000FFFB
_0801EFD8: .4byte 0x03000020
_0801EFDC: .4byte gUnknown_08E2EB18
_0801EFE0: .4byte 0x0000FFFF
_0801EFE4: .4byte sub_801EFE8

	thumb_func_start sub_801EFE8
sub_801EFE8: @ 0x0801EFE8
	push {r4, r5, r6, lr}
	ldr r0, _0801F040 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5, #0x1b]
	ldrb r2, [r5, #0x1b]
	ldr r3, [r5, #0x50]
	ldr r4, _0801F044 @ =gSineTable
	lsls r2, r2, #4
	adds r1, #0xc1
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
	beq _0801F048
	ldrh r1, [r5, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F04E
	.align 2, 0
_0801F040: .4byte gCurTask
_0801F044: .4byte gSineTable
_0801F048:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801F060 @ =0x0000FFFE
	ands r0, r1
_0801F04E:
	strh r0, [r5, #0x16]
	movs r0, #4
	bl sub_8020130
	bl sub_8020284
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F060: .4byte 0x0000FFFE

	thumb_func_start sub_801F064
sub_801F064: @ 0x0801F064
	push {r4, r5, lr}
	ldr r5, _0801F0C4 @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r1, #8]
	ldr r0, [r1, #4]
	str r0, [r1, #0xc]
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801F0C8 @ =0x0000FFFD
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	strh r0, [r1, #0x16]
	movs r0, #0xf
	strb r0, [r1, #0x18]
	movs r0, #0xc
	strb r0, [r1, #0x19]
	movs r0, #0x1e
	strb r0, [r1, #0x1a]
	ldr r0, _0801F0CC @ =0x03000020
	adds r3, r3, r0
	ldr r1, _0801F0D0 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x30]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F0D4 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r5]
	ldr r0, _0801F0D8 @ =sub_80205F4
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0C4: .4byte gCurTask
_0801F0C8: .4byte 0x0000FFFD
_0801F0CC: .4byte 0x03000020
_0801F0D0: .4byte gUnknown_08E2EB18
_0801F0D4: .4byte 0x0000FFFF
_0801F0D8: .4byte sub_80205F4

	thumb_func_start sub_801F0DC
sub_801F0DC: @ 0x0801F0DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801F124 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r3, [r5, #0x50]
	adds r3, #0x2a
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xa
	movs r1, #0xf0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	ldr r0, _0801F128 @ =gUnknown_08E2EB18
	lsls r1, r6, #2
	adds r2, r1, r0
	ldrh r4, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r7, [r1]
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	movs r0, #4
	strb r0, [r5, #0x18]
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0801F12C
	strb r6, [r5, #0x19]
	b _0801F130
	.align 2, 0
_0801F124: .4byte gCurTask
_0801F128: .4byte gUnknown_08E2EB18
_0801F12C:
	movs r0, #6
	strb r0, [r5, #0x19]
_0801F130:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801F178 @ =0x0000FFFD
	ands r0, r1
	movs r3, #0
	strh r0, [r5, #0x16]
	movs r0, #0x3c
	strb r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x20
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	strh r4, [r2, #0xc]
	strb r7, [r2, #0x1a]
	strh r3, [r2, #0x16]
	ldr r0, _0801F17C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0801F180 @ =sub_801F184
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F178: .4byte 0x0000FFFD
_0801F17C: .4byte 0x0000FFFF
_0801F180: .4byte sub_801F184

	thumb_func_start sub_801F184
sub_801F184: @ 0x0801F184
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
	bl sub_8020284
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
	ldr r1, _0801F2F0 @ =gUnknown_08E2EB18
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
_0801F2F0: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r1, _0801F3F0 @ =gUnknown_08E2EB18
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
_0801F3F0: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r1, _0801F528 @ =gUnknown_08E2EB18
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
_0801F528: .4byte gUnknown_08E2EB18
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
	ldr r1, _0801F5A8 @ =gUnknown_08E2EB18
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
_0801F5A8: .4byte gUnknown_08E2EB18
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
	ldr r1, _0801F624 @ =gUnknown_08E2EB18
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
_0801F624: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r1, _0801F734 @ =gUnknown_08E2EB18
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
_0801F734: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r1, _0801F83C @ =gUnknown_08E2EB18
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
_0801F83C: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r2, _0801F960 @ =gUnknown_08E2EB18
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
_0801F960: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	bl sub_8020284
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
	ldr r2, _0801FAEC @ =gUnknown_08E2EB18
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
_0801FAEC: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	bl sub_8020284
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
	ldr r0, _0801FCC4 @ =gUnknown_08E2EB18
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
_0801FCC4: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r0, _0801FE30 @ =gUnknown_08E2EB18
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
_0801FE30: .4byte gUnknown_08E2EB18
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
	ldr r0, _0801FEC0 @ =gUnknown_08E2EB18
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
_0801FEC0: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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
	ldr r0, _08020024 @ =gUnknown_08E2EB18
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
_08020024: .4byte gUnknown_08E2EB18
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
	bl sub_8020284
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

	thumb_func_start sub_8020284
sub_8020284: @ 0x08020284
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
	ldr r0, _08020428 @ =sub_801EDB4
	ldr r2, _0802042C @ =0x00003010
	ldr r1, _08020430 @ =sub_8020434
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
_08020428: .4byte sub_801EDB4
_0802042C: .4byte 0x00003010
_08020430: .4byte sub_8020434

	thumb_func_start sub_8020434
sub_8020434: @ 0x08020434
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
	ldr r0, _0802052C @ =sub_801F0DC
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020528: .4byte gStageData
_0802052C: .4byte sub_801F0DC

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
	bl sub_8020284
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
	bl sub_8020284
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
	bl sub_8020284
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
	bl sub_8020284
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

	thumb_func_start sub_80213F0
sub_80213F0: @ 0x080213F0
	push {lr}
	bl Player_8014550
	pop {r0}
	bx r0
	.align 2, 0
