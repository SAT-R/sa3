.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_806264C
sub_806264C: @ 0x0806264C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r6, r0, #0
	ldr r5, [sp, #0x64]
	str r1, [r6]
	ldrb r0, [r1]
	movs r4, #0
	strb r0, [r6, #5]
	strb r5, [r6, #4]
	movs r5, #0
	strh r2, [r6, #0x14]
	strh r3, [r6, #0x16]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r6, #0x64]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r6, #0x68]
	str r2, [r6, #0x5c]
	str r0, [r6, #0x60]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	strb r5, [r6, #7]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r4, [r0]
	movs r0, #3
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x5c]
	adds r2, r2, r0
	str r2, [r6, #0x24]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x28]
	movs r0, #4
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x60]
	adds r2, r2, r0
	str r2, [r6, #0x34]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x38]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	str r0, [r6, #0x2c]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	ldrb r1, [r1, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080626CA
	movs r0, #0xff
	b _080626CC
_080626CA:
	movs r0, #1
_080626CC:
	strb r0, [r6, #8]
	movs r3, #0
	movs r0, #0xa
	adds r0, r0, r6
	mov r8, r0
	adds r1, r6, #0
	adds r1, #0xa4
	str r1, [sp, #0x18]
	movs r0, #2
	add r0, sp
	mov sb, r0
	adds r1, #0x30
	str r1, [sp, #0x40]
	add r0, sp, #4
	mov sl, r0
	mov r1, sp
	adds r1, #6
	str r1, [sp, #0x1c]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	adds r0, r6, #0
	adds r0, #0x9c
	str r0, [sp, #0x14]
	adds r1, #2
	str r1, [sp, #0x2c]
	adds r0, #0x30
	str r0, [sp, #0x3c]
	adds r1, #2
	str r1, [sp, #0x30]
	adds r0, #0x30
	str r0, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x34]
	mov r0, sp
	adds r0, #0x12
	str r0, [sp, #0x38]
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r6, #0
	adds r5, #0x40
	mov r4, r8
	mov ip, r3
_08062726:
	lsls r1, r3, #3
	adds r2, r7, r1
	ldr r0, [r6, #0x5c]
	str r0, [r2]
	adds r1, r5, r1
	ldr r0, [r6, #0x60]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08062726
	lsls r0, r3, #1
	add r0, r8
	movs r4, #0
	strh r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r5, _080627FC @ =0x01000002
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sb
	strh r4, [r0]
	ldr r1, [sp, #0x40]
	adds r2, r5, #0
	bl sub_80C7520
	mov r1, sl
	strh r4, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r6, r0
	mov r0, sl
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x1c]
	strh r4, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x1c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x24]
	strh r4, [r1]
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x24]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x28]
	strh r4, [r1]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x2c]
	strh r4, [r0]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x30]
	strh r4, [r1]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x20]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x34]
	strh r4, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x34]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x38]
	strh r4, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x38]
	adds r2, r5, #0
	bl sub_80C7520
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080627FC: .4byte 0x01000002

	thumb_func_start sub_8062800
sub_8062800: @ 0x08062800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	adds r0, #0x6c
	str r0, [sp, #4]
	ldr r0, _0806298C @ =gUnknown_030008A0
	ldr r4, [r0, #0x1c]
	movs r0, #7
	ands r4, r0
	movs r0, #0x40
	bl VramMalloc
	adds r6, r0, #0
	mov r7, sl
	adds r7, #0xa8
	str r6, [r7]
	ldr r5, _08062990 @ =gUnknown_080D20C4
	ldr r0, [r5, #0xc]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5, #8]
	movs r1, #0
	mov r8, r1
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08062994 @ =gCamera
	mov sb, r0
	ldr r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	subs r7, #0x30
	mov r2, sl
	str r6, [r2, #0x78]
	ldr r0, [r5, #4]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	mov r0, sl
	ldr r1, [r0, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	mov r2, r8
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r7, #0x60
	str r6, [r7]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5, #0x10]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #0x12]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r0, sl
	ldr r1, [r0, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	mov r0, sl
	ldr r1, [r0, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	mov r2, r8
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0x84
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r6, r6, r4
	ldr r0, [sp]
	cmp r0, #0
	bne _08062998
	ldrh r0, [r5, #0x28]
	strh r0, [r7, #0xc]
	adds r0, r5, #0
	adds r0, #0x2a
	b _080629A4
	.align 2, 0
_0806298C: .4byte gUnknown_030008A0
_08062990: .4byte gUnknown_080D20C4
_08062994: .4byte gCamera
_08062998:
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r0, r5, #0
	adds r0, #0x42
_080629A4:
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08062A10 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r7, #0x10]
	mov r4, sl
	ldr r1, [r4, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	ldr r0, [sp]
	cmp r0, #0
	bne _08062A18
	ldr r0, _08062A14 @ =gUnknown_080D20C4
	ldrh r1, [r0, #0x28]
	strh r1, [r7, #0xc]
	adds r0, #0x2a
	b _08062A24
	.align 2, 0
_08062A10: .4byte gCamera
_08062A14: .4byte gUnknown_080D20C4
_08062A18:
	ldr r0, _08062A88 @ =gUnknown_080D20C4
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r7, #0xc]
	adds r0, #0x42
_08062A24:
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08062A8C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r7, #0x10]
	mov r4, sl
	ldr r1, [r4, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062A88: .4byte gUnknown_080D20C4
_08062A8C: .4byte gCamera

	thumb_func_start Task_Muukaden
Task_Muukaden: @ 0x08062A90
	push {r4, r5, lr}
	ldr r0, _08062AEC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062AF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062ACE
	cmp r1, #4
	beq _08062ACE
	ldr r0, _08062AF4 @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
_08062ACE:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062AF8
	ldr r0, _08062AEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062B88
	.align 2, 0
_08062AEC: .4byte gCurTask
_08062AF0: .4byte gUnknown_030008A0
_08062AF4: .4byte 0x03000064
_08062AF8:
	movs r4, #0
	b _08062B10
_08062AFC:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
_08062B10:
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062AFC
	ldrb r2, [r5, #7]
	adds r1, r2, #0
	movs r3, #0xa
	cmp r1, #0
	bne _08062B24
	movs r3, #5
_08062B24:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r3
	bls _08062B88
	movs r0, #0
	strh r0, [r5, #0x18]
	cmp r1, #5
	bne _08062B84
	ldr r0, [r5]
	ldrb r0, [r0, #7]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08062B54
	movs r1, #8
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08062B5C
	b _08062B70
_08062B54:
	movs r0, #8
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08062B70
_08062B5C:
	ldr r0, _08062B68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B6C @ =sub_8062B90
	str r0, [r1, #8]
	b _08062B88
	.align 2, 0
_08062B68: .4byte gCurTask
_08062B6C: .4byte sub_8062B90
_08062B70:
	ldr r0, _08062B7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B80 @ =Task_8062C4C
	str r0, [r1, #8]
	b _08062B88
	.align 2, 0
_08062B7C: .4byte gCurTask
_08062B80: .4byte Task_8062C4C
_08062B84:
	adds r0, r2, #1
	strb r0, [r5, #7]
_08062B88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8062B90
sub_8062B90: @ 0x08062B90
	push {r4, r5, r6, lr}
	ldr r0, _08062C14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062C18 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062BF8
	cmp r1, #4
	beq _08062BF8
	ldr r0, _08062C1C @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
	movs r4, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r6, r0
	bge _08062BF8
_08062BDA:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
	adds r6, r0, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062BDA
_08062BF8:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062C20
	ldr r0, _08062C14 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062C3E
	.align 2, 0
_08062C14: .4byte gCurTask
_08062C18: .4byte gUnknown_030008A0
_08062C1C: .4byte 0x03000064
_08062C20:
	ldr r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	cmp r6, #1
	bne _08062C3E
	movs r0, #0xff
	strb r0, [r5, #8]
	movs r0, #0
	strb r0, [r5, #7]
	ldr r0, _08062C44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062C48 @ =Task_Muukaden
	str r0, [r1, #8]
_08062C3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062C44: .4byte gCurTask
_08062C48: .4byte Task_Muukaden

	thumb_func_start Task_8062C4C
Task_8062C4C: @ 0x08062C4C
	push {r4, r5, r6, lr}
	ldr r0, _08062CD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062CD4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062CB4
	cmp r1, #4
	beq _08062CB4
	ldr r0, _08062CD8 @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
	movs r4, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r6, r0
	bge _08062CB4
_08062C96:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
	adds r6, r0, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062C96
_08062CB4:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062CDC
	ldr r0, _08062CD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062CEE
	.align 2, 0
_08062CD0: .4byte gCurTask
_08062CD4: .4byte gUnknown_030008A0
_08062CD8: .4byte 0x03000064
_08062CDC:
	cmp r6, #1
	bne _08062CEE
	movs r0, #0
	strb r6, [r5, #8]
	strb r0, [r5, #7]
	ldr r0, _08062CF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CF8 @ =Task_Muukaden
	str r0, [r1, #8]
_08062CEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CF4: .4byte gCurTask
_08062CF8: .4byte Task_Muukaden

	thumb_func_start sub_8062CFC
sub_8062CFC: @ 0x08062CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrh r0, [r7, #0x1a]
	adds r0, #1
	strh r0, [r7, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _08062D20
	b _08062EE6
_08062D20:
	adds r0, r7, #0
	bl sub_8063324
	str r0, [sp, #4]
	ldr r1, _08062DC4 @ =gUnknown_080D20C4
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1, #0x18]
	cmp r2, r3
	bne _08062D3A
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #0x1a]
	cmp r0, r3
	beq _08062D4A
_08062D3A:
	ldrh r0, [r1, #0x30]
	cmp r2, r0
	bne _08062D54
	adds r1, #0x32
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08062D54
_08062D4A:
	ldrh r0, [r7, #0x1a]
	cmp r0, #0xb3
	bls _08062D54
	movs r1, #0
	str r1, [sp, #4]
_08062D54:
	movs r2, #0
	mov sb, r2
	ldr r3, _08062DC4 @ =gUnknown_080D20C4
	mov r8, r3
	movs r0, #0x32
	add r0, r8
	mov sl, r0
_08062D62:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08062D6A
	b _08062ED6
_08062D6A:
	mov r2, sb
	cmp r2, #0
	beq _08062D76
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r4, r7, r3
_08062D76:
	ldr r1, _08062DC4 @ =gUnknown_080D20C4
	ldrh r0, [r4, #0xc]
	adds r5, r0, #0
	adds r2, r1, #0
	adds r6, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r5, r0
	bne _08062D94
	adds r3, r2, #0
	adds r3, #0x22
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	beq _08062DA8
_08062D94:
	ldrh r1, [r2, #0x38]
	cmp r5, r1
	bne _08062E1C
	adds r3, r2, #0
	adds r3, #0x3a
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	bne _08062E1C
_08062DA8:
	ldrh r3, [r2, #0x20]
	cmp r6, r3
	bne _08062DC8
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062DC8
	ldrh r0, [r2, #0x28]
	strh r0, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	b _08062DD4
	.align 2, 0
_08062DC4: .4byte gUnknown_080D20C4
_08062DC8:
	mov r0, r8
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r1, _08062DF8 @ =gUnknown_080D2106
	ldrb r0, [r1]
_08062DD4:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r2, sb
	cmp r2, #0
	beq _08062E00
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r1, r7, r3
	ldr r2, _08062DFC @ =0x01000002
	bl sub_80C7520
	b _08062E12
	.align 2, 0
_08062DF8: .4byte gUnknown_080D2106
_08062DFC: .4byte 0x01000002
_08062E00:
	mov r0, sp
	mov r1, sb
	strh r1, [r0]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, _08062E18 @ =0x01000002
	bl sub_80C7520
_08062E12:
	movs r0, #0
	strh r0, [r7, #0x1a]
	b _08062ED6
	.align 2, 0
_08062E18: .4byte 0x01000002
_08062E1C:
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	ldrh r3, [r2, #0x28]
	cmp r5, r3
	bne _08062E34
	adds r3, r2, #0
	adds r3, #0x2a
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	beq _08062E4A
_08062E34:
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r5, r0
	bne _08062E82
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldr r0, _08062E68 @ =gUnknown_080D2106
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062E82
_08062E4A:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2, #0x28]
	cmp r0, r3
	bne _08062E6C
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062E6C
	ldrh r0, [r2, #0x18]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #0x1a]
	b _08062E76
	.align 2, 0
_08062E68: .4byte gUnknown_080D2106
_08062E6C:
	mov r1, r8
	ldrh r0, [r1, #0x30]
	strh r0, [r4, #0xc]
	mov r2, sl
	ldrb r0, [r2]
_08062E76:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x3c
	strh r0, [r7, #0x1a]
	b _08062ED6
_08062E82:
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2, #0x18]
	cmp r3, r0
	bne _08062E96
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r0, [r2, #0x1a]
	cmp r1, r0
	beq _08062EA8
_08062E96:
	ldrh r1, [r2, #0x30]
	cmp r3, r1
	bne _08062ED6
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	mov r3, sl
	ldrb r3, [r3]
	cmp r1, r3
	bne _08062ED6
_08062EA8:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2, #0x30]
	cmp r0, r3
	bne _08062EC4
	mov r0, sl
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062EC4
	ldrh r0, [r2, #0x38]
	strh r0, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x3a
	b _08062ECE
_08062EC4:
	mov r1, r8
	ldrh r0, [r1, #0x20]
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x22
_08062ECE:
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08062ED6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi _08062EE6
	b _08062D62
_08062EE6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8062EF8
sub_8062EF8: @ 0x08062EF8
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r0, #0x6c
	movs r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08062F58
	mov r1, ip
	movs r0, #8
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	mov r2, ip
	ldr r0, [r2, #0x34]
	cmp r0, r1
	bgt _08062F2A
	mov r7, ip
	ldr r0, [r7, #0x38]
	cmp r0, r1
	bge _08062F30
_08062F2A:
	str r0, [r4, #4]
	movs r6, #1
	b _08062FA6
_08062F30:
	ldr r1, _08062F54 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	mov r3, ip
	adds r3, #0xa
	adds r3, r3, r0
	ldrh r2, [r3]
	lsrs r0, r2, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	mov r7, ip
	ldr r1, [r7, #0x5c]
	adds r1, r1, r0
	str r1, [r4]
	b _08062F9E
	.align 2, 0
_08062F54: .4byte gUnknown_082B48B4
_08062F58:
	mov r1, ip
	movs r0, #8
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r4]
	subs r1, r1, r0
	str r1, [r4]
	mov r2, ip
	ldr r0, [r2, #0x24]
	cmp r0, r1
	bgt _08062F76
	mov r7, ip
	ldr r0, [r7, #0x28]
	cmp r0, r1
	bge _08062F7C
_08062F76:
	str r0, [r4]
	movs r6, #1
	b _08062FA6
_08062F7C:
	ldr r1, _08062FB4 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	mov r3, ip
	adds r3, #0xa
	adds r3, r3, r0
	ldrh r2, [r3]
	lsrs r0, r2, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	mov r7, ip
	ldr r1, [r7, #0x60]
	adds r1, r1, r0
	str r1, [r4, #4]
_08062F9E:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3]
_08062FA6:
	cmp r6, #1
	bne _08062FB8
	cmp r5, #4
	bne _08062FB8
	movs r0, #1
	b _08062FBA
	.align 2, 0
_08062FB4: .4byte gUnknown_082B48B4
_08062FB8:
	movs r0, #0
_08062FBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8062FC0
sub_8062FC0: @ 0x08062FC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #3
	mov sb, r0
	b _0806308E
_08062FD6:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08063032
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	subs r2, r1, r0
	cmp r2, #0
	blt _08062FF8
	cmp r2, sb
	ble _08062FFE
	b _08063084
_08062FF8:
	subs r0, r0, r1
	cmp r0, sb
	bgt _08063084
_08062FFE:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08063020
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x64]
	adds r6, r1, #0
	cmp r0, r2
	ble _0806307A
	b _08063084
_08063020:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x64]
	adds r6, r1, #0
	cmp r0, r2
	blt _08063084
	b _0806307A
_08063032:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r3, r1, r0
	ldr r0, [r4, #0x64]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _0806304A
	cmp r2, sb
	ble _08063050
	b _08063084
_0806304A:
	subs r0, r0, r3
	cmp r0, sb
	bgt _08063084
_08063050:
	ldrh r2, [r7]
	cmp r2, #0
	beq _08063064
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	cmp r1, r0
	ble _0806307A
_08063064:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bne _08063084
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	cmp r1, r0
	blt _08063084
_0806307A:
	str r6, [r4, #0x1c]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x20]
	movs r0, #1
	b _080630A0
_08063084:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0806308E:
	mov r0, r8
	cmp r0, #1
	bhi _0806309E
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _08062FD6
_0806309E:
	movs r0, #0
_080630A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80630AC
sub_80630AC: @ 0x080630AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	ldrb r0, [r6, #7]
	subs r0, #1
	cmp sb, r0
	bge _08063182
	mov r8, sp
_080630C6:
	mov r1, sb
	cmp r1, #0
	beq _080630D2
	lsls r4, r1, #3
	cmp r1, #3
	bne _0806313C
_080630D2:
	mov r0, sb
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r7, r6, r0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r5, r6, r1
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r6, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
_0806313C:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r7, r6, r0
	adds r5, r6, #0
	adds r5, #0xa8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r0, [r6, #7]
	subs r0, #1
	cmp sb, r0
	blt _080630C6
_08063182:
	adds r7, r6, #0
	adds r7, #0x64
	adds r5, r6, #0
	adds r5, #0x78
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	ldr r2, _080631F4 @ =gCamera
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080631CC
	ldrh r0, [r5, #0x10]
	adds r0, #0xa
	strh r0, [r5, #0x10]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1, #0x12]
	adds r0, #0x1e
	strh r0, [r1, #0x12]
_080631CC:
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	mov r1, sp
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080631F4: .4byte gCamera

	thumb_func_start sub_80631F8
sub_80631F8: @ 0x080631F8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x6c
	adds r4, r2, #0
	adds r4, #0x78
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0806325C @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08063248
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_08063248:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806325C: .4byte gCamera

	thumb_func_start sub_8063260
sub_8063260: @ 0x08063260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x6c
	movs r0, #0
	mov sl, r0
	movs r7, #0
_08063276:
	cmp r7, sl
	bne _08063290
	adds r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r4, r5, #0
	adds r4, #0xd8
	mov r8, r4
	movs r2, #0xa8
	adds r2, r2, r5
	mov sb, r2
	b _0806329C
_08063290:
	adds r4, r5, #0
	adds r4, #0xa8
	movs r3, #0xd8
	adds r3, r3, r5
	mov r8, r3
	mov sb, r4
_0806329C:
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08063320 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080632F0
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
_080632F0:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08063276
	mov r4, r8
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r4, sb
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063320: .4byte gCamera

	thumb_func_start sub_8063324
sub_8063324: @ 0x08063324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r0, #0x6c
	str r0, [sp]
	movs r1, #0
	mov r8, r1
	mov sb, r1
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0806334E
	movs r0, #1
	mov sb, r0
_0806334E:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08063366
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08063366:
	adds r0, r6, #0
	adds r0, #0x3c
	str r0, [sp, #4]
	movs r1, #0x40
	adds r1, r1, r6
	mov sl, r1
	ldr r7, _080633E8 @ =gCamera
_08063374:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r2, r6, r0
	mov r1, r8
	lsls r4, r1, #3
	ldr r0, [sp, #4]
	adds r5, r0, r4
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	add r4, sl
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r2, r6, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r5, r1, r0
	strh r5, [r2, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r3, r1, r0
	strh r3, [r2, #0x12]
	ldr r1, [sp]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080633EC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r5, #1
	strh r0, [r2, #0x10]
	b _080633FA
	.align 2, 0
_080633E8: .4byte gCamera
_080633EC:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r3, #1
	strh r0, [r2, #0x12]
_080633FA:
	adds r0, r2, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08063374
	mov r0, sb
	cmp r0, #2
	beq _08063418
	movs r0, #1
	b _0806341A
_08063418:
	movs r0, #0
_0806341A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Muukaden_0
CreateEntity_Muukaden_0: @ 0x0806342C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08063498 @ =Task_Muukaden
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806349C @ =TaskDestructor_Muukaden
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_806264C
	adds r0, r4, #0
	movs r1, #0
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063498: .4byte Task_Muukaden
_0806349C: .4byte TaskDestructor_Muukaden

	thumb_func_start CreateEntity_Muukaden_1
CreateEntity_Muukaden_1: @ 0x080634A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806350C @ =Task_Muukaden
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08063510 @ =TaskDestructor_Muukaden
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_806264C
	adds r0, r4, #0
	movs r1, #1
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806350C: .4byte Task_Muukaden
_08063510: .4byte TaskDestructor_Muukaden

	thumb_func_start sub_8063514
sub_8063514: @ 0x08063514
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	cmp r2, #0
	beq _08063532
	cmp r2, #1
	beq _0806353E
	b _0806356C
_08063532:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r4, #8]
	strh r2, [r5]
	b _0806356C
_0806353E:
	cmp r0, #0
	beq _0806354C
	movs r1, #0x60
	orrs r1, r3
	adds r0, #0xa
	orrs r0, r1
	b _08063550
_0806354C:
	movs r0, #0x6a
	orrs r0, r3
_08063550:
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	ldrh r1, [r4, #0x10]
	strh r1, [r5, #6]
	ldrh r1, [r4, #0x12]
	strh r1, [r5, #8]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_0806356C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063574
sub_8063574: @ 0x08063574
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x14]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x16]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_806359C
sub_806359C: @ 0x0806359C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080635BE
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635B6
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	b _080635D8
_080635B6:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _080635D8
_080635BE:
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635D0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080635D6
_080635D0:
	ldr r0, [r3, #8]
	ldr r1, _080635DC @ =0xFFFFFBFF
	ands r0, r1
_080635D6:
	str r0, [r3, #8]
_080635D8:
	pop {r0}
	bx r0
	.align 2, 0
_080635DC: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_Muukaden
TaskDestructor_Muukaden: @ 0x080635E0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080635F4 @ =0x030000A8
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080635F4: .4byte 0x030000A8
