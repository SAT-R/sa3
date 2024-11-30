.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

	thumb_func_start sub_804783C
sub_804783C: @ 0x0804783C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	adds r4, r6, #0
	adds r4, #0xc
	adds r5, r6, #0
	adds r5, #0x6f
	ldrb r1, [r5]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080478A2
	ldr r0, _08047870 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08047878
	movs r0, #3
	bl VramMalloc
	str r0, [r6, #0xc]
	ldr r0, _08047874 @ =0x000003C9
	b _08047884
	.align 2, 0
_08047870: .4byte gStageData
_08047874: .4byte 0x000003C9
_08047878:
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #2
_08047884:
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	adds r2, r6, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080478D0
	movs r1, #0x80
	lsls r1, r1, #3
	mov r8, r1
	b _080478D0
_080478A2:
	ldr r0, _080478B8 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _080478C0
	movs r0, #3
	bl VramMalloc
	str r0, [r6, #0xc]
	ldr r0, _080478BC @ =0x000003C9
	b _080478CC
	.align 2, 0
_080478B8: .4byte gStageData
_080478BC: .4byte 0x000003C9
_080478C0:
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #2
_080478CC:
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
_080478D0:
	movs r7, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r4, r6, #0
	adds r4, #0x34
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047940
	ldr r1, _08047924 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #6
	bne _0804792C
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _0804792C
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0x34]
	ldr r0, _08047928 @ =0x000003C9
	b _08047938
	.align 2, 0
_08047924: .4byte gStageData
_08047928: .4byte 0x000003C9
_0804792C:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xe7
	lsls r0, r0, #2
_08047938:
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	b _0804797A
_08047940:
	ldr r1, _08047960 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #6
	bne _08047968
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _08047968
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0x34]
	ldr r0, _08047964 @ =0x000003C9
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
	b _0804797A
	.align 2, 0
_08047960: .4byte gStageData
_08047964: .4byte 0x000003C9
_08047968:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xe7
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
_0804797A:
	movs r2, #0
	movs r1, #0
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
	mov r1, r8
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80479B0
sub_80479B0: @ 0x080479B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08047A38 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _08047A3C @ =0x03000034
	adds r6, r4, r1
	ldr r2, _08047A40 @ =0x03000068
	adds r0, r4, r2
	ldr r7, _08047A44 @ =gCamera
	ldr r1, [r7]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r3, _08047A48 @ =0x0300006A
	adds r0, r4, r3
	ldr r1, [r7, #4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	ldr r0, _08047A4C @ =0x0300005C
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, #0xa
	adds r2, r2, r4
	mov sb, r2
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	str r2, [sp, #4]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #4]
	mov r3, ip
	bl sub_802C140
	cmp r0, #0
	bne _08047A98
	ldr r0, _08047A50 @ =0x0000025D
	bl sub_8003E28
	movs r1, #0
	ldr r7, _08047A54 @ =gPlayers
_08047A22:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08047A58
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08047A5C
	.align 2, 0
_08047A38: .4byte gCurTask
_08047A3C: .4byte 0x03000034
_08047A40: .4byte 0x03000068
_08047A44: .4byte gCamera
_08047A48: .4byte 0x0300006A
_08047A4C: .4byte 0x0300005C
_08047A50: .4byte 0x0000025D
_08047A54: .4byte gPlayers
_08047A58:
	ldr r0, _08047A90 @ =gStageData
	ldrb r1, [r0, #6]
_08047A5C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	adds r0, r6, #0
	adds r1, r5, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08047A22
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, _08047A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08047AC8
	.align 2, 0
_08047A90: .4byte gStageData
_08047A94: .4byte gCurTask
_08047A98:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08047AD8 @ =0x0300000C
	adds r4, r4, r0
	ldr r1, [r7]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r7, #4]
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08047AC8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047AD8: .4byte 0x0300000C

	thumb_func_start TaskDestructor_WindupBlock
TaskDestructor_WindupBlock: @ 0x08047ADC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
