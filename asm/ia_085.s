.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable085
CreateEntity_Interactable085: @ 0x0803DA68
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803DB18 @ =sub_803DB20
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803DB1C @ =sub_803DCC8
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0
	mov sb, r2
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	mov r0, r8
	strb r0, [r1, #9]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0x10]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	ldrb r0, [r6, #3]
	lsls r0, r0, #3
	strb r0, [r1, #0x14]
	ldrb r0, [r6, #4]
	lsls r0, r0, #3
	strb r0, [r1, #0x15]
	ldrb r0, [r6, #3]
	ldrb r2, [r6, #5]
	adds r0, r0, r2
	lsls r0, r0, #3
	strb r0, [r1, #0x16]
	ldrb r0, [r6, #4]
	ldrb r2, [r6, #6]
	adds r0, r0, r2
	lsls r0, r0, #3
	strb r0, [r1, #0x17]
	ldrb r2, [r6, #7]
	movs r3, #1
	movs r0, #1
	ands r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	ands r0, r3
	strb r0, [r1, #0xb]
	mov r0, sb
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DB18: .4byte sub_803DB20
_0803DB1C: .4byte sub_803DCC8

	thumb_func_start sub_803DB20
sub_803DB20: @ 0x0803DB20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803DB54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov r7, sp
_0803DB40:
	mov r0, r8
	cmp r0, #0
	beq _0803DB58
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803DB5C
	.align 2, 0
_0803DB54: .4byte gCurTask
_0803DB58:
	ldr r0, _0803DC28 @ =gStageData
	ldrb r1, [r0, #6]
_0803DB5C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803DC2C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0803DB76
	b _0803DC86
_0803DB76:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803DB82
	b _0803DC86
_0803DB82:
	ldr r1, [r4]
	ldr r0, _0803DC30 @ =sub_800A438
	cmp r1, r0
	bne _0803DB8C
	b _0803DC86
_0803DB8C:
	ldr r0, _0803DC34 @ =sub_8008A8C
	cmp r1, r0
	bne _0803DB94
	b _0803DC86
_0803DB94:
	ldr r0, _0803DC38 @ =sub_800ED80
	cmp r1, r0
	bne _0803DB9C
	b _0803DC86
_0803DB9C:
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x25
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r7, #1]
	ldrb r0, [r1]
	strb r0, [r7, #2]
	ldrb r0, [r2]
	strb r0, [r7, #3]
	ldrh r0, [r6, #0x10]
	movs r3, #0x14
	ldrsb r3, [r6, r3]
	adds r2, r0, r3
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r5, #0
	ldrsb r5, [r7, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0803DBDE
	movs r0, #0x16
	ldrsb r0, [r6, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0803DBEA
	cmp r2, r1
	blt _0803DC86
_0803DBDE:
	movs r0, #2
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0803DC86
_0803DBEA:
	ldrh r0, [r6, #0x12]
	movs r3, #0x15
	ldrsb r3, [r6, r3]
	adds r2, r0, r3
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	movs r5, #1
	ldrsb r5, [r7, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0803DC10
	movs r0, #0x17
	ldrsb r0, [r6, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0803DC1C
	cmp r2, r1
	blt _0803DC86
_0803DC10:
	movs r0, #3
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0803DC86
_0803DC1C:
	movs r1, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0803DC40
	ldr r3, _0803DC3C @ =sub_800BD88
	b _0803DC4E
	.align 2, 0
_0803DC28: .4byte gStageData
_0803DC2C: .4byte gPlayers
_0803DC30: .4byte sub_800A438
_0803DC34: .4byte sub_8008A8C
_0803DC38: .4byte sub_800ED80
_0803DC3C: .4byte sub_800BD88
_0803DC40:
	ldr r0, [r4]
	ldr r3, _0803DC60 @ =sub_800BD88
	cmp r0, r3
	bne _0803DC4A
	movs r1, #1
_0803DC4A:
	cmp r1, #0
	beq _0803DC86
_0803DC4E:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0803DC64
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0803DC6A
	.align 2, 0
_0803DC60: .4byte sub_800BD88
_0803DC64:
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
_0803DC6A:
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	cmp r0, r3
	beq _0803DC86
	adds r0, r4, #0
	ldr r1, _0803DCC0 @ =sub_800BCE0
	bl sub_800D87C
_0803DC86:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bhi _0803DC96
	b _0803DB40
_0803DC96:
	ldrh r0, [r6, #0x10]
	ldrh r1, [r6, #0x12]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803DCB0
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803DCC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803DCB0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCC0: .4byte sub_800BCE0
_0803DCC4: .4byte gCurTask

	thumb_func_start sub_803DCC8
sub_803DCC8: @ 0x0803DCC8
	bx lr
	.align 2, 0
