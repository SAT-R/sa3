.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80C4564
sub_80C4564: @ 0x080C4564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _080C45D2
	ldr r0, _080C45FC @ =gUnknown_03003C60
	mov ip, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
	movs r0, #0x80
	add r0, ip
	mov sb, r0
_080C4590:
	mov r0, r8
	adds r4, r0, r5
	lsls r4, r4, #1
	ldr r0, _080C4600 @ =gObjPalette
	adds r4, r4, r0
	ldrh r3, [r6]
	movs r2, #0x1f
	ands r2, r3
	lsls r2, r2, #1
	add r2, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	lsrs r0, r0, #4
	mov r1, ip
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	orrs r1, r0
	mov r0, sl
	ands r0, r3
	lsrs r0, r0, #9
	add r0, sb
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r4]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _080C4590
_080C45D2:
	ldr r0, _080C4604 @ =gUnknown_03003C08
	ldr r3, [r0]
	cmp r3, #0
	beq _080C45E4
	ldr r0, _080C4600 @ =gObjPalette
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
_080C45E4:
	ldr r0, _080C4608 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C45FC: .4byte gUnknown_03003C60
_080C4600: .4byte gObjPalette
_080C4604: .4byte gUnknown_03003C08
_080C4608: .4byte gFlags

	thumb_func_start sub_80C460C
sub_80C460C: @ 0x080C460C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _080C467A
	ldr r0, _080C46A4 @ =gUnknown_03003C60
	mov ip, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
	movs r0, #0x80
	add r0, ip
	mov sb, r0
_080C4638:
	mov r0, r8
	adds r4, r0, r5
	lsls r4, r4, #1
	ldr r0, _080C46A8 @ =gBgPalette
	adds r4, r4, r0
	ldrh r3, [r6]
	movs r2, #0x1f
	ands r2, r3
	lsls r2, r2, #1
	add r2, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	lsrs r0, r0, #4
	mov r1, ip
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	orrs r1, r0
	mov r0, sl
	ands r0, r3
	lsrs r0, r0, #9
	add r0, sb
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r4]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _080C4638
_080C467A:
	ldr r0, _080C46AC @ =gUnknown_03003C08
	ldr r3, [r0]
	cmp r3, #0
	beq _080C468C
	ldr r0, _080C46A8 @ =gBgPalette
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
_080C468C:
	ldr r0, _080C46B0 @ =gFlags
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C46A4: .4byte gUnknown_03003C60
_080C46A8: .4byte gBgPalette
_080C46AC: .4byte gUnknown_03003C08
_080C46B0: .4byte gFlags

	thumb_func_start sub_80C46B4
sub_80C46B4: @ 0x080C46B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r5, _080C4708 @ =gUnknown_03003C60
	movs r0, #0x80
	adds r0, r0, r5
	mov ip, r0
	movs r3, #0x1f
	mov r8, r3
	adds r6, r5, #0
	adds r6, #0x40
_080C46CC:
	lsls r2, r4, #1
	adds r1, r2, r5
	ldrh r0, [r1]
	mov r7, r8
	subs r0, r7, r0
	strh r0, [r1]
	adds r3, r2, r6
	ldrh r1, [r3]
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r3]
	add r2, ip
	ldrh r1, [r2]
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _080C46CC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4708: .4byte gUnknown_03003C60

	thumb_func_start sub_80C470C
sub_80C470C: @ 0x080C470C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _080C4750 @ =gUnknown_03003C60
	mov r8, r0
	movs r6, #0
	movs r1, #0x40
	add r1, r8
	mov sl, r1
	movs r3, #0x80
	add r3, r8
	mov sb, r3
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080C4736:
	lsls r1, r5, #1
	mov r3, r8
	adds r2, r1, r3
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r3, [r2]
	adds r0, r0, r3
	adds r3, r1, #0
	cmp r0, #0
	bge _080C4754
	strh r6, [r2]
	b _080C475C
	.align 2, 0
_080C4750: .4byte gUnknown_03003C60
_080C4754:
	cmp r0, #0x1f
	ble _080C475A
	movs r0, #0x1f
_080C475A:
	strh r0, [r2]
_080C475C:
	mov r0, sl
	adds r2, r3, r0
	ldrh r0, [r2]
	lsrs r0, r0, #5
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	cmp r0, #0
	bge _080C4772
	strh r6, [r2]
	b _080C4784
_080C4772:
	cmp r0, #0x1f
	ble _080C477C
	mov r1, ip
	strh r1, [r2]
	b _080C4784
_080C477C:
	lsls r0, r0, #5
	mov r1, ip
	ands r0, r1
	strh r0, [r2]
_080C4784:
	mov r0, sb
	adds r2, r3, r0
	ldrh r0, [r2]
	lsrs r0, r0, #0xa
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	cmp r0, #0
	bge _080C479A
	strh r6, [r2]
	b _080C47A8
_080C479A:
	cmp r0, #0x1f
	ble _080C47A2
	strh r7, [r2]
	b _080C47A8
_080C47A2:
	lsls r0, r0, #0xa
	ands r0, r7
	strh r0, [r2]
_080C47A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080C4736
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C47C0
sub_80C47C0: @ 0x080C47C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r0, #0
	str r0, [sp]
	ldr r1, _080C482C @ =gUnknown_03003C60
	mov sb, r1
_080C47D6:
	ldr r2, [sp]
	lsls r5, r2, #1
	mov r0, sb
	adds r7, r5, r0
	movs r1, #0
	ldrsh r4, [r7, r1]
	adds r0, r4, #0
	bl __floatsisf
	adds r6, r0, #0
	mov r8, r5
	cmp r4, #0
	bge _080C47F8
	ldr r1, _080C4830 @ =0x47800000
	bl __addsf3
	adds r6, r0, #0
_080C47F8:
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl __floatsisf
	adds r4, r0, #0
	ldr r1, _080C4834 @ =0x41800000
	bl __addsf3
	ldr r1, _080C4838 @ =0x3D800000
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __subsf3
	bl __fixsfsi
	cmp r0, #0
	bge _080C483C
	movs r0, #0
	b _080C4842
	.align 2, 0
_080C482C: .4byte gUnknown_03003C60
_080C4830: .4byte 0x47800000
_080C4834: .4byte 0x41800000
_080C4838: .4byte 0x3D800000
_080C483C:
	cmp r0, #0x1f
	ble _080C4842
	movs r0, #0x1f
_080C4842:
	strh r0, [r7]
	mov r0, sb
	adds r0, #0x40
	mov r1, r8
	adds r6, r1, r0
	ldrh r0, [r6]
	lsrs r0, r0, #5
	bl __floatsisf
	adds r5, r0, #0
	mov r2, sl
	movs r0, #1
	ldrsb r0, [r2, r0]
	bl __floatsisf
	adds r4, r0, #0
	ldr r1, _080C4888 @ =0x41800000
	bl __addsf3
	ldr r1, _080C488C @ =0x3D800000
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __subsf3
	bl __fixsfsi
	cmp r0, #0
	bge _080C4890
	movs r0, #0
	b _080C48A4
	.align 2, 0
_080C4888: .4byte 0x41800000
_080C488C: .4byte 0x3D800000
_080C4890:
	cmp r0, #0x1f
	ble _080C489A
	movs r0, #0xf8
	lsls r0, r0, #2
	b _080C48A4
_080C489A:
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r0, r1
_080C48A4:
	strh r0, [r6]
	mov r0, sb
	adds r0, #0x80
	mov r1, r8
	adds r6, r1, r0
	ldrh r0, [r6]
	lsrs r0, r0, #0xa
	bl __floatsisf
	adds r5, r0, #0
	mov r2, sl
	movs r0, #2
	ldrsb r0, [r2, r0]
	bl __floatsisf
	adds r4, r0, #0
	ldr r1, _080C48EC @ =0x41800000
	bl __addsf3
	ldr r1, _080C48F0 @ =0x3D800000
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __subsf3
	bl __fixsfsi
	cmp r0, #0
	bge _080C48F4
	movs r0, #0
	b _080C4908
	.align 2, 0
_080C48EC: .4byte 0x41800000
_080C48F0: .4byte 0x3D800000
_080C48F4:
	cmp r0, #0x1f
	ble _080C48FE
	movs r0, #0xf8
	lsls r0, r0, #7
	b _080C4908
_080C48FE:
	lsls r0, r0, #0xa
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r1, r2, #0
	ands r0, r1
_080C4908:
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x1f
	bhi _080C491A
	b _080C47D6
_080C491A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C492C
sub_80C492C: @ 0x080C492C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sb, r0
	ldr r2, _080C4980 @ =gUnknown_03003C60
	mov sl, r2
	ldr r7, _080C4984 @ =0x41F80000
_080C4942:
	mov r0, sb
	lsls r5, r0, #1
	mov r2, sl
	adds r6, r5, r2
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl __floatsisf
	cmp r4, #0
	bge _080C495E
	ldr r1, _080C4988 @ =0x47800000
	bl __addsf3
