.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8034F88
sub_8034F88: @ 0x08034F88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0          @ sb = worldX
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1          @ sl = worldY
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10  @ r4 = param2
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10  @ r6 = rand
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18  @ r5 = param4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2          @ r8 = param5 (i)
	ldr r1, _08035028 @ =gUnknown_080CF638
	add r0, sp, #4
	movs r2, #0x48
	bl memcpy
	ldr r0, _0803502C @ =sub_80350EC
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08035030 @ =0x03000010
	adds r7, r1, r0
	mov r1, ip
	strb r5, [r1, #0xe]
	movs r0, #0x20
	strh r0, [r1, #0xc]
	ldr r2, _08035034 @ =gSineTable
	ldr r1, _08035038 @ =0x000003FF
	ands r1, r6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, ip
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	ldr r1, _0803503C @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _08035040
	movs r2, #0
	b _0803504A
	.align 2, 0
_08035028: .4byte gUnknown_080CF638
_0803502C: .4byte sub_80350EC
_08035030: .4byte 0x03000010
_08035034: .4byte gSineTable
_08035038: .4byte 0x000003FF
_0803503C: .4byte gStageData
_08035040:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _0803504A
	adds r2, r0, #0
_0803504A:
	movs r3, #1
	mov r0, r8
	ands r3, r0
	cmp r3, #0
	bne _0803505C
	ldr r1, [sp, #0x74]
	str r1, [r7]
	lsls r2, r2, #0x10
	b _08035074
_0803505C:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x74]
	adds r0, r1, r0
	str r0, [r7]
_08035074:
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrh r0, [r0]
	movs r3, #0
	movs r2, #0
	strh r0, [r7, #0xc]
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	str r2, [r7, #8]
	mov r2, r8
	cmp r2, #1
	bls _080350C2
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r7, #8]
_080350C2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	mov r1, ip
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r1, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80350EC
sub_80350EC: @ 0x080350EC
	push {r4, lr}
	ldr r2, _08035114 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08035118
	ldr r0, [r2]
	bl TaskDestroy
	b _0803514E
	.align 2, 0
_08035114: .4byte gCurTask
_08035118:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _08035154 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0803514E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035154: .4byte gCamera

	thumb_func_start TaskDestructor_BreakableWall
TaskDestructor_BreakableWall: @ 0x08035158
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803516C
sub_803516C: @ 0x0803516C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8034D0C
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
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80351A8
sub_80351A8: @ 0x080351A8
	push {r4, r5, r6, lr}
	sub sp, #0x60
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r1, _080351CC @ =gUnknown_080CF5D8
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	ldr r1, _080351D0 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _080351D4
	movs r2, #0
	b _080351DE
	.align 2, 0
_080351CC: .4byte gUnknown_080CF5D8
_080351D0: .4byte gStageData
_080351D4:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _080351DE
	adds r2, r0, #0
_080351DE:
	lsls r1, r5, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	lsls r0, r2, #4
	adds r1, r1, r0
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	add sp, #0x60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
