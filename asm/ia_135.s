.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_Interactable135
Task_Interactable135: @ 0x0804C9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804C9E8 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0         @ r5 = ia
	ldr r6, [r5]            @ r6 = me
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	mov r8, r1              @ r8 = worldX
	movs r3, #0xe
	ldrsh r7, [r5, r3]      @ r7 = worldY
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804C9F0
	ldr r0, _0804C9EC @ =0x00000262
	bl sub_8003E28
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r5, sb
	ldr r0, [r5]
	bl TaskDestroy
	b _0804CB1C
	.align 2, 0
_0804C9E8: .4byte gCurTask
_0804C9EC: .4byte 0x00000262
_0804C9F0:
	movs r1, #4
	ldrsb r1, [r6, r1]
	lsls r1, r1, #3     @ r1 = (me->d.sData[1] * TILE_WIDTH)
	adds r1, r7, r1     @ r1 = top = worldY + r1
	lsls r1, r1, #0x10
	ldrb r3, [r6, #6]   @ r3 = me->d.uData[3]
	lsls r0, r3, #3
	lsrs r2, r1, #0x10
	str r2, [sp]        @ sp00 = (u16)top
	asrs r1, r1, #0x10  @ r1 = (s16)top
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0          @ sl = bottom
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	add r0, r8
	lsls r0, r0, #0x10
	ldrb r2, [r6, #5]
	lsls r2, r2, #3
	lsrs r5, r0, #0x10
	mov sb, r5          @ sb = left
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0          @ r8 = right
	lsls r3, r3, #2
	adds r1, r1, r3     @ r1 = top + (me->d.uData[3] * 4)
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10  @ r7 = middle = top + (me->d.uData[3] * 4)
__loopy:
	movs r1, #0
_0804CA32:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0804CA44
	ldr r0, _0804CA40 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804CA4E
	.align 2, 0
_0804CA40: .4byte gStageData
_0804CA44:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804CA4E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804CAC0 @ =gPlayers
	adds r4, r0, r1     @ r4 = p
	ldr r1, [r4]
	ldr r0, _0804CAC4 @ =PlayerCB_8008A8C
	cmp r1, r0
	beq _0804CB0E
	ldr r0, _0804CAC8 @ =PlayerCB_800ED80
	cmp r1, r0
	beq _0804CB0E
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804CB0E
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10      @ r1 = (u16)qPlayerY
	asrs r2, r0, #0x10      @ r2 = qPlayerX
	mov r3, sb              @ r3 = sb = left
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804CB0E
	mov r5, r8              @ r5 = r8 = right
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804CB0E
	lsls r0, r1, #0x10
	ldr r2, [sp]            @ r2= (u16)top
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10      @ r2 = qPlayerY
	adds r3, r0, #0
	cmp r3, r1
	ble _0804CB0E
	mov r5, sl              @ r5 = sl = bottom
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804CB0E
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r2, r1
	bge _0804CACC
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0804CB0E
	b _0804CAD4
	.align 2, 0
_0804CAC0: .4byte gPlayers
_0804CAC4: .4byte PlayerCB_8008A8C
_0804CAC8: .4byte PlayerCB_800ED80
_0804CACC:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0804CB0E
_0804CAD4:
	ldr r1, [r4]
	ldr r0, _0804CAF0 @ =PlayerCB_800A98C
	cmp r1, r0
	beq _0804CB0E
	asrs r0, r5, #0x10
	lsls r1, r0, #8
	str r1, [r4, #0x74]
	asrs r1, r3, #0x10
	cmp r1, r0
	bge _0804CAF4
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x80
	b _0804CAFA
	.align 2, 0
_0804CAF0: .4byte PlayerCB_800A98C
_0804CAF4:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
_0804CAFA:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	asrs r0, r5, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_800A90C
_0804CB0E:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804CA32
_0804CB1C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif
