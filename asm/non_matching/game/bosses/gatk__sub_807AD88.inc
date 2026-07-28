
.syntax unified
.text
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

.syntax divided
