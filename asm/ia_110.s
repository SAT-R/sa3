.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable110
CreateEntity_Interactable110: @ 0x08045660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08045754 @ =sub_804576C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08045758 @ =sub_8045BE4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	movs r1, #0
	mov sl, r1
	movs r7, #0
	strh r5, [r2, #4]
	strh r6, [r2, #6]
	mov r0, sb
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r1, r8
	strb r1, [r2, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0xa]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r2, #0xc]
	ldr r0, _0804575C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _08045760 @ =gUnknown_030015C0
	adds r0, r0, r3
	str r0, [r2, #0x14]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	str r0, [r2, #0x18]
	mov r0, sl
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xf]
	mov r1, sb
	ldrb r0, [r1, #5]
	strb r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08045764 @ =0x0300001C
	adds r4, r4, r0
	movs r0, #0x20
	bl VramMalloc
	str r0, [r4]
	ldr r0, _08045768 @ =0x00000396
	strh r0, [r4, #0xc]
	mov r1, sl
	strb r1, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045754: .4byte sub_804576C
_08045758: .4byte sub_8045BE4
_0804575C: .4byte gUnknown_030008A0
_08045760: .4byte gUnknown_030015C0
_08045764: .4byte 0x0300001C
_08045768: .4byte 0x00000396

	thumb_func_start sub_804576C
sub_804576C: @ 0x0804576C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08045850 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp]
	ldr r0, _08045854 @ =0x0300001C
	adds r0, r0, r1
	mov sb, r0
	ldrh r0, [r6, #0xa]
	mov sl, r0
	ldrh r0, [r6, #0xc]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r5, #0
	ldr r0, _08045858 @ =0x03000014
	adds r0, r1, r0
	str r0, [sp, #0xc]
_080457A2:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080457D2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8045A5C
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080457D2
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r5
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_080457D2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080457A2
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _08045802
	ldr r0, _0804585C @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08045802
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080457F8
	movs r0, #2
_080457F8:
	mov r1, sb
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x1b]
_08045802:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08045816
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _08045826
	movs r0, #1
	strb r0, [r6, #0xe]
	movs r0, #0x1e
	strb r0, [r6, #0xf]
_08045816:
	ldrb r0, [r6, #0xe]
	mov r1, sl
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r1, [sp, #4]
	lsls r7, r1, #0x10
	cmp r0, #0
	beq _080458AA
_08045826:
	ldrb r0, [r6, #0xf]
	subs r0, #1
	strb r0, [r6, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #4]
	lsls r7, r0, #0x10
	cmp r1, #0
	bne _080458AA
	movs r0, #0x18
	strb r0, [r6, #0xf]
	strb r1, [r6, #0xe]
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08045860
	movs r0, #1
	b _08045864
	.align 2, 0
_08045850: .4byte gCurTask
_08045854: .4byte 0x0300001C
_08045858: .4byte 0x03000014
_0804585C: .4byte gUnknown_030008A0
_08045860:
	movs r0, #3
	mov r1, sb
_08045864:
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x1b]
	ldr r0, _080458D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080458D8 @ =sub_80458FC
	str r0, [r1, #8]
	ldr r0, _080458DC @ =0x00000259
	bl sub_8003DF0
	movs r5, #0
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #4]
	lsls r7, r1, #0x10
_08045886:
	ldr r0, [sp, #8]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080458A0
	lsls r0, r5, #2
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C080
_080458A0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045886
_080458AA:
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	ldr r3, _080458E0 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _080458E4
	ldrb r0, [r6, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _080458D4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080458EA
	.align 2, 0
_080458D4: .4byte gCurTask
_080458D8: .4byte sub_80458FC
_080458DC: .4byte 0x00000259
_080458E0: .4byte gUnknown_03001D10
_080458E4:
	adds r0, r6, #0
	bl sub_8045B40
_080458EA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80458FC
sub_80458FC: @ 0x080458FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804595C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	str r0, [sp]
	ldr r2, _08045960 @ =0x0300001C
	adds r2, r2, r1
	mov r8, r2
	ldrh r3, [r5, #0xa]
	mov sb, r3
	ldrh r0, [r5, #0xc]
	mov sl, r0
	movs r6, #0
_08045928:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r4, r0, r1
	ldr r0, [r4]
	bl sub_802C080
	cmp r0, #0
	bne _08045984
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_8045A5C
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _08045984
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #1
	bne _08045964
	ldr r0, [r4]
	bl sub_80213F0
	b _08045984
	.align 2, 0
_0804595C: .4byte gCurTask
_08045960: .4byte 0x0300001C
_08045964:
	ldr r2, [r4]
	ldrb r1, [r5, #0x10]
	lsls r1, r1, #5
	ldr r3, _080459B0 @ =0xFFFFFA00
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2, #0x1a]
	ldr r2, [r4]
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	bl sub_8009E8C
_08045984:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08045928
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080459CA
	ldr r0, _080459B4 @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080459B8
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0x1a]
	b _080459BC
	.align 2, 0
_080459B0: .4byte 0xFFFFFA00
_080459B4: .4byte gUnknown_030008A0
_080459B8:
	mov r2, r8
	strb r1, [r2, #0x1a]
_080459BC:
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3, #0x1b]
	ldr r0, _080459F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080459FC @ =sub_804576C
	str r0, [r1, #8]
_080459CA:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08045A44
	movs r1, #0
	ldr r6, _08045A00 @ =gUnknown_030015C0
_080459E2:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08045A04
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08045A08
	.align 2, 0
_080459F8: .4byte gCurTask
_080459FC: .4byte sub_804576C
_08045A00: .4byte gUnknown_030015C0
_08045A04:
	ldr r0, _08045A3C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08045A08:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r7, r0, r6
	mov r0, r8
	adds r1, r7, #0
	bl sub_80213B0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080459E2
	ldrb r0, [r5, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08045A40 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08045A4A
	.align 2, 0
_08045A3C: .4byte gUnknown_030008A0
_08045A40: .4byte gCurTask
_08045A44:
	adds r0, r5, #0
	bl sub_8045B40
_08045A4A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8045A5C
sub_8045A5C: @ 0x08045A5C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x1c
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	movs r5, #0xc
	ldrsh r2, [r0, r5]
	movs r0, #0
	str r0, [sp]
	adds r0, r3, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _08045A94
	adds r1, r2, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _08045B36
_08045A94:
	movs r5, #0x80
	lsls r5, r5, #0xa
	ands r5, r2
	cmp r5, #0
	beq _08045AB2
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
	b _08045B36
_08045AB2:
	movs r3, #0x80
	lsls r3, r3, #0xb
	ands r3, r2
	cmp r3, #0
	beq _08045AF0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08045ADA
	strh r5, [r4, #0x18]
_08045ADA:
	strh r5, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08045B36
	ldr r0, [r4, #0x10]
	ldr r5, _08045AEC @ =0xFFFFFF00
	b _08045B2A
	.align 2, 0
_08045AEC: .4byte 0xFFFFFF00
_08045AF0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08045B36
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08045B18
	strh r3, [r4, #0x18]
_08045B18:
	strh r3, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08045B36
	ldr r0, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #1
_08045B2A:
	adds r0, r0, r5
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08045B36:
	adds r0, r2, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8045B40
sub_8045B40: @ 0x08045B40
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x1c
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	beq _08045B78
	ldr r0, _08045B70 @ =gUnknown_030008A0
	ldr r2, [r0, #0x1c]
	movs r0, #2
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08045B5E
	ldr r1, _08045B74 @ =0x0000FFFF
_08045B5E:
	movs r0, #4
	ands r2, r0
	movs r0, #1
	cmp r2, #0
	beq _08045B6A
	ldr r0, _08045B74 @ =0x0000FFFF
_08045B6A:
	adds r5, r0, #0
	b _08045B7C
	.align 2, 0
_08045B70: .4byte gUnknown_030008A0
_08045B74: .4byte 0x0000FFFF
_08045B78:
	movs r1, #0
	movs r5, #0
_08045B7C:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0xa]
	adds r1, r1, r0
	ldr r2, _08045BDC @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r3, #0xc]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	subs r2, r0, r2
	strh r2, [r4, #0x12]
	adds r1, #0xf
	lsls r1, r1, #0x10
	movs r0, #0x87
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08045BD6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbd
	bgt _08045BD6
	cmp r0, #0
	ble _08045BD6
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r1, _08045BE0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
_08045BD6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045BDC: .4byte gUnknown_03001D10
_08045BE0: .4byte 0xFFFFFBFF

	thumb_func_start sub_8045BE4
sub_8045BE4: @ 0x08045BE4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0
