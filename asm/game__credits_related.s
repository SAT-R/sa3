.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80A45B4
sub_80A45B4: @ 0x080A45B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080A45E0
	ldr r0, _080A45D8 @ =Task_80A7E24
	movs r1, #0x92
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A45DC @ =sub_80A7BFC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	b _080A45F4
	.align 2, 0
_080A45D8: .4byte Task_80A7E24
_080A45DC: .4byte sub_80A7BFC
_080A45E0:
	ldr r0, _080A4664 @ =Task_80A4DDC
	movs r1, #0x92
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A4668 @ =sub_80A7BFC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
_080A45F4:
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	str r4, [r5]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #0x16]
	strb r1, [r5, #0x18]
	strh r0, [r5, #0x1a]
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	movs r3, #0
	ldr r0, _080A466C @ =0x03000028
	adds r6, r2, r0
	movs r4, #0
	adds r0, #4
	adds r2, r2, r0
_080A4618:
	lsls r1, r3, #3
	adds r0, r6, r1
	str r4, [r0]
	adds r1, r2, r1
	str r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080A4618
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0x20]
	movs r4, #0
	str r4, [r5, #0x24]
	str r7, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_80A4678
	adds r0, r5, #0
	bl sub_80A4D6C
	ldr r1, _080A4670 @ =gBgSprites_Unknown1
	movs r0, #0x12
	strb r0, [r1, #1]
	ldr r1, _080A4674 @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x40
	strb r0, [r1, #7]
	ldr r0, [r5, #0x1c]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A4664: .4byte Task_80A4DDC
_080A4668: .4byte sub_80A7BFC
_080A466C: .4byte 0x03000028
_080A4670: .4byte gBgSprites_Unknown1
_080A4674: .4byte gBgSprites_Unknown2

	thumb_func_start sub_80A4678
sub_80A4678: @ 0x080A4678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r3, _080A46A0 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A46A8
	ldr r0, _080A46A4 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #2]
	b _080A46C2
	.align 2, 0
_080A46A0: .4byte gPlayers
_080A46A4: .4byte gCharacterSelectOrderLUT
_080A46A8:
	ldr r1, _080A4758 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
_080A46C2:
	str r0, [sp, #0x10]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r5, r3
	str r0, [sp]
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r5, r6
	str r0, [sp, #4]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r0, [sp, #8]
	movs r2, #0
	mov r8, r2
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x48
_080A46E6:
	ldr r3, [sp, #0xc]
	cmp r7, r3
	bne _080A46EE
	b _080A4818
_080A46EE:
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bne _080A46F6
	b _080A4818
_080A46F6:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sp
	ldr r4, [r0]
	adds r0, r5, #6
	add r0, r8
	strb r7, [r0]
	ldr r0, [r5, #0x1c]
	str r0, [r4]
	ldr r0, _080A475C @ =gUnknown_080D99D0
	lsls r2, r7, #1
	mov ip, r2
	add r0, ip
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, _080A4760 @ =gUnknown_080D9B5C
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A4768
	mov r3, r8
	lsls r2, r3, #3
	adds r3, r5, #0
	adds r3, #0x28
	adds r0, r3, r2
	mov sb, r0
	ldr r0, _080A4764 @ =gUnknown_080D9B7E
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	mov r1, sb
	str r0, [r1]
	adds r1, r2, #0
	adds r2, r3, #0
	b _080A4786
	.align 2, 0
_080A4758: .4byte gCharacterSelectOrderLUT
_080A475C: .4byte gUnknown_080D99D0
_080A4760: .4byte gUnknown_080D9B5C
_080A4764: .4byte gUnknown_080D9B7E
_080A4768:
	mov r2, r8
	lsls r1, r2, #3
	adds r2, r5, #0
	adds r2, #0x28
	adds r3, r2, r1
	mov sb, r3
	ldr r0, _080A4900 @ =gUnknown_080D9B79
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r3, sb
	str r0, [r3]
_080A4786:
	adds r3, r2, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r1, sl
	strb r1, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	cmp r7, #4
	bne _080A47AE
	movs r0, #5
	strb r0, [r4, #0x1f]
_080A47AE:
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
	str r0, [r4, #8]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	cmp r7, #3
	bne _080A480E
	mov r1, r8
	strb r1, [r5, #5]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x48]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, _080A4904 @ =gUnknown_080D9B5C
	ldr r1, [r0, #0x14]
	ldrh r0, [r1]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r0, [r3]
	asrs r0, r0, #8
	subs r0, #0x12
	strh r0, [r6, #0x10]
	strh r2, [r6, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r2, [r6, #0xe]
	strh r2, [r6, #0x16]
	mov r2, sl
	strb r2, [r6, #0x1c]
	movs r3, #0
	strb r3, [r6, #0x1f]
	mov r0, sb
	str r0, [r6, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080A480E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A4818:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _080A4824
	b _080A46E6
_080A4824:
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r5, r1
	str r0, [sp]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r5, r2
	str r0, [sp, #4]
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r5, r3
	str r0, [sp, #8]
	movs r6, #0
	mov r8, r6
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x70
_080A4846:
	ldr r0, [sp, #0xc]
	cmp r7, r0
	beq _080A48E4
	ldr r1, [sp, #0x10]
	cmp r7, r1
	beq _080A48E4
	mov r2, r8
	lsls r0, r2, #2
	add r0, sp
	ldr r2, [r0]
	adds r0, r5, #0
	adds r0, #9
	add r0, r8
	movs r3, #0
	strb r7, [r0]
	ldr r0, [r5, #0x1c]
	str r0, [r2]
	ldr r1, _080A4908 @ =gUnknown_080D99D0
	mov r6, r8
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	movs r0, #0
	mov sb, r0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r1, #0x10
	mov ip, r1
	mov r6, ip
	strb r6, [r2, #0x1c]
	strb r7, [r2, #0x1f]
	cmp r7, #4
	bne _080A489A
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A489A:
	movs r6, #0x80
	lsls r6, r6, #3
	str r6, [r2, #8]
	cmp r7, #3
	bne _080A48DA
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x70]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, _080A4904 @ =gUnknown_080D9B5C
	ldr r1, [r0, #0x14]
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	mov r2, ip
	strb r2, [r4, #0x1c]
	mov r3, sb
	strb r3, [r4, #0x1f]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080A48DA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A48E4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _080A4846
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4900: .4byte gUnknown_080D9B79
_080A4904: .4byte gUnknown_080D9B5C
_080A4908: .4byte gUnknown_080D99D0

	thumb_func_start sub_80A490C
sub_80A490C: @ 0x080A490C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r3, _080A4940 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A4948
	ldr r0, _080A4944 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	str r1, [sp, #0x10]
	ldrb r0, [r0, #2]
	b _080A4962
	.align 2, 0
_080A4940: .4byte gPlayers
_080A4944: .4byte gCharacterSelectOrderLUT
_080A4948:
	ldr r1, _080A4980 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
_080A4962:
	str r0, [sp, #0x14]
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _080A4984
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0x88
	lsls r3, r3, #2
	b _080A4998
	.align 2, 0
_080A4980: .4byte gCharacterSelectOrderLUT
_080A4984:
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0xd4
	lsls r3, r3, #1
_080A4998:
	adds r0, r6, r3
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
	movs r5, #0
	ldr r1, _080A4A18 @ =gUnknown_080D9B5C
	mov sb, r1
	movs r7, #0
_080A49A8:
	ldr r2, [sp, #0x10]
	cmp r5, r2
	beq _080A4A6E
	ldr r3, [sp, #0x14]
	cmp r5, r3
	beq _080A4A6E
	mov r1, r8
	lsls r0, r1, #2
	add r0, sp
	ldr r4, [r0]
	lsls r1, r5, #2
	add r1, sb
	ldr r0, [r1]
	mov r3, sl
	lsls r2, r3, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A4A1C
	mov r0, sl
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080A4A1E
	subs r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A4A1C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
	b _080A4A1E
	.align 2, 0
_080A4A18: .4byte gUnknown_080D9B5C
_080A4A1C:
	str r1, [r4, #8]
_080A4A1E:
	cmp r5, #3
	bne _080A4A5E
	adds r1, r6, #0
	adds r1, #0x48
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _080A4A2E
	adds r1, #0x28
_080A4A2E:
	mov r3, sb
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
_080A4A5E:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A4A6E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080A49A8
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4A88
sub_80A4A88: @ 0x080A4A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	ldr r3, _080A4ABC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A4AC4
	ldr r0, _080A4AC0 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	str r1, [sp, #0x14]
	ldrb r0, [r0, #2]
	b _080A4ADE
	.align 2, 0
_080A4ABC: .4byte gPlayers
_080A4AC0: .4byte gCharacterSelectOrderLUT
_080A4AC4:
	ldr r1, _080A4AFC @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
_080A4ADE:
	mov sl, r0
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _080A4B00
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0x88
	lsls r3, r3, #2
	b _080A4B14
	.align 2, 0
_080A4AFC: .4byte gCharacterSelectOrderLUT
_080A4B00:
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	str r0, [sp]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #4]
	movs r3, #0xd4
	lsls r3, r3, #1
_080A4B14:
	adds r0, r6, r3
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
	movs r5, #0
	ldr r1, _080A4B88 @ =gUnknown_080D9B5C
	mov sb, r1
	movs r7, #0
_080A4B24:
	ldr r2, [sp, #0x14]
	cmp r5, r2
	beq _080A4BDC
	cmp r5, sl
	beq _080A4BDC
	mov r3, r8
	lsls r0, r3, #2
	add r0, sp
	ldr r4, [r0]
	lsls r1, r5, #2
	add r1, sb
	ldr r0, [r1]
	ldr r3, [sp, #0xc]
	lsls r2, r3, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	cmp r5, #4
	bne _080A4B6A
	movs r0, #5
	strb r0, [r4, #0x1f]
_080A4B6A:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A4B8C
	cmp r5, #1
	bhi _080A4B8C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
	b _080A4B8E
	.align 2, 0
_080A4B88: .4byte gUnknown_080D9B5C
_080A4B8C:
	str r1, [r4, #8]
_080A4B8E:
	cmp r5, #3
	bne _080A4BCC
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _080A4B9E
	adds r1, #0x28
_080A4B9E:
	mov r3, sb
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r7, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
_080A4BCC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A4BDC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080A4B24
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4BF8
sub_80A4BF8: @ 0x080A4BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	movs r4, #0xff
	ldr r3, _080A4C2C @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A4C34
	ldr r0, _080A4C30 @ =gCharacterSelectOrderLUT
	ldrb r5, [r0]
	ldrb r3, [r0, #2]
	b _080A4C4C
	.align 2, 0
_080A4C2C: .4byte gPlayers
_080A4C30: .4byte gCharacterSelectOrderLUT
_080A4C34:
	ldr r1, _080A4C70 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r3, [r0]
_080A4C4C:
	cmp r6, r3
	bne _080A4C52
	b _080A4D60
_080A4C52:
	mov r0, r8
	cmp r0, #0
	beq _080A4C74
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp]
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp, #4]
	movs r0, #0x88
	lsls r0, r0, #2
	b _080A4C88
	.align 2, 0
_080A4C70: .4byte gCharacterSelectOrderLUT
_080A4C74:
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp]
	movs r0, #0xc0
	lsls r0, r0, #1
	add r0, ip
	str r0, [sp, #4]
	movs r0, #0xd4
	lsls r0, r0, #1
_080A4C88:
	add r0, ip
	str r0, [sp, #8]
	movs r1, #0
	mov r2, ip
	adds r2, #9
_080A4C92:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, r6
	bne _080A4C9C
	adds r4, r1, #0
_080A4C9C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _080A4C92
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080A4D60
	cmp r6, r5
	beq _080A4D60
	cmp r6, r3
	beq _080A4D60
	lsls r0, r0, #2
	add r0, sp
	ldr r5, [r0]
	ldr r4, _080A4D14 @ =gUnknown_080D9B5C
	lsls r1, r6, #2
	adds r1, r1, r4
	ldr r0, [r1]
	lsls r2, r7, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r6, [r5, #0x1f]
	adds r7, r4, #0
	adds r4, r2, #0
	cmp r6, #4
	bne _080A4CF6
	movs r0, #5
	strb r0, [r5, #0x1f]
_080A4CF6:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	mov r2, ip
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A4D18
	cmp r6, #1
	bhi _080A4D18
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
	b _080A4D1A
	.align 2, 0
_080A4D14: .4byte gUnknown_080D9B5C
_080A4D18:
	str r1, [r5, #8]
_080A4D1A:
	cmp r6, #3
	bne _080A4D5A
	mov r3, ip
	adds r3, #0x48
	mov r0, r8
	cmp r0, #0
	beq _080A4D2A
	adds r3, #0x28
_080A4D2A:
	ldr r0, [r7, #0x14]
	adds r0, r4, r0
	ldrh r0, [r0]
	movs r2, #0
	movs r1, #0
	strh r0, [r3, #0xc]
	ldr r0, [r7, #0x14]
	adds r0, r4, r0
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r1, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
_080A4D5A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080A4D60:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4D6C
sub_80A4D6C: @ 0x080A4D6C
	push {r4, lr}
	mov ip, r0
	ldr r1, _080A4DC8 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080A4DCC @ =0x00004501
	strh r0, [r1, #2]
	ldr r1, _080A4DD0 @ =gBgScrollRegs
	mov r4, ip
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0xd8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A4DD4 @ =0x06002800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A4DD8 @ =0x00000131
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r1, #0xe2
	add r1, ip
	strb r3, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4DC8: .4byte gBgCntRegs
_080A4DCC: .4byte 0x00004501
_080A4DD0: .4byte gBgScrollRegs
_080A4DD4: .4byte 0x06002800
_080A4DD8: .4byte 0x00000131

	thumb_func_start Task_80A4DDC
Task_80A4DDC: @ 0x080A4DDC
	push {r4, lr}
	ldr r4, _080A4E20 @ =gDispCnt
	ldrh r2, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r2, r0
	ldr r1, _080A4E24 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3f
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r1, _080A4E28 @ =gBldRegs
	ldr r0, _080A4E2C @ =0x00003FFF
	strh r0, [r1]
	strh r3, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4]
	ldr r0, _080A4E30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A4E34 @ =Task_80A4E38
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4E20: .4byte gDispCnt
_080A4E24: .4byte gWinRegs
_080A4E28: .4byte gBldRegs
_080A4E2C: .4byte 0x00003FFF
_080A4E30: .4byte gCurTask
_080A4E34: .4byte Task_80A4E38

	thumb_func_start Task_80A4E38
Task_80A4E38: @ 0x080A4E38
	push {r4, lr}
	ldr r0, _080A4E6C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	ldr r1, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _080A4E96
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A4E74
	ldr r2, _080A4E70 @ =0xFFFFFE00
	b _080A4E86
	.align 2, 0
_080A4E6C: .4byte gCurTask
_080A4E70: .4byte 0xFFFFFE00
_080A4E74:
	cmp r0, #7
	bne _080A4E80
	ldr r2, _080A4E7C @ =0xFFFFFF00
	b _080A4E86
	.align 2, 0
_080A4E7C: .4byte 0xFFFFFF00
_080A4E80:
	cmp r0, #5
	bhi _080A4E8A
	ldr r2, _080A4EC8 @ =0xFFFFFDF0
_080A4E86:
	adds r0, r1, r2
	str r0, [r4, #0x20]
_080A4E8A:
	ldr r1, [r4, #0x20]
	ldr r0, _080A4ECC @ =0x000003FF
	cmp r1, r0
	bgt _080A4E96
	adds r0, #1
	str r0, [r4, #0x20]
_080A4E96:
	ldr r1, _080A4ED0 @ =gBgScrollRegs
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #9
	bne _080A4EC0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_80A490C
	ldr r0, _080A4ED4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A4ED8 @ =Task_80A7C00
	str r0, [r1, #8]
_080A4EC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4EC8: .4byte 0xFFFFFDF0
_080A4ECC: .4byte 0x000003FF
_080A4ED0: .4byte gBgScrollRegs
_080A4ED4: .4byte gCurTask
_080A4ED8: .4byte Task_80A7C00

	thumb_func_start Task_80A4EDC
Task_80A4EDC: @ 0x080A4EDC
	push {r4, r5, r6, lr}
	ldr r5, _080A4F58 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldrb r3, [r4, #0x18]
	cmp r3, #0
	bne _080A4F3A
	ldr r2, _080A4F5C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A4F60 @ =gWinRegs
	ldr r0, _080A4F64 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A4F68 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A4F6C @ =0x0000D1A0
	strh r0, [r1, #6]
	ldr r0, _080A4F70 @ =0x00001E3F
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A4F74 @ =gBldRegs
	ldr r0, _080A4F78 @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r4, #0x1a]
	movs r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0xa7
	lsls r0, r0, #2     @ SE_668
	bl m4aSongNumStart
_080A4F3A:
	ldr r2, _080A4F74 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _080A4F7C
	ldrh r0, [r4, #0x1a]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r6, [r4, #0x1a]
	adds r0, r0, r6
	strh r0, [r4, #0x1a]
	b _080A4F8A
	.align 2, 0
_080A4F58: .4byte gCurTask
_080A4F5C: .4byte gDispCnt
_080A4F60: .4byte gWinRegs
_080A4F64: .4byte 0x00008A5F
_080A4F68: .4byte 0x00005F8B
_080A4F6C: .4byte 0x0000D1A0
_080A4F70: .4byte 0x00001E3F
_080A4F74: .4byte gBldRegs
_080A4F78: .4byte 0x00003FBF
_080A4F7C:
	movs r1, #0
	movs r0, #0x10
	strh r0, [r2, #4]
	strb r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A4F90 @ =Task_80A4F94
	str r0, [r1, #8]
_080A4F8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4F90: .4byte Task_80A4F94

	thumb_func_start Task_80A4F94
Task_80A4F94: @ 0x080A4F94
	push {r4, r5, r6, lr}
	ldr r6, _080A5014 @ =gCurTask
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _080A4FEE
	ldr r2, _080A5018 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A501C @ =gWinRegs
	movs r4, #0
	ldr r0, _080A5020 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A5024 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A5028 @ =0x0000D1A0
	strh r0, [r1, #6]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A502C @ =gBldRegs
	ldr r0, _080A5030 @ =0x00002042
	strh r0, [r1]
	strh r4, [r1, #4]
	strh r4, [r5, #0x1a]
	strb r3, [r5, #0x18]
_080A4FEE:
	ldrh r0, [r5, #0x1a]
	lsrs r0, r0, #8
	cmp r0, #0x10
	bhi _080A5038
	strb r0, [r5, #4]
	ldr r2, _080A502C @ =gBldRegs
	ldr r1, _080A5034 @ =gUnknown_080D9B88
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r5, #0x1a]
	adds r0, r0, r3
	strh r0, [r5, #0x1a]
	b _080A5044
	.align 2, 0
_080A5014: .4byte gCurTask
_080A5018: .4byte gDispCnt
_080A501C: .4byte gWinRegs
_080A5020: .4byte 0x00008A5F
_080A5024: .4byte 0x00005F8B
_080A5028: .4byte 0x0000D1A0
_080A502C: .4byte gBldRegs
_080A5030: .4byte 0x00002042
_080A5034: .4byte gUnknown_080D9B88
_080A5038:
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #0x1a]
	ldr r1, [r6]
	ldr r0, _080A504C @ =Task_80A5050
	str r0, [r1, #8]
_080A5044:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A504C: .4byte Task_80A5050

	thumb_func_start Task_80A5050
Task_80A5050: @ 0x080A5050
	push {r4, lr}
	ldr r0, _080A507C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, _080A5080 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080A5088
	ldr r0, _080A5084 @ =gUnknown_080DA084
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl CopyBgPaletteMasked
	b _080A509E
	.align 2, 0
_080A507C: .4byte gCurTask
_080A5080: .4byte gFlags
_080A5084: .4byte gUnknown_080DA084
_080A5088:
	ldr r1, _080A50C8 @ =0x040000D4
	ldr r0, _080A50CC @ =gUnknown_080DA084
	str r0, [r1]
	ldr r0, _080A50D0 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _080A50D4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_080A509E:
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #0x10
	bne _080A50E0
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, _080A50D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A50DC @ =Task_80A51B4
	b _080A50EA
	.align 2, 0
_080A50C8: .4byte 0x040000D4
_080A50CC: .4byte gUnknown_080DA084
_080A50D0: .4byte gBgPalette
_080A50D4: .4byte 0x80000100
_080A50D8: .4byte gCurTask
_080A50DC: .4byte Task_80A51B4
_080A50E0:
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _080A50F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A50F8 @ =Task_80A50FC
_080A50EA:
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A50F4: .4byte gCurTask
_080A50F8: .4byte Task_80A50FC

	thumb_func_start Task_80A50FC
Task_80A50FC: @ 0x080A50FC
	push {r4, r5, r6, lr}
	ldr r5, _080A5178 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldrb r3, [r4, #0x18]
	cmp r3, #0
	bne _080A5152
	ldr r2, _080A517C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A5180 @ =gWinRegs
	ldr r0, _080A5184 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A5188 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A518C @ =0x0000D1A0
	strh r0, [r1, #6]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A5190 @ =gBldRegs
	ldr r0, _080A5194 @ =0x00002042
	strh r0, [r1]
	strh r3, [r1, #4]
	movs r0, #1
	strb r0, [r4, #0x18]
_080A5152:
	ldrh r0, [r4, #0x1a]
	lsrs r0, r0, #8
	adds r1, r0, #0
	cmp r1, #0
	beq _080A51A0
	strb r0, [r4, #4]
	ldr r2, _080A5190 @ =gBldRegs
	ldr r1, _080A5198 @ =gUnknown_080D9B88
	ldrb r0, [r4, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldr r1, _080A519C @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r6, [r4, #0x1a]
	adds r0, r0, r6
	strh r0, [r4, #0x1a]
	b _080A51A8
	.align 2, 0
_080A5178: .4byte gCurTask
_080A517C: .4byte gDispCnt
_080A5180: .4byte gWinRegs
_080A5184: .4byte 0x00008A5F
_080A5188: .4byte 0x00005F8B
_080A518C: .4byte 0x0000D1A0
_080A5190: .4byte gBldRegs
_080A5194: .4byte 0x00002042
_080A5198: .4byte gUnknown_080D9B88
_080A519C: .4byte 0xFFFFFE00
_080A51A0:
	strh r1, [r4, #0x1a]
	ldr r1, [r5]
	ldr r0, _080A51B0 @ =Task_80A51B4
	str r0, [r1, #8]
_080A51A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A51B0: .4byte Task_80A51B4

	thumb_func_start Task_80A51B4
Task_80A51B4: @ 0x080A51B4
	push {r4, lr}
	ldr r0, _080A5208 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A51D8
	adds r0, r4, #0
	bl sub_80A5698
_080A51D8:
	ldrb r0, [r4, #0x18]
	ldr r1, _080A520C @ =gBldRegs
	cmp r0, #0
	beq _080A524C
	ldr r2, _080A5210 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A5218
	ldr r1, _080A5214 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	strh r2, [r1, #2]
	strh r2, [r1, #6]
	b _080A522A
	.align 2, 0
_080A5208: .4byte gCurTask
_080A520C: .4byte gBldRegs
_080A5210: .4byte gDispCnt
_080A5214: .4byte gWinRegs
_080A5218:
	ldr r1, _080A5260 @ =gWinRegs
	ldr r0, _080A5264 @ =0x00008A5F
	strh r0, [r1]
	movs r0, #0x9f
	strh r0, [r1, #4]
	ldr r0, _080A5268 @ =0x00005F8B
	strh r0, [r1, #2]
	ldr r0, _080A526C @ =0x0000D1A0
	strh r0, [r1, #6]
_080A522A:
	adds r3, r1, #0
	ldr r0, _080A5270 @ =0x00001E3F
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r0, #0x1f
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #0xa]
	ldr r1, _080A5274 @ =gBldRegs
	ldr r0, _080A5278 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x1a]
	strb r2, [r4, #0x18]
_080A524C:
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A5298
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A5280
	ldr r2, _080A527C @ =0xFFFFFF00
	b _080A5282
	.align 2, 0
_080A5260: .4byte gWinRegs
_080A5264: .4byte 0x00008A5F
_080A5268: .4byte 0x00005F8B
_080A526C: .4byte 0x0000D1A0
_080A5270: .4byte 0x00001E3F
_080A5274: .4byte gBldRegs
_080A5278: .4byte 0x00003FBF
_080A527C: .4byte 0xFFFFFF00
_080A5280:
	ldr r2, _080A5294 @ =0xFFFFFE00
_080A5282:
	adds r0, r2, #0
	ldrh r3, [r4, #0x1a]
	adds r0, r0, r3
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	b _080A52CC
	.align 2, 0
_080A5294: .4byte 0xFFFFFE00
_080A5298:
	strh r0, [r4, #0x16]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A52B4
	ldr r0, _080A52AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A52B0 @ =sub_80A7D7C
	b _080A52CA
	.align 2, 0
_080A52AC: .4byte gCurTask
_080A52B0: .4byte sub_80A7D7C
_080A52B4:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_80A490C
	ldr r1, [r4]
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _080A52D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A52D8 @ =sub_80A7D00
_080A52CA:
	str r0, [r1, #8]
_080A52CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A52D4: .4byte gCurTask
_080A52D8: .4byte sub_80A7D00

	thumb_func_start Task_80A52DC
Task_80A52DC: @ 0x080A52DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r0, _080A537C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	movs r5, #0xff
	mov r8, r5
	mov sb, r5
	movs r2, #0
	adds r0, #9
	adds r1, r1, r0
_080A5300:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A530A
	adds r5, r2, #0
_080A530A:
	cmp r0, #4
	bne _080A5310
	mov r8, r2
_080A5310:
	cmp r0, #3
	bne _080A5316
	mov sb, r2
_080A5316:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080A5300
	adds r0, r4, #0
	bl sub_80A5824
	adds r0, r4, #0
	adds r0, #0xd8
	bl UpdateBgAnimationTiles
	ldrh r0, [r4, #0x16]
	cmp r0, #0x59
	bhi _080A5338
	adds r0, #1
	strh r0, [r4, #0x16]
_080A5338:
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r4, r1
	str r0, [sp]
	adds r1, #0x28
	adds r0, r4, r1
	str r0, [sp, #4]
	adds r1, #0x28
	adds r0, r4, r1
	str r0, [sp, #8]
	ldrh r0, [r4, #0x16]
	cmp r0, #9
	bne _080A5380
	lsls r1, r5, #0x18
	cmp r1, #0
	blt _080A53DE
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #1
	bl sub_80A4BF8
	b _080A53DE
	.align 2, 0
_080A537C: .4byte gCurTask
_080A5380:
	cmp r0, #0x3b
	bne _080A53B0
	mov r0, r8
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _080A53DE
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #4
	bl sub_80A4BF8
	b _080A53DE
_080A53B0:
	cmp r0, #0x59
	bne _080A53DE
	mov r0, sb
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _080A53DE
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #3
	bl sub_80A4BF8
_080A53DE:
	ldrh r0, [r4, #0x16]
	cmp r0, #9
	bls _080A544C
	lsls r0, r5, #0x18
	adds r5, r0, #0
	cmp r5, #0
	blt _080A53F8
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_80A555C
	cmp r0, #1
	bne _080A53FE
_080A53F8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A53FE:
	lsrs r2, r5, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	bne _080A5428
	lsls r0, r2, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A5428
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #1
	bl sub_80A4BF8
_080A5428:
	lsrs r1, r5, #0x18
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A544C
	lsls r0, r1, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A544C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #1
	bl sub_80A4BF8
_080A544C:
	ldrh r0, [r4, #0x16]
	cmp r0, #0x3b
	bls _080A54BC
	mov r1, r8
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	blt _080A5468
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_80A555C
	cmp r0, #1
	bne _080A546E
_080A5468:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A546E:
	lsrs r2, r5, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	bne _080A5498
	lsls r0, r2, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A5498
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #4
	bl sub_80A4BF8
_080A5498:
	lsrs r1, r5, #0x18
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A54BC
	lsls r0, r1, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A54BC
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #4
	bl sub_80A4BF8
_080A54BC:
	ldrh r0, [r4, #0x16]
	cmp r0, #0x59
	bls _080A552C
	mov r1, sb
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	blt _080A54D8
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_80A555C
	cmp r0, #1
	bne _080A54DE
_080A54D8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A54DE:
	lsrs r2, r5, #0x18
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	bne _080A5508
	lsls r0, r2, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A5508
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #3
	bl sub_80A4BF8
_080A5508:
	lsrs r1, r5, #0x18
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A552C
	lsls r0, r1, #1
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A552C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #3
	bl sub_80A4BF8
_080A552C:
	cmp r7, #3
	bne _080A5536
	ldr r1, [r4]
	movs r0, #0x16
	strb r0, [r1]
_080A5536:
	ldr r0, _080A5554 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080A5546
	ldr r0, _080A5558 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A5546:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5554: .4byte gBldRegs
_080A5558: .4byte gCurTask

	thumb_func_start sub_80A555C
sub_80A555C: @ 0x080A555C
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r1, r5, #1
	adds r0, #0x10
	adds r4, r0, r1
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r2, _080A55B4 @ =gUnknown_080D9BB2
	mov r1, ip
	adds r1, #0xc
	adds r3, r1, r5
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _080A559E
	movs r0, #0
	strh r0, [r4]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080A559E
	movs r0, #6
	strb r0, [r3]
_080A559E:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x28
	adds r3, r1, r0
	ldr r2, [r3]
	ldr r0, _080A55B8 @ =0xFFFFD800
	cmp r2, r0
	bgt _080A55BC
	movs r0, #1
	b _080A55D2
	.align 2, 0
_080A55B4: .4byte gUnknown_080D9BB2
_080A55B8: .4byte 0xFFFFD800
_080A55BC:
	ldr r1, _080A55D8 @ =gUnknown_080D9BAA
	mov r0, ip
	adds r0, #0xc
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r3]
	movs r0, #0
_080A55D2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A55D8: .4byte gUnknown_080D9BAA

	thumb_func_start sub_80A55DC
sub_80A55DC: @ 0x080A55DC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r6, #0
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bgt _080A55F0
	adds r0, #0x40
	str r0, [r3, #0x24]
	cmp r0, #0
	blt _080A55F4
_080A55F0:
	str r6, [r3, #0x24]
	movs r6, #1
_080A55F4:
	ldr r1, _080A5638 @ =gBgScrollRegs
	ldr r0, [r3, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r3, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	ldr r0, [r3, #0x44]
	subs r0, #0x40
	str r0, [r3, #0x44]
	cmp r0, #0
	bgt _080A5612
	movs r0, #0
	str r0, [r3, #0x44]
_080A5612:
	movs r4, #0
	adds r5, r3, #0
	adds r5, #0x2c
_080A5618:
	lsls r1, r4, #3
	adds r1, r5, r1
	ldr r2, [r3, #0x24]
	ldr r0, [r3, #0x44]
	subs r0, r0, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080A5618
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5638: .4byte gBgScrollRegs

	thumb_func_start sub_80A563C
sub_80A563C: @ 0x080A563C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r6, #0
	ldr r0, [r3, #0x24]
	ldr r1, _080A5690 @ =0xFFFFCC00
	cmp r0, r1
	blt _080A5652
	subs r0, #0x40
	str r0, [r3, #0x24]
	cmp r0, r1
	bgt _080A5656
_080A5652:
	str r1, [r3, #0x24]
	movs r6, #1
_080A5656:
	ldr r1, _080A5694 @ =gBgScrollRegs
	ldr r0, [r3, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r3, #0x24]
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r1, #6]
	ldr r0, [r3, #0x44]
	adds r0, #0x20
	str r0, [r3, #0x44]
	movs r4, #0
	adds r5, r3, #0
	adds r5, #0x2c
_080A5672:
	lsls r1, r4, #3
	adds r1, r5, r1
	ldr r2, [r3, #0x24]
	ldr r0, [r3, #0x44]
	subs r0, r0, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080A5672
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5690: .4byte 0xFFFFCC00
_080A5694: .4byte gBgScrollRegs

	thumb_func_start sub_80A5698
sub_80A5698: @ 0x080A5698
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r3, _080A56BC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A56C4
	ldr r0, _080A56C0 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r1, [r0, #2]
	b _080A56DC
	.align 2, 0
_080A56BC: .4byte gPlayers
_080A56C0: .4byte gCharacterSelectOrderLUT
_080A56C4:
	ldr r1, _080A580C @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
_080A56DC:
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r6, r3
	str r0, [sp]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r6, r4
	str r0, [sp, #4]
	adds r3, #0x50
	adds r0, r6, r3
	str r0, [sp, #8]
	movs r4, #0x28
	adds r4, r4, r6
	mov sb, r4
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	cmp r2, #3
	beq _080A5764
	cmp r1, #3
	beq _080A5764
	adds r4, r6, #0
	adds r4, #0x48
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r1, _080A5810 @ =gUnknown_080D9B1C
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1]
	cmp r2, r3
	bne _080A573C
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #2]
	cmp r0, r3
	beq _080A574C
_080A573C:
	ldrh r0, [r1, #0x28]
	cmp r2, r0
	bne _080A5758
	adds r1, #0x2a
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A5758
_080A574C:
	ldrh r0, [r4, #0x10]
	adds r0, #0x12
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A5758:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A5764:
	movs r7, #0
_080A5766:
	lsls r0, r7, #2
	add r0, sp
	ldr r4, [r0]
	ldr r0, [r6]
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #8
	bhi _080A57B6
	ldr r2, _080A5814 @ =gUnknown_080D9A1C
	ldrh r1, [r4, #0xc]
	ldrh r0, [r2]
	cmp r1, r0
	bne _080A5788
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	beq _080A57A8
_080A5788:
	ldr r2, _080A5818 @ =gUnknown_080D9ADC
	ldrh r0, [r2]
	cmp r1, r0
	bne _080A5798
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	beq _080A57A8
_080A5798:
	ldr r2, _080A581C @ =gUnknown_080D99DC
	ldrh r0, [r2]
	cmp r1, r0
	bne _080A57B6
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	bne _080A57B6
_080A57A8:
	ldrb r0, [r3]
	cmp r0, #5
	bls _080A57B6
	ldr r0, [r4, #8]
	ldr r1, _080A5820 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
_080A57B6:
	lsls r2, r7, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A57DE
	movs r0, #0x40
	strh r0, [r4, #0x14]
_080A57DE:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080A5766
	adds r0, r5, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A580C: .4byte gCharacterSelectOrderLUT
_080A5810: .4byte gUnknown_080D9B1C
_080A5814: .4byte gUnknown_080D9A1C
_080A5818: .4byte gUnknown_080D9ADC
_080A581C: .4byte gUnknown_080D99DC
_080A5820: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A5824
sub_80A5824: @ 0x080A5824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r3, _080A5848 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5850
	ldr r0, _080A584C @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r1, [r0, #2]
	b _080A5868
	.align 2, 0
_080A5848: .4byte gPlayers
_080A584C: .4byte gCharacterSelectOrderLUT
_080A5850:
	ldr r1, _080A594C @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
_080A5868:
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [sp]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r7, r4
	str r0, [sp, #4]
	adds r3, #0x50
	adds r0, r7, r3
	str r0, [sp, #8]
	movs r4, #0x28
	adds r4, r4, r7
	mov sb, r4
	movs r0, #0x2c
	adds r0, r0, r7
	mov r8, r0
	cmp r2, #3
	beq _080A58F0
	cmp r1, #3
	beq _080A58F0
	adds r4, r7, #0
	adds r4, #0x70
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r7, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r1, _080A5950 @ =gUnknown_080D9B1C
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1]
	cmp r2, r3
	bne _080A58C8
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #2]
	cmp r0, r3
	beq _080A58D8
_080A58C8:
	ldrh r0, [r1, #0x28]
	cmp r2, r0
	bne _080A58E4
	adds r1, #0x2a
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A58E4
_080A58D8:
	ldrh r0, [r4, #0x10]
	adds r0, #0x12
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A58E4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A58F0:
	movs r5, #0
_080A58F2:
	lsls r0, r5, #2
	add r0, sp
	ldr r4, [r0]
	lsls r2, r5, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r7, #0x20]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x12]
	ldr r0, [r7]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A5920
	movs r0, #0x40
	strh r0, [r4, #0x14]
_080A5920:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080A58F2
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A594C: .4byte gCharacterSelectOrderLUT
_080A5950: .4byte gUnknown_080D9B1C

	thumb_func_start CreatePreCreditsCutscene
CreatePreCreditsCutscene: @ 0x080A5954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _080A597C @ =gPlayers
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #5
	bls _080A5980
	movs r5, #0
	movs r6, #2
	b _080A598E
	.align 2, 0
_080A597C: .4byte gPlayers
_080A5980:
	lsrs r5, r1, #0x1c
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r6, r0, #0x1c
_080A598E:
	ldr r1, _080A59EC @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	cmp r7, #0
	beq _080A59FC
	movs r7, #0x10
	ldr r0, _080A59F0 @ =Task_150_PreCreditsCutsceneTrueEndingInit
	movs r1, #0xa8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A59F4 @ =TaskDestructor_PreCreditsCutscene
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldr r4, _080A59F8 @ =gPlayers
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r3, [r0]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r1, r3
	strb r1, [r0]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r1, [r0]
	ands r2, r1
	movs r1, #2
	orrs r2, r1
	strb r2, [r0]
	b _080A5A1C
	.align 2, 0
_080A59EC: .4byte gDispCnt
_080A59F0: .4byte Task_150_PreCreditsCutsceneTrueEndingInit
_080A59F4: .4byte TaskDestructor_PreCreditsCutscene
_080A59F8: .4byte gPlayers
_080A59FC:
	ldr r0, _080A5AE0 @ =Task_150_PreCreditsCutsceneNormalInit
	movs r1, #0xa8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A5AE4 @ =TaskDestructor_PreCreditsCutscene
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	bl m4aMPlayAllStop
	movs r0, #0x4e      @ MUS_78 @ Credits ?
	bl m4aSongNumStart
_080A5A1C:
	mov r0, r8
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	movs r1, #0
	mov sb, r1
	strb r7, [r4, #4]
	str r1, [r4]
	movs r5, #0
	mov r2, sb
	strh r2, [r4, #8]
	strb r5, [r4, #6]
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r4, #0x14]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r4, #0x18]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, sb
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	strb r5, [r4, #5]
	ldr r0, _080A5AE8 @ =0x00000CAC
	bl EwramMalloc
	ldr r1, _080A5AEC @ =0x0300014C
	adds r6, r6, r1
	str r0, [r6]
	mov r2, sb
	str r2, [sp, #4]
	ldr r3, _080A5AF0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r7, _080A5AF4 @ =gBgCntRegs
	ldrh r1, [r7, #4]
	movs r2, #0xc
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov ip, r1
	add r0, ip
	str r0, [r3, #4]
	ldr r0, _080A5AF8 @ =0x85000010
	mov sl, r0
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _080A5AFC @ =gBgSprites_Unknown1
	mov r8, r1
	strb r5, [r1, #2]
	ldr r1, _080A5B00 @ =gBgSprites_Unknown2
	strb r5, [r1, #8]
	strb r5, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r6, #0x40
	strb r6, [r1, #0xb]
	mov r0, sb
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [r3]
	ldrh r0, [r7, #2]
	ands r2, r0
	lsls r2, r2, #0xc
	add r2, ip
	str r2, [r3, #4]
	mov r2, sl
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0x12
	mov r2, r8
	strb r0, [r2, #1]
	strb r5, [r1, #4]
	strb r5, [r1, #5]
	subs r0, #0x13
	strb r0, [r1, #6]
	strb r6, [r1, #7]
	strb r5, [r2]
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r0, [r1, #2]
	strb r6, [r1, #3]
	ldr r0, _080A5B04 @ =0x06010000
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5AE0: .4byte Task_150_PreCreditsCutsceneNormalInit
_080A5AE4: .4byte TaskDestructor_PreCreditsCutscene
_080A5AE8: .4byte 0x00000CAC
_080A5AEC: .4byte 0x0300014C
_080A5AF0: .4byte 0x040000D4
_080A5AF4: .4byte gBgCntRegs
_080A5AF8: .4byte 0x85000010
_080A5AFC: .4byte gBgSprites_Unknown1
_080A5B00: .4byte gBgSprites_Unknown2
_080A5B04: .4byte 0x06010000

	thumb_func_start sub_80A5B08
sub_80A5B08: @ 0x080A5B08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, _080A5B30 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5B38
	ldr r0, _080A5B34 @ =gCharacterSelectOrderLUT
	ldrb r6, [r0]
	ldrb r5, [r0, #2]
	b _080A5B50
	.align 2, 0
_080A5B30: .4byte gPlayers
_080A5B34: .4byte gCharacterSelectOrderLUT
_080A5B38:
	ldr r1, _080A5CA4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r5, [r0]
_080A5B50:
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r0, [r4, #0xc]
	str r0, [r2]
	ldr r3, _080A5CA8 @ =gUnknown_080D9E68
	mov r8, r3
	lsls r1, r6, #2
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #5
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r3, [sp]
	adds r0, r0, r3
	str r0, [r4, #0xc]
	ldr r0, _080A5CAC @ =gUnknown_080D9E40
	mov sl, r0
	add r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	movs r7, #0
	strh r0, [r2, #0xc]
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	cmp r6, #4
	bne _080A5BAE
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A5BAE:
	str r7, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, [r4, #0xc]
	str r0, [r2]
	lsls r1, r5, #2
	mov r3, r8
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #5
	mov r8, r0
	ldr r0, [r4, #0xc]
	add r0, r8
	str r0, [r4, #0xc]
	add r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sb
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x80
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	strb r5, [r2, #0x1f]
	cmp r5, #4
	bne _080A5C0A
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A5C0A:
	str r7, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r4, #0xc]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0xfc
	str r0, [r1]
	ldr r0, [r4, #0xc]
	add r0, r8
	str r0, [r4, #0xc]
	cmp r6, #3
	beq _080A5C36
	cmp r5, #3
	bne _080A5C92
_080A5C36:
	movs r5, #0
	movs r2, #0x5c
	adds r2, r2, r4
	mov r8, r2
	mov r7, sl
	movs r3, #0
	mov sb, r3
	movs r6, #0
_080A5C46:
	mov r1, r8
	cmp r5, #0
	beq _080A5C50
	adds r1, r4, #0
	adds r1, #0x84
_080A5C50:
	ldr r0, [r4, #0xc]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0xc]
	ldr r0, [r7, #0x14]
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r0, [r7, #0x14]
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r3, sb
	strb r3, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #1
	bls _080A5C46
_080A5C92:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5CA4: .4byte gCharacterSelectOrderLUT
_080A5CA8: .4byte gUnknown_080D9E68
_080A5CAC: .4byte gUnknown_080D9E40

	thumb_func_start sub_80A5CB0
sub_80A5CB0: @ 0x080A5CB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r3, _080A5CE4 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5CEC
	ldr r0, _080A5CE8 @ =gCharacterSelectOrderLUT
	ldrb r1, [r0]
	mov r8, r1
	ldrb r6, [r0, #2]
	b _080A5D06
	.align 2, 0
_080A5CE4: .4byte gPlayers
_080A5CE8: .4byte gCharacterSelectOrderLUT
_080A5CEC:
	ldr r1, _080A5D4C @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A5D06:
	adds r4, r5, #0
	adds r4, #0xd4
	mov r3, sl
	cmp r3, #0
	beq _080A5D12
	subs r4, #0x28
_080A5D12:
	ldr r0, _080A5D50 @ =gUnknown_080D9E40
	mov r2, r8
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r3, sb
	lsls r2, r3, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x40
	strh r0, [r4, #0x14]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldrb r0, [r5, #4]
	adds r7, r2, #0
	cmp r0, #8
	bhi _080A5D54
	mov r0, r8
	b _080A5D56
	.align 2, 0
_080A5D4C: .4byte gCharacterSelectOrderLUT
_080A5D50: .4byte gUnknown_080D9E40
_080A5D54:
	movs r0, #0
_080A5D56:
	strb r0, [r4, #0x1f]
	movs r0, #0
	str r0, [r4, #8]
	mov r1, sb
	cmp r1, #5
	bhi _080A5D80
	mov r0, r8
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A5D7A
	ldrb r0, [r5, #4]
	cmp r0, #7
	bls _080A5D7A
	movs r0, #0x80
	lsls r0, r0, #3
	b _080A5D80
_080A5D7A:
	ldr r0, [r4, #8]
	ldr r1, _080A5D94 @ =0xFFFFFBFF
	ands r0, r1
_080A5D80:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r2, sl
	cmp r2, #0
	beq _080A5D98
	adds r3, r5, #0
	adds r3, #0xfc
	b _080A5D9E
	.align 2, 0
_080A5D94: .4byte 0xFFFFFBFF
_080A5D98:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r3, r5, r0
_080A5D9E:
	ldr r0, _080A5DD0 @ =gUnknown_080D9E40
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r7, r0
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A5DD4
	strb r6, [r3, #0x1f]
	b _080A5DD8
	.align 2, 0
_080A5DD0: .4byte gUnknown_080D9E40
_080A5DD4:
	movs r0, #0
	strb r0, [r3, #0x1f]
_080A5DD8:
	movs r0, #0
	str r0, [r3, #8]
	mov r1, sb
	cmp r1, #5
	bhi _080A5DF8
	subs r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A5E08
	ldrb r0, [r5, #4]
	cmp r0, #7
	bls _080A5E08
	movs r0, #0x80
	lsls r0, r0, #3
	b _080A5E0E
_080A5DF8:
	cmp r6, #3
	bne _080A5E08
	mov r2, sb
	cmp r2, #7
	bne _080A5E08
	movs r0, #0x80
	lsls r0, r0, #3
	b _080A5E0E
_080A5E08:
	ldr r0, [r3, #8]
	ldr r1, _080A5E6C @ =0xFFFFFBFF
	ands r0, r1
_080A5E0E:
	str r0, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	mov r3, r8
	cmp r3, #3
	beq _080A5E20
	cmp r6, #3
	bne _080A5E7C
_080A5E20:
	adds r3, r5, #0
	adds r3, #0x5c
	mov r0, sl
	cmp r0, #0
	beq _080A5E2C
	adds r3, #0x28
_080A5E2C:
	ldr r1, _080A5E70 @ =gUnknown_080D9E40
	ldr r0, [r1, #0x14]
	adds r0, r7, r0
	ldrh r0, [r0]
	movs r2, #0
	movs r4, #0
	strh r0, [r3, #0xc]
	ldr r0, [r1, #0x14]
	adds r0, r7, r0
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r4, [r3, #8]
	mov r1, sb
	cmp r1, #3
	bhi _080A5E74
	ldrb r0, [r5, #4]
	cmp r0, #7
	bls _080A5E74
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r3, #8]
	b _080A5E76
	.align 2, 0
_080A5E6C: .4byte 0xFFFFFBFF
_080A5E70: .4byte gUnknown_080D9E40
_080A5E74:
	str r4, [r3, #8]
_080A5E76:
	adds r0, r3, #0
	bl UpdateSpriteAnimation
_080A5E7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5E8C
sub_80A5E8C: @ 0x080A5E8C
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	adds r4, r3, #0
	adds r4, #0xd4
	cmp r2, #0
	beq _080A5EA0
	subs r4, #0x28
_080A5EA0:
	ldr r0, [r3, #0xc]
	str r0, [r4]
	ldr r0, _080A5EE8 @ =gUnknown_080D9E68
	ldr r1, [r0, #8]
	lsls r1, r1, #5
	ldr r0, [r3, #0xc]
	adds r0, r0, r1
	str r0, [r3, #0xc]
	ldr r3, _080A5EEC @ =gUnknown_080D9E40
	ldr r0, [r3, #8]
	lsls r1, r5, #3
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xc]
	ldr r0, [r3, #8]
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #2
	strb r0, [r4, #0x1f]
	str r2, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5EE8: .4byte gUnknown_080D9E68
_080A5EEC: .4byte gUnknown_080D9E40

	thumb_func_start sub_80A5EF0
sub_80A5EF0: @ 0x080A5EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r3, _080A5F20 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A5F28
	ldr r0, _080A5F24 @ =gCharacterSelectOrderLUT
	ldrb r5, [r0]
	ldrb r7, [r0, #2]
	b _080A5F40
	.align 2, 0
_080A5F20: .4byte gPlayers
_080A5F24: .4byte gCharacterSelectOrderLUT
_080A5F28:
	ldr r1, _080A5F84 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r7, [r0]
_080A5F40:
	adds r4, r6, #0
	adds r4, #0xd4
	mov r0, sl
	cmp r0, #0
	beq _080A5F4C
	subs r4, #0x28
_080A5F4C:
	ldr r0, _080A5F88 @ =gUnknown_080D9E40
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r2, sb
	lsls r3, r2, #3
	adds r0, r3, r0
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, r3, r0
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	mov r8, r3
	cmp r5, #0
	bne _080A5F8C
	mov r0, sb
	cmp r0, #0xa
	bne _080A5F8C
	movs r0, #0x20
	b _080A5F8E
	.align 2, 0
_080A5F84: .4byte gCharacterSelectOrderLUT
_080A5F88: .4byte gUnknown_080D9E40
_080A5F8C:
	movs r0, #0x10
_080A5F8E:
	strb r0, [r4, #0x1c]
	movs r1, #0
	strb r5, [r4, #0x1f]
	cmp r5, #4
	bne _080A5F9C
	movs r0, #5
	strb r0, [r4, #0x1f]
_080A5F9C:
	str r1, [r4, #8]
	cmp r5, #0
	bne _080A5FAC
	ldrb r0, [r6, #4]
	cmp r0, #0x12
	bls _080A5FB6
	str r5, [r4, #8]
	b _080A5FC0
_080A5FAC:
	cmp r5, #1
	bne _080A5FBE
	ldrb r0, [r6, #4]
	cmp r0, #0x13
	bhi _080A5FBE
_080A5FB6:
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #8]
	b _080A5FC0
_080A5FBE:
	str r1, [r4, #8]
_080A5FC0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r6, #4]
	cmp r0, #0x14
	bhi _080A5FD2
	mov r2, sb
	cmp r2, #0xa
	beq _080A607E
_080A5FD2:
	mov r0, sl
	cmp r0, #0
	beq _080A5FDE
	adds r2, r6, #0
	adds r2, #0xfc
	b _080A5FE4
_080A5FDE:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r6, r0
_080A5FE4:
	ldr r0, _080A602C @ =gUnknown_080D9E40
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	add r0, r8
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldr r0, [r1]
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r7, [r2, #0x1f]
	cmp r7, #4
	bne _080A6016
	movs r0, #5
	strb r0, [r2, #0x1f]
_080A6016:
	str r3, [r2, #8]
	ldrb r0, [r6, #4]
	cmp r0, #0x13
	bhi _080A6030
	cmp r7, #1
	bhi _080A6030
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r2, #8]
	b _080A6032
	.align 2, 0
_080A602C: .4byte gUnknown_080D9E40
_080A6030:
	str r3, [r2, #8]
_080A6032:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	cmp r5, #3
	beq _080A6040
	cmp r7, #3
	bne _080A607E
_080A6040:
	adds r4, r6, #0
	adds r4, #0x5c
	mov r2, sl
	cmp r2, #0
	beq _080A604C
	adds r4, #0x28
_080A604C:
	ldr r2, _080A608C @ =gUnknown_080D9E40
	ldr r0, [r2, #0x14]
	add r0, r8
	ldrh r0, [r0]
	movs r3, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	ldr r0, [r2, #0x14]
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080A607E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A608C: .4byte gUnknown_080D9E40

	thumb_func_start sub_80A6090
sub_80A6090: @ 0x080A6090
	push {r4, lr}
	ldr r4, _080A60D8 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80A6A5C
	ldr r2, _080A60DC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A60E0 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3f
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r1, _080A60E4 @ =gBldRegs
	ldr r0, _080A60E8 @ =0x00003FFF
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r1, [r4]
	ldr r0, _080A60EC @ =sub_80A60F0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A60D8: .4byte gCurTask
_080A60DC: .4byte gDispCnt
_080A60E0: .4byte gWinRegs
_080A60E4: .4byte gBldRegs
_080A60E8: .4byte 0x00003FFF
_080A60EC: .4byte sub_80A60F0

	thumb_func_start sub_80A60F0
sub_80A60F0: @ 0x080A60F0
	push {r4, r5, r6, lr}
	ldr r6, _080A616C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _080A6170 @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r5, #0
	bl sub_80A6A5C
	ldrb r0, [r5, #4]
	cmp r0, #6
	bne _080A6124
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
_080A6124:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	ldr r2, _080A6174 @ =gUnknown_080D9E58
	ldrb r1, [r5, #5]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	blo _080A6190
	movs r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #5]
	ldr r1, _080A6178 @ =gUnknown_080DA054
	ldrb r0, [r5, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r1, _080A617C @ =gUnknown_080D9BC0
	ldrb r0, [r5, #5]
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_80A5CB0
	cmp r4, #3
	bne _080A6184
	ldr r1, [r6]
	ldr r0, _080A6180 @ =sub_80A619C
	b _080A618E
	.align 2, 0
_080A616C: .4byte gCurTask
_080A6170: .4byte gPlayers
_080A6174: .4byte gUnknown_080D9E58
_080A6178: .4byte gUnknown_080DA054
_080A617C: .4byte gUnknown_080D9BC0
_080A6180: .4byte sub_80A619C
_080A6184:
	ldrb r0, [r5, #4]
	cmp r0, #7
	bne _080A6190
	ldr r1, [r6]
	ldr r0, _080A6198 @ =sub_80A6208
_080A618E:
	str r0, [r1, #8]
_080A6190:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6198: .4byte sub_80A6208

	thumb_func_start sub_80A619C
sub_80A619C: @ 0x080A619C
	push {r4, r5, r6, lr}
	ldr r6, _080A61F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _080A61FC @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #4
	bne _080A61D0
	ldr r1, _080A6200 @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A45B4
	str r0, [r4, #0xc]
	movs r0, #5
	strb r0, [r4, #4]
_080A61D0:
	ldrb r0, [r4, #4]
	cmp r0, #6
	bne _080A61F0
	movs r0, #0
	strh r0, [r4, #8]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_80A5CB0
	ldr r1, [r6]
	ldr r0, _080A6204 @ =sub_80A60F0
	str r0, [r1, #8]
_080A61F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A61F8: .4byte gCurTask
_080A61FC: .4byte gPlayers
_080A6200: .4byte 0x03000004
_080A6204: .4byte sub_80A60F0

	thumb_func_start sub_80A6208
sub_80A6208: @ 0x080A6208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080A6238 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	mov r8, r0
	ldr r3, _080A623C @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6244
	ldr r0, _080A6240 @ =gCharacterSelectOrderLUT
	ldrb r6, [r0]
	ldrb r7, [r0, #2]
	b _080A625C
	.align 2, 0
_080A6238: .4byte gCurTask
_080A623C: .4byte gPlayers
_080A6240: .4byte gCharacterSelectOrderLUT
_080A6244:
	ldr r1, _080A62AC @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r7, [r0]
_080A625C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80A6370
	cmp r0, #1
	bne _080A62CA
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r0, _080A62B0 @ =gUnknown_080D9BC0
	ldrb r3, [r0]
	ldr r1, _080A62B4 @ =gUnknown_080D9E40
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	lsls r3, r3, #3
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r2, #0xc]
	cmp r0, r1
	beq _080A62C0
	strh r1, [r2, #0xc]
	ldr r0, [r5]
	adds r0, r3, r0
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	subs r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A62B8
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A62BE
	.align 2, 0
_080A62AC: .4byte gCharacterSelectOrderLUT
_080A62B0: .4byte gUnknown_080D9BC0
_080A62B4: .4byte gUnknown_080D9E40
_080A62B8:
	ldr r0, [r2, #8]
	ldr r1, _080A6314 @ =0xFFFFFBFF
	ands r0, r1
_080A62BE:
	str r0, [r2, #8]
_080A62C0:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A62CA:
	adds r0, r4, #0
	bl sub_80A63FC
	cmp r0, #1
	bne _080A6332
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, _080A6318 @ =gUnknown_080D9BC0
	ldrb r3, [r0]
	ldr r1, _080A631C @ =gUnknown_080D9E40
	lsls r0, r7, #2
	adds r5, r0, r1
	ldr r0, [r5]
	lsls r3, r3, #3
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r2, #0xc]
	cmp r0, r1
	beq _080A6328
	strh r1, [r2, #0xc]
	ldr r0, [r5]
	adds r0, r3, r0
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	subs r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A6320
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A6326
	.align 2, 0
_080A6314: .4byte 0xFFFFFBFF
_080A6318: .4byte gUnknown_080D9BC0
_080A631C: .4byte gUnknown_080D9E40
_080A6320:
	ldr r0, [r2, #8]
	ldr r1, _080A6354 @ =0xFFFFFBFF
	ands r0, r1
_080A6326:
	str r0, [r2, #8]
_080A6328:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A6332:
	mov r2, r8
	cmp r2, #2
	bne _080A6360
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_80A5CB0
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldr r0, _080A6358 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A635C @ =sub_80A7F58
	str r0, [r1, #8]
	b _080A6366
	.align 2, 0
_080A6354: .4byte 0xFFFFFBFF
_080A6358: .4byte gCurTask
_080A635C: .4byte sub_80A7F58
_080A6360:
	adds r0, r4, #0
	bl sub_80A6A5C
_080A6366:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A6370
sub_80A6370: @ 0x080A6370
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xd4
	ldr r0, _080A638C @ =gPlayers
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6394
	ldr r0, _080A6390 @ =gCharacterSelectOrderLUT
	b _080A639A
	.align 2, 0
_080A638C: .4byte gPlayers
_080A6390: .4byte gCharacterSelectOrderLUT
_080A6394:
	ldr r1, _080A63C4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
_080A639A:
	ldrb r1, [r0]
	ldr r0, _080A63C8 @ =gUnknown_080D9B79
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r2, r0, #8
	ldr r0, [r3, #0x14]
	cmp r0, r2
	bge _080A63CC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #0x14]
	cmp r0, r2
	blt _080A63F4
	b _080A63E4
	.align 2, 0
_080A63C4: .4byte gCharacterSelectOrderLUT
_080A63C8: .4byte gUnknown_080D9B79
_080A63CC:
	cmp r0, r2
	ble _080A63E4
	ldr r0, [r4, #8]
	ldr r1, _080A63EC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x14]
	ldr r1, _080A63F0 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r3, #0x14]
	cmp r0, r2
	bgt _080A63F4
_080A63E4:
	str r2, [r3, #0x14]
	movs r0, #1
	b _080A63F6
	.align 2, 0
_080A63EC: .4byte 0xFFFFFBFF
_080A63F0: .4byte 0xFFFFFE00
_080A63F4:
	movs r0, #0
_080A63F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A63FC
sub_80A63FC: @ 0x080A63FC
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r3, r0
	ldr r1, _080A6444 @ =gCharacterSelectOrderLUT
	ldr r0, _080A6448 @ =gPlayers
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _080A644C @ =gUnknown_080D9B79
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r2, r0, #8
	ldr r0, [r3, #0x1c]
	cmp r0, r2
	bge _080A6450
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	cmp r0, r2
	blt _080A6478
	b _080A6468
	.align 2, 0
_080A6444: .4byte gCharacterSelectOrderLUT
_080A6448: .4byte gPlayers
_080A644C: .4byte gUnknown_080D9B79
_080A6450:
	cmp r0, r2
	ble _080A6468
	ldr r0, [r4, #8]
	ldr r1, _080A6470 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r3, #0x1c]
	ldr r1, _080A6474 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	cmp r0, r2
	bgt _080A6478
_080A6468:
	str r2, [r3, #0x1c]
	movs r0, #1
	b _080A647A
	.align 2, 0
_080A6470: .4byte 0xFFFFFBFF
_080A6474: .4byte 0xFFFFFF00
_080A6478:
	movs r0, #0
_080A647A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Task_150_PreCreditsCutsceneTrueEndingInit
Task_150_PreCreditsCutsceneTrueEndingInit: @ 0x080A6480
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080A64B8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r6, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080A6560
	ldr r3, _080A64BC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A64C4
	ldr r0, _080A64C0 @ =gCharacterSelectOrderLUT
	ldrb r6, [r0]
	ldrb r3, [r0, #2]
	b _080A64DC
	.align 2, 0
_080A64B8: .4byte gCurTask
_080A64BC: .4byte gPlayers
_080A64C0: .4byte gCharacterSelectOrderLUT
_080A64C4:
	ldr r1, _080A6554 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r3, [r0]
_080A64DC:
	ldr r2, _080A6558 @ =gUnknown_080D9B7E
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r1, #0xf2
	lsls r1, r1, #7
	str r1, [r4, #0x18]
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	bl sub_80A5B08
	adds r0, r4, #0
	adds r0, #0x34
	ldr r1, [r4, #0xc]
	str r1, [r4, #0x34]
	movs r7, #0xa0
	lsls r7, r7, #2
	adds r1, r1, r7
	str r1, [r4, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _080A655C @ =0x00000533
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	adds r1, #0xa
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #4
	ldr r1, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x14
	bl sub_80A828C
	str r0, [r4, #0xc]
	b _080A65B4
	.align 2, 0
_080A6554: .4byte gCharacterSelectOrderLUT
_080A6558: .4byte gUnknown_080D9B7E
_080A655C: .4byte 0x00000533
_080A6560:
	cmp r0, #1
	bne _080A6580
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_80A5EF0
	ldr r1, _080A657C @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A45B4
	str r0, [r4, #0xc]
	b _080A65B4
	.align 2, 0
_080A657C: .4byte 0x03000004
_080A6580:
	cmp r0, #2
	bne _080A65B4
	ldr r0, [r4, #0xc]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x5a
	rsbs r2, r2, #0
	ldr r7, _080A65AC @ =0x03000004
	adds r3, r5, r7
	str r3, [sp]
	movs r3, #0
	bl sub_80A9BD8
	str r0, [r4, #0xc]
	movs r0, #0
	strh r6, [r4, #8]
	strb r0, [r4, #6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080A65B0 @ =sub_80A65C8
	str r0, [r1, #8]
	b _080A65BA
	.align 2, 0
_080A65AC: .4byte 0x03000004
_080A65B0: .4byte sub_80A65C8
_080A65B4:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
_080A65BA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A65C8
sub_80A65C8: @ 0x080A65C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080A6638 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_80A6DD0
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	ldr r1, _080A663C @ =gUnknown_080D9E80
	ldrb r2, [r5, #6]
	adds r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _080A662A
	adds r0, r2, #1
	strb r0, [r5, #6]
	ldr r0, [r5, #0xc]
	ldr r4, _080A6640 @ =gUnknown_080D9E90
	ldrb r3, [r5, #6]
	lsls r2, r3, #3
	adds r1, r2, r4
	ldr r1, [r1]
	adds r4, #4
	adds r2, r2, r4
	ldr r2, [r2]
	ldr r7, _080A6644 @ =0x03000004
	adds r4, r6, r7
	str r4, [sp]
	bl sub_80A9BD8
	str r0, [r5, #0xc]
	ldrb r0, [r5, #6]
	cmp r0, #0xc
	bls _080A662A
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080A6648 @ =sub_80A6768
	str r0, [r1, #8]
_080A662A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6638: .4byte gCurTask
_080A663C: .4byte gUnknown_080D9E80
_080A6640: .4byte gUnknown_080D9E90
_080A6644: .4byte 0x03000004
_080A6648: .4byte sub_80A6768

	thumb_func_start sub_80A664C
sub_80A664C: @ 0x080A664C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080A66EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80A6A5C
	ldrb r0, [r5, #4]
	cmp r0, #0xe
	bne _080A6690
	ldr r0, [r5, #0x30]
	subs r0, #0x40
	str r0, [r5, #0x30]
	cmp r0, #0
	bgt _080A667A
	movs r0, #0
	str r0, [r5, #0x30]
_080A667A:
	ldr r1, [r5, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, _080A66F0 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x18]
_080A6690:
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x20]
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	ldr r1, _080A66F4 @ =gUnknown_080D9E80
	ldrb r2, [r5, #6]
	adds r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _080A66E2
	adds r0, r2, #1
	strb r0, [r5, #6]
	ldr r0, [r5, #0xc]
	ldr r4, _080A66F8 @ =gUnknown_080D9E90
	ldrb r3, [r5, #6]
	lsls r2, r3, #3
	adds r1, r2, r4
	ldr r1, [r1]
	adds r4, #4
	adds r2, r2, r4
	ldr r2, [r2]
	adds r4, r5, #4
	str r4, [sp]
	bl sub_80A9BD8
	str r0, [r5, #0xc]
	ldrb r0, [r5, #6]
	cmp r0, #0xd
	bls _080A66E2
	adds r0, r5, #0
	movs r1, #6
	movs r2, #1
	bl sub_80A5CB0
	ldr r0, _080A66EC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A66FC @ =sub_80A808C
	str r0, [r1, #8]
_080A66E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A66EC: .4byte gCurTask
_080A66F0: .4byte gBgScrollRegs
_080A66F4: .4byte gUnknown_080D9E80
_080A66F8: .4byte gUnknown_080D9E90
_080A66FC: .4byte sub_80A808C

	thumb_func_start sub_80A6700
sub_80A6700: @ 0x080A6700
	push {r4, r5, r6, lr}
	ldr r6, _080A6758 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A6BDC
	ldrh r1, [r4, #8]
	ldr r0, _080A675C @ =0x000001DF
	cmp r1, r0
	bhi _080A6720
	adds r0, r1, #1
	strh r0, [r4, #8]
_080A6720:
	ldrh r1, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bne _080A673A
	adds r0, r1, #1
	strh r0, [r4, #8]
	ldr r1, _080A6760 @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A9E24
	str r0, [r4, #0xc]
_080A673A:
	ldrb r0, [r4, #4]
	cmp r0, #0x12
	bne _080A6750
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl sub_80A5CB0
	ldr r1, [r6]
	ldr r0, _080A6764 @ =sub_80A805C
	str r0, [r1, #8]
_080A6750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6758: .4byte gCurTask
_080A675C: .4byte 0x000001DF
_080A6760: .4byte 0x03000004
_080A6764: .4byte sub_80A805C

	thumb_func_start sub_80A6768
sub_80A6768: @ 0x080A6768
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _080A679C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	add r0, sp, #4
	movs r1, #0
	movs r2, #6
	bl memset
	ldr r3, _080A67A0 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A67A8
	ldr r0, _080A67A4 @ =gCharacterSelectOrderLUT
	ldrb r7, [r0]
	ldrb r6, [r0, #2]
	b _080A67C0
	.align 2, 0
_080A679C: .4byte gCurTask
_080A67A0: .4byte gPlayers
_080A67A4: .4byte gCharacterSelectOrderLUT
_080A67A8:
	ldr r1, _080A6844 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A67C0:
	add r1, sp, #4
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, #0x78
	strh r0, [r1, #2]
	adds r0, #0xb4
	strh r0, [r1, #4]
	adds r0, r5, #0
	bl sub_80A6DD0
	add r1, sp, #4
	ldrh r0, [r5, #8]
	ldrh r1, [r1]
	cmp r0, r1
	blo _080A67FE
	adds r4, r5, #0
	adds r4, #0x34
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A67FE:
	add r0, sp, #4
	ldrh r1, [r5, #8]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bhi _080A680C
	adds r0, r1, #1
	strh r0, [r5, #8]
_080A680C:
	add r0, sp, #4
	ldrh r1, [r5, #8]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080A6856
	adds r0, r1, #1
	strh r0, [r5, #8]
	movs r0, #0x13
	strb r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #1
	bl sub_80A5EF0
	adds r0, r5, #4
	ldr r1, [r5, #0xc]
	bl sub_80AA06C
	str r0, [r5, #0xc]
	cmp r7, #0
	bne _080A6848
	ldr r0, [r5, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x18]
	b _080A6856
	.align 2, 0
_080A6844: .4byte gCharacterSelectOrderLUT
_080A6848:
	cmp r6, #0
	bne _080A6856
	ldr r0, [r5, #0x20]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r5, #0x20]
_080A6856:
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _080A6882
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r5, #0xc]
	str r1, [sp]
	movs r1, #0x2b
	movs r2, #0x64
	movs r3, #0x28
	bl sub_80AD7B4
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r5, #0x24]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x28]
_080A6882:
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldrh r0, [r5, #8]
	cmp r0, r1
	bls _080A68A0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r4]
	bl sub_80239A8
_080A68A0:
	ldr r0, [r5]
	cmp r0, #1
	bne _080A68F8
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80239A8
	add r1, sp, #4
	ldrh r0, [r5, #8]
	ldrh r1, [r1, #4]
	cmp r0, r1
	blo _080A68F8
	cmp r7, #0
	bne _080A68D0
	ldr r0, [r5, #0x18]
	ldr r2, _080A68CC @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r5, #0x18]
	b _080A68DC
	.align 2, 0
_080A68CC: .4byte 0xFFFFF800
_080A68D0:
	cmp r6, #0
	bne _080A68DC
	ldr r0, [r5, #0x20]
	ldr r1, _080A6900 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r5, #0x20]
_080A68DC:
	movs r0, #0x14
	strb r0, [r5, #4]
	adds r0, r5, #0
	bl sub_80A825C
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #1
	bl sub_80A5EF0
	ldr r0, _080A6904 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A6908 @ =sub_80A80EC
	str r0, [r1, #8]
_080A68F8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6900: .4byte 0xFFFFF800
_080A6904: .4byte gCurTask
_080A6908: .4byte sub_80A80EC

	thumb_func_start sub_80A690C
sub_80A690C: @ 0x080A690C
	push {r4, r5, lr}
	ldr r0, _080A6990 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldrb r3, [r4, #6]
	cmp r3, #5
	bhi _080A694C
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r2, _080A6994 @ =gUnknown_080D9BB2
	ldrb r1, [r4, #6]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _080A694C
	strh r5, [r4, #8]
	adds r0, r3, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080A694C
	movs r0, #6
	strb r0, [r4, #6]
_080A694C:
	ldrb r0, [r4, #6]
	cmp r0, #3
	bne _080A6962
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080A6962
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #1
	bl sub_80A5EF0
_080A6962:
	ldrb r0, [r4, #6]
	cmp r0, #6
	bne _080A6978
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080A6978
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #1
	bl sub_80A5EF0
_080A6978:
	ldr r2, [r4, #0x1c]
	ldr r0, _080A6998 @ =0xFFFFD800
	cmp r2, r0
	ble _080A69A0
	ldr r0, _080A699C @ =gUnknown_080D9BAA
	ldrb r1, [r4, #6]
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r4, #0x1c]
	b _080A69A2
	.align 2, 0
_080A6990: .4byte gCurTask
_080A6994: .4byte gUnknown_080D9BB2
_080A6998: .4byte 0xFFFFD800
_080A699C: .4byte gUnknown_080D9BAA
_080A69A0:
	movs r5, #1
_080A69A2:
	adds r0, r4, #0
	bl sub_80A6DD0
	ldrb r0, [r4, #4]
	cmp r0, #0x16
	bne _080A69D2
	cmp r5, #0
	beq _080A69D2
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, _080A69D8 @ =0xFFFFE200
	str r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #0
	bl sub_80A5E8C
	ldr r0, _080A69DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A69E0 @ =sub_80A814C
	str r0, [r1, #8]
_080A69D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A69D8: .4byte 0xFFFFE200
_080A69DC: .4byte gCurTask
_080A69E0: .4byte sub_80A814C

	thumb_func_start sub_80A69E4
sub_80A69E4: @ 0x080A69E4
	push {r4, r5, r6, lr}
	ldr r6, _080A6A44 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A8234
	ldrh r0, [r4, #8]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bne _080A6A3C
	ldr r2, _080A6A48 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A6A4C @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldr r3, _080A6A50 @ =0x00003FFF
	strh r3, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r0, _080A6A54 @ =gBldRegs
	strh r3, [r0]
	strh r5, [r0, #4]
	str r5, [r4, #0x10]
	strh r5, [r4, #8]
	ldr r1, [r6]
	ldr r0, _080A6A58 @ =sub_80A8198
	str r0, [r1, #8]
_080A6A3C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6A44: .4byte gCurTask
_080A6A48: .4byte gDispCnt
_080A6A4C: .4byte gWinRegs
_080A6A50: .4byte 0x00003FFF
_080A6A54: .4byte gBldRegs
_080A6A58: .4byte sub_80A8198

	thumb_func_start sub_80A6A5C
sub_80A6A5C: @ 0x080A6A5C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6A7C @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6A84
	ldr r0, _080A6A80 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6A9C
	.align 2, 0
_080A6A7C: .4byte gPlayers
_080A6A80: .4byte gCharacterSelectOrderLUT
_080A6A84:
	ldr r1, _080A6BC8 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6A9C:
	cmp r2, #3
	bne _080A6ACE
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6AC2
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6AC2:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6ACE:
	cmp r6, #3
	bne _080A6B00
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r0, [r5, #0x1c]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6AF4
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6AF4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6B00:
	adds r4, r5, #0
	adds r4, #0xd4
	ldrb r0, [r5, #4]
	adds r3, r0, #0
	cmp r3, #8
	bhi _080A6B3C
	ldr r1, _080A6BCC @ =gUnknown_080D9D08
	ldrh r2, [r4, #0xc]
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B1E
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	beq _080A6B2E
_080A6B1E:
	ldr r1, _080A6BD0 @ =gUnknown_080D9C90
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B3C
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _080A6B3C
_080A6B2E:
	cmp r3, #5
	bls _080A6B3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080A6B3C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6B58
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6B58:
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6B9C
	ldr r1, _080A6BCC @ =gUnknown_080D9D08
	ldrh r2, [r4, #0xc]
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B7C
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	beq _080A6B8C
_080A6B7C:
	ldr r1, _080A6BD0 @ =gUnknown_080D9C90
	ldrh r0, [r1]
	cmp r2, r0
	bne _080A6B9C
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _080A6B9C
_080A6B8C:
	ldrb r0, [r5, #4]
	cmp r0, #5
	bls _080A6B9C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080A6B9C:
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6BB8
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6BB8:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6BD4
	movs r0, #1
	b _080A6BD6
	.align 2, 0
_080A6BC8: .4byte gCharacterSelectOrderLUT
_080A6BCC: .4byte gUnknown_080D9D08
_080A6BD0: .4byte gUnknown_080D9C90
_080A6BD4:
	movs r0, #0
_080A6BD6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6BDC
sub_80A6BDC: @ 0x080A6BDC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6BFC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6C04
	ldr r0, _080A6C00 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6C1C
	.align 2, 0
_080A6BFC: .4byte gPlayers
_080A6C00: .4byte gCharacterSelectOrderLUT
_080A6C04:
	ldr r1, _080A6CD4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6C1C:
	cmp r2, #3
	bne _080A6C4E
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6C42
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6C42:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6C4E:
	cmp r6, #3
	bne _080A6C80
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r5, #0x1c]
	asrs r2, r0, #8
	strh r2, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	ldrb r0, [r5, #4]
	cmp r0, #8
	bhi _080A6C74
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r4, #0x10]
	adds r0, r1, #0
	subs r0, #0xf
	strh r0, [r4, #0x12]
_080A6C74:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6C80:
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6CA0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6CA0:
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6CC6
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6CC6:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6CD8
	movs r0, #1
	b _080A6CDA
	.align 2, 0
_080A6CD4: .4byte gCharacterSelectOrderLUT
_080A6CD8:
	movs r0, #0
_080A6CDA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6CE0
sub_80A6CE0: @ 0x080A6CE0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6D00 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6D08
	ldr r0, _080A6D04 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6D20
	.align 2, 0
_080A6D00: .4byte gPlayers
_080A6D04: .4byte gCharacterSelectOrderLUT
_080A6D08:
	ldr r1, _080A6DC4 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6D20:
	cmp r2, #3
	bne _080A6D46
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6D46:
	cmp r6, #3
	bne _080A6D6C
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6D6C:
	adds r4, r5, #0
	adds r4, #0xd4
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6D8C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6D8C:
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6DB4
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6DB4:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6DC8
	movs r0, #1
	b _080A6DCA
	.align 2, 0
_080A6DC4: .4byte gCharacterSelectOrderLUT
_080A6DC8:
	movs r0, #0
_080A6DCA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6DD0
sub_80A6DD0: @ 0x080A6DD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _080A6DF0 @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1c
	cmp r0, #5
	bls _080A6DF8
	ldr r0, _080A6DF4 @ =gCharacterSelectOrderLUT
	ldrb r2, [r0]
	ldrb r6, [r0, #2]
	b _080A6E10
	.align 2, 0
_080A6DF0: .4byte gPlayers
_080A6DF4: .4byte gCharacterSelectOrderLUT
_080A6DF8:
	ldr r1, _080A6EB0 @ =gCharacterSelectOrderLUT
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
_080A6E10:
	cmp r2, #3
	bne _080A6E36
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6E36:
	cmp r6, #3
	bne _080A6E5C
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	adds r1, #0x12
	strh r1, [r4, #0x10]
	subs r0, #0xf
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080A6E5C:
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6E7C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6E7C:
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080A6EA2
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A6EA2:
	adds r0, r4, #0
	bl DisplaySprite
	cmp r7, #2
	beq _080A6EB4
	movs r0, #1
	b _080A6EB6
	.align 2, 0
_080A6EB0: .4byte gCharacterSelectOrderLUT
_080A6EB4:
	movs r0, #0
_080A6EB6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6EBC
sub_80A6EBC: @ 0x080A6EBC
	push {lr}
	mov ip, r0
	ldr r2, _080A6F1C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A6F20 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080A6F24 @ =0x00008D07
	strh r0, [r1]
	ldr r1, _080A6F28 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	movs r0, #0x30
	strh r0, [r1, #2]
	mov r0, ip
	adds r0, #0xec
	ldr r1, _080A6F2C @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A6F30 @ =0x06006800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0x99
	lsls r1, r1, #1         @ 306 - Altar Emerald Background
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	movs r1, #0x40
	strh r1, [r0, #0x28]
	adds r1, #0xd6
	add r1, ip
	strb r3, [r1]
	strh r2, [r0, #0x2e]
	bl DrawBackground
	pop {r0}
	bx r0
	.align 2, 0
_080A6F1C: .4byte gDispCnt
_080A6F20: .4byte gBgCntRegs
_080A6F24: .4byte 0x00008D07
_080A6F28: .4byte gBgScrollRegs
_080A6F2C: .4byte 0x06004000
_080A6F30: .4byte 0x06006800

	thumb_func_start sub_80A6F34
sub_80A6F34: @ 0x080A6F34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x74
	ldr r2, [r7, #8]
	str r2, [r7, #0x74]
	ldr r3, _080A70B4 @ =gUnknown_080D9F08
	ldr r1, [r3, #0xc]
	lsls r1, r1, #5
	adds r2, r2, r1
	str r2, [r7, #8]
	ldrh r1, [r3, #8]
	movs r2, #0
	mov r8, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #0xa0
	lsls r3, r3, #3
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x4c
	ldr r1, [r7, #8]
	str r1, [r7, #0x4c]
	ldr r2, _080A70B4 @ =gUnknown_080D9F08
	ldr r6, [r2, #0x24]
	lsls r6, r6, #5
	adds r1, r1, r6
	str r1, [r7, #8]
	ldrh r1, [r2, #0x20]
	mov r3, sp
	strh r1, [r3]
	strh r1, [r0, #0xc]
	adds r1, r2, #0
	adds r1, #0x22
	ldrb r5, [r1]
	strb r5, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r2, sl
	strh r2, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, sb
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r1, [r7, #8]
	str r1, [r0]
	ldr r3, _080A70B4 @ =gUnknown_080D9F08
	ldr r2, [r3, #0x1c]
	lsls r2, r2, #5
	ldr r1, [r7, #8]
	adds r1, r1, r2
	str r1, [r7, #8]
	ldrh r1, [r3, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r3, #1
	mov r8, r3
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, [r7, #8]
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r1, r1, r6
	str r1, [r7, #8]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r0, #0xc]
	strb r5, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r3, sl
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x24
	ldr r1, [r7, #8]
	str r1, [r7, #0x24]
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r7, #8]
	ldr r2, _080A70B4 @ =gUnknown_080D9F08
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r3, sl
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
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
_080A70B4: .4byte gUnknown_080D9F08

	thumb_func_start sub_80A70B8
sub_80A70B8: @ 0x080A70B8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080A7120 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _080A7124 @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _080A70F4
	ldr r1, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #0x20
	str r0, [r4, #0x18]
	ldr r0, _080A7128 @ =0x00009620
	adds r1, r1, r0
	ldr r0, _080A712C @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x10]
_080A70F4:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A713C
	ldr r1, _080A7130 @ =0x03000024
	adds r0, r5, r1
	ldr r1, _080A7134 @ =gUnknown_080D9F08
	ldrh r2, [r1, #0x28]
	movs r3, #0
	strh r2, [r0, #0xc]
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strb r3, [r0, #0x1f]
	bl UpdateSpriteAnimation
	ldr r1, [r6]
	ldr r0, _080A7138 @ =sub_80A714C
	str r0, [r1, #8]
	b _080A7144
	.align 2, 0
_080A7120: .4byte gCurTask
_080A7124: .4byte gUnknown_080D9F58
_080A7128: .4byte 0x00009620
_080A712C: .4byte gBgScrollRegs
_080A7130: .4byte 0x03000024
_080A7134: .4byte gUnknown_080D9F08
_080A7138: .4byte sub_80A714C
_080A713C:
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
_080A7144:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A714C
sub_80A714C: @ 0x080A714C
	push {r4, lr}
	sub sp, #4
	ldr r0, _080A7194 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _080A7198 @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A71A0
	ldr r0, [r4, #0x18]
	subs r0, #0x40
	str r0, [r4, #0x18]
	cmp r0, #0
	bgt _080A717C
	movs r0, #0
	str r0, [r4, #0x18]
_080A717C:
	ldr r1, [r4, #0x18]
	ldr r0, _080A719C @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	movs r0, #0x98
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x10]
	b _080A71B2
	.align 2, 0
_080A7194: .4byte gCurTask
_080A7198: .4byte gUnknown_080D9F58
_080A719C: .4byte gBgScrollRegs
_080A71A0:
	ldr r0, _080A71DC @ =gBgScrollRegs
	movs r2, #6
	ldrsh r1, [r0, r2]
	subs r1, #0x50
	lsls r1, r1, #8
	movs r0, #0x98
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4, #0x10]
_080A71B2:
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x11
	bls _080A71D2
	ldr r0, _080A71E0 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080A71D2
	ldr r0, _080A71E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A71D2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A71DC: .4byte gBgScrollRegs
_080A71E0: .4byte gBldRegs
_080A71E4: .4byte gCurTask

	thumb_func_start sub_80A71E8
sub_80A71E8: @ 0x080A71E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x74
	str r0, [sp]
	subs r0, #0x28
	str r0, [sp, #4]
	adds r0, #0x78
	str r0, [sp, #8]
	subs r0, #0x28
	str r0, [sp, #0xc]
	movs r0, #0
	mov r8, r0
	movs r0, #8
	strh r0, [r5]
	movs r6, #0
_080A720E:
	movs r3, #0
	movs r0, #0xf0
	lsls r0, r0, #8
	ldr r2, [r4, #0xc]
	cmp r2, r0
	ble _080A722C
	ldr r1, _080A7228 @ =0xFFFF1000
	adds r0, r2, r1
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _080A722E
	.align 2, 0
_080A7228: .4byte 0xFFFF1000
_080A722C:
	movs r1, #0
_080A722E:
	cmp r1, #0xf
	bls _080A7248
	movs r1, #0
	ldr r7, _080A7244 @ =0xFFFFF000
	adds r0, r2, r7
	str r0, [r4, #0xc]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _080A724A
	.align 2, 0
_080A7244: .4byte 0xFFFFF000
_080A7248:
	movs r1, #0
_080A724A:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080A7256
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080A7256:
	adds r1, r1, r6
	cmp r1, #0x20
	ble _080A7286
	movs r0, #2
	mov r8, r0
	cmp r6, #0
	beq _080A7274
	movs r1, #1
	mov r8, r1
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080A7274
	movs r0, #4
	strb r0, [r1]
_080A7274:
	cmp r6, #5
	bne _080A72E2
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #5
	bhi _080A72E2
	movs r0, #6
	strb r0, [r1]
	b _080A72E2
_080A7286:
	ldr r0, _080A72C0 @ =gUnknown_080D9F5C
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #3
	bls _080A7298
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #1
_080A7298:
	lsls r0, r0, #2
	add r0, sp
	ldr r2, [r0]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldrh r0, [r5]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	cmp r3, #0
	beq _080A72C4
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A72CA
	.align 2, 0
_080A72C0: .4byte gUnknown_080D9F5C
_080A72C4:
	ldr r0, [r2, #8]
	ldr r1, _080A72F0 @ =0xFFFFFBFF
	ands r0, r1
_080A72CA:
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldrh r0, [r5]
	adds r0, #0x10
	strh r0, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _080A720E
_080A72E2:
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A72F0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A72F4
sub_80A72F4: @ 0x080A72F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	mov r1, sp
	movs r0, #0x18
	strh r0, [r1]
	movs r0, #3
	strh r0, [r1, #2]
	movs r7, #0
	adds r5, r6, #0
	adds r5, #0x24
	mov r4, sp
_080A731C:
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	mov r2, r8
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #2]
	subs r2, r2, r0
	strh r2, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4]
	adds r0, #0x3c
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080A731C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A735C
sub_80A735C: @ 0x080A735C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r4, #0
	bne _080A7390
	ldr r0, _080A7388 @ =sub_80A74F8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A738C @ =sub_80A84D8
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	b _080A73A2
	.align 2, 0
_080A7388: .4byte sub_80A74F8
_080A738C: .4byte sub_80A84D8
_080A7390:
	ldr r0, _080A73E8 @ =sub_80A7578
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A73EC @ =sub_80A84D8
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
_080A73A2:
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r3, #0
	strb r4, [r5, #9]
	strb r6, [r5, #0xa]
	str r7, [r5, #4]
	movs r6, #0
	strh r3, [r5, #0x14]
	strb r6, [r5, #8]
	strb r6, [r5, #0xb]
	mov r0, r8
	str r0, [r5]
	cmp r4, #0
	bne _080A7474
	ldr r2, _080A73F0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A73F4 @ =gWinRegs
	str r1, [r5, #0x10]
	adds r0, r1, #4
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0xa]
	adds r2, r1, #0
	cmp r0, #0
	beq _080A73F8
	ldrh r0, [r2, #8]
	movs r1, #0x3c
	b _080A73FC
	.align 2, 0
_080A73E8: .4byte sub_80A7578
_080A73EC: .4byte sub_80A84D8
_080A73F0: .4byte gDispCnt
_080A73F4: .4byte gWinRegs
_080A73F8:
	ldrh r0, [r2, #8]
	movs r1, #0x3e
_080A73FC:
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r1, [r2, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #6
	str r0, [r5, #0x18]
	movs r7, #0xe6
	lsls r7, r7, #7
	str r7, [r5, #0x20]
	ldr r4, _080A7448 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _080A744C @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _080A7450 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r6, r1, #8
	movs r0, #0xf
	ands r6, r0
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7454
	lsls r0, r6, #8
	adds r4, r7, #0
	adds r0, r0, r4
	b _080A7458
	.align 2, 0
_080A7448: .4byte gPseudoRandom
_080A744C: .4byte 0x00196225
_080A7450: .4byte 0x3C6EF35F
_080A7454:
	lsls r0, r6, #8
	subs r0, r7, r0
_080A7458:
	str r0, [r5, #0x20]
	ldr r0, _080A7470 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r1, [r0, r2]
	subs r1, #0x50
	lsls r1, r1, #8
	movs r0, #0xd8
	lsls r0, r0, #5
	subs r0, r0, r1
	str r0, [r5, #0x24]
	b _080A74B2
	.align 2, 0
_080A7470: .4byte gBgScrollRegs
_080A7474:
	ldr r2, _080A74EC @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A74F0 @ =gWinRegs + 0x2
	str r1, [r5, #0x10]
	adds r0, r1, #4
	str r0, [r5, #0xc]
	subs r1, #2
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	movs r2, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	str r3, [r5, #0x20]
	str r3, [r5, #0x24]
	ldr r1, _080A74F4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
_080A74B2:
	ldr r2, [r5, #0xc]
	movs r0, #0xf0
	strh r0, [r2]
	ldr r3, [r5, #0x10]
	movs r0, #0xa0
	strh r0, [r3]
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A74EC: .4byte gDispCnt
_080A74F0: .4byte gWinRegs + 0x2
_080A74F4: .4byte gBldRegs

	thumb_func_start sub_80A74F8
sub_80A74F8: @ 0x080A74F8
	push {r4, r5, lr}
	ldr r5, _080A7548 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A84DC
	cmp r0, #1
	bne _080A754C
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _080A753E
	movs r0, #0
	strb r0, [r1]
_080A753E:
	ldr r0, [r5]
	bl TaskDestroy
	b _080A7570
	.align 2, 0
_080A7548: .4byte gCurTask
_080A754C:
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
_080A7570:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A7578
sub_80A7578: @ 0x080A7578
	push {r4, lr}
	ldr r4, _080A75CC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #0xb]
	cmp r0, #4
	bls _080A75EC
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [r3, #0x1c]
	movs r2, #0
	str r2, [r3, #0x18]
	movs r0, #0xe2
	lsls r0, r0, #7
	str r0, [r3, #0x20]
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r3, #0x24]
	ldr r1, _080A75D0 @ =gBldRegs
	ldr r0, _080A75D4 @ =0x00003F7F
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r0, _080A75D8 @ =0x0000081F
	strh r0, [r1, #2]
	ldr r1, _080A75DC @ =gWinRegs
	ldr r0, _080A75E0 @ =0x00003F3E
	strh r0, [r1, #8]
	ldr r1, [r3]
	movs r0, #0xb
	strb r0, [r1]
	str r2, [r3, #0x24]
	ldr r0, _080A75E4 @ =0x0000029B @ SE_667
	bl m4aSongNumStart
	ldr r1, [r4]
	ldr r0, _080A75E8 @ =sub_80A7674
	str r0, [r1, #8]
	b _080A766E
	.align 2, 0
_080A75CC: .4byte gCurTask
_080A75D0: .4byte gBldRegs
_080A75D4: .4byte 0x00003F7F
_080A75D8: .4byte 0x0000081F
_080A75DC: .4byte gWinRegs
_080A75E0: .4byte 0x00003F3E
_080A75E4: .4byte 0x0000029B
_080A75E8: .4byte sub_80A7674
_080A75EC:
	ldrh r0, [r3, #0x14]
	adds r0, #1
	movs r4, #0
	strh r0, [r3, #0x14]
	ldr r1, _080A7614 @ =gUnknown_080D9F7D
	ldrb r2, [r3, #0xb]
	adds r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _080A761C
	adds r0, r2, #1
	strb r0, [r3, #0xb]
	strh r4, [r3, #0x14]
	ldr r1, _080A7618 @ =gBldRegs
	movs r0, #0xf
	strh r0, [r1, #4]
	b _080A7620
	.align 2, 0
_080A7614: .4byte gUnknown_080D9F7D
_080A7618: .4byte gBldRegs
_080A761C:
	ldr r0, _080A7650 @ =gBldRegs
	strh r4, [r0, #4]
_080A7620:
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _080A766E
	movs r0, #1
	strb r0, [r3, #8]
	ldr r2, _080A7654 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080A7658 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A765C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7660
	ldr r0, [r3]
	adds r1, r3, #0
	adds r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_80A735C
	b _080A766E
	.align 2, 0
_080A7650: .4byte gBldRegs
_080A7654: .4byte gPseudoRandom
_080A7658: .4byte 0x00196225
_080A765C: .4byte 0x3C6EF35F
_080A7660:
	ldr r0, [r3]
	adds r1, r3, #0
	adds r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_80A735C
_080A766E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A7674
sub_80A7674: @ 0x080A7674
	push {r4, r5, r6, lr}
	ldr r6, _080A7698 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A8524
	cmp r0, #1
	bne _080A76A0
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r1, [r6]
	ldr r0, _080A769C @ =sub_80A7738
	str r0, [r1, #8]
	b _080A772E
	.align 2, 0
_080A7698: .4byte gCurTask
_080A769C: .4byte sub_80A7738
_080A76A0:
	ldr r0, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r0
	ldr r0, _080A76E8 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080A770A
	movs r0, #1
	strb r0, [r4, #8]
	ldr r2, _080A76EC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080A76F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A76F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A76FC
	ldr r0, [r4]
	ldr r2, _080A76F8 @ =0x03000008
	adds r1, r5, r2
	movs r2, #0
	movs r3, #1
	bl sub_80A735C
	b _080A770A
	.align 2, 0
_080A76E8: .4byte gBgScrollRegs
_080A76EC: .4byte gPseudoRandom
_080A76F0: .4byte 0x00196225
_080A76F4: .4byte 0x3C6EF35F
_080A76F8: .4byte 0x03000008
_080A76FC:
	ldr r0, [r4]
	ldr r2, _080A7734 @ =0x03000008
	adds r1, r5, r2
	movs r2, #0
	movs r3, #0
	bl sub_80A735C
_080A770A:
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
_080A772E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7734: .4byte 0x03000008

	thumb_func_start sub_80A7738
sub_80A7738: @ 0x080A7738
	push {r4, r5, lr}
	ldr r2, _080A77A8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x14]
	adds r5, r2, #0
	cmp r0, #0x78
	bhi _080A7794
	adds r0, #1
	strh r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A77AC @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldrh r0, [r4, #0x14]
	cmp r0, #0x78
	bne _080A7794
	ldr r1, [r4]
	movs r0, #0xc
	strb r0, [r1]
_080A7794:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A77A2
	ldr r1, [r5]
	ldr r0, _080A77B0 @ =sub_80A77B4
	str r0, [r1, #8]
_080A77A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A77A8: .4byte gCurTask
_080A77AC: .4byte gBgScrollRegs
_080A77B0: .4byte sub_80A77B4

	thumb_func_start sub_80A77B4
sub_80A77B4: @ 0x080A77B4
	push {r4, r5, lr}
	ldr r5, _080A7844 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080A7800
	ldr r2, _080A7848 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080A784C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xbc
	lsls r1, r1, #7
	str r1, [r4, #0x20]
	movs r2, #0
	str r2, [r4, #0x24]
	movs r0, #0xe6
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	str r2, [r4, #0x18]
	ldr r1, _080A7850 @ =gBldRegs
	ldr r0, _080A7854 @ =0x00003F7F
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r0, _080A7858 @ =0x0000081F
	strh r0, [r1, #2]
	ldr r1, _080A785C @ =gWinRegs
	ldr r0, _080A7860 @ =0x00003F3E
	strh r0, [r1, #8]
_080A7800:
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A7864 @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r5]
	ldr r0, _080A7868 @ =sub_80A786C
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7844: .4byte gCurTask
_080A7848: .4byte gDispCnt
_080A784C: .4byte 0x0000DFFF
_080A7850: .4byte gBldRegs
_080A7854: .4byte 0x00003F7F
_080A7858: .4byte 0x0000081F
_080A785C: .4byte gWinRegs
_080A7860: .4byte 0x00003F3E
_080A7864: .4byte gBgScrollRegs
_080A7868: .4byte sub_80A786C

	thumb_func_start sub_80A786C
sub_80A786C: @ 0x080A786C
	push {r4, r5, lr}
	ldr r5, _080A78CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A78D0 @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _080A78C4
	movs r0, #0
	strb r0, [r4, #0xb]
	strh r0, [r4, #0x14]
	ldr r1, [r5]
	ldr r0, _080A78D4 @ =sub_80A78D8
	str r0, [r1, #8]
_080A78C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A78CC: .4byte gCurTask
_080A78D0: .4byte gBgScrollRegs
_080A78D4: .4byte sub_80A78D8

	thumb_func_start sub_80A78D8
sub_80A78D8: @ 0x080A78D8
	push {r4, r5, lr}
	ldr r0, _080A7934 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A85B0
	ldrh r0, [r4, #0x14]
	adds r0, #1
	strh r0, [r4, #0x14]
	ldr r2, _080A7938 @ =gUnknown_080D9F83
	ldrb r1, [r4, #0xb]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _080A7984
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080A7984
	movs r0, #1
	strb r0, [r4, #8]
	ldr r2, _080A793C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080A7940 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A7944 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A794C
	ldr r0, [r4]
	ldr r2, _080A7948 @ =0x03000008
	adds r1, r5, r2
	movs r2, #0
	movs r3, #1
	bl sub_80A735C
	b _080A795A
	.align 2, 0
_080A7934: .4byte gCurTask
_080A7938: .4byte gUnknown_080D9F83
_080A793C: .4byte gPseudoRandom
_080A7940: .4byte 0x00196225
_080A7944: .4byte 0x3C6EF35F
_080A7948: .4byte 0x03000008
_080A794C:
	ldr r0, [r4]
	ldr r3, _080A797C @ =0x03000008
	adds r1, r5, r3
	movs r2, #0
	movs r3, #0
	bl sub_80A735C
_080A795A:
	movs r0, #0
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _080A7984
	ldr r1, [r4]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080A7980 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080A79BA
	.align 2, 0
_080A797C: .4byte 0x03000008
_080A7980: .4byte gCurTask
_080A7984:
	ldr r2, [r4, #0x24]
	movs r1, #0xb4
	lsls r1, r1, #7
	subs r1, r1, r2
	ldr r0, _080A79C0 @ =gBgScrollRegs
	movs r3, #6
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r3, [r4, #0xc]
	asrs r2, r2, #8
	lsls r0, r2, #8
	adds r0, r0, r2
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2]
_080A79BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A79C0: .4byte gBgScrollRegs

	thumb_func_start sub_80A79C4
sub_80A79C4: @ 0x080A79C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _080A7AB4 @ =Task_80A7ACC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A7AB8 @ =TaskDestructor_80A85F0
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	str r4, [r6]
	movs r1, #0xe6
	lsls r1, r1, #7
	str r1, [r6, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #5
	str r1, [r6, #0x10]
	movs r3, #0
	movs r2, #0
	strh r2, [r6, #6]
	strb r3, [r6, #4]
	ldr r1, _080A7ABC @ =0x03000014
	adds r0, r0, r1
	str r7, [r0]
	ldr r4, _080A7AC0 @ =gUnknown_080D9F8C
	ldr r1, [r4, #4]
	lsls r1, r1, #5
	adds r7, r7, r1
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0
	adds r3, r4, #0
	movs r5, #0
_080A7A3E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	str r7, [r0]
	adds r4, r1, #1
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x18
	lsrs r1, r4, #0x18
	ldr r3, [sp, #4]
	cmp r1, #1
	bls _080A7A3E
	ldr r0, _080A7AC4 @ =0x0000029A @ SE_666
	bl m4aSongNumStart
	ldr r1, _080A7AC8 @ =gStageData
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080A7AA2
	adds r1, #0xc5
	movs r0, #1
	strb r0, [r1]
_080A7AA2:
	bl sub_80260F0
	bl sub_8001E84
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A7AB4: .4byte Task_80A7ACC
_080A7AB8: .4byte TaskDestructor_80A85F0
_080A7ABC: .4byte 0x03000014
_080A7AC0: .4byte gUnknown_080D9F8C
_080A7AC4: .4byte 0x0000029A
_080A7AC8: .4byte gStageData

	thumb_func_start Task_80A7ACC
Task_80A7ACC: @ 0x080A7ACC
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A7B5C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r0, _080A7B60 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r1, [r0, r2]
	subs r1, #0x50
	lsls r1, r1, #8
	movs r0, #0xba
	lsls r0, r0, #7
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080A7B64 @ =0x03000014
	adds r4, r5, r0
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldrh r1, [r6, #6]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080A7B12
	adds r0, r4, #0
	bl DisplaySprite
_080A7B12:
	ldr r1, _080A7B68 @ =0x0300003C
	adds r0, r5, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A7B2E
	ldr r2, _080A7B6C @ =0x03000052
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _080A7B70 @ =0x03000057
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_080A7B2E:
	ldr r1, _080A7B74 @ =0x03000064
	adds r0, r5, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A7B4A
	ldr r2, _080A7B78 @ =0x0300007A
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _080A7B7C @ =0x0300007F
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_080A7B4A:
	ldr r2, [r6]
	ldrb r0, [r2]
	cmp r0, #0x10
	bne _080A7B84
	ldr r1, [r7]
	ldr r0, _080A7B80 @ =sub_80A85F4
	str r0, [r1, #8]
	b _080A7BE6
	.align 2, 0
_080A7B5C: .4byte gCurTask
_080A7B60: .4byte gBgScrollRegs
_080A7B64: .4byte 0x03000014
_080A7B68: .4byte 0x0300003C
_080A7B6C: .4byte 0x03000052
_080A7B70: .4byte 0x03000057
_080A7B74: .4byte 0x03000064
_080A7B78: .4byte 0x0300007A
_080A7B7C: .4byte 0x0300007F
_080A7B80: .4byte sub_80A85F4
_080A7B84:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	ldr r0, [r6, #4]
	ldr r1, _080A7BEC @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _080A7BA8
	movs r0, #1
	strb r0, [r6, #4]
	adds r0, r2, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_80A735C
_080A7BA8:
	ldr r4, _080A7BF0 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r5, _080A7BF4 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080A7BF8 @ =0x3C6EF35F
	adds r3, r0, r1
	str r3, [r4]
	ldrh r2, [r6, #6]
	lsrs r0, r3, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0xc4
	cmp r2, r0
	blo _080A7BE6
	adds r1, r3, #0
	muls r1, r5, r1
	ldr r2, _080A7BF8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r4]
	lsrs r1, r1, #8
	movs r0, #1
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	movs r1, #0xb5
	strh r1, [r6, #6]
	bl sub_80A866C
_080A7BE6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A7BEC: .4byte 0xFFFF00FF
_080A7BF0: .4byte gPseudoRandom
_080A7BF4: .4byte 0x00196225
_080A7BF8: .4byte 0x3C6EF35F

	thumb_func_start sub_80A7BFC
sub_80A7BFC: @ 0x080A7BFC
	bx lr
	.align 2, 0

	thumb_func_start Task_80A7C00
Task_80A7C00: @ 0x080A7C00
	push {r4, r5, lr}
	ldr r5, _080A7C34 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _080A7C38 @ =0x030000D8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_80A490C
	ldr r1, [r5]
	ldr r0, _080A7C3C @ =sub_80A7C40
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C34: .4byte gCurTask
_080A7C38: .4byte 0x030000D8
_080A7C3C: .4byte sub_80A7C40

	thumb_func_start sub_80A7C40
sub_80A7C40: @ 0x080A7C40
	push {r4, r5, lr}
	ldr r5, _080A7C74 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	cmp r0, #0
	bne _080A7C6E
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080A7C6E
	ldr r1, [r5]
	ldr r0, _080A7C78 @ =sub_80A7C7C
	str r0, [r1, #8]
_080A7C6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C74: .4byte gCurTask
_080A7C78: .4byte sub_80A7C7C

	thumb_func_start sub_80A7C7C
sub_80A7C7C: @ 0x080A7C7C
	push {r4, r5, lr}
	ldr r5, _080A7CB0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080A7CAA
	movs r0, #0
	strh r0, [r4, #0x16]
	ldr r1, [r5]
	ldr r0, _080A7CB4 @ =sub_80A7CB8
	str r0, [r1, #8]
_080A7CAA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7CB0: .4byte gCurTask
_080A7CB4: .4byte sub_80A7CB8

	thumb_func_start sub_80A7CB8
sub_80A7CB8: @ 0x080A7CB8
	push {r4, r5, lr}
	ldr r5, _080A7CF8 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5824
	adds r0, r4, #0
	bl sub_80A563C
	cmp r0, #1
	bne _080A7CF0
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080A7CF0
	movs r0, #0
	strb r0, [r4, #0x18]
	ldr r1, [r5]
	ldr r0, _080A7CFC @ =Task_80A4EDC
	str r0, [r1, #8]
_080A7CF0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7CF8: .4byte gCurTask
_080A7CFC: .4byte Task_80A4EDC

	thumb_func_start sub_80A7D00
sub_80A7D00: @ 0x080A7D00
	push {r4, r5, lr}
	ldr r5, _080A7D38 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	adds r0, r4, #0
	bl sub_80A55DC
	cmp r0, #1
	bne _080A7D32
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _080A7D3C @ =sub_80A7D40
	str r0, [r1, #8]
_080A7D32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7D38: .4byte gCurTask
_080A7D3C: .4byte sub_80A7D40

	thumb_func_start sub_80A7D40
sub_80A7D40: @ 0x080A7D40
	push {r4, r5, lr}
	ldr r5, _080A7D70 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _080A7D74 @ =0x030000D8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080A7D6A
	ldr r1, [r5]
	ldr r0, _080A7D78 @ =sub_80A7D7C
	str r0, [r1, #8]
_080A7D6A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7D70: .4byte gCurTask
_080A7D74: .4byte 0x030000D8
_080A7D78: .4byte sub_80A7D7C

	thumb_func_start sub_80A7D7C
sub_80A7D7C: @ 0x080A7D7C
	push {r4, r5, lr}
	ldr r5, _080A7DAC @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xd8
	adds r0, r0, r1
	bl UpdateBgAnimationTiles
	adds r0, r4, #0
	bl sub_80A5698
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _080A7DB0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_80A490C
	b _080A7DBE
	.align 2, 0
_080A7DAC: .4byte gCurTask
_080A7DB0:
	cmp r0, #0x14
	bne _080A7DC4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_80A4A88
_080A7DBE:
	ldr r1, [r5]
	ldr r0, _080A7DCC @ =Task_80A7DD0
	str r0, [r1, #8]
_080A7DC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7DCC: .4byte Task_80A7DD0

	thumb_func_start Task_80A7DD0
Task_80A7DD0: @ 0x080A7DD0
	push {r4, r5, r6, lr}
	ldr r6, _080A7E00 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	adds r0, r5, #0
	bl sub_80A5824
	ldr r0, _080A7E04 @ =0x030000D8
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateBgAnimationTiles
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _080A7E0C
	ldr r1, [r6]
	ldr r0, _080A7E08 @ =Task_80A52DC
	str r0, [r1, #8]
	b _080A7E1A
	.align 2, 0
_080A7E00: .4byte gCurTask
_080A7E04: .4byte 0x030000D8
_080A7E08: .4byte Task_80A52DC
_080A7E0C:
	ldr r0, _080A7E20 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080A7E1A
	ldr r0, [r6]
	bl TaskDestroy
_080A7E1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7E20: .4byte gBldRegs

	thumb_func_start Task_80A7E24
Task_80A7E24: @ 0x080A7E24
	push {r4, r5, lr}
	ldr r4, _080A7E68 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r3, _080A7E6C @ =gDispCnt
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #0x20]
	ldr r2, _080A7E70 @ =gBgScrollRegs
	movs r1, #4
	strh r1, [r2, #4]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	adds r1, #0x50
	strh r1, [r2, #6]
	movs r1, #0
	movs r2, #0
	bl sub_80A4A88
	ldr r1, [r4]
	ldr r0, _080A7E74 @ =Task_80A5050
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7E68: .4byte gCurTask
_080A7E6C: .4byte gDispCnt
_080A7E70: .4byte gBgScrollRegs
_080A7E74: .4byte Task_80A5050

	thumb_func_start TaskDestructor_PreCreditsCutscene
TaskDestructor_PreCreditsCutscene: @ 0x080A7E78
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080A7E8C @ =0x0300014C
	adds r0, r0, r1
	ldr r0, [r0]
	bl EwramFree
	pop {r0}
	bx r0
	.align 2, 0
_080A7E8C: .4byte 0x0300014C

	thumb_func_start Task_150_PreCreditsCutsceneNormalInit
Task_150_PreCreditsCutsceneNormalInit: @ 0x080A7E90
	push {r4, r5, lr}
	ldr r5, _080A7EB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080A7EB8
	adds r0, r4, #0
	bl sub_80A5B08
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _080A7ED2
	.align 2, 0
_080A7EB4: .4byte gCurTask
_080A7EB8:
	ldr r1, _080A7ED8 @ =0x03000004
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	ldr r3, _080A7EDC @ =0x03000014
	adds r2, r2, r3
	bl sub_80A828C
	str r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #6]
	ldr r1, [r5]
	ldr r0, _080A7EE0 @ =sub_80A6090
	str r0, [r1, #8]
_080A7ED2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7ED8: .4byte 0x03000004
_080A7EDC: .4byte 0x03000014
_080A7EE0: .4byte sub_80A6090

	thumb_func_start sub_80A7EE4
sub_80A7EE4: @ 0x080A7EE4
	push {r4, r5, lr}
	ldr r5, _080A7F10 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A6BDC
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_80A5CB0
	ldr r1, [r5]
	ldr r0, _080A7F14 @ =sub_80A7F18
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7F10: .4byte gCurTask
_080A7F14: .4byte sub_80A7F18

	thumb_func_start sub_80A7F18
sub_80A7F18: @ 0x080A7F18
	push {r4, r5, r6, lr}
	ldr r6, _080A7F4C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	cmp r0, #0
	bne _080A7F46
	movs r0, #0xa
	strb r0, [r4, #4]
	ldr r1, _080A7F50 @ =0x03000004
	adds r0, r5, r1
	ldr r1, [r4, #0xc]
	bl sub_80A79C4
	str r0, [r4, #0xc]
	ldr r1, [r6]
	ldr r0, _080A7F54 @ =sub_80A7FAC
	str r0, [r1, #8]
_080A7F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7F4C: .4byte gCurTask
_080A7F50: .4byte 0x03000004
_080A7F54: .4byte sub_80A7FAC

	thumb_func_start sub_80A7F58
sub_80A7F58: @ 0x080A7F58
	push {r4, lr}
	ldr r0, _080A7FA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrh r0, [r4, #8]
	cmp r0, #0xb3
	bhi _080A7F82
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bne _080A7F82
	movs r0, #8
	strb r0, [r4, #4]
_080A7F82:
	ldrb r0, [r4, #4]
	cmp r0, #9
	bne _080A7F9E
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_80A5CB0
	ldr r0, _080A7FA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A7FA8 @ =sub_80A7EE4
	str r0, [r1, #8]
_080A7F9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7FA4: .4byte gCurTask
_080A7FA8: .4byte sub_80A7EE4

	thumb_func_start sub_80A7FAC
sub_80A7FAC: @ 0x080A7FAC
	push {r4, r5, lr}
	ldr r5, _080A7FD4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #0xb
	bne _080A7FCC
	ldr r1, [r5]
	ldr r0, _080A7FD8 @ =sub_80A7FDC
	str r0, [r1, #8]
_080A7FCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7FD4: .4byte gCurTask
_080A7FD8: .4byte sub_80A7FDC

	thumb_func_start sub_80A7FDC
sub_80A7FDC: @ 0x080A7FDC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080A8048 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #0xb
	bne _080A8014
	ldr r1, [r4, #0x30]
	adds r0, r1, #0
	adds r0, #0x20
	str r0, [r4, #0x30]
	ldr r0, _080A804C @ =0x00007820
	adds r1, r1, r0
	ldr r0, _080A8050 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	str r1, [r4, #0x20]
_080A8014:
	ldrb r0, [r4, #4]
	cmp r0, #0xd
	bne _080A8040
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #8]
	strb r1, [r4, #6]
	ldr r0, [r4, #0xc]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x5a
	rsbs r2, r2, #0
	ldr r7, _080A8054 @ =0x03000004
	adds r3, r5, r7
	str r3, [sp]
	movs r3, #0
	bl sub_80A9BD8
	str r0, [r4, #0xc]
	ldr r1, [r6]
	ldr r0, _080A8058 @ =sub_80A664C
	str r0, [r1, #8]
_080A8040:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8048: .4byte gCurTask
_080A804C: .4byte 0x00007820
_080A8050: .4byte gBgScrollRegs
_080A8054: .4byte 0x03000004
_080A8058: .4byte sub_80A664C

	thumb_func_start sub_80A805C
sub_80A805C: @ 0x080A805C
	push {r4, r5, lr}
	ldr r5, _080A8088 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A6A5C
	ldrb r0, [r4, #4]
	cmp r0, #0x16
	bne _080A8080
	bl sub_80A8C80
	ldr r0, [r5]
	bl TaskDestroy
_080A8080:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8088: .4byte gCurTask

	thumb_func_start sub_80A808C
sub_80A808C: @ 0x080A808C
	push {r4, lr}
	ldr r0, _080A80E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A6BDC
	ldrb r0, [r4, #4]
	cmp r0, #0xe
	bne _080A80CC
	ldr r0, [r4, #0x30]
	subs r0, #0x40
	str r0, [r4, #0x30]
	cmp r0, #0
	bgt _080A80B4
	movs r0, #0
	str r0, [r4, #0x30]
_080A80B4:
	ldr r1, [r4, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, _080A80E4 @ =gBgScrollRegs
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r4, #0x18]
	str r1, [r4, #0x20]
_080A80CC:
	ldrb r0, [r4, #4]
	cmp r0, #0x10
	bne _080A80DA
	ldr r0, _080A80E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A80E8 @ =sub_80A6700
	str r0, [r1, #8]
_080A80DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A80E0: .4byte gCurTask
_080A80E4: .4byte gBgScrollRegs
_080A80E8: .4byte sub_80A6700

	thumb_func_start sub_80A80EC
sub_80A80EC: @ 0x080A80EC
	push {r4, r5, lr}
	ldr r5, _080A8134 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _080A8138 @ =0x0300014C
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80239A8
	adds r0, r4, #0
	bl sub_80A825C
	adds r0, r4, #0
	bl sub_80A81E8
	cmp r0, #1
	bne _080A8140
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #8]
	strb r1, [r4, #6]
	movs r0, #0x15
	strb r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #1
	bl sub_80A5EF0
	ldr r1, [r5]
	ldr r0, _080A813C @ =sub_80A690C
	str r0, [r1, #8]
	b _080A8146
	.align 2, 0
_080A8134: .4byte gCurTask
_080A8138: .4byte 0x0300014C
_080A813C: .4byte sub_80A690C
_080A8140:
	adds r0, r4, #0
	bl sub_80A6DD0
_080A8146:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A814C
sub_80A814C: @ 0x080A814C
	push {r4, r5, lr}
	ldr r5, _080A816C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A8234
	ldrh r0, [r4, #8]
	cmp r0, #0x77
	bhi _080A8170
	adds r0, #1
	strh r0, [r4, #8]
	b _080A818E
	.align 2, 0
_080A816C: .4byte gCurTask
_080A8170:
	adds r0, r4, #0
	bl sub_80A820C
	cmp r0, #1
	bne _080A818E
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0
	bl sub_80A5E8C
	ldr r1, [r5]
	ldr r0, _080A8194 @ =sub_80A69E4
	str r0, [r1, #8]
_080A818E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8194: .4byte sub_80A69E4

	thumb_func_start sub_80A8198
sub_80A8198: @ 0x080A8198
	push {r4, r5, lr}
	ldr r5, _080A81C0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A8234
	ldr r1, _080A81C4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A81C8
	ldr r0, [r4, #0x10]
	adds r0, #0x20
	str r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	b _080A81E2
	.align 2, 0
_080A81C0: .4byte gCurTask
_080A81C4: .4byte gBldRegs
_080A81C8:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080A81E2
	movs r0, #1
	bl sub_80A872C
	ldr r0, [r5]
	bl TaskDestroy
_080A81E2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A81E8
sub_80A81E8: @ 0x080A81E8
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x14]
	ldr r0, _080A81F8 @ =0xFFFFD800
	cmp r1, r0
	bgt _080A81FC
	movs r0, #1
	b _080A8204
	.align 2, 0
_080A81F8: .4byte 0xFFFFD800
_080A81FC:
	ldr r3, _080A8208 @ =0xFFFFFB00
	adds r0, r1, r3
	str r0, [r2, #0x14]
	movs r0, #0
_080A8204:
	pop {r1}
	bx r1
	.align 2, 0
_080A8208: .4byte 0xFFFFFB00

	thumb_func_start sub_80A820C
sub_80A820C: @ 0x080A820C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	ldr r0, _080A8220 @ =0x000078FF
	cmp r2, r0
	ble _080A8224
	adds r0, #1
	str r0, [r1, #0x18]
	movs r0, #1
	b _080A822E
	.align 2, 0
_080A8220: .4byte 0x000078FF
_080A8224:
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #0x18]
	movs r0, #0
_080A822E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8234
sub_80A8234: @ 0x080A8234
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0xd4
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x18]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A825C
sub_80A825C: @ 0x080A825C
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #0x24]
	ldr r0, _080A8280 @ =0xFFFF2E00
	cmp r2, r0
	ble _080A8272
	ldr r3, _080A8284 @ =0xFFFFFB00
	adds r0, r2, r3
	str r0, [r1, #0x24]
	ldr r3, _080A8288 @ =0x0000FFFB
_080A8272:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	strb r3, [r0, #0xd]
	pop {r0}
	bx r0
	.align 2, 0
_080A8280: .4byte 0xFFFF2E00
_080A8284: .4byte 0xFFFFFB00
_080A8288: .4byte 0x0000FFFB

	thumb_func_start sub_80A828C
sub_80A828C: @ 0x080A828C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _080A82BC
	ldr r0, _080A82B4 @ =sub_80A70B8
	movs r1, #0x96
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A82B8 @ =sub_80A8324
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	b _080A82D0
	.align 2, 0
_080A82B4: .4byte sub_80A70B8
_080A82B8: .4byte sub_80A8324
_080A82BC:
	ldr r0, _080A82F8 @ =sub_80A8328
	movs r1, #0x96
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A82FC @ =sub_80A8324
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
_080A82D0:
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r5, [r4]
	str r7, [r4, #8]
	movs r0, #0
	strb r0, [r4, #4]
	strh r0, [r4, #6]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	adds r0, r6, #4
	str r0, [r4, #0x20]
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _080A8300
	movs r0, #0xf0
	lsls r0, r0, #8
	b _080A8304
	.align 2, 0
_080A82F8: .4byte sub_80A8328
_080A82FC: .4byte sub_80A8324
_080A8300:
	movs r0, #0xa0
	lsls r0, r0, #8
_080A8304:
	str r0, [r4, #0xc]
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_80A6F34
	adds r0, r4, #0
	bl sub_80A6EBC
	ldr r0, [r4, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8324
sub_80A8324: @ 0x080A8324
	bx lr
	.align 2, 0

	thumb_func_start sub_80A8328
sub_80A8328: @ 0x080A8328
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A8358 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A71E8
	ldr r1, [r5]
	ldr r0, _080A835C @ =sub_80A8360
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8358: .4byte gCurTask
_080A835C: .4byte sub_80A8360

	thumb_func_start sub_80A8360
sub_80A8360: @ 0x080A8360
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080A83A4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A71E8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080A83AC
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	cmp r5, #2
	bne _080A83AC
	movs r0, #0
	strh r0, [r4, #6]
	ldr r1, [r6]
	ldr r0, _080A83A8 @ =sub_80A83C8
	str r0, [r1, #8]
	b _080A83C0
	.align 2, 0
_080A83A4: .4byte gCurTask
_080A83A8: .4byte sub_80A83C8
_080A83AC:
	ldr r0, [r4]
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _080A83C0
	adds r0, r4, #0
	bl sub_80A8468
_080A83C0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A83C8
sub_80A83C8: @ 0x080A83C8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A8418 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _080A841C @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #7
	bls _080A840E
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A840E
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #9
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _080A8420 @ =sub_80A8424
	str r0, [r1, #8]
_080A840E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8418: .4byte gCurTask
_080A841C: .4byte gUnknown_080D9F58
_080A8420: .4byte sub_80A8424

	thumb_func_start sub_80A8424
sub_80A8424: @ 0x080A8424
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A845C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _080A8460 @ =gUnknown_080D9F58
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A72F4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080A8454
	ldr r1, [r5]
	ldr r0, _080A8464 @ =sub_80A70B8
	str r0, [r1, #8]
_080A8454:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A845C: .4byte gCurTask
_080A8460: .4byte gUnknown_080D9F58
_080A8464: .4byte sub_80A70B8

	thumb_func_start sub_80A8468
sub_80A8468: @ 0x080A8468
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #6
	bhi _080A84D2
	lsls r0, r0, #2
	ldr r1, _080A8480 @ =_080A8484
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8480: .4byte _080A8484
_080A8484: @ jump table
	.4byte _080A84C8 @ case 0
	.4byte _080A84A0 @ case 1
	.4byte _080A84A8 @ case 2
	.4byte _080A84B0 @ case 3
	.4byte _080A84B8 @ case 4
	.4byte _080A84C0 @ case 5
	.4byte _080A84C8 @ case 6
_080A84A0:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	b _080A84CE
_080A84A8:
	ldr r0, [r2, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	b _080A84CE
_080A84B0:
	ldr r0, [r2, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	b _080A84CE
_080A84B8:
	ldr r0, [r2, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	b _080A84CE
_080A84C0:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	b _080A84CE
_080A84C8:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
_080A84CE:
	adds r0, r0, r1
	str r0, [r2, #0xc]
_080A84D2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A84D8
sub_80A84D8: @ 0x080A84D8
	bx lr
	.align 2, 0

	thumb_func_start sub_80A84DC
sub_80A84DC: @ 0x080A84DC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	cmp r0, #0
	beq _080A84F4
	ldr r2, _080A84F0 @ =0xFFFFFB00
	adds r0, r0, r2
	str r0, [r1, #0x24]
	b _080A84FC
	.align 2, 0
_080A84F0: .4byte 0xFFFFFB00
_080A84F4:
	ldr r0, [r1, #0x18]
	ldr r2, _080A8518 @ =0xFFFFFB00
	adds r0, r0, r2
	str r0, [r1, #0x18]
_080A84FC:
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bge _080A8506
	movs r0, #0
	str r0, [r1, #0x24]
_080A8506:
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	ble _080A851C
	movs r0, #0
	b _080A851E
	.align 2, 0
_080A8518: .4byte 0xFFFFFB00
_080A851C:
	movs r0, #1
_080A851E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8524
sub_80A8524: @ 0x080A8524
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x20]
	movs r3, #0xbc
	lsls r3, r3, #7
	cmp r0, r3
	ble _080A853E
	adds r1, r0, #0
	subs r1, #0x10
	str r1, [r2, #0x20]
	ldr r0, _080A8544 @ =0x00005DFF
	cmp r1, r0
	bgt _080A8548
_080A853E:
	str r3, [r2, #0x20]
	movs r0, #1
	b _080A855A
	.align 2, 0
_080A8544: .4byte 0x00005DFF
_080A8548:
	movs r0, #0xe6
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	movs r0, #0
_080A855A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A8560
sub_80A8560: @ 0x080A8560
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x24]
	cmp r2, #0
	ble _080A85A0
	ldr r4, _080A8590 @ =gBgScrollRegs
	movs r1, #6
	ldrsh r0, [r4, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	movs r1, #0x5a
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080A8594
	adds r1, r2, #0
	subs r1, #0x10
	movs r2, #6
	ldrsh r0, [r4, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r3, #0x24]
	b _080A859A
	.align 2, 0
_080A8590: .4byte gBgScrollRegs
_080A8594:
	adds r0, r2, #0
	subs r0, #0x40
	str r0, [r3, #0x24]
_080A859A:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bge _080A85A8
_080A85A0:
	movs r0, #0
	str r0, [r3, #0x24]
	movs r0, #1
	b _080A85AA
_080A85A8:
	movs r0, #0
_080A85AA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A85B0
sub_80A85B0: @ 0x080A85B0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x20]
	ldr r3, _080A85D4 @ =0x000072FF
	cmp r0, r3
	bgt _080A85C6
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r2, #0x20]
	cmp r1, r3
	ble _080A85D8
_080A85C6:
	movs r0, #0xe6
	lsls r0, r0, #7
	str r0, [r2, #0x20]
	movs r0, #0
	str r0, [r2, #0x1c]
	movs r0, #1
	b _080A85EA
	.align 2, 0
_080A85D4: .4byte 0x000072FF
_080A85D8:
	movs r0, #0xe6
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	movs r0, #0
_080A85EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_80A85F0
TaskDestructor_80A85F0: @ 0x080A85F0
	bx lr
	.align 2, 0

	thumb_func_start sub_80A85F4
sub_80A85F4: @ 0x080A85F4
	push {r4, r5, r6, lr}
	ldr r6, _080A8650 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080A8654 @ =0x0300003C
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A861E
	ldr r2, _080A8658 @ =0x03000052
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _080A865C @ =0x03000057
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080A861E:
	ldr r1, _080A8660 @ =0x03000064
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _080A863A
	ldr r2, _080A8664 @ =0x0300007A
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _080A8668 @ =0x0300007F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080A863A:
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _080A8648
	ldr r0, [r6]
	bl TaskDestroy
_080A8648:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8650: .4byte gCurTask
_080A8654: .4byte 0x0300003C
_080A8658: .4byte 0x03000052
_080A865C: .4byte 0x03000057
_080A8660: .4byte 0x03000064
_080A8664: .4byte 0x0300007A
_080A8668: .4byte 0x0300007F

	thumb_func_start sub_80A866C
sub_80A866C: @ 0x080A866C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080A86C0 @ =sub_80A86D8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A86C4 @ =sub_80A86D4
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r0, #0
	strh r0, [r2]
	str r0, [r2, #4]
	str r4, [r2, #0x10]
	ldr r3, _080A86C8 @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _080A86CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A86D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xbe
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r0, #0x8c
	lsls r0, r0, #7
	str r0, [r2, #0xc]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A86C0: .4byte sub_80A86D8
_080A86C4: .4byte sub_80A86D4
_080A86C8: .4byte gPseudoRandom
_080A86CC: .4byte 0x00196225
_080A86D0: .4byte 0x3C6EF35F

	thumb_func_start sub_80A86D4
sub_80A86D4: @ 0x080A86D4
	bx lr
	.align 2, 0

	thumb_func_start sub_80A86D8
sub_80A86D8: @ 0x080A86D8
	push {r4, r5, lr}
	ldr r5, _080A871C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r1, #0x50
	ldr r2, _080A8720 @ =gBgScrollRegs
	ldrh r2, [r2, #6]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4, #0xc]
	ldr r1, _080A8724 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r1, _080A8728 @ =0xFFFFEC00
	cmp r0, r1
	bge _080A8716
	ldr r0, [r5]
	bl TaskDestroy
_080A8716:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A871C: .4byte gCurTask
_080A8720: .4byte gBgScrollRegs
_080A8724: .4byte 0xFFFFFF00
_080A8728: .4byte 0xFFFFEC00

	thumb_func_start sub_80A872C
sub_80A872C: @ 0x080A872C
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _080A875C @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	cmp r6, #0
	bne _080A8768
	ldr r0, _080A8760 @ =sub_80A8858
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A8764 @ =sub_80A98AC
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl m4aMPlayAllStop
	b _080A877C
	.align 2, 0
_080A875C: .4byte gDispCnt
_080A8760: .4byte sub_80A8858
_080A8764: .4byte sub_80A98AC
_080A8768:
	ldr r0, _080A87A0 @ =sub_80A8AC4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A87A4 @ =sub_80A98AC
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
_080A877C:
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	movs r1, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strb r1, [r4, #1]
	cmp r6, #0
	beq _080A87B6
	cmp r6, #0xa
	bls _080A87A8
	movs r0, #0xb
	b _080A87B4
	.align 2, 0
_080A87A0: .4byte sub_80A8AC4
_080A87A4: .4byte sub_80A98AC
_080A87A8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _080A87B6
	movs r0, #0xa
_080A87B4:
	strb r0, [r4, #1]
_080A87B6:
	movs r5, #0
	strb r6, [r4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, _080A8838 @ =gBgSprites_Unknown1
	strb r5, [r0]
	ldr r1, _080A883C @ =gBgSprites_Unknown2
	strb r5, [r1]
	strb r5, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r6, #0x40
	strb r6, [r1, #3]
	ldr r1, _080A8840 @ =gBgCntRegs
	ldr r0, _080A8844 @ =0x00005C81
	strh r0, [r1]
	ldr r0, _080A8848 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r2, _080A884C @ =gUnknown_080D9FC3
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	bne _080A87F4
	movs r2, #0xb
_080A87F4:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	strh r5, [r3, #0xa]
	ldr r0, _080A8850 @ =0x0600E000
	str r0, [r3, #0xc]
	strh r5, [r3, #0x18]
	strh r5, [r3, #0x1a]
	ldr r1, _080A8854 @ =gUnknown_080D9FA4
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1c]
	strh r5, [r3, #0x1e]
	strh r5, [r3, #0x20]
	strh r5, [r3, #0x22]
	strh r5, [r3, #0x24]
	strh r6, [r3, #0x26]
	movs r0, #0x20
	strh r0, [r3, #0x28]
	adds r1, r4, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	movs r0, #4
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	bl DrawBackground
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8838: .4byte gBgSprites_Unknown1
_080A883C: .4byte gBgSprites_Unknown2
_080A8840: .4byte gBgCntRegs
_080A8844: .4byte 0x00005C81
_080A8848: .4byte gBgScrollRegs
_080A884C: .4byte gUnknown_080D9FC3
_080A8850: .4byte 0x0600E000
_080A8854: .4byte gUnknown_080D9FA4

	thumb_func_start sub_80A8858
sub_80A8858: @ 0x080A8858
	push {r4, r5, lr}
	ldr r2, _080A8898 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #3]
	adds r4, r2, #0
	ldr r1, _080A889C @ =gBldRegs
	cmp r0, #0
	bne _080A88C8
	ldr r2, _080A88A0 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A88A4 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrb r0, [r3, #1]
	adds r2, r1, #0
	cmp r0, #2
	bhi _080A88A8
	movs r0, #0x84
	lsls r0, r0, #6
	b _080A88AA
	.align 2, 0
_080A8898: .4byte gCurTask
_080A889C: .4byte gBldRegs
_080A88A0: .4byte gDispCnt
_080A88A4: .4byte gWinRegs
_080A88A8:
	ldr r0, _080A88E4 @ =0x00003FFF
_080A88AA:
	strh r0, [r2, #8]
	ldrh r1, [r2, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080A88E8 @ =gBldRegs
	ldr r0, _080A88EC @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #3]
_080A88C8:
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A8900
	ldrh r0, [r3, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _080A88F0
	ldrh r0, [r3, #4]
	subs r0, #0x40
	strh r0, [r3, #4]
	b _080A890E
	.align 2, 0
_080A88E4: .4byte 0x00003FFF
_080A88E8: .4byte gBldRegs
_080A88EC: .4byte 0x00003FBF
_080A88F0:
	ldr r1, _080A88FC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r5, [r3, #4]
	adds r0, r0, r5
	strh r0, [r3, #4]
	b _080A890E
	.align 2, 0
_080A88FC: .4byte 0xFFFFFF00
_080A8900:
	strh r0, [r1, #4]
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldr r1, [r4]
	ldr r0, _080A8914 @ =sub_80A8918
	str r0, [r1, #8]
_080A890E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8914: .4byte sub_80A8918

	thumb_func_start sub_80A8918
sub_80A8918: @ 0x080A8918
	push {r4, r5, r6, lr}
	ldr r0, _080A8954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r0, [r6, #3]
	ldr r1, _080A8958 @ =gBldRegs
	cmp r0, #0
	beq _080A897E
	ldr r2, _080A895C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8960 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrb r0, [r6, #1]
	adds r4, r1, #0
	cmp r0, #2
	bhi _080A8964
	movs r0, #0x84
	lsls r0, r0, #6
	b _080A8966
	.align 2, 0
_080A8954: .4byte gCurTask
_080A8958: .4byte gBldRegs
_080A895C: .4byte gDispCnt
_080A8960: .4byte gWinRegs
_080A8964:
	ldr r0, _080A8998 @ =0x00003FFF
_080A8966:
	strh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r0, #0x1f
	movs r3, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r4, #0xa]
	ldr r1, _080A899C @ =gBldRegs
	ldr r0, _080A8998 @ =0x00003FFF
	strh r0, [r1]
	strh r2, [r6, #4]
	strb r3, [r6, #3]
_080A897E:
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A89AE
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A89A0
	ldrh r0, [r6, #4]
	adds r0, #0x40
	strh r0, [r6, #4]
	b _080A8ABA
	.align 2, 0
_080A8998: .4byte 0x00003FFF
_080A899C: .4byte gBldRegs
_080A89A0:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #4]
	adds r0, r0, r3
	strh r0, [r6, #4]
	b _080A8ABA
_080A89AE:
	ldrb r0, [r6]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A89F4
	ldrb r2, [r6, #1]
	movs r3, #0x3c
	cmp r2, #1
	bne _080A89C0
	movs r3, #0x78
_080A89C0:
	ldrh r0, [r6, #6]
	cmp r0, r3
	bhs _080A89CC
	adds r0, #1
	strh r0, [r6, #6]
	b _080A8ABA
_080A89CC:
	cmp r2, #1
	bne _080A89F4
	ldr r2, _080A89F0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	movs r0, #0x4f      @ MUS_ENDING_A_COPY
	bl m4aSongNumStart
	bl sub_80A8E54
	b _080A8A64
	.align 2, 0
_080A89F0: .4byte gDispCnt
_080A89F4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _080A8A06
	adds r0, r1, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _080A8A08
_080A8A06:
	ldrb r1, [r6]
_080A8A08:
	ldr r0, _080A8A70 @ =gUnknown_080D9FBC
	adds r0, r1, r0
	ldrb r2, [r6, #2]
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080A8A84
	adds r0, r6, #0
	adds r0, #0x10
	ldrb r1, [r6, #1]
	adds r1, #1
	movs r4, #0
	strb r1, [r6, #1]
	adds r1, r2, #1
	strb r1, [r6, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	movs r5, #0
	strh r4, [r0, #0xa]
	ldr r1, _080A8A74 @ =0x0600E000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r3, _080A8A78 @ =gUnknown_080D9FA4
	ldrb r1, [r6]
	ldrb r2, [r6, #2]
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r1, r6, #0
	adds r1, #0x3a
	strb r5, [r1]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	strh r4, [r6, #6]
_080A8A64:
	ldr r0, _080A8A7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A8A80 @ =sub_80A8AC4
	str r0, [r1, #8]
	b _080A8ABA
	.align 2, 0
_080A8A70: .4byte gUnknown_080D9FBC
_080A8A74: .4byte 0x0600E000
_080A8A78: .4byte gUnknown_080D9FA4
_080A8A7C: .4byte gCurTask
_080A8A80: .4byte sub_80A8AC4
_080A8A84:
	ldrb r0, [r6]
	cmp r0, #0xb
	bls _080A8A8E
	subs r0, #0xb
	strb r0, [r6]
_080A8A8E:
	ldrb r1, [r6]
	cmp r1, #0
	bne _080A8A9C
	movs r0, #1
	bl CreatePreCreditsCutscene
	b _080A8AB2
_080A8A9C:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080A8AB2
	adds r0, r1, #0
	adds r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A9920
_080A8AB2:
	ldr r0, _080A8AC0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A8ABA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8AC0: .4byte gCurTask

	thumb_func_start sub_80A8AC4
sub_80A8AC4: @ 0x080A8AC4
	push {r4, r5, r6, lr}
	ldr r2, _080A8B0C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #3]
	adds r5, r2, #0
	ldr r1, _080A8B10 @ =gBldRegs
	cmp r0, #0
	bne _080A8B48
	ldr r2, _080A8B14 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8B18 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrb r0, [r3]
	adds r4, r2, #0
	adds r2, r1, #0
	cmp r0, #0
	bne _080A8B1C
	ldrb r0, [r3, #1]
	cmp r0, #2
	bhi _080A8B1C
	movs r0, #0x84
	lsls r0, r0, #6
	b _080A8B2A
	.align 2, 0
_080A8B0C: .4byte gCurTask
_080A8B10: .4byte gBldRegs
_080A8B14: .4byte gDispCnt
_080A8B18: .4byte gWinRegs
_080A8B1C:
	ldrh r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _080A8B64 @ =0x00003FFF
_080A8B2A:
	strh r0, [r2, #8]
	ldrh r1, [r2, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080A8B68 @ =gBldRegs
	ldr r0, _080A8B64 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #3]
_080A8B48:
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A8B8C
	ldrh r0, [r3, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrh r0, [r3]
	cmp r0, #0
	bne _080A8B6C
	ldrh r0, [r3, #4]
	subs r0, #0x10
	strh r0, [r3, #4]
	b _080A8BA0
	.align 2, 0
_080A8B64: .4byte 0x00003FFF
_080A8B68: .4byte gBldRegs
_080A8B6C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A8B7A
	ldrh r0, [r3, #4]
	subs r0, #0x40
	strh r0, [r3, #4]
	b _080A8BA0
_080A8B7A:
	ldr r1, _080A8B88 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r4, [r3, #4]
	adds r0, r0, r4
	strh r0, [r3, #4]
	b _080A8BA0
	.align 2, 0
_080A8B88: .4byte 0xFFFFFF00
_080A8B8C:
	strh r0, [r1, #4]
	ldrb r0, [r3]
	cmp r0, #6
	bne _080A8B9A
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r3, #6]
_080A8B9A:
	ldr r1, [r5]
	ldr r0, _080A8BA8 @ =sub_80A8BAC
	str r0, [r1, #8]
_080A8BA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8BA8: .4byte sub_80A8BAC

	thumb_func_start sub_80A8BAC
sub_80A8BAC: @ 0x080A8BAC
	push {r4, lr}
	ldr r2, _080A8BCC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	adds r4, r2, #0
	cmp r0, #0xa
	beq _080A8BDC
	cmp r0, #0xa
	bgt _080A8BD0
	cmp r0, #2
	beq _080A8BD6
	b _080A8BE8
	.align 2, 0
_080A8BCC: .4byte gCurTask
_080A8BD0:
	cmp r0, #0xb
	beq _080A8BE2
	b _080A8BE8
_080A8BD6:
	movs r3, #0xb4
	lsls r3, r3, #1
	b _080A8BEA
_080A8BDC:
	movs r3, #0x96
	lsls r3, r3, #1
	b _080A8BEA
_080A8BE2:
	movs r3, #0x96
	lsls r3, r3, #2
	b _080A8BEA
_080A8BE8:
	movs r3, #0xb4
_080A8BEA:
	ldrh r0, [r1, #6]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r3
	blo _080A8C14
	strh r2, [r1, #6]
	ldrb r0, [r1]
	cmp r0, #6
	bne _080A8C0C
	ldr r1, [r4]
	ldr r0, _080A8C08 @ =sub_80A8C20
	b _080A8C12
	.align 2, 0
_080A8C08: .4byte sub_80A8C20
_080A8C0C:
	strh r2, [r1, #6]
	ldr r1, [r4]
	ldr r0, _080A8C1C @ =sub_80A8918
_080A8C12:
	str r0, [r1, #8]
_080A8C14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C1C: .4byte sub_80A8918

	thumb_func_start sub_80A8C20
sub_80A8C20: @ 0x080A8C20
	push {r4, lr}
	ldr r4, _080A8C78 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _080A8C72
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #8]
	ldr r2, _080A8C7C @ =gBgScrollRegs
	asrs r0, r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _080A8C72
	movs r0, #0x78
	strh r0, [r2]
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A8C72
	movs r0, #1
	bl sub_80A98B0
	ldr r0, [r4]
	bl TaskDestroy
_080A8C72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C78: .4byte gCurTask
_080A8C7C: .4byte gBgScrollRegs

	thumb_func_start sub_80A8C80
sub_80A8C80: @ 0x080A8C80
	push {r4, lr}
	sub sp, #4
	ldr r1, _080A8CFC @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A8D00 @ =sub_80A8D24
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A8D04 @ =sub_80A9964
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strb r2, [r0, #2]
	movs r4, #0
	strh r2, [r0, #4]
	strh r2, [r0]
	ldr r1, _080A8D08 @ =gBgCntRegs
	ldr r0, _080A8D0C @ =0x00001681
	strh r0, [r1]
	ldr r0, _080A8D10 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r1, _080A8D14 @ =0x03000008
	adds r0, r3, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A8D18 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A8D1C @ =0x00000133 @ Edning Photo Colored
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A8D20 @ =0x03000032
	adds r3, r3, r2
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8CFC: .4byte gDispCnt
_080A8D00: .4byte sub_80A8D24
_080A8D04: .4byte sub_80A9964
_080A8D08: .4byte gBgCntRegs
_080A8D0C: .4byte 0x00001681
_080A8D10: .4byte gBgScrollRegs
_080A8D14: .4byte 0x03000008
_080A8D18: .4byte 0x0600B000
_080A8D1C: .4byte 0x00000133
_080A8D20: .4byte 0x03000032

	thumb_func_start sub_80A8D24
sub_80A8D24: @ 0x080A8D24
	push {r4, r5, lr}
	ldr r4, _080A8D80 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _080A8D74
	ldr r2, _080A8D84 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8D88 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A8D8C @ =gBldRegs
	ldr r0, _080A8D90 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #2]
_080A8D74:
	ldrh r0, [r3]
	cmp r0, #0x77
	bhi _080A8D94
	adds r0, #1
	strh r0, [r3]
	b _080A8DBA
	.align 2, 0
_080A8D80: .4byte gCurTask
_080A8D84: .4byte gDispCnt
_080A8D88: .4byte gWinRegs
_080A8D8C: .4byte gBldRegs
_080A8D90: .4byte 0x00003FBF
_080A8D94:
	ldr r1, _080A8DAC @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A8DB0
	ldrh r0, [r3, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrh r0, [r3, #4]
	subs r0, #0x20
	strh r0, [r3, #4]
	b _080A8DBA
	.align 2, 0
_080A8DAC: .4byte gBldRegs
_080A8DB0:
	strh r0, [r3]
	strh r0, [r1, #4]
	ldr r1, [r4]
	ldr r0, _080A8DC0 @ =sub_80A9968
	str r0, [r1, #8]
_080A8DBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8DC0: .4byte sub_80A9968

	thumb_func_start sub_80A8DC4
sub_80A8DC4: @ 0x080A8DC4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A8E28 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	ldr r6, _080A8E2C @ =gBldRegs
	cmp r0, #0
	beq _080A8E0E
	ldr r2, _080A8E30 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A8E34 @ =gWinRegs
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080A8E38 @ =0x00003FFF
	strh r0, [r6]
	strh r4, [r5, #4]
	strb r3, [r5, #2]
_080A8E0E:
	ldrh r0, [r6, #4]
	cmp r0, #0xf
	bhi _080A8E3C
	ldrh r0, [r5, #4]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #4]
	adds r0, r0, r3
	strh r0, [r5, #4]
	b _080A8E4C
	.align 2, 0
_080A8E28: .4byte gCurTask
_080A8E2C: .4byte gBldRegs
_080A8E30: .4byte gDispCnt
_080A8E34: .4byte gWinRegs
_080A8E38: .4byte 0x00003FFF
_080A8E3C:
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #1
	bl CreateTitleScreen
	ldr r0, [r7]
	bl TaskDestroy
_080A8E4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A8E54
sub_80A8E54: @ 0x080A8E54
	push {r4, lr}
	sub sp, #4
	ldr r0, _080A8EC0 @ =sub_80A8ED0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A8EC4 @ =sub_80A99CC
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	strh r0, [r2, #2]
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #8]
	ldr r3, _080A8EC8 @ =gDispCnt
	ldrh r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _080A8ECC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #4]
	movs r0, #0x84
	lsls r0, r0, #6
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	movs r0, #0x1f
	orrs r0, r1
	strh r0, [r3, #0xa]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8EC0: .4byte sub_80A8ED0
_080A8EC4: .4byte sub_80A99CC
_080A8EC8: .4byte gDispCnt
_080A8ECC: .4byte gWinRegs

	thumb_func_start sub_80A8ED0
sub_80A8ED0: @ 0x080A8ED0
	push {r4, r5, r6, lr}
	ldr r6, _080A8F34 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r5, _080A8F38 @ =gUnknown_080D9FCA
	ldrb r2, [r3]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r4, [r3, #8]
	cmp r4, r0
	ble _080A8F48
	ldr r1, _080A8F3C @ =gUnknown_080D9FD0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, r4, r0
	str r1, [r3, #8]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080A8F64
	adds r0, r2, #1
	strb r0, [r3]
	subs r1, #1
	ldr r0, _080A8F40 @ =0x00009FFE
	cmp r1, r0
	bls _080A8F64
	movs r0, #0
	str r0, [r3, #8]
	ldr r1, _080A8F44 @ =gStageData
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080A8F22
	adds r1, #0xc5
	movs r0, #1
	strb r0, [r1]
_080A8F22:
	bl sub_80260F0
	bl sub_8001E84
	ldr r0, [r6]
	bl TaskDestroy
	b _080A8F80
	.align 2, 0
_080A8F34: .4byte gCurTask
_080A8F38: .4byte gUnknown_080D9FCA
_080A8F3C: .4byte gUnknown_080D9FD0
_080A8F40: .4byte 0x00009FFE
_080A8F44: .4byte gStageData
_080A8F48:
	ldr r1, _080A8F88 @ =gUnknown_080D9FD0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r4, r1
	str r1, [r3, #8]
	ldrb r2, [r3]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080A8F64
	adds r0, r2, #1
	strb r0, [r3]
_080A8F64:
	ldrb r0, [r3]
	cmp r0, #6
	bls _080A8F6E
	movs r0, #6
	strb r0, [r3]
_080A8F6E:
	ldr r2, _080A8F8C @ =gWinRegs
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
_080A8F80:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8F88: .4byte gUnknown_080D9FD0
_080A8F8C: .4byte gWinRegs

	thumb_func_start sub_80A8F90
sub_80A8F90: @ 0x080A8F90
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080A9038 @ =sub_80A9118
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A903C @ =sub_80A9B68
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _080A9040 @ =0x06010000
	str r0, [r4, #0x18]
	movs r2, #0
	strb r2, [r4]
	movs r3, #0
	strh r2, [r4, #2]
	ldr r0, _080A9044 @ =0xFFFF9C00
	str r0, [r4, #0x10]
	movs r1, #0xdc
	lsls r1, r1, #7
	str r1, [r4, #0x14]
	ldr r0, _080A9048 @ =0xFFFFCE00
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, _080A904C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080A9050 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080A9054 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r5, _080A9058 @ =gBgSprites_Unknown1
	strb r3, [r5]
	ldr r0, _080A905C @ =gBgSprites_Unknown2
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x40
	strb r2, [r0, #3]
	strb r3, [r5, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r3, [r5, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A9060 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A9064 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	bl sub_80A9068
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9038: .4byte sub_80A9118
_080A903C: .4byte sub_80A9B68
_080A9040: .4byte 0x06010000
_080A9044: .4byte 0xFFFF9C00
_080A9048: .4byte 0xFFFFCE00
_080A904C: .4byte 0x040000D4
_080A9050: .4byte gBgCntRegs
_080A9054: .4byte 0x85000010
_080A9058: .4byte gBgSprites_Unknown1
_080A905C: .4byte gBgSprites_Unknown2
_080A9060: .4byte gBgPalette
_080A9064: .4byte gFlags

	thumb_func_start sub_80A9068
sub_80A9068: @ 0x080A9068
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r0, #0x1c
	ldr r1, [r7, #0x18]
	str r1, [r7, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r7, #0x18]
	ldr r2, _080A9110 @ =gUnknown_080D9FE4
	ldrh r1, [r2]
	movs r3, #0
	mov sb, r3
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	mov r3, sb
	strb r3, [r0, #0x1f]
	movs r6, #0xa0
	lsls r6, r6, #5
	str r6, [r0, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, [r7, #0x18]
	str r1, [r7, #0x44]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r7, #0x18]
	ldr r2, _080A9114 @ =gUnknown_080DA00C
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, r8
	strb r3, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9110: .4byte gUnknown_080D9FE4
_080A9114: .4byte gUnknown_080DA00C

	thumb_func_start sub_80A9118
sub_80A9118: @ 0x080A9118
	push {r4, r5, lr}
	ldr r5, _080A9134 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #2]
	cmp r0, #0xef
	bhi _080A9138
	adds r0, #1
	strh r0, [r4, #2]
	b _080A91BA
	.align 2, 0
_080A9134: .4byte gCurTask
_080A9138:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _080A917A
	ldr r2, _080A919C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A91A0 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A91A4 @ =gBldRegs
	ldr r0, _080A91A8 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #6]
	strh r3, [r4, #4]
_080A917A:
	adds r0, r4, #0
	bl sub_80A9B24
	ldr r1, _080A91A4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080A91B0
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080A91AC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r4, #6]
	b _080A91BA
	.align 2, 0
_080A919C: .4byte gDispCnt
_080A91A0: .4byte gWinRegs
_080A91A4: .4byte gBldRegs
_080A91A8: .4byte 0x00003FFF
_080A91AC: .4byte 0xFFFFFF00
_080A91B0:
	strh r0, [r4, #2]
	strh r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _080A91C0 @ =sub_80A91C4
	str r0, [r1, #8]
_080A91BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A91C0: .4byte sub_80A91C4

	thumb_func_start sub_80A91C4
sub_80A91C4: @ 0x080A91C4
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _080A9234 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, r6, #0
	bl sub_80A9A44
	cmp r0, #1
	bne _080A91E0
	movs r4, #1
_080A91E0:
	adds r0, r6, #0
	bl sub_80A9A74
	cmp r0, #1
	bne _080A91F0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080A91F0:
	cmp r4, #2
	bne _080A9250
	ldr r1, _080A9238 @ =0x0300001C
	adds r0, r5, r1
	ldr r2, _080A923C @ =gUnknown_080D9FE4
	ldrh r1, [r2, #8]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A9240 @ =0x03000044
	adds r0, r5, r1
	ldr r2, _080A9244 @ =gUnknown_080DA00C
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	strh r4, [r6, #2]
	ldr r0, _080A9248 @ =0x0000029E @ SE_670
	bl m4aSongNumStart
	ldr r1, [r7]
	ldr r0, _080A924C @ =sub_80A925C
	str r0, [r1, #8]
	b _080A9256
	.align 2, 0
_080A9234: .4byte gCurTask
_080A9238: .4byte 0x0300001C
_080A923C: .4byte gUnknown_080D9FE4
_080A9240: .4byte 0x03000044
_080A9244: .4byte gUnknown_080DA00C
_080A9248: .4byte 0x0000029E
_080A924C: .4byte sub_80A925C
_080A9250:
	adds r0, r6, #0
	bl sub_80A9B24
_080A9256:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A925C
sub_80A925C: @ 0x080A925C
	push {r4, r5, r6, lr}
	ldr r6, _080A92BC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _080A92D4
	adds r0, r4, #0
	bl sub_80A9AA4
	cmp r0, #1
	bne _080A92D4
	ldr r1, _080A92C0 @ =0x0300001C
	adds r0, r5, r1
	ldr r2, _080A92C4 @ =gUnknown_080D9FE4
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A92C8 @ =0x03000044
	adds r0, r5, r1
	ldr r2, _080A92CC @ =gUnknown_080DA00C
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r6]
	ldr r0, _080A92D0 @ =sub_80A92E0
	str r0, [r1, #8]
	b _080A92DA
	.align 2, 0
_080A92BC: .4byte gCurTask
_080A92C0: .4byte 0x0300001C
_080A92C4: .4byte gUnknown_080D9FE4
_080A92C8: .4byte 0x03000044
_080A92CC: .4byte gUnknown_080DA00C
_080A92D0: .4byte sub_80A92E0
_080A92D4:
	adds r0, r4, #0
	bl sub_80A9B24
_080A92DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A92E0
sub_80A92E0: @ 0x080A92E0
	push {r4, r5, r6, lr}
	ldr r6, _080A933C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80A9B24
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080A9336
	ldr r1, _080A9340 @ =0x0300001C
	adds r0, r5, r1
	ldr r2, _080A9344 @ =gUnknown_080D9FE4
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A9348 @ =0x03000044
	adds r0, r5, r1
	ldr r2, _080A934C @ =gUnknown_080DA00C
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, [r6]
	ldr r0, _080A9350 @ =sub_80A9354
	str r0, [r1, #8]
_080A9336:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A933C: .4byte gCurTask
_080A9340: .4byte 0x0300001C
_080A9344: .4byte gUnknown_080D9FE4
_080A9348: .4byte 0x03000044
_080A934C: .4byte gUnknown_080DA00C
_080A9350: .4byte sub_80A9354

	thumb_func_start sub_80A9354
sub_80A9354: @ 0x080A9354
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A93B0 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_80A9B24
	adds r5, r0, #0
	cmp r5, #0
	bne _080A93A8
	ldr r1, _080A93B4 @ =0x0300001C
	adds r0, r4, r1
	ldr r1, _080A93B8 @ =gUnknown_080D9FE4
	ldrh r2, [r1, #0x20]
	strh r2, [r0, #0xc]
	adds r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r1, _080A93BC @ =0x03000044
	adds r0, r4, r1
	ldr r1, _080A93C0 @ =gUnknown_080DA00C
	ldrh r2, [r1, #0x20]
	strh r2, [r0, #0xc]
	adds r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	strh r5, [r6, #2]
	ldr r1, [r7]
	ldr r0, _080A93C4 @ =sub_80A99D0
	str r0, [r1, #8]
_080A93A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A93B0: .4byte gCurTask
_080A93B4: .4byte 0x0300001C
_080A93B8: .4byte gUnknown_080D9FE4
_080A93BC: .4byte 0x03000044
_080A93C0: .4byte gUnknown_080DA00C
_080A93C4: .4byte sub_80A99D0

	thumb_func_start sub_80A93C8
sub_80A93C8: @ 0x080A93C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080A9400 @ =0xFFFFFBF8
	add sp, r4
	ldr r0, _080A9404 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A9410
	ldr r0, _080A9408 @ =Palette_unknown_318
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A940C @ =Palette_unknown_319
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
	b _080A9424
	.align 2, 0
_080A9400: .4byte 0xFFFFFBF8
_080A9404: .4byte gCurTask
_080A9408: .4byte Palette_unknown_318
_080A940C: .4byte Palette_unknown_319
_080A9410:
	ldr r0, _080A94D8 @ =Palette_unknown_307
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A94DC @ =Palette_unknown_308
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
_080A9424:
	movs r7, #0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	add r2, sp
	ldr r6, _080A94E0 @ =0x00000404
	add r6, sp
	str r2, [r6]
	movs r0, #0x1f
	mov ip, r0
	movs r1, #0x1f
	mov r8, r1
	movs r2, #0x82
	lsls r2, r2, #2
	adds r2, r2, r4
	mov sl, r2
	movs r6, #0x83
	lsls r6, r6, #2
	adds r6, r6, r4
	mov sb, r6
_080A9458:
	lsls r2, r7, #1
	adds r3, r2, r7
	lsls r3, r3, #2
	movs r0, #0x80
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	adds r6, r0, r3
	ldr r1, _080A94E0 @ =0x00000404
	add r1, sp
	ldr r1, [r1]
	adds r5, r1, r2
	ldrh r0, [r5]
	mov r1, r8
	ands r1, r0
	mov r0, sp
	adds r4, r0, r2
	ldrh r2, [r4]
	mov r0, r8
	ands r0, r2
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r6]
	mov r1, sl
	adds r2, r1, r3
	ldrh r1, [r5]
	lsrs r1, r1, #5
	mov r6, ip
	ands r1, r6
	ldrh r0, [r4]
	lsrs r0, r0, #5
	ands r0, r6
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r2]
	add r3, sb
	ldrh r1, [r5]
	lsrs r1, r1, #0xa
	ands r1, r6
	ldrh r0, [r4]
	lsrs r0, r0, #0xa
	ands r0, r6
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xff
	bls _080A9458
	ldr r1, _080A94E4 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _080A94E8 @ =sub_80A94EC
	str r2, [r0, #8]
	movs r3, #0x81
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A94D8: .4byte Palette_unknown_307
_080A94DC: .4byte Palette_unknown_308
_080A94E0: .4byte 0x00000404
_080A94E4: .4byte gCurTask
_080A94E8: .4byte sub_80A94EC

	thumb_func_start sub_80A94EC
sub_80A94EC: @ 0x080A94EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080A9524 @ =0xFFFFFBFC
	add sp, r4
	ldr r0, _080A9528 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080A9534
	ldr r0, _080A952C @ =Palette_unknown_318
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A9530 @ =Palette_unknown_319
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
	b _080A9548
	.align 2, 0
_080A9524: .4byte 0xFFFFFBFC
_080A9528: .4byte gCurTask
_080A952C: .4byte Palette_unknown_318
_080A9530: .4byte Palette_unknown_319
_080A9534:
	ldr r0, _080A9584 @ =Palette_unknown_307
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A9588 @ =Palette_unknown_308
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
_080A9548:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bgt _080A9558
	b _080A9664
_080A9558:
	ldrb r0, [r7, #1]
	cmp r0, #0x10
	bne _080A95A4
	ldr r1, _080A958C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080A9590 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080A9594 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080A9598 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080A959C @ =gVramGraphicsCopyCursor
	ldr r0, _080A95A0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	bl sub_80ABD44
	b _080A9664
	.align 2, 0
_080A9584: .4byte Palette_unknown_307
_080A9588: .4byte Palette_unknown_308
_080A958C: .4byte 0x0000FFFF
_080A9590: .4byte gBackgroundsCopyQueueCursor
_080A9594: .4byte gBackgroundsCopyQueueIndex
_080A9598: .4byte gBgSpritesCount
_080A959C: .4byte gVramGraphicsCopyCursor
_080A95A0: .4byte gVramGraphicsCopyQueueIndex
_080A95A4:
	movs r0, #0
	mov r8, r0
	adds r1, r7, #4
	mov sl, r1
	movs r6, #0x80
	lsls r6, r6, #3
	add r6, sp
	movs r2, #0x1f
	mov sb, r2
_080A95B6:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	bl memset
	mov r0, r8
	lsls r5, r0, #1
	mov r1, sl
	adds r4, r1, r5
	ldrh r0, [r4]
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #8
	mov r2, r8
	adds r3, r5, r2
	lsls r3, r3, #2
	movs r2, #0x81
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r3
	ldrb r2, [r7, #1]
	ldr r0, [r0]
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	strb r1, [r6]
	ldrh r0, [r4]
	lsrs r0, r0, #5
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #8
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r3
	ldrb r2, [r7, #1]
	ldr r1, [r1]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #8
	strb r0, [r6, #1]
	ldrh r0, [r4]
	lsrs r0, r0, #0xa
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r3
	ldrb r2, [r7, #1]
	ldr r1, [r1]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #8
	strb r0, [r6, #2]
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	lsls r1, r1, #5
	orrs r0, r1
	ldrb r1, [r6, #2]
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80C4C0C
	ldr r1, _080A9678 @ =gBgPalette
	adds r5, r5, r1
	strh r0, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xff
	bls _080A95B6
	ldr r2, _080A967C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #0
	strh r0, [r7, #2]
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
_080A9664:
	ldr r3, _080A9680 @ =0x00000404
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9678: .4byte gBgPalette
_080A967C: .4byte gFlags
_080A9680: .4byte 0x00000404

	thumb_func_start sub_80A9684
sub_80A9684: @ 0x080A9684
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A977C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r8, r0
	ldr r5, _080A9780 @ =gStageData
	movs r0, #0
	strb r0, [r5, #6]
	movs r0, #2
	strb r0, [r5, #3]
	ldr r6, _080A9784 @ =gUnknown_080DA034
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r6, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r5, #0xa]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r5, #0xe]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #9]
	movs r4, #1
	movs r0, #1
	strb r0, [r5, #0xb]
	bl sub_800214C
	ldr r1, _080A9788 @ =gPlayers
	mov ip, r1
	movs r0, #0x2b
	add r0, ip
	mov sb, r0
	ldrb r0, [r0]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r1, r0
	orrs r1, r4
	mov r7, ip
	adds r7, #0x2a
	ldrb r4, [r7]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r4
	strb r0, [r7]
	movs r4, #0x1d
	rsbs r4, r4, #0
	ands r1, r4
	movs r0, #0x10
	orrs r1, r0
	mov r0, sb
	strb r1, [r0]
	ldr r7, _080A978C @ =0x0000017B
	add r7, ip
	ldrb r0, [r7]
	ands r2, r0
	strb r2, [r7]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, #4
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r6, #0xbd
	lsls r6, r6, #1
	add r6, ip
	movs r0, #0xf
	ands r0, r1
	ldrb r1, [r6]
	ands r3, r1
	orrs r3, r0
	strb r3, [r6]
	ands r2, r4
	movs r0, #8
	orrs r2, r0
	strb r2, [r7]
	ldr r2, _080A9790 @ =0x000002CB
	add r2, ip
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080A9794 @ =0x0000041B
	add r1, ip
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	movs r1, #1
	bl WarpToMap
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A977C: .4byte gCurTask
_080A9780: .4byte gStageData
_080A9784: .4byte gUnknown_080DA034
_080A9788: .4byte gPlayers
_080A978C: .4byte 0x0000017B
_080A9790: .4byte 0x000002CB
_080A9794: .4byte 0x0000041B

	thumb_func_start sub_80A9798
sub_80A9798: @ 0x080A9798
	push {r4, r5, r6, lr}
	ldr r6, _080A97FC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	ldr r5, _080A9800 @ =gBldRegs
	cmp r0, #0
	bne _080A97E2
	ldr r2, _080A9804 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A9808 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	subs r3, #1
	strh r3, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	strh r3, [r5]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #6]
_080A97E2:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080A9810
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldr r1, _080A980C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r4, #6]
	b _080A9818
	.align 2, 0
_080A97FC: .4byte gCurTask
_080A9800: .4byte gBldRegs
_080A9804: .4byte gDispCnt
_080A9808: .4byte gWinRegs
_080A980C: .4byte 0xFFFFFF00
_080A9810:
	strh r0, [r5, #4]
	ldr r1, [r6]
	ldr r0, _080A9820 @ =sub_80A9B74
	str r0, [r1, #8]
_080A9818:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A9820: .4byte sub_80A9B74

	thumb_func_start sub_80A9824
sub_80A9824: @ 0x080A9824
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A9884 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r0, [r6]
	ldr r7, _080A9888 @ =gBldRegs
	cmp r0, #0
	beq _080A986A
	ldr r2, _080A988C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A9890 @ =gWinRegs
	movs r5, #0
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldr r4, _080A9894 @ =0x00003FFF
	strh r4, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	strh r4, [r7]
	strb r3, [r6]
	strh r5, [r6, #6]
_080A986A:
	ldrh r0, [r7, #4]
	cmp r0, #0xf
	bhi _080A9898
	ldrh r0, [r6, #6]
	lsrs r0, r0, #8
	strh r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #6]
	adds r0, r0, r3
	strh r0, [r6, #6]
	b _080A98A0
	.align 2, 0
_080A9884: .4byte gCurTask
_080A9888: .4byte gBldRegs
_080A988C: .4byte gDispCnt
_080A9890: .4byte gWinRegs
_080A9894: .4byte 0x00003FFF
_080A9898:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080A98A8 @ =sub_80A9BA8
	str r0, [r1, #8]
_080A98A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A98A8: .4byte sub_80A9BA8

	thumb_func_start sub_80A98AC
sub_80A98AC: @ 0x080A98AC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A98B0
sub_80A98B0: @ 0x080A98B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080A98F0 @ =sub_80A93C8
	ldr r1, _080A98F4 @ =0x00000E04
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A98F8 @ =sub_80A9B6C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r1, #0
	strb r4, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	cmp r4, #0
	beq _080A9904
	ldr r0, _080A98FC @ =Palette_unknown_318
	ldr r3, _080A9900 @ =0x03000004
	adds r1, r2, r3
	movs r2, #0x80
	bl CpuFastSet
	b _080A9910
	.align 2, 0
_080A98F0: .4byte sub_80A93C8
_080A98F4: .4byte 0x00000E04
_080A98F8: .4byte sub_80A9B6C
_080A98FC: .4byte Palette_unknown_318
_080A9900: .4byte 0x03000004
_080A9904:
	ldr r0, _080A9918 @ =Palette_unknown_307
	ldr r3, _080A991C @ =0x03000004
	adds r1, r2, r3
	movs r2, #0x80
	bl CpuFastSet
_080A9910:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9918: .4byte Palette_unknown_307
_080A991C: .4byte 0x03000004

	thumb_func_start sub_80A9920
sub_80A9920: @ 0x080A9920
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080A995C @ =sub_80A9684
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080A9960 @ =sub_80A9B70
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0, #2]
	subs r4, #0xc
	strb r4, [r0, #1]
	movs r1, #0
	strh r2, [r0, #4]
	strb r1, [r0]
	strh r2, [r0, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A995C: .4byte sub_80A9684
_080A9960: .4byte sub_80A9B70

	thumb_func_start sub_80A9964
sub_80A9964: @ 0x080A9964
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9968
sub_80A9968: @ 0x080A9968
	push {r4, lr}
	ldr r4, _080A9998 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bls _080A9990
	movs r0, #0
	bl sub_80A98B0
	ldr r0, [r4]
	bl TaskDestroy
_080A9990:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9998: .4byte gCurTask

	thumb_func_start sub_80A999C
sub_80A999C: @ 0x080A999C
	push {r4, lr}
	ldr r4, _080A99C4 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80A99C8
	cmp r0, #1
	bne _080A99BE
	movs r0, #0
	bl sub_80ABD44
	ldr r0, [r4]
	bl TaskDestroy
_080A99BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A99C4: .4byte gCurTask

	thumb_func_start sub_80A99C8
sub_80A99C8: @ 0x080A99C8
	movs r0, #1
	bx lr

	thumb_func_start sub_80A99CC
sub_80A99CC: @ 0x080A99CC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A99D0
sub_80A99D0: @ 0x080A99D0
	push {r4, r5, lr}
	ldr r5, _080A9A14 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A9B24
	adds r0, r4, #0
	bl sub_80A9AD8
	cmp r0, #1
	bne _080A9A0C
	ldrh r0, [r4, #2]
	cmp r0, #0x77
	bhi _080A99F8
	adds r0, #1
	strh r0, [r4, #2]
_080A99F8:
	ldrh r0, [r4, #2]
	cmp r0, #0x78
	bne _080A9A0C
	ldr r1, [r4, #0x18]
	movs r0, #0
	bl sub_80AA270
	ldr r1, [r5]
	ldr r0, _080A9A18 @ =sub_80A9A1C
	str r0, [r1, #8]
_080A9A0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9A14: .4byte gCurTask
_080A9A18: .4byte sub_80A9A1C

	thumb_func_start sub_80A9A1C
sub_80A9A1C: @ 0x080A9A1C
	push {r4, lr}
	ldr r4, _080A9A40 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80A9AD8
	cmp r0, #1
	bne _080A9A38
	ldr r0, [r4]
	bl TaskDestroy
_080A9A38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9A40: .4byte gCurTask

	thumb_func_start sub_80A9A44
sub_80A9A44: @ 0x080A9A44
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r2, _080A9A68 @ =0x000077FF
	cmp r0, r2
	bgt _080A9A5C
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	ble _080A9A6C
_080A9A5C:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x10]
	movs r0, #1
	b _080A9A6E
	.align 2, 0
_080A9A68: .4byte 0x000077FF
_080A9A6C:
	movs r0, #0
_080A9A6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A9A74
sub_80A9A74: @ 0x080A9A74
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldr r2, _080A9A98 @ =0x000121FF
	cmp r0, r2
	bgt _080A9A8C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r1, #8]
	cmp r0, r2
	ble _080A9A9C
_080A9A8C:
	movs r0, #0x91
	lsls r0, r0, #9
	str r0, [r1, #8]
	movs r0, #1
	b _080A9A9E
	.align 2, 0
_080A9A98: .4byte 0x000121FF
_080A9A9C:
	movs r0, #0
_080A9A9E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A9AA4
sub_80A9AA4: @ 0x080A9AA4
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _080A9AC8
	ldr r2, _080A9AC4 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #8]
	movs r2, #0x8f
	lsls r2, r2, #8
	cmp r0, r2
	bgt _080A9AD2
	str r2, [r1, #8]
	movs r0, #1
	b _080A9AD4
	.align 2, 0
_080A9AC4: .4byte 0xFFFFFF00
_080A9AC8:
	movs r0, #0x8f
	lsls r0, r0, #8
	str r0, [r1, #8]
	movs r0, #1
	b _080A9AD4
_080A9AD2:
	movs r0, #0
_080A9AD4:
	pop {r1}
	bx r1

	thumb_func_start sub_80A9AD8
sub_80A9AD8: @ 0x080A9AD8
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #8]
	ldr r3, _080A9B18 @ =0x000121FF
	cmp r0, r3
	bgt _080A9AF2
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #8]
	cmp r0, r3
	ble _080A9AF4
_080A9AF2:
	movs r2, #1
_080A9AF4:
	ldr r0, [r1, #0x10]
	ldr r3, _080A9B18 @ =0x000121FF
	cmp r0, r3
	bgt _080A9B0A
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #0x10]
	ldr r0, [r1, #8]
	cmp r0, r3
	ble _080A9B10
_080A9B0A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080A9B10:
	cmp r2, #2
	beq _080A9B1C
	movs r0, #0
	b _080A9B1E
	.align 2, 0
_080A9B18: .4byte 0x000121FF
_080A9B1C:
	movs r0, #1
_080A9B1E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A9B24
sub_80A9B24: @ 0x080A9B24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x1c
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A9B68
sub_80A9B68: @ 0x080A9B68
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9B6C
sub_80A9B6C: @ 0x080A9B6C
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9B70
sub_80A9B70: @ 0x080A9B70
	bx lr
	.align 2, 0

	thumb_func_start sub_80A9B74
sub_80A9B74: @ 0x080A9B74
	push {lr}
	ldr r0, _080A9B9C @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	ldr r1, _080A9BA0 @ =0x02570000
	cmp r0, r1
	ble _080A9B98
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, _080A9BA4 @ =sub_80A9824
	str r0, [r3, #8]
_080A9B98:
	pop {r0}
	bx r0
	.align 2, 0
_080A9B9C: .4byte gCurTask
_080A9BA0: .4byte 0x02570000
_080A9BA4: .4byte sub_80A9824

	thumb_func_start sub_80A9BA8
sub_80A9BA8: @ 0x080A9BA8
	push {r4, lr}
	ldr r4, _080A9BD4 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r2, r0, #1
	strb r2, [r1, #2]
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A872C
	ldr r0, [r4]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9BD4: .4byte gCurTask

	thumb_func_start sub_80A9BD8
sub_80A9BD8: @ 0x080A9BD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r5, r3, #0
	ldr r0, _080A9C78 @ =sub_80AB818
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A9C7C @ =sub_80AB814
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r3, #0
	strh r3, [r4, #6]
	movs r0, #1
	ands r0, r5
	movs r7, #1
	rsbs r7, r7, #0
	adds r1, r7, #0
	cmp r0, #0
	beq _080A9C1C
	movs r1, #1
_080A9C1C:
	strb r1, [r4, #5]
	strb r5, [r4, #4]
	str r6, [r4, #0xc]
	strh r3, [r4, #8]
	mov r1, sb
	lsls r0, r1, #8
	str r0, [r4, #0x10]
	mov r7, r8
	lsls r0, r7, #8
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4]
	ldr r0, _080A9C80 @ =0x03000018
	adds r2, r2, r0
	str r6, [r2]
	ldr r0, [r4, #0xc]
	adds r0, #0x80
	str r0, [r4, #0xc]
	ldr r1, _080A9C84 @ =gUnknown_080DA284
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	strh r3, [r2, #0x10]
	strh r3, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	str r3, [r2, #8]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _080A9C88
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r2, #8]
	b _080A9C8A
	.align 2, 0
_080A9C78: .4byte sub_80AB818
_080A9C7C: .4byte sub_80AB814
_080A9C80: .4byte 0x03000018
_080A9C84: .4byte gUnknown_080DA284
_080A9C88:
	str r3, [r2, #8]
_080A9C8A:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A9CA0
sub_80A9CA0: @ 0x080A9CA0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r7, #0
	adds r4, r2, #0
	adds r4, #0x18
	ldr r3, [r2, #0x10]
	asrs r5, r3, #8
	ldr r1, _080A9CE4 @ =gUnknown_080DA28C
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r5, r0
	bge _080A9CE8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	str r0, [r2, #0x10]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r2, #0x10]
	asrs r1, r1, #8
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r1, r0
	blt _080A9D1E
	b _080A9D0A
	.align 2, 0
_080A9CE4: .4byte gUnknown_080DA28C
_080A9CE8:
	cmp r5, r0
	ble _080A9D18
	ldr r1, _080A9D10 @ =0xFFFFFF00
	adds r0, r3, r1
	str r0, [r2, #0x10]
	ldr r0, [r4, #8]
	ldr r1, _080A9D14 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, [r2, #0x10]
	asrs r1, r1, #8
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r1, r0
	bgt _080A9D1E
_080A9D0A:
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	b _080A9D1E
	.align 2, 0
_080A9D10: .4byte 0xFFFFFF00
_080A9D14: .4byte 0xFFFFFBFF
_080A9D18:
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	movs r7, #1
_080A9D1E:
	ldr r3, [r2, #0x14]
	asrs r4, r3, #8
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r1, r6, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bge _080A9D40
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r3, r4
	str r0, [r2, #0x14]
	asrs r0, r0, #8
	cmp r0, r1
	blt _080A9D66
	b _080A9D50
_080A9D40:
	cmp r4, r1
	ble _080A9D5C
	ldr r4, _080A9D58 @ =0xFFFFFF00
	adds r0, r3, r4
	str r0, [r2, #0x14]
	asrs r0, r0, #8
	cmp r0, r1
	bgt _080A9D66
_080A9D50:
	lsls r0, r1, #8
	str r0, [r2, #0x14]
	b _080A9D66
	.align 2, 0
_080A9D58: .4byte 0xFFFFFF00
_080A9D5C:
	lsls r0, r1, #8
	str r0, [r2, #0x14]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A9D66:
	cmp r7, #2
	beq _080A9D6E
	movs r0, #0
	b _080A9D70
_080A9D6E:
	movs r0, #1
_080A9D70:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A9D78
sub_80A9D78: @ 0x080A9D78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x18
	ldr r3, _080A9DA4 @ =gUnknown_080DA28C
	ldrb r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r0, _080A9DA8 @ =gUnknown_080DA2AA
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #8
	subs r1, r2, r0
	adds r2, r2, r0
	ldr r0, [r5, #0x10]
	cmp r0, r1
	bgt _080A9DAC
	movs r0, #1
	b _080A9DB2
	.align 2, 0
_080A9DA4: .4byte gUnknown_080DA28C
_080A9DA8: .4byte gUnknown_080DA2AA
_080A9DAC:
	cmp r0, r2
	blt _080A9DB4
	movs r0, #0xff
_080A9DB2:
	strb r0, [r5, #5]
_080A9DB4:
	movs r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080A9DC6
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A9DCC
_080A9DC6:
	ldr r0, [r4, #8]
	ldr r1, _080A9E18 @ =0xFFFFFBFF
	ands r0, r1
_080A9DCC:
	str r0, [r4, #8]
	movs r1, #5
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r2, r2, #8
	str r2, [r5, #0x14]
	ldr r4, _080A9E1C @ =gSineTable
	ldrh r3, [r5, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	adds r2, r2, r0
	str r2, [r5, #0x14]
	ldr r1, _080A9E20 @ =gUnknown_080DA2B9
	ldrb r0, [r5, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r3, r3, r0
	strh r3, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9E18: .4byte 0xFFFFFBFF
_080A9E1C: .4byte gSineTable
_080A9E20: .4byte gUnknown_080DA2B9

	thumb_func_start sub_80A9E24
sub_80A9E24: @ 0x080A9E24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080A9EA0 @ =sub_80A9EB4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A9EA4 @ =sub_80AB8F8
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	str r5, [r4]
	movs r3, #0
	strb r3, [r4, #4]
	movs r5, #0
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	str r6, [r4, #0xc]
	ldr r1, _080A9EA8 @ =0xFFFFCE00
	str r1, [r4, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #6
	str r1, [r4, #0x14]
	ldr r1, _080A9EAC @ =0x03000018
	adds r0, r0, r1
	str r6, [r0]
	ldr r1, [r4, #0xc]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r4, #0xc]
	ldr r2, _080A9EB0 @ =gUnknown_080DA06C
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r3, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9EA0: .4byte sub_80A9EB4
_080A9EA4: .4byte sub_80AB8F8
_080A9EA8: .4byte 0xFFFFCE00
_080A9EAC: .4byte 0x03000018
_080A9EB0: .4byte gUnknown_080DA06C

	thumb_func_start sub_80A9EB4
sub_80A9EB4: @ 0x080A9EB4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A9F28 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80AB8B0
	ldr r0, _080A9F2C @ =0x03000018
	adds r4, r4, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080A9EFA
	ldr r1, [r5]
	movs r0, #0x12
	strb r0, [r1]
_080A9EFA:
	ldrh r0, [r5, #8]
	cmp r0, #0xb3
	bls _080A9F20
	ldr r1, _080A9F30 @ =gUnknown_080DA06C
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strh r6, [r5, #8]
	ldr r1, [r7]
	ldr r0, _080A9F34 @ =sub_80A9F38
	str r0, [r1, #8]
_080A9F20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F28: .4byte gCurTask
_080A9F2C: .4byte 0x03000018
_080A9F30: .4byte gUnknown_080DA06C
_080A9F34: .4byte sub_80A9F38

	thumb_func_start sub_80A9F38
sub_80A9F38: @ 0x080A9F38
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A9F9C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80AB8B0
	ldr r0, _080A9FA0 @ =0x03000018
	adds r5, r5, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080A9F96
	ldr r1, _080A9FA4 @ =gUnknown_080DA06C
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r1, [r7]
	ldr r0, _080A9FA8 @ =sub_80A9FAC
	str r0, [r1, #8]
_080A9F96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F9C: .4byte gCurTask
_080A9FA0: .4byte 0x03000018
_080A9FA4: .4byte gUnknown_080DA06C
_080A9FA8: .4byte sub_80A9FAC

	thumb_func_start sub_80A9FAC
sub_80A9FAC: @ 0x080A9FAC
	push {r4, r5, r6, r7, lr}
	ldr r7, _080AA038 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0x18
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r5, #1
	beq _080AA064
	ldrb r3, [r6, #4]
	cmp r3, #0
	bne _080AA01A
	ldr r2, _080AA03C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AA040 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldr r0, _080AA044 @ =0x00003FFF
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AA048 @ =gBldRegs
	ldr r0, _080AA04C @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r6, #6]
	movs r0, #1
	strb r0, [r6, #4]
	ldr r0, _080AA050 @ =0x0000029D @ SE_PHOTO_CAMERA
	bl m4aSongNumStart
_080AA01A:
	ldr r1, _080AA048 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AA054
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r4, [r6, #6]
	adds r0, r0, r4
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080AA064
	.align 2, 0
_080AA038: .4byte gCurTask
_080AA03C: .4byte gDispCnt
_080AA040: .4byte gWinRegs
_080AA044: .4byte 0x00003FFF
_080AA048: .4byte gBldRegs
_080AA04C: .4byte 0x00003FBF
_080AA050: .4byte 0x0000029D
_080AA054:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r7]
	bl TaskDestroy
_080AA064:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AA06C
sub_80AA06C: @ 0x080AA06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080AA1A0 @ =sub_80AB8FC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA1A4 @ =sub_80AB98C
	str r1, [sp]
	adds r1, r2, #0
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7]
	movs r0, #0
	mov sl, r0
	movs r5, #0
	strh r5, [r7, #4]
	ldr r0, _080AA1A8 @ =0xFFFF2E00
	str r0, [r7, #8]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r7, #0xc]
	ldr r1, _080AA1AC @ =0x030000B0
	adds r0, r4, r1
	str r6, [r0]
	ldr r2, _080AA1B0 @ =gUnknown_080DBA94
	ldr r1, [r2, #0xc]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _080AA1B4 @ =0x030000D8
	adds r4, r4, r0
	str r6, [r4]
	ldr r2, [sp, #4]
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r2]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r7, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	mov r1, sb
	strh r1, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r3, _080AA1B8 @ =gUnknown_080DA2C8
	movs r0, #0
	mov r8, r0
_080AA13A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x10
	adds r0, r7, r0
	str r6, [r0]
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #3
	bls _080AA13A
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1A0: .4byte sub_80AB8FC
_080AA1A4: .4byte sub_80AB98C
_080AA1A8: .4byte 0xFFFF2E00
_080AA1AC: .4byte 0x030000B0
_080AA1B0: .4byte gUnknown_080DBA94
_080AA1B4: .4byte 0x030000D8
_080AA1B8: .4byte gUnknown_080DA2C8

	thumb_func_start sub_80AA1BC
sub_80AA1BC: @ 0x080AA1BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0xd8
	movs r0, #0
	mov r8, r0
_080AA1D2:
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r1, r7, r1
	strh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r3, _080AA26C @ =0xFFFFFBFF
	ands r0, r3
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp]
	cmp r5, #2
	bls _080AA1D2
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r2, [r6, #8]
	asrs r2, r2, #8
	movs r4, #0
	strh r2, [r0, #0x10]
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r2, r7, r2
	strh r2, [r0, #0x10]
	ldr r1, [r0, #8]
	ands r1, r3
	str r1, [r0, #8]
	strb r4, [r0, #0x1f]
	bl DisplaySprite
	movs r5, #0
_080AA22E:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #0x10
	adds r4, r6, r4
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	adds r1, #0x3a
	strh r1, [r4, #0x10]
	adds r0, #0x28
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AA22E
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA26C: .4byte 0xFFFFFBFF

	thumb_func_start sub_80AA270
sub_80AA270: @ 0x080AA270
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	ldr r1, _080AA348 @ =gDispCnt
	ldr r2, _080AA34C @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080AA350 @ =sub_80AA384
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA354 @ =sub_80AB990
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	str r4, [r0]
	movs r5, #0
	movs r2, #0
	strh r2, [r0, #8]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [sp, #4]
	ldr r3, _080AA358 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r1, _080AA35C @ =gBgCntRegs
	mov r8, r1
	ldrh r1, [r1, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080AA360 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080AA364 @ =gBgSprites_Unknown1
	strb r5, [r4, #3]
	ldr r0, _080AA368 @ =gBgSprites_Unknown2
	strb r5, [r0, #0xc]
	strb r5, [r0, #0xd]
	movs r1, #0xff
	strb r1, [r0, #0xe]
	movs r3, #0x40
	strb r3, [r0, #0xf]
	strb r5, [r4, #2]
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r5, [r4, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	ldr r0, _080AA36C @ =0x00004E07
	mov r1, r8
	strh r0, [r1]
	ldr r0, _080AA370 @ =gBgScrollRegs
	strh r2, [r0]
	ldr r1, _080AA374 @ =0x03000014
	adds r0, r6, r1
	ldr r1, _080AA378 @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AA37C @ =0x06007000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #1     @ Credits "SONIC ADVANCE 3 END"
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _080AA380 @ =0x0300003E
	adds r6, r6, r1
	strb r5, [r6]
	strh r2, [r0, #0x2e]
	bl DrawBackground
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AA348: .4byte gDispCnt
_080AA34C: .4byte 0x00001041
_080AA350: .4byte sub_80AA384
_080AA354: .4byte sub_80AB990
_080AA358: .4byte 0x040000D4
_080AA35C: .4byte gBgCntRegs
_080AA360: .4byte 0x85000010
_080AA364: .4byte gBgSprites_Unknown1
_080AA368: .4byte gBgSprites_Unknown2
_080AA36C: .4byte 0x00004E07
_080AA370: .4byte gBgScrollRegs
_080AA374: .4byte 0x03000014
_080AA378: .4byte 0x06004000
_080AA37C: .4byte 0x06007000
_080AA380: .4byte 0x0300003E

	thumb_func_start sub_80AA384
sub_80AA384: @ 0x080AA384
	push {r4, r5, r6, r7, lr}
	ldr r6, _080AA3E4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r4, [r3, #4]
	ldr r5, _080AA3E8 @ =gBldRegs
	cmp r4, #0
	bne _080AA3D0
	ldr r2, _080AA3EC @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA3F0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	ldr r0, _080AA3F4 @ =0x000001C1
	strh r0, [r5]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #6]
	movs r0, #1
	strh r0, [r3, #4]
	ldr r1, _080AA3F8 @ =0x00001141
	adds r0, r1, #0
	strh r0, [r2]
_080AA3D0:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080AA3FC
	ldrh r0, [r3, #6]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldrh r0, [r3, #6]
	subs r0, #0x40
	strh r0, [r3, #6]
	b _080AA404
	.align 2, 0
_080AA3E4: .4byte gCurTask
_080AA3E8: .4byte gBldRegs
_080AA3EC: .4byte gDispCnt
_080AA3F0: .4byte gWinRegs
_080AA3F4: .4byte 0x000001C1
_080AA3F8: .4byte 0x00001141
_080AA3FC:
	strh r0, [r5, #4]
	ldr r1, [r6]
	ldr r0, _080AA40C @ =sub_80AB994
	str r0, [r1, #8]
_080AA404:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA40C: .4byte sub_80AB994

	thumb_func_start sub_80AA410
sub_80AA410: @ 0x080AA410
	push {r4, r5, r6, lr}
	ldr r5, _080AA464 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	ldr r4, _080AA468 @ =gBldRegs
	cmp r0, #0
	beq _080AA450
	ldr r2, _080AA46C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA470 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _080AA474 @ =0x000001C1
	strh r0, [r4]
	strh r2, [r3, #6]
	strh r2, [r3, #4]
	strh r2, [r4, #4]
_080AA450:
	ldrh r0, [r4, #4]
	cmp r0, #0xf
	bhi _080AA478
	ldrh r0, [r3, #6]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r3, #6]
	adds r0, #0x40
	strh r0, [r3, #6]
	b _080AA490
	.align 2, 0
_080AA464: .4byte gCurTask
_080AA468: .4byte gBldRegs
_080AA46C: .4byte gDispCnt
_080AA470: .4byte gWinRegs
_080AA474: .4byte 0x000001C1
_080AA478:
	movs r0, #0x10
	strh r0, [r4, #4]
	ldrh r0, [r3, #8]
	adds r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080AA490
	ldr r1, [r5]
	ldr r0, _080AA498 @ =sub_80AA49C
	str r0, [r1, #8]
_080AA490:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA498: .4byte sub_80AA49C

	thumb_func_start sub_80AA49C
sub_80AA49C: @ 0x080AA49C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r0, #0
	ldr r1, _080AA508 @ =gLoadedSaveGame
	mov ip, r1
	mov r6, ip
	adds r6, #0x37
	movs r7, #4
_080AA4AC:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #2
_080AA4B2:
	adds r0, r2, r3
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA4C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080AA4C6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080AA4B2
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AA4AC
	mov r0, ip
	adds r0, #0x33
	ldrb r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #3
	beq _080AA502
	ldr r1, _080AA50C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AA4F8
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA502
_080AA4F8:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AA510
_080AA502:
	bl LaunchGameIntro
	b _080AA52E
	.align 2, 0
_080AA508: .4byte gLoadedSaveGame
_080AA50C: .4byte gStageData
_080AA510:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080AA51C
	movs r0, #1
	b _080AA52A
_080AA51C:
	cmp r5, #0x1c
	bne _080AA53C
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080AA53C
	movs r0, #2
_080AA52A:
	bl sub_80AB120
_080AA52E:
	ldr r0, _080AA538 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AA548
	.align 2, 0
_080AA538: .4byte gCurTask
_080AA53C:
	bl LaunchGameIntro
	ldr r0, _080AA550 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AA548:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA550: .4byte gCurTask

	thumb_func_start sub_80AA554
sub_80AA554: @ 0x080AA554
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080AA600 @ =sub_80AB9CC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA604 @ =sub_80AB9C8
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _080AA608 @ =gLoadedSaveGame
	ldr r2, _080AA60C @ =0x00000366
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	strb r2, [r1]
	strb r4, [r1, #1]
	movs r2, #0
	strh r0, [r1, #6]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [sp, #4]
	ldr r3, _080AA610 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _080AA614 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080AA618 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080AA61C @ =gBgSprites_Unknown1
	strb r2, [r4, #3]
	ldr r0, _080AA620 @ =gBgSprites_Unknown2
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	movs r1, #0xff
	strb r1, [r0, #0xe]
	movs r3, #0x40
	strb r3, [r0, #0xf]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4]
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AA624 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AA628 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA600: .4byte sub_80AB9CC
_080AA604: .4byte sub_80AB9C8
_080AA608: .4byte gLoadedSaveGame
_080AA60C: .4byte 0x00000366
_080AA610: .4byte 0x040000D4
_080AA614: .4byte gBgCntRegs
_080AA618: .4byte 0x85000010
_080AA61C: .4byte gBgSprites_Unknown1
_080AA620: .4byte gBgSprites_Unknown2
_080AA624: .4byte gBgPalette
_080AA628: .4byte gFlags

	thumb_func_start sub_80AA62C
sub_80AA62C: @ 0x080AA62C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080AA684 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA688 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080AA68C @ =0x00005687
	strh r0, [r1]
	ldr r0, _080AA690 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, r3, #0
	adds r0, #8
	ldr r1, _080AA694 @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AA698 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080AA69C @ =0x00000141
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x32
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA684: .4byte gDispCnt
_080AA688: .4byte gBgCntRegs
_080AA68C: .4byte 0x00005687
_080AA690: .4byte gBgScrollRegs
_080AA694: .4byte 0x06004000
_080AA698: .4byte 0x0600B000
_080AA69C: .4byte 0x00000141

	thumb_func_start sub_80AA6A0
sub_80AA6A0: @ 0x080AA6A0
	push {r4, r5, r6, lr}
	ldr r5, _080AA72C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _080AA6D4
	ldr r0, _080AA730 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA734 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA738 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA73C @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
_080AA6D4:
	ldrh r0, [r4, #2]
	ldr r3, _080AA740 @ =gBldRegs
	cmp r0, #0
	bne _080AA716
	ldr r2, _080AA744 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA748 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080AA74C @ =0x00003FFF
	strh r0, [r3]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #2]
_080AA716:
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq _080AA750
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldrh r0, [r4, #4]
	subs r0, #0x40
	strh r0, [r4, #4]
	b _080AA762
	.align 2, 0
_080AA72C: .4byte gCurTask
_080AA730: .4byte gMPlayInfo_BGM
_080AA734: .4byte gMPlayInfo_SE1
_080AA738: .4byte gMPlayInfo_SE2
_080AA73C: .4byte gMPlayInfo_SE3
_080AA740: .4byte gBldRegs
_080AA744: .4byte gDispCnt
_080AA748: .4byte gWinRegs
_080AA74C: .4byte 0x00003FFF
_080AA750:
	strh r0, [r3, #4]
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _080AA75C
	subs r0, #2
	strb r0, [r4, #1]
_080AA75C:
	ldr r1, [r5]
	ldr r0, _080AA768 @ =sub_80AB9F4
	str r0, [r1, #8]
_080AA762:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA768: .4byte sub_80AB9F4

	thumb_func_start sub_80AA76C
sub_80AA76C: @ 0x080AA76C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080AA7CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #2]
	ldr r4, _080AA7D0 @ =gBldRegs
	cmp r0, #0
	beq _080AA7B8
	ldr r2, _080AA7D4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA7D8 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080AA7DC @ =0x00003FFF
	strh r0, [r4]
	strh r3, [r6, #4]
	strh r3, [r6, #2]
_080AA7B8:
	ldrh r0, [r4, #4]
	cmp r0, #0xf
	bhi _080AA7E0
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r6, #4]
	adds r0, #0x40
	strh r0, [r6, #4]
	b _080AA90C
	.align 2, 0
_080AA7CC: .4byte gCurTask
_080AA7D0: .4byte gBldRegs
_080AA7D4: .4byte gDispCnt
_080AA7D8: .4byte gWinRegs
_080AA7DC: .4byte 0x00003FFF
_080AA7E0:
	movs r3, #0
	movs r2, #0x10
	strh r2, [r4, #4]
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _080AA7EE
	b _080AA8EC
_080AA7EE:
	movs r0, #0
	mov r8, r0
	ldr r4, _080AA854 @ =gLoadedSaveGame
	ldrh r1, [r4, #0x34]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080AA808
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x34]
	bl sub_8001E58
_080AA808:
	movs r0, #0
	adds r5, r4, #0
	adds r7, r5, #0
	adds r7, #0x37
	movs r1, #4
	mov ip, r1
_080AA814:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #2
_080AA81A:
	adds r0, r2, r3
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AA832
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080AA832:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080AA81A
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AA814
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	beq _080AA858
	bl sub_80AA91C
	b _080AA8AA
	.align 2, 0
_080AA854: .4byte gLoadedSaveGame
_080AA858:
	adds r0, r5, #0
	adds r0, #0x33
	ldrb r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #3
	beq _080AA882
	ldr r1, _080AA890 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AA878
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA882
_080AA878:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AA89C
_080AA882:
	movs r0, #0
	strh r0, [r6, #6]
	ldr r0, _080AA894 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA898 @ =sub_80ABA20
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA890: .4byte gStageData
_080AA894: .4byte gCurTask
_080AA898: .4byte sub_80ABA20
_080AA89C:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080AA8B8
	movs r0, #1
	bl sub_80AB120
_080AA8AA:
	ldr r0, _080AA8B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AA90C
	.align 2, 0
_080AA8B4: .4byte gCurTask
_080AA8B8:
	mov r3, r8
	cmp r3, #0x1c
	bne _080AA8D8
	movs r0, #2
	bl sub_80AB120
	ldr r0, _080AA8D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA8D4 @ =sub_80ABA80
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA8D0: .4byte gCurTask
_080AA8D4: .4byte sub_80ABA80
_080AA8D8:
	ldr r0, _080AA8E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA8E8 @ =sub_80ABA94
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA8E4: .4byte gCurTask
_080AA8E8: .4byte sub_80ABA94
_080AA8EC:
	ldr r2, _080AA918 @ =gLoadedSaveGame
	ldrh r1, [r2, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AA902
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #0x34]
	bl sub_8001E58
_080AA902:
	bl sub_80A8F90
	ldr r0, [r5]
	bl TaskDestroy
_080AA90C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA918: .4byte gLoadedSaveGame

	thumb_func_start sub_80AA91C
sub_80AA91C: @ 0x080AA91C
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _080AAA10 @ =gDispCnt
	movs r5, #0x40
	ldr r0, _080AAA14 @ =0x00006040
	strh r0, [r1]
	ldr r0, _080AAA18 @ =sub_80AAC38
	movs r1, #0xa6
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080AAA1C @ =sub_80ABAF4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _080AAA20 @ =gLoadedSaveGame
	ldr r1, _080AAA24 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4]
	movs r3, #0
	strh r1, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	str r1, [r4, #0x14]
	ldr r0, _080AAA28 @ =0xFFFF9C00
	str r0, [r4, #0x18]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x24]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	strh r1, [r4, #6]
	strh r1, [r4, #4]
	str r1, [sp, #4]
	ldr r2, _080AAA2C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080AAA30 @ =gBgCntRegs
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AAA34 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _080AAA38 @ =gBgSprites_Unknown1
	strb r3, [r2]
	ldr r0, _080AAA3C @ =gBgSprites_Unknown2
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	strb r5, [r0, #3]
	strb r3, [r2, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r5, [r0, #7]
	strb r3, [r2, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r5, [r0, #0xb]
	strb r3, [r2, #3]
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r5, [r0, #0xf]
	adds r0, r4, #0
	bl sub_80AAB6C
	ldr r2, _080AAA40 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAA44 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAA48 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAA10: .4byte gDispCnt
_080AAA14: .4byte 0x00006040
_080AAA18: .4byte sub_80AAC38
_080AAA1C: .4byte sub_80ABAF4
_080AAA20: .4byte gLoadedSaveGame
_080AAA24: .4byte 0x00000366
_080AAA28: .4byte 0xFFFF9C00
_080AAA2C: .4byte 0x040000D4
_080AAA30: .4byte gBgCntRegs
_080AAA34: .4byte 0x85000010
_080AAA38: .4byte gBgSprites_Unknown1
_080AAA3C: .4byte gBgSprites_Unknown2
_080AAA40: .4byte gWinRegs
_080AAA44: .4byte gBgPalette
_080AAA48: .4byte gFlags

	thumb_func_start sub_80AAA4C
sub_80AAA4C: @ 0x080AAA4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r4, #0
	ldr r7, _080AAB5C @ =0x06010000
	ldr r3, _080AAB60 @ =gUnknown_080DA2E8
	movs r0, #0
	mov sl, r0
	movs r5, #0
_080AAA66:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r6, r0
	str r7, [r0]
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #1
	bls _080AAA66
	adds r0, r6, #0
	adds r0, #0x7c
	str r7, [r6, #0x7c]
	ldr r3, _080AAB64 @ =gUnknown_080DA2F8
	ldrb r2, [r6]
	lsls r2, r2, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0xa4
	str r7, [r0]
	ldr r2, _080AAB68 @ =gUnknown_080DA328
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
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
_080AAB5C: .4byte 0x06010000
_080AAB60: .4byte gUnknown_080DA2E8
_080AAB64: .4byte gUnknown_080DA2F8
_080AAB68: .4byte gUnknown_080DA328

	thumb_func_start sub_80AAB6C
sub_80AAB6C: @ 0x080AAB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _080AAC18 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080AAC1C @ =0x00005888
	mov r2, r8
	strh r0, [r2, #4]
	ldr r6, _080AAC20 @ =gBgScrollRegs
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r6, #8]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #8
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r1, _080AAC24 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AAC28 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x96
	lsls r1, r1, #1         @ Eggman
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xf6
	mov r2, sb
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080AAC2C @ =0x00000681
	mov r1, r8
	strh r0, [r1, #2]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AAC30 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080AAC34 @ =0x0000012B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r2, #0x2a
	adds r1, r7, r2
	mov r2, sb
	strb r2, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAC18: .4byte gBgCntRegs
_080AAC1C: .4byte 0x00005888
_080AAC20: .4byte gBgScrollRegs
_080AAC24: .4byte 0x06008000
_080AAC28: .4byte 0x0600C000
_080AAC2C: .4byte 0x00000681
_080AAC30: .4byte 0x06003000
_080AAC34: .4byte 0x0000012B

	thumb_func_start sub_80AAC38
sub_80AAC38: @ 0x080AAC38
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AACFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r7, #0
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _080AACA6
	ldr r2, _080AAD00 @ =gBldRegs
	movs r0, #0xc2
	strh r0, [r2]
	ldr r4, _080AAD04 @ =gDispCnt
	ldrh r0, [r4]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _080AAD08 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080AAD0C @ =0x00001137
	strh r0, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #5
	strh r5, [r6, #4]
	movs r0, #1
	strh r0, [r6, #6]
	adds r0, r6, #0
	bl sub_80AAA4C
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
	bl m4aMPlayAllStop
	movs r0, #0x5b      @ MUS_MESSAGE
	bl m4aSongNumStart
_080AACA6:
	ldr r1, [r6, #0x10]
	ldr r0, _080AAD10 @ =0x00002FFF
	cmp r1, r0
	ble _080AACC0
	ldr r2, _080AAD14 @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r6, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _080AACC0
	str r1, [r6, #0x10]
	movs r7, #1
_080AACC0:
	ldr r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r1, r2
	bgt _080AACE0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r6, #8]
	ldr r0, _080AAD18 @ =0x00003FFF
	cmp r1, r0
	ble _080AACE0
	str r2, [r6, #8]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AACE0:
	ldr r0, _080AAD00 @ =gBldRegs
	ldrh r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	beq _080AAD1C
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r1, _080AAD14 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r6, #4]
	adds r0, r0, r2
	strh r0, [r6, #4]
	b _080AAD22
	.align 2, 0
_080AACFC: .4byte gCurTask
_080AAD00: .4byte gBldRegs
_080AAD04: .4byte gDispCnt
_080AAD08: .4byte gWinRegs
_080AAD0C: .4byte 0x00001137
_080AAD10: .4byte 0x00002FFF
_080AAD14: .4byte 0xFFFFFF00
_080AAD18: .4byte 0x00003FFF
_080AAD1C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AAD22:
	ldr r4, _080AAD5C @ =gWinRegs
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #4]
	cmp r7, #3
	bne _080AAD56
	movs r0, #0xf0
	strh r0, [r3]
	ldr r0, _080AAD60 @ =0x00003017
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r3, #2]
	strh r2, [r3, #4]
	strh r2, [r6, #6]
	strh r2, [r6, #4]
	strh r2, [r6, #2]
	ldr r0, _080AAD64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AAD68 @ =sub_80AAD6C
	str r0, [r1, #8]
_080AAD56:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAD5C: .4byte gWinRegs
_080AAD60: .4byte 0x00003017
_080AAD64: .4byte gCurTask
_080AAD68: .4byte sub_80AAD6C

	thumb_func_start sub_80AAD6C
sub_80AAD6C: @ 0x080AAD6C
	push {r4, r5, lr}
	ldr r0, _080AAD98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABBC8
	ldr r1, _080AAD9C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AADA0
	ldrh r0, [r4, #4]
	adds r0, #0x80
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080AADB4
	.align 2, 0
_080AAD98: .4byte gCurTask
_080AAD9C: .4byte gBldRegs
_080AADA0:
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAE04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAE08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_080AADB4:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x96
	ble _080AAE20
	movs r3, #0x80
	lsls r3, r3, #5
	strh r3, [r4, #4]
	strh r5, [r4, #2]
	ldr r2, _080AAE0C @ =gBldRegs
	movs r0, #0xd0
	strh r0, [r2]
	ldr r1, _080AAE10 @ =gWinRegs
	ldr r0, _080AAE14 @ =0x00003017
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r2, #2]
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r5, [r4, #6]
	strh r3, [r4, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAE04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAE08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080AAE18 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AAE1C @ =sub_80AAE50
	str r0, [r1, #8]
	b _080AAE40
	.align 2, 0
_080AAE04: .4byte gBgPalette
_080AAE08: .4byte gFlags
_080AAE0C: .4byte gBldRegs
_080AAE10: .4byte gWinRegs
_080AAE14: .4byte 0x00003017
_080AAE18: .4byte gCurTask
_080AAE1C: .4byte sub_80AAE50
_080AAE20:
	ldr r2, _080AAE48 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAE4C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAE40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAE48: .4byte gWinRegs
_080AAE4C: .4byte gBgScrollRegs

	thumb_func_start sub_80AAE50
sub_80AAE50: @ 0x080AAE50
	push {r4, r5, lr}
	ldr r5, _080AAE88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80ABBEC
	cmp r0, #1
	bne _080AAE90
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080AAE90
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080AAE8C @ =sub_80AAEC0
	str r0, [r1, #8]
	b _080AAEB0
	.align 2, 0
_080AAE88: .4byte gCurTask
_080AAE8C: .4byte sub_80AAEC0
_080AAE90:
	ldr r2, _080AAEB8 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAEBC @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAEB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAEB8: .4byte gWinRegs
_080AAEBC: .4byte gBgScrollRegs

	thumb_func_start sub_80AAEC0
sub_80AAEC0: @ 0x080AAEC0
	push {r4, r5, lr}
	ldr r5, _080AAEF4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r2, _080AAEF8 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080AAF00
	ldr r1, _080AAEFC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	b _080AAF20
	.align 2, 0
_080AAEF4: .4byte gCurTask
_080AAEF8: .4byte gBldRegs
_080AAEFC: .4byte 0xFFFFFF00
_080AAF00:
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080AAF20
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080AAF1C @ =sub_80ABAF8
	str r0, [r1, #8]
	b _080AAF40
	.align 2, 0
_080AAF1C: .4byte sub_80ABAF8
_080AAF20:
	ldr r2, _080AAF48 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAF4C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAF40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAF48: .4byte gWinRegs
_080AAF4C: .4byte gBgScrollRegs

	thumb_func_start sub_80AAF50
sub_80AAF50: @ 0x080AAF50
	push {r4, r5, lr}
	ldr r5, _080AAF88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r2, _080AAF8C @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _080AAF90
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	b _080AAFA0
	.align 2, 0
_080AAF88: .4byte gCurTask
_080AAF8C: .4byte gBldRegs
_080AAF90:
	ldr r1, _080AAFA8 @ =gWinRegs
	movs r0, #0x17
	strh r0, [r1, #8]
	movs r0, #0x10
	strh r0, [r2, #4]
	ldr r1, [r5]
	ldr r0, _080AAFAC @ =sub_80AAFB0
	str r0, [r1, #8]
_080AAFA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAFA8: .4byte gWinRegs
_080AAFAC: .4byte sub_80AAFB0

	thumb_func_start sub_80AAFB0
sub_80AAFB0: @ 0x080AAFB0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AB090 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r7, #0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r0, [r4, #0x10]
	ldr r1, _080AB094 @ =0x00004FFF
	cmp r0, r1
	bgt _080AAFE8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, r1
	ble _080AAFEA
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x10]
_080AAFE8:
	movs r5, #1
_080AAFEA:
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _080AAFFE
	ldr r1, _080AB098 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _080AB004
	movs r0, #0
	str r0, [r4, #8]
_080AAFFE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080AB004:
	ldr r2, _080AB09C @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _080AB0C8
	ldr r2, _080AB0A0 @ =gLoadedSaveGame
	adds r0, r2, #0
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	mov ip, r2
	cmp r0, #3
	beq _080AB0C0
	ldr r1, _080AB0A4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AB03E
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AB0C0
_080AB03E:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AB0C0
	movs r0, #0
	mov r5, ip
	adds r5, #0x37
	movs r6, #4
_080AB050:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB056:
	adds r0, r3, r4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080AB06A
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AB06A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB056
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB050
	mov r0, ip
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AB0A8
	movs r0, #1
	b _080AB0AE
	.align 2, 0
_080AB090: .4byte gCurTask
_080AB094: .4byte 0x00004FFF
_080AB098: .4byte 0xFFFFFE00
_080AB09C: .4byte gWinRegs
_080AB0A0: .4byte gLoadedSaveGame
_080AB0A4: .4byte gStageData
_080AB0A8:
	cmp r7, #0x1c
	bne _080AB0C0
	movs r0, #2
_080AB0AE:
	bl sub_80AB120
	ldr r0, _080AB0BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AB0C8
	.align 2, 0
_080AB0BC: .4byte gCurTask
_080AB0C0:
	ldr r0, _080AB0D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB0D4 @ =sub_80ABB38
	str r0, [r1, #8]
_080AB0C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB0D0: .4byte gCurTask
_080AB0D4: .4byte sub_80ABB38

	thumb_func_start sub_80AB0D8
sub_80AB0D8: @ 0x080AB0D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x28]
	asrs r2, r0, #8
	strh r2, [r1, #0x12]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB0F6
	subs r0, r2, #4
	strh r0, [r1, #0x12]
_080AB0F6:
	adds r0, r1, #0
	bl DisplaySprite
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB118
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x28]
	asrs r1, r1, #8
	adds r1, #0xa
	strh r1, [r0, #0x12]
	bl DisplaySprite
_080AB118:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB120
sub_80AB120: @ 0x080AB120
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080AB1AC @ =gDispCnt
	movs r1, #0x82
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r5]
	ldr r0, _080AB1B0 @ =sub_80AB1C4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AB1B4 @ =sub_80ABC1C
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r3, #0
	strh r2, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	strb r3, [r0, #1]
	strh r2, [r0, #2]
	str r2, [r0, #0x24]
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldr r2, _080AB1B8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AB1BC @ =gBldRegs
	ldr r0, _080AB1C0 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB1AC: .4byte gDispCnt
_080AB1B0: .4byte sub_80AB1C4
_080AB1B4: .4byte sub_80ABC1C
_080AB1B8: .4byte gWinRegs
_080AB1BC: .4byte gBldRegs
_080AB1C0: .4byte 0x00003FFF

	thumb_func_start sub_80AB1C4
sub_80AB1C4: @ 0x080AB1C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AB270 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r0, _080AB274 @ =gLoadedSaveGame
	ldr r1, _080AB278 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	mov ip, r0
	movs r2, #4
	ldrsh r5, [r7, r2]
	cmp r5, #0
	bne _080AB2A4
	ldr r1, _080AB27C @ =0x06010000
	ldr r3, _080AB280 @ =0x0300002C
	adds r0, r6, r3
	str r1, [r0]
	ldr r2, _080AB284 @ =gUnknown_080DA358
	ldrh r1, [r2]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _080AB288 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB28C @ =gBgCntRegs
	ldr r0, _080AB290 @ =0x00000602
	strh r0, [r1, #2]
	ldr r0, _080AB294 @ =gBgScrollRegs
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r1, _080AB298 @ =0x03000094
	adds r0, r6, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _080AB29C @ =0x06003000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xab
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080AB2A0 @ =0x030000BE
	adds r1, r6, r2
	strb r4, [r1]
	movs r1, #1
	b _080AB380
	.align 2, 0
_080AB270: .4byte gCurTask
_080AB274: .4byte gLoadedSaveGame
_080AB278: .4byte 0x00000366
_080AB27C: .4byte 0x06010000
_080AB280: .4byte 0x0300002C
_080AB284: .4byte gUnknown_080DA358
_080AB288: .4byte gDispCnt
_080AB28C: .4byte gBgCntRegs
_080AB290: .4byte 0x00000602
_080AB294: .4byte gBgScrollRegs
_080AB298: .4byte 0x03000094
_080AB29C: .4byte 0x06003000
_080AB2A0: .4byte 0x030000BE
_080AB2A4:
	cmp r5, #1
	beq _080AB2AA
	b _080AB3AC
_080AB2AA:
	ldr r1, _080AB2DC @ =gBgCntRegs
	movs r3, #0
	ldr r0, _080AB2E0 @ =0x00000E04
	strh r0, [r1]
	ldr r2, _080AB2E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080AB2E8 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _080AB2EC @ =0x03000054
	adds r1, r6, r0
	movs r2, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB2D6
	cmp r0, #3
	bne _080AB2F0
_080AB2D6:
	movs r2, #0xc
	b _080AB2FA
	.align 2, 0
_080AB2DC: .4byte gBgCntRegs
_080AB2E0: .4byte 0x00000E04
_080AB2E4: .4byte gDispCnt
_080AB2E8: .4byte gBgScrollRegs
_080AB2EC: .4byte 0x03000054
_080AB2F0:
	cmp r0, #1
	beq _080AB2FA
	cmp r0, #2
	bne _080AB2FA
	movs r2, #6
_080AB2FA:
	ldr r0, _080AB388 @ =0x06004000
	str r0, [r1, #4]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r4, [r1, #0xa]
	ldr r0, _080AB38C @ =0x06007000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r6, _080AB390 @ =gUnknown_080DA330
	mov r3, ip
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r5, #0x20
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	adds r0, r1, #0
	adds r0, #0x2a
	mov r2, r8
	strb r2, [r0]
	strh r4, [r1, #0x2e]
	adds r0, r1, #0
	bl DrawBackground
	ldr r2, _080AB394 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB398 @ =gBgCntRegs
	ldr r0, _080AB39C @ =0x00001D0D
	strh r0, [r1, #4]
	ldr r0, _080AB3A0 @ =gBgScrollRegs
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r1, _080AB3A4 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AB3A8 @ =0x0600E800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldrh r1, [r6, #0x26]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xbe
	mov r4, r8
	strb r4, [r1]
	movs r1, #2
_080AB380:
	strh r1, [r0, #0x2e]
	bl DrawBackground
	b _080AB494
	.align 2, 0
_080AB388: .4byte 0x06004000
_080AB38C: .4byte 0x06007000
_080AB390: .4byte gUnknown_080DA330
_080AB394: .4byte gDispCnt
_080AB398: .4byte gBgCntRegs
_080AB39C: .4byte 0x00001D0D
_080AB3A0: .4byte gBgScrollRegs
_080AB3A4: .4byte 0x0600C000
_080AB3A8: .4byte 0x0600E800
_080AB3AC:
	cmp r5, #2
	bne _080AB494
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB3BA
	cmp r0, #3
	bne _080AB40C
_080AB3BA:
	ldr r2, _080AB434 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB438 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080AB43C @ =0x00001608
	strh r0, [r1, #6]
	ldr r0, _080AB440 @ =gBgScrollRegs
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r4, _080AB444 @ =0x03000094
	adds r0, r6, r4
	ldr r1, _080AB448 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AB44C @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080AB450 @ =gUnknown_080DA330
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080AB454 @ =0x030000BE
	adds r1, r6, r2
	strb r3, [r1]
	movs r1, #3
	strh r1, [r0, #0x2e]
	bl DrawBackground
_080AB40C:
	ldr r5, _080AB458 @ =gBgPalette
	movs r0, #0
	strh r0, [r5]
	ldr r3, _080AB45C @ =gFlags
	ldr r2, [r3]
	movs r4, #1
	orrs r2, r4
	str r2, [r3]
	strh r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080AB464
	ldr r0, _080AB460 @ =gUnknown_080DA360
	movs r1, #0
	movs r2, #0x50
	bl CopyBgPaletteMasked
	b _080AB476
	.align 2, 0
_080AB434: .4byte gDispCnt
_080AB438: .4byte gBgCntRegs
_080AB43C: .4byte 0x00001608
_080AB440: .4byte gBgScrollRegs
_080AB444: .4byte 0x03000094
_080AB448: .4byte 0x06008000
_080AB44C: .4byte 0x0600B000
_080AB450: .4byte gUnknown_080DA330
_080AB454: .4byte 0x030000BE
_080AB458: .4byte gBgPalette
_080AB45C: .4byte gFlags
_080AB460: .4byte gUnknown_080DA360
_080AB464:
	ldr r1, _080AB480 @ =0x040000D4
	ldr r0, _080AB484 @ =gUnknown_080DA360
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _080AB488 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r2, r4
	str r2, [r3]
_080AB476:
	ldr r0, _080AB48C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB490 @ =sub_80AB4A4
	str r0, [r1, #8]
	b _080AB49A
	.align 2, 0
_080AB480: .4byte 0x040000D4
_080AB484: .4byte gUnknown_080DA360
_080AB488: .4byte 0x80000050
_080AB48C: .4byte gCurTask
_080AB490: .4byte sub_80AB4A4
_080AB494:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080AB49A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB4A4
sub_80AB4A4: @ 0x080AB4A4
	push {r4, r5, r6, lr}
	ldr r0, _080AB550 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrb r3, [r5, #1]
	cmp r3, #0
	bne _080AB506
	ldr r2, _080AB554 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB558 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AB55C @ =gBldRegs
	ldr r0, _080AB560 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	ldr r0, _080AB564 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #0xe]
_080AB506:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB568 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB55C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080AB570
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080AB56C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r5, #2]
	adds r0, r0, r6
	strh r0, [r5, #2]
	b _080AB596
	.align 2, 0
_080AB550: .4byte gCurTask
_080AB554: .4byte gDispCnt
_080AB558: .4byte gWinRegs
_080AB55C: .4byte gBldRegs
_080AB560: .4byte 0x00003FFF
_080AB564: .4byte gBgScrollRegs
_080AB568: .4byte 0x0300002C
_080AB56C: .4byte 0xFFFFFF00
_080AB570:
	strh r0, [r1, #4]
	bl m4aMPlayAllStop
	ldrb r0, [r5]
	cmp r0, #3
	bne _080AB588
	ldr r0, _080AB584 @ =0x0000029F @ SE_671
	bl m4aSongNumStart
	b _080AB58E
	.align 2, 0
_080AB584: .4byte 0x0000029F
_080AB588:
	ldr r0, _080AB59C @ =0x000002A1 @ SE_673
	bl m4aSongNumStart
_080AB58E:
	ldr r0, _080AB5A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB5A4 @ =sub_80AB770
	str r0, [r1, #8]
_080AB596:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB59C: .4byte 0x000002A1
_080AB5A0: .4byte gCurTask
_080AB5A4: .4byte sub_80AB770

	thumb_func_start sub_80AB5A8
sub_80AB5A8: @ 0x080AB5A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080AB640 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080AB5F6
	ldr r2, _080AB644 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB648 @ =gWinRegs
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AB64C @ =gBldRegs
	ldr r0, _080AB650 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r5, #2]
	strb r3, [r5, #1]
_080AB5F6:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB654 @ =0x0300002C
	adds r4, r6, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB64C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AB658
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	b _080AB760
	.align 2, 0
_080AB640: .4byte gCurTask
_080AB644: .4byte gDispCnt
_080AB648: .4byte gWinRegs
_080AB64C: .4byte gBldRegs
_080AB650: .4byte 0x00003FFF
_080AB654: .4byte 0x0300002C
_080AB658:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r5]
	cmp r0, #1
	bne _080AB6D0
	movs r6, #0
	movs r0, #0
	ldr r1, _080AB6BC @ =gLoadedSaveGame
	mov r8, r1
	mov r7, r8
	adds r7, #0x37
	movs r3, #4
	mov ip, r3
_080AB672:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB678:
	adds r0, r3, r4
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AB68C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080AB68C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB678
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB672
	mov r2, r8
	adds r2, #0x33
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_8001E58
	cmp r6, #0x1c
	bne _080AB6C0
	movs r0, #2
	bl sub_80AB120
	b _080AB758
	.align 2, 0
_080AB6BC: .4byte gLoadedSaveGame
_080AB6C0:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _080AB6CC @ =gCurTask
	ldr r1, [r0]
	b _080AB6EA
	.align 2, 0
_080AB6CC: .4byte gCurTask
_080AB6D0:
	cmp r0, #2
	bne _080AB6F8
	ldr r1, _080AB6F0 @ =gLoadedSaveGame
	adds r1, #0x33
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_8001E58
	movs r0, #0
	strh r0, [r5, #4]
	ldr r1, [r7]
_080AB6EA:
	ldr r0, _080AB6F4 @ =sub_80ABC20
	str r0, [r1, #8]
	b _080AB760
	.align 2, 0
_080AB6F0: .4byte gLoadedSaveGame
_080AB6F4: .4byte sub_80ABC20
_080AB6F8:
	cmp r0, #0
	bne _080AB750
	ldr r1, _080AB734 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AB738 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AB73C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AB740 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AB744 @ =gVramGraphicsCopyCursor
	ldr r0, _080AB748 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AB74C @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #4
	bl WarpToMap
	b _080AB760
	.align 2, 0
_080AB734: .4byte 0x0000FFFF
_080AB738: .4byte gBackgroundsCopyQueueCursor
_080AB73C: .4byte gBackgroundsCopyQueueIndex
_080AB740: .4byte gBgSpritesCount
_080AB744: .4byte gVramGraphicsCopyCursor
_080AB748: .4byte gVramGraphicsCopyQueueIndex
_080AB74C: .4byte gStageData
_080AB750:
	movs r0, #3
	movs r1, #1
	bl CreateMainMenu
_080AB758:
	ldr r0, _080AB76C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AB760:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB76C: .4byte gCurTask

	thumb_func_start sub_80AB770
sub_80AB770: @ 0x080AB770
	push {r4, r5, r6, lr}
	ldr r6, _080AB7C0 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB7C4 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AB7C8
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x77
	bgt _080AB7CC
	adds r0, r1, #1
	b _080AB7CE
	.align 2, 0
_080AB7C0: .4byte gCurTask
_080AB7C4: .4byte 0x0300002C
_080AB7C8:
	cmp r0, #3
	bne _080AB7F4
_080AB7CC:
	movs r0, #0x78
_080AB7CE:
	strh r0, [r5, #4]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x77
	ble _080AB80A
	ldr r0, _080AB7EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB80A
	ldr r0, _080AB7F0 @ =gCurTask
	ldr r1, [r0]
	b _080AB806
	.align 2, 0
_080AB7EC: .4byte gPressedKeys
_080AB7F0: .4byte gCurTask
_080AB7F4:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080AB80A
	ldr r1, [r6]
_080AB806:
	ldr r0, _080AB810 @ =sub_80AB5A8
	str r0, [r1, #8]
_080AB80A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB810: .4byte sub_80AB5A8

	thumb_func_start sub_80AB814
sub_80AB814: @ 0x080AB814
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB818
sub_80AB818: @ 0x080AB818
	push {r4, r5, lr}
	ldr r5, _080AB844 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80AB88C
	adds r0, r4, #0
	bl sub_80A9CA0
	cmp r0, #1
	bne _080AB83C
	ldr r1, [r5]
	ldr r0, _080AB848 @ =sub_80AB84C
	str r0, [r1, #8]
_080AB83C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB844: .4byte gCurTask
_080AB848: .4byte sub_80AB84C

	thumb_func_start sub_80AB84C
sub_80AB84C: @ 0x080AB84C
	push {r4, r5, lr}
	ldr r5, _080AB884 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A9D78
	adds r0, r4, #0
	bl sub_80AB88C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _080AB87C
	ldr r0, _080AB888 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AB87C
	ldr r0, [r5]
	bl TaskDestroy
_080AB87C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB884: .4byte gCurTask
_080AB888: .4byte gBldRegs

	thumb_func_start sub_80AB88C
sub_80AB88C: @ 0x080AB88C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x18
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB8B0
sub_80AB8B0: @ 0x080AB8B0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r2, _080AB8D4 @ =0x00001DFF
	cmp r0, r2
	bgt _080AB8C8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	ble _080AB8D8
_080AB8C8:
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	movs r0, #1
	b _080AB8F2
	.align 2, 0
_080AB8D4: .4byte 0x00001DFF
_080AB8D8:
	ldr r0, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _080AB8EA
	subs r0, #0x40
	str r0, [r1, #0x14]
	cmp r0, r2
	bgt _080AB8F0
_080AB8EA:
	str r2, [r1, #0x14]
	movs r0, #1
	b _080AB8F2
_080AB8F0:
	movs r0, #0
_080AB8F2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AB8F8
sub_80AB8F8: @ 0x080AB8F8
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB8FC
sub_80AB8FC: @ 0x080AB8FC
	push {r4, r5, lr}
	ldr r5, _080AB920 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AA1BC
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080AB924
	adds r0, r4, #0
	bl sub_80AB93C
	b _080AB934
	.align 2, 0
_080AB920: .4byte gCurTask
_080AB924:
	adds r0, r4, #0
	bl sub_80AB960
	cmp r0, #1
	bne _080AB934
	ldr r0, [r5]
	bl TaskDestroy
_080AB934:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB93C
sub_80AB93C: @ 0x080AB93C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _080AB952
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #8]
	cmp r0, #0
	ble _080AB95A
_080AB952:
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #1
	b _080AB95C
_080AB95A:
	movs r0, #0
_080AB95C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AB960
sub_80AB960: @ 0x080AB960
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldr r2, _080AB97C @ =0xFFFF2E00
	cmp r0, r2
	ble _080AB976
	ldr r3, _080AB980 @ =0xFFFFFB00
	adds r0, r0, r3
	str r0, [r1, #8]
	cmp r0, r2
	bge _080AB984
_080AB976:
	str r2, [r1, #8]
	movs r0, #1
	b _080AB986
	.align 2, 0
_080AB97C: .4byte 0xFFFF2E00
_080AB980: .4byte 0xFFFFFB00
_080AB984:
	movs r0, #0
_080AB986:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AB98C
sub_80AB98C: @ 0x080AB98C
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB990
sub_80AB990: @ 0x080AB990
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB994
sub_80AB994: @ 0x080AB994
	push {lr}
	ldr r0, _080AB9C0 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	adds r0, #1
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080AB9BA
	movs r0, #0
	strh r0, [r2, #8]
	ldr r0, _080AB9C4 @ =sub_80AA410
	str r0, [r3, #8]
_080AB9BA:
	pop {r0}
	bx r0
	.align 2, 0
_080AB9C0: .4byte gCurTask
_080AB9C4: .4byte sub_80AA410

	thumb_func_start sub_80AB9C8
sub_80AB9C8: @ 0x080AB9C8
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB9CC
sub_80AB9CC: @ 0x080AB9CC
	push {r4, lr}
	ldr r4, _080AB9EC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80AA62C
	ldr r1, [r4]
	ldr r0, _080AB9F0 @ =sub_80AA6A0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB9EC: .4byte gCurTask
_080AB9F0: .4byte sub_80AA6A0

	thumb_func_start sub_80AB9F4
sub_80AB9F4: @ 0x080AB9F4
	push {lr}
	ldr r0, _080ABA18 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #2
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABA14
	ldr r0, _080ABA1C @ =sub_80AA76C
	str r0, [r2, #8]
_080ABA14:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA18: .4byte gCurTask
_080ABA1C: .4byte sub_80AA76C

	thumb_func_start sub_80ABA20
sub_80ABA20: @ 0x080ABA20
	push {lr}
	ldr r0, _080ABA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABA5E
	ldr r1, _080ABA68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABA6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABA70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABA74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABA78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABA7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABA5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA64: .4byte gCurTask
_080ABA68: .4byte 0x0000FFFF
_080ABA6C: .4byte gBackgroundsCopyQueueCursor
_080ABA70: .4byte gBackgroundsCopyQueueIndex
_080ABA74: .4byte gBgSpritesCount
_080ABA78: .4byte gVramGraphicsCopyCursor
_080ABA7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABA80
sub_80ABA80: @ 0x080ABA80
	push {lr}
	ldr r0, _080ABA90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080ABA90: .4byte gCurTask

	thumb_func_start sub_80ABA94
sub_80ABA94: @ 0x080ABA94
	push {lr}
	ldr r0, _080ABAD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABAD2
	ldr r1, _080ABADC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABAE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABAE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABAE8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABAEC @ =gVramGraphicsCopyCursor
	ldr r0, _080ABAF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABAD2:
	pop {r0}
	bx r0
	.align 2, 0
_080ABAD8: .4byte gCurTask
_080ABADC: .4byte 0x0000FFFF
_080ABAE0: .4byte gBackgroundsCopyQueueCursor
_080ABAE4: .4byte gBackgroundsCopyQueueIndex
_080ABAE8: .4byte gBgSpritesCount
_080ABAEC: .4byte gVramGraphicsCopyCursor
_080ABAF0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABAF4
sub_80ABAF4: @ 0x080ABAF4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ABAF8
sub_80ABAF8: @ 0x080ABAF8
	push {r4, r5, lr}
	ldr r5, _080ABB30 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABB2A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080ABB34 @ =sub_80AAF50
	str r0, [r1, #8]
_080ABB2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ABB30: .4byte gCurTask
_080ABB34: .4byte sub_80AAF50

	thumb_func_start sub_80ABB38
sub_80ABB38: @ 0x080ABB38
	push {lr}
	ldr r0, _080ABB7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABB76
	ldr r1, _080ABB80 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABB84 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABB88 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABB8C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABB90 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABB94 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABB76:
	pop {r0}
	bx r0
	.align 2, 0
_080ABB7C: .4byte gCurTask
_080ABB80: .4byte 0x0000FFFF
_080ABB84: .4byte gBackgroundsCopyQueueCursor
_080ABB88: .4byte gBackgroundsCopyQueueIndex
_080ABB8C: .4byte gBgSpritesCount
_080ABB90: .4byte gVramGraphicsCopyCursor
_080ABB94: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABB98
sub_80ABB98: @ 0x080ABB98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080ABB9E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080ABB9E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABBC8
sub_80ABBC8: @ 0x080ABBC8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bge _080ABBE6
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x18]
	cmp r0, #0
	blt _080ABBE6
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	b _080ABBE8
_080ABBE6:
	movs r0, #0
_080ABBE8:
	pop {r1}
	bx r1

	thumb_func_start sub_80ABBEC
sub_80ABBEC: @ 0x080ABBEC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r0, _080ABC10 @ =0x00006FFF
	cmp r1, r0
	ble _080ABC14
	subs r1, #0x80
	ldrb r0, [r2, #1]
	lsls r0, r0, #7
	subs r1, r1, r0
	str r1, [r2, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080ABC14
	str r0, [r2, #0x20]
	movs r0, #1
	b _080ABC16
	.align 2, 0
_080ABC10: .4byte 0x00006FFF
_080ABC14:
	movs r0, #0
_080ABC16:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ABC1C
sub_80ABC1C: @ 0x080ABC1C
	bx lr
	.align 2, 0

	thumb_func_start sub_80ABC20
sub_80ABC20: @ 0x080ABC20
	push {lr}
	ldr r0, _080ABC64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABC5E
	ldr r1, _080ABC68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABC6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABC70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABC74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABC78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABC7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABC5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABC64: .4byte gCurTask
_080ABC68: .4byte 0x0000FFFF
_080ABC6C: .4byte gBackgroundsCopyQueueCursor
_080ABC70: .4byte gBackgroundsCopyQueueIndex
_080ABC74: .4byte gBgSpritesCount
_080ABC78: .4byte gVramGraphicsCopyCursor
_080ABC7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABC80
sub_80ABC80: @ 0x080ABC80
	push {r4, lr}
	movs r3, #0
	ldr r1, [r0, #0x24]
	adds r1, #0x90
	str r1, [r0, #0x24]
	ldr r2, _080ABCC8 @ =gSineTable
	asrs r1, r1, #8
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _080ABCCC @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080ABCD0 @ =gHBlankCopyTarget
	ldr r0, _080ABCD4 @ =0x0400001A
	str r0, [r1]
	ldr r1, _080ABCD8 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080ABCDC @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
_080ABCBE:
	cmp r3, #0x63
	bls _080ABCE0
	strh r4, [r1]
	b _080ABCE2
	.align 2, 0
_080ABCC8: .4byte gSineTable
_080ABCCC: .4byte gFlags
_080ABCD0: .4byte gHBlankCopyTarget
_080ABCD4: .4byte 0x0400001A
_080ABCD8: .4byte gHBlankCopySize
_080ABCDC: .4byte gBgOffsetsHBlankPrimary
_080ABCE0:
	strh r2, [r1]
_080ABCE2:
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9f
	bls _080ABCBE
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABCF4
sub_80ABCF4: @ 0x080ABCF4
	ldr r2, [r0, #0x18]
	adds r2, #0xc0
	str r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	subs r1, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, _080ABD0C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0, #4]
	asrs r1, r1, #8
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_080ABD0C: .4byte gBgScrollRegs

	thumb_func_start sub_80ABD10
sub_80ABD10: @ 0x080ABD10
	ldr r1, [r0, #0x20]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x20]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r0, #8]
	ldr r3, _080ABD40 @ =gSineTable
	asrs r1, r1, #8
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #3
	movs r2, #0xf4
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080ABD40: .4byte gSineTable

	thumb_func_start sub_80ABD44
sub_80ABD44: @ 0x080ABD44
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ABD98 @ =sub_80ABE28
	ldr r1, _080ABD9C @ =0x0000062C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ABDA0 @ =sub_80AC9E4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0, #1]
	movs r3, #0
	strh r2, [r0, #4]
	ldr r1, _080ABDA4 @ =0x06010000
	str r1, [r0, #0x10]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	strb r3, [r0, #2]
	strb r4, [r0]
	ldr r3, _080ABDA8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDB0
	ldr r0, _080ABDAC @ =gUnknown_080DB824
	movs r1, #0x70
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080ABDC6
	.align 2, 0
_080ABD98: .4byte sub_80ABE28
_080ABD9C: .4byte 0x0000062C
_080ABDA0: .4byte sub_80AC9E4
_080ABDA4: .4byte 0x06010000
_080ABDA8: .4byte gFlags
_080ABDAC: .4byte gUnknown_080DB824
_080ABDB0:
	ldr r1, _080ABDE0 @ =0x040000D4
	ldr r0, _080ABDE4 @ =gUnknown_080DB824
	str r0, [r1]
	ldr r0, _080ABDE8 @ =gObjPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _080ABDEC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABDC6:
	ldr r3, _080ABDF0 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDF8
	ldr r0, _080ABDF4 @ =gUnknown_080DB804
	movs r1, #0xe0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080ABE0E
	.align 2, 0
_080ABDE0: .4byte 0x040000D4
_080ABDE4: .4byte gUnknown_080DB824
_080ABDE8: .4byte gObjPalette + 0xE0
_080ABDEC: .4byte 0x80000010
_080ABDF0: .4byte gFlags
_080ABDF4: .4byte gUnknown_080DB804
_080ABDF8:
	ldr r1, _080ABE18 @ =0x040000D4
	ldr r0, _080ABE1C @ =gUnknown_080DB804
	str r0, [r1]
	ldr r0, _080ABE20 @ =gObjPalette + 0x1c0
	str r0, [r1, #4]
	ldr r0, _080ABE24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABE0E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ABE18: .4byte 0x040000D4
_080ABE1C: .4byte gUnknown_080DB804
_080ABE20: .4byte gObjPalette + 0x1c0
_080ABE24: .4byte 0x80000010

	thumb_func_start sub_80ABE28
sub_80ABE28: @ 0x080ABE28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _080AC020 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrb r4, [r7, #1]
	adds r0, r4, #0
	adds r0, #0xa
	cmp r4, r0
	bge _080ABEA4
	ldr r6, _080AC024 @ =gUnknown_080DA420
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
_080ABE56:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	add r1, r8
	str r1, [r7, #0x10]
	ldrh r1, [r6]
	strh r1, [r0, #0xc]
	ldrb r2, [r6, #2]
	adds r1, r4, r2
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r7, #1]
	adds r0, #0xa
	cmp r4, r0
	blt _080ABE56
_080ABEA4:
	ldrb r0, [r7, #1]
	adds r0, #0xa
	movs r2, #0
	strb r0, [r7, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080ABEB6
	b _080AC010
_080ABEB6:
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x20
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r1, _080AC028 @ =0x00000462     @ ANIM_ASCII
	mov sb, r1              @ sb = r1 = ANIM_ASCII
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	movs r5, #0x80
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	subs r1, #7
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	subs r1, #9
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r7, #1]
	ldr r0, _080AC020 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC02C @ =sub_80AC030
	str r0, [r1, #8]
_080AC010:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC020: .4byte gCurTask
_080AC024: .4byte gUnknown_080DA420
_080AC028: .4byte 0x00000462
_080AC02C: .4byte sub_80AC030

	thumb_func_start sub_80AC030
sub_80AC030: @ 0x080AC030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r7, _080AC0B8 @ =gUnknown_080DB844
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080AC04C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _080AC0BC @ =0x0000058C
	adds r0, r0, r1
	adds r0, r4, r0
	ldr r1, [r4, #0x10]
	str r1, [r0]
	lsls r3, r5, #3
	adds r1, r7, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	adds r3, r3, r7
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AC04C
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC0C0 @ =sub_80AC0C4
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC0B4: .4byte gCurTask
_080AC0B8: .4byte gUnknown_080DB844
_080AC0BC: .4byte 0x0000058C
_080AC0C0: .4byte sub_80AC0C4

	thumb_func_start sub_80AC0C4
sub_80AC0C4: @ 0x080AC0C4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080AC0F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC0F8
	ldr r0, _080AC0F4 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC104
	b _080AC15C
	.align 2, 0
_080AC0F0: .4byte gCurTask
_080AC0F4: .4byte gLoadedSaveGame
_080AC0F8:
	ldr r0, _080AC13C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
_080AC104:
	ldr r0, _080AC140 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
	ldr r1, _080AC144 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC148 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC14C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC150 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC154 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC158 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC1D8
	.align 2, 0
_080AC13C: .4byte gLoadedSaveGame
_080AC140: .4byte gInput
_080AC144: .4byte 0x0000FFFF
_080AC148: .4byte gBackgroundsCopyQueueCursor
_080AC14C: .4byte gBackgroundsCopyQueueIndex
_080AC150: .4byte gBgSpritesCount
_080AC154: .4byte gVramGraphicsCopyCursor
_080AC158: .4byte gVramGraphicsCopyQueueIndex
_080AC15C:
	ldr r1, [r4, #0xc]
	adds r1, #0x80
	str r1, [r4, #0xc]
	lsrs r1, r1, #8
	subs r1, #0xa
	ldr r2, _080AC1A8 @ =strCredits_CreatedBy
	ldrb r5, [r4, #1]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x24
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _080AC1D8
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AC1B0
	ldrb r1, [r4, #2]
	ldr r0, _080AC1AC @ =0x0000058C
	adds r2, r4, r0
	adds r3, r4, #0
	adds r3, #8
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	bl sub_80ACA80
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	b _080AC1C2
	.align 2, 0
_080AC1A8: .4byte strCredits_CreatedBy
_080AC1AC: .4byte 0x0000058C
_080AC1B0:
	adds r1, r4, #0
	adds r1, #0x14
	adds r2, r4, #0
	adds r2, #8
	adds r3, r4, #0
	adds r3, #0xc
	adds r0, r5, #0
	bl sub_80AC9E8
_080AC1C2:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _080AC1D8
	ldr r0, _080AC1E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC1E4 @ =sub_80AC1E8
	str r0, [r1, #8]
_080AC1D8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC1E0: .4byte gCurTask
_080AC1E4: .4byte sub_80AC1E8

	thumb_func_start sub_80AC1E8
sub_80AC1E8: @ 0x080AC1E8
	push {r4, lr}
	ldr r0, _080AC210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC218
	ldr r0, _080AC214 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC224
	b _080AC27C
	.align 2, 0
_080AC210: .4byte gCurTask
_080AC214: .4byte gLoadedSaveGame
_080AC218:
	ldr r0, _080AC25C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
_080AC224:
	ldr r0, _080AC260 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
	ldr r1, _080AC264 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC268 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC26C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC270 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC274 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC278 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC2A0
	.align 2, 0
_080AC25C: .4byte gLoadedSaveGame
_080AC260: .4byte gInput
_080AC264: .4byte 0x0000FFFF
_080AC268: .4byte gBackgroundsCopyQueueCursor
_080AC26C: .4byte gBackgroundsCopyQueueIndex
_080AC270: .4byte gBgSpritesCount
_080AC274: .4byte gVramGraphicsCopyCursor
_080AC278: .4byte gVramGraphicsCopyQueueIndex
_080AC27C:
	ldr r0, [r4, #0xc]
	adds r0, #0x80
	str r0, [r4, #0xc]
	lsrs r0, r0, #8
	ldr r1, _080AC2A8 @ =strCredits_CreatedBy
	ldr r2, _080AC2AC @ =0x000013D4
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x82
	cmp r0, r1
	blo _080AC2A0
	ldrb r0, [r4]
	bl sub_80ACAF0
	ldr r0, _080AC2B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC2A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC2A8: .4byte strCredits_CreatedBy
_080AC2AC: .4byte 0x000013D4
_080AC2B0: .4byte gCurTask

	thumb_func_start sub_80AC2B4
sub_80AC2B4: @ 0x080AC2B4
	push {r4, lr}
	movs r3, #0
	ldr r2, _080AC380 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080AC384 @ =gHBlankCopyTarget
	ldr r0, _080AC388 @ =0x04000052
	str r0, [r1]
	ldr r1, _080AC38C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080AC390 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r4, r0, #0
_080AC2DA:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bls _080AC2DA
	movs r2, #0x28
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r4, r0, #0
_080AC2F0:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x31
	bls _080AC2F0
	movs r2, #0x32
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC302:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x40
	bls _080AC302
	movs r2, #0x41
	movs r3, #0xf
_080AC320:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x68
	bls _080AC320
	movs r3, #0xe
	movs r2, #0x69
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC334:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x77
	bls _080AC334
	movs r2, #0x73
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r3, r0, #0
_080AC356:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x82
	bls _080AC356
	movs r2, #0x82
	movs r0, #0xff
	lsls r0, r0, #8
	adds r3, r0, #0
_080AC36C:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa0
	bls _080AC36C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC380: .4byte gFlags
_080AC384: .4byte gHBlankCopyTarget
_080AC388: .4byte 0x04000052
_080AC38C: .4byte gHBlankCopySize
_080AC390: .4byte gBgOffsetsHBlankPrimary
_080AC394: .4byte gUnknown_080DB930

	thumb_func_start sub_80AC398
sub_80AC398: @ 0x080AC398
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0x80
	mov sb, r0
	ldr r0, _080AC408 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r2, _080AC40C @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _080AC3C6
	b _080AC4F4
_080AC3C6:
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r4, r1
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, r1, #0
	mov r8, r0
	cmp r3, #0x30
	bne _080AC410
	adds r1, r4, #1
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x14
	adds r1, r0, r1
	lsls r2, r4, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r0, [r1]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r1]
	b _080AC4D6
	.align 2, 0
_080AC408: .4byte gCurTask
_080AC40C: .4byte strCredits_CreatedBy
_080AC410:
	cmp r3, #0x2e
	bne _080AC418
	movs r1, #0x1e
	b _080AC440
_080AC418:
	cmp r3, #0x26
	bne _080AC420
	movs r1, #0x1f
	b _080AC440
_080AC420:
	cmp r3, #0x28
	bne _080AC428
	movs r1, #0x20
	b _080AC440
_080AC428:
	cmp r3, #0x29
	bne _080AC430
	movs r1, #0x21
	b _080AC440
_080AC430:
	cmp r3, #0x2d
	bne _080AC438
	movs r1, #0x22
	b _080AC440
_080AC438:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080AC440:
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r5, r0, r1
	ldr r1, [r6, #0xc]
	movs r0, #0
	mov ip, r0
	strh r1, [r5, #0x10]
	mov r2, r8
	asrs r4, r2, #0x18
	adds r3, r6, #0
	adds r3, #0x14
	cmp r4, #0
	beq _080AC474
	lsls r0, r4, #3
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x10]
_080AC474:
	adds r2, r4, #1
	lsls r2, r2, #3
	adds r2, r3, r2
	lsls r4, r4, #3
	adds r3, r3, r4
	ldr r0, _080AC4BC @ =gUnknown_080DB868
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r4
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x12]
	ldr r0, [r1]
	mov r3, sb
	subs r0, r0, r3
	str r0, [r1]
	ldr r2, _080AC4C0 @ =strCredits_CreatedBy
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AC4C4
	movs r0, #8
	b _080AC4CE
	.align 2, 0
_080AC4BC: .4byte gUnknown_080DB868
_080AC4C0: .4byte strCredits_CreatedBy
_080AC4C4:
	cmp r0, #3
	bne _080AC4CC
	mov r0, ip
	b _080AC4CE
_080AC4CC:
	movs r0, #1
_080AC4CE:
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl DisplaySprite
_080AC4D6:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, r8
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _080AC510 @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bge _080AC4F4
	b _080AC3C6
_080AC4F4:
	ldr r1, [r6, #0x18]
	ldr r0, _080AC514 @ =0x00002CFF
	cmp r1, r0
	bgt _080AC504
	ldr r0, _080AC518 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC504:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC510: .4byte strCredits_CreatedBy
_080AC514: .4byte 0x00002CFF
_080AC518: .4byte gCurTask

	thumb_func_start sub_80AC51C
sub_80AC51C: @ 0x080AC51C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080AC5B4 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldrb r0, [r5, #1]
	adds r1, r0, #0
	cmp r1, #0xe
	bhi _080AC5C0
	adds r0, #5
	strb r0, [r5, #1]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	bhs _080AC606
	ldr r7, _080AC5B8 @ =gUnknown_080DB950
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r1, _080AC5BC @ =gUnknown_080DB958
	mov r8, r1
	movs r2, #1
	add r2, r8
	mov sb, r2
_080AC55A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	adds r1, #0x80
	str r1, [r5, #8]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	ldrb r3, [r7, #2]
	adds r1, r4, r3
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #1
	mov r3, r8
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	add r2, sb
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r2, [r5, #1]
	cmp r4, r2
	blo _080AC55A
	b _080AC606
	.align 2, 0
_080AC5B4: .4byte gCurTask
_080AC5B8: .4byte gUnknown_080DB950
_080AC5BC: .4byte gUnknown_080DB958
_080AC5C0:
	ldr r3, _080AC614 @ =0x03000014
	adds r0, r2, r3
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r5, #8]
	movs r4, #0
	movs r2, #0
	ldr r1, _080AC618 @ =0x000005F1
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r5, #1]
	ldr r1, [r6]
	ldr r0, _080AC61C @ =sub_80AC620
	str r0, [r1, #8]
_080AC606:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC614: .4byte 0x03000014
_080AC618: .4byte 0x000005F1
_080AC61C: .4byte sub_80AC620

	thumb_func_start sub_80AC620
sub_80AC620: @ 0x080AC620
	push {r4, lr}
	ldr r0, _080AC648 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBD4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC650
	ldr r0, _080AC64C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC65C
	b _080AC6B4
	.align 2, 0
_080AC648: .4byte gCurTask
_080AC64C: .4byte gLoadedSaveGame
_080AC650:
	ldr r0, _080AC694 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
_080AC65C:
	ldr r0, _080AC698 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
	ldr r1, _080AC69C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC6A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC6A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC6A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC6AC @ =gVramGraphicsCopyCursor
	ldr r0, _080AC6B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC6CE
	.align 2, 0
_080AC694: .4byte gLoadedSaveGame
_080AC698: .4byte gInput
_080AC69C: .4byte 0x0000FFFF
_080AC6A0: .4byte gBackgroundsCopyQueueCursor
_080AC6A4: .4byte gBackgroundsCopyQueueIndex
_080AC6A8: .4byte gBgSpritesCount
_080AC6AC: .4byte gVramGraphicsCopyCursor
_080AC6B0: .4byte gVramGraphicsCopyQueueIndex
_080AC6B4:
	adds r0, r4, #0
	bl sub_80ACBA8
	cmp r0, #1
	bne _080AC6CE
	movs r0, #0x80
	lsls r0, r0, #2     @ VOICE__ANNOUNCER__CONGRATULATIONS
	bl m4aSongNumStart
	ldr r0, _080AC6D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC6D8 @ =sub_80AC6DC
	str r0, [r1, #8]
_080AC6CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC6D4: .4byte gCurTask
_080AC6D8: .4byte sub_80AC6DC

	thumb_func_start sub_80AC6DC
sub_80AC6DC: @ 0x080AC6DC
	push {r4, lr}
	ldr r0, _080AC724 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC70A
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC70A
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC70A:
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC72C
	ldr r0, _080AC728 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC738
	b _080AC790
	.align 2, 0
_080AC724: .4byte gCurTask
_080AC728: .4byte gLoadedSaveGame
_080AC72C:
	ldr r0, _080AC770 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC790
_080AC738:
	ldr r0, _080AC774 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC790
	ldr r1, _080AC778 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC77C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC780 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC784 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC788 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC78C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC7C2
	.align 2, 0
_080AC770: .4byte gLoadedSaveGame
_080AC774: .4byte gInput
_080AC778: .4byte 0x0000FFFF
_080AC77C: .4byte gBackgroundsCopyQueueCursor
_080AC780: .4byte gBackgroundsCopyQueueIndex
_080AC784: .4byte gBgSpritesCount
_080AC788: .4byte gVramGraphicsCopyCursor
_080AC78C: .4byte gVramGraphicsCopyQueueIndex
_080AC790:
	ldrb r1, [r4, #1]
	cmp r1, #0x12
	bhi _080AC7BA
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bne _080AC7C2
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r1, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080AC7C2
	movs r0, #0x13
	strb r0, [r4, #1]
	b _080AC7C2
_080AC7BA:
	ldr r0, _080AC7C8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC7CC @ =sub_80AC7D0
	str r0, [r1, #8]
_080AC7C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC7C8: .4byte gCurTask
_080AC7CC: .4byte sub_80AC7D0

	thumb_func_start sub_80AC7D0
sub_80AC7D0: @ 0x080AC7D0
	push {r4, lr}
	ldr r0, _080AC7F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC800
	ldr r0, _080AC7FC @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC80C
	b _080AC864
	.align 2, 0
_080AC7F8: .4byte gCurTask
_080AC7FC: .4byte gLoadedSaveGame
_080AC800:
	ldr r0, _080AC844 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC864
_080AC80C:
	ldr r0, _080AC848 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC864
	ldr r1, _080AC84C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC850 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC854 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC858 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC85C @ =gVramGraphicsCopyCursor
	ldr r0, _080AC860 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC8E8
	.align 2, 0
_080AC844: .4byte gLoadedSaveGame
_080AC848: .4byte gInput
_080AC84C: .4byte 0x0000FFFF
_080AC850: .4byte gBackgroundsCopyQueueCursor
_080AC854: .4byte gBackgroundsCopyQueueIndex
_080AC858: .4byte gBgSpritesCount
_080AC85C: .4byte gVramGraphicsCopyCursor
_080AC860: .4byte gVramGraphicsCopyQueueIndex
_080AC864:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _080AC8C8
	ldr r2, _080AC8B0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AC8B4 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AC8B8 @ =gBldRegs
	ldr r0, _080AC8BC @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _080AC8C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC8C4 @ =sub_80AC8F0
	str r0, [r1, #8]
	b _080AC8E8
	.align 2, 0
_080AC8B0: .4byte gDispCnt
_080AC8B4: .4byte gWinRegs
_080AC8B8: .4byte gBldRegs
_080AC8BC: .4byte 0x00003FFF
_080AC8C0: .4byte gCurTask
_080AC8C4: .4byte sub_80AC8F0
_080AC8C8:
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC8E8
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC8E8
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC8E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AC8F0
sub_80AC8F0: @ 0x080AC8F0
	push {r4, lr}
	ldr r0, _080AC914 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC91C
	ldr r0, _080AC918 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC928
	b _080AC980
	.align 2, 0
_080AC914: .4byte gCurTask
_080AC918: .4byte gLoadedSaveGame
_080AC91C:
	ldr r0, _080AC960 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC980
_080AC928:
	ldr r0, _080AC964 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC980
	ldr r1, _080AC968 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC96C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC970 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC974 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC978 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC97C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC9DC
	.align 2, 0
_080AC960: .4byte gLoadedSaveGame
_080AC964: .4byte gInput
_080AC968: .4byte 0x0000FFFF
_080AC96C: .4byte gBackgroundsCopyQueueCursor
_080AC970: .4byte gBackgroundsCopyQueueIndex
_080AC974: .4byte gBgSpritesCount
_080AC978: .4byte gVramGraphicsCopyCursor
_080AC97C: .4byte gVramGraphicsCopyQueueIndex
_080AC980:
	ldr r1, _080AC99C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bls _080AC9A4
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r4]
	bl sub_80AA554
	ldr r0, _080AC9A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AC9DC
	.align 2, 0
_080AC99C: .4byte gBldRegs
_080AC9A0: .4byte gCurTask
_080AC9A4:
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC9D6
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC9D6
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC9D6:
	adds r0, r4, #0
	bl sub_80ACBF0
_080AC9DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AC9E4
sub_80AC9E4: @ 0x080AC9E4
	bx lr
	.align 2, 0

	thumb_func_start sub_80AC9E8
sub_80AC9E8: @ 0x080AC9E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACA6C @ =sub_80AC398
	movs r1, #0x98
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACA70 @ =sub_80ACB48
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _080ACA74 @ =0x0300012C
	adds r0, r3, r2
	str r5, [r0]
	movs r5, #0
	strb r4, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r4, _080ACA78 @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x22]
	str r0, [r1, #0xc]
	str r5, [r1, #0x10]
	movs r2, #0
	ldr r0, _080ACA7C @ =0x03000014
	adds r4, r3, r0
	movs r6, #0
	adds r0, #4
	adds r3, r3, r0
	movs r5, #0x82
	lsls r5, r5, #8
_080ACA4A:
	lsls r1, r2, #3
	adds r0, r4, r1
	str r6, [r0]
	adds r1, r3, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x22
	bls _080ACA4A
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ACA6C: .4byte sub_80AC398
_080ACA70: .4byte sub_80ACB48
_080ACA74: .4byte 0x0300012C
_080ACA78: .4byte strCredits_CreatedBy
_080ACA7C: .4byte 0x03000014

	thumb_func_start sub_80ACA80
sub_80ACA80: @ 0x080ACA80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r7, [sp, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACAE4 @ =sub_80ACB50
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ACAE8 @ =sub_80ACB4C
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strb r4, [r1, #1]
	strb r5, [r1]
	str r6, [r1, #4]
	str r7, [r1, #8]
	ldr r3, _080ACAEC @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #0x14]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE4: .4byte sub_80ACB50
_080ACAE8: .4byte sub_80ACB4C
_080ACAEC: .4byte strCredits_CreatedBy

	thumb_func_start sub_80ACAF0
sub_80ACAF0: @ 0x080ACAF0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACB3C @ =sub_80AC51C
	movs r1, #0xa5
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACB40 @ =sub_80ACBA4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	strb r2, [r0, #1]
	strh r2, [r0, #4]
	movs r1, #0x1e
	strb r1, [r0, #2]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #8
	str r1, [r0, #0x10]
	strh r2, [r0, #6]
	ldr r1, _080ACB44 @ =0x06010000
	str r1, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB3C: .4byte sub_80AC51C
_080ACB40: .4byte sub_80ACBA4
_080ACB44: .4byte 0x06010000

	thumb_func_start sub_80ACB48
sub_80ACB48: @ 0x080ACB48
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACB4C
sub_80ACB4C: @ 0x080ACB4C
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACB50
sub_80ACB50: @ 0x080ACB50
	push {r4, r5, lr}
	ldr r5, _080ACB98 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _080ACB9C @ =gUnknown_080DB864
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	ldr r1, _080ACBA0 @ =0x00001DFF
	cmp r0, r1
	bgt _080ACB92
	ldr r0, [r5]
	bl TaskDestroy
_080ACB92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB98: .4byte gCurTask
_080ACB9C: .4byte gUnknown_080DB864
_080ACBA0: .4byte 0x00001DFF
    
	thumb_func_start sub_80ACBA4
sub_80ACBA4: @ 0x080ACBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACBA8
sub_80ACBA8: @ 0x080ACBA8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #5
	cmp r0, r2
	ble _080ACBC0
	ldr r3, _080ACBC8 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	bgt _080ACBCC
_080ACBC0:
	str r2, [r1, #0x10]
	movs r0, #1
	b _080ACBCE
	.align 2, 0
_080ACBC8: .4byte 0xFFFFFE00
_080ACBCC:
	movs r0, #0
_080ACBCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ACBD4
sub_80ACBD4: @ 0x080ACBD4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80ACBF0
sub_80ACBF0: @ 0x080ACBF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080ACC32
	ldr r6, _080ACC38 @ =gUnknown_080DB958
	adds r7, r6, #1
_080ACC00:
	ldr r0, _080ACC3C @ =gUnknown_080DB97E
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	lsls r2, r4, #1
	adds r1, r2, r6
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080ACC00
_080ACC32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACC38: .4byte gUnknown_080DB958
_080ACC3C: .4byte gUnknown_080DB97E

	thumb_func_start sub_80ACC40
sub_80ACC40: @ 0x080ACC40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r7, #0
	ldr r0, _080ACCF4 @ =sub_80AE248
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ACCF8 @ =sub_80AE224
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0
	mov sb, r0
	strb r7, [r4, #0x1b]
	movs r1, #0
	mov r8, r1
	strh r7, [r4, #0x1c]
	mov r0, r8
	strb r0, [r4, #0x10]
	strh r7, [r4, #0x1e]
	str r7, [r4, #0x14]
	strb r6, [r4, #0x18]
	strb r0, [r4, #0x1a]
	movs r0, #1
	str r0, [r4]
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0x19]
	ldr r1, _080ACCFC @ =0xFFFF2E00
	str r1, [r4, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	movs r0, #0x98
	lsls r0, r0, #7
	str r0, [r4, #0x2c]
	ldr r7, _080ACD00 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	ldr r1, _080ACD04 @ =0x030000B4
	adds r5, r5, r1
	str r0, [r5]
	mov r1, r8
	strb r1, [r0, #6]
	ldr r0, [r5]
	mov r1, sb
	str r1, [r0]
	ldr r1, [r5]
	ldr r0, _080ACD08 @ =0x06012000
	str r0, [r1, #0x28]
	mov r0, sb
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	ldr r2, _080ACD0C @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r5]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	adds r0, r4, #0
	bl sub_80ACD10
	bl m4aMPlayAllStop
	movs r0, #0x3b      @ MUS_DEMO
	bl m4aSongNumStart
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACCF4: .4byte sub_80AE248
_080ACCF8: .4byte sub_80AE224
_080ACCFC: .4byte 0xFFFF2E00
_080ACD00: .4byte 0x00000CAC
_080ACD04: .4byte 0x030000B4
_080ACD08: .4byte 0x06012000
_080ACD0C: .4byte 0x010003C0

	thumb_func_start sub_80ACD10
sub_80ACD10: @ 0x080ACD10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x36
	bl VramMalloc
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0x5c
	str r6, [r7, #0x5c]
	ldr r4, _080ACDB4 @ =gUnknown_080DBA94
	ldr r1, [r4, #0xc]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r4, #8]
	movs r2, #0
	mov sl, r2
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	str r6, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r2, sb
	strh r2, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACDB4: .4byte gUnknown_080DBA94

	thumb_func_start sub_80ACDB8
sub_80ACDB8: @ 0x080ACDB8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080ACDE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	adds r0, r5, #0
	bl sub_80AD030
	adds r0, r5, #0
	bl sub_80AE2C4
	cmp r0, #0
	bne _080ACDE4
	adds r0, r5, #0
	bl sub_80AE2E8
	b _080ACE92
	.align 2, 0
_080ACDE0: .4byte gCurTask
_080ACDE4:
	ldr r2, _080ACE40 @ =gUnknown_080DBC93
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r4, [r5, #8]
	ldrb r6, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	cmp r4, #0
	bne _080ACE54
	ldr r3, [r5]
	cmp r3, #1
	bne _080ACE54
	ldr r1, _080ACE44 @ =gUnknown_080DBC78
	lsls r0, r2, #3
	adds r0, r0, r2
	adds r0, r6, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACE4C
	cmp r1, #0xfe
	beq _080ACE4E
	strb r0, [r5, #0x19]
	ldr r0, _080ACE48 @ =0x030000B4
	adds r2, r7, r0
	ldr r1, [r2]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r0, [r2]
	ldrb r1, [r5, #0x19]
	ldr r2, [r0, #0x28]
	str r2, [sp]
	movs r2, #0x48
	movs r3, #0x28
	bl sub_80AD7B4
	str r4, [r5]
	str r4, [r5, #8]
	b _080ACE4E
	.align 2, 0
_080ACE40: .4byte gUnknown_080DBC93
_080ACE44: .4byte gUnknown_080DBC78
_080ACE48: .4byte 0x030000B4
_080ACE4C:
	str r3, [r5, #8]
_080ACE4E:
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
_080ACE54:
	ldr r0, [r5]
	cmp r0, #0
	bne _080ACE6C
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r4]
	bl sub_80239A8
_080ACE6C:
	ldr r4, [r5]
	cmp r4, #1
	bne _080ACE92
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080ACE84
	adds r0, r1, #0
	bl sub_80239A8
_080ACE84:
	movs r0, #0
	strh r0, [r5, #0x1e]
	str r4, [r5, #8]
	ldr r0, _080ACE9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ACEA0 @ =sub_80ACEA4
	str r0, [r1, #8]
_080ACE92:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACE9C: .4byte gCurTask
_080ACEA0: .4byte sub_80ACEA4

	thumb_func_start sub_80ACEA4
sub_80ACEA4: @ 0x080ACEA4
	push {r4, r5, lr}
	ldr r0, _080ACEE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_80AD030
	ldr r2, _080ACEE4 @ =gUnknown_080DBC78
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xfe
	beq _080ACEEC
	ldr r1, _080ACEE8 @ =0x030000B4
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80239A8
	b _080ACEF6
	.align 2, 0
_080ACEE0: .4byte gCurTask
_080ACEE4: .4byte gUnknown_080DBC78
_080ACEE8: .4byte 0x030000B4
_080ACEEC:
	ldr r1, _080ACF20 @ =0x030000B4
	adds r0, r5, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #6]
_080ACEF6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080ACF38
	movs r3, #1
	str r3, [r4]
	ldr r2, _080ACF24 @ =gUnknown_080DBC78
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080ACF30
	str r3, [r4, #8]
	ldr r0, _080ACF28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ACF2C @ =sub_80ACF48
	b _080ACF36
	.align 2, 0
_080ACF20: .4byte 0x030000B4
_080ACF24: .4byte gUnknown_080DBC78
_080ACF28: .4byte gCurTask
_080ACF2C: .4byte sub_80ACF48
_080ACF30:
	ldr r0, _080ACF40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ACF44 @ =sub_80ACDB8
_080ACF36:
	str r0, [r1, #8]
_080ACF38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACF40: .4byte gCurTask
_080ACF44: .4byte sub_80ACDB8

	thumb_func_start sub_80ACF48
sub_80ACF48: @ 0x080ACF48
	push {r4, r5, r6, lr}
	ldr r0, _080ACFC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r0, #1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80AD030
	ldr r0, _080ACFCC @ =0x030000B4
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_80239A8
	ldr r0, _080ACFD0 @ =gStageData
	ldrb r4, [r0, #6]
	cmp r4, #0
	bne _080AD010
	ldrb r0, [r5, #0x1b]
	ldr r6, _080ACFD4 @ =gBldRegs
	cmp r0, #0
	beq _080ACFAC
	ldr r2, _080ACFD8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080ACFDC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _080ACFE0 @ =0x00003FFF
	strh r0, [r6]
	strh r4, [r5, #0x1c]
	strb r3, [r5, #0x1b]
_080ACFAC:
	ldrh r0, [r6, #4]
	cmp r0, #0xf
	bhi _080ACFE4
	ldrh r0, [r5, #0x1c]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #0x1c]
	adds r0, r0, r3
	strh r0, [r5, #0x1c]
	b _080AD010
	.align 2, 0
_080ACFC8: .4byte gCurTask
_080ACFCC: .4byte 0x030000B4
_080ACFD0: .4byte gStageData
_080ACFD4: .4byte gBldRegs
_080ACFD8: .4byte gDispCnt
_080ACFDC: .4byte gWinRegs
_080ACFE0: .4byte 0x00003FFF
_080ACFE4:
	movs r4, #0
	movs r0, #0x10
	strh r0, [r6, #4]
	bl sub_8003D2C
	ldr r1, _080AD018 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AD01C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AD020 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AD024 @ =gBgSpritesCount
	strb r4, [r0]
	ldr r1, _080AD028 @ =gVramGraphicsCopyCursor
	ldr r0, _080AD02C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r5, #0x18]
	bl sub_80AE95C
_080AD010:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AD018: .4byte 0x0000FFFF
_080AD01C: .4byte gBackgroundsCopyQueueCursor
_080AD020: .4byte gBackgroundsCopyQueueIndex
_080AD024: .4byte gBgSpritesCount
_080AD028: .4byte gVramGraphicsCopyCursor
_080AD02C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80AD030
sub_80AD030: @ 0x080AD030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x84
	movs r0, #0
	mov r8, r0
_080AD046:
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r1, r6, r1
	strh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r3, _080AD0AC @ =0xFFFFFBFF
	ands r0, r3
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp]
	cmp r7, #2
	bls _080AD046
	adds r0, r5, #0
	adds r0, #0x5c
	ldr r2, [r5, #0x20]
	asrs r2, r2, #8
	movs r4, #0
	strh r2, [r0, #0x10]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r2, r6, r2
	strh r2, [r0, #0x10]
	ldr r1, [r0, #8]
	ands r1, r3
	str r1, [r0, #8]
	strb r4, [r0, #0x1f]
	bl DisplaySprite
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD0AC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80AD0B0
sub_80AD0B0: @ 0x080AD0B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #0
	ldr r0, _080AD180 @ =sub_80AE3E8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AD184 @ =sub_80AE3D4
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	str r5, [r6]
	str r4, [r6, #4]
	adds r4, #4
	str r4, [r6, #8]
	str r7, [r6, #0xc]
	str r7, [r6, #0x10]
	movs r0, #0x49
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #1
	mov sl, r0
	movs r4, #0
	ldr r0, _080AD188 @ =gUnknown_080DBCAE
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _080AD16E
	ldr r0, _080AD18C @ =gUnknown_080DBAA4
	adds r0, #4
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r5, #0
_080AD10A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r6, r0
	str r7, [r0]
	mov r1, r8
	ldr r2, [r1]
	lsls r3, r4, #3
	adds r2, r3, r2
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r7, r7, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r2, r8
	ldr r1, [r2]
	adds r3, r3, r1
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #4]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #8]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080AD188 @ =gUnknown_080DBCAE
	add r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blo _080AD10A
_080AD16E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD180: .4byte sub_80AE3E8
_080AD184: .4byte sub_80AE3D4
_080AD188: .4byte gUnknown_080DBCAE
_080AD18C: .4byte gUnknown_080DBAA4

	thumb_func_start sub_80AD190
sub_80AD190: @ 0x080AD190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r1, [r5]
	ldrb r0, [r1]
	movs r3, #0
	cmp r0, #0xff
	beq _080AD1A6
	adds r3, r0, #0
_080AD1A6:
	ldr r7, [r5, #0x14]
	movs r6, #0
	ldr r0, _080AD22C @ =gUnknown_080DBCAE
	adds r0, r3, r0
	ldrb r2, [r0]
	cmp r6, r2
	bhs _080AD220
	ldr r1, _080AD230 @ =gUnknown_080DBAA4
	lsls r0, r3, #2
	adds r0, r0, r1
	mov r8, r0
	mov sb, r2
_080AD1BE:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, #0x14
	adds r4, r5, r4
	str r7, [r4]
	mov r0, r8
	ldr r1, [r0]
	lsls r2, r6, #3
	adds r1, r2, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	adds r7, r7, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	mov r1, r8
	ldr r0, [r1]
	adds r2, r2, r0
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	ldr r1, [r0]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r5, #8]
	ldr r2, [r0]
	asrs r2, r2, #8
	strh r2, [r4, #0x12]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sb
	blo _080AD1BE
_080AD220:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD22C: .4byte gUnknown_080DBCAE
_080AD230: .4byte gUnknown_080DBAA4

	thumb_func_start sub_80AD234
sub_80AD234: @ 0x080AD234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	mov sb, r0
	ldr r0, _080AD3E8 @ =sub_80AE45C
	movs r1, #0x9a
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080AD3EC @ =sub_80AE448
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strb r4, [r7]
	str r6, [r7, #4]
	str r5, [r7, #0xc]
	adds r5, #4
	str r5, [r7, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #0x14]
	ldr r0, _080AD3F0 @ =0xFFFFD800
	str r0, [r7, #0x18]
	mov r1, sb
	strh r1, [r7, #8]
	ldrb r4, [r7]
	ldr r1, _080AD3F4 @ =gUnknown_080DB994
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl VramMalloc
	mov sb, r0
	ldr r0, _080AD3F8 @ =gUnknown_080DBCBB
	adds r0, r4, r0
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r6, #0
	ldr r0, _080AD3FC @ =gUnknown_08E2EF44
	lsls r4, r4, #2
	mov r8, r4
	add r0, r8
	ldr r0, [r0]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _080AD32A
	lsls r1, r1, #2
	mov sl, r1
_080AD2B2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r0, r7, r0
	mov r1, sb
	str r1, [r0]
	ldr r4, _080AD400 @ =gUnknown_08E2EF54
	mov r5, r8
	add r4, r8
	ldr r1, [r4]
	add r1, sl
	ldr r2, [r1]
	lsls r3, r6, #3
	adds r2, r3, r2
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	add sb, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r1, [r4]
	add r1, sl
	ldr r1, [r1]
	adds r3, r3, r1
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	movs r1, #0
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	movs r1, #0
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080AD3FC @ =gUnknown_08E2EF44
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080AD2B2
_080AD32A:
	ldrb r0, [r7]
	cmp r0, #1
	bne _080AD396
	movs r6, #0
	ldr r5, _080AD400 @ =gUnknown_08E2EF54
	movs r0, #0
	mov r8, r0
	movs r4, #0
_080AD33A:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0xbc
	adds r0, r7, r0
	mov r1, sb
	str r1, [r0]
	ldr r1, [r5, #0xc]
	ldr r2, [r1]
	lsls r3, r6, #3
	adds r2, r3, r2
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	add sb, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r1, [r5, #0xc]
	ldr r1, [r1]
	adds r3, r3, r1
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080AD33A
_080AD396:
	ldrb r4, [r7]
	cmp r4, #0
	bne _080AD3D8
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, sb
	str r1, [r0]
	ldr r2, _080AD404 @ =gUnknown_080DBA8C
	ldrh r1, [r2]
	movs r3, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
_080AD3D8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD3E8: .4byte sub_80AE45C
_080AD3EC: .4byte sub_80AE448
_080AD3F0: .4byte 0xFFFFD800
_080AD3F4: .4byte gUnknown_080DB994
_080AD3F8: .4byte gUnknown_080DBCBB
_080AD3FC: .4byte gUnknown_08E2EF44
_080AD400: .4byte gUnknown_08E2EF54
_080AD404: .4byte gUnknown_080DBA8C

	thumb_func_start sub_80AD408
sub_80AD408: @ 0x080AD408
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrb r1, [r6]
	ldr r0, [r6, #0x1c]
	mov sb, r0
	movs r0, #0
	mov r8, r0
	ldr r0, _080AD578 @ =gUnknown_08E2EF44
	lsls r7, r1, #2
	adds r0, r7, r0
	ldr r2, [r6, #4]
	ldrb r1, [r2]
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	bhs _080AD4CA
	movs r0, #0
	mov sl, r0
_080AD436:
	mov r0, r8
	lsls r4, r0, #2
	add r4, r8
	lsls r4, r4, #3
	adds r4, #0x1c
	adds r4, r6, r4
	mov r0, sb
	str r0, [r4]
	ldr r3, _080AD57C @ =gUnknown_08E2EF54
	adds r5, r7, #0
	adds r3, r7, r3
	ldrb r0, [r2]
	ldr r1, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r2, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	add sb, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #4]
	ldrb r0, [r0]
	ldr r1, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r2, r0
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x40
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #0x1f]
	mov r0, sl
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080AD578 @ =gUnknown_08E2EF44
	adds r5, r5, r0
	ldr r2, [r6, #4]
	ldrb r1, [r2]
	ldr r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	blo _080AD436
_080AD4CA:
	ldrb r0, [r6]
	cmp r0, #1
	bne _080AD568
	movs r0, #0
	mov r8, r0
	ldr r1, _080AD580 @ =gUnknown_080DBCB9
	ldr r2, [r6, #4]
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	bhs _080AD568
	movs r7, #0
	movs r5, #0
_080AD4E6:
	mov r0, r8
	lsls r4, r0, #2
	add r4, r8
	lsls r4, r4, #3
	adds r4, #0xbc
	adds r4, r6, r4
	mov r0, sb
	str r0, [r4]
	ldr r1, _080AD57C @ =gUnknown_08E2EF54
	ldrb r0, [r2]
	ldr r3, [r1, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r2, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	add sb, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #4]
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r2, r2, r0
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _080AD580 @ =gUnknown_080DBCB9
	ldr r2, [r6, #4]
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	blo _080AD4E6
_080AD568:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD578: .4byte gUnknown_08E2EF44
_080AD57C: .4byte gUnknown_08E2EF54
_080AD580: .4byte gUnknown_080DBCB9

	thumb_func_start sub_80AD584
sub_80AD584: @ 0x080AD584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x36
	bl VramMalloc
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _080AD630 @ =gUnknown_080DBA94
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #5
	adds r5, r5, r1
	ldrh r1, [r4, #0x18]
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #1
	mov sb, r1
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #0xb
	mov r8, r1
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	str r5, [r0]
	ldrh r1, [r4, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	mov r1, r8
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD630: .4byte gUnknown_080DBA94

	thumb_func_start Task_B8_80AD634
Task_B8_80AD634: @ 0x080AD634
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080AD65C @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_80AD72C
	adds r0, r5, #0
	bl sub_80AE63C
	cmp r0, #0
	bne _080AD660
	adds r0, r5, #0
	bl sub_80AE66C
	b _080AD71A
	.align 2, 0
_080AD65C: .4byte gCurTask
_080AD660:
	ldr r2, _080AD6B8 @ =gUnknown_080DBCD9
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r4, [r5, #0xc]
	ldr r0, [r4]
	ldrb r3, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	cmp r0, #1
	bne _080AD71A
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD6CC
	ldr r1, _080AD6BC @ =gUnknown_080DBCBE
	lsls r0, r2, #3
	adds r0, r0, r2
	adds r0, r3, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD6C4
	strb r0, [r5, #0x19]
	ldr r0, _080AD6C0 @ =0x030000B4
	adds r2, r6, r0
	ldr r1, [r2]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r0, [r2]
	ldrb r1, [r5, #0x19]
	ldr r2, [r0, #0x28]
	str r2, [sp]
	movs r2, #0x30
	movs r3, #0x6e
	bl sub_80AD7B4
	movs r0, #0
	str r0, [r5]
	b _080AD6C6
	.align 2, 0
_080AD6B8: .4byte gUnknown_080DBCD9
_080AD6BC: .4byte gUnknown_080DBCBE
_080AD6C0: .4byte 0x030000B4
_080AD6C4:
	str r1, [r4]
_080AD6C6:
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
_080AD6CC:
	ldr r0, [r5]
	cmp r0, #0
	bne _080AD6E4
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r4]
	bl sub_80239A8
_080AD6E4:
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD71A
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _080AD6FC
	adds r0, r1, #0
	bl sub_80239A8
_080AD6FC:
	ldrb r0, [r5, #0x10]
	cmp r0, #5
	bne _080AD706
	movs r0, #0x78
	b _080AD708
_080AD706:
	movs r0, #0
_080AD708:
	strh r0, [r5, #0x1e]
	ldr r1, [r5, #0xc]
	movs r0, #0
	str r0, [r1]
	str r0, [r5]
	ldr r0, _080AD724 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AD728 @ =sub_80AE5C4
	str r0, [r1, #8]
_080AD71A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AD724: .4byte gCurTask
_080AD728: .4byte sub_80AE5C4

	thumb_func_start sub_80AD72C
sub_80AD72C: @ 0x080AD72C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r2, #0
	movs r7, #0
_080AD738:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r5, [r0]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r5, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r1
	strh r1, [r5, #0x10]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov r8, r1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	subs r4, #0x40
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080AD738
	adds r0, r6, #0
	adds r0, #0xac
	ldr r4, [r0]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AD7B4
sub_80AD7B4: @ 0x080AD7B4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	str r4, [r6]
	movs r1, #0
	movs r0, #8
	strh r0, [r6, #0xa]
	strh r2, [r6, #0x12]
	strh r3, [r6, #0x14]
	strb r2, [r6, #0xf]
	strb r3, [r6, #0x10]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xe]
	strb r1, [r6, #5]
	strb r1, [r6, #6]
	strh r4, [r6, #8]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0x1c]
	strh r4, [r6, #0x1a]
	strb r1, [r6, #0x1d]
	strb r1, [r6, #0x1e]
	str r5, [r6, #0x24]
	movs r0, #1
	strb r0, [r6, #0x1f]
	ldr r0, _080AD818 @ =gLoadedSaveGame
	ldr r1, _080AD81C @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _080AD800
	movs r0, #5
_080AD800:
	ldr r1, _080AD820 @ =gNotificationTexts
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6, #0x20]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD818: .4byte gLoadedSaveGame
_080AD81C: .4byte 0x00000366
_080AD820: .4byte gNotificationTexts
