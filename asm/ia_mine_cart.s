.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8047EEC
sub_8047EEC: @ 0x08047EEC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _08047F18 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08047F1C @ =0x03000070
	adds r0, r1, r2
	ldrb r2, [r0]
	add r0, sp, #8
	strb r2, [r0]
	ldr r3, _08047F20 @ =0x03000084
	adds r1, r1, r3
	ldr r0, [r1]
	cmp r0, #0
	bge _08047F24
	adds r1, r2, #0
	adds r1, #0x40
	b _08047F28
	.align 2, 0
_08047F18: .4byte gCurTask
_08047F1C: .4byte 0x03000070
_08047F20: .4byte 0x03000084
_08047F24:
	adds r1, r2, #0
	subs r1, #0x40
_08047F28:
	add r0, sp, #8
	strb r1, [r0]
	ldr r3, _08047F74 @ =gSineTable
	add r0, sp, #8
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r3
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	rsbs r0, r0, #0
	asrs r5, r0, #6
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r2, r0, #4
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	lsrs r1, r1, #6
	cmp r1, #1
	beq _08047FA0
	cmp r1, #1
	bgt _08047F78
	cmp r1, #0
	beq _08047F82
	b _08048010
	.align 2, 0
_08047F74: .4byte gSineTable
_08047F78:
	cmp r1, #2
	beq _08047FC0
	cmp r1, #3
	beq _08047FE8
	b _08048010
_08047F82:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r4, #0x7c]
	adds r1, r1, r5
	asrs r1, r1, #8
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08047F9C @ =sub_805217C
	b _08047FFE
	.align 2, 0
