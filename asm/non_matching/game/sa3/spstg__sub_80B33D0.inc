
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r5, r0, #0
	add r1, sp, #0x18
	ldr r0, _080B353C @ =gUnknown_080DC36C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r0, _080B3540 @ =gUnknown_080DC380
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r3, _080B3544 @ =0x000008C7
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r0, _080B3548 @ =Task_80B3648
	movs r1, #0x88
	lsls r1, r1, #1     @ 0x110
	movs r2, #0x90
	lsls r2, r2, #8
	movs r4, #0
	mov r8, r4
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x34]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7]
	mov r0, r8
	str r0, [r7, #4]
	ldr r1, _080B354C @ =0x03000088
	adds r3, r4, r1
	ldr r2, _080B3550 @ =gUnknown_080DBE58
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r0, r1, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r0, _080B3554 @ =0x0300008C
	adds r3, r4, r0
	adds r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r3, _080B3558 @ =0x03000090
	adds r0, r4, r3
	mov r6, r8
	str r6, [r0]
	ldr r1, _080B355C @ =0x030000AC
	adds r0, r4, r1
	movs r2, #0
	mov sb, r2
	strh r6, [r0]
	adds r3, #0x1e
	adds r0, r4, r3
	mov r6, r8
	strh r6, [r0]
	adds r1, #7
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	adds r3, #0xe
	adds r3, r3, r4
	mov sl, r3
	ldr r6, _080B3560 @ =0x000008C6
	adds r6, r5, r6
	str r6, [sp, #0x38]
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x18
	ldr r0, [r0]
	str r0, [r3]
	bl sub_80B6CA4
	ldr r1, _080B3564 @ =0x03000084
	adds r2, r4, r1
	ldr r6, _080B3568 @ =gUnknown_03001EA0
	ldr r1, [r6]
	str r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xb
	adds r0, r1, r0
	str r0, [r6]
	ldr r2, _080B356C @ =0x03000008
	adds r0, r4, r2
	ldr r3, _080B3570 @ =0x000008DA
	adds r5, r5, r3
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r5, sl
	ldr r3, [r5]
	str r3, [sp]
	movs r3, #9
	bl sub_80B4498
	ldr r1, _080B3574 @ =0x030000E8
	adds r0, r4, r1
	ldr r1, [r6]
	add r5, sp, #0x2c
	str r5, [sp]
	movs r2, #0
	movs r3, #4
	bl sub_80B4498
	ldrh r1, [r5, #4]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldr r2, _080B3578 @ =0x03000094
	adds r0, r4, r2
	mov r3, r8
	str r3, [r0]
	ldr r5, _080B357C @ =0x03000098
	adds r0, r4, r5
	str r3, [r0]
	ldr r6, _080B3580 @ =0x0300009C
	adds r0, r4, r6
	str r3, [r0]
	ldr r1, _080B3584 @ =0x030000A0
	adds r0, r4, r1
	movs r1, #0x78
	str r1, [r0]
	adds r2, #0x10
	adds r0, r4, r2
	str r1, [r0]
	ldr r3, _080B3588 @ =0x030000B2
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	adds r5, #0x10
	adds r0, r4, r5
	mov r6, r8
	str r6, [r0]
	ldr r1, _080B358C @ =0x030000B5
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	adds r3, #4
	adds r0, r4, r3
	strb r2, [r0]
	adds r5, #0xf
	adds r0, r4, r5
	strb r2, [r0]
	ldr r6, _080B3590 @ =0x030000B4
	adds r0, r4, r6
	strb r2, [r0]
	subs r1, #5
	adds r0, r4, r1
	mov r2, r8
	strh r2, [r0]
	adds r3, #3
	adds r4, r4, r3
	mov r5, sb
	strb r5, [r4]
	ldr r6, [sp, #0x38]
	ldrb r0, [r6]
	cmp r0, #4
	bls _080B3530
	b _080B3632
_080B3530:
	lsls r0, r0, #2
	ldr r1, _080B3594 @ =_080B3598
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B353C: .4byte gUnknown_080DC36C
_080B3540: .4byte gUnknown_080DC380
_080B3544: .4byte 0x000008C7
_080B3548: .4byte Task_80B3648
_080B354C: .4byte 0x03000088
_080B3550: .4byte gUnknown_080DBE58
_080B3554: .4byte 0x0300008C
_080B3558: .4byte 0x03000090
_080B355C: .4byte 0x030000AC
_080B3560: .4byte 0x000008C6
_080B3564: .4byte 0x03000084
_080B3568: .4byte gUnknown_03001EA0
_080B356C: .4byte 0x03000008
_080B3570: .4byte 0x000008DA
_080B3574: .4byte 0x030000E8
_080B3578: .4byte 0x03000094
_080B357C: .4byte 0x03000098
_080B3580: .4byte 0x0300009C
_080B3584: .4byte 0x030000A0
_080B3588: .4byte 0x030000B2
_080B358C: .4byte 0x030000B5
_080B3590: .4byte 0x030000B4
_080B3594: .4byte _080B3598
_080B3598: @ jump table
	.4byte _080B35AC @ case 0
	.4byte _080B35D0 @ case 1
	.4byte _080B35DC @ case 2
	.4byte _080B35E6 @ case 3
	.4byte _080B3610 @ case 4
_080B35AC:
	adds r0, r7, #0
	adds r0, #0xc0
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r2, #4
	movs r3, #0x9a
	bl sub_80B6BB8
	b _080B3632
_080B35D0:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, _080B35D8 @ =0x0000013D
	b _080B35EC
	.align 2, 0
_080B35D8: .4byte 0x0000013D
_080B35DC:
	adds r0, r7, #0
	adds r0, #0xc0
	movs r3, #0xf0
	lsls r3, r3, #1
	b _080B35EC
_080B35E6:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, _080B360C @ =0x00000283
_080B35EC:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r2, #4
	bl sub_80B6BB8
	b _080B3632
	.align 2, 0
_080B360C: .4byte 0x00000283
_080B3610:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, _080B3644 @ =0x00000326
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r2, #4
	bl sub_80B6BB8
_080B3632:
	ldr r0, [sp, #0x34]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B3644: .4byte 0x00000326

.syntax divided
