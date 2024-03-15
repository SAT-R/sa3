.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable102
CreateEntity_Interactable102: @ 0x080425F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08042690 @ =sub_80426A4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08042694 @ =sub_8042ADC
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r1, r8
	str r1, [r2]
	ldrb r1, [r1]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r2, #0x3c]
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r2, #0x40]
	str r3, [r2, #0x44]
	ldr r7, _08042698 @ =0x03000048
	adds r1, r0, r7
	strh r3, [r1]
	ldr r4, _0804269C @ =0x0300004A
	adds r1, r0, r4
	strh r3, [r1]
	ldr r6, _080426A0 @ =0x0300000C
	adds r0, r0, r6
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	mov r2, r8
	strb r1, [r2]
	bl sub_8042AF0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042690: .4byte sub_80426A4
_08042694: .4byte sub_8042ADC
_08042698: .4byte 0x03000048
_0804269C: .4byte 0x0300004A
_080426A0: .4byte 0x0300000C

	thumb_func_start sub_80426A4
sub_80426A4: @ 0x080426A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08042700 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0xc
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r6, #0x3c]
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x40]
	mov sl, r2
	bl sub_8042930
	ldr r0, [r6, #0x3c]
	ldr r3, [sp, #0xc]
	subs r3, r3, r0
	str r3, [sp, #0xc]
	ldr r0, [r6, #0x40]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	ldr r2, _08042704 @ =0x0300004A
	adds r1, r5, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080426F0
	subs r0, r2, #1
	strh r0, [r1]
_080426F0:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x1e
	ble _0804270C
	ldr r3, _08042708 @ =0x03000048
	adds r1, r5, r3
	movs r0, #0x28
	b _0804271C
	.align 2, 0
_08042700: .4byte gCurTask
_08042704: .4byte 0x0300004A
_08042708: .4byte 0x03000048
_0804270C:
	ldr r0, _08042730 @ =0x03000048
	adds r1, r5, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0804271E
	subs r0, r2, #1
_0804271C:
	strh r0, [r1]
_0804271E:
	movs r1, #0
_08042720:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _08042738
	ldr r0, _08042734 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08042742
	.align 2, 0
_08042730: .4byte 0x03000048
_08042734: .4byte gUnknown_030008A0
_08042738:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042742:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804287C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08042768
	cmp r1, #8
	beq _08042768
	cmp r1, #0x10
	beq _08042768
	b _0804290A
_08042768:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08042774
	b _0804290A
_08042774:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804279A
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _0804279A
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r2, sl
	subs r0, r0, r2
	str r0, [r4, #0x14]
_0804279A:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r3, [r0, r2]
	adds r7, r0, #0
	cmp r3, #0
	bne _0804284E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08042802
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08042802
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	str r4, [sp]
	str r3, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r0, r8
	movs r3, #1
	bl sub_8020874
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r5
	cmp r0, #0
	beq _08042802
	ldr r0, _08042880 @ =0x00000253
	bl sub_8003DF0
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x3c
	strh r0, [r7]
	ldr r0, _08042884 @ =0x0000FCF4
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _08042888 @ =sub_800DB30
	bl sub_800D87C
_08042802:
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r1, #0xa8
	beq _08042828
	cmp r1, #0xb8
	beq _08042828
	cmp r1, #0xcc
	beq _08042828
	cmp r1, #0xd5
	bne _0804281C
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	beq _08042828
_0804281C:
	cmp r1, #0xe6
	beq _08042828
	cmp r1, #0xfe
	beq _08042828
	cmp r1, #0xff
	bne _0804284E
_08042828:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, r8
	movs r3, #1
	bl sub_8020874
	cmp r0, #0
	beq _0804284E
	ldr r0, _08042880 @ =0x00000253
	bl sub_8003DF0
	movs r0, #0x3c
	strh r0, [r7]
_0804284E:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r5
	cmp r2, #0
	beq _0804288C
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _080428EE
	.align 2, 0
_0804287C: .4byte gUnknown_030015C0
_08042880: .4byte 0x00000253
_08042884: .4byte 0x0000FCF4
_08042888: .4byte sub_800DB30
_0804288C:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _080428EE
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _080428C4
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080428EE
	adds r0, r4, #0
	bl sub_8008E38
	b _080428EE
_080428C4:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080428DE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _080428DE
	cmp r0, #0xf5
	bne _080428EE
_080428DE:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_080428EE:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804290A
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804290A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804291A
	b _08042720
_0804291A:
	bl sub_80429D0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8042930
sub_8042930: @ 0x08042930
	push {r4, r5, r6, lr}
	ldr r0, _080429A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	ldr r0, [r2]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r3, r1, #8
	ldr r0, _080429AC @ =0xFFFF4000
	adds r5, r3, r0
	ldr r0, _080429B0 @ =0x03000048
	adds r6, r4, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r2, #0x44]
	subs r0, r0, r1
	str r0, [r2, #0x44]
	ldr r1, _080429B4 @ =0xFFFFFF00
	cmp r0, r1
	bge _08042966
	str r1, [r2, #0x44]
_08042966:
	ldr r1, [r2, #0x44]
	ldr r0, _080429B8 @ =0x000007FF
	cmp r1, r0
	bgt _08042974
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r2, #0x44]
_08042974:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, r5
	bge _08042982
	str r5, [r2, #0x40]
_08042982:
	ldr r0, [r2, #0x40]
	cmp r0, r3
	ble _0804298E
	str r3, [r2, #0x40]
	movs r0, #0
	str r0, [r2, #0x44]
_0804298E:
	ldr r0, [r2, #0x44]
	cmp r0, #0
	blt _0804299C
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0
	beq _080429C0
_0804299C:
	ldr r0, _080429BC @ =0x03000026
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	b _080429C6
	.align 2, 0
_080429A8: .4byte gCurTask
_080429AC: .4byte 0xFFFF4000
_080429B0: .4byte 0x03000048
_080429B4: .4byte 0xFFFFFF00
_080429B8: .4byte 0x000007FF
_080429BC: .4byte 0x03000026
_080429C0:
	ldr r2, _080429CC @ =0x03000026
	adds r0, r4, r2
	strb r1, [r0]
_080429C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080429CC: .4byte 0x03000026

	thumb_func_start sub_80429D0
sub_80429D0: @ 0x080429D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08042A48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	ldr r4, _08042A4C @ =gCamera
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _08042A98
	movs r1, #0
	ldr r2, _08042A50 @ =gUnknown_030015C0
_08042A34:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08042A54
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08042A58
	.align 2, 0
_08042A48: .4byte gCurTask
_08042A4C: .4byte gCamera
_08042A50: .4byte gUnknown_030015C0
_08042A54:
	ldr r0, _08042A90 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08042A58:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	adds r0, r5, #0
	adds r1, r6, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08042A34
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08042A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08042ACC
	.align 2, 0
_08042A90: .4byte gUnknown_030008A0
_08042A94: .4byte gCurTask
_08042A98:
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	movs r4, #0x12
	ldrsh r1, [r5, r4]
	bl sub_802C1F8
	cmp r0, #1
	bne _08042ACC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	ldr r1, _08042AD8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
_08042ACC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042AD8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8042ADC
sub_8042ADC: @ 0x08042ADC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8042AF0
sub_8042AF0: @ 0x08042AF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x60
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x61
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
