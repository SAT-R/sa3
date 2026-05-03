.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
.align 2 , 0

.text
.syntax unified
.arm

	thumb_func_start Task_8052474
Task_8052474: @ 0x08052474
	push {r4, r5, lr}
	ldr r0, _08052498 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _0805248E
	ldr r0, [r3]
	cmp r0, #0
	bgt _0805249C
_0805248E:
	adds r0, r2, #0
	bl TaskDestroy
	b _0805255C
	.align 2, 0
_08052498: .4byte gCurTask
_0805249C:
	ldr r5, _080524C0 @ =gCamera
	ldr r0, [r3, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080524D0
	ldr r2, _080524C4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080524C8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080524CC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x17
	adds r1, r0, #0
	subs r1, #0xff
	b _080524DE
	.align 2, 0
_080524C0: .4byte gCamera
_080524C4: .4byte gPseudoRandom
_080524C8: .4byte 0x00196225
_080524CC: .4byte 0x3C6EF35F
_080524D0:
	ldr r0, _080524F8 @ =gSineTable
	ldr r1, [r3, #0x14]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x16
_080524DE:
	ldr r0, [r3]
	muls r0, r1, r0
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x10]
	movs r1, #3
	ands r1, r0
	adds r4, r0, #0
	cmp r1, #1
	beq _080524FC
	cmp r1, #2
	beq _08052504
	b _0805250E
	.align 2, 0
_080524F8: .4byte gSineTable
_080524FC:
	cmp r2, #0
	bge _0805250E
	rsbs r2, r2, #0
	b _0805250E
_08052504:
	adds r0, r2, #0
	cmp r2, #0
	bge _0805250C
	rsbs r0, r2, #0
_0805250C:
	rsbs r2, r0, #0
_0805250E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08052524
	ldr r0, _08052564 @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805253A
_08052524:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0805252E
	strh r2, [r5, #0xc]
_0805252E:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805253A
	strh r2, [r5, #0xe]
_0805253A:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	ble _08052544
	subs r0, #1
	str r0, [r3, #0xc]
_08052544:
	ldr r1, [r3]
	cmp r1, #0
	ble _08052550
	ldr r0, [r3, #4]
	subs r0, r1, r0
	str r0, [r3]
_08052550:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _08052568 @ =0x000003FF
	ands r0, r1
	str r0, [r3, #0x14]
_0805255C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052564: .4byte gStageData
_08052568: .4byte 0x000003FF

	thumb_func_start sub_805256C
sub_805256C: @ 0x0805256C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x1c]
	ldr r0, _080525B4 @ =Task_8052474
	ldr r2, _080525B8 @ =0x00000EFF
	ldr r1, _080525BC @ =TaskDestructor_80525C0
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	movs r2, #0
	str r2, [r1, #0x14]
	mov r2, r8
	str r2, [r1, #0xc]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080525B4: .4byte Task_8052474
_080525B8: .4byte 0x00000EFF
_080525BC: .4byte TaskDestructor_80525C0

	thumb_func_start TaskDestructor_80525C0
TaskDestructor_80525C0: @ 0x080525C0
	push {lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r3, _080525EC @ =gCamera
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080525DA
	movs r0, #0
	strh r0, [r3, #0xc]
_080525DA:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080525E8
	movs r0, #0
	strh r0, [r3, #0xe]
_080525E8:
	pop {r0}
	bx r0
	.align 2, 0
_080525EC: .4byte gCamera
