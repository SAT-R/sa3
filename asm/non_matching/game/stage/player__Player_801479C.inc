
.syntax unified
.text
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

.syntax divided
