.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_C_8057F0C
Task_C_8057F0C: @ 0x08057F0C
	push {lr}
	ldr r0, _08057F38 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057F4C
	ldr r0, _08057F3C @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _08057F40
	cmp r1, #7
	beq _08057F40
	movs r0, #2
	b _08057F42
	.align 2, 0
_08057F38: .4byte gCurTask
_08057F3C: .4byte gStageData
_08057F40:
	movs r0, #3
_08057F42:
	strb r0, [r2, #4]
	ldr r0, _08057F50 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08057F4C:
	pop {r0}
	bx r0
	.align 2, 0
_08057F50: .4byte gCurTask

	thumb_func_start Task_StageIntroScreenFade
Task_StageIntroScreenFade: @ 0x08057F54
	push {r4, lr}
	ldr r4, _08057F78 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057F72
	ldr r0, [r4]
	bl TaskDestroy
_08057F72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F78: .4byte gCurTask

	thumb_func_start Task_70_8057F7C
Task_70_8057F7C: @ 0x08057F7C
	push {r4, r5, lr}
	ldr r5, _08057FB0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x48
	adds r0, r0, r1
	bl DisplaySprite
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08057FA8
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08057FB4 @ =Task_70_805722C
	str r0, [r1, #8]
_08057FA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057FB0: .4byte gCurTask
_08057FB4: .4byte Task_70_805722C

	thumb_func_start TaskDestructor_StageIntro
TaskDestructor_StageIntro: @ 0x08057FB8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	bl VramFree
	ldr r0, _08057FE4 @ =0x0300016C
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08057FD6
	bl EwramFree
_08057FD6:
	movs r0, #0
	movs r1, #0
	bl sub_80578EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057FE4: .4byte 0x0300016C

	thumb_func_start Task_170_8057FE8
Task_170_8057FE8: @ 0x08057FE8
	push {r4, lr}
	ldr r4, _08058030 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r2, [r3, #0xa]
	adds r2, #1
	strh r2, [r3, #0xa]
	ldrh r0, [r3, #0xa]
	lsls r1, r0, #3
	adds r1, r1, r0
	movs r0, #0x50
	subs r0, r0, r1
	strb r0, [r3, #6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #8
	bne _0805801E
	movs r0, #0xc
	strb r0, [r3, #6]
	movs r0, #0x10
	strh r0, [r3, #0xa]
	ldr r1, [r4]
	ldr r0, _08058034 @ =Task_170_8058038
	str r0, [r1, #8]
_0805801E:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058030: .4byte gCurTask
_08058034: .4byte Task_170_8058038

	thumb_func_start Task_170_8058038
Task_170_8058038: @ 0x08058038
	push {r4, r5, lr}
	ldr r0, _0805808C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805805A
	ldr r0, _08058090 @ =Task_170_8058094
	str r0, [r2, #8]
_0805805A:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	ldrh r0, [r4, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805808C: .4byte gCurTask
_08058090: .4byte Task_170_8058094

	thumb_func_start Task_170_8058094
Task_170_8058094: @ 0x08058094
	push {r4, r5, lr}
	ldr r0, _080580E4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bne _080580BC
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _080580E8 @ =Task_170_805732C
	str r0, [r2, #8]
_080580BC:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	movs r0, #0x78
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080580E4: .4byte gCurTask
_080580E8: .4byte Task_170_805732C

	thumb_func_start TaskDestructor_84_80580EC
TaskDestructor_84_80580EC: @ 0x080580EC
	bx lr
	.align 2, 0

	thumb_func_start Task_84_80580F0
Task_84_80580F0: @ 0x080580F0
	push {r4, r5, lr}
	ldr r5, _08058120 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08058124 @ =0x0300001C
	adds r0, r0, r1
	bl DisplaySprite
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0805811A
	ldr r1, [r5]
	ldr r0, _08058128 @ =Task_84_8057D64
	str r0, [r1, #8]
_0805811A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058120: .4byte gCurTask
_08058124: .4byte 0x0300001C
_08058128: .4byte Task_84_8057D64

	thumb_func_start Task_84_805812C
Task_84_805812C: @ 0x0805812C
	push {r4, r5, lr}
	ldr r5, _08058160 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x1c
	adds r0, r0, r1
	bl DisplaySprite
	ldr r0, [r4, #0xc]
	adds r3, r0, #0
	adds r3, #8
	str r3, [r4, #0xc]
	ldr r0, [r4, #0x10]
	adds r2, r0, #0
	subs r2, #8
	str r2, [r4, #0x10]
	cmp r3, #0x4f
	bgt _08058168
	ldr r1, _08058164 @ =gWinRegs
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1, #6]
	b _0805817A
	.align 2, 0
_08058160: .4byte gCurTask
_08058164: .4byte gWinRegs
_08058168:
	movs r0, #0x50
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, _08058180 @ =gWinRegs
	ldr r0, _08058184 @ =0x00005050
	strh r0, [r1, #6]
	ldr r1, [r5]
	ldr r0, _08058188 @ =Task_84_8057D64
	str r0, [r1, #8]
_0805817A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058180: .4byte gWinRegs
_08058184: .4byte 0x00005050
_08058188: .4byte Task_84_8057D64

	thumb_func_start Task_805818C
Task_805818C: @ 0x0805818C
	push {lr}
	ldr r0, _080581B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r0, r2]
	cmp r1, #7
	beq _080581B8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	b _080581BA
	.align 2, 0
_080581B4: .4byte gCurTask
_080581B8:
	movs r0, #0x47
_080581BA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	bl WarpToMap
	pop {r0}
	bx r0
