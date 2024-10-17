.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sa2__unused_sub_8005C54
sa2__unused_sub_8005C54: @ 0x080C13B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r4, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	mov sb, r5
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	mov r0, sb
	lsls r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0xc]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	movs r2, #1
	str r2, [sp, #0x14]
	lsrs r5, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C141A
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _080C142C
_080C141A:
	ldr r0, _080C1428 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _080C1702
	.align 2, 0
_080C1428: .4byte gFlags
_080C142C:
	ldr r3, [sp, #0xc]
	mov r4, ip
	subs r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r7, [sp, #4]
	subs r0, r7, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r2, #0
	bge _080C146C
	movs r0, #0xff
	str r0, [sp, #0x14]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	eors r1, r3
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	eors r3, r0
	lsls r0, r3, #0x10
	eors r0, r1
	lsrs r1, r0, #0x10
_080C146C:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r1, r5, #0x10
	asrs r7, r1, #0x10
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #8
	mov r5, sl
	subs r2, r6, r5
	str r1, [sp, #0x20]
	lsls r3, r3, #0x10
	mov r8, r3
	ldr r1, [sp, #8]
	subs r1, r1, r6
	str r1, [sp, #0x28]
	ldr r3, [sp]
	lsls r3, r3, #2
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0x14]
	lsls r5, r5, #0x18
	str r5, [sp, #0x24]
	cmp r0, r2
	bge _080C14E0
	mov r3, sl
	lsls r0, r7, #8
	muls r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x18
	subs r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r3, #2
	ldr r7, _080C158C @ =gBgOffsetsHBlank
	ldr r0, [r7]
	adds r4, r0, r1
	mov r0, ip
	subs r5, r0, r3
	ldr r1, _080C1590 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	cmp r3, sl
	bhs _080C14E0
_080C14C2:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sl
	blo _080C14C2
_080C14E0:
	mov r3, r8
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x20]
	asrs r1, r4, #0x10
	adds r0, r2, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, sl
	subs r5, r6, r5
	mov r8, r5
	mov r7, sl
	lsls r7, r7, #2
	mov sb, r7
	ldr r3, [sp, #0x28]
	cmp r0, r3
	bge _080C1548
	ldr r7, [sp, #8]
	lsls r0, r1, #8
	muls r0, r2, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r3, r0, #0
	lsls r1, r0, #2
	ldr r4, _080C158C @ =gBgOffsetsHBlank
	ldr r0, [r4]
	adds r4, r0, r1
	ldr r0, [sp, #4]
	subs r5, r0, r3
	ldr r1, _080C1590 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	cmp r3, r7
	bhs _080C1548
_080C152A:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r7
	blo _080C152A
_080C1548:
	ldr r3, _080C1594 @ =gFlags
	ldr r0, [r3]
	movs r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r4, [sp, #0x1c]
	ldr r5, _080C1598 @ =0x04000010
	adds r0, r4, r5
	ldr r7, _080C159C @ =gUnknown_03003C5C
	str r0, [r7]
	ldr r0, _080C15A0 @ =gUnknown_03003F30
	strb r1, [r0]
	ldr r1, _080C158C @ =gBgOffsetsHBlank
	ldr r0, [r1]
	mov r2, sb
	adds r4, r0, r2
	mov r3, r8
	lsls r6, r3, #8
	lsls r0, r3, #0x10
	ldr r5, [sp, #0x20]
	asrs r1, r5, #0x10
	bl __divsi3
	asrs r2, r0, #8
	ldr r7, [sp, #0x24]
	asrs r1, r7, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080C15A4
	ldr r1, [sp, #0xc]
	subs r0, r1, r2
	b _080C15A8
	.align 2, 0
_080C158C: .4byte gBgOffsetsHBlank
_080C1590: .4byte 0x000001FF
_080C1594: .4byte gFlags
_080C1598: .4byte 0x04000010
_080C159C: .4byte gUnknown_03003C5C
_080C15A0: .4byte gUnknown_03003F30
_080C15A4:
	ldr r1, [sp, #0xc]
	adds r0, r1, r2
_080C15A8:
	mov r3, sl
	subs r5, r0, r3
	ldr r7, _080C1650 @ =0x000001FF
	adds r0, r7, #0
	ands r5, r0
	ldr r0, [sp, #0x20]
	asrs r7, r0, #0x10
	adds r0, r2, #0
	muls r0, r7, r0
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C15D6
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x18
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080C15D6:
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	cmp r7, r8
	ble _080C1654
	mov r3, sl
	ldr r0, [sp, #8]
	cmp r3, r0
	blo _080C15EA
	b _080C1702
_080C15EA:
	ldr r1, [sp, #0x20]
	mov sl, r1
	mov sb, r7
	ldr r2, _080C1650 @ =0x000001FF
	mov ip, r2
_080C15F4:
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	mov r7, sl
	adds r3, #1
	mov r8, r3
	cmp r0, sb
	ble _080C163E
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x18
_080C1626:
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bgt _080C1626
_080C163E:
	mov r1, ip
	ands r5, r1
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, r7
	blo _080C15F4
	b _080C1702
	.align 2, 0
_080C1650: .4byte 0x000001FF
_080C1654:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r7, #0
	bl __udivsi3
	lsrs r0, r0, #8
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	muls r1, r7, r1
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x24]
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080C1694
	mov r1, sb
	lsls r0, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov sb, r0
_080C1694:
	mov r3, sl
	ldr r0, [sp, #8]
	cmp r3, r0
	bhs _080C1702
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	mov ip, r1
	mov sl, r7
_080C16A8:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	mov r7, sb
	adds r0, r5, r7
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	mov r7, ip
	adds r3, #1
	mov r8, r3
	cmp r0, sl
	ble _080C16F2
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x18
_080C16DA:
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bgt _080C16DA
_080C16F2:
	ldr r1, _080C1714 @ =0x000001FF
	ands r5, r1
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, r7
	blo _080C16A8
_080C1702:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1714: .4byte 0x000001FF

	thumb_func_start sa2__unused_sub_8005FB4
sa2__unused_sub_8005FB4: @ 0x080C1718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r2, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080C175C @ =gFlags
	ldr r0, [r1]
	movs r7, #4
	orrs r0, r7
	str r0, [r1]
	cmp r6, #1
	bls _080C1774
	ldr r1, _080C1760 @ =gUnknown_03003F30
	strb r7, [r1]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080C1768
	ldr r0, _080C1764 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r3, r0, #2
	b _080C179C
	.align 2, 0
_080C175C: .4byte gFlags
_080C1760: .4byte gUnknown_03003F30
_080C1764: .4byte gBgOffsetsHBlank
_080C1768:
	ldr r0, _080C1770 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	b _080C179C
	.align 2, 0
_080C1770: .4byte gBgOffsetsHBlank
_080C1774:
	ldr r1, _080C178C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1790 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080C179C
	ldr r1, _080C1794 @ =gUnknown_03003C5C
	ldr r0, _080C1798 @ =0x04000042
	b _080C17A0
	.align 2, 0
_080C178C: .4byte gUnknown_03003F30
_080C1790: .4byte gBgOffsetsHBlank
_080C1794: .4byte gUnknown_03003C5C
_080C1798: .4byte 0x04000042
_080C179C:
	ldr r1, _080C1804 @ =gUnknown_03003C5C
	ldr r0, _080C1808 @ =0x04000040
_080C17A0:
	str r0, [r1]
	subs r1, r2, r5
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r7, r1, #0x10
	asrs r2, r7, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080C17B8
	rsbs r0, r2, #0
_080C17B8:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080C17CC
	rsbs r4, r1, #0
_080C17CC:
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r4, _080C180C @ =gUnknown_03003F30
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r6, r2, #0
	cmp r2, #0
	bge _080C17E6
	rsbs r6, r2, #0
_080C17E6:
	adds r0, r1, #0
	cmp r1, #0
	bge _080C17EE
	rsbs r0, r1, #0
_080C17EE:
	cmp r6, r0
	ble _080C18C0
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1860
	strb r5, [r3, #1]
	movs r2, #0
	adds r6, r7, #0
	b _080C1848
	.align 2, 0
_080C1804: .4byte gUnknown_03003C5C
_080C1808: .4byte 0x04000040
_080C180C: .4byte gUnknown_03003F30
_080C1810:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1842
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r5, [r3]
	ldr r1, _080C185C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r3, r3, r0
	strb r5, [r3, #1]
_080C1842:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1848:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _080C1854
	rsbs r0, r0, #0
_080C1854:
	cmp r2, r0
	blt _080C1810
	strb r5, [r3]
	b _080C1978
	.align 2, 0
_080C185C: .4byte gUnknown_03003F30
_080C1860:
	strb r5, [r3]
	adds r3, #1
	movs r2, #0
	adds r6, r7, #0
	b _080C18A6
_080C186A:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C18A0
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r5, [r3]
	ldr r1, _080C18BC @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r5, [r3]
	adds r3, #1
_080C18A0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C18A6:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _080C18B2
	rsbs r0, r0, #0
_080C18B2:
	cmp r2, r0
	blt _080C186A
	strb r5, [r3]
	b _080C1978
	.align 2, 0
_080C18BC: .4byte gUnknown_03003F30
_080C18C0:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1924
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	b _080C190C
_080C18DC:
	adds r2, r5, #1
	strb r2, [r3]
	adds r3, #1
	strb r5, [r3]
	ldr r1, _080C1920 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1906
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1906:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C190C:
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080C191A
	rsbs r0, r0, #0
_080C191A:
	cmp r6, r0
	blt _080C18DC
	b _080C1978
	.align 2, 0
_080C1920: .4byte gUnknown_03003F30
_080C1924:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	b _080C1966
_080C1934:
	adds r0, r5, #1
	strb r0, [r3]
	adds r3, #1
	strb r5, [r3]
	ldr r1, _080C1988 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1960
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1960:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1966:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1974
	rsbs r0, r0, #0
_080C1974:
	cmp r2, r0
	blt _080C1934
_080C1978:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1988: .4byte gUnknown_03003F30

	thumb_func_start sa2__sub_8006228
sa2__sub_8006228: @ 0x080C198C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _080C19DC @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C19F4
	ldr r1, _080C19E0 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C19E8
	ldr r0, _080C19E4 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r3, r0, #2
	b _080C1A1C
	.align 2, 0
_080C19DC: .4byte gFlags
_080C19E0: .4byte gUnknown_03003F30
_080C19E4: .4byte gBgOffsetsHBlank
_080C19E8:
	ldr r0, _080C19F0 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	b _080C1A1C
	.align 2, 0
_080C19F0: .4byte gBgOffsetsHBlank
_080C19F4:
	ldr r1, _080C1A0C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1A10 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C1A1C
	ldr r1, _080C1A14 @ =gUnknown_03003C5C
	ldr r0, _080C1A18 @ =0x04000042
	b _080C1A20
	.align 2, 0
_080C1A0C: .4byte gUnknown_03003F30
_080C1A10: .4byte gBgOffsetsHBlank
_080C1A14: .4byte gUnknown_03003C5C
_080C1A18: .4byte 0x04000042
_080C1A1C:
	ldr r1, _080C1A84 @ =gUnknown_03003C5C
	ldr r0, _080C1A88 @ =0x04000040
_080C1A20:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080C1A3A
	rsbs r0, r2, #0
_080C1A3A:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080C1A4E
	rsbs r4, r1, #0
_080C1A4E:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _080C1A8C @ =gUnknown_03003F30
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _080C1A66
	rsbs r4, r2, #0
_080C1A66:
	adds r0, r1, #0
	cmp r1, #0
	bge _080C1A6E
	rsbs r0, r1, #0
_080C1A6E:
	cmp r4, r0
	ble _080C1B40
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1AE0
	mov r0, ip
	strb r0, [r3, #1]
	movs r2, #0
	b _080C1AC8
	.align 2, 0
_080C1A84: .4byte gUnknown_03003C5C
_080C1A88: .4byte 0x04000040
_080C1A8C: .4byte gUnknown_03003F30
_080C1A90:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1AC2
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080C1ADC @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r3, r3, r0
	mov r0, ip
	strb r0, [r3, #1]
_080C1AC2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1AC8:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1AD4
	rsbs r0, r0, #0
_080C1AD4:
	cmp r2, r0
	blt _080C1A90
	strb r6, [r3]
	b _080C1BFA
	.align 2, 0
_080C1ADC: .4byte gUnknown_03003F30
_080C1AE0:
	strb r6, [r3]
	adds r3, #1
	movs r2, #0
	b _080C1B24
_080C1AE8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1B1E
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1B3C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r6, [r3]
	adds r3, #1
_080C1B1E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1B24:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1B30
	rsbs r0, r0, #0
_080C1B30:
	cmp r2, r0
	blt _080C1AE8
	mov r2, ip
	strb r2, [r3]
	b _080C1BFA
	.align 2, 0
_080C1B3C: .4byte gUnknown_03003F30
_080C1B40:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1BA4
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	b _080C1B8C
_080C1B5A:
	adds r2, r6, #1
	strb r2, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1BA0 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1B86
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1B86:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1B8C:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080C1B9A
	rsbs r0, r0, #0
_080C1B9A:
	cmp r5, r0
	blt _080C1B5A
	b _080C1BFA
	.align 2, 0
_080C1BA0: .4byte gUnknown_03003F30
_080C1BA4:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080C1BE8
_080C1BB4:
	adds r0, r6, #1
	strb r0, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1C08 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1BE2
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1BE2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1BE8:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1BF6
	rsbs r0, r0, #0
_080C1BF6:
	cmp r2, r0
	blt _080C1BB4
_080C1BFA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1C08: .4byte gUnknown_03003F30

	thumb_func_start sa2__sub_80064A8
sa2__sub_80064A8: @ 0x080C1C0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _080C1C5C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C1C74
	ldr r1, _080C1C60 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C1C68
	ldr r0, _080C1C64 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r3, r0, #2
	b _080C1C9C
	.align 2, 0
_080C1C5C: .4byte gFlags
_080C1C60: .4byte gUnknown_03003F30
_080C1C64: .4byte gBgOffsetsHBlank
_080C1C68:
	ldr r0, _080C1C70 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	b _080C1C9C
	.align 2, 0
_080C1C70: .4byte gBgOffsetsHBlank
_080C1C74:
	ldr r1, _080C1C8C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1C90 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C1C9C
	ldr r1, _080C1C94 @ =gUnknown_03003C5C
	ldr r0, _080C1C98 @ =0x04000042
	b _080C1CA0
	.align 2, 0
_080C1C8C: .4byte gUnknown_03003F30
_080C1C90: .4byte gBgOffsetsHBlank
_080C1C94: .4byte gUnknown_03003C5C
_080C1C98: .4byte 0x04000042
_080C1C9C:
	ldr r1, _080C1D04 @ =gUnknown_03003C5C
	ldr r0, _080C1D08 @ =0x04000040
_080C1CA0:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080C1CBA
	rsbs r0, r2, #0
_080C1CBA:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080C1CCE
	rsbs r4, r1, #0
_080C1CCE:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _080C1D0C @ =gUnknown_03003F30
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _080C1CE6
	rsbs r4, r2, #0
_080C1CE6:
	adds r0, r1, #0
	cmp r1, #0
	bge _080C1CEE
	rsbs r0, r1, #0
_080C1CEE:
	cmp r4, r0
	ble _080C1DC4
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1D64
	strb r6, [r3, #1]
	movs r2, #0
	b _080C1D48
	.align 2, 0
_080C1D04: .4byte gUnknown_03003C5C
_080C1D08: .4byte 0x04000040
_080C1D0C: .4byte gUnknown_03003F30
_080C1D10:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1D42
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1D60 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r3, r3, r0
	strb r6, [r3, #1]
_080C1D42:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1D48:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1D54
	rsbs r0, r0, #0
_080C1D54:
	cmp r2, r0
	blt _080C1D10
	mov r2, ip
	strb r2, [r3]
	b _080C1E7C
	.align 2, 0
_080C1D60: .4byte gUnknown_03003F30
_080C1D64:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	movs r2, #0
	b _080C1DAA
_080C1D6E:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1DA4
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080C1DC0 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
_080C1DA4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1DAA:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1DB6
	rsbs r0, r0, #0
_080C1DB6:
	cmp r2, r0
	blt _080C1D6E
	strb r6, [r3]
	b _080C1E7C
	.align 2, 0
_080C1DC0: .4byte gUnknown_03003F30
_080C1DC4:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1E28
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080C1E10
_080C1DDE:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	strb r6, [r3]
	ldr r1, _080C1E24 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1E0A
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1E0A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1E10:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1E1E
	rsbs r0, r0, #0
_080C1E1E:
	cmp r2, r0
	blt _080C1DDE
	b _080C1E7C
	.align 2, 0
_080C1E24: .4byte gUnknown_03003F30
_080C1E28:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080C1E6A
_080C1E38:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	strb r6, [r3]
	ldr r1, _080C1E8C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1E64
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1E64:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1E6A:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1E78
	rsbs r0, r0, #0
_080C1E78:
	cmp r2, r0
	blt _080C1E38
_080C1E7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1E8C: .4byte gUnknown_03003F30

	thumb_func_start sa2__unused_sub_800672C
sa2__unused_sub_800672C: @ 0x080C1E90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _080C1EC4 @ =gFlags
	ldr r0, [r1]
	movs r3, #4
	orrs r0, r3
	str r0, [r1]
	cmp r2, #1
	bls _080C1EDC
	ldr r1, _080C1EC8 @ =gUnknown_03003F30
	strb r3, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080C1ED0
	ldr r0, _080C1ECC @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r7, r0, #2
	b _080C1F04
	.align 2, 0
_080C1EC4: .4byte gFlags
_080C1EC8: .4byte gUnknown_03003F30
_080C1ECC: .4byte gBgOffsetsHBlank
_080C1ED0:
	ldr r0, _080C1ED8 @ =gBgOffsetsHBlank
	ldr r7, [r0]
	b _080C1F04
	.align 2, 0
_080C1ED8: .4byte gBgOffsetsHBlank
_080C1EDC:
	ldr r1, _080C1EF4 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1EF8 @ =gBgOffsetsHBlank
	ldr r7, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080C1F04
	ldr r1, _080C1EFC @ =gUnknown_03003C5C
	ldr r0, _080C1F00 @ =0x04000042
	b _080C1F08
	.align 2, 0
_080C1EF4: .4byte gUnknown_03003F30
_080C1EF8: .4byte gBgOffsetsHBlank
_080C1EFC: .4byte gUnknown_03003C5C
_080C1F00: .4byte 0x04000042
_080C1F04:
	ldr r1, _080C2008 @ =gUnknown_03003C5C
	ldr r0, _080C200C @ =0x04000040
_080C1F08:
	str r0, [r1]
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #2]
	ldrb r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	add r2, sp, #4
	mov r3, ip
	ldrb r0, [r3, #3]
	ldrb r1, [r3, #1]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r3, [r3]
	mov r1, ip
	ldrb r4, [r1, #1]
	adds r2, #8
	str r2, [sp, #0x24]
	cmp r0, #0
	bge _080C1F38
	rsbs r0, r0, #0
_080C1F38:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5]
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r1, #0x10
	str r1, [sp, #0x28]
	cmp r0, #0
	bge _080C1F4E
	rsbs r0, r0, #0
_080C1F4E:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	mov r1, sp
	mov r2, ip
	ldrb r0, [r2, #4]
	subs r0, r0, r3
	strh r0, [r1, #2]
	ldrb r0, [r2, #5]
	subs r0, r0, r4
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _080C1F70
	rsbs r0, r0, #0
_080C1F70:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5, #2]
	mov r1, sp
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080C1F82
	rsbs r0, r0, #0
_080C1F82:
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	strh r0, [r3, #2]
	add r2, sp, #0x14
	mov r5, ip
	ldrb r0, [r5]
	strb r0, [r2, #1]
	strb r0, [r2]
	ldr r1, _080C2010 @ =gUnknown_03003F30
	ldrb r0, [r1]
	muls r0, r4, r0
	adds r7, r7, r0
	add r1, sp, #8
	mov r3, sp
	ldrh r0, [r3, #4]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r3, #6]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	ldrb r0, [r5, #5]
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	mov sb, r1
	cmp r0, r3
	bls _080C1FB8
	adds r0, r3, #0
_080C1FB8:
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080C209E
	mov r8, sb
_080C1FC0:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	mov r5, sp
	ldrh r2, [r5, #0xc]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C203A
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C1FEC:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2014
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2030
	.align 2, 0
_080C2008: .4byte gUnknown_03003C5C
_080C200C: .4byte 0x04000040
_080C2010: .4byte gUnknown_03003F30
_080C2014:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C201E
	subs r0, #1
	strb r0, [r6]
_080C201E:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2030
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C2030:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C1FEC
_080C203A:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C208C
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C204A:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2070
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2082
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C2082
_080C2070:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C207A
	subs r0, #1
	strb r0, [r6, #1]
_080C207A:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C2082:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C204A
_080C208C:
	ldr r2, _080C2150 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C1FC0
_080C209E:
	mov r1, ip
	ldrb r0, [r1, #3]
	ldrb r2, [r1, #5]
	cmp r0, r2
	bne _080C20AA
	b _080C2394
_080C20AA:
	ldr r3, [sp, #0x18]
	cmp r3, r0
	beq _080C20B2
	b _080C2218
_080C20B2:
	mov r2, sp
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r5, ip
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #3]
	subs r0, r0, r1
	strh r0, [r2, #4]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C20D2
	rsbs r0, r0, #0
_080C20D2:
	lsls r0, r0, #1
	ldr r2, [sp, #0x24]
	strh r0, [r2]
	mov r3, sp
	movs r5, #4
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _080C20E4
	rsbs r0, r0, #0
_080C20E4:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	mov r2, sp
	ldrh r0, [r2, #4]
	rsbs r0, r0, #0
	mov r3, sb
	strh r0, [r3]
	mov r5, ip
	ldrb r0, [r5, #2]
	strb r0, [r6]
	ldrb r0, [r5, #5]
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080C21DE
	mov r8, sb
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x1c]
_080C2108:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	ldr r5, [sp, #0x1c]
	ldrh r2, [r5]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C217A
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C2134:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2154
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2170
	.align 2, 0
_080C2150: .4byte gUnknown_03003F30
_080C2154:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C215E
	subs r0, #1
	strb r0, [r6]
_080C215E:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2170
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C2170:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C2134
_080C217A:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C21CC
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C218A:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C21B0
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C21C2
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C21C2
_080C21B0:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C21BA
	subs r0, #1
	strb r0, [r6, #1]
_080C21BA:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C21C2:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C218A
_080C21CC:
	ldr r2, _080C2214 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C2108
_080C21DE:
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	mov r2, ip
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
	mov r3, sp
	strh r0, [r3, #6]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	ldrb r3, [r2, #7]
	cmp r0, #0
	bge _080C2204
	rsbs r0, r0, #0
_080C2204:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	mov r2, sp
	movs r5, #6
	ldrsh r0, [r2, r5]
	b _080C2408
	.align 2, 0
_080C2214: .4byte gUnknown_03003F30
_080C2218:
	mov r2, sp
	mov r3, ip
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #5]
	subs r0, r0, r1
	strh r0, [r2, #6]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _080C2238
	rsbs r0, r0, #0
_080C2238:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	mov r2, sp
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080C224A
	rsbs r0, r0, #0
_080C224A:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5, #2]
	mov r1, sp
	ldrh r0, [r1, #6]
	rsbs r0, r0, #0
	mov r2, sb
	strh r0, [r2, #2]
	mov r3, ip
	ldrb r0, [r3, #4]
	strb r0, [r6, #1]
	ldrb r5, [r3, #3]
	str r5, [sp, #0x18]
	cmp r4, r5
	bhs _080C2340
	mov r8, sb
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x20]
_080C226E:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	ldr r1, [sp, #0x20]
	ldrh r2, [r1]
	ldrh r5, [r3]
	adds r2, r2, r5
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C22DC
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C229A:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C22B6
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C22D2
_080C22B6:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C22C0
	subs r0, #1
	strb r0, [r6]
_080C22C0:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C22D2
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C22D2:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C229A
_080C22DC:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C232E
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C22EC:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2312
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2324
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C2324
_080C2312:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C231C
	subs r0, #1
	strb r0, [r6, #1]
_080C231C:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C2324:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C22EC
_080C232E:
	ldr r2, _080C2390 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C226E
_080C2340:
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r2, ip
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #3]
	subs r0, r0, r1
	mov r3, sp
	strh r0, [r3, #4]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r3, [r2, #7]
	cmp r0, #0
	bge _080C2366
	rsbs r0, r0, #0
_080C2366:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	mov r2, sp
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080C2378
	rsbs r0, r0, #0
_080C2378:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	mov r2, sp
	ldrh r0, [r2, #4]
	rsbs r0, r0, #0
	mov r5, sb
	strh r0, [r5]
	mov r1, ip
	ldrb r0, [r1, #2]
	strb r0, [r6]
	b _080C2424
	.align 2, 0
_080C2390: .4byte gUnknown_03003F30
_080C2394:
	mov r2, sp
	mov r3, ip
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2]
	add r2, sp, #4
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r3, #6]
	mov r8, r1
	ldrb r3, [r3, #7]
	cmp r0, #0
	bge _080C23BC
	rsbs r0, r0, #0
_080C23BC:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C23CC
	rsbs r0, r0, #0
_080C23CC:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r5, ip
	ldrb r0, [r5, #2]
	strb r0, [r6]
	mov r1, sp
	ldrb r0, [r5, #4]
	mov r5, r8
	subs r0, r5, r0
	strh r0, [r1, #2]
	mov r1, ip
	ldrb r0, [r1, #5]
	subs r0, r3, r0
	strh r0, [r2, #2]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _080C23FE
	rsbs r0, r0, #0
_080C23FE:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
_080C2408:
	cmp r0, #0
	bge _080C240E
	rsbs r0, r0, #0
_080C240E:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #6]
	rsbs r0, r0, #0
	mov r5, sb
	strh r0, [r5, #2]
	mov r1, ip
	ldrb r0, [r1, #4]
	strb r0, [r6, #1]
_080C2424:
	str r3, [sp, #0x18]
	cmp r4, r3
	bhs _080C2502
	mov r8, sb
	ldr r2, [sp, #0x24]
	mov ip, r2
_080C2430:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	mov r5, ip
	ldrh r2, [r5]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C249E
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C245C:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2478
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2494
_080C2478:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C2482
	subs r0, #1
	strb r0, [r6]
_080C2482:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2494
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C2494:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C245C
_080C249E:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C24F0
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C24AE:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C24D4
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C24E6
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C24E6
_080C24D4:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C24DE
	subs r0, #1
	strb r0, [r6, #1]
_080C24DE:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C24E6:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C24AE
_080C24F0:
	ldr r2, _080C2514 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C2430
_080C2502:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2514: .4byte gUnknown_03003F30

	thumb_func_start sa2__unused_sub_8006DB4
sa2__unused_sub_8006DB4: @ 0x080C2518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r1
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r6, sp, #4
	ldr r1, _080C2574 @ =gUnknown_082B5304
	adds r0, r6, #0
	movs r2, #4
	bl memcpy
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl memset
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r1, _080C2578 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C2590
	ldr r1, _080C257C @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C2584
	ldr r0, _080C2580 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r4, r0, #2
	b _080C25B8
	.align 2, 0
_080C2574: .4byte gUnknown_082B5304
_080C2578: .4byte gFlags
_080C257C: .4byte gUnknown_03003F30
_080C2580: .4byte gBgOffsetsHBlank
_080C2584:
	ldr r0, _080C258C @ =gBgOffsetsHBlank
	ldr r4, [r0]
	b _080C25B8
	.align 2, 0
_080C258C: .4byte gBgOffsetsHBlank
_080C2590:
	ldr r1, _080C25A8 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C25AC @ =gBgOffsetsHBlank
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C25B8
	ldr r1, _080C25B0 @ =gUnknown_03003C5C
	ldr r0, _080C25B4 @ =0x04000042
	b _080C25BC
	.align 2, 0
_080C25A8: .4byte gUnknown_03003F30
_080C25AC: .4byte gBgOffsetsHBlank
_080C25B0: .4byte gUnknown_03003C5C
_080C25B4: .4byte 0x04000042
_080C25B8:
	ldr r1, _080C26CC @ =gUnknown_03003C5C
	ldr r0, _080C26D0 @ =0x04000040
_080C25BC:
	str r0, [r1]
	mov r1, sl
	ldrb r0, [r1, #5]
	ldrb r2, [r1, #1]
	adds r5, r2, #0
	adds r1, r0, #0
	cmp r0, r5
	bls _080C25CE
	adds r0, r2, #0
_080C25CE:
	adds r3, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp ip, r5
	bhs _080C25DC
	adds r1, r2, #0
_080C25DC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r2, _080C26D4 @ =gUnknown_03003F30
	ldrb r0, [r2]
	muls r0, r3, r0
	adds r4, r4, r0
	mov r2, sp
	mov r7, sl
	ldrb r0, [r7, #2]
	ldrb r1, [r7]
	subs r0, r0, r1
	strh r0, [r2]
	adds r7, r6, #0
	mov r1, sl
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	strh r0, [r7]
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _080C260E
	rsbs r0, r0, #0
_080C260E:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0xc]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _080C261E
	rsbs r0, r0, #0
_080C261E:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x10]
	mov r2, sp
	mov r1, sl
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	mov r2, sl
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
	strh r0, [r7, #2]
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C2646
	rsbs r0, r0, #0
_080C2646:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xe]
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _080C2656
	rsbs r0, r0, #0
_080C2656:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0x12]
	add r2, sp, #0x14
	mov r7, sl
	ldrb r0, [r7]
	strb r0, [r2]
	ldrb r0, [r7, #4]
	strb r0, [r2, #1]
	add r1, sp, #8
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	adds r6, r2, #0
	cmp r3, r8
	bne _080C267E
	b _080C2790
_080C267E:
	cmp r5, ip
	bhs _080C2714
	cmp r3, r8
	blo _080C2688
	b _080C2790
_080C2688:
	adds r7, r6, #0
	adds r5, r1, #0
_080C268C:
	mov r0, sb
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	mov r1, sp
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	lsls r0, r0, #0x10
	adds r3, #1
	mov ip, r3
	cmp r0, #0
	blt _080C26FC
	add r2, sp, #8
	add r3, sp, #0x10
_080C26AC:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C26D8
	ldrb r0, [r7]
	cmp sb, r0
	ble _080C26C0
	adds r0, #1
	strb r0, [r6]
_080C26C0:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C26F4
	.align 2, 0
_080C26CC: .4byte gUnknown_03003C5C
_080C26D0: .4byte 0x04000040
_080C26D4: .4byte gUnknown_03003F30
_080C26D8:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C26E2
	subs r0, #1
	strb r0, [r6]
_080C26E2:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C26F4
	ldrb r0, [r6]
	strb r0, [r4, #1]
_080C26F4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C26AC
_080C26FC:
	ldr r2, _080C2710 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C268C
	b _080C2790
	.align 2, 0
_080C2710: .4byte gUnknown_03003F30
_080C2714:
	cmp r3, r8
	bhs _080C2790
	adds r7, r6, #0
	add r5, sp, #8
_080C271C:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldrh r1, [r5, #2]
	mov r2, sp
	ldrh r0, [r2, #0xe]
	adds r1, r1, r0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	adds r3, #1
	mov ip, r3
	cmp r1, #0
	blt _080C2780
	add r2, sp, #8
	add r3, sp, #0x10
_080C273C:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2766
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080C2750
	adds r0, #1
	strb r0, [r6, #1]
_080C2750:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2778
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080C2778
_080C2766:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C2770
	subs r0, #1
	strb r0, [r6, #1]
_080C2770:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080C2778:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C273C
_080C2780:
	ldr r1, _080C27F4 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C271C
_080C2790:
	mov r7, sl
	ldrb r0, [r7, #7]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bls _080C279C
	adds r0, r1, #0
_080C279C:
	mov r8, r0
	cmp r3, r8
	bhs _080C287C
	adds r7, r6, #0
	add r5, sp, #8
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x18]
_080C27AC:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	ldr r1, [sp, #0x18]
	ldrh r2, [r1]
	ldrh r0, [r5]
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r1, [r1, #2]
	mov ip, r1
	ldrh r0, [r5, #2]
	add r0, ip
	strh r0, [r5, #2]
	lsls r2, r2, #0x10
	adds r3, #1
	mov ip, r3
	cmp r2, #0
	blt _080C281C
	add r2, sp, #8
	add r3, sp, #0x10
_080C27D6:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C27F8
	ldrb r0, [r7]
	cmp sb, r0
	ble _080C27EA
	adds r0, #1
	strb r0, [r6]
_080C27EA:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C2814
	.align 2, 0
_080C27F4: .4byte gUnknown_03003F30
_080C27F8:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C2802
	subs r0, #1
	strb r0, [r6]
_080C2802:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2814
	ldrb r0, [r6]
	strb r0, [r4, #1]
_080C2814:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C27D6
_080C281C:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C286C
	add r2, sp, #8
	add r3, sp, #0x10
_080C2828:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2852
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080C283C
	adds r0, #1
	strb r0, [r6, #1]
_080C283C:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2864
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080C2864
_080C2852:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C285C
	subs r0, #1
	strb r0, [r6, #1]
_080C285C:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080C2864:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2828
_080C286C:
	ldr r2, _080C28EC @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C27AC
_080C287C:
	mov r2, sl
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #3]
	adds r2, r1, #0
	adds r7, r0, #0
	cmp r0, r2
	bhs _080C288C
	adds r0, r1, #0
_080C288C:
	mov r8, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bhi _080C2920
	cmp r3, r8
	blo _080C289C
	b _080C299C
_080C289C:
	adds r7, r6, #0
	add r5, sp, #8
_080C28A0:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldrh r1, [r5, #2]
	mov r2, sp
	ldrh r0, [r2, #0xe]
	adds r1, r1, r0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	adds r3, #1
	mov ip, r3
	cmp r1, #0
	blt _080C290A
	add r2, sp, #8
	add r3, sp, #0x10
_080C28C0:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C28F0
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080C28D4
	adds r0, #1
	strb r0, [r6, #1]
_080C28D4:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2902
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080C2902
	.align 2, 0
_080C28EC: .4byte gUnknown_03003F30
_080C28F0:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C28FA
	subs r0, #1
	strb r0, [r6, #1]
_080C28FA:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080C2902:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C28C0
_080C290A:
	ldr r1, _080C291C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C28A0
	b _080C299C
	.align 2, 0
_080C291C: .4byte gUnknown_03003F30
_080C2920:
	cmp r3, r8
	bhs _080C299C
	adds r7, r6, #0
	add r5, sp, #8
_080C2928:
	mov r0, sb
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	mov r1, sp
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	lsls r0, r0, #0x10
	adds r3, #1
	mov ip, r3
	cmp r0, #0
	blt _080C298C
	add r2, sp, #8
	add r3, sp, #0x10
_080C2948:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2966
	ldrb r0, [r7]
	cmp sb, r0
	ble _080C295C
	adds r0, #1
	strb r0, [r6]
_080C295C:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C2984
_080C2966:
	adds r1, r6, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C2972
	subs r0, #1
	strb r0, [r1]
_080C2972:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2984
	ldrb r0, [r6]
	strb r0, [r4, #1]
_080C2984:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C2948
_080C298C:
	ldr r2, _080C29AC @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C2928
_080C299C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C29AC: .4byte gUnknown_03003F30

	thumb_func_start sa2__sub_800724C
sa2__sub_800724C: @ 0x080C29B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r6, sp, #4
	ldr r1, _080C2A0C @ =gUnknown_082B5304
	adds r0, r6, #0
	movs r2, #4
	bl memcpy
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl memset
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r1, _080C2A10 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	mov r8, r6
	cmp r7, #1
	bls _080C2A28
	ldr r1, _080C2A14 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C2A1C
	ldr r0, _080C2A18 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r5, r0, #2
	b _080C2A50
	.align 2, 0
_080C2A0C: .4byte gUnknown_082B5304
_080C2A10: .4byte gFlags
_080C2A14: .4byte gUnknown_03003F30
_080C2A18: .4byte gBgOffsetsHBlank
_080C2A1C:
	ldr r0, _080C2A24 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	b _080C2A50
	.align 2, 0
_080C2A24: .4byte gBgOffsetsHBlank
_080C2A28:
	ldr r1, _080C2A40 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C2A44 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C2A50
	ldr r1, _080C2A48 @ =gUnknown_03003C5C
	ldr r0, _080C2A4C @ =0x04000042
	b _080C2A54
	.align 2, 0
_080C2A40: .4byte gUnknown_03003F30
_080C2A44: .4byte gBgOffsetsHBlank
_080C2A48: .4byte gUnknown_03003C5C
_080C2A4C: .4byte 0x04000042
_080C2A50:
	ldr r1, _080C2B64 @ =gUnknown_03003C5C
	ldr r0, _080C2B68 @ =0x04000040
_080C2A54:
	str r0, [r1]
	mov r1, sl
	ldrb r0, [r1, #5]
	ldrb r2, [r1, #1]
	adds r7, r2, #0
	adds r1, r0, #0
	cmp r0, r7
	bls _080C2A66
	adds r0, r2, #0
_080C2A66:
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp sb, r7
	bhs _080C2A74
	adds r1, r2, #0
_080C2A74:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r2, _080C2B6C @ =gUnknown_03003F30
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r5, r5, r0
	mov r2, sp
	mov r3, sl
	ldrb r0, [r3, #2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r3, r8
	mov r6, sl
	ldrb r0, [r6, #3]
	ldrb r1, [r6, #1]
	subs r0, r0, r1
	strh r0, [r3]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C2AA6
	rsbs r0, r0, #0
_080C2AA6:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xc]
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _080C2AB6
	rsbs r0, r0, #0
_080C2AB6:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x10]
	mov r2, sp
	mov r6, sl
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r6, #7]
	ldrb r1, [r6, #5]
	subs r0, r0, r1
	strh r0, [r3, #2]
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C2ADC
	rsbs r0, r0, #0
_080C2ADC:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xe]
	movs r6, #2
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _080C2AEC
	rsbs r0, r0, #0
_080C2AEC:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x12]
	add r2, sp, #0x14
	mov r3, sl
	ldrb r0, [r3]
	strb r0, [r2]
	ldrb r0, [r3, #4]
	strb r0, [r2, #1]
	add r1, sp, #8
	mov r6, r8
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	mov r8, r2
	mov ip, r1
	ldr r0, [sp, #0x18]
	cmp r4, r0
	bne _080C2B1A
	b _080C2C2C
_080C2B1A:
	cmp r7, sb
	bhs _080C2BAC
	cmp r4, r0
	blo _080C2B24
	b _080C2C2C
_080C2B24:
	movs r0, #0xf0
	strb r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #1]
	add r2, sp, #8
	mov r3, sp
	ldrh r0, [r3, #0xc]
	ldrh r6, [r2]
	adds r0, r0, r6
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r4, #1
	mov sb, r4
	cmp r0, #0
	blt _080C2B94
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080C2B4A:
	mov r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	ble _080C2B70
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C2B8A
	.align 2, 0
_080C2B64: .4byte gUnknown_03003C5C
_080C2B68: .4byte 0x04000040
_080C2B6C: .4byte gUnknown_03003F30
_080C2B70:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2B8A
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080C2B8A:
	mov r2, ip
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080C2B4A
_080C2B94:
	ldr r1, _080C2BA8 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r5, r5, r0
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #0x18]
	cmp r4, r3
	blo _080C2B24
	b _080C2C2C
	.align 2, 0
_080C2BA8: .4byte gUnknown_03003F30
_080C2BAC:
	ldr r6, [sp, #0x18]
	cmp r4, r6
	bhs _080C2C2C
	mov r7, ip
_080C2BB4:
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r5]
	movs r0, #0
	strb r0, [r5, #1]
	adds r2, r7, #0
	ldrh r1, [r2, #2]
	mov r3, sp
	ldrh r0, [r3, #0xe]
	adds r1, r1, r0
	strh r1, [r2, #2]
	lsls r1, r1, #0x10
	adds r4, #1
	mov sb, r4
	cmp r1, #0
	blt _080C2C1A
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080C2BDA:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2C02
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2C10
	mov r1, r8
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r5]
	b _080C2C10
_080C2C02:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080C2C10:
	mov r2, ip
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2BDA
_080C2C1A:
	ldr r2, _080C2C90 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r5, r5, r0
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r6, [sp, #0x18]
	cmp r4, r6
	blo _080C2BB4
_080C2C2C:
	mov r7, sl
	ldrb r0, [r7, #7]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bls _080C2C38
	adds r0, r1, #0
_080C2C38:
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080C2D1E
	mov r7, ip
	add r0, sp, #0xc
	mov sl, r0
_080C2C44:
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r5]
	ldrb r0, [r1]
	strb r0, [r5, #1]
	adds r3, r7, #0
	mov r6, sl
	ldrh r2, [r6]
	ldrh r0, [r7]
	adds r2, r2, r0
	strh r2, [r7]
	ldrh r0, [r7, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sb, r4
	cmp r2, #0
	blt _080C2CBC
	mov r2, r8
	add r4, sp, #0x10
	mov r1, ip
	str r1, [sp, #0x1c]
_080C2C74:
	mov r0, sp
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble _080C2C94
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2CB2
	.align 2, 0
_080C2C90: .4byte gUnknown_03003F30
_080C2C94:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r3, [sp, #0x1c]
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2CB2
	mov r6, r8
	ldrb r0, [r6]
	strb r0, [r5, #1]
_080C2CB2:
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C2C74
_080C2CBC:
	adds r2, r7, #0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2D0C
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080C2CCC:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2CF4
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2D02
	mov r2, r8
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r5]
	b _080C2D02
_080C2CF4:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080C2D02:
	mov r2, ip
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2CCC
_080C2D0C:
	ldr r3, _080C2D30 @ =gUnknown_03003F30
	ldrb r0, [r3]
	adds r5, r5, r0
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x18]
	cmp r4, r0
	blo _080C2C44
_080C2D1E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2D30: .4byte gUnknown_03003F30

	thumb_func_start sa2__sub_80075D0
sa2__sub_80075D0: @ 0x080C2D34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	muls r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _080C2D8C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C2DA4
	ldr r1, _080C2D90 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	adds r2, r1, #0
	cmp r0, #0
	beq _080C2D98
	ldr r0, _080C2D94 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r4, r0, #2
	b _080C2DD0
	.align 2, 0
_080C2D8C: .4byte gFlags
_080C2D90: .4byte gUnknown_03003F30
_080C2D94: .4byte gBgOffsetsHBlank
_080C2D98:
	ldr r0, _080C2DA0 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	b _080C2DD0
	.align 2, 0
_080C2DA0: .4byte gBgOffsetsHBlank
_080C2DA4:
	ldr r1, _080C2DC0 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C2DC4 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	adds r2, r1, #0
	cmp r0, #0
	beq _080C2DD0
	ldr r1, _080C2DC8 @ =gUnknown_03003C5C
	ldr r0, _080C2DCC @ =0x04000042
	b _080C2DD4
	.align 2, 0
_080C2DC0: .4byte gUnknown_03003F30
_080C2DC4: .4byte gBgOffsetsHBlank
_080C2DC8: .4byte gUnknown_03003C5C
_080C2DCC: .4byte 0x04000042
_080C2DD0:
	ldr r1, _080C2E3C @ =gUnknown_03003C5C
	ldr r0, _080C2E40 @ =0x04000040
_080C2DD4:
	str r0, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	subs r0, r1, r6
	cmp r0, r5
	ble _080C2DE6
	subs r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080C2DE6:
	mov r7, r8
	subs r0, r7, r1
	cmp r0, r5
	ble _080C2DF6
	adds r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080C2DF6:
	ldrb r0, [r2]
	muls r0, r6, r0
	adds r4, r4, r0
	cmp r6, r8
	bhs _080C2E88
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
_080C2E06:
	subs r0, r6, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r0, #0
	muls r7, r0, r7
	adds r0, r7, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	subs r0, r1, r0
	str r3, [sp]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0
	bge _080C2E44
	movs r0, #0
	strb r0, [r4]
	b _080C2E50
	.align 2, 0
_080C2E3C: .4byte gUnknown_03003C5C
_080C2E40: .4byte 0x04000040
_080C2E44:
	cmp r0, #0xf0
	ble _080C2E4E
	movs r0, #0xf0
	strb r0, [r4]
	b _080C2E50
_080C2E4E:
	strb r1, [r4]
_080C2E50:
	adds r4, #1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _080C2E68
	movs r0, #0xf0
	strb r0, [r4]
	b _080C2E74
_080C2E68:
	cmp r0, #0
	bge _080C2E72
	movs r0, #0
	strb r0, [r4]
	b _080C2E74
_080C2E72:
	strb r1, [r4]
_080C2E74:
	adds r4, #1
	ldr r0, _080C2E98 @ =gUnknown_03003F30
	ldrb r0, [r0]
	subs r0, #2
	adds r4, r4, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r8
	blo _080C2E06
_080C2E88:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2E98: .4byte gUnknown_03003F30

	thumb_func_start sa2__sub_8007738
sa2__sub_8007738: @ 0x080C2E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x44]
	mov r8, r7
	ldr r7, [sp, #0x48]
	mov sb, r7
	ldr r7, [sp, #0x4c]
	mov sl, r7
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	mov r5, sl
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _080C2F9C @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C2FA0 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C2FA4 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C2FA8 @ =gUnknown_03003F30
	strb r3, [r0]
	ldr r0, _080C2FAC @ =gBgOffsetsHBlank
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, [sp]
	cmp r7, r0
	bhs _080C2F8A
	ldr r4, _080C2FB0 @ =gSineTable
	ldr r3, _080C2FB4 @ =0x000003FF
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _080C2FB8 @ =0x000001FF
	adds r2, r5, #0
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_080C2F38:
	mov r0, ip
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [sp, #4]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	add r0, sb
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r6, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [sp, #0xc]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	add r0, r8
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, [sp, #8]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r5, [sp, #0x10]
	adds r0, r6, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _080C2F38
_080C2F8A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2F9C: .4byte gFlags
_080C2FA0: .4byte gUnknown_03003C5C
_080C2FA4: .4byte 0x04000010
_080C2FA8: .4byte gUnknown_03003F30
_080C2FAC: .4byte gBgOffsetsHBlank
_080C2FB0: .4byte gSineTable
_080C2FB4: .4byte 0x000003FF
_080C2FB8: .4byte 0x000001FF

	thumb_func_start sa2__sub_8007858
sa2__sub_8007858: @ 0x080C2FBC
	push {r4, r5, r6, r7, lr}
	adds r7, r3, #0
	ldr r3, [sp, #0x14]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _080C3020 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C3024 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C3028 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C302C @ =gUnknown_03003F30
	strb r3, [r0]
	ldr r0, _080C3030 @ =gBgOffsetsHBlank
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r2, r0, r1
	subs r4, r4, r5
	ldr r1, _080C3034 @ =0x000001FF
	adds r0, r1, #0
	ands r4, r0
	ands r7, r0
	cmp r5, r6
	bhs _080C3018
_080C2FFE:
	strh r7, [r2]
	adds r2, #2
	adds r0, r4, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	strh r0, [r2]
	adds r2, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _080C2FFE
_080C3018:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3020: .4byte gFlags
_080C3024: .4byte gUnknown_03003C5C
_080C3028: .4byte 0x04000010
_080C302C: .4byte gUnknown_03003F30
_080C3030: .4byte gBgOffsetsHBlank
_080C3034: .4byte 0x000001FF

	thumb_func_start sa2__sub_80078D4
sa2__sub_80078D4: @ 0x080C3038
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080C30A0 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C30A4 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C30A8 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C30AC @ =gUnknown_03003F30
	strb r3, [r0]
	cmp r5, r7
	bhs _080C3098
	ldr r2, _080C30B0 @ =0x000001FF
	adds r1, r6, #0
	ands r1, r2
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [sp]
	ldr r2, _080C30B4 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _080C30B8 @ =gBgOffsetsHBlank
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2, #4]
	subs r0, r7, r5
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080C3098:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C30A0: .4byte gFlags
_080C30A4: .4byte gUnknown_03003C5C
_080C30A8: .4byte 0x04000010
_080C30AC: .4byte gUnknown_03003F30
_080C30B0: .4byte 0x000001FF
_080C30B4: .4byte 0x040000D4
_080C30B8: .4byte gBgOffsetsHBlank

	thumb_func_start sa2__sub_8007958
sa2__sub_8007958: @ 0x080C30BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	mov r8, r6
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, _080C3154 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C3158 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C315C @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C3160 @ =gUnknown_03003F30
	strb r3, [r0]
	ldr r0, _080C3164 @ =gBgOffsetsHBlank
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r2, r0, r1
	cmp r7, ip
	bhs _080C3144
	ldr r0, _080C3168 @ =0x000001FF
	adds r3, r0, #0
_080C3116:
	mov r1, sb
	adds r0, r1, r6
	ands r0, r3
	strh r0, [r2]
	adds r2, #2
	strh r5, [r2]
	adds r2, #2
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, ip
	blo _080C3116
_080C3144:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3154: .4byte gFlags
_080C3158: .4byte gUnknown_03003C5C
_080C315C: .4byte 0x04000010
_080C3160: .4byte gUnknown_03003F30
_080C3164: .4byte gBgOffsetsHBlank
_080C3168: .4byte 0x000001FF

	thumb_func_start sa2__sub_8007A08
sa2__sub_8007A08: @ 0x080C316C
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080C31A8 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r6, #1
	bls _080C31C0
	ldr r1, _080C31AC @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r6
	adds r6, r1, #0
	cmp r0, #0
	beq _080C31B4
	ldr r0, _080C31B0 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r2, r0, #2
	b _080C31EC
	.align 2, 0
_080C31A8: .4byte gFlags
_080C31AC: .4byte gUnknown_03003F30
_080C31B0: .4byte gBgOffsetsHBlank
_080C31B4:
	ldr r0, _080C31BC @ =gBgOffsetsHBlank
	ldr r2, [r0]
	b _080C31EC
	.align 2, 0
_080C31BC: .4byte gBgOffsetsHBlank
_080C31C0:
	ldr r1, _080C31DC @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C31E0 @ =gBgOffsetsHBlank
	ldr r2, [r0]
	movs r0, #1
	ands r0, r6
	adds r6, r1, #0
	cmp r0, #0
	beq _080C31EC
	ldr r1, _080C31E4 @ =gUnknown_03003C5C
	ldr r0, _080C31E8 @ =0x04000042
	b _080C31F0
	.align 2, 0
_080C31DC: .4byte gUnknown_03003F30
_080C31E0: .4byte gBgOffsetsHBlank
_080C31E4: .4byte gUnknown_03003C5C
_080C31E8: .4byte 0x04000042
_080C31EC:
	ldr r1, _080C321C @ =gUnknown_03003C5C
	ldr r0, _080C3220 @ =0x04000040
_080C31F0:
	str r0, [r1]
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, r2, r0
	cmp r5, r4
	bhs _080C3214
	adds r1, r6, #0
_080C31FE:
	strb r3, [r2]
	adds r2, #1
	strb r7, [r2]
	ldrb r0, [r1]
	adds r0, r0, r2
	subs r2, r0, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r4
	blo _080C31FE
_080C3214:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C321C: .4byte gUnknown_03003C5C
_080C3220: .4byte 0x04000040
