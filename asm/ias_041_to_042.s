.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_803163C
sub_803163C: @ 0x0803163C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080316D4 @ =sub_8031A80
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080316D8 @ =sub_8031A6C
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _080316DC @ =0x0300002C
	add r3, r8
	str r3, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sl
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r6, r0, #8
	str r6, [r7, #0xc]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r4, r0, #8
	str r4, [r7, #0x10]
	asrs r1, r6, #8
	asrs r2, r4, #8
	mov r0, sb
	mov r3, sl
	bl sub_804DC38
	strh r0, [r7, #0x28]
	ldr r3, _080316E0 @ =0x0300002B
	add r8, r3
	mov r1, sb
	mov r0, r8
	strb r1, [r0]
	movs r2, #0
	mov r3, sl
	ldrb r0, [r3, #7]
	movs r1, #1
	b _080316F4
	.align 2, 0
_080316D4: .4byte sub_8031A80
_080316D8: .4byte sub_8031A6C
_080316DC: .4byte 0x0300002C
_080316E0: .4byte 0x0300002B
_080316E4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bhi _080316FA
	mov r3, sl
	ldrb r0, [r3, #7]
	asrs r0, r2
_080316F4:
	ands r0, r1
	cmp r0, #0
	beq _080316E4
_080316FA:
	adds r0, r2, #1
	adds r1, r7, #0
	adds r1, #0x2a
	strb r0, [r1]
	mov r0, sl
	movs r2, #4
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0xb
	adds r2, r4, r2
	ldrb r3, [r0, #6]
	lsls r3, r3, #0xa
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xb
	adds r0, r6, r0
	mov r4, sl
	ldrb r1, [r4, #5]
	lsls r1, r1, #0xa
	str r3, [r7, #0x14]
	str r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r2, r2, r3
	str r2, [r7, #0x20]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r4]
	ldr r0, [sp, #4]
	bl sub_8031A94
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8031758
sub_8031758: @ 0x08031758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_803185C
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0803179C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _080317A0 @ =0x0300002C
	adds r7, r0, r2
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031836
	movs r6, #0
	mvns r1, r1
	mov r8, r1
	movs r0, #0x80
	lsls r0, r0, #0x14
	mov sl, r0
	ldr r1, _080317A4 @ =0x000002FF
	mov sb, r1
_0803178C:
	cmp r6, #0
	beq _080317A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080317AC
	.align 2, 0
_0803179C: .4byte gCurTask
_080317A0: .4byte 0x0300002C
_080317A4: .4byte 0x000002FF
_080317A8:
	ldr r0, _08031848 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080317AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803184C @ =gUnknown_030015C0
	adds r5, r0, r1
	mov r0, r8
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803181C
	movs r2, #0x1a
	ldrsh r4, [r5, r2]
	cmp r4, #0
	bge _080317D0
	rsbs r4, r4, #0
_080317D0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_80213B0
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	ldr r1, _08031850 @ =sub_800BC38
	bl sub_800D87C
	asrs r0, r4, #3
	adds r0, r4, r0
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _08031800
	strh r1, [r5, #0x1a]
_08031800:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, sb
	bgt _0803180E
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
_0803180E:
	ldrh r0, [r5, #0x1a]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	movs r1, #0xaa
	bl sub_8004E98
_0803181C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803178C
	ldr r0, _08031854 @ =0x0000036E
	strh r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	ldr r0, _08031858 @ =0x0000FFFF
	strh r0, [r7, #0x18]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08031836:
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08031848: .4byte gUnknown_030008A0
_0803184C: .4byte gUnknown_030015C0
_08031850: .4byte sub_800BC38
_08031854: .4byte 0x0000036E
_08031858: .4byte 0x0000FFFF

	thumb_func_start sub_803185C
sub_803185C: @ 0x0803185C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r5, #0
	ldr r0, _080318B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x2c
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [r7, #0xc]
	str r1, [sp, #4]
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl sub_804DD68
	ldr r0, [r7, #0xc]
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r7, #0x10]
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	mov r8, r5
_0803189C:
	mov r0, r8
	cmp r0, #0
	beq _080318B4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080318B8
	.align 2, 0
_080318B0: .4byte gCurTask
_080318B4:
	ldr r0, _0803196C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080318B8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08031970 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080318F8
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _080318F8
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, sb
	subs r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080318F8:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803194A
	movs r1, #0x1a
	ldrsh r6, [r4, r1]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, [r7, #0x10]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, sl
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803194A
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r6, r0
	ble _08031934
	movs r0, #0x80
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08031934:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0803194A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _0803189C
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803196C: .4byte gUnknown_030008A0
_08031970: .4byte gUnknown_030015C0

	thumb_func_start sub_8031974
sub_8031974: @ 0x08031974
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080319C8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r3, _080319CC @ =0x0300002C
	adds r5, r1, r3
	ldr r7, [r6]
	ldr r0, [r6, #0x1c]
	ldr r1, [r6, #0x20]
	ldr r2, [r6, #0xc]
	asrs r2, r2, #8
	ldr r4, _080319D0 @ =gUnknown_03001D10
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	movs r4, #0x10
	ldrsh r2, [r5, r4]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _080319D4
	ldrb r0, [r6, #0xa]
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _08031A0A
	.align 2, 0
_080319C8: .4byte gCurTask
_080319CC: .4byte 0x0300002C
_080319D0: .4byte gUnknown_03001D10
_080319D4:
	adds r0, r5, #0
	bl sub_80BF44C
	cmp r0, #0
	bne _08031A04
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _08031A04
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _080319FC @ =0x0000036E
	strh r0, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, #0x1a]
	ldr r0, _08031A00 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	b _08031A0A
	.align 2, 0
_080319FC: .4byte 0x0000036E
_08031A00: .4byte 0x0000FFFF
_08031A04:
	adds r0, r5, #0
	bl sub_80C033C
_08031A0A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable041
CreateEntity_Interactable041: @ 0x08031A14
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_803163C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable042
CreateEntity_Interactable042: @ 0x08031A40
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_803163C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8031A6C
sub_8031A6C: @ 0x08031A6C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8031A80
sub_8031A80: @ 0x08031A80
	push {lr}
	bl sub_8031758
	cmp r0, #1
	bne _08031A8E
	bl sub_8031974
_08031A8E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8031A94
sub_8031A94: @ 0x08031A94
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08031AD4 @ =0x0000036E
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
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031AD4: .4byte 0x0000036E
