.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable120
CreateEntity_Interactable120: @ 0x08049604
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
	ldr r0, _080496BC @ =sub_804971C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080496C0 @ =sub_80499A4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	movs r3, #0
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x34]
	movs r0, #0x80
	strh r0, [r7, #0x36]
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r7, #0x38]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x3a]
	movs r4, #0x38
	ldrsh r0, [r7, r4]
	lsls r0, r0, #8
	str r0, [r7, #0x3c]
	movs r5, #0x3a
	ldrsh r0, [r7, r5]
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	ldr r0, _080496C4 @ =0x03000044
	adds r4, r2, r0
	strh r1, [r4]
	ldrh r0, [r7, #0x3a]
	adds r0, #0xc0
	ldr r5, _080496C8 @ =0x03000046
	adds r1, r2, r5
	strh r0, [r1]
	ldr r1, _080496CC @ =0x03000048
	adds r0, r2, r1
	strb r3, [r0]
	mov r5, r8
	ldrb r1, [r5, #7]
	movs r0, #1
	ands r0, r1
	ldr r5, _080496D0 @ =0x0300004A
	adds r1, r2, r5
	strb r0, [r1]
	ldr r0, _080496D4 @ =0x03000049
	adds r2, r2, r0
	strb r3, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080496DC
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	rsbs r0, r0, #0
	strh r0, [r7, #0x34]
	ldr r2, _080496D8 @ =0xFFFFFD00
	adds r0, r2, #0
	ldrh r5, [r4]
	adds r0, r0, r5
	b _080496E6
	.align 2, 0
_080496BC: .4byte sub_804971C
_080496C0: .4byte sub_80499A4
_080496C4: .4byte 0x03000044
_080496C8: .4byte 0x03000046
_080496CC: .4byte 0x03000048
_080496D0: .4byte 0x0300004A
_080496D4: .4byte 0x03000049
_080496D8: .4byte 0xFFFFFD00
_080496DC:
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r4]
	adds r0, r0, r2
_080496E6:
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r3, _08049718 @ =gUnknown_03001D10
	ldr r2, [r3]
	ldrh r1, [r7, #0x38]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r7, #0x3a]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	mov r5, r8
	strb r1, [r5]
	bl sub_80499B8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049718: .4byte gUnknown_03001D10

	thumb_func_start sub_804971C
sub_804971C: @ 0x0804971C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08049748 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0
_08049738:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08049750
	ldr r0, _0804974C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804975A
	.align 2, 0
_08049748: .4byte gCurTask
_0804974C: .4byte gUnknown_030008A0
_08049750:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804975A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080497F8 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08049792
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08049792
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08049792:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _080497D6
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080497D6
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r5, [r4, #0x1a]
	adds r1, r6, #0
	adds r1, #0x49
	ldrb r0, [r1]
	cmp r0, #0
	bne _080497D6
	movs r0, #1
	strb r0, [r1]
_080497D6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08049738
	bl sub_80497FC
	bl sub_80498B4
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080497F8: .4byte gUnknown_030015C0

	thumb_func_start sub_80497FC
sub_80497FC: @ 0x080497FC
	push {r4, r5, lr}
	ldr r0, _08049824 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08049828 @ =0x03000049
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804982C
	cmp r0, #1
	ble _080498AC
	cmp r0, #2
	beq _080498AC
	cmp r0, #3
	beq _0804989C
	b _080498AC
	.align 2, 0
_08049824: .4byte gCurTask
_08049828: .4byte 0x03000049
_0804982C:
	movs r2, #0x34
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, _08049890 @ =0x00000261
	bl sub_8003E0C
	ldr r1, _08049894 @ =0x0300004A
	adds r0, r5, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _08049860
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	ldr r3, _08049898 @ =0x03000044
	adds r1, r5, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge _08049874
_08049860:
	cmp r2, #1
	bne _080498AC
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	ldr r2, _08049898 @ =0x03000044
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bgt _080498AC
_08049874:
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	strh r2, [r4, #0x36]
	strh r2, [r4, #0x34]
	ldr r0, _08049890 @ =0x00000261
	bl sub_8003E28
	b _080498AC
	.align 2, 0
_08049890: .4byte 0x00000261
_08049894: .4byte 0x0300004A
_08049898: .4byte 0x03000044
_0804989C:
	ldrh r0, [r4, #0x36]
	adds r0, #4
	strh r0, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
_080498AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80498B4
sub_80498B4: @ 0x080498B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08049910 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7]
	mov r8, r0
	ldr r1, _08049914 @ =0x0300000C
	adds r6, r4, r1
	ldr r0, [r7, #0x3c]
	lsls r0, r0, #8
	ldr r1, [r7, #0x40]
	lsls r1, r1, #8
	ldr r3, _08049918 @ =gUnknown_03001D10
	ldr r2, [r3]
	asrs r0, r0, #0x10
	subs r2, r0, r2
	strh r2, [r6, #0x10]
	ldr r2, [r3, #4]
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x12]
	bl sub_802C198
	cmp r0, #0
	bne _08049968
	ldr r0, _0804991C @ =0x00000261
	bl sub_8003E28
	movs r1, #0
	ldr r2, _08049920 @ =gUnknown_030015C0
_080498FC:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08049924
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08049928
	.align 2, 0
_08049910: .4byte gCurTask
_08049914: .4byte 0x0300000C
_08049918: .4byte gUnknown_03001D10
_0804991C: .4byte 0x00000261
_08049920: .4byte gUnknown_030015C0
_08049924:
	ldr r0, _08049960 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08049928:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _080498FC
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08049964 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08049994
	.align 2, 0
_08049960: .4byte gUnknown_030008A0
_08049964: .4byte gCurTask
_08049968:
	movs r1, #0
	ldr r2, _080499A0 @ =0x03000049
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08049976
	movs r1, #1
_08049976:
	strb r1, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	bl sub_802C1F8
	cmp r0, #1
	bne _08049994
	adds r0, r6, #0
	bl DisplaySprite
_08049994:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080499A0: .4byte 0x03000049

	thumb_func_start sub_80499A4
sub_80499A4: @ 0x080499A4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80499B8
sub_80499B8: @ 0x080499B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1a
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xe8
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
