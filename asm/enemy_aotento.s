.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_805878C
Task_805878C: @ 0x0805878C
	push {r4, r5, lr}
	ldr r5, _080587B4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8058C1C
	adds r0, r4, #0
	bl sub_8058BE0
	cmp r0, #1
	bne _080587B8
	ldr r0, [r5]
	bl TaskDestroy
	b _08058846
	.align 2, 0
_080587B4: .4byte gCurTask
_080587B8:
	ldr r2, _0805881C @ =gStageData
	ldrb r1, [r2, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058846
	cmp r1, #4
	beq _08058846
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08058820 @ =gPlayers
	adds r0, r0, r1
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x10
	ldr r2, [r4, #0x1c]
	adds r2, r2, r1
	ldr r3, [r0, #0x10]
	cmp r3, r2
	ble _080587F4
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08058804
_080587F4:
	cmp r3, r2
	bge _08058830
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08058830
_08058804:
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _08058824 @ =gUnknown_080D1E30
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	ldr r0, _08058828 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805882C @ =Task_805892C
	b _08058844
	.align 2, 0
_0805881C: .4byte gStageData
_08058820: .4byte gPlayers
_08058824: .4byte gUnknown_080D1E30
_08058828: .4byte gCurTask
_0805882C: .4byte Task_805892C
_08058830:
	adds r0, r4, #0
	bl sub_8058AE0
	cmp r0, #1
	bne _08058846
	movs r0, #3
	strb r0, [r4, #6]
	ldr r0, _0805884C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08058850 @ =sub_8058854
_08058844:
	str r0, [r1, #8]
_08058846:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805884C: .4byte gCurTask
_08058850: .4byte sub_8058854
.endif

	thumb_func_start sub_8058854
sub_8058854: @ 0x08058854
	push {r4, r5, lr}
	ldr r5, _0805887C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8058C1C
	adds r0, r4, #0
	bl sub_8058BE0
	cmp r0, #1
	bne _08058880
	ldr r0, [r5]
	bl TaskDestroy
	b _08058918
	.align 2, 0
_0805887C: .4byte gCurTask
_08058880:
	ldr r2, _080588E4 @ =gStageData
	ldrb r1, [r2, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058918
	cmp r1, #4
	beq _08058918
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080588E8 @ =gPlayers
	adds r0, r0, r1
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x10
	ldr r2, [r4, #0x1c]
	adds r2, r2, r1
	ldr r3, [r0, #0x10]
	cmp r3, r2
	ble _080588BC
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080588CC
_080588BC:
	cmp r3, r2
	bge _080588F8
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080588F8
_080588CC:
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _080588EC @ =gUnknown_080D1E30
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	ldr r0, _080588F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080588F4 @ =Task_805892C
	b _08058916
	.align 2, 0
_080588E4: .4byte gStageData
_080588E8: .4byte gPlayers
_080588EC: .4byte gUnknown_080D1E30
_080588F0: .4byte gCurTask
_080588F4: .4byte Task_805892C
_080588F8:
	adds r0, r4, #0
	bl sub_8058B94
	cmp r0, #1
	bne _08058918
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _08058920 @ =gUnknown_080D1E30
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _08058924 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08058928 @ =Task_Aotento
_08058916:
	str r0, [r1, #8]
_08058918:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058920: .4byte gUnknown_080D1E30
_08058924: .4byte gCurTask
_08058928: .4byte Task_Aotento

	thumb_func_start Task_805892C
Task_805892C: @ 0x0805892C
	push {r4, r5, r6, lr}
	ldr r5, _0805894C @ =gCurTask
	ldr r0, [r5]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8058BE0
	cmp r0, #1
	bne _08058950
	ldr r0, [r5]
	bl TaskDestroy
	b _080589F0
	.align 2, 0
_0805894C: .4byte gCurTask
_08058950:
	adds r0, r4, #0
	bl sub_8058C1C
	adds r2, r0, #0
	ldr r0, _08058988 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080589F0
	cmp r1, #4
	beq _080589F0
	cmp r2, #0
	bne _080589F0
	ldr r0, _0805898C @ =0x0300002C
	adds r3, r6, r0
	ldr r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08058994
	ldr r0, _08058990 @ =0xFFFFFBFF
	ands r1, r0
	b _08058996
	.align 2, 0
_08058988: .4byte gStageData
_0805898C: .4byte 0x0300002C
_08058990: .4byte 0xFFFFFBFF
_08058994:
	orrs r1, r2
_08058996:
	str r1, [r3, #8]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bne _080589C4
	ldr r1, _080589B8 @ =gUnknown_080D1E30
	ldrh r0, [r1]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	strb r2, [r4, #6]
	ldr r0, _080589BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080589C0 @ =Task_Aotento
	b _080589EE
	.align 2, 0
_080589B8: .4byte gUnknown_080D1E30
_080589BC: .4byte gCurTask
_080589C0: .4byte Task_Aotento
_080589C4:
	ldr r1, _080589DC @ =gUnknown_080D1E30
	ldrh r0, [r1, #0x10]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r3, #0x1a]
	ldrb r0, [r4, #6]
	cmp r0, #3
	bne _080589E8
	ldr r0, _080589E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080589E4 @ =sub_8058854
	b _080589EE
	.align 2, 0
_080589DC: .4byte gUnknown_080D1E30
_080589E0: .4byte gCurTask
_080589E4: .4byte sub_8058854
_080589E8:
	ldr r0, _080589F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080589FC @ =Task_805878C
_080589EE:
	str r0, [r1, #8]
_080589F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080589F8: .4byte gCurTask
_080589FC: .4byte Task_805878C

	thumb_func_start sub_8058A00
sub_8058A00: @ 0x08058A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r1, #0x2c
	adds r1, r1, r0
	mov sb, r1
	ldr r1, [r0, #0x1c]
	asrs r6, r1, #8
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	mov r8, r1
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r6, r6, r1
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	add r8, r0
	movs r5, #0
	lsls r7, r6, #8
	movs r0, #0xff
	lsls r0, r0, #1
	mov sl, r0
	b _08058ABE
_08058A32:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08058AA8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _08058A66
	ldr r1, _08058AAC @ =0xFFFFFCFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _08058A7E
_08058A66:
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08058A7E
	ldr r0, [r4, #0x10]
	subs r0, r0, r7
	ldr r1, _08058AB0 @ =0x000063FF
	cmp r0, r1
	ble _08058AA2
_08058A7E:
	ldr r1, _08058AB4 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bhi _08058AB8
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08058AB8
	ldr r0, [r4, #0x10]
	subs r0, r7, r0
	ldr r1, _08058AB0 @ =0x000063FF
	cmp r0, r1
	bgt _08058AB8
_08058AA2:
	movs r0, #1
	b _08058AD0
	.align 2, 0
_08058AA8: .4byte 0xFFFF0000
_08058AAC: .4byte 0xFFFFFCFF
_08058AB0: .4byte 0x000063FF
_08058AB4: .4byte 0xFFFFFEFF
_08058AB8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08058ABE:
	cmp r5, #1
	bhi _08058ACE
	adds r0, r5, #0
	bl sub_805CD20
	adds r4, r0, #0
	cmp r4, #0
	bne _08058A32
_08058ACE:
	movs r0, #0
_08058AD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8058AE0
sub_8058AE0: @ 0x08058AE0
	push {lr}
	adds r2, r0, #0
	ldr r1, _08058B1C @ =gUnknown_080D1E50
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	ldr r3, _08058B20 @ =0xFFFFC000
	adds r0, r0, r3
	cmp r1, r0
	bge _08058B00
	str r0, [r2, #0x20]
_08058B00:
	ldr r0, [r2, #0x18]
	ldr r1, _08058B20 @ =0xFFFFC000
	adds r0, r0, r1
	ldr r1, [r2, #0x20]
	cmp r1, r0
	bne _08058B28
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	bne _08058B24
	movs r0, #0x5a
	strh r0, [r2, #0xe]
	movs r0, #1
	b _08058B4A
	.align 2, 0
_08058B1C: .4byte gUnknown_080D1E50
_08058B20: .4byte 0xFFFFC000
_08058B24:
	subs r0, #1
	strh r0, [r2, #0xe]
_08058B28:
	ldrh r0, [r2, #0x10]
	cmp r0, #5
	bhi _08058B32
	adds r0, #1
	b _08058B46
_08058B32:
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08058B44
	movs r0, #2
	strb r0, [r2, #6]
_08058B44:
	movs r0, #0
_08058B46:
	strh r0, [r2, #0x10]
	movs r0, #0
_08058B4A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8058B50
sub_8058B50: @ 0x08058B50
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08058B76
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x28]
	cmp r0, r1
	bgt _08058B8A
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	ble _08058B8A
	b _08058B88
_08058B76:
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	blt _08058B8A
	ldr r3, _08058B90 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	bge _08058B8A
_08058B88:
	str r1, [r2, #0x1c]
_08058B8A:
	pop {r0}
	bx r0
	.align 2, 0
_08058B90: .4byte 0xFFFFFF00

	thumb_func_start sub_8058B94
sub_8058B94: @ 0x08058B94
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x20]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	blt _08058BAE
	str r2, [r1, #0x20]
	movs r0, #1
	b _08058BB0
_08058BAE:
	movs r0, #0
_08058BB0:
	pop {r1}
	bx r1

	thumb_func_start sub_8058BB4
sub_8058BB4: @ 0x08058BB4
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x2c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8058BE0
sub_8058BE0: @ 0x08058BE0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8058BB4
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8058C1C
sub_8058C1C: @ 0x08058C1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08058C5C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08058C5C: .4byte gCamera

	thumb_func_start TaskDestructor_Aotento
TaskDestructor_Aotento: @ 0x08058C60
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0
