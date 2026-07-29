.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ Inputs:
@ R0 = EggChaserBoss
	thumb_func_start sub_80728B4
sub_80728B4: @ 0x080728B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r0, r6, r0
	str r0, [sp, #8]
	movs r1, #0xda
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #0xc]
	adds r4, r6, #0
	adds r4, #0xe0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r7, _08072B68 @ =gCamera
	ldr r1, [r7]
	subs r0, r0, r1
	subs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	adds r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	beq _0807293C
	b _08072A72
_0807293C:
	adds r4, r6, #0
	adds r4, #0x90
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
	movs r0, #0x48
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x4c
	adds r1, r1, r6
	mov r8, r1
_0807296A:
	lsls r2, r5, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0807296A
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A04
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_080729DE:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080729DE
_08072A04:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0 @ inline sub_80734EC ?
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A72
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08072A4C:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08072A4C
_08072A72:
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r4, _08072B68 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x12]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r1, sb
	ldr r0, [r1, #8]
	movs r7, #0x80
	lsls r7, r7, #3
	orrs r0, r7
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r5, _08072B7C @ =0xFFFFFBFF
	ands r0, r5
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08072AEC
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl DisplaySprite
_08072AEC:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r1, [sp, #8]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	subs r0, #0x5c
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	movs r5, #0
_08072B40:
	ldr r0, [sp, #0xc]
	bl DisplaySprite
	ldr r1, [sp, #0xc]
	ldrh r0, [r1, #0x10]
	adds r0, #8
	strh r0, [r1, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x16
	bls _08072B40
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072B68: .4byte gCamera
_08072B6C: .4byte gCurTask
_08072B70: .4byte 0x03000090
_08072B74: .4byte 0x030000B8
_08072B78: .4byte 0x03000048
_08072B7C: .4byte 0xFFFFFBFF

	@ Chaser
	thumb_func_start sub_8072B80
sub_8072B80: @ 0x08072B80
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r5, [r0]
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r3, r2, r4
	ldr r4, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r4, r6
	cmp r4, #0
	beq _08072BA0
	b _08072CFA
_08072BA0:
	ldrh r1, [r2, #0x34]
	cmp r1, #0x64
	beq _08072C50
	cmp r1, #0x64
	bgt _08072BBE
	cmp r1, #0xa
	beq _08072C1C
	cmp r1, #0xa
	bgt _08072BB8
	cmp r1, #0
	beq _08072BDA
	b _08072CFA
_08072BB8:
	cmp r1, #0x14
	beq _08072BEE
	b _08072CFA
_08072BBE:
	cmp r1, #0xc8
	bne _08072BC4
	b _08072CD0
_08072BC4:
	cmp r1, #0xc8
	bgt _08072BCE
	cmp r1, #0x96
	beq _08072C8C
	b _08072CFA
_08072BCE:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08072BD8
	b _08072CE0
_08072BD8:
	b _08072CFA
_08072BDA:
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #0x3c
	strh r0, [r2, #0x36]
	movs r0, #0x14
	strh r0, [r2, #0x34]
	b _08072CFA
_08072BEE:
	ldrh r0, [r2, #0x36]
	subs r0, #1
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08072BFC
	b _08072CFA
_08072BFC:
	adds r3, r2, #0
	adds r3, #0xe0
	ldr r0, _08072C18 @ =0x000004DA
	strh r0, [r3, #0xc]
	movs r1, #1
	strb r1, [r3, #0x1a]
	movs r4, #0x84
	lsls r4, r4, #1
	adds r3, r2, r4
	strh r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #0x1a]
	strh r1, [r2, #0x36]
	b _08072CDA
	.align 2, 0
_08072C18: .4byte 0x000004DA
_08072C1C:
	ldrh r0, [r2, #0x36]
	subs r0, #1
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072CFA
	ldr r0, [r2, #4]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	bge _08072C36
	rsbs r0, r0, #0
_08072C36:
	cmp r0, #0x64
	ble _08072C3E
	movs r0, #0x96
	b _08072C40
_08072C3E:
	movs r0, #0x64
_08072C40:
	strh r0, [r2, #0x34]
	ldr r0, _08072C4C @ =0x0000022F
	bl m4aSongNumStart
	b _08072CFA
	.align 2, 0
_08072C4C: .4byte 0x0000022F
_08072C50:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072C88 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	subs r0, #0x80
	str r0, [r2, #4]
	ldrh r0, [r2, #0x3e]
	adds r0, #0x10
	strh r0, [r2, #0x3e]
	lsls r0, r0, #0x10
	movs r1, #0xaa
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072CFA
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #1
	b _08072CD8
	.align 2, 0
_08072C88: .4byte 0x000003FF
_08072C8C:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072CC8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	ldr r1, _08072CCC @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r2, #0x3e]
	adds r0, #0x10
	strh r0, [r2, #0x3e]
	lsls r0, r0, #0x10
	movs r1, #0xaa
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072CFA
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #1
	b _08072CD8
	.align 2, 0
_08072CC8: .4byte 0x000003FF
_08072CCC: .4byte 0xFFFFFF00
_08072CD0:
	ldrb r0, [r3, #0x1a]
	cmp r0, #0
	bne _08072CFA
	movs r0, #0x1e
_08072CD8:
	strh r0, [r2, #0x36]
_08072CDA:
	movs r0, #0xa
	strh r0, [r2, #0x34]
	b _08072CFA
_08072CE0:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072D00 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	subs r0, #0x80
	str r0, [r2, #4]
_08072CFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072D00: .4byte 0x000003FF

	@ Chaser
	thumb_func_start sub_8072D04
sub_8072D04: @ 0x08072D04
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r6, #0x14]
	movs r5, #0
	ldr r7, _08072D9C @ =Player_800E67C
_08072D14:
	lsls r1, r5, #2
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x1c]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	adds r1, r7, #0
	bl SetPlayerCallback
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #4]
	ldr r0, _08072DA0 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08072D76
	adds r0, r4, #0
	bl _call_via_r7
_08072D76:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08072D14
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072D9C: .4byte Player_800E67C
_08072DA0: .4byte 0xFFFFFEFF

	thumb_func_start sub_8072DA4
sub_8072DA4: @ 0x08072DA4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08072E48
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08072DC0
	subs r0, #1
	strb r0, [r4, #0x12]
_08072DC0:
	ldr r0, _08072DD8 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08072DDC
	ldrb r0, [r4, #0x12]
	cmp r0, #4
	bne _08072DE8
	movs r0, #0x33
	bl sub_80299D4
	b _08072DE8
	.align 2, 0
_08072DD8: .4byte gStageData
_08072DDC:
	ldrb r0, [r4, #0x12]
	cmp r0, #3
	bne _08072DE8
	movs r0, #0x33
	bl sub_80299D4
_08072DE8:
	movs r0, #0xeb
	bl m4aSongNumStart
	bl PlayVoiceEggmanHit
	movs r0, #0x7a
	strb r0, [r4, #0x13]
	movs r0, #2
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r0, _08072E34 @ =0x000004DD
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _08072E38 @ =0x000004DE
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r1, _08072E3C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08072E48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08072E40
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08072E48
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _08072E48
	.align 2, 0
_08072E34: .4byte 0x000004DD
_08072E38: .4byte 0x000004DE
_08072E3C: .4byte gStageData
_08072E40:
	ldrb r1, [r4, #0x12]
	movs r0, #4
	bl sub_8027674
_08072E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateChaserPlatform
CreateChaserPlatform: @ 0x08072E50
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _08072EE4 @ =Task_48_8072EF0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08072EE8 @ =0x03000018
	adds r0, r0, r2
	mov r2, r8
	str r2, [r1]
	lsls r4, r4, #8
	str r4, [r1, #4]
	lsls r5, r5, #8
	str r5, [r1, #8]
	movs r3, #0
	strh r6, [r1, #0xc]
	strh r6, [r1, #0xe]
	strb r3, [r1, #0x10]
	strb r3, [r1, #0x11]
	strb r3, [r1, #0x13]
	movs r2, #0x98
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2]
	str r2, [r1, #0x40]
	movs r2, #0x9a
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2]
	str r2, [r1, #0x44]
	mov r2, r8
	ldr r1, [r2, #0x20]
	str r1, [r0]
	ldr r1, _08072EEC @ =0x000004DF @ ANIM_BOSS_5_FALLING_PLATFORM
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072EE4: .4byte Task_48_8072EF0
_08072EE8: .4byte 0x03000018
_08072EEC: .4byte 0x000004DF

	thumb_func_start Task_48_8072EF0
Task_48_8072EF0: @ 0x08072EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08072F88 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov sb, r0
	ldr r2, _08072F8C @ =0x03000018
	adds r2, r2, r1
	mov r8, r2
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08072F22
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r5, #8]
_08072F22:
	movs r6, #0
	ldr r0, _08072F90 @ =0x03000040
	adds r0, r0, r1
	mov sl, r0
	movs r7, #1
_08072F2C:
	lsls r0, r6, #2
	add r0, sl
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08072FAA
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldr r2, [r5, #8]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08072F98
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _08072F94 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r6
	bne _08072FAA
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08072F7A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08072FAA
_08072F7A:
	adds r0, r7, #0
	lsls r0, r6
	ldrb r1, [r5, #0x10]
	orrs r0, r1
	strb r0, [r5, #0x10]
	strb r7, [r5, #0x11]
	b _08072FAA
	.align 2, 0
_08072F88: .4byte gCurTask
_08072F8C: .4byte 0x03000018
_08072F90: .4byte 0x03000040
_08072F94: .4byte gStageData
_08072F98:
	ldr r0, _08072FD8 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r6
	bne _08072FAA
	adds r1, r7, #0
	lsls r1, r6
	ldrb r0, [r5, #0x10]
	bics r0, r1
	strb r0, [r5, #0x10]
_08072FAA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08072F2C
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	ldr r1, _08072FDC @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072FE4
	ldr r0, _08072FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08073026
	.align 2, 0
_08072FD8: .4byte gStageData
_08072FDC: .4byte gCamera
_08072FE0: .4byte gCurTask
_08072FE4:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08072FF0
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	bne _08072FF8
_08072FF0:
	mov r1, sb
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	bne _08073020
_08072FF8:
	ldr r1, [r5, #0x40]
	mov r0, r8
	bl ResolvePlayerSpriteCollision
	ldr r1, [r5, #0x44]
	mov r0, r8
	bl ResolvePlayerSpriteCollision
	movs r0, #0
	strb r0, [r5, #0x11]
	ldr r0, _08073038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807303C @ =Task_48_8073040
	str r0, [r1, #8]
	mov r2, sb
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	bne _08073020
	movs r0, #1
	strb r0, [r5, #0x13]
_08073020:
	adds r0, r5, #0
	bl sub_8073258
_08073026:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073038: .4byte gCurTask
_0807303C: .4byte Task_48_8073040

	thumb_func_start Task_48_8073040
Task_48_8073040: @ 0x08073040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08073160 @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r0, [r4]
	mov ip, r0
	movs r2, #0x9e
	lsls r2, r2, #1
	add r2, ip
	mov r8, r2
	ldr r3, _08073164 @ =0x03000018
	adds r3, r3, r7
	mov sb, r3
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08073078
	ldr r0, [r4, #8]
	movs r6, #0x80
	lsls r6, r6, #0xa
	adds r0, r0, r6
	str r0, [r4, #8]
_08073078:
	ldrh r0, [r4, #0xe]
	adds r0, #0x20
	strh r0, [r4, #0xe]
	movs r0, #0xe
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _08073092
	b _08073196
_08073092:
	mov r2, ip
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0807309E
	b _08073196
_0807309E:
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _08073196
	ldr r2, [r4, #4]
	asrs r1, r2, #8
	ldr r3, _08073168 @ =0x0300003C
	adds r0, r7, r3
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r3, r1, r5
	mov r6, ip
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xb0
	lsls r1, r1, #1
	add r1, ip
	movs r6, #0
	ldrsb r6, [r1, r6]
	adds r1, r0, r6
	mov sl, r2
	cmp r3, r1
	bgt _080730E6
	ldr r2, _0807316C @ =0x0300003E
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _080730FA
	cmp r3, r1
	blt _08073196
_080730E6:
	movs r0, #0xb1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r3
	blt _08073196
_080730FA:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	mov r1, sb
	adds r1, #0x25
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	mov r6, ip
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r3, r1
	bgt _08073132
	mov r0, sb
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _08073144
	cmp r3, r1
	blt _08073196
_08073132:
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	blt _08073196
_08073144:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	mov r2, ip
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	cmp sl, r0
	bge _08073174
	ldr r0, _08073170 @ =0x0000FE80
	b _08073178
	.align 2, 0
_08073160: .4byte gCurTask
_08073164: .4byte 0x03000018
_08073168: .4byte 0x0300003C
_0807316C: .4byte 0x0300003E
_08073170: .4byte 0x0000FE80
_08073174:
	movs r0, #0xc0
	lsls r0, r0, #1
_08073178:
	strh r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0x12]
	ldr r6, _080731BC @ =gCurTask
	ldr r1, [r6]
	ldr r0, _080731C0 @ =Task_48_80731DC
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073196
	mov r0, ip
	bl sub_8072DA4
_08073196:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r1, _080731C4 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080731C8
	ldr r0, _080731BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080731CE
	.align 2, 0
_080731BC: .4byte gCurTask
_080731C0: .4byte Task_48_80731DC
_080731C4: .4byte gCamera
_080731C8:
	adds r0, r4, #0
	bl sub_8073258
_080731CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_48_80731DC
Task_48_80731DC: @ 0x080731DC
	push {r4, lr}
	ldr r4, _0807323C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080731FC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2, #8]
_080731FC:
	ldrh r0, [r2, #0xe]
	adds r0, #0x20
	strh r0, [r2, #0xe]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	ldrb r1, [r2, #0x12]
	subs r3, r1, #1
	strb r3, [r2, #0x12]
	asrs r0, r0, #8
	ldr r1, _08073240 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08073244
	ldr r0, [r4]
	bl TaskDestroy
	b _08073252
	.align 2, 0
_0807323C: .4byte gCurTask
_08073240: .4byte gCamera
_08073244:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08073252
	adds r0, r2, #0
	bl sub_8073258
_08073252:
	pop {r4}
	pop {r0}
	bx r0

	@ Platforms
	thumb_func_start sub_8073258
sub_8073258: @ 0x08073258
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x18
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _08073290
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, _08073284 @ =gCamera
	ldr r1, [r2]
	subs r3, r0, r1
	strh r3, [r5, #0x10]
	ldr r0, _08073288 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807328C
	adds r0, r3, #1
	b _0807329A
	.align 2, 0
_08073284: .4byte gCamera
_08073288: .4byte gStageData
_0807328C:
	subs r0, r3, #1
	b _0807329A
_08073290:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, _080732C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
_0807329A:
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080732B8
	ldr r0, _080732C8 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080732BE
_080732B8:
	adds r0, r5, #0
	bl DisplaySprite
_080732BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080732C4: .4byte gCamera
_080732C8: .4byte gStageData

	@ void sub_80732CC(u8 *param0, s16 param1);
	thumb_func_start sub_80732CC
sub_80732CC: @ 0x080732CC
	push {r4, lr}
	ldr r1, _08073304 @ =gStageData
	adds r4, r1, #0
	adds r4, #0x88
	ldr r1, [r4]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0807330C
	movs r0, #0
	strb r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_8072D04
	ldr r1, [r4]
	ldr r0, _08073308 @ =Task_Chaser_80733CC
	str r0, [r1, #8]
	b _08073328
	.align 2, 0
_08073304: .4byte gStageData
_08073308: .4byte Task_Chaser_80733CC
_0807330C:
	cmp r1, #1
	blt _08073328
	cmp r1, #4
	bgt _08073328
	cmp r1, #3
	blt _08073328
	ldrb r1, [r3, #0x12]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08073328
	adds r0, r3, #0
	bl sub_8072DA4
_08073328:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_EggChaserBossInit
Task_EggChaserBossInit: @ 0x08073330
	push {r4, r5, lr}
	ldr r4, _08073350 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08073354
	adds r0, r2, #0
	bl TaskDestroy
	b _08073374
	.align 2, 0
_08073350: .4byte gCurTask
_08073354:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08073368
	ldr r1, [r4]
	ldr r0, _08073364 @ =Task_Chaser_8073380
	b _0807336C
	.align 2, 0
_08073364: .4byte Task_Chaser_8073380
_08073368:
	ldr r1, [r4]
	ldr r0, _0807337C @ =Task_Chaser_8071D68
_0807336C:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_80728B4
_08073374:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807337C: .4byte Task_Chaser_8071D68

	thumb_func_start Task_Chaser_8073380
Task_Chaser_8073380: @ 0x08073380
	push {r4, r5, lr}
	ldr r5, _080733A0 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080733A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080733C2
	.align 2, 0
_080733A0: .4byte gCurTask
_080733A4:
	adds r0, r4, #0
	bl sub_80728B4
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080733C2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080733C2
	ldr r1, [r5]
	ldr r0, _080733C8 @ =Task_Chaser_8071D68
	str r0, [r1, #8]
_080733C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080733C8: .4byte Task_Chaser_8071D68

	thumb_func_start Task_Chaser_80733CC
Task_Chaser_80733CC: @ 0x080733CC
	push {r4, lr}
	ldr r0, _08073410 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r2, [r0, #0x30]
	movs r1, #1
	strh r1, [r0, #0x32]
	strh r2, [r0, #0x14]
	ldr r1, _08073414 @ =Task_Chaser_80720E4
	str r1, [r4, #8]
	ldr r2, _08073418 @ =0x03000130
	adds r1, r3, r2
	ldr r2, [r1]
	ldr r1, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r1, r4
	str r1, [r2, #4]
	ldr r1, _0807341C @ =0x03000134
	adds r3, r3, r1
	ldr r2, [r3]
	ldr r1, [r2, #4]
	orrs r1, r4
	str r1, [r2, #4]
	bl sub_80728B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073410: .4byte gCurTask
_08073414: .4byte Task_Chaser_80720E4
_08073418: .4byte 0x03000130
_0807341C: .4byte 0x03000134

	thumb_func_start Task_Chaser_8073420
Task_Chaser_8073420: @ 0x08073420
	push {r4, lr}
	ldr r0, _08073454 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08073458 @ =0x03000130
	adds r1, r2, r3
	ldr r3, [r1]
	ldr r1, [r3, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r1, r4
	str r1, [r3, #4]
	ldr r1, _0807345C @ =0x03000134
	adds r2, r2, r1
	ldr r2, [r2]
	ldr r1, [r2, #4]
	orrs r1, r4
	str r1, [r2, #4]
	bl sub_80728B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073454: .4byte gCurTask
_08073458: .4byte 0x03000130
_0807345C: .4byte 0x03000134

	thumb_func_start TaskDestructor_EggChaserBoss
TaskDestructor_EggChaserBoss: @ 0x08073460
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08073478
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x20]
_08073478:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

@ Inputs:
@ R0 = EggChaserBoss
	thumb_func_start sub_8073480
sub_8073480: @ 0x08073480
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _080734E2
	adds r3, r4, #0
	adds r3, #0xe0
	ldr r1, [r4]
	asrs r1, r1, #8
	subs r1, #0x78
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r1, #0x78
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r3, r4, r1
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r1, [r4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
_080734E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

@ Inputs:
@ R0 = EggChaserBoss
	thumb_func_start sub_80734EC
sub_80734EC: @ 0x080734EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _08073564 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x90
	adds r6, r5, r0
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _08073556
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08073568 @ =0x030000B8
	adds r6, r5, r1
	movs r4, #0
	ldr r0, _0807356C @ =0x03000048
	adds r0, r0, r5
	mov r8, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08073532:
	lsls r2, r4, #3
	mov r1, r8
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08073532
_08073556:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073564: .4byte gCurTask
_08073568: .4byte 0x030000B8
_0807356C: .4byte 0x03000048

@ Inputs:
@ R0 = EggChaserBoss
	thumb_func_start sub_8073570
sub_8073570: @ 0x08073570
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r0, _080735BC @ =gCamera
	ldr r0, [r0, #4]
	cmp r1, r0
	ble _080735B4
	ldr r4, _080735C0 @ =sEggChaserBossPlatformPositions
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r5, #0
	bl CreateChaserPlatform
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x24]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080735B4
	movs r0, #0
	strb r0, [r5, #0x1a]
_080735B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080735BC: .4byte gCamera
_080735C0: .4byte sEggChaserBossPlatformPositions

@ Inputs:
@ R0 = EggChaserBoss
	thumb_func_start sub_80735C4
sub_80735C4: @ 0x080735C4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080735FC
	ldrb r0, [r3, #0x12]
	movs r1, #9
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r3, #0x18]
	adds r0, r0, r2
	strh r0, [r3, #0x18]
	ldr r2, _08073600 @ =gSineTable
	ldr r1, _08073604 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3, #0x10]
_080735FC:
	pop {r0}
	bx r0
	.align 2, 0
_08073600: .4byte gSineTable
_08073604: .4byte 0x000003FF

@ Inputs:
@ R0 = EggChaserBoss
	thumb_func_start sub_8073608
sub_8073608: @ 0x08073608
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	asrs r2, r0, #8
	ldr r0, _08073620 @ =0x00000513
	cmp r2, r0
	ble _08073628
	ldr r1, _08073624 @ =gCamera
	adds r0, r2, #0
	subs r0, #0xa0
	b _0807362E
	.align 2, 0
_08073620: .4byte 0x00000513
_08073624: .4byte gCamera
_08073628:
	ldr r1, _0807363C @ =gCamera
	adds r0, r2, #0
	subs r0, #0xb4
_0807362E:
	str r0, [r1, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r0, #0x14
	str r0, [r1, #0x14]
	pop {r0}
	bx r0
	.align 2, 0
_0807363C: .4byte gCamera
