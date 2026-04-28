
.syntax unified
.text
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #4
	bhi _080C66CE
	lsls r0, r0, #2
	ldr r1, _080C6608 @ =_080C660C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6608: .4byte _080C660C
_080C660C: @ jump table
	.4byte _080C6620 @ case 0
	.4byte _080C6644 @ case 1
	.4byte _080C667C @ case 2
	.4byte _080C66AC @ case 3
	.4byte _080C66AC @ case 4
_080C6620:
	ldr r4, _080C6640 @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_080C6628:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C6628
	b _080C66C8
	.align 2, 0
_080C6640: .4byte 0x10000010
_080C6644:
	ldr r0, _080C6674 @ =0x0300043C
	ldr r0, [r0]
	ldr r1, _080C6678 @ =0x00FFFFFF
	ands r0, r1
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_080C665E:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C665E
	b _080C66C8
	.align 2, 0
_080C6674: .4byte 0x0300043C
_080C6678: .4byte 0x00FFFFFF
_080C667C:
	ldr r0, _080C66A8 @ =gUnknown_0300620C
	ldrb r0, [r0]
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_080C6692:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C6692
	b _080C66C8
	.align 2, 0
_080C66A8: .4byte gUnknown_0300620C
_080C66AC:
	ldr r4, _080C66D8 @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_080C66B4:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C66B4
_080C66C8:
	movs r1, #0xf
	ands r1, r3
	orrs r1, r4
_080C66CE:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C66D8: .4byte 0x10000010

.syntax divided
