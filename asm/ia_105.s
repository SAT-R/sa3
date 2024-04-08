.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable105
CreateEntity_Interactable105: @ 0x0804381C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
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
	ldr r0, _08043904 @ =sub_8043918
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08043908 @ =sub_8043D84
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	movs r7, #0
	movs r1, #0
	mov sb, r1
	strh r5, [r2, #4]
	strh r6, [r2, #6]
	mov r0, sl
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r1, r8
	strb r1, [r2, #9]
	mov r1, sl
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
	ldr r0, _0804390C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _08043910 @ =gPlayers
	adds r0, r0, r3
	str r0, [r2, #0x10]
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
	str r0, [r2, #0x14]
	ldr r0, _08043914 @ =0x03000018
	adds r4, r4, r0
	movs r0, #1
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	adds r0, #0x9e
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	mov r1, sb
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043904: .4byte sub_8043918
_08043908: .4byte sub_8043D84
_0804390C: .4byte gUnknown_030008A0
_08043910: .4byte gPlayers
_08043914: .4byte 0x03000018

	thumb_func_start sub_8043918
sub_8043918: @ 0x08043918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	mov sb, r0
	ldr r1, _0804396C @ =gCurTask
	mov sl, r1
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r2, [r4]
	mov r8, r2
	ldrh r0, [r4, #0xa]
	lsls r6, r0, #0x10
	asrs r5, r6, #0x10
	ldrh r0, [r4, #0xc]
	str r0, [sp]
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	ldr r0, _08043970 @ =gCamera
	ldr r2, [r0]
	subs r2, r5, r2
	ldr r3, [r0, #4]
	subs r3, r1, r3
	adds r0, r5, #0
	bl sub_802C140
	cmp r0, #0
	bne _08043974
	ldrb r0, [r4, #8]
	mov r1, r8
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2]
	bl TaskDestroy
	b _080439EE
	.align 2, 0
_0804396C: .4byte gCurTask
_08043970: .4byte gCamera
_08043974:
	movs r3, #0
	ldr r0, _080439C8 @ =gUnknown_030008A0
	mov r8, r0
	ldr r1, _080439CC @ =0x03000010
	adds r4, r7, r1
	adds r2, r5, #0
_08043980:
	lsls r0, r3, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #8
	asrs r1, r0, #0x10
	adds r0, r1, #0
	subs r0, #0x28
	cmp r0, r2
	bge _0804399E
	adds r0, #0x50
	cmp r0, r2
	ble _0804399E
	movs r0, #1
	mov sb, r0
_0804399E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08043980
	mov r1, r8
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _080439D0
	mov r2, sb
	cmp r2, #0
	beq _080439D0
	asrs r0, r6, #0x10
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #2
	bl sub_8043AF8
	b _080439EA
	.align 2, 0
_080439C8: .4byte gUnknown_030008A0
_080439CC: .4byte 0x03000010
_080439D0:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080439EA
	asrs r0, r6, #0x10
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_8043AF8
_080439EA:
	bl sub_8043A00
_080439EE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8043A00
sub_8043A00: @ 0x08043A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08043AE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08043AE4 @ =0x03000018
	adds r5, r0, r2
	ldr r2, _08043AE8 @ =gCamera
	ldr r0, [r2]
	ldrh r4, [r1, #0xa]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, [r2, #4]
	ldrh r0, [r1, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08043AEC @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	lsls r0, r1, #3
	subs r7, r0, r1
	ldr r0, _08043AF0 @ =0x000003FF
	adds r2, r0, #0
	ands r7, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r1
	ands r6, r2
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	movs r3, #0
	movs r2, #0
	ldr r0, _08043AF4 @ =gUnknown_082B48B4
	mov sl, r0
	ldr r1, _08043AF0 @ =0x000003FF
	mov sb, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0xc]
_08043A68:
	adds r0, r7, r3
	mov r4, sb
	ands r0, r4
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #0xb
	ldr r4, [sp, #0xc]
	adds r0, r4, r0
	strh r0, [r5, #0x10]
	mov r1, r8
	adds r0, r6, r1
	mov r4, sb
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #0xe
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl DisplaySprite
	ldr r2, [sp, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [sp, #8]
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r2, #7
	bls _08043A68
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043AE0: .4byte gCurTask
_08043AE4: .4byte 0x03000018
_08043AE8: .4byte gCamera
_08043AEC: .4byte gUnknown_030008A0
_08043AF0: .4byte 0x000003FF
_08043AF4: .4byte gUnknown_082B48B4

	thumb_func_start sub_8043AF8
sub_8043AF8: @ 0x08043AF8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08043BB0 @ =sub_8043BC4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08043BB4 @ =sub_8043DE0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r5, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #8
	str r4, [r2]
	lsls r6, r6, #0x10
	asrs r6, r6, #8
	str r6, [r2, #4]
	ldr r0, _08043BB8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _08043BBC @ =gPlayers
	adds r0, r0, r3
	str r0, [r2, #0xc]
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
	str r0, [r2, #0x10]
	movs r4, #0
	strb r4, [r2, #8]
	movs r0, #9
	bl VramMalloc
	ldr r1, _08043BC0 @ =0x03000014
	adds r5, r5, r1
	str r0, [r5]
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	adds r0, #0x9e
	strh r0, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r1, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043BB0: .4byte sub_8043BC4
_08043BB4: .4byte sub_8043DE0
_08043BB8: .4byte gUnknown_030008A0
_08043BBC: .4byte gPlayers
_08043BC0: .4byte 0x03000014

	thumb_func_start sub_8043BC4
sub_8043BC4: @ 0x08043BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r5, _08043CC8 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x14
	adds r6, r1, r0
	movs r2, #0
	mov r8, r2
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	beq _08043CD4
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	mov sb, r0
	ldr r2, _08043CCC @ =0xFFF80000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r7, #0
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08043CE8
	ldr r5, [r4, #0xc]
	adds r3, r5, #0
	adds r3, #0x24
	ldrb r0, [r3]
	rsbs r0, r0, #0
	add r1, sp, #0x10
	strb r0, [r1]
	movs r0, #0x25
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	rsbs r0, r0, #0
	mov r2, sp
	adds r2, #0x11
	strb r0, [r2]
	ldrb r2, [r3]
	mov r0, sp
	adds r0, #0x12
	strb r2, [r0]
	mov r0, ip
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #0x13
	strb r2, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08043C82
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08043C82
	add r2, sp, #0xc
	str r2, [sp]
	str r5, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r7, #0
	mov r3, sb
	bl sub_8020A58
	cmp r0, #0
	beq _08043C82
	movs r2, #1
	mov r8, r2
	adds r0, r5, #0
	bl sub_8016D04
_08043C82:
	mov r0, r8
	cmp r0, #0
	bne _08043D50
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _08043CA2
	adds r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08043CA2
	mov r2, r8
	strb r2, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_08043CA2:
	ldr r2, _08043CD0 @ =gUnknown_030008A0
	ldrb r0, [r2, #4]
	cmp r0, #4
	beq _08043D2A
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #4]
	subs r1, #0xb0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	b _08043D14
	.align 2, 0
_08043CC8: .4byte gCurTask
_08043CCC: .4byte 0xFFF80000
_08043CD0: .4byte gUnknown_030008A0
_08043CD4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043CF0
_08043CE8:
	ldr r0, [r5]
	bl TaskDestroy
	b _08043D74
_08043CF0:
	ldr r2, _08043D5C @ =gUnknown_030008A0
	ldrb r0, [r2, #4]
	cmp r0, #4
	beq _08043D2A
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	ldr r1, [r4, #4]
	subs r1, #0xb0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
_08043D14:
	ldr r1, _08043D60 @ =0x000003FF
	ands r0, r1
	ldr r1, _08043D64 @ =gUnknown_082B48B4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_08043D2A:
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08043D68 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08043D70
_08043D50:
	ldr r0, _08043D6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08043D74
	.align 2, 0
_08043D5C: .4byte gUnknown_030008A0
_08043D60: .4byte 0x000003FF
_08043D64: .4byte gUnknown_082B48B4
_08043D68: .4byte gCamera
_08043D6C: .4byte gCurTask
_08043D70:
	bl sub_8043D98
_08043D74:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8043D84
sub_8043D84: @ 0x08043D84
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8043D98
sub_8043D98: @ 0x08043D98
	push {r4, lr}
	ldr r0, _08043DD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	ldr r0, _08043DD8 @ =0x03000014
	adds r4, r4, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08043DDC @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
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
_08043DD4: .4byte gCurTask
_08043DD8: .4byte 0x03000014
_08043DDC: .4byte gCamera

	thumb_func_start sub_8043DE0
sub_8043DE0: @ 0x08043DE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0
