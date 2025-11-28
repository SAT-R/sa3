.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	ldr r0, _0805DC68 @ =Task_805DDCC
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
_0805DC68: .4byte Task_805DDCC
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
	ldr r0, _0805DCDC @ =Task_805DDCC
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
_0805DCDC: .4byte Task_805DDCC
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
	ldr r0, _0805DD50 @ =Task_805DDCC
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
_0805DD50: .4byte Task_805DDCC
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
	ldr r0, _0805DDC4 @ =Task_805DDCC
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
_0805DDC4: .4byte Task_805DDCC
_0805DDC8: .4byte sub_805DEC4

	thumb_func_start Task_805DDCC
Task_805DDCC: @ 0x0805DDCC
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
