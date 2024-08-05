.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
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
	mov r8, r0          @ r8 = platform
	ldr r0, [r0]
	mov sb, r0          @ sb = me
	mov r3, r8
	ldr r1, [r3, #0x38]
	lsls r1, r1, #8
	ldr r0, [r3, #0x3c]
	lsls r0, r0, #8
	ldr r3, _0804DB5C @ =0x0300000C
	adds r6, r2, r3     @ r6 = s
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
.endif

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
