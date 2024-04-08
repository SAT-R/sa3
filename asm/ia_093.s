.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_803FFB8
sub_803FFB8: @ 0x0803FFB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08040010 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _08040014 @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [sp, #0xc]
	ldr r2, [r1]
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r1, #0
_08040000:
	lsls r0, r1, #0x10
	mov sl, r0
	cmp r0, #0
	bne _0804001C
	ldr r0, _08040018 @ =gStageData
	ldrb r1, [r0, #6]
	b _08040026
	.align 2, 0
_08040010: .4byte gCurTask
_08040014: .4byte 0x0300000C
_08040018: .4byte gStageData
_0804001C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08040026:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804008C @ =gPlayers
	adds r6, r0, r1
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08040044
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	beq _08040114
_08040044:
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08040114
	ldr r3, [sp, #0x10]
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	mov r8, r1
	ldr r2, [sp, #0x14]
	lsls r4, r2, #0x10
	str r6, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, sb
	asrs r2, r4, #0x10
	movs r3, #0
	bl sub_8020874
	adds r7, r0, #0
	cmp r7, #0
	beq _08040114
	adds r0, r6, #0
	bl sub_8016F28
	ldr r0, [sp, #0xc]
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040090
	movs r1, #1
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	b _080400BE
	.align 2, 0
_0804008C: .4byte gPlayers
_08040090:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r7
	cmp r0, #0
	beq _080400A6
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r7
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	b _080400BE
_080400A6:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r0, r8
	beq _080400B8
	movs r1, #0
	cmp r0, r8
	bge _080400BE
	movs r1, #1
	b _080400D8
_080400B8:
	ldr r1, [r6, #4]
	movs r0, #1
	ands r1, r0
_080400BE:
	cmp r1, #0
	bne _080400D8
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r6, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080400EA
_080400D8:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, _08040138 @ =0xFFFFFBFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	orrs r0, r1
_080400EA:
	str r0, [r6, #4]
	ldr r0, [r6, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #4]
	mov r3, sb
	str r3, [r6, #0x6c]
	asrs r0, r5, #8
	str r0, [r6, #0x10]
	asrs r0, r4, #8
	str r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x94
	lsls r0, r0, #2
	bl sub_8003DF0
	adds r0, r6, #0
	ldr r1, _0804013C @ =sub_800A4C8
	bl sub_800D87C
_08040114:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08040124
	b _08040000
_08040124:
	bl sub_804018C
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040138: .4byte 0xFFFFFBFF
_0804013C: .4byte sub_800A4C8

	thumb_func_start sub_8040140
sub_8040140: @ 0x08040140
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08040188 @ =0x0000037E
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040188: .4byte 0x0000037E

	thumb_func_start sub_804018C
sub_804018C: @ 0x0804018C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080401DC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r6, r1, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080401E0
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08040208
	.align 2, 0
_080401DC: .4byte gCurTask
_080401E0:
	ldr r1, _08040214 @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r6, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08040202
	ldrb r0, [r5, #0x1a]
	cmp r0, #1
	bne _08040202
	movs r0, #0
	strb r0, [r5, #0x1a]
_08040202:
	adds r0, r5, #0
	bl DisplaySprite
_08040208:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040214: .4byte gCamera

	thumb_func_start CreateEntity_Interactable093
CreateEntity_Interactable093: @ 0x08040218
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08040288 @ =sub_803FFB8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804028C @ =sub_8040298
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08040290 @ =0x0300000C
	adds r0, r3, r2
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r4, r8
	str r4, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #0xa]
	strb r6, [r1, #0xb]
	ldrb r2, [r4, #7]
	movs r1, #3
	ands r1, r2
	ldr r2, _08040294 @ =0x03000034
	adds r3, r3, r2
	strb r1, [r3]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	mov r2, r8
	strb r1, [r2]
	bl sub_8040140
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040288: .4byte sub_803FFB8
_0804028C: .4byte sub_8040298
_08040290: .4byte 0x0300000C
_08040294: .4byte 0x03000034

	thumb_func_start sub_8040298
sub_8040298: @ 0x08040298
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