_08047F9C: .4byte sub_805217C
_08047FA0:
	ldr r0, [r4, #0x7c]
	adds r0, r0, r5
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08047FBC @ =sub_805203C
	b _08047FDA
	.align 2, 0
_08047FBC: .4byte sub_805203C
_08047FC0:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r4, #0x7c]
	adds r1, r1, r5
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08047FE4 @ =sub_805217C
_08047FDA:
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	b _08048014
	.align 2, 0
_08047FE4: .4byte sub_805217C
_08047FE8:
	ldr r0, [r4, #0x7c]
	adds r0, r0, r5
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0804800C @ =sub_805203C
_08047FFE:
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	b _08048014
	.align 2, 0
_0804800C: .4byte sub_805203C
_08048010:
	movs r0, #0
	b _0804803C
_08048014:
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _0804803A
	adds r5, r4, #0
	adds r5, #0x90
	ldr r3, [r5]
	cmp r3, #0
	beq _0804803A
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r2, #0
	strh r0, [r3, #0x18]
	ldr r0, [r3, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #4]
	str r2, [r5]
_0804803A:
	adds r0, r6, #0
_0804803C:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8048044
sub_8048044: @ 0x08048044
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _080480A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r0, #0x70
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	add r0, sp, #8
	strb r1, [r0]
	ldr r3, _080480AC @ =gSineTable
	lsls r0, r1, #3
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	rsbs r0, r0, #0
	asrs r0, r0, #6
	mov ip, r0
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r2, r0, #3
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	lsrs r4, r1, #6
	cmp r4, #1
	beq _080480F4
	cmp r4, #1
	bgt _080480B0
	cmp r4, #0
	beq _080480BA
	b _080481B6
	.align 2, 0
_080480A8: .4byte gCurTask
_080480AC: .4byte gSineTable
_080480B0:
	cmp r4, #2
	beq _0804813C
	cmp r4, #3
	beq _08048178
	b _080481B6
_080480BA:
	ldr r0, _080480EC @ =0x03000080
	adds r4, r7, r0
	ldr r0, [r4]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r6, #0x7c]
	add r1, ip
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080480F0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r1, r5, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	b _080481A6
	.align 2, 0
_080480EC: .4byte 0x03000080
_080480F0: .4byte sub_805217C
_080480F4:
	ldr r0, [r6, #0x7c]
	add r0, ip
	asrs r0, r0, #8
	ldr r3, _08048134 @ =0x03000080
	adds r1, r7, r3
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048138 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r0, r5, #8
	ldr r1, [r6, #0x7c]
	subs r1, r1, r0
	str r1, [r6, #0x7c]
	add r0, sp, #8
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _080481B6
	mov r3, r8
	strb r0, [r3]
	b _080481B6
	.align 2, 0
_08048134: .4byte 0x03000080
_08048138: .4byte sub_805203C
_0804813C:
	ldr r0, _08048170 @ =0x03000080
	adds r4, r7, r0
	ldr r0, [r4]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r6, #0x7c]
	add r1, ip
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048174 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r1, r5, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	b _080481A6
	.align 2, 0
_08048170: .4byte 0x03000080
_08048174: .4byte sub_805217C
_08048178:
	ldr r0, [r6, #0x7c]
	add r0, ip
	asrs r0, r0, #8
	ldr r4, _080481CC @ =0x03000080
	adds r1, r7, r4
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080481D0 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r1, r5, #8
	ldr r0, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x7c]
_080481A6:
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080481B6
	mov r3, r8
	strb r1, [r3]
_080481B6:
	adds r4, r6, #0
	adds r4, #0x71
	ldrb r0, [r4]
	cmp r0, #1
	bne _080481D4
	cmp r5, #8
	ble _08048208
	movs r0, #2
	strb r0, [r4]
	b _08048208
	.align 2, 0
_080481CC: .4byte 0x03000080
_080481D0: .4byte sub_805203C
_080481D4:
	cmp r0, #2
	bne _08048208
	cmp r5, #0
	bgt _08048208
	bl sub_8047EEC
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x73
	strb r1, [r0]
	adds r0, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, _08048214 @ =0x0000FFEC
	strh r0, [r1]
	adds r1, #2
	adds r0, #4
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_8048384
_08048208:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048214: .4byte 0x0000FFEC

	thumb_func_start sub_8048218
sub_8048218: @ 0x08048218
	push {r4, r5, lr}
	ldr r0, _08048258 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	ldr r1, _0804825C @ =0x03000071
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08048304
	ldr r5, _08048260 @ =0x03000070
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r3, r0, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	beq _08048268
	cmp r1, #0x40
	bgt _08048268
	ldr r0, _08048264 @ =0x03000084
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	adds r5, r3, #0
	ldr r1, _08048264 @ =0x03000084
	adds r2, r2, r1
	b _0804827C
	.align 2, 0
_08048258: .4byte gCurTask
_0804825C: .4byte 0x03000071
_08048260: .4byte 0x03000070
_08048264: .4byte 0x03000084
_08048268:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	mov r2, ip
	adds r2, #0x84
	cmp r1, #0xbf
	ble _0804827C
	ldr r0, [r2]
	subs r0, #0x10
	str r0, [r2]
_0804827C:
	ldr r0, [r2]
	cmp r0, #0
	bge _08048284
	rsbs r0, r0, #0
_08048284:
	movs r1, #0xc0
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804829E
	ldr r0, [r2]
	cmp r0, #0
	bge _0804829C
	ldr r0, _08048298 @ =0xFFFFF400
	str r0, [r2]
	b _0804829E
	.align 2, 0
_08048298: .4byte 0xFFFFF400
_0804829C:
	str r1, [r2]
_0804829E:
	ldr r1, [r2]
	cmp r1, #0
	bge _080482A6
	rsbs r1, r1, #0
_080482A6:
	ldr r0, _080482B8 @ =0x000004FF
	cmp r1, r0
	bgt _080482C6
	ldr r0, [r2]
	cmp r0, #0
	bge _080482C0
	ldr r0, _080482BC @ =0xFFFFFB00
	b _080482C4
	.align 2, 0
_080482B8: .4byte 0x000004FF
_080482BC: .4byte 0xFFFFFB00
_080482C0:
	movs r0, #0xa0
	lsls r0, r0, #3
_080482C4:
	str r0, [r2]
_080482C6:
	mov r3, ip
	adds r3, #0x88
	movs r0, #0
	ldrsh r4, [r2, r0]
	ldr r2, _08048300 @ =gSineTable
	asrs r1, r5, #0x10
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	str r0, [r3]
	adds r3, #4
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	str r0, [r3]
	b _08048312
	.align 2, 0
_08048300: .4byte gSineTable
_08048304:
	cmp r0, #2
	bne _08048312
	ldr r0, _08048318 @ =0x0300008C
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
_08048312:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048318: .4byte 0x0300008C

	thumb_func_start sub_804831C
sub_804831C: @ 0x0804831C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	adds r6, r5, #0
	adds r6, #0x34
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bne _08048336
	movs r0, #0x40
	bl VramMalloc
	str r0, [r5, #0x68]
_08048336:
	ldr r0, [r5, #0x68]
	str r0, [r5, #0xc]
	movs r2, #0
	movs r1, #0
	ldr r0, _08048380 @ =0x0000039D
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	subs r0, #0x9d
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
	movs r0, #0x81
	lsls r0, r0, #5
	str r0, [r4, #8]
	strh r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048380: .4byte 0x0000039D

	thumb_func_start sub_8048384
sub_8048384: @ 0x08048384
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc
	adds r7, r2, #0
	adds r7, #0x40
	ldr r0, [r2, #0x68]
	cmp r0, #0
	beq _0804840A
	str r0, [r2, #0xc]
	movs r0, #0
	mov sl, r0
	movs r4, #0
	ldr r0, _0804841C @ =0x0000039D
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	mov r0, r8
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r6, #0x10
	strb r6, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r1, #0x20]
	str r4, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r2, [sp]
	ldr r0, [r2, #0x68]
	adds r0, #0x80
	str r0, [r2, #0x40]
	mov r0, sb
	strh r0, [r7, #0xc]
	movs r0, #3
	strb r0, [r7, #0x1a]
	mov r0, r8
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	adds r0, r5, #0
	strb r0, [r7, #0x1b]
	strb r6, [r7, #0x1c]
	mov r0, sl
	strb r0, [r7, #0x1f]
	str r5, [r7, #0x20]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_0804840A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804841C: .4byte 0x0000039D

	thumb_func_start sub_8048420
sub_8048420: @ 0x08048420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r7, _080484AC @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sb, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _080484B0 @ =0x03000071
	adds r4, r6, r1
	ldrb r0, [r4]
	cmp r0, #4
	beq _0804849C
	mov r1, sb
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #8
	ldr r2, _080484B4 @ =0x03000080
	adds r1, r6, r2
	ldr r1, [r1]
	lsls r1, r1, #8
	lsrs r3, r0, #0x10
	str r3, [sp, #4]
	asrs r0, r0, #0x10
	mov r8, r0
	lsrs r0, r1, #0x10
	str r0, [sp, #8]
	asrs r1, r1, #0x10
	mov sl, r1
	mov r0, r8
	bl IsPointInScreenRect
	adds r5, r0, #0
	cmp r5, #0
	bne _080484C4
	ldr r0, _080484B8 @ =0x0000025E
	bl sub_8003E28
	ldr r1, _080484BC @ =0x03000090
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0804849C
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	str r5, [r4, #0x6c]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r1, _080484C0 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0804849C:
	mov r2, sb
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, [r7]
	bl TaskDestroy
	b _08048602
	.align 2, 0
_080484AC: .4byte gCurTask
_080484B0: .4byte 0x03000071
_080484B4: .4byte 0x03000080
_080484B8: .4byte 0x0000025E
_080484BC: .4byte 0x03000090
_080484C0: .4byte Player_8005380
_080484C4:
	ldrb r0, [r4]
	cmp r0, #3
	beq _0804852C
	ldr r0, _08048518 @ =0x0300000C
	adds r7, r6, r0
	ldr r1, _0804851C @ =0x03000034
	adds r4, r6, r1
	ldr r2, _08048520 @ =0x03000070
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, _08048524 @ =gCamera
	ldr r0, [r1]
	mov r3, r8
	subs r0, r3, r0
	strh r0, [r4, #6]
	ldr r0, [r1, #4]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r4, #8]
	ldr r2, _08048528 @ =gUnknown_03002C24
	ldrb r0, [r2]
	movs r1, #0x81
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	adds r0, r7, #0
	bl DisplaySprite
	b _08048602
	.align 2, 0
_08048518: .4byte 0x0300000C
_0804851C: .4byte 0x03000034
_08048520: .4byte 0x03000070
_08048524: .4byte gCamera
_08048528: .4byte gUnknown_03002C24
_0804852C:
	ldr r2, _08048554 @ =0x03000073
	adds r0, r6, r2
	ldrb r0, [r0]
	mov sl, r0
	mov r3, sl
	lsls r3, r3, #1
	str r3, [sp, #0xc]
	ldr r0, _08048558 @ =0x0300000C
	adds r7, r6, r0
	ldr r0, _0804855C @ =gCamera
	ldr r0, [r0]
	mov r1, r8
	subs r2, r1, r0
	mov r1, sl
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08048560
	subs r0, r2, r3
	b _08048562
	.align 2, 0
_08048554: .4byte 0x03000073
_08048558: .4byte 0x0300000C
_0804855C: .4byte gCamera
_08048560:
	adds r0, r2, r1
_08048562:
	strh r0, [r7, #0x10]
	ldr r4, _080485A8 @ =gCamera
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	lsls r6, r2, #0x10
	asrs r1, r6, #0x10
	subs r1, r1, r0
	mov r5, sb
	adds r5, #0x74
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r7, sb
	adds r7, #0x40
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4]
	subs r3, r0, r1
	mov r2, sl
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080485AC
	ldr r1, [sp, #0xc]
	lsrs r0, r1, #1
	b _080485B0
	.align 2, 0
_080485A8: .4byte gCamera
_080485AC:
	rsbs r0, r2, #0
	asrs r0, r0, #1
_080485B0:
	adds r0, r3, r0
	strh r0, [r7, #0x10]
	ldr r0, _08048614 @ =gCamera
	ldr r0, [r0, #4]
	asrs r1, r6, #0x10
	subs r1, r1, r0
	mov r4, sb
	adds r4, #0x76
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r2, sb
	adds r2, #0x78
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	mov r1, sb
	adds r1, #0x7a
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08048602:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048614: .4byte gCamera

	thumb_func_start TaskDestructor_Minecart
TaskDestructor_Minecart: @ 0x08048618
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl VramFree
	pop {r0}
	bx r0
