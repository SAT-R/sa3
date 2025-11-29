.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateEntity_Uutsubo_1
CreateEntity_Uutsubo_1: @ 0x0805DBFC
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
	ldr r0, _0805DC68 @ =Task_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DC6C @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
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
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #1
	bl sub_805D188
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
_0805DC68: .4byte Task_805DDCC
_0805DC6C: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_0
CreateEntity_Uutsubo_0: @ 0x0805DC70
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
	ldr r0, _0805DCDC @ =Task_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DCE0 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
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
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #0
	bl sub_805D188
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
_0805DCDC: .4byte Task_805DDCC
_0805DCE0: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_2
CreateEntity_Uutsubo_2: @ 0x0805DCE4
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
	ldr r0, _0805DD50 @ =Task_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DD54 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
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
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #2
	bl sub_805D188
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
_0805DD50: .4byte Task_805DDCC
_0805DD54: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_3
CreateEntity_Uutsubo_3: @ 0x0805DD58
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
	ldr r0, _0805DDC4 @ =Task_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DDC8 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
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
	bl CreateEntity_Uutsubo_Shared
	adds r0, r4, #0
	movs r1, #3
	bl sub_805D188
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
_0805DDC4: .4byte Task_805DDCC
_0805DDC8: .4byte sub_805DEC4

	thumb_func_start Task_805DDCC
Task_805DDCC: @ 0x0805DDCC
	push {r4, r5, lr}
	ldr r5, _0805DE04 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE08 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE10
	cmp r1, #4
	beq _0805DE10
	adds r0, r4, #0
	bl sub_805D8D4
	cmp r0, #1
	bne _0805DE10
	ldr r1, [r5]
	ldr r0, _0805DE0C @ =sub_805DE34
	str r0, [r1, #8]
	b _0805DE2A
	.align 2, 0
_0805DE04: .4byte gCurTask
_0805DE08: .4byte gStageData
_0805DE0C: .4byte sub_805DE34
_0805DE10:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE2A
	ldr r0, _0805DE30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE30: .4byte gCurTask

	thumb_func_start sub_805DE34
sub_805DE34: @ 0x0805DE34
	push {r4, r5, lr}
	ldr r5, _0805DE6C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE70 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE78
	cmp r1, #4
	beq _0805DE78
	adds r0, r4, #0
	bl sub_805D47C
	cmp r0, #1
	bne _0805DE78
	ldr r1, [r5]
	ldr r0, _0805DE74 @ =sub_805D314
	str r0, [r1, #8]
	b _0805DE92
	.align 2, 0
_0805DE6C: .4byte gCurTask
_0805DE70: .4byte gStageData
_0805DE74: .4byte sub_805D314
_0805DE78:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE92
	ldr r0, _0805DE98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE98: .4byte gCurTask

	thumb_func_start sub_805DE9C
sub_805DE9C: @ 0x0805DE9C
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
	ldrh r1, [r0, #0x12]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x14]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805DEC4
sub_805DEC4: @ 0x0805DEC4
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0805DED8 @ =0x030000A4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0805DED8: .4byte 0x030000A4
