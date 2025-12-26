
.syntax unified
.text
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08011450
	adds r0, r1, #0
	adds r0, #0x29
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	b _080114C6
_08011450:
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _08011472
	lsls r0, r3, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x17
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08011472:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	adds r2, #0x20
	cmp r2, #0
	ble _08011486
	cmp r0, #0sub_80116A4
	bgt _0801148E
	lsls r0, r2, #0x18
	b _08011492
_08011486:
	cmp r0, #0
	ble _0801148E
	lsls r0, r2, #0x18
	b _08011492
_0801148E:
	adds r0, #0x1f
	lsls r0, r0, #0x18
_08011492:
	lsrs r3, r0, #0x18
	lsrs r0, r3, #6
	cmp r0, #1
	beq _080114B2
	cmp r0, #1
	bgt _080114A4
	cmp r0, #0
	beq _080114AE
	b _080114C6
_080114A4:
	cmp r0, #2
	beq _080114B6
	cmp r0, #3
	beq _080114BA
	b _080114C6
_080114AE:
	movs r0, #0
	b _080114BC
_080114B2:
	movs r0, #2
	b _080114BC
_080114B6:
	movs r0, #1
	b _080114BC
_080114BA:
	movs r0, #3
_080114BC:
	bl sub_8011978
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080114C8
_080114C6:
	movs r0, #0
_080114C8:
	pop {r1}
	bx r1

.syntax divided
