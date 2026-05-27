.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_84_8057C84
Task_84_8057C84: @ 0x08057C84
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _08057D0C @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r5, _08057D10 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	ldr r4, _08057D14 @ =gBldRegs
	cmp r0, #0
	bne _08057CF4
	ldr r2, _08057D18 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08057D1C @ =gWinRegs
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
	ldr r0, _08057D20 @ =0x00003FBF
	strh r0, [r4]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #2]
	movs r2, #1
	strh r2, [r3, #4]
	ldr r1, _08057D24 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08057D28 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08057D2C @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08057D30 @ =gFlags
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
_08057CF4:
	ldrh r2, [r4, #4]
	cmp r2, #0
	beq _08057D38
	ldrh r0, [r3, #2]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldr r1, _08057D34 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r3, #2]
	adds r0, r0, r6
	strh r0, [r3, #2]
	b _08057D52
	.align 2, 0
_08057D0C: .4byte 0x0000FFFF
_08057D10: .4byte gCurTask
_08057D14: .4byte gBldRegs
_08057D18: .4byte gDispCnt
_08057D1C: .4byte gWinRegs
_08057D20: .4byte 0x00003FBF
_08057D24: .4byte 0x040000D4
_08057D28: .4byte gBgPalette
_08057D2C: .4byte 0x80000001
_08057D30: .4byte gFlags
_08057D34: .4byte 0xFFFFFF00
_08057D38:
	ldr r1, _08057D5C @ =gWinRegs
	movs r0, #0x1f
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	movs r0, #0xff
	strh r0, [r4]
	strh r2, [r4, #2]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08057D60 @ =Task_84_8057DEC
	str r0, [r1, #8]
_08057D52:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057D5C: .4byte gWinRegs
_08057D60: .4byte Task_84_8057DEC

	thumb_func_start sub_8057D64
sub_8057D64: @ 0x08057D64
	push {r4, r5, r6, lr}
	ldr r6, _08057DC8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #4]
	ldr r5, _08057DCC @ =gBldRegs
	cmp r0, #0
	beq _08057DAC
	ldr r2, _08057DD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08057DD4 @ =gWinRegs
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
	ldr r0, _08057DD8 @ =0x00003FBF
	strh r0, [r5]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
_08057DAC:
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _08057DDC
	ldrh r0, [r4, #2]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	b _08057DE2
	.align 2, 0
_08057DC8: .4byte gCurTask
_08057DCC: .4byte gBldRegs
_08057DD0: .4byte gDispCnt
_08057DD4: .4byte gWinRegs
_08057DD8: .4byte 0x00003FBF
_08057DDC:
	ldr r1, [r6]
	ldr r0, _08057DE8 @ =Task_805818C
	str r0, [r1, #8]
_08057DE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057DE8: .4byte Task_805818C

	thumb_func_start Task_84_8057DEC
Task_84_8057DEC: @ 0x08057DEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _08057E24 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08057E28 @ =gCurTask
	ldr r7, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	adds r3, r0, #0
	adds r3, #8
	str r3, [r1, #0xc]
	ldr r0, [r1, #0x10]
	adds r2, r0, #0
	subs r2, #8
	str r2, [r1, #0x10]
	cmp r3, #0x43
	bgt _08057E30
	ldr r1, _08057E2C @ =gWinRegs
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1, #4]
	b _08057E92
	.align 2, 0
_08057E24: .4byte 0x0000FFFF
_08057E28: .4byte gCurTask
_08057E2C: .4byte gWinRegs
_08057E30:
	movs r0, #0x44
	str r0, [r1, #0xc]
	movs r0, #0x5c
	str r0, [r1, #0x10]
	ldr r6, _08057EA0 @ =gWinRegs
	ldr r0, _08057EA4 @ =0x0000445C
	movs r1, #0
	mov r8, r1
	strh r0, [r6, #4]
	ldr r1, _08057EA8 @ =0x040000D4
	ldr r0, _08057EAC @ =Palette_unknown_354 + 0xE0
	str r0, [r1]
	ldr r2, _08057EB0 @ =gBgPalette + 0xE0
	str r2, [r1, #4]
	ldr r0, _08057EB4 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08057EB8 @ =gFlags
	ldr r3, [r4]
	movs r5, #1
	mov r0, sp
	str r0, [r1]
	subs r2, #0xe0
	str r2, [r1, #4]
	ldr r0, _08057EBC @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r3, r5
	str r3, [r4]
	ldr r2, _08057EC0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x1f
	strh r0, [r6, #8]
	movs r0, #0x3f
	strh r0, [r6, #0xa]
	ldr r1, _08057EC4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	mov r0, r8
	strh r0, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _08057EC8 @ =Task_84_80580F0
	str r0, [r7, #8]
_08057E92:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057EA0: .4byte gWinRegs
_08057EA4: .4byte 0x0000445C
_08057EA8: .4byte 0x040000D4
_08057EAC: .4byte Palette_unknown_354 + 0xE0
_08057EB0: .4byte gBgPalette + 0xE0
_08057EB4: .4byte 0x80000090
_08057EB8: .4byte gFlags
_08057EBC: .4byte 0x80000001
_08057EC0: .4byte gDispCnt
_08057EC4: .4byte gBldRegs
_08057EC8: .4byte Task_84_80580F0

	thumb_func_start sub_8057ECC
sub_8057ECC: @ 0x08057ECC
	push {r4, lr}
	sub sp, #4
	ldr r0, _08057F08 @ =Task_C_8057F0C
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	adds r1, #0xfe
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F08: .4byte Task_C_8057F0C

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
	ldr r0, _08058128 @ =sub_8057D64
	str r0, [r1, #8]
_0805811A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058120: .4byte gCurTask
_08058124: .4byte 0x0300001C
_08058128: .4byte sub_8057D64

	thumb_func_start sub_805812C
sub_805812C: @ 0x0805812C
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
	ldr r0, _08058188 @ =sub_8057D64
	str r0, [r1, #8]
_0805817A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058180: .4byte gWinRegs
_08058184: .4byte 0x00005050
_08058188: .4byte sub_8057D64

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
