.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Kamaki
CreateEntity_Kamaki: @ 0x08064818
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08064898 @ =Task_Kamaki
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806489C @ =TaskDestructor_Kamaki
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #6]
	strb r4, [r7, #5]
	movs r3, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r3, [r7, #7]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x10]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080648A0
	movs r0, #0xff
	b _080648A2
	.align 2, 0
_08064898: .4byte Task_Kamaki
_0806489C: .4byte TaskDestructor_Kamaki
_080648A0:
	movs r0, #1
_080648A2:
	strb r0, [r7, #8]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _080648B6
	movs r0, #1
_080648B6:
	strb r0, [r7, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _080648E8 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80648EC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080648E8: .4byte 0x01000002

	thumb_func_start sub_80648EC
sub_80648EC: @ 0x080648EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r5, r6, #0
	adds r5, #0x2c
	str r0, [r6, #0x2c]
	ldr r1, _08064978 @ =gUnknown_080D215C
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0806497C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r0, #8
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08064956
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_08064956:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08064966
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_08064966:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064978: .4byte gUnknown_080D215C
_0806497C: .4byte gUnknown_03001D10

	thumb_func_start Task_Kamaki
Task_Kamaki: @ 0x08064980
	push {r4, r5, r6, lr}
	ldr r0, _080649B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x2c
	adds r5, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080649C0
	ldr r1, _080649B4 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _080649B8 @ =0x03000014
	adds r1, r3, r2
	ldr r6, _080649BC @ =0x0300000A
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CE14
	b _080649D4
	.align 2, 0
_080649B0: .4byte gCurTask
_080649B4: .4byte 0x0300001C
_080649B8: .4byte 0x03000014
_080649BC: .4byte 0x0300000A
_080649C0:
	ldr r1, _080649E8 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _080649EC @ =0x03000014
	adds r1, r3, r2
	ldr r6, _080649F0 @ =0x0300000A
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
_080649D4:
	adds r0, r4, #0
	bl sub_8065104
	cmp r0, #1
	bne _080649F8
	ldr r0, _080649F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064A48
	.align 2, 0
_080649E8: .4byte 0x0300001C
_080649EC: .4byte 0x03000014
_080649F0: .4byte 0x0300000A
_080649F4: .4byte gCurTask
_080649F8:
	adds r0, r4, #0
	bl sub_8065084
	adds r2, r0, #0
	ldr r0, _08064A50 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064A48
	cmp r1, #4
	beq _08064A48
	cmp r2, #0
	bne _08064A1C
	strh r2, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_08064A1C:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08064A48
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r2, _08064A54 @ =gUnknown_080D215C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	strh r0, [r4, #0x10]
	ldr r0, _08064A58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064A5C @ =sub_8064A60
	str r0, [r1, #8]
_08064A48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064A50: .4byte gUnknown_030008A0
_08064A54: .4byte gUnknown_080D215C
_08064A58: .4byte gCurTask
_08064A5C: .4byte sub_8064A60

	thumb_func_start sub_8064A60
sub_8064A60: @ 0x08064A60
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08064A8C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08064A9C
	ldr r1, _08064A90 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064A94 @ =0x03000014
	adds r1, r3, r2
	ldr r4, _08064A98 @ =0x0300000A
	adds r2, r3, r4
	subs r4, #3
	adds r3, r3, r4
	bl sub_805CE14
	b _08064AB0
	.align 2, 0
_08064A8C: .4byte gCurTask
_08064A90: .4byte 0x0300001C
_08064A94: .4byte 0x03000014
_08064A98: .4byte 0x0300000A
_08064A9C:
	ldr r1, _08064AC4 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064AC8 @ =0x03000014
	adds r1, r3, r2
	ldr r4, _08064ACC @ =0x0300000A
	adds r2, r3, r4
	subs r4, #3
	adds r3, r3, r4
	bl sub_805CD70
_08064AB0:
	adds r0, r5, #0
	bl sub_8065104
	cmp r0, #1
	bne _08064AD4
	ldr r0, _08064AD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064B3A
	.align 2, 0
_08064AC4: .4byte 0x0300001C
_08064AC8: .4byte 0x03000014
_08064ACC: .4byte 0x0300000A
_08064AD0: .4byte gCurTask
_08064AD4:
	adds r0, r5, #0
	bl sub_8065084
	adds r6, r0, #0
	ldr r0, _08064B44 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064B3A
	cmp r1, #4
	beq _08064B3A
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x61
	bne _08064B1A
	ldr r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	str r4, [sp]
	ldrb r4, [r5, #4]
	str r4, [sp, #4]
	bl sub_8064C18
_08064B1A:
	cmp r6, #0
	bne _08064B3A
	adds r1, r5, #0
	adds r1, #0x2c
	ldr r2, _08064B48 @ =gUnknown_080D215C
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r6, [r5, #0x10]
	ldr r0, _08064B4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064B50 @ =sub_8064B54
	str r0, [r1, #8]
_08064B3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064B44: .4byte gUnknown_030008A0
_08064B48: .4byte gUnknown_080D215C
_08064B4C: .4byte gCurTask
_08064B50: .4byte sub_8064B54

	thumb_func_start sub_8064B54
sub_8064B54: @ 0x08064B54
	push {r4, r5, lr}
	ldr r0, _08064B80 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08064B90
	ldr r1, _08064B84 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064B88 @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08064B8C @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CE14
	b _08064BA4
	.align 2, 0
_08064B80: .4byte gCurTask
_08064B84: .4byte 0x0300001C
_08064B88: .4byte 0x03000014
_08064B8C: .4byte 0x0300000A
_08064B90:
	ldr r1, _08064BB8 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064BBC @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08064BC0 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CD70
_08064BA4:
	adds r0, r4, #0
	bl sub_8065104
	cmp r0, #1
	bne _08064BC8
	ldr r0, _08064BC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064C02
	.align 2, 0
_08064BB8: .4byte 0x0300001C
_08064BBC: .4byte 0x03000014
_08064BC0: .4byte 0x0300000A
_08064BC4: .4byte gCurTask
_08064BC8:
	adds r0, r4, #0
	bl sub_8065084
	adds r3, r0, #0
	ldr r0, _08064C08 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064C02
	cmp r1, #4
	beq _08064C02
	cmp r3, #0
	bne _08064C02
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r2, _08064C0C @ =gUnknown_080D215C
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r3, [r4, #0xe]
	ldr r0, _08064C10 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064C14 @ =Task_Kamaki
	str r0, [r1, #8]
_08064C02:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064C08: .4byte gUnknown_030008A0
_08064C0C: .4byte gUnknown_080D215C
_08064C10: .4byte gCurTask
_08064C14: .4byte Task_Kamaki

	thumb_func_start sub_8064C18
sub_8064C18: @ 0x08064C18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r8, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _08064CA8 @ =sub_8064E10
	ldr r2, _08064CAC @ =0x00004040
	ldr r1, _08064CB0 @ =sub_80651BC
	str r1, [sp]
	movs r1, #0x98
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r1, #0
	strh r5, [r7, #2]
	strh r6, [r7, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
	strh r1, [r7, #0xe]
	strh r1, [r7, #6]
	strh r1, [r7, #8]
	mov r0, r8
	strb r0, [r7]
	ldr r0, _08064CB4 @ =gUnknown_080D217C
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #8
	ldr r2, _08064CB8 @ =0xFFFFF800
	adds r0, r1, r2
	add r0, sb
	str r0, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	add sb, r1
	mov r2, sb
	str r2, [r7, #0x18]
	mov r0, r8
	cmp r0, #0
	beq _08064CBC
	movs r0, #0x80
	lsls r0, r0, #6
	b _08064CBE
	.align 2, 0
_08064CA8: .4byte sub_8064E10
_08064CAC: .4byte 0x00004040
_08064CB0: .4byte sub_80651BC
_08064CB4: .4byte gUnknown_080D217C
_08064CB8: .4byte 0xFFFFF800
_08064CBC:
	ldr r0, _08064CFC @ =0xFFFFE000
_08064CBE:
	add r0, sl
	str r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r5, _08064D00 @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x94
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8064D04
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064CFC: .4byte 0xFFFFE000
_08064D00: .4byte 0x01000002

	thumb_func_start sub_8064D04
sub_8064D04: @ 0x08064D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	movs r0, #0x10
	str r3, [sp]
	bl VramMalloc
	mov r8, r0
	ldr r3, [sp]
	adds r1, r3, #0
	adds r1, #0x20
	adds r7, r3, #0
	adds r7, #0x38
	str r0, [r3, #0x38]
	ldr r2, _08064E08 @ =gUnknown_080D215C
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	add r8, r0
	ldrh r5, [r2, #0x18]
	strh r5, [r7, #0xc]
	ldrb r6, [r2, #0x1a]
	strb r6, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r4, _08064E0C @ =gUnknown_03001D10
	ldr r2, [r4]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r2, [r4, #4]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r4, #0x10
	mov sl, r4
	mov r0, sl
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	movs r0, #0x6a
	str r0, [r7, #8]
	subs r4, #0x11
	mov sb, r4
	str r4, [r7, #0x20]
	movs r0, #0
	strh r0, [r3, #0x20]
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	adds r0, r7, #0
	str r3, [sp]
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80BF44C
	ldr r3, [sp]
	adds r1, r3, #0
	adds r1, #0x2c
	adds r7, r3, #0
	adds r7, #0x68
	mov r2, r8
	str r2, [r3, #0x68]
	strh r5, [r7, #0xc]
	strb r6, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	ldr r5, _08064E0C @ =gUnknown_03001D10
	ldr r2, [r5]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x1c]
	asrs r0, r0, #8
	ldr r2, [r5, #4]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	mov r5, sl
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r0, #0x6b
	str r0, [r7, #8]
	mov r2, sb
	str r2, [r7, #0x20]
	strh r4, [r3, #0x2c]
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	adds r0, r7, #0
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064E08: .4byte gUnknown_080D215C
_08064E0C: .4byte gUnknown_03001D10

	thumb_func_start sub_8064E10
sub_8064E10: @ 0x08064E10
	push {r4, r5, lr}
	ldr r0, _08064E60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08064E64 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064E44
	cmp r1, #4
	beq _08064E44
	adds r0, r4, #0
	bl sub_8064F80
	ldrh r0, [r4, #6]
	adds r0, #0x40
	strh r0, [r4, #6]
	ldrh r0, [r4, #8]
	adds r0, #0x40
	strh r0, [r4, #8]
_08064E44:
	adds r0, r4, #0
	bl sub_8064EA0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8065164
	cmp r0, #1
	bne _08064E68
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E6E
	.align 2, 0
_08064E60: .4byte gCurTask
_08064E64: .4byte gUnknown_030008A0
_08064E68:
	adds r0, r4, #0
	bl sub_8064FCC
_08064E6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8065164
	cmp r0, #1
	bne _08064E82
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E88
_08064E82:
	adds r0, r4, #0
	bl sub_8065028
_08064E88:
	cmp r5, #2
	bne _08064E94
	ldr r0, _08064E9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064E9C: .4byte gCurTask

	thumb_func_start sub_8064EA0
sub_8064EA0: @ 0x08064EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	mov sl, r4
_08064EB2:
	mov r0, sl
	lsls r1, r0, #3
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r6, r0, #8
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r6, r6, r0
	adds r7, r5, #0
	adds r7, #0x68
	mov r1, sl
	cmp r1, #0
	bne _08064EE4
	subs r7, #0x30
_08064EE4:
	movs r0, #0
	mov sb, r0
_08064EE8:
	mov r1, sb
	cmp r1, #0
	bne _08064EF8
	ldr r0, _08064EF4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08064F02
	.align 2, 0
_08064EF4: .4byte gUnknown_030008A0
_08064EF8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08064F02:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064F4C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08064F50
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08064F50
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064F48
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08064F48:
	movs r0, #1
	b _08064F6E
	.align 2, 0
_08064F4C: .4byte gUnknown_030015C0
_08064F50:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _08064EE8
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bls _08064EB2
	movs r0, #0
_08064F6E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8064F80
sub_8064F80: @ 0x08064F80
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08064F98
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0xe]
	movs r3, #0xf8
	lsls r3, r3, #1
	b _08064FA2
_08064F98:
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2, #0xe]
	ldr r3, _08064FC8 @ =0xFFFFFE10
_08064FA2:
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r2, #0x18]
	adds r0, #0x80
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x10]
	subs r0, #0x80
	str r0, [r2, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x1c]
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08064FC8: .4byte 0xFFFFFE10

	thumb_func_start sub_8064FCC
sub_8064FCC: @ 0x08064FCC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x38
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065024 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x20
	ldrh r0, [r3, #6]
	strh r0, [r3, #0x20]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065024: .4byte gUnknown_03001D10

	thumb_func_start sub_8065028
sub_8065028: @ 0x08065028
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x68
	ldr r1, [r3, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065080 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x2c
	ldrh r0, [r3, #8]
	strh r0, [r3, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065080: .4byte gUnknown_03001D10

	thumb_func_start sub_8065084
sub_8065084: @ 0x08065084
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080650C4 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080650C4: .4byte gUnknown_03001D10

	thumb_func_start sub_80650C8
sub_80650C8: @ 0x080650C8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #8]
	str r0, [r1, #4]
	adds r0, r2, #0
	adds r0, #0x2c
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x10]
	ldr r3, [r2, #0x18]
	str r3, [r1, #0x14]
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _080650F0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r3, r4
	str r0, [r1, #0x14]
_080650F0:
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8065104
sub_8065104: @ 0x08065104
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80650C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0x14]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806512E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [sp, #0x14]
_0806512E:
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Kamaki
TaskDestructor_Kamaki: @ 0x08065150
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8065164
sub_8065164: @ 0x08065164
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x15
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r3, ip
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080651B0 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r2, r2, r0
	mov r0, ip
	adds r0, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r4, ip
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _080651AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080651B4
_080651AC:
	movs r0, #1
	b _080651B6
	.align 2, 0
_080651B0: .4byte gUnknown_03001D10
_080651B4:
	movs r0, #0
_080651B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80651BC
sub_80651BC: @ 0x080651BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0
