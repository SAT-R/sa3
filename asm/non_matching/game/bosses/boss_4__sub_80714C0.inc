
.syntax unified
.text
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0807158A
	ldr r0, _080714F8 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0807150A
	cmp r0, #1
	bgt _080714FC
	cmp r0, #0
	beq _08071502
	b _0807151E
	.align 2, 0
_080714F8: .4byte 0x000004D5
_080714FC:
	cmp r0, #2
	beq _08071518
	b _0807151E
_08071502:
	adds r0, r4, #0
	bl sub_8071720
	b _0807151E
_0807150A:
	adds r0, r4, #0
	bl sub_8071764
	adds r0, r4, #0
	bl sub_806FE98
	b _0807151E
_08071518:
	adds r0, r4, #0
	bl sub_80717A8
_0807151E:
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071534
	ldr r0, _08071530 @ =0x0000022E
	b _08071536
	.align 2, 0
_08071530: .4byte 0x0000022E
_08071534:
	ldr r0, _08071568 @ =0x00000229
_08071536:
	bl m4aSongNumStart
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _08071558
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _0807156C @ =0x0000066F
	cmp r0, r1
	ble _08071558
	movs r0, #3
	strh r0, [r4, #0x10]
_08071558:
	ldr r0, _08071570 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08071574
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0807157A
	.align 2, 0
_08071568: .4byte 0x00000229
_0807156C: .4byte 0x0000066F
_08071570: .4byte gStageData
_08071574:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_0807157A:
	adds r0, r0, r1
	ldr r1, _08071590 @ =0x000677FF
	cmp r0, r1
	ble _0807158A
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_0807158A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071590: .4byte 0x000677FF

.syntax divided
