.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable100
CreateEntity_Interactable100: @ 0x08041A94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _08041B24 @ =gUnknown_080CFBC8
	add r0, sp, #4
	movs r2, #0xc
	bl sub_80CA3B0
	ldr r0, _08041B28 @ =sub_8041B9C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08041B2C @ =sub_80420E4
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r7, [r0]
	ldrb r0, [r7]
	mov r3, ip
	strb r0, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	str r0, [r3, #0x3c]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [r3, #0x40]
	ldr r3, _08041B30 @ =0x03000046
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #6
	adds r0, r1, r3
	strh r2, [r0]
	ldrb r2, [r7, #7]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	ldr r2, _08041B34 @ =0x0300004C
	adds r1, r1, r2
	strb r0, [r1]
	movs r2, #2
	ldrb r0, [r7, #7]
	asrs r0, r0, #2
	b _08041B4C
	.align 2, 0
_08041B24: .4byte gUnknown_080CFBC8
_08041B28: .4byte sub_8041B9C
_08041B2C: .4byte sub_80420E4
_08041B30: .4byte 0x03000046
_08041B34: .4byte 0x0300004C
_08041B38:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #6
	bgt _08041B52
	ldrb r0, [r7, #7]
	asrs r0, r1
_08041B4C:
	ands r0, r3
	cmp r0, #0
	beq _08041B38
_08041B52:
	ldrb r1, [r7, #7]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0
	beq _08041B6A
	lsls r0, r2, #0x10
	asrs r0, r0, #0xf
	subs r0, #4
	add r0, sp
	adds r0, #4
	ldrh r1, [r0]
	b _08041B6C
_08041B6A:
	movs r1, #0
_08041B6C:
	mov r0, ip
	adds r0, #0x48
	strh r1, [r0]
	subs r0, #0x3c
	mov r2, ip
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	strb r1, [r7]
	mov r1, ip
	adds r1, #0x4c
	ldrb r1, [r1]
	bl sub_8041E74
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8041B9C
sub_8041B9C: @ 0x08041B9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08041C0C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, ip
	mov r8, r0
	ldr r0, _08041C10 @ =0x0300000C
	add r0, ip
	mov sb, r0
	mov r1, r8
	ldr r3, [r1]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r2, r8
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, _08041C14 @ =gUnknown_030008A0
	ldr r2, [r0, #0x1c]
	ldr r0, _08041C18 @ =0x03000048
	add r0, ip
	ldrh r0, [r0]
	adds r4, r2, r0
	movs r2, #0x7f
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r3, #6]
	lsls r6, r0, #0xb
	mov r0, r8
	ldr r0, [r0, #0x3c]
	str r0, [sp, #4]
	mov r1, r8
	ldr r1, [r1, #0x40]
	mov sl, r1
	ands r4, r2
	cmp r4, #0x3f
	bgt _08041C1C
	adds r1, r7, r6
	adds r0, r6, #0
	muls r0, r4, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x40]
	b _08041C7C
	.align 2, 0
_08041C0C: .4byte gCurTask
_08041C10: .4byte 0x0300000C
_08041C14: .4byte gUnknown_030008A0
_08041C18: .4byte 0x03000048
_08041C1C:
	cmp r4, #0x4f
	bgt _08041C34
	mov r0, r8
	str r7, [r0, #0x40]
	ldr r1, _08041C30 @ =0x03000044
	add r1, ip
	movs r0, #0
	strh r0, [r1]
	b _08041C7C
	.align 2, 0
_08041C30: .4byte 0x03000044
_08041C34:
	cmp r4, #0x5f
	bgt _08041C46
	movs r0, #4
	ands r4, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r0, r0, #6
	adds r0, r7, r0
	b _08041C70
_08041C46:
	cmp r4, #0x67
	bgt _08041C56
	adds r0, r4, #0
	subs r0, #0x60
	muls r0, r6, r0
	asrs r0, r0, #3
	adds r0, r7, r0
	b _08041C78
_08041C56:
	cmp r4, #0x77
	bgt _08041C76
	cmp r4, #0x68
	bne _08041C66
	movs r0, #0x95
	lsls r0, r0, #2
	bl sub_8003DF0
_08041C66:
	adds r0, r7, r6
	movs r1, #3
	ands r4, r1
	lsls r1, r4, #8
	adds r0, r0, r1
_08041C70:
	mov r1, r8
	str r0, [r1, #0x40]
	b _08041C7C
_08041C76:
	adds r0, r7, r6
_08041C78:
	mov r2, r8
	str r0, [r2, #0x40]
_08041C7C:
	mov r1, r8
	ldr r0, [r1, #0x3c]
	ldr r2, [sp, #4]
	subs r2, r2, r0
	str r2, [sp, #4]
	ldr r0, [r1, #0x40]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	movs r1, #0
_08041C90:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08041CA4
	ldr r0, _08041CA0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08041CAE
	.align 2, 0
_08041CA0: .4byte gUnknown_030008A0
_08041CA4:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08041CAE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08041D0C @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041D10
	mov r0, r8
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D10
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08041D10
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08041D10
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, sb
	movs r3, #1
	bl sub_8020CE0
	adds r4, r0, #0
	cmp r4, #0
	beq _08041D10
	adds r0, r5, #0
	movs r1, #0x9a
	bl sub_8004E98
	b _08041E50
	.align 2, 0
_08041D0C: .4byte gUnknown_030015C0
_08041D10:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08041D1C
	b _08041E50
_08041D1C:
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08041D5A
	ldr r0, [r5, #0x6c]
	cmp r0, sb
	bne _08041D5A
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	mov r1, sl
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D5A
	mov r1, r8
	adds r1, #0x4a
	ldrh r0, [r1]
	cmp r0, #0
	bne _08041D5A
	adds r0, #1
	strh r0, [r1]
_08041D5A:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08041D70
	cmp r1, #8
	beq _08041D70
	cmp r1, #0x10
	bne _08041E50
_08041D70:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	movs r6, #0
	str r6, [sp]
	mov r0, sb
	adds r3, r5, #0
	bl sub_8020950
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r4
	cmp r2, #0
	beq _08041DBA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	strh r6, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_801226C
	cmp r0, #0
	bge _08041DF0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041DF0
	adds r0, r5, #0
	bl sub_8008E38
	b _08041DF0
_08041DBA:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _08041DF0
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0x14]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_8012368
	cmp r0, #0
	bge _08041DF0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041DF0
	adds r0, r5, #0
	bl sub_8008E38
_08041DF0:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08041E50
	lsls r0, r4, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	adds r2, r1, r0
	str r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _08041E24
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08041E24
	ldr r1, _08041E20 @ =0xFFFFFF00
	adds r0, r2, r1
	b _08041E40
	.align 2, 0
_08041E20: .4byte 0xFFFFFF00
_08041E24:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08041E4A
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08041E4A
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_08041E40:
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
_08041E4A:
	movs r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08041E50:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08041E60
	b _08041C90
_08041E60:
	bl sub_8041ED4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8041E74
sub_8041E74: @ 0x08041E74
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08041E8E
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	b _08041E9A
_08041E8E:
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _08041ED0 @ =0x00000389
_08041E9A:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041ED0: .4byte 0x00000389

	thumb_func_start sub_8041ED4
sub_8041ED4: @ 0x08041ED4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _08041F50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r5, _08041F54 @ =0x0300000C
	add r5, r8
	ldr r2, [r7]
	mov sb, r2
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	ldr r4, _08041F58 @ =gUnknown_03001D10
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _08041FA4
	movs r1, #0
	ldr r2, _08041F5C @ =gUnknown_030015C0
_08041F3C:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08041F60
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08041F64
	.align 2, 0
_08041F50: .4byte gCurTask
_08041F54: .4byte 0x0300000C
_08041F58: .4byte gUnknown_03001D10
_08041F5C: .4byte gUnknown_030015C0
_08041F60:
	ldr r0, _08041F9C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08041F64:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	adds r0, r5, #0
	adds r1, r6, #0
	str r2, [sp, #4]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, #1
	ble _08041F3C
	ldrb r0, [r7, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _08041FA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080420D0
	.align 2, 0
_08041F9C: .4byte gUnknown_030008A0
_08041FA0: .4byte gCurTask
_08041FA4:
	ldr r0, _08041FE0 @ =0x0300004C
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804208C
	ldr r2, _08041FE4 @ =0x0300004A
	add r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _08041FC8
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08041FE8 @ =0x013F0000
	cmp r0, r1
	bls _08041FC8
	movs r0, #0
	strh r0, [r2]
_08041FC8:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r2, r1, #0
	cmp r1, #0
	bne _08041FF0
	movs r1, #0
	ldr r0, _08041FEC @ =0x00000389
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08041FE0: .4byte 0x0300004C
_08041FE4: .4byte 0x0300004A
_08041FE8: .4byte 0x013F0000
_08041FEC: .4byte 0x00000389
_08041FF0:
	cmp r1, #0xad
	bhi _08042008
	ldr r0, _08042004 @ =0x00000389
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	lsrs r0, r1, #3
	strb r0, [r5, #0x1c]
	b _0804208C
	.align 2, 0
_08042004: .4byte 0x00000389
_08042008:
	cmp r1, #0xb3
	bhi _08042020
	movs r0, #0
	ldr r1, _0804201C @ =0x00000387
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	b _0804208C
	.align 2, 0
_0804201C: .4byte 0x00000387
_08042020:
	cmp r1, #0xb5
	bls _0804205E
	cmp r1, #0xb7
	bls _08042046
	ldr r0, _08042038 @ =0x0000012F
	cmp r1, r0
	bhi _08042040
	ldr r0, _0804203C @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #3
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042038: .4byte 0x0000012F
_0804203C: .4byte 0x00000387
_08042040:
	ldr r0, _08042050 @ =0x00000131
	cmp r1, r0
	bhi _08042058
_08042046:
	ldr r0, _08042054 @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042050: .4byte 0x00000131
_08042054: .4byte 0x00000387
_08042058:
	ldr r0, _08042068 @ =0x00000133
	cmp r1, r0
	bhi _08042070
_0804205E:
	ldr r0, _0804206C @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042068: .4byte 0x00000133
_0804206C: .4byte 0x00000387
_08042070:
	ldr r0, _080420AC @ =0x0000013F
	cmp r2, r0
	bhi _0804208C
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x2c
	ldr r2, _080420B0 @ =0x01000002
	bl sub_80C7520
	ldr r0, _080420B4 @ =0x00000389
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
_0804208C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r4, #0
_08042094:
	cmp r4, #0
	beq _080420B8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	b _080420C6
	.align 2, 0
_080420AC: .4byte 0x0000013F
_080420B0: .4byte 0x01000002
_080420B4: .4byte 0x00000389
_080420B8:
	ldr r0, [r5, #8]
	ldr r1, _080420E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
_080420C6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08042094
_080420D0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080420E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80420E4
sub_80420E4: @ 0x080420E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
