.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_803598C
sub_803598C: @ 0x0803598C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	mov r8, r0
	cmp r4, #0xf
	bhi _08035A68
	lsls r0, r4, #2
	ldr r1, _080359AC @ =_080359B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080359AC: .4byte _080359B0
_080359B0: @ jump table
	.4byte _080359F6 @ case 0
	.4byte _080359F6 @ case 1
	.4byte _080359F0 @ case 2
	.4byte _080359F6 @ case 3
	.4byte _08035A10 @ case 4
	.4byte _08035A30 @ case 5
	.4byte _08035A30 @ case 6
	.4byte _080359F6 @ case 7
	.4byte _08035A16 @ case 8
	.4byte _08035A30 @ case 9
	.4byte _08035A30 @ case 10
	.4byte _080359F6 @ case 11
	.4byte _080359F6 @ case 12
	.4byte _080359F6 @ case 13
	.4byte _080359F6 @ case 14
	.4byte _080359F6 @ case 15
_080359F0:
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
_080359F6:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #2
	strb r0, [r6, #0x1a]
	movs r0, #3
	strb r0, [r7, #0x1a]
	b _08035A68
_08035A10:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_08035A16:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #0
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r7, #0x1a]
	b _08035A68
_08035A30:
	movs r0, #0x3d
	bl VramMalloc
	str r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #4
	strb r1, [r6, #0x1a]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08035A56
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
_08035A56:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08035A68
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08035A68:
	movs r5, #0
	movs r1, #0
	ldr r4, _08035AC4 @ =0x00000363
	strh r4, [r6, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r1, [r6, #0xe]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x20]
	strh r4, [r7, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r2, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r2, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r0, r1
	str r0, [r6, #8]
	str r0, [r7, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035AC4: .4byte 0x00000363

	thumb_func_start sub_8035AC8
sub_8035AC8: @ 0x08035AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08035B20 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08035B24 @ =0x0300000C
	adds r6, r5, r1
	ldr r2, _08035B28 @ =0x03000044
	adds r7, r5, r2
	ldr r3, [r4]
	mov r8, r3
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08035B2C
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _08035B58
	.align 2, 0
_08035B20: .4byte gCurTask
_08035B24: .4byte 0x0300000C
_08035B28: .4byte 0x03000044
_08035B2C:
	ldr r2, [r4, #0x7c]
	asrs r2, r2, #8
	ldr r1, _08035B64 @ =gCamera
	ldr r0, [r1]
	subs r2, r2, r0
	strh r2, [r6, #0x10]
	ldr r3, _08035B68 @ =0x03000080
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	strh r2, [r7, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
_08035B58:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035B64: .4byte gCamera
_08035B68: .4byte 0x03000080

	thumb_func_start CreateEntity_DashRing0
CreateEntity_DashRing0: @ 0x08035B6C
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
	bl CreateDashRing
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_DashRing1
CreateEntity_DashRing1: @ 0x08035B98
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
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateDashRing
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_DashRing
TaskDestructor_DashRing: @ 0x08035BC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08035C18 @ =gStageData
	ldrb r2, [r0, #6]
	adds r1, r2, #1
	movs r0, #1
	ands r1, r0
	movs r3, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r5, r0, #4
	ldr r4, _08035C1C @ =gPlayers
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r2, r0, #4
	ldr r6, _08035C20 @ =0xF7FBFFFF
_08035BEC:
	adds r1, r2, r4
	cmp r3, #0
	beq _08035BF4
	adds r1, r5, r4
_08035BF4:
	ldr r0, [r1, #4]
	ands r0, r6
	str r0, [r1, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08035BEC
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035C18: .4byte gStageData
_08035C1C: .4byte gPlayers
_08035C20: .4byte 0xF7FBFFFF

	thumb_func_start Task_DashRing
Task_DashRing: @ 0x08035C24
	push {lr}
	bl sub_8035374
	bl sub_80358A0
	bl sub_8035AC8
	pop {r0}
	bx r0
	.align 2, 0
