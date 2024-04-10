.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable116
CreateEntity_Interactable116: @ 0x0804903C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080490D8 @ =sub_80490E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080490DC @ =sub_804936C
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #0xa]
	mov r1, r8
	strb r1, [r3, #0xb]
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r3, #0xc]
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	strh r2, [r3, #0xe]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x10]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x14]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x12]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x16]
	ldrb r1, [r6, #7]
	movs r0, #1
	ands r0, r1
	strb r0, [r3, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080490D8: .4byte sub_80490E0
_080490DC: .4byte sub_804936C

	thumb_func_start sub_80490E0
sub_80490E0: @ 0x080490E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08049110 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	mov sl, r0
	movs r1, #0
_08049100:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _08049118
	ldr r0, _08049114 @ =gStageData
	ldrb r1, [r0, #6]
	b _08049122
	.align 2, 0
_08049110: .4byte gCurTask
_08049114: .4byte gStageData
_08049118:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08049122:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08049304 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08049148
	cmp r1, #8
	beq _08049148
	cmp r1, #0x10
	beq _08049148
	b _08049324
_08049148:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08049154
	b _08049324
_08049154:
	ldr r6, [r4]
	ldr r0, _08049308 @ =PlayerCB_8008A8C
	cmp r6, r0
	bne _0804915E
	b _08049324
_0804915E:
	ldr r0, _0804930C @ =PlayerCB_800ED80
	cmp r6, r0
	bne _08049166
	b _08049324
_08049166:
	ldr r1, [r4, #0x10]
	lsls r1, r1, #8
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0x24
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r5, r8
	movs r0, #0x10
	ldrsh r2, [r5, r0]
	asrs r5, r1, #0x10
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, r3
	cmp r2, r0
	ble _0804919A
	b _08049324
_0804919A:
	mov r2, r8
	movs r0, #0x14
	ldrsh r1, [r2, r0]
	subs r0, r5, r3
	cmp r1, r0
	bge _080491A8
	b _08049324
_080491A8:
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, r2
	cmp r1, r0
	ble _080491BE
	b _08049324
_080491BE:
	mov r0, r8
	movs r5, #0x16
	ldrsh r1, [r0, r5]
	subs r0, r3, r2
	cmp r1, r0
	bge _080491CC
	b _08049324
_080491CC:
	movs r7, #0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080491E8
	ldr r0, _08049310 @ =sub_800B240
	cmp r6, r0
	bne _080491E0
	b _08049324
_080491E0:
	ldr r0, _08049314 @ =sub_800B3FC
	cmp r6, r0
	bne _080491E8
	b _08049324
_080491E8:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08049214
	movs r0, #0
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _08049214
	movs r7, #1
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_08049214:
	cmp r7, #0
	bne _08049244
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08049244
	movs r0, #1
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _08049244
	movs r7, #1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_08049244:
	movs r3, #0x1a
	ldrsh r5, [r4, r3]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08049256
	rsbs r5, r5, #0
_08049256:
	cmp r7, #0
	bne _080492AE
	cmp r5, #0
	bgt _08049282
	movs r0, #2
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _08049282
	movs r7, #1
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_08049282:
	cmp r7, #0
	bne _080492AE
	cmp r5, #0
	blt _080492AE
	movs r0, #3
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _080492AE
	movs r7, #1
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_080492AE:
	cmp r7, #0
	beq _08049324
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080492DA
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	adds r0, #0x80
	rsbs r0, r0, #0
	movs r5, #2
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	strb r0, [r2]
_080492DA:
	adds r0, r4, #0
	bl sub_8016F28
	mov r1, r8
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r4, #0x70]
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0804931C
	adds r0, r4, #0
	ldr r1, _08049318 @ =sub_800B374
	bl sub_800D87C
	b _08049324
	.align 2, 0
_08049304: .4byte gPlayers
_08049308: .4byte PlayerCB_8008A8C
_0804930C: .4byte PlayerCB_800ED80
_08049310: .4byte sub_800B240
_08049314: .4byte sub_800B3FC
_08049318: .4byte sub_800B374
_0804931C:
	adds r0, r4, #0
	ldr r1, _08049364 @ =sub_800B1B8
	bl sub_800D87C
_08049324:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08049334
	b _08049100
_08049334:
	mov r5, r8
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08049354
	ldrb r0, [r5, #0xa]
	mov r3, sl
	strb r0, [r3]
	ldr r0, _08049368 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08049354:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049364: .4byte sub_800B1B8
_08049368: .4byte gCurTask

	thumb_func_start sub_804936C
sub_804936C: @ 0x0804936C
	bx lr
	.align 2, 0
