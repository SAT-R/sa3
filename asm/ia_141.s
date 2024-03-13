.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable141
CreateEntity_Interactable141: @ 0x0804E69C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r4, [r5, #7]
	movs r2, #0
	ldr r3, _0804E78C @ =gUnknown_030008A0
	cmp r4, #1
	beq _0804E6DC
	movs r6, #1
_0804E6C4:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0804E6DC
	adds r0, r6, #0
	lsls r0, r1
	cmp r4, r0
	bne _0804E6C4
_0804E6DC:
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _0804E774
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804E774
	ldr r1, _0804E790 @ =gUnknown_03000530
	ldrb r0, [r3, #9]
	lsls r0, r0, #1
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0804E794 @ =0x000003FF
	cmp r1, r0
	bne _0804E774
	movs r0, #1
	adds r1, r3, #0
	adds r1, #0x86
	ldrb r2, [r1]
	adds r1, r4, #0
	ands r1, r0
	ands r0, r2
	cmp r1, r0
	bne _0804E774
	ldr r0, _0804E798 @ =sub_804E7AC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804E79C @ =sub_804E920
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	strh r7, [r3, #4]
	mov r2, r8
	strh r2, [r3, #6]
	str r5, [r3]
	ldrb r1, [r5]
	strb r1, [r3, #0xa]
	mov r6, sb
	strb r6, [r3, #0xb]
	ldrb r1, [r5]
	lsls r1, r1, #3
	lsls r2, r7, #8
	adds r1, r1, r2
	strh r1, [r3, #0x34]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r6, r8
	lsls r2, r6, #8
	adds r1, r1, r2
	strh r1, [r3, #0x36]
	ldr r2, _0804E7A0 @ =0x03000038
	adds r1, r0, r2
	strb r4, [r1]
	ldr r6, _0804E7A4 @ =0x0300000C
	adds r0, r0, r6
	ldr r4, _0804E7A8 @ =gUnknown_03001D10
	ldr r2, [r4]
	ldrh r1, [r3, #0x34]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r3, #0x36]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl sub_804E988
_0804E774:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E78C: .4byte gUnknown_030008A0
_0804E790: .4byte gUnknown_03000530
_0804E794: .4byte 0x000003FF
_0804E798: .4byte sub_804E7AC
_0804E79C: .4byte sub_804E920
_0804E7A0: .4byte 0x03000038
_0804E7A4: .4byte 0x0300000C
_0804E7A8: .4byte gUnknown_03001D10

	thumb_func_start sub_804E7AC
sub_804E7AC: @ 0x0804E7AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0804E83C @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r3, r1
	ldr r0, _0804E840 @ =gUnknown_030008A0
	mov sl, r0
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldrh r5, [r2, #0x34]
	mov r8, r5
	ldrh r2, [r2, #0x36]
	mov sb, r2
	adds r1, #0xc
	adds r4, r3, r1
	mov r0, sl
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804E844 @ =gUnknown_030015C0
	adds r7, r0, r1
	ldrh r1, [r6, #0x16]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804E804
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	bl sub_8004DD8
_0804E804:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804E850
	movs r1, #0
	ldr r0, _0804E848 @ =0x00000536
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	ldr r0, _0804E83C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804E84C @ =sub_804E934
	str r0, [r1, #8]
	mov r1, sl
	adds r1, #0x87
	movs r0, #1
	strb r0, [r1]
	b _0804E886
	.align 2, 0
_0804E83C: .4byte gCurTask
_0804E840: .4byte gUnknown_030008A0
_0804E844: .4byte gUnknown_030015C0
_0804E848: .4byte 0x00000536
_0804E84C: .4byte sub_804E934
_0804E850:
	ldr r0, [r6, #0x50]
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804E862
	cmp r1, #0x10
	bne _0804E898
_0804E862:
	ldrh r1, [r6, #0x16]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _0804E898
	adds r0, r4, #0
	bl sub_805C510
	adds r4, r0, #0
	cmp r4, #1
	bne _0804E898
	ldr r1, _0804E890 @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
	mov r0, sl
	adds r0, #0x87
	strb r4, [r0]
_0804E886:
	ldr r0, _0804E894 @ =0x00000205
	bl sub_8003DF0
	b _0804E89C
	.align 2, 0
_0804E890: .4byte gCurTask
_0804E894: .4byte 0x00000205
_0804E898:
	bl sub_804E8AC
_0804E89C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804E8AC
sub_804E8AC: @ 0x0804E8AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804E8F0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	movs r0, #0x34
	ldrsh r6, [r4, r0]
	movs r1, #0x36
	ldrsh r7, [r4, r1]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804E8F4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E90E
	.align 2, 0
_0804E8F0: .4byte gCurTask
_0804E8F4:
	ldr r0, _0804E91C @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804E90E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E91C: .4byte gUnknown_03001D10

	thumb_func_start sub_804E920
sub_804E920: @ 0x0804E920
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804E934
sub_804E934: @ 0x0804E934
	push {r4, r5, r6, lr}
	ldr r5, _0804E970 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _0804E974 @ =0x0300000C
	adds r4, r1, r2
	ldrh r1, [r0, #0x36]
	ldr r3, _0804E978 @ =gUnknown_03001D10
	ldr r2, [r3]
	movs r6, #0x34
	ldrsh r0, [r0, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x10]
	ldr r0, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0804E97C
	ldr r0, [r5]
	bl TaskDestroy
	b _0804E982
	.align 2, 0
_0804E970: .4byte gCurTask
_0804E974: .4byte 0x0300000C
_0804E978: .4byte gUnknown_03001D10
_0804E97C:
	adds r0, r4, #0
	bl DisplaySprite
_0804E982:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804E988
sub_804E988: @ 0x0804E988
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804E9C8 @ =0x00000544
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	adds r0, #0xbc
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
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
_0804E9C8: .4byte 0x00000544
