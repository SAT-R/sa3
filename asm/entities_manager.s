.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start SpawnMapEntities
SpawnMapEntities: @ 0x0802BB80
	push {r4, r5, r6, lr}
	sub sp, #0x50
	ldr r2, _0802BC98 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	beq _0802BB96
	b _0802BCEE
_0802BB96:
	ldr r0, _0802BC9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r1, [r6, #8]
	str r1, [sp, #0x44]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0802BBBC
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [sp, #0x44]
	ldr r0, [r6, #4]
	adds r0, #0xc
	str r0, [sp, #0x4c]
_0802BBBC:
	ldr r0, [sp, #0x48]
	adds r1, r0, #4
	str r1, [sp, #0x48]
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	adds r0, r1, #4
	str r0, [sp, #0x48]
	ldrh r1, [r1, #4]
	str r1, [sp, #8]
	adds r0, #4
	str r0, [sp, #0x48]
	ldr r1, _0802BCA0 @ =gCamera
	ldr r0, [r1]
	adds r2, r0, #0
	subs r2, #0x80
	str r2, [sp, #0x34]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [sp, #0x3c]
	ldr r1, [r1, #4]
	adds r0, r1, #0
	subs r0, #0x80
	str r0, [sp, #0x38]
	subs r4, #0x50
	adds r0, r1, r4
	str r0, [sp, #0x40]
	cmp r2, #0
	bge _0802BBF8
	str r3, [sp, #0x34]
_0802BBF8:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bge _0802BC00
	str r3, [sp, #0x38]
_0802BC00:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bge _0802BC08
	str r3, [sp, #0x3c]
_0802BC08:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bge _0802BC10
	str r3, [sp, #0x40]
_0802BC10:
	ldr r0, [sp, #4]
	lsls r2, r0, #8
	ldr r0, [sp, #0x34]
	cmp r0, r2
	blo _0802BC1E
	subs r0, r2, #1
	str r0, [sp, #0x34]
_0802BC1E:
	ldr r0, [sp, #8]
	lsls r1, r0, #8
	ldr r0, [sp, #0x38]
	cmp r0, r1
	blo _0802BC2C
	subs r0, r1, #1
	str r0, [sp, #0x38]
_0802BC2C:
	ldr r0, [sp, #0x3c]
	cmp r0, r2
	blo _0802BC36
	subs r0, r2, #1
	str r0, [sp, #0x3c]
_0802BC36:
	ldr r0, [sp, #0x40]
	cmp r0, r1
	blo _0802BC40
	subs r0, r1, #1
	str r0, [sp, #0x40]
_0802BC40:
	mov r1, sp
	ldr r0, [sp, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BCD8
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BCD8
	mov r5, sp
_0802BC5C:
	ldr r0, [sp, #0x34]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BCC2
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BCC2
	mov r4, sp
_0802BC74:
	ldr r0, _0802BC98 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BCA4
	movs r0, #1
	mov r1, sp
	bl sub_802BD04
	movs r0, #1
	mov r1, sp
	bl sub_802BDE4
	movs r0, #1
	mov r1, sp
	bl sub_802BEE4
	b _0802BCAC
	.align 2, 0
_0802BC98: .4byte gStageData
_0802BC9C: .4byte gCurTask
_0802BCA0: .4byte gCamera
_0802BCA4:
	movs r0, #1
	mov r1, sp
	bl sub_802BFA4
_0802BCAC:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BCC2
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BC74
_0802BCC2:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BCD8
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BC5C
_0802BCD8:
	ldr r1, _0802BCF8 @ =gCamera
	ldr r0, [r1]
	str r0, [r6, #0xc]
	ldr r0, [r1, #4]
	str r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0x14]
	ldr r0, _0802BCFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BD00 @ =Task_EntitiesManagerInit
	str r0, [r1, #8]
_0802BCEE:
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCF8: .4byte gCamera
_0802BCFC: .4byte gCurTask
_0802BD00: .4byte Task_EntitiesManagerInit
.endif

	thumb_func_start sub_802BD04
sub_802BD04: @ 0x0802BD04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	movs r1, #0x34
	adds r1, r1, r4
	mov r8, r1
	cmp r0, #0
	bne _0802BD22
	movs r3, #0x24
	adds r3, r3, r4
	mov r8, r3
_0802BD22:
	ldrh r1, [r4, #2]
	ldr r0, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4]
	ldr r2, [r4, #0x48]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _0802BDD0
	subs r0, #8
	adds r0, r2, r0
	str r0, [r4, #0xc]
	movs r1, #0
	str r1, [r4, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802BDD0
	movs r5, #2
	rsbs r5, r5, #0
	mov sl, r5
	mov sb, r1
_0802BD5A:
	ldr r2, [r4, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sl
	bge _0802BD68
	adds r0, r2, #0
	b _0802BDBA
_0802BD68:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r4, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x20]
	mov r5, r8
	ldr r0, [r5]
	ldrh r7, [r4, #2]
	ldrh r6, [r4]
	cmp r3, r0
	blt _0802BDB8
	ldr r0, [r5, #8]
	cmp r3, r0
	bgt _0802BDB8
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0802BDB8
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bgt _0802BDB8
	ldr r1, _0802BDE0 @ =gSpriteInits_Interactables
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _0802BDB8
	ldrb r3, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r5
_0802BDB8:
	ldr r0, [r4, #0xc]
_0802BDBA:
	adds r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0802BD5A
_0802BDD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BDE0: .4byte gSpriteInits_Interactables

	thumb_func_start sub_802BDE4
sub_802BDE4: @ 0x0802BDE4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0802BE24 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _0802BED8
	adds r6, r5, #0
	adds r6, #0x34
	cmp r1, #0
	bne _0802BDFE
	subs r6, #0x10
_0802BDFE:
	ldrh r1, [r5, #2]
	ldr r0, [r5, #4]
	muls r0, r1, r0
	ldrh r1, [r5]
	ldr r2, [r5, #0x44]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x18]
	cmp r0, #0
	beq _0802BED8
	subs r0, #8
	adds r0, r2, r0
	str r0, [r5, #0x10]
	movs r1, #0
	str r1, [r5, #0x18]
	b _0802BECC
	.align 2, 0
_0802BE24: .4byte gStageData
_0802BE28:
	ldr r3, [r5, #0x10]
	movs r0, #0
	ldrsb r0, [r3, r0]
	movs r4, #2
	rsbs r4, r4, #0
	cmp r0, r4
	bge _0802BE3A
	adds r0, r3, #0
	b _0802BEC0
_0802BE3A:
	ldrb r1, [r3]
	lsls r1, r1, #3
	ldrh r0, [r5]
	lsls r0, r0, #8
	adds r2, r1, r0
	str r2, [r5, #0x1c]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #0x20]
	ldr r0, [r6]
	ldrh r7, [r5, #2]
	mov ip, r7
	ldrh r7, [r5]
	cmp r2, r0
	blt _0802BEBE
	ldr r0, [r6, #8]
	cmp r2, r0
	bgt _0802BEBE
	ldr r0, [r6, #4]
	cmp r1, r0
	blt _0802BEBE
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bgt _0802BEBE
	ldr r1, _0802BEA0 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0802BE7C
	cmp r0, #5
	bne _0802BEA8
_0802BE7C:
	ldrb r0, [r1, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0802BEA8
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0802BEA8
	ldr r0, _0802BEA4 @ =gUnknown_080CF104
	ldrb r1, [r1, #9]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r3, #2]
	cmp r0, r1
	bne _0802BEA8
	strb r4, [r3]
	b _0802BECA
	.align 2, 0
_0802BEA0: .4byte gStageData
_0802BEA4: .4byte gUnknown_080CF104
_0802BEA8:
	ldr r2, _0802BEE0 @ =gSpriteInits_Enemies
	ldr r0, [r5, #0x10]
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r3, [r5, #0x18]
	ldr r4, [r1]
	adds r1, r7, #0
	mov r2, ip
	bl _call_via_r4
_0802BEBE:
	ldr r0, [r5, #0x10]
_0802BEC0:
	adds r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
_0802BECA:
	ldr r0, [r5, #0x10]
_0802BECC:
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802BE28
_0802BED8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BEE0: .4byte gSpriteInits_Enemies

	thumb_func_start sub_802BEE4
sub_802BEE4: @ 0x0802BEE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	adds r7, r4, #0
	adds r7, #0x34
	cmp r0, #0
	bne _0802BEFA
	subs r7, #0x10
_0802BEFA:
	ldrh r1, [r4, #2]
	ldr r0, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4]
	ldr r2, [r4, #0x4c]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _0802BF98
	subs r0, #8
	adds r0, r2, r0
	str r0, [r4, #0x14]
	movs r1, #0
	str r1, [r4, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802BF98
	movs r0, #2
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, r1
_0802BF32:
	ldr r2, [r4, #0x14]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sb
	bge _0802BF40
	adds r0, r2, #3
	b _0802BF84
_0802BF40:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r4, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x20]
	ldr r0, [r7]
	ldrh r6, [r4, #2]
	ldrh r5, [r4]
	cmp r3, r0
	blt _0802BF80
	ldr r0, [r7, #8]
	cmp r3, r0
	bgt _0802BF80
	ldr r0, [r7, #4]
	cmp r1, r0
	blt _0802BF80
	ldr r0, [r7, #0xc]
	cmp r1, r0
	bgt _0802BF80
	ldrb r3, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CreateEntity_ItemBox
_0802BF80:
	ldr r0, [r4, #0x14]
	adds r0, #3
_0802BF84:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _0802BF32
_0802BF98:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_802BFA4
sub_802BFA4: @ 0x0802BFA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	movs r1, #0x34
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0
	bne _0802BFC2
	movs r3, #0x24
	adds r3, r3, r5
	mov r8, r3
_0802BFC2:
	ldrh r1, [r5, #2]
	ldr r0, [r5, #4]
	muls r0, r1, r0
	ldrh r1, [r5]
	ldr r2, [r5, #0x48]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x18]
	cmp r0, #0
	beq _0802C06C
	subs r0, #8
	adds r0, r2, r0
	str r0, [r5, #0xc]
	movs r1, #0
	str r1, [r5, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802C06C
	movs r4, #2
	rsbs r4, r4, #0
	mov sl, r4
	mov sb, r1
_0802BFFA:
	ldr r2, [r5, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sl
	bge _0802C008
	adds r0, r2, #0
	b _0802C056
_0802C008:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r5]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r5, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #0x20]
	mov r4, r8
	ldr r0, [r4]
	ldrh r7, [r5, #2]
	ldrh r6, [r5]
	cmp r3, r0
	blt _0802C054
	ldr r0, [r4, #8]
	cmp r3, r0
	bgt _0802C054
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _0802C054
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bgt _0802C054
	ldr r1, _0802C07C @ =gSpriteInits_InteractablesMultiplayer
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r3, [r5, #0x18]
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r4
_0802C054:
	ldr r0, [r5, #0xc]
_0802C056:
	adds r0, #8
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0802BFFA
_0802C06C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C07C: .4byte gSpriteInits_InteractablesMultiplayer

	thumb_func_start sub_802C080
sub_802C080: @ 0x0802C080
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	ldr r1, _0802C0C0 @ =0x11000300
	ands r0, r1
	cmp r0, #0
	bne _0802C0CC
	ldr r0, _0802C0C4 @ =gStageData
	ldrb r0, [r0, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802C0CC
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802C0B2
	cmp r1, #8
	beq _0802C0B2
	cmp r1, #0x10
	bne _0802C0CC
_0802C0B2:
	ldr r1, [r2]
	ldr r0, _0802C0C8 @ =Player_800D944
	cmp r1, r0
	beq _0802C0CC
	movs r0, #0
	b _0802C0CE
	.align 2, 0
_0802C0C0: .4byte 0x11000300
_0802C0C4: .4byte gStageData
_0802C0C8: .4byte Player_800D944
_0802C0CC:
	movs r0, #1
_0802C0CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802C0D4
sub_802C0D4: @ 0x0802C0D4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	ldr r1, _0802C0F0 @ =0x11000100
	ands r0, r1
	cmp r0, #0
	bne _0802C0F8
	ldr r1, [r2]
	ldr r0, _0802C0F4 @ =Player_800D944
	cmp r1, r0
	beq _0802C0F8
	movs r0, #0
	b _0802C0FA
	.align 2, 0
_0802C0F0: .4byte 0x11000100
_0802C0F4: .4byte Player_800D944
_0802C0F8:
	movs r0, #1
_0802C0FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start DestroyStageEntitiesManager
DestroyStageEntitiesManager: @ 0x0802C100
	push {r4, lr}
	ldr r0, _0802C130 @ =gStageData
	adds r2, r0, #0
	adds r2, #0x94
	ldr r1, [r2]
	cmp r1, #0
	beq _0802C138
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802C134
	ldrh r4, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	ldr r0, [r4, #4]
	bl EwramFree
	ldr r0, [r4, #8]
	bl EwramFree
	b _0802C138
	.align 2, 0
_0802C130: .4byte gStageData
_0802C134:
	movs r0, #0
	str r0, [r2]
_0802C138:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

@ TODO/MATCHING: It does not look like it here, but maybe this gets s16 params?
@                It gets called with s16s in some places. (e.g. Task_BigAirBubble)
	thumb_func_start sub_802C140
sub_802C140: @ 0x0802C140
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _0802C18C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r4, r4, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C16A
	adds r0, r4, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C16A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	ble _0802C190
_0802C16A:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0802C186
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C186
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0802C190
_0802C186:
	movs r0, #0
	b _0802C192
	.align 2, 0
_0802C18C: .4byte gCamera
_0802C190:
	movs r0, #1
_0802C192:
	pop {r4, r5}
	pop {r1}
	bx r1

@ NOTE: IsWorldPtActive/IsScreenPtActive are not about just visibility,
@       but about being in the range where entities spawn/are active.
@ Input:
    @ R0 = worldX @ Not Q_24_8!
    @ R1 = worldY @ Not Q_24_8!
	thumb_func_start IsWorldPtActive
IsWorldPtActive: @ 0x0802C198
	push {lr}
	adds r3, r1, #0
	ldr r2, _0802C1C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r3, r3, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C1C0
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C1C0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0802C1C8
_0802C1C0:
	movs r0, #0
	b _0802C1CA
	.align 2, 0
_0802C1C4: .4byte gCamera
_0802C1C8:
	movs r0, #1
_0802C1CA:
	pop {r1}
	bx r1
	.align 2, 0

    @ Used by IAs 084, 101, 103, 112 and 131 (Pendulum)
	thumb_func_start IsScreenPtActive
IsScreenPtActive: @ 0x0802C1D0
	push {lr}
	adds r2, r1, #0
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C1EE
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C1EE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _0802C1F2
_0802C1EE:
	movs r0, #0
	b _0802C1F4
_0802C1F2:
	movs r0, #1
_0802C1F4:
	pop {r1}
	bx r1

    @ Some On-Screen check?
    @ Used by IAs Gondola (Chaos Angel), 102 and 139
	thumb_func_start sub_802C1F8
sub_802C1F8: @ 0x0802C1F8
	push {lr}
	adds r2, r1, #0
	adds r0, #0x20
	movs r1, #0x98
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C212
	adds r0, r2, #0
	adds r0, #0x20
	cmp r0, #0
	blt _0802C212
	cmp r2, #0xc0
	ble _0802C216
_0802C212:
	movs r0, #0
	b _0802C218
_0802C216:
	movs r0, #1
_0802C218:
	pop {r1}
	bx r1
