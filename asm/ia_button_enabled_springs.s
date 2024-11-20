.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8033778
sub_8033778: @ 0x08033778
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080337E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r0, [r7]
	mov sl, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r2, sl
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r3, _080337E4 @ =0x0300000C
	adds r6, r5, r3
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r1, r1, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08033830
	movs r1, #0
	ldr r2, _080337E8 @ =gPlayers
_080337CA:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _080337EC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080337F0
	.align 2, 0
_080337E0: .4byte gCurTask
_080337E4: .4byte 0x0300000C
_080337E8: .4byte gPlayers
_080337EC:
	ldr r0, _08033828 @ =gStageData
	ldrb r1, [r0, #6]
_080337F0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp]
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _080337CA
	ldrb r0, [r7, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldr r0, _0803382C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080338BE
	.align 2, 0
_08033828: .4byte gStageData
_0803382C: .4byte gCurTask
_08033830:
	ldr r3, _08033898 @ =0x03000034
	adds r0, r5, r3
	ldrb r0, [r0]
	movs r4, #0
	cmp r0, #1
	bls _08033844
	movs r4, #0xa
	cmp r0, #3
	bhi _08033844
	movs r4, #5
_08033844:
	ldr r2, _0803389C @ =gCamera
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080338B8
	ldrb r2, [r6, #0x1a]
	adds r1, r4, #0
	adds r0, r1, #1
	cmp r2, r0
	beq _08033890
	adds r0, r1, #3
	cmp r2, r0
	bne _080338B0
	ldr r0, _080338A0 @ =gStageData
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x35
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080338A4
_08033890:
	adds r0, r4, #2
	strb r0, [r6, #0x1a]
	b _080338B8
	.align 2, 0
_08033898: .4byte 0x03000034
_0803389C: .4byte gCamera
_080338A0: .4byte gStageData
_080338A4:
	strb r4, [r6, #0x1a]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	b _080338B8
_080338B0:
	adds r0, r1, #4
	cmp r2, r0
	bne _080338B8
	strb r4, [r6, #0x1a]
_080338B8:
	adds r0, r6, #0
	bl DisplaySprite
_080338BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable046
CreateEntity_Interactable046: @ 0x080338D0
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
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable047
CreateEntity_Interactable047: @ 0x080338FC
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
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable048
CreateEntity_Interactable048: @ 0x08033928
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
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable049
CreateEntity_Interactable049: @ 0x08033954
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
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable050
CreateEntity_Interactable050: @ 0x08033980
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
	movs r0, #6
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable051
CreateEntity_Interactable051: @ 0x080339AC
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
	movs r0, #7
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable052
CreateEntity_Interactable052: @ 0x080339D8
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
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable053
CreateEntity_Interactable053: @ 0x08033A04
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
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpringEnabledByButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8033A30
sub_8033A30: @ 0x08033A30
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
