.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable063
CreateEntity_Interactable063: @ 0x08036440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r1, [r6, #7]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	cmp r0, #0
	beq _0803648C
	ldr r0, _08036484 @ =sub_8037224
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08036488 @ =sub_8037130
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	b _0803649E
	.align 2, 0
_08036484: .4byte sub_8037224
_08036488: .4byte sub_8037130
_0803648C:
	ldr r0, _080364E4 @ =sub_803724C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080364E8 @ =sub_8037130
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
_0803649E:
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r1, _080364EC @ =0x03000040
	adds r1, r1, r2
	mov ip, r1
	ldr r7, _080364F0 @ =0x03000034
	adds r5, r2, r7
	movs r1, #0
	mov r0, sl
	strh r0, [r3, #4]
	mov r7, sp
	ldrh r7, [r7, #4]
	strh r7, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #0xa]
	mov r0, sb
	strb r0, [r3, #0xb]
	ldr r7, _080364F4 @ =0x03000078
	adds r0, r2, r7
	strb r1, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r1, [r0]
	mov r0, r8
	cmp r0, #0
	beq _080364F8
	subs r7, #0x11
	adds r1, r2, r7
	movs r0, #0x54
	b _08036500
	.align 2, 0
_080364E4: .4byte sub_803724C
_080364E8: .4byte sub_8037130
_080364EC: .4byte 0x03000040
_080364F0: .4byte 0x03000034
_080364F4: .4byte 0x03000078
_080364F8:
	ldr r0, _08036534 @ =0x03000068
	adds r1, r2, r0
	movs r0, #0xeb
	lsls r0, r0, #2
_08036500:
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x74
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r7, [sp, #4]
	lsls r1, r7, #8
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	mov r0, r8
	cmp r0, #0
	beq _08036538
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x18
	b _0803653E
	.align 2, 0
_08036534: .4byte 0x03000068
_08036538:
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	subs r0, #0x18
_0803653E:
	lsls r0, r0, #8
	str r0, [r3, #0x6c]
	movs r7, #0x12
	ldrsh r0, [r4, r7]
	adds r0, #5
	lsls r0, r0, #8
	str r0, [r3, #0x70]
	ldrh r0, [r4, #0x10]
	movs r1, #0
	mov r2, ip
	strh r0, [r2, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r1, [r5]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r6]
	adds r0, r4, #0
	mov r1, ip
	bl sub_8036F0C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8036584
sub_8036584: @ 0x08036584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _080365E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r2, [r0]
	ldr r3, _080365EC @ =0x0300000C
	adds r3, r1, r3
	str r3, [sp, #0x14]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r4, [sp, #0x10]
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
_080365D6:
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq _080365F0
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080365F4
	.align 2, 0
_080365E8: .4byte gCurTask
_080365EC: .4byte 0x0300000C
_080365F0:
	ldr r0, _0803666C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080365F4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08036670 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	cmp r7, #0
	beq _08036610
	b _080368B4
_08036610:
	ldr r2, [sp, #0x1c]
	lsls r4, r2, #0x10
	ldr r3, [sp, #0x20]
	lsls r5, r3, #0x10
	str r6, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	movs r3, #0
	bl sub_8020874
	adds r3, r0, #0
	mov sb, r4
	str r5, [sp, #0x28]
	cmp r3, #0
	bne _08036674
	ldr r0, [sp, #0x10]
	adds r0, #0x78
	ldr r4, [sp, #0x24]
	adds r1, r0, r4
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	bne _08036646
	b _080368B4
_08036646:
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036662
	ldr r0, [r6, #0x6c]
	ldr r4, [sp, #0x14]
	cmp r0, r4
	bne _08036662
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	str r3, [r6, #0x6c]
_08036662:
	ldr r0, [sp, #0x24]
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	b _080368B4
	.align 2, 0
_0803666C: .4byte gUnknown_030008A0
_08036670: .4byte gUnknown_030015C0
_08036674:
	ldr r2, [r6, #4]
	movs r4, #0x20
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08036688
	ldr r0, [r6, #0x6c]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	beq _08036754
_08036688:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _080366CA
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08036710
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080366B2
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_080366B2:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	strh r7, [r6, #0x1c]
	strh r7, [r6, #0x18]
	b _080368B4
_080366CA:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08036710
	ldrh r1, [r6, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080366EC
	ldr r0, [r6, #0x10]
	ldr r4, _0803670C @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_080366EC:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r6, #0x1c]
	mov r3, sp
	ldrh r3, [r3, #0xc]
	strh r3, [r6, #0x18]
	b _080368B4
	.align 2, 0
_0803670C: .4byte 0xFFFFFF00
_08036710:
	adds r0, r6, #0
	bl sub_8036E34
	adds r1, r0, #0
	cmp r1, #1
	beq _0803671E
	b _080368B4
_0803671E:
	ldr r0, [sp, #0x10]
	adds r0, #0x78
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x20
	orrs r1, r0
	str r1, [r6, #4]
	ldr r0, [sp, #0x14]
	str r0, [r6, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803674C
	adds r0, r6, #0
	ldr r1, _08036748 @ =sub_80077CC
	bl sub_800D87C
	b _08036754
	.align 2, 0
_08036748: .4byte sub_80077CC
_0803674C:
	adds r0, r6, #0
	ldr r1, _08036778 @ =sub_8005380
	bl sub_800D87C
_08036754:
	ldr r0, [sp, #0x10]
	adds r0, #0x78
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036764
	b _080368B4
_08036764:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0803677C
	mov r3, sb
	asrs r1, r3, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08036788
	b _0803682C
	.align 2, 0
_08036778: .4byte sub_8005380
_0803677C:
	mov r4, sb
	asrs r1, r4, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0803682C
_08036788:
	ldrh r0, [r6, #0x1a]
	mov r8, r0
	ldr r5, [r6, #0x14]
	mov r1, sb
	asrs r7, r1, #0x10
	ldr r2, [sp, #0x28]
	asrs r4, r2, #0x10
	movs r3, #0
	mov sl, r3
	str r3, [sp]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_8020950
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080367C4
	ldr r0, [r6, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #4]
	mov r0, r8
	strh r0, [r6, #0x1a]
	str r5, [r6, #0x14]
	movs r1, #1
	str r1, [sp, #0x18]
_080367C4:
	str r6, [sp]
	mov r2, sl
	str r2, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	bne _080367EC
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080367EC
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #0x14]
	cmp r0, r3
	beq _080367FE
_080367EC:
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08036822
	movs r4, #0x1a
	ldrsh r0, [r6, r4]
	cmp r0, #0
	ble _08036822
_080367FE:
	mov r0, sb
	asrs r2, r0, #0x10
	ldr r1, [sp, #0x28]
	asrs r3, r1, #0x10
	ldr r0, [sp, #0x10]
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	bl sub_8037144
	ldr r2, [sp, #0x18]
	orrs r2, r0
	str r2, [sp, #0x18]
	b _080368B4
_08036822:
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	bl sub_80213B0
	b _080368B4
_0803682C:
	mov r3, sb
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x28]
	asrs r3, r4, #0x10
	ldr r0, [sp, #0x10]
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	bl sub_8037144
	cmp r0, #0
	bne _080368B4
	ldr r1, [r6, #4]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _0803685E
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bgt _0803689C
_0803685E:
	movs r4, #4
	ands r1, r4
	cmp r1, #0
	beq _0803689C
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08036898 @ =sub_8051F54
	str r3, [sp]
	movs r3, #8
	bl sub_8052418
	cmp r0, #4
	ble _08036892
	ldr r0, [r6, #4]
	ands r0, r4
	cmp r0, #0
	beq _0803689C
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0803689C
_08036892:
	movs r4, #0
	b _0803689E
	.align 2, 0
_08036898: .4byte sub_8051F54
_0803689C:
	movs r4, #1
_0803689E:
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	bl sub_80213B0
	cmp r4, #0
	beq _080368B4
	ldr r0, [r6, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #4]
_080368B4:
	ldr r0, [sp, #0x24]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #1
	bhi _080368C4
	b _080365D6
_080368C4:
	ldr r0, [sp, #0xc]
	movs r1, #0
	bl sub_8036BC4
	ldr r4, [sp, #0x18]
	orrs r4, r0
	str r4, [sp, #0x18]
	adds r0, r4, #0
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80368E4
sub_80368E4: @ 0x080368E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _08036948 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r2, [r0]
	ldr r0, _0803694C @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	mov r1, sl
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r3, #0
	str r3, [sp, #0x18]
_08036934:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08036950
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08036954
	.align 2, 0
_08036948: .4byte gCurTask
_0803694C: .4byte 0x0300000C
_08036950:
	ldr r0, _080369C8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08036954:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080369CC @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	cmp r7, #0
	beq _08036970
	b _08036B98
_08036970:
	ldr r1, [sp, #0x10]
	lsls r4, r1, #0x10
	ldr r2, [sp, #0x14]
	lsls r5, r2, #0x10
	str r6, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r0, sb
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	movs r3, #0
	bl sub_8020874
	adds r3, r0, #0
	mov r8, r4
	cmp r3, #0
	bne _080369D0
	mov r0, sl
	adds r0, #0x78
	ldr r2, [sp, #0x18]
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	bne _080369A4
	b _08036B98
_080369A4:
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080369BE
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	bne _080369BE
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	str r3, [r6, #0x6c]
_080369BE:
	ldr r3, [sp, #0x18]
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
	b _08036B98
	.align 2, 0
_080369C8: .4byte gUnknown_030008A0
_080369CC: .4byte gUnknown_030015C0
_080369D0:
	ldr r2, [r6, #4]
	movs r4, #0x20
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _080369E2
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	beq _08036AB0
_080369E2:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08036A24
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08036A6C
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036A0C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_08036A0C:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	strh r7, [r6, #0x1c]
	strh r7, [r6, #0x18]
	b _08036B98
_08036A24:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08036A6C
	ldrh r1, [r6, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08036A46
	ldr r0, [r6, #0x10]
	ldr r1, _08036A68 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_08036A46:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	mov r3, sp
	ldrh r3, [r3, #0xc]
	strh r3, [r6, #0x1c]
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r6, #0x18]
	b _08036B98
	.align 2, 0
_08036A68: .4byte 0xFFFFFF00
_08036A6C:
	adds r0, r6, #0
	bl sub_8036E34
	adds r1, r0, #0
	cmp r1, #1
	beq _08036A7A
	b _08036B98
_08036A7A:
	mov r0, sl
	adds r0, #0x78
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	strb r1, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x20
	orrs r1, r0
	str r1, [r6, #4]
	mov r3, sb
	str r3, [r6, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08036AA8
	adds r0, r6, #0
	ldr r1, _08036AA4 @ =sub_80077CC
	bl sub_800D87C
	b _08036AB0
	.align 2, 0
_08036AA4: .4byte sub_80077CC
_08036AA8:
	adds r0, r6, #0
	ldr r1, _08036AD4 @ =sub_8005380
	bl sub_800D87C
_08036AB0:
	mov r0, sl
	adds r0, #0x78
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036B98
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08036AD8
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08036AE4
	b _08036B50
	.align 2, 0
_08036AD4: .4byte sub_8005380
_08036AD8:
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08036B50
_08036AE4:
	mov r1, r8
	asrs r4, r1, #0x10
	asrs r3, r5, #0x10
	mov r0, sl
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_8037144
	cmp r0, #1
	bne _08036B98
	mov r0, sb
	adds r1, r6, #0
	bl sub_80213B0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08036B1C
	rsbs r0, r0, #0
_08036B1C:
	lsls r0, r0, #0xa
	rsbs r0, r0, #0
	asrs r0, r0, #5
	ldr r2, _08036B48 @ =0xFFFFFB00
	adds r0, r0, r2
	strh r0, [r6, #0x1a]
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	ldr r1, _08036B4C @ =sub_8006F98
	bl sub_800D87C
	adds r0, r6, #0
	movs r1, #0x94
	lsls r1, r1, #2
	bl sub_8004E98
	b _08036B98
	.align 2, 0
_08036B48: .4byte 0xFFFFFB00
_08036B4C: .4byte sub_8006F98
_08036B50:
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036B98
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	bne _08036B98
	ldr r0, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r6, #0x14]
	mov r0, r8
	asrs r2, r0, #0x10
	asrs r3, r5, #0x10
	mov r0, sl
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	bl sub_8037144
	cmp r0, #0
	bne _08036B98
	ldr r0, [r6, #0x14]
	ldr r1, _08036BC0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r6, #0x14]
	mov r0, sb
	adds r1, r6, #0
	bl sub_80213B0
_08036B98:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, #1
	bhi _08036BA8
	b _08036934
_08036BA8:
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl sub_8036BC4
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036BC0: .4byte 0xFFFFF000

	thumb_func_start sub_8036BC4
sub_8036BC4: @ 0x08036BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _08036C58 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, [r4]
	ldr r1, _08036C5C @ =0x03000040
	adds r1, r1, r3
	mov sb, r1
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _08036C60 @ =0x03000076
	adds r1, r3, r2
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #3
	cmp r0, r2
	ble _08036C2A
	strh r2, [r1]
_08036C2A:
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	movs r6, #0
	mov r1, r8
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r2, _08036C64 @ =0x03000068
	adds r2, r2, r3
	mov sl, r2
	lsls r3, r7, #0x10
	str r3, [sp, #0x10]
	ldr r7, _08036C68 @ =gUnknown_030015C0
_08036C48:
	cmp r6, #0
	beq _08036C6C
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08036C70
	.align 2, 0
_08036C58: .4byte gCurTask
_08036C5C: .4byte 0x03000040
_08036C60: .4byte 0x03000076
_08036C64: .4byte 0x03000068
_08036C68: .4byte gUnknown_030015C0
_08036C6C:
	ldr r0, _08036CDC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08036C70:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	ldr r1, [r4, #0x6c]
	asrs r1, r1, #8
	ldr r2, [r4, #0x70]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, sb
	movs r3, #0
	bl sub_8020CE0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08036C48
	ldr r6, [r4, #0x6c]
	asrs r5, r6, #8
	mov r7, r8
	asrs r3, r7, #0x10
	subs r1, r5, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08036CE0 @ =gUnknown_082B48B4
	mov r7, sl
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	lsls r0, r0, #2
	ldr r7, [sp, #0x10]
	asrs r1, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4, #0x70]
	cmp r0, r1
	blt _08036D24
	str r1, [r4, #0x70]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08036D0E
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08036CE4
	cmp r3, r5
	blt _08036CE8
	b _08036D62
	.align 2, 0
_08036CDC: .4byte gUnknown_030008A0
_08036CE0: .4byte gUnknown_082B48B4
_08036CE4:
	cmp r3, r5
	ble _08036D62
_08036CE8:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1]
	mov r2, r8
	asrs r1, r2, #0x10
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	movs r3, #0xa0
	rsbs r3, r3, #0
	adds r2, r3, #0
	cmp r1, r0
	ble _08036D06
	movs r2, #0xa0
_08036D06:
	adds r0, r4, #0
	adds r0, #0x74
	strh r2, [r0]
	b _08036D62
_08036D0E:
	ldr r7, [sp, #4]
	cmp r7, #0
	beq _08036D1A
	cmp r3, r5
	bgt _08036D1E
	b _08036D62
_08036D1A:
	cmp r3, r5
	bge _08036D62
_08036D1E:
	movs r0, #1
	str r0, [sp, #0xc]
	b _08036D62
_08036D24:
	adds r0, r4, #0
	adds r0, #0x74
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r6, r0
	str r0, [r4, #0x6c]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08036D3A
	subs r0, r3, r0
	b _08036D3C
_08036D3A:
	subs r0, r0, r3
_08036D3C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08036D62
	mov r2, r8
	asrs r1, r2, #0x10
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08036D5A
	adds r0, r1, #0
	subs r0, #0x1e
	b _08036D5E
_08036D5A:
	adds r0, r1, #0
	adds r0, #0x1e
_08036D5E:
	lsls r0, r0, #8
	str r0, [r4, #0x6c]
_08036D62:
	ldr r2, [r4, #0x70]
	asrs r2, r2, #8
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r1, #4
	cmp r2, r0
	ble _08036D82
	lsls r0, r1, #8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x70]
_08036D82:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8036D94
sub_8036D94: @ 0x08036D94
	push {r4, r5, lr}
	ldr r5, _08036DD4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #1
	bl sub_80368E4
	ldr r0, _08036DD8 @ =0x03000068
	adds r4, r4, r0
	ldrh r0, [r4]
	subs r0, #0x14
	ldr r1, _08036DDC @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	ldr r1, _08036DE0 @ =0xFFFFFDFF
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xd5
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08036DCA
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08036DE4 @ =sub_803724C
	str r0, [r1, #8]
_08036DCA:
	bl sub_8036FBC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036DD4: .4byte gCurTask
_08036DD8: .4byte 0x03000068
_08036DDC: .4byte 0x000003FF
_08036DE0: .4byte 0xFFFFFDFF
_08036DE4: .4byte sub_803724C

	thumb_func_start sub_8036DE8
sub_8036DE8: @ 0x08036DE8
	push {r4, r5, lr}
	ldr r5, _08036E24 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0
	bl sub_80368E4
	ldr r0, _08036E28 @ =0x03000068
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, #0x14
	ldr r1, _08036E2C @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	subs r0, #0x55
	lsls r0, r0, #0x10
	movs r1, #0xd5
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08036E1A
	movs r0, #0x54
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08036E30 @ =sub_8037224
	str r0, [r1, #8]
_08036E1A:
	bl sub_8036FBC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036E24: .4byte gCurTask
_08036E28: .4byte 0x03000068
_08036E2C: .4byte 0x000003FF
_08036E30: .4byte sub_8037224

	thumb_func_start sub_8036E34
sub_8036E34: @ 0x08036E34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08036E90 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1]
	ldr r2, _08036E94 @ =0x0300000C
	adds r6, r0, r2
	adds r2, #0x5c
	adds r0, r0, r2
	ldrh r5, [r0]
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r1, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08036E80
	rsbs r0, r2, #0
_08036E80:
	cmp r0, #0x20
	ble _08036E98
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r0, #0
	b _08036F04
	.align 2, 0
_08036E90: .4byte gCurTask
_08036E94: .4byte 0x0300000C
_08036E98:
	ldr r1, _08036EDC @ =gUnknown_082B48B4
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r5, r0, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0x25
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldrh r0, [r4, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08036EE2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08036EE0
	subs r3, #0x20
	b _08036EE2
	.align 2, 0
_08036EDC: .4byte gUnknown_082B48B4
_08036EE0:
	adds r3, #0x20
_08036EE2:
	cmp r3, r5
	ble _08036F02
	adds r0, r5, #0
	adds r0, #8
	cmp r3, r0
	bge _08036F02
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08036F02
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r3, r0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r7, #1
_08036F02:
	adds r0, r7, #0
_08036F04:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8036F0C
sub_8036F0C: @ 0x08036F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08036F38 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08036F3C
	movs r5, #0xf2
	lsls r5, r5, #2
	movs r0, #0
	mov sb, r0
	movs r1, #3
	mov sl, r1
	movs r0, #0x28
	mov r8, r0
	movs r0, #0x2c
	b _08036F4C
	.align 2, 0
_08036F38: .4byte gUnknown_030008A0
_08036F3C:
	ldr r5, _08036FB8 @ =0x00000375
	movs r1, #0
	mov sb, r1
	movs r0, #3
	mov sl, r0
	movs r1, #0x30
	mov r8, r1
	movs r0, #0x34
_08036F4C:
	bl VramMalloc
	str r0, [r6]
	movs r1, #0
	mov ip, r1
	movs r4, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	strh r5, [r6, #0xc]
	mov r1, sb
	strb r1, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r1, #0xff
	strb r1, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	mov r1, ip
	strb r1, [r6, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r6, #8]
	mov r1, r8
	lsls r1, r1, #5
	mov r8, r1
	add r0, r8
	str r0, [r7]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xc]
	mov r0, sl
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	mov r1, ip
	strb r1, [r7, #0x1f]
	str r2, [r7, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036FB8: .4byte 0x00000375

	thumb_func_start sub_8036FBC
sub_8036FBC: @ 0x08036FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08037024 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r5, r6, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08037070
	movs r1, #0
	ldr r2, _08037028 @ =gUnknown_030015C0
_0803700E:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803702C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037030
	.align 2, 0
_08037024: .4byte gCurTask
_08037028: .4byte gUnknown_030015C0
_0803702C:
	ldr r0, _08037068 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08037030:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _0803700E
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0803706C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803711A
	.align 2, 0
_08037068: .4byte gUnknown_030008A0
_0803706C: .4byte gCurTask
_08037070:
	ldr r1, _0803708C @ =0x03000068
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08037090 @ =0x000003FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _08037098
	ldr r0, [r5, #8]
	ldr r1, _08037094 @ =0xFFFFFBFF
	ands r0, r1
	b _080370A0
	.align 2, 0
_0803708C: .4byte 0x03000068
_08037090: .4byte 0x000003FF
_08037094: .4byte 0xFFFFFBFF
_08037098:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080370A0:
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _080370C4
	movs r0, #0x80
	lsls r0, r0, #3
	subs r0, r0, r2
	cmp r0, #0
	bge _080370BA
	ldr r1, _080370C0 @ =0xFFFFFC00
	adds r0, r1, #0
	adds r0, r2, r0
_080370BA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080370C6
	.align 2, 0
_080370C0: .4byte 0xFFFFFC00
_080370C4:
	adds r0, r2, #0
_080370C6:
	movs r1, #0
	cmp r0, #0x1b
	bls _080370D4
	movs r1, #2
	cmp r0, #0x37
	bhi _080370D4
	movs r1, #1
_080370D4:
	strb r1, [r5, #0x1a]
	ldr r4, _0803712C @ =gCamera
	ldr r1, [r4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r5, r7, #0
	adds r5, #0x40
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
_0803711A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803712C: .4byte gCamera

	thumb_func_start sub_8037130
sub_8037130: @ 0x08037130
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8037144
sub_8037144: @ 0x08037144
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	cmp r2, #0
	bge _0803717A
	rsbs r1, r2, #0
_0803717A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0803718E
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r0, #0
	b _08037212
_0803718E:
	ldr r1, _080371B8 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r3, r0, r1
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080371BC
	adds r0, r3, #0
	subs r0, #0xb
	b _080371C0
	.align 2, 0
_080371B8: .4byte gUnknown_082B48B4
_080371BC:
	adds r0, r3, #0
	subs r0, #0x10
_080371C0:
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	cmp r0, r1
	bge _080371D6
	movs r0, #0x24
	ands r0, r2
	cmp r0, #0x20
	bne _08037210
	ldr r0, [r4, #0x6c]
	cmp r0, r6
	bne _08037210
_080371D6:
	movs r0, #1
	mov r8, r0
	str r1, [r4, #0x14]
	asrs r0, r1, #8
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #0
	str r3, [sp]
	ldr r3, _08037220 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _08037202
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08037202:
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r4, #4]
	str r6, [r4, #0x6c]
_08037210:
	mov r0, r8
_08037212:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037220: .4byte sub_805217C

	thumb_func_start sub_8037224
sub_8037224: @ 0x08037224
	push {r4, lr}
	ldr r4, _08037244 @ =gCurTask
	movs r0, #1
	bl sub_8036584
	cmp r0, #0
	beq _08037238
	ldr r1, [r4]
	ldr r0, _08037248 @ =sub_8036D94
	str r0, [r1, #8]
_08037238:
	bl sub_8036FBC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037244: .4byte gCurTask
_08037248: .4byte sub_8036D94

	thumb_func_start sub_803724C
sub_803724C: @ 0x0803724C
	push {r4, lr}
	ldr r4, _0803726C @ =gCurTask
	movs r0, #0
	bl sub_8036584
	cmp r0, #0
	beq _08037260
	ldr r1, [r4]
	ldr r0, _08037270 @ =sub_8036DE8
	str r0, [r1, #8]
_08037260:
	bl sub_8036FBC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803726C: .4byte gCurTask
_08037270: .4byte sub_8036DE8
