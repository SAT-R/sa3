.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _080480A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0     @ r6 = cart
	adds r0, #0x70
	adds r0, r0, r7
	mov r8, r0          @ r8 = &cart->unk70
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

.syntax divided
