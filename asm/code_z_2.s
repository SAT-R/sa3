.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif
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
