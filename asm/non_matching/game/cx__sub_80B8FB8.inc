
.syntax unified
.text
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080B8FC6
	cmp r0, #0
	bne _080B8FCA
_080B8FC6:
	movs r3, #0x20
	b _080B8FDC
_080B8FCA:
	cmp r0, #2
	bne _080B8FD4
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B8FDC
_080B8FD4:
	movs r3, #0x20
	cmp r0, #6
	bne _080B8FDC
	movs r3, #0x10
_080B8FDC:
	ldr r2, _080B8FFC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B9000 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9004 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8FF6
	movs r1, #1
_080B8FF6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8FFC: .4byte gPseudoRandom
_080B9000: .4byte 0x00196225
_080B9004: .4byte 0x3C6EF35F

.syntax divided