_080C495E:
	adds r1, r7, #0
	bl __divsf3
	mov r2, r8
	ldr r1, [r2]
	bl sub_80C7574
	adds r1, r7, #0
	bl __mulsf3
	bl __fixsfsi
	cmp r0, #0
	bge _080C498C
	movs r0, #0
	b _080C4992
	.align 2, 0
_080C4980: .4byte gUnknown_03003C60
_080C4984: .4byte 0x41F80000
_080C4988: .4byte 0x47800000
_080C498C:
	cmp r0, #0x1f
	ble _080C4992
	movs r0, #0x1f
_080C4992:
	strh r0, [r6]
	ldr r0, _080C49C0 @ =gUnknown_03003CA0
	adds r4, r5, r0
	ldrh r0, [r4]
	lsrs r0, r0, #5
	bl __floatsisf
	adds r1, r7, #0
	bl __divsf3
	mov r2, r8
	ldr r1, [r2, #4]
	bl sub_80C7574
	adds r1, r7, #0
	bl __mulsf3
	bl __fixsfsi
	cmp r0, #0
	bge _080C49C4
	movs r0, #0
	b _080C49D0
	.align 2, 0
_080C49C0: .4byte gUnknown_03003CA0
_080C49C4:
	cmp r0, #0x1f
	ble _080C49CE
	movs r0, #0xf8
	lsls r0, r0, #2
	b _080C49D0
_080C49CE:
	lsls r0, r0, #5
_080C49D0:
	strh r0, [r4]
	ldr r0, _080C4A00 @ =gUnknown_03003CE0
	adds r5, r5, r0
	ldrh r0, [r5]
	lsrs r0, r0, #0xa
	bl __floatsisf
	adds r1, r7, #0
	bl __divsf3
	mov r2, r8
	ldr r1, [r2, #8]
	bl sub_80C7574
	adds r1, r7, #0
	bl __mulsf3
	bl __fixsfsi
	cmp r0, #0
	bge _080C4A04
	movs r0, #0
	b _080C4A10
	.align 2, 0
_080C4A00: .4byte gUnknown_03003CE0
_080C4A04:
	cmp r0, #0x1f
	ble _080C4A0E
	movs r0, #0xf8
	lsls r0, r0, #7
	b _080C4A10
_080C4A0E:
	lsls r0, r0, #0xa
_080C4A10:
	strh r0, [r5]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x1f
	bls _080C4942
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C4A30
sub_80C4A30: @ 0x080C4A30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _080C4AAC
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_080C4A54:
	adds r0, r7, r5
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	movs r0, #0x1f
	ands r0, r3
	movs r1, #0x4d
	adds r2, r0, #0
	muls r2, r1, r2
	mov r0, sb
	ands r0, r3
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r2, r2, r0
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #0xa
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #8
	lsrs r1, r2, #0x10
	cmp r1, #0x1f
	bls _080C4A98
	ldr r1, _080C4A94 @ =0x00007FFF
	adds r0, r1, #0
	b _080C4AA0
	.align 2, 0
_080C4A94: .4byte 0x00007FFF
_080C4A98:
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
_080C4AA0:
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _080C4A54
_080C4AAC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C4AB8
sub_80C4AB8: @ 0x080C4AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r6, #0
	cmp r6, r7
	bhs _080C4B3A
_080C4AD2:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #1
	mov r1, sb
	adds r5, r0, r1
	ldrh r2, [r5]
	movs r0, #0x1f
	ands r0, r2
	movs r1, #0x4d
	adds r3, r0, #0
	muls r3, r1, r3
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r3, r3, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r1, #0
	ands r2, r0
	lsrs r2, r2, #0xa
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r3, r3, r0
	lsls r3, r3, #8
	lsrs r4, r3, #0x10
	cmp r4, #0x1f
	bls _080C4B20
	ldr r1, _080C4B1C @ =0x000001BF
	adds r0, r1, #0
	strh r0, [r5]
	b _080C4B30
	.align 2, 0
_080C4B1C: .4byte 0x000001BF
_080C4B20:
	movs r0, #0x6d
	muls r0, r4, r0
	movs r1, #0xff
	bl __divsi3
	lsls r0, r0, #5
	orrs r4, r0
	strh r4, [r5]
_080C4B30:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r7
	blo _080C4AD2
_080C4B3A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C4B48
sub_80C4B48: @ 0x080C4B48
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _080C4B80 @ =gUnknown_03003C08
	ldr r4, _080C4B84 @ =gUnknown_03003C60
	adds r6, r4, #0
	adds r6, #0x40
	adds r5, r4, #0
	adds r5, #0x80
_080C4B58:
	lsls r1, r3, #1
	adds r0, r1, r4
	strh r3, [r0]
	adds r2, r1, r6
	lsls r0, r3, #5
	strh r0, [r2]
	adds r1, r1, r5
	lsls r0, r3, #0xa
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bls _080C4B58
	movs r0, #0
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4B80: .4byte gUnknown_03003C08
_080C4B84: .4byte gUnknown_03003C60

	thumb_func_start sub_80C4B88
sub_80C4B88: @ 0x080C4B88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _080C4BFA
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_080C4BAC:
	adds r0, r7, r5
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	movs r0, #0x1f
	ands r0, r3
	movs r1, #0x4d
	adds r2, r0, #0
	muls r2, r1, r2
	mov r0, sb
	ands r0, r3
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r2, r2, r0
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #0xa
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r2, r0
	asrs r2, r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xf
	bhi _080C4BEA
	movs r0, #0
	b _080C4BEE
_080C4BEA:
	ldr r1, _080C4C08 @ =0x00007FFF
	adds r0, r1, #0
_080C4BEE:
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _080C4BAC
_080C4BFA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4C08: .4byte 0x00007FFF

	thumb_func_start sub_80C4C0C
sub_80C4C0C: @ 0x080C4C0C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080C4C58 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C4C50
	ldr r3, _080C4C5C @ =gUnknown_03003C60
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r4
	lsrs r0, r0, #4
	adds r2, r3, #0
	adds r2, #0x40
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r4, r0
	lsrs r0, r4, #9
	adds r3, #0x80
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r4, r0, #0
	orrs r4, r1
_080C4C50:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C4C58: .4byte gFlags
_080C4C5C: .4byte gUnknown_03003C60

	thumb_func_start sub_80C4C60
sub_80C4C60: @ 0x080C4C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	bne _080C4C7E
	ldr r1, [r1, #0x14]
	b _080C4C80
_080C4C7E:
	ldr r1, [r1, #0x18]
_080C4C80:
	mov sl, r1
	mov r1, sl
	lsls r0, r1, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl IwramMalloc
	adds r4, r0, #0
	movs r6, #0
	strh r6, [r4, #8]
	strh r6, [r4, #0x2c]
	mov r0, r8
	ldr r5, [r0]
	ldr r0, [r5]
	cmp r0, #0
	bne _080C4CB8
	str r6, [r4, #0x24]
	str r6, [r4, #0x20]
	str r6, [r4, #0x14]
	adds r0, r5, #4
	mov r1, r8
	str r0, [r1]
	adds r5, r4, #4
	mov r0, sl
	lsls r6, r0, #0x18
	b _080C4DC4
_080C4CB8:
	mov r1, sb
	lsls r0, r1, #0x13
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl IwramMalloc
	adds r2, r0, #0
	str r2, [r4, #0x14]
	str r5, [r4, #0x24]
	str r5, [r4, #0x20]
	ldr r1, [r5, #4]
	movs r7, #0xf0
	lsls r7, r7, #0x18
	ands r7, r1
	cmp r7, #0
	beq _080C4D38
	ldr r0, _080C4D34 @ =0x0FFFFFFF
	ands r1, r0
	str r1, [r2]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x17
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldr r1, [r4, #0x14]
	ldrh r0, [r5]
	strh r0, [r1, #0xc]
	ldr r1, [r4, #0x14]
	ldrb r0, [r5, #2]
	strb r0, [r1, #0x1a]
	ldr r0, [r4, #0x14]
	strh r6, [r0, #0x16]
	ldr r1, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0, #0x1f]
	ldr r0, [r4, #0x14]
	strh r6, [r0, #0x10]
	ldr r0, [r4, #0x14]
	strh r6, [r0, #0x12]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	ands r1, r0
	lsrs r1, r1, #0xa
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [r2, #8]
	b _080C4D96
	.align 2, 0
_080C4D34: .4byte 0x0FFFFFFF
_080C4D38:
	cmp r1, #0
	bne _080C4D52
	ldrb r0, [r5, #3]
	bl VramMalloc
	ldr r1, [r4, #0x14]
	str r0, [r1]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x17
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	b _080C4D5E
_080C4D52:
	str r1, [r2]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x17
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
_080C4D5E:
	ldr r1, [r4, #0x14]
	ldrh r0, [r5]
	strh r0, [r1, #0xc]
	ldr r1, [r4, #0x14]
	ldrb r0, [r5, #2]
	strb r0, [r1, #0x1a]
	ldr r0, [r4, #0x14]
	strh r7, [r0, #0x16]
	ldr r1, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0, #0x1f]
	ldr r0, [r4, #0x14]
	strh r7, [r0, #0x10]
	ldr r0, [r4, #0x14]
	strh r7, [r0, #0x12]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	ands r0, r1
	lsrs r0, r0, #0xa
	str r0, [r2, #8]
_080C4D96:
	movs r1, #0
	adds r5, r4, #4
	mov r0, sl
	lsls r6, r0, #0x18
	cmp r1, sb
	bhs _080C4DBC
	ldr r0, [r4, #0x14]
	adds r2, r0, #0
	adds r2, #0x20
	movs r3, #1
	rsbs r3, r3, #0
_080C4DAC:
	lsls r0, r1, #3
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, sb
	blo _080C4DAC
_080C4DBC:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
_080C4DC4:
	mov r0, r8
	ldr r2, [r0]
	str r2, [r4, #0x18]
	ldr r0, _080C4E1C @ =0x040000D4
	str r2, [r0]
	str r5, [r0, #4]
	ldr r1, _080C4E20 @ =0x84000004
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, #0x14
	mov r1, r8
	str r2, [r1]
	mov r0, sl
	strb r0, [r4, #2]
	lsrs r0, r6, #0x18
	cmp r0, #0
	beq _080C4E0A
	movs r5, #0
	cmp r5, r0
	bhs _080C4E0A
_080C4DEC:
	mov r0, r8
	mov r1, sb
	bl sub_80C4C60
	lsls r2, r5, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4, #2]
	cmp r5, r1
	blo _080C4DEC
_080C4E0A:
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C4E1C: .4byte 0x040000D4
_080C4E20: .4byte 0x84000004

	thumb_func_start sub_80C4E24
sub_80C4E24: @ 0x080C4E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r1, #0
	cmp r1, r7
	bge _080C4E9A
	ldr r6, _080C4EA4 @ =0x040000D4
_080C4E3A:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #2
	add r0, r8
	ldr r3, [r0]
	ldr r1, [r4]
	adds r2, r1, #0
	ldm r2!, {r0}
	str r2, [r4]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r1, #4]
	movs r1, #0
	strb r0, [r3]
	strb r1, [r3, #1]
	ldr r1, [r4]
	adds r1, #4
	str r1, [r4]
	str r1, [r3, #0x1c]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #3]
	ldr r0, _080C4EA8 @ =0x0000FFFF
	strh r0, [r3, #8]
	str r1, [r6]
	adds r0, r3, #4
	str r0, [r6, #4]
	ldr r0, _080C4EAC @ =0x84000004
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	str r2, [r4]
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _080C4E8E
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r1, [r3, #2]
	adds r2, r4, #0
	bl sub_80C4E24
_080C4E8E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _080C4E3A
_080C4E9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4EA4: .4byte 0x040000D4
_080C4EA8: .4byte 0x0000FFFF
_080C4EAC: .4byte 0x84000004

	thumb_func_start sub_80C4EB0
sub_80C4EB0: @ 0x080C4EB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x2c]
	adds r2, r1, #0
	ldr r3, [sp, #0xc]
	cmp r2, r3
	blt _080C4ED8
	b _080C5280
_080C4ED8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xe
	ldr r6, [sp, #8]
	adds r1, r1, r6
	ldr r5, [r1]
	ldrb r1, [r5, #2]
	str r0, [sp, #0x3c]
	cmp r1, #0
	beq _080C4EF6
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	ldr r2, [sp, #0x10]
	bl sub_80C4EB0
_080C4EF6:
	ldr r2, [r5, #0x1c]
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	subs r0, #0x10
	ldrh r0, [r0, #4]
	mov r8, r2
	cmp r4, r0
	bls _080C4F1A
	movs r4, #0
	strb r1, [r5, #1]
	b _080C4F24
_080C4F1A:
	cmp r4, r0
	bne _080C4F24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x2c]
_080C4F24:
	ldrb r0, [r5, #1]
	lsls r1, r0, #4
	adds r2, r2, r1
	adds r6, r0, #0
	ldrb r0, [r5]
	mov ip, r0
	cmp r6, ip
	bhs _080C4FA0
	ldr r3, _080C4F6C @ =0x040000D4
	adds r7, r5, #4
_080C4F38:
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _080C4F74
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C4F70 @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strb r6, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	muls r0, r6, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C4F64
	b _080C526C
_080C4F64:
	adds r0, r5, #0
	bl sub_80C5294
	b _080C526C
	.align 2, 0
_080C4F6C: .4byte 0x040000D4
_080C4F70: .4byte 0x84000004
_080C4F74:
	cmp r0, r4
	bls _080C4F90
	cmp r6, #0
	beq _080C4FA0
	subs r2, #0x10
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C4F8C @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r4, [r5, #8]
	b _080C4FA0
	.align 2, 0
_080C4F8C: .4byte 0x84000004
_080C4F90:
	adds r2, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x18
	mov r6, ip
	lsls r1, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r0, r1
	blo _080C4F38
_080C4FA0:
	movs r0, #0
	cmp r0, #0
	beq _080C4FA8
	b _080C526C
_080C4FA8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	strb r0, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	ldr r2, [sp, #0x14]
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	mov r1, sp
	adds r0, r2, #0
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C503E
	mov r0, sp
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r7, #3
	cmp r0, r7
	bge _080C503E
	mov r6, sp
_080C4FE6:
	ldrb r4, [r6]
	ldr r1, [r5, #0x1c]
	lsls r0, r4, #4
	adds r2, r0, r1
	adds r3, r2, #0
	subs r3, #0x10
	ldr r1, [r3, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080C5002
	movs r0, #2
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C5002:
	ldr r1, [r3, #0xc]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq _080C5016
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080C5016:
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _080C502A
	movs r0, #1
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C502A:
	adds r0, r4, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	bhs _080C503E
	ldrb r0, [r6]
	cmp r0, r7
	blt _080C4FE6
_080C503E:
	mov r3, sl
	cmp r3, #0
	bne _080C5046
	b _080C5222
_080C5046:
	movs r6, #0
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080C5054
	strh r6, [r5, #0x12]
	strh r6, [r5, #0x10]
_080C5054:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5064
	movs r2, #0
	str r2, [sp, #0x20]
	str r2, [sp, #0x1c]
_080C5064:
	movs r0, #1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C5070
	strh r6, [r5, #0xa]
_080C5070:
	mov r0, sp
	ldrb r1, [r0, #0x14]
	strb r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	str r0, [sp, #0x38]
	ldrb r3, [r5]
	cmp r1, r3
	blo _080C5086
	b _080C5222
_080C5086:
	mov r8, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x30]
_080C508E:
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	movs r7, #0
	mov r2, sp
	ldrb r3, [r2, #0x14]
	mov r2, r8
	strb r3, [r2, #1]
	ldr r1, [sp, #0x38]
	lsrs r0, r1, #0x18
	adds r2, r6, #1
	str r2, [sp, #0x34]
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C5102
	mov r4, sp
_080C50AE:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	beq _080C50E8
	ldrh r0, [r5, #8]
	ldrb r1, [r4, #1]
	ldr r3, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r2, [r1, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	bl Div
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
_080C50E8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	beq _080C5102
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blo _080C50AE
_080C5102:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5176
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	ldr r7, _080C5144 @ =0x000003FF
	adds r2, r7, #0
	ands r2, r0
	cmp r6, #0
	beq _080C5156
	ldr r1, _080C5148 @ =gSineTable
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r2, r4, r3
	ands r2, r7
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	blt _080C514C
	adds r0, r3, r2
	b _080C5152
	.align 2, 0
_080C5144: .4byte 0x000003FF
_080C5148: .4byte gSineTable
_080C514C:
	subs r0, r3, r4
	ands r0, r7
	subs r0, r3, r0
_080C5152:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C5156:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldrh r6, [r5, #0xa]
	adds r0, r0, r6
	strh r0, [r5, #0xa]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
_080C5176:
	movs r0, #4
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C51C2
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r3, #0xc
	ldrsh r0, [r0, r3]
	mov r6, sb
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r3, r0, #0
	muls r3, r2, r3
	asrs r3, r3, #8
	ldr r0, [sp, #0x30]
	strh r3, [r0]
	mov r1, r8
	ldrb r0, [r1]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #0xe
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r1, [sp, #0x30]
	strh r0, [r1, #2]
	ldrh r0, [r5, #0x10]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r2, [r5, #0x12]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
_080C51C2:
	movs r0, #2
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C5204
	mov r6, r8
	ldrb r1, [r6]
	ldr r0, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x24]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x20]
	adds r2, r2, r3
	str r2, [sp, #0x20]
_080C5204:
	ldr r6, [sp, #0x34]
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	beq _080C5222
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	bhs _080C5222
	b _080C508E
_080C5222:
	movs r0, #2
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C5238
	ldr r6, [sp, #0x1c]
	asrs r0, r6, #8
	strh r0, [r5, #0xc]
	ldr r1, [sp, #0x20]
	asrs r0, r1, #8
	strh r0, [r5, #0xe]
_080C5238:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080C526C
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C526C
	movs r0, #1
	ldr r3, [sp, #0x10]
	ands r0, r3
	cmp r0, #0
	bne _080C526C
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C5266
	adds r0, r2, #0
	bl sa2__sub_80036E0
	b _080C526C
_080C5266:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_080C526C:
	ldr r6, [sp, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	cmp r0, r2
	bge _080C5280
	b _080C4ED8
_080C5280:
	ldr r0, [sp, #0x2c]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C5294
sub_80C5294: @ 0x080C5294
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #7]
	cmp r3, #0
	bne _080C52A2
	ldr r5, [r4, #0x24]
	b _080C52BA
_080C52A2:
	ldrb r2, [r4]
	lsls r0, r2, #4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	muls r0, r2, r0
	adds r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r0, r3, #3
	subs r0, #8
	adds r5, r1, r0
_080C52BA:
	ldr r1, [r4, #0x14]
	ldrh r2, [r5]
	ldrh r0, [r1, #0xc]
	cmp r0, r2
	bne _080C52CC
	ldrb r0, [r1, #0x1a]
	ldrb r3, [r5, #2]
	cmp r0, r3
	beq _080C532C
_080C52CC:
	strh r2, [r1, #0xc]
	ldr r1, [r4, #0x14]
	ldrb r0, [r5, #2]
	strb r0, [r1, #0x1a]
	ldr r3, [r4, #0x20]
	ldr r1, [r3, #4]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080C5308
	ldr r2, [r4, #0x14]
	ldr r0, _080C5300 @ =0x0FFFFFFF
	ands r1, r0
	str r1, [r2]
	ldr r1, [r2, #8]
	ldr r0, _080C5304 @ =0xFFFE7FFF
	ands r1, r0
	str r1, [r2, #8]
	ldr r0, [r3, #4]
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [r2, #8]
	b _080C532A
	.align 2, 0
_080C5300: .4byte 0x0FFFFFFF
_080C5304: .4byte 0xFFFE7FFF
_080C5308:
	cmp r1, #0
	bne _080C5314
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	bl VramFree
_080C5314:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _080C5326
	ldrb r0, [r5, #3]
	bl VramMalloc
	ldr r1, [r4, #0x14]
	str r0, [r1]
	b _080C532A
_080C5326:
	ldr r0, [r4, #0x14]
	str r1, [r0]
_080C532A:
	str r5, [r4, #0x20]
_080C532C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C5334
sub_80C5334: @ 0x080C5334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x14]
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x30]
	adds r2, r1, #0
	ldr r3, [sp, #0xc]
	cmp r2, r3
	blt _080C5362
	b _080C570A
_080C5362:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xe
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldr r5, [r1]
	ldrb r1, [r5, #2]
	str r0, [sp, #0x40]
	cmp r1, #0
	beq _080C5382
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl sub_80C5334
_080C5382:
	ldr r2, [r5, #0x1c]
	movs r1, #0
	mov r3, sp
	ldrh r3, [r3, #0x14]
	strh r3, [r5, #8]
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	subs r0, #0x10
	ldrh r0, [r0, #4]
	mov r8, r2
	ldr r3, [sp, #0x14]
	cmp r3, r0
	bls _080C53A6
	movs r0, #0
	str r0, [sp, #0x14]
	strb r1, [r5, #1]
	b _080C53B2
_080C53A6:
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _080C53B2
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #0x30]
_080C53B2:
	movs r7, #0
	ldrb r0, [r5]
	adds r6, r0, #0
	cmp r7, r6
	bhs _080C542E
	ldr r3, _080C53F8 @ =0x040000D4
	adds r4, r5, #4
_080C53C0:
	ldrh r0, [r2, #4]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _080C5400
	str r2, [r3]
	str r4, [r3, #4]
	ldr r0, _080C53FC @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strb r7, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	muls r0, r7, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C53EE
	b _080C56F6
_080C53EE:
	adds r0, r5, #0
	bl sub_80C5294
	b _080C56F6
	.align 2, 0
_080C53F8: .4byte 0x040000D4
_080C53FC: .4byte 0x84000004
_080C5400:
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bls _080C5420
	cmp r7, #0
	beq _080C542E
	subs r2, #0x10
	str r2, [r3]
	str r4, [r3, #4]
	ldr r0, _080C541C @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r1, [r5, #8]
	b _080C542E
	.align 2, 0
_080C541C: .4byte 0x84000004
_080C5420:
	adds r2, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsls r1, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r0, r1
	blo _080C53C0
_080C542E:
	movs r3, #0
	cmp r3, #0
	beq _080C5436
	b _080C56F6
_080C5436:
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	strb r0, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	mov r1, sp
	adds r0, r2, #0
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C54CC
	mov r0, sp
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r7, #3
	cmp r0, r7
	bge _080C54CC
	mov r6, sp
_080C5474:
	ldrb r4, [r6]
	ldr r1, [r5, #0x1c]
	lsls r0, r4, #4
	adds r2, r0, r1
	adds r3, r2, #0
	subs r3, #0x10
	ldr r1, [r3, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080C5490
	movs r0, #2
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C5490:
	ldr r1, [r3, #0xc]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq _080C54A4
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080C54A4:
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _080C54B8
	movs r0, #1
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C54B8:
	adds r0, r4, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	bhs _080C54CC
	ldrb r0, [r6]
	cmp r0, r7
	blt _080C5474
_080C54CC:
	mov r3, sl
	cmp r3, #0
	bne _080C54D4
	b _080C56AE
_080C54D4:
	movs r7, #0
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080C54E2
	strh r7, [r5, #0x12]
	strh r7, [r5, #0x10]
_080C54E2:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C54F2
	movs r2, #0
	str r2, [sp, #0x24]
	str r2, [sp, #0x20]
_080C54F2:
	movs r0, #1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C54FE
	strh r7, [r5, #0xa]
_080C54FE:
	mov r0, sp
	ldrb r1, [r0, #0x18]
	strb r1, [r0]
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	str r0, [sp, #0x3c]
	ldrb r3, [r5]
	cmp r1, r3
	blo _080C5514
	b _080C56AE
_080C5514:
	mov r8, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x34]
_080C551C:
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	movs r6, #0
	mov r2, sp
	ldrb r3, [r2, #0x18]
	mov r2, r8
	strb r3, [r2, #1]
	ldr r1, [sp, #0x3c]
	lsrs r0, r1, #0x18
	adds r2, r7, #1
	str r2, [sp, #0x38]
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C5590
	mov r4, sp
_080C553C:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	beq _080C5576
	ldrh r0, [r5, #8]
	ldrb r1, [r4, #1]
	ldr r3, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r2, [r1, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	bl Div
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
_080C5576:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	beq _080C5590
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blo _080C553C
_080C5590:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5602
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	ldr r6, _080C55D0 @ =0x000003FF
	adds r2, r6, #0
	ands r2, r0
	cmp r7, #0
	beq _080C55E2
	ldr r1, _080C55D4 @ =gSineTable
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r2, r4, r3
	ands r2, r6
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080C55D8
	adds r0, r3, r2
	b _080C55DE
	.align 2, 0
_080C55D0: .4byte 0x000003FF
_080C55D4: .4byte gSineTable
_080C55D8:
	subs r0, r3, r4
	ands r0, r6
	subs r0, r3, r0
_080C55DE:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C55E2:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x1c]
_080C5602:
	movs r0, #4
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _080C564E
	mov r3, r8
	ldrb r0, [r3]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r0, #0
	muls r3, r2, r3
	asrs r3, r3, #8
	ldr r0, [sp, #0x34]
	strh r3, [r0]
	mov r1, r8
	ldrb r0, [r1]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r2, [sp, #0x34]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x10]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
	ldrh r0, [r2, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
_080C564E:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5690
	mov r2, r8
	ldrb r1, [r2]
	ldr r0, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r3, #8
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x28]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	adds r2, r2, r3
	str r2, [sp, #0x24]
_080C5690:
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	beq _080C56AE
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C56AE
	b _080C551C
_080C56AE:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C56C4
	ldr r2, [sp, #0x20]
	asrs r0, r2, #8
	strh r0, [r5, #0xc]
	ldr r3, [sp, #0x24]
	asrs r0, r3, #8
	strh r0, [r5, #0xe]
_080C56C4:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _080C56F6
	adds r0, r5, #0
	bl sub_80C5294
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080C56F6
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	orrs r0, r1
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C56F6
	movs r0, #1
	ldr r3, [sp, #0x10]
	ands r0, r3
	cmp r0, #0
	bne _080C56F6
	adds r0, r2, #0
	ldr r1, [sp, #0x14]
	bl sub_80BF540
_080C56F6:
	ldr r1, [sp, #0x40]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xc]
	cmp r0, r3
	bge _080C570A
	b _080C5362
_080C570A:
	ldr r0, [sp, #0x30]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C571C
sub_80C571C: @ 0x080C571C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	mov sl, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #8]
	adds r2, r1, #0
	ldr r3, [sp, #4]
	cmp r2, r3
	blt _080C5744
	b _080C59D6
_080C5744:
	lsls r4, r1, #0x10
	asrs r0, r4, #0xe
	ldr r2, [sp]
	adds r0, r0, r2
	ldr r5, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sl
	bl sub_80C571C
	ldr r2, [r5, #0x1c]
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	subs r0, #0x10
	ldrh r0, [r0, #4]
	str r4, [sp, #0xc]
	cmp r6, r0
	bls _080C5780
	movs r6, #0
	strb r1, [r5, #1]
	b _080C578A
_080C5780:
	cmp r6, r0
	bne _080C578A
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #8]
_080C578A:
	ldrb r0, [r5, #1]
	lsls r1, r0, #4
	adds r2, r2, r1
	adds r4, r0, #0
	ldrb r0, [r5]
	mov ip, r0
	cmp r4, ip
	bhs _080C5808
	ldr r3, _080C57D4 @ =0x040000D4
	adds r7, r5, #4
_080C579E:
	ldrh r0, [r2, #4]
	cmp r0, r6
	bne _080C57DC
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C57D8 @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strb r4, [r5, #1]
	ldrb r0, [r5]
	lsls r0, r0, #4
	ldr r1, [r5, #0x1c]
	adds r1, r1, r0
	ldrb r0, [r5, #3]
	muls r0, r4, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C57CC
	b _080C59C2
_080C57CC:
	adds r0, r5, #0
	bl sub_80C5294
	b _080C59C2
	.align 2, 0
_080C57D4: .4byte 0x040000D4
_080C57D8: .4byte 0x84000004
_080C57DC:
	cmp r0, r6
	bls _080C57F8
	cmp r4, #0
	beq _080C5808
	subs r2, #0x10
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C57F4 @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r6, [r5, #8]
	b _080C5808
	.align 2, 0
_080C57F4: .4byte 0x84000004
_080C57F8:
	adds r2, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x18
	mov r4, ip
	lsls r1, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r0, r1
	blo _080C579E
_080C5808:
	movs r0, #0
	cmp r0, #0
	beq _080C5810
	b _080C59C2
_080C5810:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	strb r2, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	ldr r6, [r5, #0x1c]
	adds r1, r6, r1
	ldrb r0, [r5, #3]
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	lsls r0, r4, #4
	adds r3, r0, r6
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r3
	mov ip, r1
	ldr r1, [r1, #8]
	ldr r0, [r3, #8]
	cmp r1, r0
	beq _080C5848
	movs r0, #2
	mov r4, sb
	orrs r4, r0
	mov sb, r4
_080C5848:
	mov r0, ip
	ldr r1, [r0, #0xc]
	ldr r0, [r3, #0xc]
	cmp r1, r0
	beq _080C585E
	movs r0, #4
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080C585E:
	mov r4, ip
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r4, #6
	ldrsh r0, [r3, r4]
	cmp r1, r0
	beq _080C5874
	movs r0, #1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080C5874:
	mov r3, sb
	cmp r3, #0
	bne _080C587C
	b _080C5988
_080C587C:
	ldrh r0, [r5, #8]
	lsls r7, r2, #4
	adds r1, r7, r6
	ldrh r2, [r1, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldrh r1, [r1, #0x14]
	subs r1, r1, r2
	lsls r1, r1, #8
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r0, #4
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _080C58DA
	ldr r2, [r5, #0x1c]
	adds r2, r7, r2
	adds r3, r2, #0
	adds r3, #0x10
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	movs r4, #0xc
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldrh r4, [r2, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0x10]
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldrh r2, [r2, #0xe]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
_080C58DA:
	movs r0, #2
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080C591C
	ldr r2, [r5, #0x1c]
	adds r2, r7, r2
	adds r3, r2, #0
	adds r3, #0x10
	movs r4, #8
	ldrsh r0, [r3, r4]
	movs r4, #8
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldrh r4, [r2, #8]
	adds r0, r0, r4
	strh r0, [r5, #0xc]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	movs r3, #0xa
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldrh r2, [r2, #0xa]
	adds r0, r0, r2
	strh r0, [r5, #0xe]
_080C591C:
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080C5988
	ldr r0, [r5, #0x1c]
	adds r0, r7, r0
	ldrh r1, [r0, #6]
	ldr r2, _080C595C @ =0x000003FF
	mov r8, r2
	mov r7, r8
	adds r6, r7, #0
	ands r6, r1
	ldrh r0, [r0, #0x16]
	ldr r1, _080C5960 @ =gSineTable
	adds r3, r7, #0
	ands r3, r0
	adds r4, r6, #0
	subs r2, r3, r4
	adds r0, r2, #0
	ands r0, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080C5964
	mov r3, r8
	ands r2, r3
	adds r0, r4, r2
	b _080C596E
	.align 2, 0
_080C595C: .4byte 0x000003FF
_080C5960: .4byte gSineTable
_080C5964:
	subs r0, r4, r3
	ands r0, r7
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080C596E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r0, r0, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r2, _080C59B8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r5, #0xa]
_080C5988:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080C59C2
	ldr r0, [r5, #4]
	mov r3, sl
	orrs r0, r3
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C59C2
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _080C59C2
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C59BC
	adds r0, r2, #0
	bl sa2__sub_80036E0
	b _080C59C2
	.align 2, 0
_080C59B8: .4byte 0x000003FF
_080C59BC:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_080C59C2:
	ldr r4, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, r2
	bge _080C59D6
	b _080C5744
_080C59D6:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C59E8
sub_80C59E8: @ 0x080C59E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	mov sb, r3
	ldr r0, [sp, #0x54]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #8
	ldr r2, _080C5A88 @ =0xFFFF0000
	adds r1, r1, r2
	lsrs r7, r1, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	bge _080C5A12
	b _080C5D42
_080C5A12:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x28]
	lsls r3, r0, #1
	str r3, [sp, #0x2c]
	add r4, sp, #4
	mov sl, r4
_080C5A20:
	asrs r0, r1, #0xe
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _080C5A8C @ =0x040000D4
	adds r0, r5, #0
	adds r0, #0x10
	str r0, [r1]
	add r2, sp, #4
	str r2, [r1, #4]
	ldr r0, _080C5A90 @ =0x84000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _080C5A98
	ldr r2, _080C5A94 @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r3, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r4, #0xc
	ldrsh r0, [r5, r4]
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	ldr r0, [sp, #0x2c]
	adds r2, r0, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	muls r0, r2, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	str r1, [sp, #0x18]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	muls r0, r3, r0
	asrs r0, r0, #6
	adds r1, r1, r0
	add r0, sp, #0x18
	str r1, [r0, #4]
	b _080C5AAA
	.align 2, 0
_080C5A88: .4byte 0xFFFF0000
_080C5A8C: .4byte 0x040000D4
_080C5A90: .4byte 0x84000001
_080C5A94: .4byte gSineTable
_080C5A98:
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [sp, #0x18]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	lsls r0, r0, #8
	add r1, sp, #0x18
	str r0, [r1, #4]
_080C5AAA:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	bne _080C5AD2
	movs r4, #2
	ldrsh r0, [r1, r4]
	lsls r1, r7, #0x10
	str r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r4, [r2]
	ldr r6, [r2, #4]
	add r3, sp, #0x14
	mov r8, r3
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _080C5B1E
_080C5AD2:
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x18]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x18]
	movs r4, #2
	ldrsh r1, [r2, r4]
	ldr r0, [sp, #0x1c]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x1c]
	movs r3, #0
	lsls r0, r7, #0x10
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	ldr r4, [r1]
	ldr r6, [r1, #4]
	add r2, sp, #0x14
	mov r8, r2
_080C5AFC:
	lsls r0, r3, #1
	mov r2, sp
	adds r2, r2, r0
	adds r2, #4
	add r0, sb
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080C5AFC
_080C5B1E:
	ldr r0, [sp, #0x18]
	adds r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	adds r0, r6, r0
	str r0, [sp, #0x1c]
	ldrh r0, [r5, #0xa]
	ldr r1, [sp, #0x28]
	adds r2, r1, r0
	ldr r3, _080C5C6C @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	mov r4, r8
	strh r2, [r4]
	movs r7, #0
	ldrsh r0, [r4, r7]
	strh r0, [r5, #0x2c]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080C5B56
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	str r2, [sp]
	add r2, sp, #0x18
	add r3, sp, #4
	bl sub_80C59E8
_080C5B56:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080C5B5E
	b _080C5D32
_080C5B5E:
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C5B6A
	b _080C5D32
_080C5B6A:
	ldr r6, [r5, #0x18]
	ldr r0, [r6]
	ands r0, r1
	ldr r1, [r4, #8]
	cmp r0, #0
	beq _080C5B82
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080C5B82
	b _080C5D32
_080C5B82:
	ldr r2, _080C5C70 @ =0xFFFFCFFF
	ands r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	ldr r0, [r6]
	ands r0, r3
	lsrs r0, r0, #0x16
	adds r1, r1, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080C5C74 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	ldr r0, [r6]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080C5BC2
	b _080C5CD2
_080C5BC2:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080C5BFE
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r0, r7
	bne _080C5BFE
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, r7
	bne _080C5BFE
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080C5CD2
	ldr r0, _080C5C78 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080C5CD2
_080C5BFE:
	ldr r3, [r5, #0x14]
	ldr r1, [r3, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #8]
	ldr r4, _080C5C7C @ =gUnknown_03002C24
	ldrb r2, [r4]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r3, #8]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _080C5C38
	mov r7, sl
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r1, r2
	bne _080C5C38
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _080C5C3E
_080C5C38:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080C5C3E:
	add r0, sp, #8
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	mov r4, sl
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r3, #0x80
	lsls r3, r3, #0x11
	asrs r2, r3, #0x10
	adds r3, r0, #0
	cmp r1, r2
	bgt _080C5C62
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble _080C5C80
_080C5C62:
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x40
	orrs r1, r2
	b _080C5C8A
	.align 2, 0
_080C5C6C: .4byte 0x000003FF
_080C5C70: .4byte 0xFFFFCFFF
_080C5C74: .4byte 0x003FE000
_080C5C78: .4byte gDispCnt
_080C5C7C: .4byte gUnknown_03002C24
_080C5C80:
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
_080C5C8A:
	str r1, [r0, #8]
	mov r4, sl
	ldrh r0, [r4]
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x18]
	asrs r0, r0, #8
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080C5CC8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080C5CC4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _080C5D16
	.align 2, 0
_080C5CC4: .4byte gEmptyTask
_080C5CC8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl sub_80BF8F4
	b _080C5D16
_080C5CD2:
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r3, [r5, #0x14]
	ldr r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5D00
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_080C5D00:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5D16
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_080C5D16:
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C5D2C
	adds r0, r2, #0
	bl sub_80BE46C
	b _080C5D32
_080C5D2C:
	adds r0, r2, #0
	bl DisplaySprite
_080C5D32:
	ldr r7, [sp, #0x30]
	ldr r1, _080C5D54 @ =0xFFFF0000
	adds r0, r7, r1
	lsrs r7, r0, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	blt _080C5D42
	b _080C5A20
_080C5D42:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5D54: .4byte 0xFFFF0000

	thumb_func_start sub_80C5D58
sub_80C5D58: @ 0x080C5D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov sb, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	ldr r0, _080C5E54 @ =0xFFFF0000
	adds r1, r1, r0
	lsrs r7, r1, #0x10
	lsls r0, r7, #0x10
	cmp r0, #0
	bge _080C5D7A
	b _080C5E88
_080C5D7A:
	mov r8, sp
_080C5D7C:
	asrs r0, r0, #0xe
	add r0, sl
	ldr r6, [r0]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	lsls r1, r1, #8
	ldr r0, [r2, #4]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #4]
	ldr r2, [r6, #0x14]
	cmp r2, #0
	beq _080C5E66
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C5E66
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080C5DC4
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C5E66
_080C5DC4:
	ldr r0, [sp]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r1, [r6, #0x14]
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r4, [r6, #0x14]
	ldr r2, [r4, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	ldr r0, _080C5E58 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r1, [r6, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	ldr r5, [r6, #0x18]
	ldr r0, [r5]
	ands r0, r3
	lsrs r0, r0, #0x16
	adds r1, r1, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r6, #4]
	ldr r2, _080C5E5C @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	ldr r0, [r5]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5E28
	ldr r0, [r6, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0, #8]
_080C5E28:
	ldr r1, [r6, #4]
	movs r0, #2
	ands r1, r0
	ldr r2, [r6, #0x14]
	cmp r1, #0
	beq _080C5E3E
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080C5E3E:
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C5E60
	adds r0, r2, #0
	bl sub_80BE46C
	b _080C5E66
	.align 2, 0
_080C5E54: .4byte 0xFFFF0000
_080C5E58: .4byte 0xFFFFCFFF
_080C5E5C: .4byte 0x003FE000
_080C5E60:
	adds r0, r2, #0
	bl DisplaySprite
_080C5E66:
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _080C5E78
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r1, [r6, #2]
	mov r2, sp
	bl sub_80C5D58
_080C5E78:
	lsls r0, r7, #0x10
	ldr r1, _080C5E98 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	lsls r0, r7, #0x10
	cmp r0, #0
	blt _080C5E88
	b _080C5D7C
_080C5E88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5E98: .4byte 0xFFFF0000

	thumb_func_start sub_80C5E9C
sub_80C5E9C: @ 0x080C5E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #8]
	adds r7, r3, #0
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #0
	ldr r4, [sp, #0xc]
	cmp r1, r4
	bge _080C5FB8
	ldr r5, [sp, #0x10]
	lsls r5, r5, #3
	mov r8, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_080C5EE2:
	lsls r2, r2, #0x10
	asrs r0, r2, #0xe
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r3, [r6, #0x14]
	adds r0, r3, #0
	adds r0, #0x20
	add r0, r8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r2
	cmp r1, r0
	beq _080C5F84
	movs r4, #0
	ldrsb r4, [r7, r4]
	ldr r5, [sp, #0x18]
	adds r2, r5, r4
	movs r0, #0x10
	ldrsh r1, [r3, r0]
	add r3, r8
	adds r0, r3, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	cmp r2, r1
	bgt _080C5F2C
	movs r0, #2
	ldrsb r0, [r7, r0]
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _080C5F3E
	cmp r2, r1
	blt _080C5F84
_080C5F2C:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _080C5F84
_080C5F3E:
	movs r3, #1
	ldrsb r3, [r7, r3]
	mov r1, sl
	adds r2, r1, r3
	ldr r0, [r6, #0x14]
	movs r4, #0x12
	ldrsh r1, [r0, r4]
	mov r5, r8
	adds r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x25
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	cmp r2, r1
	bgt _080C5F6E
	movs r0, #3
	ldrsb r0, [r7, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080C5F80
	cmp r2, r1
	blt _080C5F84
_080C5F6E:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _080C5F84
_080C5F80:
	movs r0, #1
	str r0, [sp, #0x14]
_080C5F84:
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _080C5FA8
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r1, [r6, #2]
	ldr r2, [sp, #0x18]
	str r2, [sp]
	mov r4, sl
	str r4, [sp, #4]
	ldr r2, [sp, #0x10]
	adds r3, r7, #0
	bl sub_80C5E9C
	cmp r0, #0
	beq _080C5FA8
	movs r5, #1
	str r5, [sp, #0x14]
_080C5FA8:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _080C5EE2
_080C5FB8:
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C5FCC
sub_80C5FCC: @ 0x080C5FCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	mov sb, r0
	movs r2, #0
	cmp sb, r8
	bge _080C609C
	ldr r1, [sp, #0xc]
	lsls r6, r1, #3
	lsls r3, r3, #0x10
	mov sl, r3
_080C6004:
	lsls r2, r2, #0x10
	asrs r0, r2, #0xe
	ldr r3, [sp, #4]
	adds r0, r0, r3
	ldr r4, [r0]
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r0, r6
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r2, #0
	cmp r1, r0
	beq _080C6068
	adds r2, r3, r6
	adds r0, r2, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bgt _080C6068
	adds r0, r2, #0
	adds r0, #0x26
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	cmp r1, r0
	blt _080C6068
	adds r0, r2, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #0x12
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bgt _080C6068
	adds r0, r2, #0
	adds r0, #0x27
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0x12
	ldrsh r0, [r3, r2]
	cmp r1, r0
	blt _080C6068
	movs r3, #1
	mov sb, r3
_080C6068:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080C608E
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r4, #2]
	ldr r4, [sp, #8]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	ldr r2, [sp, #0xc]
	mov r7, sl
	asrs r3, r7, #0x10
	bl sub_80C5FCC
	cmp r0, #0
	beq _080C608E
	movs r0, #1
	mov sb, r0
_080C608E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	blt _080C6004
_080C609C:
	mov r0, sb
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C60B0
sub_80C60B0: @ 0x080C60B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r1, #0
	cmp r1, r6
	bge _080C6104
_080C60BE:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xe
	adds r1, r1, r7
	ldr r4, [r1]
	ldrb r1, [r4, #2]
	adds r5, r0, #0
	cmp r1, #0
	beq _080C60D6
	adds r0, r4, #0
	adds r0, #0x30
	bl sub_80C60B0
_080C60D6:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _080C60F0
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080C60EA
	ldr r0, [r1]
	bl VramFree
_080C60EA:
	ldr r0, [r4, #0x14]
	bl IwramFree
_080C60F0:
	adds r0, r4, #0
	bl IwramFree
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _080C60BE
_080C6104:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C610C
sub_80C610C: @ 0x080C610C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r1, #0
	cmp r1, r6
	bge _080C6162
_080C611A:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xe
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r2, [r4, #0x14]
	adds r5, r1, #0
	cmp r2, #0
	beq _080C6144
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C613E
	adds r0, r2, #0
	bl sa2__sub_80036E0
	b _080C6144
_080C613E:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_080C6144:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080C6154
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r4, #2]
	bl sub_80C610C
_080C6154:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _080C611A
_080C6162:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C6168
sub_80C6168: @ 0x080C6168
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _080C61A4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080C61A8 @ =gMultiSioSend
	str r1, [r0, #4]
	ldr r1, _080C61AC @ =0x85000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _080C61B0 @ =gMultiSioRecv
	str r1, [r0, #4]
	ldr r1, _080C61B4 @ =0x85000018
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _080C61B8 @ =gMultiSioStatusFlags
	str r2, [r0]
	ldr r0, _080C61BC @ =gUnknown_03002C68
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080C61A4: .4byte 0x040000D4
_080C61A8: .4byte gMultiSioSend
_080C61AC: .4byte 0x85000006
_080C61B0: .4byte gMultiSioRecv
_080C61B4: .4byte 0x85000018
_080C61B8: .4byte gMultiSioStatusFlags
_080C61BC: .4byte gUnknown_03002C68

	thumb_func_start sub_80C61C0
sub_80C61C0: @ 0x080C61C0
	push {r4, lr}
	ldr r0, _080C6200 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080C61F4
	ldr r3, _080C6204 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080C6208 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C620C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _080C6210 @ =gIntrTable
	ldr r0, _080C6214 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl MultiSioInit
_080C61F4:
	ldr r1, _080C6218 @ =gUnknown_03002C68
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6200: .4byte gFlags
_080C6204: .4byte 0x04000208
_080C6208: .4byte 0x04000200
_080C620C: .4byte 0x0000FFBF
_080C6210: .4byte gIntrTable
_080C6214: .4byte gMultiSioIntrFuncBuf
_080C6218: .4byte gUnknown_03002C68

	thumb_func_start sub_80C621C
sub_80C621C: @ 0x080C621C
	push {r4, lr}
	ldr r1, _080C6250 @ =gUnknown_03002C68
	movs r0, #0
	strb r0, [r1]
	ldr r4, _080C6254 @ =gFlags
	ldr r0, [r4]
	ldr r1, _080C6258 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080C6248
	bl sub_80C68E0
_080C6248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6250: .4byte gUnknown_03002C68
_080C6254: .4byte gFlags
_080C6258: .4byte 0xFFFEFFFF

	thumb_func_start sub_80C625C
sub_80C625C: @ 0x080C625C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r6, _080C62EC @ =0x04000208
	movs r3, #0
	strh r3, [r6]
	ldr r2, _080C62F0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C62F4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r6]
	ldr r0, _080C62F8 @ =0x04000134
	strh r3, [r0]
	ldr r4, _080C62FC @ =0x04000128
	ldr r1, _080C6300 @ =0x00001008
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _080C6304 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	strh r3, [r6]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	mov r0, r8
	strh r0, [r6]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, _080C6308 @ =gUnknown_03006C20
	strb r3, [r0]
	movs r5, #0
	str r5, [sp]
	ldr r1, _080C630C @ =0x03000428
	ldr r2, _080C6310 @ =0x05000003
	mov r0, sp
	bl CpuSet
	strh r5, [r6]
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	mov r1, r8
	strh r1, [r6]
	ldr r1, _080C6314 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc1
	strh r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C62EC: .4byte 0x04000208
_080C62F0: .4byte 0x04000200
_080C62F4: .4byte 0x0000FF3F
_080C62F8: .4byte 0x04000134
_080C62FC: .4byte 0x04000128
_080C6300: .4byte 0x00001008
_080C6304: .4byte 0x04000202
_080C6308: .4byte gUnknown_03006C20
_080C630C: .4byte 0x03000428
_080C6310: .4byte 0x05000003
_080C6314: .4byte 0x0400010C

	thumb_func_start sub_80C6318
sub_80C6318: @ 0x080C6318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _080C6350 @ =0x03000438
	ldr r0, _080C6354 @ =0x04000120
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080C6358 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080C635C @ =gUnknown_03006C20
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #5
	bls _080C6344
	b _080C6500
_080C6344:
	lsls r0, r1, #2
	ldr r1, _080C6360 @ =_080C6364
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6350: .4byte 0x03000438
_080C6354: .4byte 0x04000120
_080C6358: .4byte 0x0400010E
_080C635C: .4byte gUnknown_03006C20
_080C6360: .4byte _080C6364
_080C6364: @ jump table
	.4byte _080C637C @ case 0
	.4byte _080C6440 @ case 1
	.4byte _080C6480 @ case 2
	.4byte _080C64C0 @ case 3
	.4byte _080C6500 @ case 4
	.4byte _080C6500 @ case 5
_080C637C:
	ldr r0, _080C63D0 @ =0x04000120
	mov r8, r0
	ldr r6, [r0]
	ldr r3, _080C63D4 @ =0x03000428
	ldrb r1, [r3]
	lsls r2, r1, #4
	adds r0, r6, #0
	lsls r0, r2
	lsrs r0, r0, #0x10
	movs r2, #1
	mov ip, r2
	subs r1, r2, r1
	lsls r1, r1, #4
	lsls r6, r1
	adds r1, r6, #0
	lsrs r6, r1, #0x10
	ldrh r5, [r3, #0xa]
	adds r4, r3, #0
	cmp r5, #0
	bne _080C6404
	ldrh r2, [r4, #6]
	adds r1, r0, #0
	cmp r1, r2
	bne _080C6402
	ldrh r3, [r4, #2]
	cmp r3, #3
	bhi _080C63D8
	ldrh r0, [r4, #4]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _080C6404
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r6, r0
	bne _080C6404
	adds r0, r3, #1
	strh r0, [r4, #2]
	b _080C6404
	.align 2, 0
_080C63D0: .4byte 0x04000120
_080C63D4: .4byte 0x03000428
_080C63D8:
	strh r6, [r4, #0xa]
	ldr r0, _080C63F8 @ =0x00008002
	cmp r6, r0
	bne _080C6400
	mov r0, ip
	strb r0, [r7]
	movs r0, #1
	bl sub_80C65F0
	ldr r1, _080C63FC @ =0x03000434
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r5, [r4, #2]
	b _080C6524
	.align 2, 0
_080C63F8: .4byte 0x00008002
_080C63FC: .4byte 0x03000434
_080C6400:
	strh r5, [r4, #0xa]
_080C6402:
	strh r5, [r4, #2]
_080C6404:
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _080C6418
	lsls r0, r0, #1
	ldr r1, _080C6414 @ =gUnknown_082B533C
	adds r0, r0, r1
	ldrh r0, [r0]
	b _080C641C
	.align 2, 0
_080C6414: .4byte gUnknown_082B533C
_080C6418:
	movs r0, #0x80
	lsls r0, r0, #8
_080C641C:
	strh r0, [r4, #4]
	mvns r0, r6
	strh r0, [r4, #6]
	ldr r3, _080C643C @ =0x04000120
	ldrh r2, [r4, #4]
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	lsls r0, r0, #4
	lsls r2, r0
	ldrh r0, [r4, #6]
	lsls r1, r1, #4
	lsls r0, r1
	adds r2, r2, r0
	str r2, [r3]
	b _080C6524
	.align 2, 0
_080C643C: .4byte 0x04000120
_080C6440:
	ldr r5, _080C6464 @ =gUnknown_03006C20
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C6470
	ldr r1, _080C6468 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp]
	ldr r2, _080C646C @ =0x05000003
	mov r0, sp
	bl CpuSet
	strb r4, [r5]
	b _080C6474
	.align 2, 0
_080C6464: .4byte gUnknown_03006C20
_080C6468: .4byte 0x03000428
_080C646C: .4byte 0x05000003
_080C6470:
	movs r0, #2
	strb r0, [r5]
_080C6474:
	ldr r0, _080C647C @ =gUnknown_03006C20
	ldrb r0, [r0]
	b _080C64E2
	.align 2, 0
_080C647C: .4byte gUnknown_03006C20
_080C6480:
	ldr r5, _080C64A4 @ =gUnknown_03006C20
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C64B0
	ldr r1, _080C64A8 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _080C64AC @ =0x05000003
	bl CpuSet
	strb r4, [r5]
	b _080C64B4
	.align 2, 0
_080C64A4: .4byte gUnknown_03006C20
_080C64A8: .4byte 0x03000428
_080C64AC: .4byte 0x05000003
_080C64B0:
	movs r0, #3
	strb r0, [r5]
_080C64B4:
	ldr r0, _080C64BC @ =gUnknown_03006C20
	ldrb r0, [r0]
	b _080C64E2
	.align 2, 0
_080C64BC: .4byte gUnknown_03006C20
_080C64C0:
	adds r5, r7, #0
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C64E0
	ldr r1, _080C64F0 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r2, _080C64F4 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
_080C64E0:
	ldrb r0, [r7]
_080C64E2:
	bl sub_80C65F0
	ldr r1, _080C64F8 @ =0x03000434
	str r0, [r1]
	ldr r1, _080C64FC @ =0x04000120
	str r0, [r1]
	b _080C6524
	.align 2, 0
_080C64F0: .4byte 0x03000428
_080C64F4: .4byte 0x05000003
_080C64F8: .4byte 0x03000434
_080C64FC: .4byte 0x04000120
_080C6500:
	ldr r3, _080C6518 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080C651C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C6520 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	b _080C6534
	.align 2, 0
_080C6518: .4byte 0x04000208
_080C651C: .4byte 0x04000200
_080C6520: .4byte 0x0000FF7F
_080C6524:
	ldr r2, _080C6540 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C6544 @ =0x0400010E
	movs r0, #0xc1
	strh r0, [r1]
_080C6534:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6540: .4byte 0x04000128
_080C6544: .4byte 0x0400010E

	thumb_func_start sub_80C6548
sub_80C6548: @ 0x080C6548
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _080C656C @ =0x03000438
	ldr r0, [r6]
	lsrs r5, r0, #0x1c
	bl sub_80C65B4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C6586
	cmp r4, #2
	beq _080C6590
	cmp r4, #2
	bgt _080C6570
	cmp r4, #1
	beq _080C6576
	b _080C6586
	.align 2, 0
_080C656C: .4byte 0x03000438
_080C6570:
	cmp r4, #3
	beq _080C65A8
	b _080C6586
_080C6576:
	ldr r1, _080C658C @ =0x0300043C
	ldr r0, [r6]
	lsls r0, r0, #4
	lsrs r0, r0, #8
	ands r0, r4
	str r0, [r1]
	cmp r5, #1
	beq _080C65AC
_080C6586:
	movs r0, #1
	b _080C65AE
	.align 2, 0
_080C658C: .4byte 0x0300043C
_080C6590:
	cmp r5, #2
	bne _080C6586
	ldr r0, _080C65A4 @ =0x0300043C
	ldr r1, [r6]
	lsls r1, r1, #4
	lsrs r1, r1, #8
	ldr r0, [r0]
	cmp r0, r1
	beq _080C65AC
	b _080C6586
	.align 2, 0
_080C65A4: .4byte 0x0300043C
_080C65A8:
	cmp r5, #3
	bne _080C6586
_080C65AC:
	movs r0, #0
_080C65AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80C65B4
sub_80C65B4: @ 0x080C65B4
	push {r4, r5, r6, lr}
	ldr r0, _080C65E4 @ =0x03000438
	ldr r0, [r0]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	lsrs r3, r4, #0x18
	movs r0, #6
	movs r6, #0xf
_080C65C6:
	subs r0, #1
	lsls r2, r0, #2
	adds r1, r4, #0
	lsrs r1, r2
	ands r1, r6
	eors r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080C65C6
	cmp r3, r5
	beq _080C65E8
	movs r0, #1
	b _080C65EA
	.align 2, 0
_080C65E4: .4byte 0x03000438
_080C65E8:
	movs r0, #0
_080C65EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80C65F0
sub_80C65F0: @ 0x080C65F0
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

@ Timer3Intr(?)
	thumb_func_start sub_80C66DC
sub_80C66DC: @ 0x080C66DC
	push {r4, r5, lr}
	ldr r3, _080C671C @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080C6720 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C6724 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r5, #1
	strh r5, [r3]
	strh r4, [r3]
	subs r2, #0xd8
	ldrh r1, [r2]
	ldr r0, _080C6728 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	strh r5, [r3]
	ldr r0, _080C672C @ =0x0400010E
	strh r4, [r0]
	ldr r1, _080C6730 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080C6734 @ =gUnknown_03006C20
	movs r0, #5
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C671C: .4byte 0x04000208
_080C6720: .4byte 0x04000200
_080C6724: .4byte 0x0000FFBF
_080C6728: .4byte 0x0000FF7F
_080C672C: .4byte 0x0400010E
_080C6730: .4byte 0x0400010C
_080C6734: .4byte gUnknown_03006C20

	thumb_func_start sub_80C6738
sub_80C6738: @ 0x080C6738
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r5, #0
	movs r4, #0x20
	ldr r1, _080C67B0 @ =0x040000D4
	ldr r0, _080C67B4 @ =gUnknown_082B5544
	str r0, [r1]
	ldr r0, _080C67B8 @ =0x06008000
	str r0, [r1, #4]
	ldr r0, _080C67BC @ =0x80002000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080C67C0 @ =gUnknown_082B5344
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080C67C4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080C67C8 @ =gUnknown_082B9544
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080C67CC @ =0x80000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xcc
	movs r0, #0x88
	strh r0, [r1]
	subs r1, #8
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0x81
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _080C67D0 @ =0x04000010
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r6, r1, #0
_080C679E:
	bl GetInput
	cmp r5, #1
	beq _080C67EC
	cmp r5, #1
	bgt _080C67D4
	cmp r5, #0
	beq _080C67DA
	b _080C6808
	.align 2, 0
_080C67B0: .4byte 0x040000D4
_080C67B4: .4byte gUnknown_082B5544
_080C67B8: .4byte 0x06008000
_080C67BC: .4byte 0x80002000
_080C67C0: .4byte gUnknown_082B5344
_080C67C4: .4byte 0x80000100
_080C67C8: .4byte gUnknown_082B9544
_080C67CC: .4byte 0x80000280
_080C67D0: .4byte 0x04000010
_080C67D4:
	cmp r5, #2
	beq _080C67FE
	b _080C6808
_080C67DA:
	lsrs r0, r4, #1
	strh r0, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080C6808
	movs r5, #1
	b _080C6808
_080C67EC:
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	movs r1, #1
	add r8, r1
	cmp r0, #0x77
	bgt _080C6808
	movs r5, #2
	b _080C6808
_080C67FE:
	lsrs r0, r4, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C6808:
	ldr r0, _080C682C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0xf0
	bne _080C681E
	lsls r0, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r7, r0, #0x18
_080C681E:
	cmp r4, #0x20
	bne _080C6826
	cmp r5, #2
	beq _080C6830
_080C6826:
	bl VBlankIntrWait
	b _080C679E
	.align 2, 0
_080C682C: .4byte gPressedKeys
_080C6830:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _080C6848
	ldr r0, _080C6854 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r0]
	bl sub_80C68E0
_080C6848:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6854: .4byte gFlags

	thumb_func_start sub_80C6858
sub_80C6858: @ 0x080C6858
	push {r4, r5, r6, r7, lr}
	ldr r7, _080C688C @ =gUnknown_03002BF0
	ldr r4, [r7]
	cmp r4, #0
	beq _080C68D8
	ldrb r0, [r4]
	lsrs r3, r0, #6
	cmp r3, #3
	beq _080C68BC
	ldr r6, _080C6890 @ =gUnknown_03002C60
	ldrb r5, [r6]
	cmp r5, #0
	bne _080C6898
	ldr r2, _080C6894 @ =gUnknown_0300620C
	lsls r0, r3, #2
	orrs r0, r3
	lsls r1, r3, #4
	orrs r0, r1
	lsls r1, r3, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r6]
	b _080C68D8
	.align 2, 0
_080C688C: .4byte gUnknown_03002BF0
_080C6890: .4byte gUnknown_03002C60
_080C6894: .4byte gUnknown_0300620C
_080C6898:
	ldr r2, _080C68B8 @ =gUnknown_0300620C
	lsls r0, r3, #2
	orrs r0, r3
	lsls r1, r3, #4
	orrs r0, r1
	lsls r1, r3, #6
	orrs r0, r1
	strb r0, [r2]
	subs r0, r5, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C68D8
	adds r0, r4, #1
	b _080C68D6
	.align 2, 0
_080C68B8: .4byte gUnknown_0300620C
_080C68BC:
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080C68D4
	str r1, [r7]
	ldr r0, _080C68D0 @ =gUnknown_0300620C
	strb r1, [r0]
	movs r0, #0
	b _080C68DA
	.align 2, 0
_080C68D0: .4byte gUnknown_0300620C
_080C68D4:
	subs r0, r4, r1
_080C68D6:
	str r0, [r7]
_080C68D8:
	movs r0, #1
_080C68DA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C68E0
sub_80C68E0: @ 0x080C68E0
	push {lr}
	ldr r2, _080C68FC @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080C6900 @ =gIntrTable
	ldr r0, _080C6904 @ =sub_80C6318
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_80C625C
	pop {r0}
	bx r0
	.align 2, 0
_080C68FC: .4byte 0x04000208
_080C6900: .4byte gIntrTable
_080C6904: .4byte sub_80C6318

	thumb_func_start sub_80C6908
sub_80C6908: @ 0x080C6908
	push {lr}
	ldr r0, _080C6944 @ =gUnknown_03006C20
	ldrb r0, [r0]
	cmp r0, #0
	blt _080C692E
	cmp r0, #4
	ble _080C692E
	cmp r0, #5
	bne _080C692E
	ldr r2, _080C6948 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080C694C @ =gIntrTable
	ldr r0, _080C6950 @ =sub_80C6318
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_80C625C
_080C692E:
	ldr r0, _080C6954 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C695C
	ldr r1, _080C6958 @ =gUnknown_0300620C
	movs r0, #0x55
	strb r0, [r1]
	b _080C6960
	.align 2, 0
_080C6944: .4byte gUnknown_03006C20
_080C6948: .4byte 0x04000208
_080C694C: .4byte gIntrTable
_080C6950: .4byte sub_80C6318
_080C6954: .4byte gFlags
_080C6958: .4byte gUnknown_0300620C
_080C695C:
	bl sub_80C6858
_080C6960:
	pop {r0}
	bx r0

.if 0
.endif
