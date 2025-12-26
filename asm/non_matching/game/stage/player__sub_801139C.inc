
.syntax unified
.text
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080113B8
	adds r0, r1, #0
	adds r0, #0x29
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	b _0801142E
_080113B8:
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080113DA
	lsls r0, r3, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x17
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080113DA:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	adds r2, #0x20
	cmp r2, #0
	ble _080113EE
	cmp r0, #0
	bgt _080113F6
	lsls r0, r2, #0x18
	b _080113FA
_080113EE:
	cmp r0, #0
	ble _080113F6
	lsls r0, r2, #0x18
	b _080113FA
_080113F6:
	adds r0, #0x1f
	lsls r0, r0, #0x18
_080113FA:
	lsrs r3, r0, #0x18
	lsrs r0, r3, #6
	cmp r0, #1
	beq _0801141A
	cmp r0, #1
	bgt _0801140C
	cmp r0, #0
	beq _08011416
	b _0801142E
_0801140C:
	cmp r0, #2
	beq _0801141E
	cmp r0, #3
	beq _08011422
	b _0801142E
_08011416:
	movs r0, #0
	b _08011424
_0801141A:
	movs r0, #2
	b _08011424
_0801141E:
	movs r0, #1
	b _08011424
_08011422:
	movs r0, #3
_08011424:
	bl sub_80116A4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08011430
_0801142E:
	movs r0, #0
_08011430:
	pop {r1}
	bx r1

.syntax divided
