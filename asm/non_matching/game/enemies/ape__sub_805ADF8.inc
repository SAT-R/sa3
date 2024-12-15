
.syntax unified
.text
	movs r2, #2
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	ldrh r1, [r0, #0xc]
	adds r1, #0x20
	strh r1, [r0, #0xc]
	lsls r2, r2, #0x19
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	adds r1, r3, #0
	lsls r3, r3, #8
	adds r3, r3, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r0, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x11
	ldr r1, [r0, #0x10]
	adds r1, r1, r3
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

.syntax divided
