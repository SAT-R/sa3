.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable107
CreateEntity_Interactable107: @ 0x0804472C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
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
	ldr r0, _080447E4 @ =sub_8044840
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080447E8 @ =sub_8044C34
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r2, #0xc0
	lsls r2, r2, #0x12
	add r2, sb
	movs r7, #0
	movs r0, #0
	mov sl, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r1, r8
	str r1, [r2]
	ldrb r0, [r1]
	strb r0, [r2, #8]
	strb r6, [r2, #9]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0xc]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	ldr r4, _080447EC @ =gStageData
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _080447F0 @ =gPlayers
	adds r0, r0, r3
	str r0, [r2, #0x18]
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
	str r0, [r2, #0x1c]
	strb r7, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, r8
	strb r0, [r1]
	ldr r5, _080447F4 @ =0x03000020
	add r5, sb
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5]
	ldrb r0, [r4, #0xa]
	cmp r0, #9
	bne _080447FC
	ldr r0, _080447F8 @ =0x000003E5
	b _080447FE
	.align 2, 0
_080447E4: .4byte sub_8044840
_080447E8: .4byte sub_8044C34
_080447EC: .4byte gStageData
_080447F0: .4byte gPlayers
_080447F4: .4byte 0x03000020
_080447F8: .4byte 0x000003E5
_080447FC:
	ldr r0, _0804483C @ =0x000003CE
_080447FE:
	strh r0, [r5, #0xc]
	strb r7, [r5, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
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
_0804483C: .4byte 0x000003CE

	thumb_func_start sub_8044840
sub_8044840: @ 0x08044840
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080448B8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4]
	mov sb, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl sub_8044AA0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl sub_8044AA0
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0804488E
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080448BC @ =sub_80448D8
	str r0, [r1, #8]
_0804488E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080448C0 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _080448C4
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _080448CC
	.align 2, 0
_080448B8: .4byte gCurTask
_080448BC: .4byte sub_80448D8
_080448C0: .4byte gCamera
_080448C4:
	strb r5, [r4, #0x16]
	adds r0, r4, #0
	bl sub_8044C00
_080448CC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80448D8
sub_80448D8: @ 0x080448D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08044974 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldr r5, [r6, #0xc]
	lsls r5, r5, #8
	lsrs r5, r5, #0x10
	ldr r4, [r6, #0x10]
	ldr r0, _08044978 @ =0xFFFFFE80
	adds r4, r4, r0
	str r4, [r6, #0x10]
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	ldr r0, [r6, #0x18]
	movs r1, #0
	bl sub_8044AA0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [r6, #0x1c]
	movs r1, #1
	bl sub_8044AA0
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	mov r8, r1
	ldr r0, _0804497C @ =0xFFF00000
	adds r4, r4, r0
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804494C
	ldr r0, _08044980 @ =0x0000FF80
	strh r0, [r6, #0x14]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08044984 @ =sub_80449A4
	str r0, [r1, #8]
_0804494C:
	ldr r0, _08044988 @ =gCamera
	ldr r2, [r0]
	subs r2, r5, r2
	ldr r3, [r0, #4]
	mov r1, r8
	subs r3, r1, r3
	adds r0, r5, #0
	bl sub_802C140
	cmp r0, #0
	bne _0804498C
	ldrb r0, [r6, #8]
	mov r1, sl
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08044994
	.align 2, 0
_08044974: .4byte gCurTask
_08044978: .4byte 0xFFFFFE80
_0804497C: .4byte 0xFFF00000
_08044980: .4byte 0x0000FF80
_08044984: .4byte sub_80449A4
_08044988: .4byte gCamera
_0804498C:
	strb r7, [r6, #0x16]
	adds r0, r6, #0
	bl sub_8044C00
_08044994:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80449A4
sub_80449A4: @ 0x080449A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080449E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	mov sb, r0
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	lsls r1, r1, #8
	movs r5, #0
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080449EC
	ldrh r0, [r4, #0x14]
	adds r0, #8
	b _080449F0
	.align 2, 0
_080449E8: .4byte gCurTask
_080449EC:
	ldrh r0, [r4, #0x14]
	subs r0, #8
_080449F0:
	strh r0, [r4, #0x14]
	movs r0, #0x14
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl sub_8044AA0
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl sub_8044AA0
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08044A8C
	movs r1, #0
	movs r2, #0x20
	adds r2, r2, r4
	mov r8, r2
	ldr r7, _08044A48 @ =gPlayers
_08044A34:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08044A4C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08044A50
	.align 2, 0
_08044A48: .4byte gPlayers
_08044A4C:
	ldr r0, _08044A84 @ =gStageData
	ldrb r1, [r0, #6]
_08044A50:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	mov r0, r8
	adds r1, r6, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08044A34
	ldrb r0, [r4, #8]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _08044A88 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044A94
	.align 2, 0
_08044A84: .4byte gStageData
_08044A88: .4byte gCurTask
_08044A8C:
	strb r5, [r4, #0x16]
	adds r0, r4, #0
	bl sub_8044C00
_08044A94:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044AA0
sub_8044AA0: @ 0x08044AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08044AE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x20
	adds r7, r1, r0
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	movs r1, #0
	mov sb, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08044AE8
	movs r0, #0
	b _08044BEE
	.align 2, 0
_08044AE4: .4byte gCurTask
_08044AE8:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044B02
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _08044B02
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08044B02:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	movs r5, #1
	str r5, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _08044B4C
	adds r1, r2, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, _08044B48 @ =0xFFFFFF00
	ands r0, r1
	subs r0, #1
	str r0, [r4, #0x14]
	adds r0, r5, #0
	mov r1, sl
	lsls r0, r1
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	b _08044BEC
	.align 2, 0
_08044B48: .4byte 0xFFFFFF00
_08044B4C:
	movs r5, #0x80
	lsls r5, r5, #0xa
	ands r5, r2
	cmp r5, #0
	beq _08044B6A
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
	b _08044BEC
_08044B6A:
	movs r3, #0x80
	lsls r3, r3, #0xb
	ands r3, r2
	cmp r3, #0
	beq _08044BA8
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08044B90
	strh r5, [r4, #0x18]
_08044B90:
	strh r5, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044BEC
	ldr r0, [r4, #0x10]
	ldr r1, _08044BA4 @ =0xFFFFFF00
	b _08044BE0
	.align 2, 0
_08044BA4: .4byte 0xFFFFFF00
_08044BA8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08044BEC
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08044BCE
	strh r3, [r4, #0x18]
_08044BCE:
	strh r3, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08044BEC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_08044BE0:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08044BEC:
	mov r0, sb
_08044BEE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8044C00
sub_8044C00: @ 0x08044C00
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x20
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08044C30 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044C30: .4byte gCamera

	thumb_func_start sub_8044C34
sub_8044C34: @ 0x08044C34
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0
