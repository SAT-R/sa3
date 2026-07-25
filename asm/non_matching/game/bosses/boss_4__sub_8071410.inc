
.syntax unified
.text
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x19
	ldrsb r5, [r4, r5]
	cmp r5, #0
	bne _080714B6
	ldr r0, _08071440 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_806F2B8
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071448
	ldr r0, _08071444 @ =0x0000022E
	b _0807144A
	.align 2, 0
_08071440: .4byte 0x000004D5
_08071444: .4byte 0x0000022E
_08071448:
	ldr r0, _08071480 @ =0x00000229
_0807144A:
	bl m4aSongNumStart
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _0807146C
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _08071484 @ =0x0000066F
	cmp r0, r1
	ble _0807146C
	movs r0, #3
	strh r0, [r4, #0x10]
_0807146C:
	ldr r0, _08071488 @ =gStageData
	ldrb r1, [r0, #1]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807148C
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _08071492
	.align 2, 0
_08071480: .4byte 0x00000229
_08071484: .4byte 0x0000066F
_08071488: .4byte gStageData
_0807148C:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_08071492:
	adds r0, r0, r1
	ldr r1, _080714BC @ =0x000677FF
	cmp r0, r1
	ble _080714A2
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_080714A2:
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _080714B6
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _080714B6
	ldrb r1, [r4, #0x18]
	movs r0, #3
	bl sub_8027674
_080714B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080714BC: .4byte 0x000677FF

.syntax divided
