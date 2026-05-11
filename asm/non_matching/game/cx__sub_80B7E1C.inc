
.syntax unified
.text
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xf
	beq _080B7ECE
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7ECE
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7ECE
	ldr r3, [r2, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #8
	ands r3, r5
	movs r6, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080B7E64
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7E60
	cmp r3, r5
	bne _080B7E64
_080B7E60:
	adds r6, r0, #0
	b _080B7EB2
_080B7E64:
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080B7E7E
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _080B7EAE
_080B7E7E:
	cmp r1, #2
	bne _080B7E92
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _080B7EAE
_080B7E92:
	cmp r1, #3
	bne _080B7E9E
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
_080B7E9E:
	cmp r1, #4
	bne _080B7EB2
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	cmp r3, #0x20
	bne _080B7EB2
_080B7EAE:
	movs r6, #0x80
	lsls r6, r6, #6
_080B7EB2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7EBA
	rsbs r0, r0, #0
_080B7EBA:
	cmp r0, r6
	bgt _080B7ECE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7EC6
	rsbs r0, r0, #0
_080B7EC6:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	ble _080B7ED2
_080B7ECE:
	movs r0, #0
	b _080B7EEE
_080B7ED2:
	ldr r2, _080B7EF4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7EF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7EFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7EEC
	movs r1, #1
_080B7EEC:
	adds r0, r1, #0
_080B7EEE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B7EF4: .4byte gPseudoRandom
_080B7EF8: .4byte 0x00196225
_080B7EFC: .4byte 0x3C6EF35F

.syntax divided
