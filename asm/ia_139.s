.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_PlatformChaosAngel
Task_PlatformChaosAngel: @ 0x0804D970
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0804DA34 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _0804DA38 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #4
	beq _0804DA22
	ldr r0, _0804DA3C @ =0x03000042
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804DA22
	movs r3, #7
	ands r3, r1
	adds r0, r1, #1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0xf
	ands r0, r1
	ldr r2, _0804DA40 @ =0x03000043
	adds r1, r4, r2
	cmp r0, #0
	bne _0804D9C8
	ldrb r0, [r1]
	adds r0, #6
	strb r0, [r1]
_0804D9C8:
	adds r2, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x20
	bls _0804D9D4
	movs r0, #0x20
	strb r0, [r2]
_0804D9D4:
	ldr r2, _0804DA44 @ =0x03000040
	adds r0, r4, r2
	ldrb r5, [r1]
	lsrs r5, r5, #2
	ldrh r2, [r0]
	adds r5, r5, r2
	strh r5, [r0]
	ldr r2, _0804DA48 @ =gUnknown_080D03E8
	lsls r3, r3, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #4
	adds r4, r0, #0
	muls r4, r1, r4
	adds r2, #1
	adds r3, r3, r2
	movs r0, #0
	ldrsb r0, [r3, r0]
	muls r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r5
	lsls r1, r1, #0x10
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	str r0, [r7, #0x38]
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
_0804DA22:
	movs r1, #0
_0804DA24:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804DA4C
	ldr r0, _0804DA38 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804DA56
	.align 2, 0
_0804DA34: .4byte gCurTask
_0804DA38: .4byte gStageData
_0804DA3C: .4byte 0x03000042
_0804DA40: .4byte 0x03000043
_0804DA44: .4byte 0x03000040
_0804DA48: .4byte gUnknown_080D03E8
_0804DA4C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804DA56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804DAA4 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804DAE8
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804DAB0
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _0804DAB0
	movs r0, #3
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	cmp r0, #0
	ble _0804DAA8
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	b _0804DAB0
	.align 2, 0
_0804DAA4: .4byte gPlayers
_0804DAA8:
	lsls r1, r0, #8
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_0804DAB0:
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	movs r4, #0
	str r4, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0804DAE8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r4, [r6, #0x1a]
	adds r2, r7, #0
	adds r2, #0x42
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_0804DAE8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DA24
	bl sub_804DB08
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804DB08
sub_804DB08: @ 0x0804DB08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804DB58 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r0, [r0]
	mov sb, r0
	mov r3, r8
	ldr r1, [r3, #0x38]
	lsls r1, r1, #8
	ldr r0, [r3, #0x3c]
	lsls r0, r0, #8
	ldr r3, _0804DB5C @ =0x0300000C
	adds r6, r2, r3
	asrs r5, r1, #0x10
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804DBA4
	movs r1, #0
	ldr r7, _0804DB60 @ =gPlayers
_0804DB44:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804DB64
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804DB68
	.align 2, 0
_0804DB58: .4byte gCurTask
_0804DB5C: .4byte 0x0300000C
_0804DB60: .4byte gPlayers
_0804DB64:
	ldr r0, _0804DB9C @ =gStageData
	ldrb r1, [r0, #6]
_0804DB68:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DB44
	mov r2, r8
	ldrb r0, [r2, #0xa]
	mov r3, sb
	strb r0, [r3]
	ldr r0, _0804DBA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804DBCE
	.align 2, 0
_0804DB9C: .4byte gStageData
_0804DBA0: .4byte gCurTask
_0804DBA4:
	ldr r1, _0804DBDC @ =gCamera
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r6, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	bl sub_802C1F8
	cmp r0, #1
	bne _0804DBCE
	adds r0, r6, #0
	bl DisplaySprite
_0804DBCE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DBDC: .4byte gCamera

	thumb_func_start TaskDestructor_PlatformChaosAngel
TaskDestructor_PlatformChaosAngel: @ 0x0804DBE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804DBF4
sub_804DBF4: @ 0x0804DBF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804DC34 @ =0x000003A5
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DC34: .4byte 0x000003A5
