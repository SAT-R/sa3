.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
