.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8042F10
sub_8042F10: @ 0x08042F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #1
	mov sb, r0
	ldr r0, _08042FD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	str r1, [sp]
	ldrb r5, [r6, #0xa]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl IsPointInScreenRect
	mov r2, sb
	eors r0, r2
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	mov sb, r1
	ldr r1, _08042FDC @ =gCamera
	ldr r0, [r1]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	ldr r0, [r1, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
	movs r4, #0
_08042F78:
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	adds r5, r6, r0
	lsls r2, r2, #1
	adds r1, r6, #0
	adds r1, #0xb4
	adds r1, r1, r2
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0xbc
	adds r1, r1, r2
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	bl sub_802C1D0
	adds r7, r4, #0
	cmp r0, #1
	bne _08043000
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
_08042FC6:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08042FE0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08042FE6
	.align 2, 0
_08042FD8: .4byte gCurTask
_08042FDC: .4byte gCamera
_08042FE0:
	ldr r0, [r5, #8]
	ldr r1, _0804302C @ =0xFFFFFBFF
	ands r0, r1
_08042FE6:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08042FC6
	movs r0, #0
	mov sb, r0
_08043000:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08042F78
	mov r2, sb
	cmp r2, #0
	beq _08043082
	movs r1, #0
_08043016:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08043030
	mov r0, r8
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08043034
	.align 2, 0
_0804302C: .4byte 0xFFFFFBFF
_08043030:
	ldr r0, _08043094 @ =gStageData
	ldrb r1, [r0, #6]
_08043034:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08043098 @ =gPlayers
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
_08043046:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	mov r1, r8
	bl ResolvePlayerSpriteCollision
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08043046
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08043016
	ldrb r0, [r6, #0xa]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _0804309C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08043082:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043094: .4byte gStageData
_08043098: .4byte gPlayers
_0804309C: .4byte gCurTask

	thumb_func_start TaskDestructor_PlatformMaybeFalling
TaskDestructor_PlatformMaybeFalling: @ 0x080430A0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080430B4 @ =0x030000AC
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080430B4: .4byte 0x030000AC
