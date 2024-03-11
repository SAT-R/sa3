.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Start of Akatento

	thumb_func_start CreateEntity_Akatento
CreateEntity_Akatento: @ 0x080581F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08058270 @ =sub_8058334
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058274 @ =sub_8058554
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r2, #0
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x14]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x1c]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	strb r2, [r7, #6]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08058278
	movs r0, #0xff
	b _0805827A
	.align 2, 0
_08058270: .4byte sub_8058334
_08058274: .4byte sub_8058554
_08058278:
	movs r0, #1
_0805827A:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _080582AC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80582B0
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080582AC: .4byte 0x01000002

	thumb_func_start sub_80582B0
sub_80582B0: @ 0x080582B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x24
	str r0, [r4, #0x24]
	ldr r1, _0805832C @ =gUnknown_080D1E20
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08058330 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805831A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805831A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805832C: .4byte gUnknown_080D1E20
_08058330: .4byte gUnknown_03001D10

	thumb_func_start sub_8058334
sub_8058334: @ 0x08058334
	push {r4, r5, lr}
	ldr r0, _08058384 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _08058388 @ =0x03000014
	adds r0, r3, r1
	ldr r2, _0805838C @ =0x0300000C
	adds r1, r3, r2
	ldr r5, _08058390 @ =0x03000008
	adds r2, r3, r5
	subs r5, #2
	adds r3, r3, r5
	bl sub_805CD70
	ldr r0, _08058394 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805836E
	cmp r1, #4
	beq _0805836E
	adds r0, r4, #0
	bl sub_8058464
_0805836E:
	adds r0, r4, #0
	bl sub_8058518
	cmp r0, #1
	bne _08058398
	ldr r0, _08058384 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080583C2
	.align 2, 0
_08058384: .4byte gCurTask
_08058388: .4byte 0x03000014
_0805838C: .4byte 0x0300000C
_08058390: .4byte 0x03000008
_08058394: .4byte gUnknown_030008A0
_08058398:
	adds r0, r4, #0
	bl sub_80584A8
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _080583AC
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _080583C2
_080583AC:
	adds r2, r4, #0
	adds r2, #0x24
	ldr r1, _080583C8 @ =gUnknown_080D1E20
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _080583CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080583D0 @ =sub_80583D4
	str r0, [r1, #8]
_080583C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080583C8: .4byte gUnknown_080D1E20
_080583CC: .4byte gCurTask
_080583D0: .4byte sub_80583D4

	thumb_func_start sub_80583D4
sub_80583D4: @ 0x080583D4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080583FC @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80584A8
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_8058518
	cmp r0, #1
	bne _08058400
	ldr r0, [r7]
	bl TaskDestroy
	b _08058452
	.align 2, 0
_080583FC: .4byte gCurTask
_08058400:
	ldr r0, _08058430 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058452
	cmp r1, #4
	beq _08058452
	cmp r6, #0
	bne _08058452
	ldr r0, _08058434 @ =0x03000024
	adds r4, r5, r0
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805843C
	ldr r0, _08058438 @ =0xFFFFFBFF
	ands r1, r0
	b _0805843E
	.align 2, 0
_08058430: .4byte gUnknown_030008A0
_08058434: .4byte 0x03000024
_08058438: .4byte 0xFFFFFBFF
_0805843C:
	orrs r1, r2
_0805843E:
	str r1, [r4, #8]
	ldr r1, _08058458 @ =gUnknown_080D1E20
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _0805845C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08058460 @ =sub_8058334
	str r0, [r1, #8]
_08058452:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058458: .4byte gUnknown_080D1E20
_0805845C: .4byte gCurTask
_08058460: .4byte sub_8058334

	thumb_func_start sub_8058464
sub_8058464: @ 0x08058464
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805848A
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bgt _0805849E
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	ble _0805849E
	b _0805849C
_0805848A:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x1c]
	cmp r0, r1
	blt _0805849E
	ldr r3, _080584A4 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	bge _0805849E
_0805849C:
	str r1, [r2, #0x14]
_0805849E:
	pop {r0}
	bx r0
	.align 2, 0
_080584A4: .4byte 0xFFFFFF00

	thumb_func_start sub_80584A8
sub_80584A8: @ 0x080584A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x24
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080584E8 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080584E8: .4byte gUnknown_03001D10

	thumb_func_start sub_80584EC
sub_80584EC: @ 0x080584EC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x24
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x14]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8058518
sub_8058518: @ 0x08058518
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80584EC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

	thumb_func_start sub_8058554
sub_8058554: @ 0x08058554
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Aotento
CreateEntity_Aotento: @ 0x08058568
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080585F0 @ =sub_80586B4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080585F4 @ =sub_8058C60
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x10]
	strb r2, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r0, #0x5a
	strh r0, [r7, #0xe]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r2, [r7, #8]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080585F8
	movs r0, #0xff
	b _080585FA
	.align 2, 0
_080585F0: .4byte sub_80586B4
_080585F4: .4byte sub_8058C60
_080585F8:
	movs r0, #1
_080585FA:
	strb r0, [r7, #9]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _0805862C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8058630
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805862C: .4byte 0x01000002

	thumb_func_start sub_8058630
sub_8058630: @ 0x08058630
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x2c
	str r0, [r4, #0x2c]
	ldr r1, _080586AC @ =gUnknown_080D1E30
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _080586B0 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	subs r0, #0x11
	str r0, [r6, #0x20]
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805869E
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805869E:
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080586AC: .4byte gUnknown_080D1E30
_080586B0: .4byte gUnknown_03001D10

	thumb_func_start sub_80586B4
sub_80586B4: @ 0x080586B4
	push {r4, r5, lr}
	ldr r0, _08058704 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _08058708 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _0805870C @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08058710 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #2
	adds r3, r3, r5
	bl sub_805CD70
	ldr r0, _08058714 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080586EE
	cmp r1, #4
	beq _080586EE
	adds r0, r4, #0
	bl sub_8058B50
_080586EE:
	adds r0, r4, #0
	bl sub_8058BE0
	cmp r0, #1
	bne _08058718
	ldr r0, _08058704 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805877A
	.align 2, 0
_08058704: .4byte gCurTask
_08058708: .4byte 0x0300001C
_0805870C: .4byte 0x03000014
_08058710: .4byte 0x0300000A
_08058714: .4byte gUnknown_030008A0
_08058718:
	adds r0, r4, #0
	bl sub_8058C1C
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	ble _0805872C
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _08058750
_0805872C:
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _08058744 @ =gUnknown_080D1E30
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _08058748 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805874C @ =sub_805892C
	b _08058778
	.align 2, 0
_08058744: .4byte gUnknown_080D1E30
_08058748: .4byte gCurTask
_0805874C: .4byte sub_805892C
_08058750:
	adds r0, r4, #0
	bl sub_8058A00
	cmp r0, #1
	bne _0805877A
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0805877A
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _08058780 @ =gUnknown_080D1E30
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	movs r0, #0x5a
	strh r0, [r4, #0xe]
	ldr r0, _08058784 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08058788 @ =sub_805878C
_08058778:
	str r0, [r1, #8]
_0805877A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058780: .4byte gUnknown_080D1E30
_08058784: .4byte gCurTask
_08058788: .4byte sub_805878C

	thumb_func_start sub_805878C
sub_805878C: @ 0x0805878C
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
	ldr r2, _0805881C @ =gUnknown_030008A0
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
	ldr r1, _08058820 @ =gUnknown_030015C0
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
	ldr r0, _0805882C @ =sub_805892C
	b _08058844
	.align 2, 0
_0805881C: .4byte gUnknown_030008A0
_08058820: .4byte gUnknown_030015C0
_08058824: .4byte gUnknown_080D1E30
_08058828: .4byte gCurTask
_0805882C: .4byte sub_805892C
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
	ldr r2, _080588E4 @ =gUnknown_030008A0
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
	ldr r1, _080588E8 @ =gUnknown_030015C0
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
	ldr r0, _080588F4 @ =sub_805892C
	b _08058916
	.align 2, 0
_080588E4: .4byte gUnknown_030008A0
_080588E8: .4byte gUnknown_030015C0
_080588EC: .4byte gUnknown_080D1E30
_080588F0: .4byte gCurTask
_080588F4: .4byte sub_805892C
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
	ldr r0, _08058928 @ =sub_80586B4
_08058916:
	str r0, [r1, #8]
_08058918:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058920: .4byte gUnknown_080D1E30
_08058924: .4byte gCurTask
_08058928: .4byte sub_80586B4

	thumb_func_start sub_805892C
sub_805892C: @ 0x0805892C
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
	ldr r0, _08058988 @ =gUnknown_030008A0
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
_08058988: .4byte gUnknown_030008A0
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
	ldr r0, _080589C0 @ =sub_80586B4
	b _080589EE
	.align 2, 0
_080589B8: .4byte gUnknown_080D1E30
_080589BC: .4byte gCurTask
_080589C0: .4byte sub_80586B4
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
	ldr r0, _080589FC @ =sub_805878C
_080589EE:
	str r0, [r1, #8]
_080589F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080589F8: .4byte gCurTask
_080589FC: .4byte sub_805878C

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
	bl sub_80BF30C
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
	ldr r3, _08058C5C @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08058C5C: .4byte gUnknown_03001D10

	thumb_func_start sub_8058C60
sub_8058C60: @ 0x08058C60
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8058C74
sub_8058C74: @ 0x08058C74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x1c
	str r1, [r4, #0x1c]
	movs r6, #0
	movs r5, #0
	ldr r1, _08058CDC @ =0x0000048E
	strh r1, [r0, #0xc]
	strb r6, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08058CE0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r4, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058CDC: .4byte 0x0000048E
_08058CE0: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Spinner
CreateEntity_Spinner: @ 0x08058CE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08058D70 @ =sub_8058D80
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058D74 @ =sub_8058E5C
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	movs r3, #0
	strb r5, [r4, #4]
	mov r2, sb
	str r2, [r4]
	ldrb r0, [r2]
	strb r0, [r4, #5]
	strh r6, [r4, #6]
	mov r5, r8
	strh r5, [r4, #8]
	ldrb r2, [r2]
	lsls r2, r2, #0xb
	str r2, [r4, #0x14]
	mov r5, sb
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x18]
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, sp, #4
	strh r3, [r0]
	ldr r0, _08058D78 @ =0x03000048
	adds r1, r1, r0
	ldr r2, _08058D7C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_8058C74
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058D70: .4byte sub_8058D80
_08058D74: .4byte sub_8058E5C
_08058D78: .4byte 0x03000048
_08058D7C: .4byte 0x01000002

	thumb_func_start sub_8058D80
sub_8058D80: @ 0x08058D80
	push {r4, r5, lr}
	ldr r5, _08058DA0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8058DF4
	cmp r0, #1
	bne _08058DA4
	ldr r0, [r5]
	bl TaskDestroy
	b _08058DAA
	.align 2, 0
_08058DA0: .4byte gCurTask
_08058DA4:
	adds r0, r4, #0
	bl sub_8058DB0
_08058DAA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8058DB0
sub_8058DB0: @ 0x08058DB0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x1c
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08058DF0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08058DF0: .4byte gUnknown_03001D10

	thumb_func_start sub_8058DF4
sub_8058DF4: @ 0x08058DF4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8058E30
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #8]
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

	thumb_func_start sub_8058E30
sub_8058E30: @ 0x08058E30
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x1c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x14]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8058E5C
sub_8058E5C: @ 0x08058E5C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Condor
CreateEntity_Condor: @ 0x08058E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08058EEC @ =sub_8058FB0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058EF0 @ =sub_80596EC
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r2, [r7, #6]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x28]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x2c]
	str r1, [r7, #0x20]
	str r0, [r7, #0x24]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x30]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x34]
	strh r2, [r7, #8]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08058EF4
	movs r0, #0xff
	b _08058EF6
	.align 2, 0
_08058EEC: .4byte sub_8058FB0
_08058EF0: .4byte sub_80596EC
_08058EF4:
	movs r0, #1
_08058EF6:
	strb r0, [r7, #0xe]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r2, _08058F28 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8058F2C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058F28: .4byte 0x01000002

	thumb_func_start sub_8058F2C
sub_8058F2C: @ 0x08058F2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x38
	str r0, [r4, #0x38]
	ldr r1, _08058FA8 @ =gUnknown_080D1E54
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08058FAC @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08058F96
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08058F96:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058FA8: .4byte gUnknown_080D1E54
_08058FAC: .4byte gUnknown_03001D10

	thumb_func_start sub_8058FB0
sub_8058FB0: @ 0x08058FB0
	push {r4, lr}
	ldr r0, _08058FEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08058FF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058FD6
	cmp r1, #4
	beq _08058FD6
	adds r0, r4, #0
	bl sub_80595FC
_08058FD6:
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08058FF4
	ldr r0, _08058FEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08059058
	.align 2, 0
_08058FEC: .4byte gCurTask
_08058FF0: .4byte gUnknown_030008A0
_08058FF4:
	adds r0, r4, #0
	bl sub_8059640
	adds r0, r4, #0
	bl sub_805933C
	cmp r0, #1
	bne _08059034
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059034
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _08059028 @ =gUnknown_080D1E54
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x1c]
	ldr r0, _0805902C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059030 @ =sub_805906C
	b _08059056
	.align 2, 0
_08059028: .4byte gUnknown_080D1E54
_0805902C: .4byte gCurTask
_08059030: .4byte sub_805906C
_08059034:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _08059042
	ldr r0, [r4, #0x34]
	cmp r1, r0
	blt _08059058
_08059042:
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _08059060 @ =gUnknown_080D1E54
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _08059064 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059068 @ =sub_80590E4
_08059056:
	str r0, [r1, #8]
_08059058:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059060: .4byte gUnknown_080D1E54
_08059064: .4byte gCurTask
_08059068: .4byte sub_80590E4

	thumb_func_start sub_805906C
sub_805906C: @ 0x0805906C
	push {r4, r5, r6, lr}
	ldr r6, _08059094 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059640
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059098
	ldr r0, [r6]
	bl TaskDestroy
	b _080590CC
	.align 2, 0
_08059094: .4byte gCurTask
_08059098:
	ldr r0, _080590D4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080590CC
	cmp r1, #4
	beq _080590CC
	adds r0, r4, #0
	bl sub_805928C
	adds r3, r0, #0
	cmp r3, #1
	bne _080590CC
	ldr r0, _080590D8 @ =0x03000038
	adds r2, r5, r0
	ldr r1, _080590DC @ =gUnknown_080D1E54
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	strb r3, [r4, #6]
	ldr r1, [r6]
	ldr r0, _080590E0 @ =sub_8059164
	str r0, [r1, #8]
_080590CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080590D4: .4byte gUnknown_030008A0
_080590D8: .4byte 0x03000038
_080590DC: .4byte gUnknown_080D1E54
_080590E0: .4byte sub_8059164

	thumb_func_start sub_80590E4
sub_80590E4: @ 0x080590E4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805910C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_8059640
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059110
	ldr r0, [r7]
	bl TaskDestroy
	b _08059154
	.align 2, 0
_0805910C: .4byte gCurTask
_08059110:
	cmp r4, #0
	bne _08059154
	ldr r0, _08059138 @ =0x03000038
	adds r2, r6, r0
	ldr r1, _0805913C @ =gUnknown_080D1E54
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059144
	ldr r0, _08059140 @ =0xFFFFFBFF
	ands r1, r0
	b _08059146
	.align 2, 0
_08059138: .4byte 0x03000038
_0805913C: .4byte gUnknown_080D1E54
_08059140: .4byte 0xFFFFFBFF
_08059144:
	orrs r1, r3
_08059146:
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r5, #6]
	ldr r0, _0805915C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059160 @ =sub_8058FB0
	str r0, [r1, #8]
_08059154:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805915C: .4byte gCurTask
_08059160: .4byte sub_8058FB0

	thumb_func_start sub_8059164
sub_8059164: @ 0x08059164
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805918C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059640
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059190
	ldr r0, [r7]
	bl TaskDestroy
	b _080591FC
	.align 2, 0
_0805918C: .4byte gCurTask
_08059190:
	cmp r6, #0
	bne _080591FC
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	ble _080591E8
	ldr r0, _080591D8 @ =0x03000038
	adds r2, r5, r0
	ldr r0, _080591DC @ =gUnknown_080D1E54
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	bl sub_8059700
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	blt _080591CE
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bgt _080591CE
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
_080591CE:
	str r0, [r4, #0x18]
	ldr r0, _080591E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080591E4 @ =sub_8059210
	b _080591FA
	.align 2, 0
_080591D8: .4byte 0x03000038
_080591DC: .4byte gUnknown_080D1E54
_080591E0: .4byte gCurTask
_080591E4: .4byte sub_8059210
_080591E8:
	ldr r0, _08059204 @ =0x03000038
	adds r2, r5, r0
	ldr r1, _08059208 @ =gUnknown_080D1E54
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805920C @ =sub_8058FB0
_080591FA:
	str r0, [r1, #8]
_080591FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059204: .4byte 0x03000038
_08059208: .4byte gUnknown_080D1E54
_0805920C: .4byte sub_8058FB0

	thumb_func_start sub_8059210
sub_8059210: @ 0x08059210
	push {r4, r5, r6, lr}
	ldr r6, _08059230 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059234
	ldr r0, [r6]
	bl TaskDestroy
	b _08059286
	.align 2, 0
_08059230: .4byte gCurTask
_08059234:
	ldr r0, _08059270 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059280
	cmp r1, #4
	beq _08059280
	adds r0, r4, #0
	bl sub_80592E0
	cmp r0, #1
	bne _08059280
	ldr r0, _08059274 @ =0x03000038
	adds r2, r5, r0
	ldr r0, _08059278 @ =gUnknown_080D1E54
	ldrh r1, [r0, #0x28]
	strh r1, [r2, #0xc]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	adds r0, r4, #0
	bl sub_8059640
	ldr r1, [r6]
	ldr r0, _0805927C @ =sub_8059164
	str r0, [r1, #8]
	b _08059286
	.align 2, 0
_08059270: .4byte gUnknown_030008A0
_08059274: .4byte 0x03000038
_08059278: .4byte gUnknown_080D1E54
_0805927C: .4byte sub_8059164
_08059280:
	adds r0, r4, #0
	bl sub_8059640
_08059286:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805928C
sub_805928C: @ 0x0805928C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, [r0, #0x18]
	str r6, [sp]
	ldr r4, [r0, #0x1c]
	str r4, [sp, #4]
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #0x10
	ldr r3, [r0, #0x10]
	subs r3, r3, r1
	str r3, [sp, #8]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #0x10
	ldr r1, [r0, #0x14]
	subs r1, r1, r2
	str r1, [sp, #0xc]
	subs r1, r1, r4
	asrs r1, r1, #6
	ldrh r2, [r0, #8]
	lsrs r5, r2, #6
	muls r1, r5, r1
	adds r4, r4, r1
	str r4, [r0, #0x2c]
	subs r3, r3, r6
	asrs r3, r3, #6
	adds r1, r3, #0
	muls r1, r5, r1
	adds r6, r6, r1
	str r6, [r0, #0x28]
	adds r2, #0x80
	strh r2, [r0, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x16
	cmp r2, #0x3f
	bhi _080592D6
	movs r0, #0
	b _080592D8
_080592D6:
	movs r0, #1
_080592D8:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80592E0
sub_80592E0: @ 0x080592E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r5, [r6, #0x18]
	str r5, [sp]
	ldr r3, [r6, #0x1c]
	str r3, [sp, #4]
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #0x10
	ldr r2, [r6, #0x10]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r1, [r6, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r0, r0, r3
	asrs r0, r0, #6
	ldrh r1, [r6, #8]
	lsrs r4, r1, #6
	muls r0, r4, r0
	adds r3, r3, r0
	str r3, [r6, #0x2c]
	subs r2, r2, r5
	asrs r2, r2, #6
	adds r0, r2, #0
	muls r0, r4, r0
	adds r5, r5, r0
	str r5, [r6, #0x28]
	subs r1, #0x80
	strh r1, [r6, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x16
	cmp r1, #0x3f
	bhi _0805932C
	movs r0, #0
	b _08059332
_0805932C:
	movs r0, #0
	strh r0, [r6, #8]
	movs r0, #1
_08059332:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805933C
sub_805933C: @ 0x0805933C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x38
	str r0, [sp]
	ldr r0, [r7, #0x28]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r7, #0x2c]
	asrs r0, r0, #8
	mov r8, r0
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	add sb, r0
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	add r8, r0
	movs r1, #0
	mov sl, r1
	b _08059426
_0805936C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	mov r3, sb
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _080593D4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _080593A4
	ldr r3, [sp]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080593BE
_080593A4:
	ldr r1, _080593D8 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805941C
	ldr r2, [sp]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805941C
_080593BE:
	ldr r0, [r5, #0x10]
	asrs r2, r0, #8
	mov r3, sb
	subs r1, r3, r2
	adds r6, r0, #0
	cmp r1, #0
	blt _080593DC
	cmp r1, #0x63
	ble _080593E4
	b _0805941C
	.align 2, 0
_080593D4: .4byte 0xFFFF0000
_080593D8: .4byte 0xFFFFFEFF
_080593DC:
	mov r1, sb
	subs r0, r2, r1
	cmp r0, #0x63
	bgt _0805941C
_080593E4:
	mov r3, r8
	adds r3, #0x1a
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	subs r1, r3, r2
	adds r4, r0, #0
	cmp r1, #0
	blt _080593FA
	cmp r1, #0x63
	ble _08059400
	b _0805941C
_080593FA:
	subs r0, r2, r3
	cmp r0, #0x63
	bgt _0805941C
_08059400:
	asrs r0, r4, #8
	subs r0, #0x1a
	cmp r8, r0
	bge _0805941C
	str r6, [r7, #0x10]
	ldr r0, [r5, #0x14]
	ldr r2, _08059418 @ =0xFFFFE600
	adds r0, r0, r2
	str r0, [r7, #0x14]
	movs r0, #1
	b _0805943A
	.align 2, 0
_08059418: .4byte 0xFFFFE600
_0805941C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08059426:
	mov r3, sl
	cmp r3, #1
	bhi _08059438
	mov r0, sl
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805936C
_08059438:
	movs r0, #0
_0805943A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805944C
sub_805944C: @ 0x0805944C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	ldr r2, _080594AC @ =gUnknown_080D1E84
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r3, _080594B0 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080594AC: .4byte gUnknown_080D1E84
_080594B0: .4byte gUnknown_03001D10

	thumb_func_start sub_80594B4
sub_80594B4: @ 0x080594B4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _0805952C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80597A8
	adds r0, r4, #0
	bl sub_80597B4
	adds r0, r4, #0
	bl sub_8059540
	cmp r0, #1
	bne _080594DE
	movs r5, #1
_080594DE:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldrh r2, [r4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #2]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r4, #0
	str r4, [sp]
	ldr r2, _08059530 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _08059508
	movs r5, #1
_08059508:
	cmp r5, #1
	bne _08059522
	ldr r0, _08059534 @ =0x0300000C
	adds r1, r6, r0
	ldr r2, _08059538 @ =gUnknown_080D1E84
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r4, [r1, #8]
	ldr r1, [r7]
	ldr r0, _0805953C @ =sub_8059778
	str r0, [r1, #8]
_08059522:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805952C: .4byte gCurTask
_08059530: .4byte sub_805217C
_08059534: .4byte 0x0300000C
_08059538: .4byte gUnknown_080D1E84
_0805953C: .4byte sub_8059778

	thumb_func_start sub_8059540
sub_8059540: @ 0x08059540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #4]
	asrs r7, r1, #8
	ldr r1, [r0, #8]
	asrs r6, r1, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0xc
	mov r8, r0
	movs r5, #0
_08059564:
	cmp r5, #0
	bne _08059574
	ldr r0, _08059570 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805957E
	.align 2, 0
_08059570: .4byte gUnknown_030008A0
_08059574:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805957E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080595E0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080595E4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080595AC
	cmp r1, #8
	beq _080595AC
	cmp r1, #0x10
	bne _080595E4
_080595AC:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _080595E4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080595DC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_080595DC:
	movs r0, #1
	b _080595F0
	.align 2, 0
_080595E0: .4byte gUnknown_030015C0
_080595E4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08059564
	movs r0, #0
_080595F0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80595FC
sub_80595FC: @ 0x080595FC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059622
	ldr r0, [r2, #0x28]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bgt _08059636
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x28]
	cmp r0, r1
	ble _08059636
	b _08059634
_08059622:
	ldr r0, [r2, #0x28]
	ldr r1, [r2, #0x30]
	cmp r0, r1
	blt _08059636
	ldr r3, _0805963C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x28]
	cmp r0, r1
	bge _08059636
_08059634:
	str r1, [r2, #0x28]
_08059636:
	pop {r0}
	bx r0
	.align 2, 0
_0805963C: .4byte 0xFFFFFF00

	thumb_func_start sub_8059640
sub_8059640: @ 0x08059640
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x38
	ldr r2, [r0, #0x28]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08059680 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08059680: .4byte gUnknown_03001D10

	thumb_func_start sub_8059684
sub_8059684: @ 0x08059684
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x2c]
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

	thumb_func_start sub_80596B0
sub_80596B0: @ 0x080596B0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8059684
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
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

	thumb_func_start sub_80596EC
sub_80596EC: @ 0x080596EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8059700
sub_8059700: @ 0x08059700
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08059764 @ =sub_80594B4
	ldr r2, _08059768 @ =0x00004040
	ldr r1, _0805976C @ =sub_80597F8
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, r8
	str r0, [r4, #4]
	mov r0, sb
	str r0, [r4, #8]
	movs r2, #0
	strh r5, [r4]
	strh r6, [r4, #2]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08059770 @ =0x03000038
	adds r1, r1, r0
	ldr r2, _08059774 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805944C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059764: .4byte sub_80594B4
_08059768: .4byte 0x00004040
_0805976C: .4byte sub_80597F8
_08059770: .4byte 0x03000038
_08059774: .4byte 0x01000002

	thumb_func_start sub_8059778
sub_8059778: @ 0x08059778
	push {r4, r5, r6, lr}
	ldr r6, _080597A4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80597B4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8059540
	cmp r5, #0
	bne _0805979E
	ldr r0, [r6]
	bl TaskDestroy
_0805979E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080597A4: .4byte gCurTask

	thumb_func_start sub_80597A8
sub_80597A8: @ 0x080597A8
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_80597B4
sub_80597B4: @ 0x080597B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080597F4 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080597F4: .4byte gUnknown_03001D10

	thumb_func_start sub_80597F8
sub_80597F8: @ 0x080597F8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_GekoGeko
CreateEntity_GekoGeko: @ 0x0805980C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080598A4 @ =sub_8059964
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080598A8 @ =sub_8059CEC
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	movs r2, #0
	strb r2, [r7, #6]
	strb r4, [r7, #4]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	movs r3, #0
	strh r5, [r7, #0xc]
	strh r6, [r7, #0xe]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r5, #1
	strb r5, [r7, #0xa]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	strb r3, [r7, #7]
	mov r2, r8
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r3, [r7, #8]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080598AC
	ldrb r0, [r7, #9]
	orrs r0, r4
	strb r0, [r7, #9]
	b _080598AE
	.align 2, 0
_080598A4: .4byte sub_8059964
_080598A8: .4byte sub_8059CEC
_080598AC:
	strb r5, [r7, #9]
_080598AE:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _080598DC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80598E0
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080598DC: .4byte 0x01000002

	thumb_func_start sub_80598E0
sub_80598E0: @ 0x080598E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x2c
	str r0, [r4, #0x2c]
	ldr r1, _0805995C @ =gUnknown_080D1E94
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08059960 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805994A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805994A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805995C: .4byte gUnknown_080D1E94
_08059960: .4byte gUnknown_03001D10

	thumb_func_start sub_8059964
sub_8059964: @ 0x08059964
	push {r4, r5, r6, lr}
	ldr r6, _08059998 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _0805999C @ =0x0300001C
	adds r0, r5, r1
	subs r1, #0x10
	adds r2, r5, r1
	subs r1, #4
	adds r3, r5, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _080599A0
	ldr r0, [r6]
	bl TaskDestroy
	b _08059A5E
	.align 2, 0
_08059998: .4byte gCurTask
_0805999C: .4byte 0x0300001C
_080599A0:
	adds r0, r4, #0
	bl sub_8059C3C
	adds r6, r0, #0
	ldr r0, _080599E0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059A5E
	cmp r1, #4
	beq _08059A5E
	cmp r6, #0
	bne _080599E8
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _080599EE
	movs r0, #0
	strh r6, [r4, #0x12]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	ldr r0, _080599E4 @ =0x03000047
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	b _080599EE
	.align 2, 0
_080599E0: .4byte gUnknown_030008A0
_080599E4: .4byte 0x03000047
_080599E8:
	adds r0, r4, #0
	bl sub_8059C14
_080599EE:
	cmp r6, #0
	bne _08059A5E
	adds r5, r4, #0
	adds r5, #0x2c
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	cmp r0, r2
	blt _08059A0A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059A1C
_08059A0A:
	ldr r0, [r4, #0x28]
	cmp r0, r2
	bgt _08059A3C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059A3C
_08059A1C:
	ldr r1, _08059A30 @ =gUnknown_080D1E94
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	ldr r0, _08059A34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059A38 @ =sub_8059B9C
	b _08059A5C
	.align 2, 0
_08059A30: .4byte gUnknown_080D1E94
_08059A34: .4byte gCurTask
_08059A38: .4byte sub_8059B9C
_08059A3C:
	adds r0, r4, #0
	bl sub_8059AE8
	cmp r0, #1
	bne _08059A5E
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059A5E
	ldr r1, _08059A64 @ =gUnknown_080D1E94
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	ldr r0, _08059A68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059A6C @ =sub_8059A70
_08059A5C:
	str r0, [r1, #8]
_08059A5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059A64: .4byte gUnknown_080D1E94
_08059A68: .4byte gCurTask
_08059A6C: .4byte sub_8059A70

	thumb_func_start sub_8059A70
sub_8059A70: @ 0x08059A70
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08059A94 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _08059A98
	ldr r0, [r6]
	bl TaskDestroy
	b _08059ACC
	.align 2, 0
_08059A94: .4byte gCurTask
_08059A98:
	adds r0, r4, #0
	bl sub_8059C3C
	adds r3, r0, #0
	cmp r3, #0
	bne _08059ACC
	ldr r0, _08059AD4 @ =0x0300002C
	adds r2, r5, r0
	ldr r1, _08059AD8 @ =gUnknown_080D1E94
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #1
	strb r0, [r4, #6]
	mov r0, sp
	strh r3, [r0]
	ldr r0, _08059ADC @ =0x03000058
	adds r1, r5, r0
	ldr r2, _08059AE0 @ =0x01000002
	mov r0, sp
	bl sub_80C7520
	ldr r1, [r6]
	ldr r0, _08059AE4 @ =sub_8059964
	str r0, [r1, #8]
_08059ACC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059AD4: .4byte 0x0300002C
_08059AD8: .4byte gUnknown_080D1E94
_08059ADC: .4byte 0x03000058
_08059AE0: .4byte 0x01000002
_08059AE4: .4byte sub_8059964

	thumb_func_start sub_8059AE8
sub_8059AE8: @ 0x08059AE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r7, #0x2c
	ldr r1, [r0, #0x1c]
	asrs r6, r1, #8
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r6, r6, r1
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	movs r0, #0xff
	lsls r0, r0, #1
	mov r8, r0
	b _08059B7E
_08059B10:
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08059B6C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _08059B42
	ldr r1, _08059B70 @ =0xFFFFFCFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _08059B4E
_08059B42:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08059B66
_08059B4E:
	ldr r1, _08059B74 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bhi _08059B78
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08059B78
_08059B66:
	movs r0, #1
	b _08059B90
	.align 2, 0
_08059B6C: .4byte 0xFFFF0000
_08059B70: .4byte 0xFFFFFCFF
_08059B74: .4byte 0xFFFFFEFF
_08059B78:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08059B7E:
	cmp r4, #1
	bhi _08059B8E
	adds r0, r4, #0
	bl sub_805CD20
	adds r1, r0, #0
	cmp r1, #0
	bne _08059B10
_08059B8E:
	movs r0, #0
_08059B90:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8059B9C
sub_8059B9C: @ 0x08059B9C
	push {r4, r5, r6, lr}
	ldr r6, _08059BBC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _08059BC0
	ldr r0, [r6]
	bl TaskDestroy
	b _08059C02
	.align 2, 0
_08059BBC: .4byte gCurTask
_08059BC0:
	adds r0, r4, #0
	bl sub_8059C3C
	cmp r0, #0
	bne _08059C02
	ldr r0, _08059BE4 @ =0x0300002C
	adds r2, r5, r0
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059BEC
	ldr r0, _08059BE8 @ =0xFFFFFBFF
	ands r1, r0
	b _08059BEE
	.align 2, 0
_08059BE4: .4byte 0x0300002C
_08059BE8: .4byte 0xFFFFFBFF
_08059BEC:
	orrs r1, r3
_08059BEE:
	str r1, [r2, #8]
	ldr r1, _08059C08 @ =gUnknown_080D1E94
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _08059C0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059C10 @ =sub_8059964
	str r0, [r1, #8]
_08059C02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059C08: .4byte gUnknown_080D1E94
_08059C0C: .4byte gCurTask
_08059C10: .4byte sub_8059964

	thumb_func_start sub_8059C14
sub_8059C14: @ 0x08059C14
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059C2C
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	b _08059C30
_08059C2C:
	ldr r0, [r2, #0x1c]
	ldr r1, _08059C38 @ =0xFFFFFF00
_08059C30:
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08059C38: .4byte 0xFFFFFF00

	thumb_func_start sub_8059C3C
sub_8059C3C: @ 0x08059C3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08059C7C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08059C7C: .4byte gUnknown_03001D10

	thumb_func_start sub_8059C80
sub_8059C80: @ 0x08059C80
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
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0
    
	thumb_func_start sub_8059CAC
sub_8059CAC: @ 0x08059CAC
    movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8059CB0
sub_8059CB0: @ 0x08059CB0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8059C80
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xe]
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

	thumb_func_start sub_8059CEC
sub_8059CEC: @ 0x08059CEC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Buzzer
CreateEntity_Buzzer: @ 0x08059D00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08059D80 @ =sub_8059E44
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08059D84 @ =sub_805A328
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r0, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	strb r0, [r7, #8]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	strh r2, [r7, #0xe]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08059D88
	movs r0, #0xff
	b _08059D8A
	.align 2, 0
_08059D80: .4byte sub_8059E44
_08059D84: .4byte sub_805A328
_08059D88:
	movs r0, #1
_08059D8A:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _08059DBC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8059DC0
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059DBC: .4byte 0x01000002

	thumb_func_start sub_8059DC0
sub_8059DC0: @ 0x08059DC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _08059E3C @ =gUnknown_080D1EAC
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08059E40 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08059E2A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08059E2A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059E3C: .4byte gUnknown_080D1EAC
_08059E40: .4byte gUnknown_03001D10

	thumb_func_start sub_8059E44
sub_8059E44: @ 0x08059E44
	push {r4, r5, r6, lr}
	ldr r6, _08059E68 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x28
	adds r5, r1, r0
	adds r0, r4, #0
	bl sub_805A2EC
	cmp r0, #1
	bne _08059E6C
	ldr r0, [r6]
	bl TaskDestroy
	b _08059EF4
	.align 2, 0
_08059E68: .4byte gCurTask
_08059E6C:
	adds r0, r4, #0
	bl sub_805A27C
	ldr r0, _08059EAC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059EB8
	cmp r1, #4
	beq _08059EB8
	adds r0, r4, #0
	bl sub_805A238
	adds r0, r4, #0
	bl sub_805A04C
	cmp r0, #1
	bne _08059EB8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059EB8
	ldr r1, _08059EB0 @ =gUnknown_080D1EAC
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	ldr r1, [r6]
	ldr r0, _08059EB4 @ =sub_8059FA0
	b _08059EF2
	.align 2, 0
_08059EAC: .4byte gUnknown_030008A0
_08059EB0: .4byte gUnknown_080D1EAC
_08059EB4: .4byte sub_8059FA0
_08059EB8:
	ldr r2, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r2, r0
	bgt _08059ECC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059EDE
_08059ECC:
	ldr r0, [r4, #0x24]
	cmp r2, r0
	blt _08059EF4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059EF4
_08059EDE:
	ldr r1, _08059EFC @ =gUnknown_080D1EAC
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r0, _08059F00 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059F04 @ =sub_8059F08
_08059EF2:
	str r0, [r1, #8]
_08059EF4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059EFC: .4byte gUnknown_080D1EAC
_08059F00: .4byte gCurTask
_08059F04: .4byte sub_8059F08

	thumb_func_start sub_8059F08
sub_8059F08: @ 0x08059F08
	push {r4, r5, r6, r7, lr}
	ldr r7, _08059F30 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805A27C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_805A2EC
	cmp r0, #1
	bne _08059F34
	ldr r0, [r7]
	bl TaskDestroy
	b _08059F90
	.align 2, 0
_08059F30: .4byte gCurTask
_08059F34:
	ldr r0, _08059F70 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059F90
	cmp r1, #4
	beq _08059F90
	cmp r6, #0
	bne _08059F90
	ldr r0, _08059F74 @ =0x03000028
	adds r2, r5, r0
	ldr r1, _08059F78 @ =gUnknown_080D1EAC
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059F80
	ldr r0, _08059F7C @ =0xFFFFFBFF
	ands r1, r0
	b _08059F82
	.align 2, 0
_08059F70: .4byte gUnknown_030008A0
_08059F74: .4byte 0x03000028
_08059F78: .4byte gUnknown_080D1EAC
_08059F7C: .4byte 0xFFFFFBFF
_08059F80:
	orrs r1, r3
_08059F82:
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r4, #6]
	ldr r0, _08059F98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059F9C @ =sub_8059E44
	str r0, [r1, #8]
_08059F90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059F98: .4byte gCurTask
_08059F9C: .4byte sub_8059E44

	thumb_func_start sub_8059FA0
sub_8059FA0: @ 0x08059FA0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08059FC8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805A27C
	adds r0, r5, #0
	bl sub_805A2EC
	cmp r0, #1
	bne _08059FCC
	ldr r0, [r6]
	bl TaskDestroy
	b _0805A034
	.align 2, 0
_08059FC8: .4byte gCurTask
_08059FCC:
	ldr r0, _0805A03C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805A034
	cmp r1, #4
	beq _0805A034
	ldrb r0, [r5, #8]
	adds r0, #1
	strb r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x21
	bls _0805A034
	ldr r0, _0805A040 @ =0x03000028
	adds r1, r4, r0
	ldr r2, _0805A044 @ =gUnknown_080D1EAC
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #1
	strb r0, [r5, #6]
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r1, #0xf6
	cmp r0, #0
	beq _0805A00E
	movs r1, #0xa
_0805A00E:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	ldr r1, [r5, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r1, r1, r2
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	ldrh r4, [r5, #0xe]
	str r4, [sp]
	bl sub_805A33C
	movs r0, #0
	strb r0, [r5, #8]
	ldr r1, [r6]
	ldr r0, _0805A048 @ =sub_8059E44
	str r0, [r1, #8]
_0805A034:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A03C: .4byte gUnknown_030008A0
_0805A040: .4byte 0x03000028
_0805A044: .4byte gUnknown_080D1EAC
_0805A048: .4byte sub_8059E44

	thumb_func_start sub_805A04C
sub_805A04C: @ 0x0805A04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r7, #0x18]
	asrs r6, r0, #8
	ldr r0, [r7, #0x1c]
	asrs r5, r0, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r3, #0
	b _0805A108
_0805A074:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp]
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0805A0D8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0xfe
	bhi _0805A0AC
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A0C6
_0805A0AC:
	ldr r1, _0805A0DC @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805A102
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A102
_0805A0C6:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0805A0E0
	cmp r1, #0x63
	ble _0805A0E6
	b _0805A102
	.align 2, 0
_0805A0D8: .4byte 0xFFFF0000
_0805A0DC: .4byte 0xFFFFFEFF
_0805A0E0:
	subs r0, r0, r6
	cmp r0, #0x63
	bgt _0805A102
_0805A0E6:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0805A0F6
	cmp r1, #0x63
	ble _0805A0FC
	b _0805A102
_0805A0F6:
	subs r0, r0, r5
	cmp r0, #0x63
	bgt _0805A102
_0805A0FC:
	strh r2, [r7, #0xe]
	movs r0, #1
	b _0805A11E
_0805A102:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0805A108:
	cmp r3, #1
	bhi _0805A11C
	adds r0, r3, #0
	str r3, [sp]
	bl sub_805CD20
	adds r4, r0, #0
	ldr r3, [sp]
	cmp r4, #0
	bne _0805A074
_0805A11C:
	movs r0, #0
_0805A11E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A12C
sub_805A12C: @ 0x0805A12C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #4
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _0805A18C @ =gUnknown_080D1EC4
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _0805A190 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A18C: .4byte gUnknown_080D1EC4
_0805A190: .4byte gUnknown_03001D10

	thumb_func_start sub_805A194
sub_805A194: @ 0x0805A194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0805A1B8:
	cmp r5, #0
	bne _0805A1C8
	ldr r0, _0805A1C4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805A1D2
	.align 2, 0
_0805A1C4: .4byte gUnknown_030008A0
_0805A1C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805A1D2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805A21C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805A220
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805A220
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805A218
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805A218:
	movs r0, #1
	b _0805A22C
	.align 2, 0
_0805A21C: .4byte gUnknown_030015C0
_0805A220:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805A1B8
	movs r0, #0
_0805A22C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805A238
sub_805A238: @ 0x0805A238
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805A25E
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bge _0805A272
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _0805A272
	b _0805A270
_0805A25E:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _0805A272
	ldr r3, _0805A278 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _0805A272
_0805A270:
	str r1, [r2, #0x18]
_0805A272:
	pop {r0}
	bx r0
	.align 2, 0
_0805A278: .4byte 0xFFFFFF00

	thumb_func_start sub_805A27C
sub_805A27C: @ 0x0805A27C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A2BC @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805A2BC: .4byte gUnknown_03001D10

	thumb_func_start sub_805A2C0
sub_805A2C0: @ 0x0805A2C0
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_805A2EC
sub_805A2EC: @ 0x0805A2EC
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805A2C0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
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

	thumb_func_start sub_805A328
sub_805A328: @ 0x0805A328
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805A33C
sub_805A33C: @ 0x0805A33C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805A39C @ =sub_805A3A8
	ldr r2, _0805A3A0 @ =0x00004040
	ldr r1, _0805A3A4 @ =sub_805A4A8
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0, #0x10]
	mov r1, sb
	str r1, [r0, #0x14]
	mov r1, r8
	str r1, [r0, #8]
	mov r1, sb
	str r1, [r0, #0xc]
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	bl sub_805A12C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A39C: .4byte sub_805A3A8
_0805A3A0: .4byte 0x00004040
_0805A3A4: .4byte sub_805A4A8

	thumb_func_start sub_805A3A8
sub_805A3A8: @ 0x0805A3A8
	push {r4, r5, lr}
	ldr r5, _0805A3E0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805A3E4
	adds r0, r4, #0
	bl sub_805A464
	adds r0, r4, #0
	bl sub_805A194
	adds r0, r4, #0
	bl sub_805A424
	cmp r0, #1
	bne _0805A3D8
	ldr r0, [r5]
	bl TaskDestroy
_0805A3D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3E0: .4byte gCurTask

	thumb_func_start sub_805A3E4
sub_805A3E4: @ 0x0805A3E4
	push {r4, lr}
	ldr r4, _0805A420 @ =gUnknown_082B48B4
	ldrh r3, [r0, #4]
	lsrs r3, r3, #2
	movs r1, #0xff
	ands r3, r1
	lsls r1, r3, #3
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x14]
	adds r2, r2, r1
	str r2, [r0, #0x14]
	lsls r3, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r3, r1
	adds r3, r3, r4
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x10]
	adds r2, r2, r1
	str r2, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A420: .4byte gUnknown_082B48B4

	thumb_func_start sub_805A424
sub_805A424: @ 0x0805A424
	push {lr}
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A458 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _0805A454
	cmp r1, #0xa0
	bls _0805A45C
_0805A454:
	movs r0, #1
	b _0805A45E
	.align 2, 0
_0805A458: .4byte gUnknown_03001D10
_0805A45C:
	movs r0, #0
_0805A45E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A464
sub_805A464: @ 0x0805A464
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A4A4 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805A4A4: .4byte gUnknown_03001D10

	thumb_func_start sub_805A4A8
sub_805A4A8: @ 0x0805A4A8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Ape_0
CreateEntity_Ape_0: @ 0x0805A4BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805A580 @ =sub_805A764
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805A584 @ =sub_805ACF0
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	add r4, sb
	str r7, [r4]
	ldrb r0, [r7]
	movs r1, #0
	mov sl, r1
	strb r0, [r4, #5]
	strb r5, [r4, #4]
	movs r2, #0
	strh r6, [r4, #0xa]
	mov r0, r8
	strh r0, [r4, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #0xb
	str r1, [r4, #0x1c]
	ldrb r0, [r7, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	movs r0, #0xc0
	strh r0, [r4, #8]
	movs r0, #0x16
	strh r0, [r4, #0xe]
	strb r2, [r4, #6]
	add r0, sp, #4
	mov r1, sl
	strh r1, [r0]
	ldr r1, _0805A588 @ =0x03000078
	add r1, sb
	ldr r5, _0805A58C @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	mov r1, sl
	strh r1, [r0]
	ldr r1, _0805A590 @ =0x03000070
	add r1, sb
	adds r2, r5, #0
	bl sub_80C7520
	add r0, sp, #8
	mov r1, sl
	strh r1, [r0]
	ldr r1, _0805A594 @ =0x03000048
	add sb, r1
	mov r1, sb
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805A674
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A580: .4byte sub_805A764
_0805A584: .4byte sub_805ACF0
_0805A588: .4byte 0x03000078
_0805A58C: .4byte 0x01000002
_0805A590: .4byte 0x03000070
_0805A594: .4byte 0x03000048

	thumb_func_start CreateEntity_Ape_1
CreateEntity_Ape_1: @ 0x0805A598
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805A65C @ =sub_805A764
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805A660 @ =sub_805ACF0
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	add r4, sb
	str r7, [r4]
	ldrb r0, [r7]
	movs r1, #0
	mov sl, r1
	strb r0, [r4, #5]
	strb r5, [r4, #4]
	movs r2, #0
	strh r6, [r4, #0xa]
	mov r0, r8
	strh r0, [r4, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #0xb
	str r1, [r4, #0x1c]
	ldrb r0, [r7, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	movs r0, #0x40
	strh r0, [r4, #8]
	movs r0, #0x16
	strh r0, [r4, #0xe]
	strb r2, [r4, #6]
	add r0, sp, #4
	mov r1, sl
	strh r1, [r0]
	ldr r1, _0805A664 @ =0x03000078
	add r1, sb
	ldr r5, _0805A668 @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	mov r1, sl
	strh r1, [r0]
	ldr r1, _0805A66C @ =0x03000070
	add r1, sb
	adds r2, r5, #0
	bl sub_80C7520
	add r0, sp, #8
	mov r1, sl
	strh r1, [r0]
	ldr r1, _0805A670 @ =0x03000048
	add sb, r1
	mov r1, sb
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805A674
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A65C: .4byte sub_805A764
_0805A660: .4byte sub_805ACF0
_0805A664: .4byte 0x03000078
_0805A668: .4byte 0x01000002
_0805A66C: .4byte 0x03000070
_0805A670: .4byte 0x03000048

	thumb_func_start sub_805A674
sub_805A674: @ 0x0805A674
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x24
	str r5, [r7, #0x24]
	ldr r4, _0805A75C @ =gUnknown_080D1ECC
	ldr r0, [r4, #0x14]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x10]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805A760 @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl sub_80BF44C
	adds r3, r7, #0
	adds r3, #0x4c
	str r5, [r7, #0x4c]
	ldrh r0, [r4]
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	mov r0, sb
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A75C: .4byte gUnknown_080D1ECC
_0805A760: .4byte gUnknown_03001D10

	thumb_func_start sub_805A764
sub_805A764: @ 0x0805A764
	push {r4, lr}
	ldr r0, _0805A7A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0805A7A4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805A78A
	cmp r1, #4
	beq _0805A78A
	adds r0, r4, #0
	bl sub_805A8B0
_0805A78A:
	adds r0, r4, #0
	bl sub_805ACB4
	cmp r0, #1
	bne _0805A7A8
	ldr r0, _0805A7A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805A7DA
	.align 2, 0
_0805A7A0: .4byte gCurTask
_0805A7A4: .4byte gUnknown_030008A0
_0805A7A8:
	adds r0, r4, #0
	bl sub_805AA10
	adds r0, r4, #0
	bl sub_805A964
	cmp r0, #1
	bne _0805A7DA
	ldr r0, _0805A7E0 @ =gUnknown_030008A0
	ldr r0, [r0, #0x1c]
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	cmp r0, #0x77
	bls _0805A7DA
	adds r2, r4, #0
	adds r2, #0x4c
	ldr r1, _0805A7E4 @ =gUnknown_080D1ECC
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0805A7E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805A7EC @ =sub_805A7F0
	str r0, [r1, #8]
_0805A7DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A7E0: .4byte gUnknown_030008A0
_0805A7E4: .4byte gUnknown_080D1ECC
_0805A7E8: .4byte gCurTask
_0805A7EC: .4byte sub_805A7F0

	thumb_func_start sub_805A7F0
sub_805A7F0: @ 0x0805A7F0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0805A81C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_805AA10
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_805ACB4
	cmp r0, #1
	bne _0805A820
	ldr r0, [r4]
	bl TaskDestroy
	b _0805A898
	.align 2, 0
_0805A81C: .4byte gCurTask
_0805A820:
	ldr r0, _0805A868 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805A898
	cmp r1, #4
	beq _0805A898
	ldrh r0, [r5, #0xe]
	adds r1, r0, #0
	cmp r1, #0x16
	bls _0805A86C
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0805A86C
	ldr r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r4, #0xff
	cmp r0, #0
	beq _0805A850
	movs r4, #1
_0805A850:
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	bl sub_805AD04
	movs r0, #1
	strb r0, [r5, #6]
	b _0805A870
	.align 2, 0
_0805A868: .4byte gUnknown_030008A0
_0805A86C:
	subs r0, r1, #1
	strh r0, [r5, #0xe]
_0805A870:
	cmp r6, #0
	bne _0805A898
	adds r2, r5, #0
	adds r2, #0x4c
	ldr r1, _0805A8A0 @ =gUnknown_080D1ECC
	ldrh r0, [r1]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _0805A8A4 @ =gUnknown_030008A0
	ldr r0, [r0, #0x1c]
	str r0, [r5, #0x10]
	movs r0, #0x16
	strh r0, [r5, #0xe]
	strb r3, [r5, #6]
	ldr r0, _0805A8A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805A8AC @ =sub_805A764
	str r0, [r1, #8]
_0805A898:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A8A0: .4byte gUnknown_080D1ECC
_0805A8A4: .4byte gUnknown_030008A0
_0805A8A8: .4byte gCurTask
_0805A8AC: .4byte sub_805A764

	thumb_func_start sub_805A8B0
sub_805A8B0: @ 0x0805A8B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	adds r2, r4, #0
	adds r2, #0x4c
	ldrh r0, [r4, #8]
	cmp r0, #0x2c
	bls _0805A8C4
	cmp r0, #0x54
	blo _0805A8CC
_0805A8C4:
	cmp r0, #0xac
	bls _0805A8D2
	cmp r0, #0xd4
	bhs _0805A8D2
_0805A8CC:
	ldrh r0, [r4, #8]
	adds r0, #3
	b _0805A8D6
_0805A8D2:
	ldrh r0, [r4, #8]
	adds r0, #1
_0805A8D6:
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #0xe0
	bls _0805A8E2
	movs r0, #0x20
	strh r0, [r4, #8]
_0805A8E2:
	ldrh r0, [r4, #8]
	cmp r0, #0x60
	bls _0805A8EE
	cmp r0, r1
	bhs _0805A8EE
	strh r1, [r4, #8]
_0805A8EE:
	ldrh r1, [r4, #8]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3e
	bls _0805A906
	adds r0, r1, #0
	subs r0, #0xc1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3e
	bhi _0805A910
_0805A906:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0805A916
_0805A910:
	ldr r0, [r2, #8]
	ldr r1, _0805A958 @ =0xFFFFFBFF
	ands r0, r1
_0805A916:
	str r0, [r2, #8]
	ldr r3, _0805A95C @ =gUnknown_082B48B4
	ldrb r2, [r4, #8]
	lsls r0, r2, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x1c]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #5
	cmp r1, #0
	bge _0805A946
	rsbs r1, r1, #0
_0805A946:
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	ldr r1, _0805A960 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r4, #0x20]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A958: .4byte 0xFFFFFBFF
_0805A95C: .4byte gUnknown_082B48B4
_0805A960: .4byte 0xFFFFF600

	thumb_func_start sub_805A964
sub_805A964: @ 0x0805A964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r7, #0x4c
	ldr r1, [r0, #0x1c]
	asrs r6, r1, #8
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r6, r6, r1
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	movs r0, #0xff
	lsls r0, r0, #1
	mov r8, r0
	b _0805A9F2
_0805A98C:
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0805A9E4 @ =0xFCFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _0805A9BC
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805A9C8
_0805A9BC:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A9E0
_0805A9C8:
	ldr r1, _0805A9E8 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bhi _0805A9EC
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A9EC
_0805A9E0:
	movs r0, #1
	b _0805AA04
	.align 2, 0
_0805A9E4: .4byte 0xFCFF0000
_0805A9E8: .4byte 0xFFFFFEFF
_0805A9EC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805A9F2:
	cmp r4, #1
	bhi _0805AA02
	adds r0, r4, #0
	bl sub_805CD20
	adds r1, r0, #0
	cmp r1, #0
	bne _0805A98C
_0805AA02:
	movs r0, #0
_0805AA04:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805AA10
sub_805AA10: @ 0x0805AA10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	adds r5, r6, #0
	adds r5, #0x4c
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _0805AAAC @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	mov r8, r0
	adds r0, r5, #0
	bl sub_80C033C
	subs r5, #0x28
_0805AA50:
	ldr r0, [r6, #0x14]
	ldr r2, [r6, #0x1c]
	subs r0, r0, r2
	asrs r0, r0, #6
	lsls r3, r7, #4
	muls r0, r3, r0
	adds r2, r2, r0
	asrs r2, r2, #8
	strh r2, [r5, #0x10]
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	adds r2, r2, r0
	strh r2, [r5, #0x10]
	ldr r0, [r6, #0x18]
	ldr r2, [r6, #0x20]
	subs r0, r0, r2
	asrs r0, r0, #6
	muls r0, r3, r0
	adds r2, r2, r0
	asrs r2, r2, #8
	strh r2, [r5, #0x12]
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	adds r2, r2, r0
	strh r2, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _0805AA50
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805AAAC: .4byte gUnknown_03001D10

	thumb_func_start sub_805AAB0
sub_805AAB0: @ 0x0805AAB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x14
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _0805AB0C @ =gUnknown_080D1EE4
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _0805AB10 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AB0C: .4byte gUnknown_080D1EE4
_0805AB10: .4byte gUnknown_03001D10

	thumb_func_start sub_805AB14
sub_805AB14: @ 0x0805AB14
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0805ABD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0805ABD4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805AB42
	cmp r1, #4
	beq _0805AB42
	ldrb r0, [r4]
	cmp r0, #1
	bhi _0805AB42
	adds r0, r4, #0
	bl sub_805ADF8
_0805AB42:
	adds r0, r4, #0
	bl sub_805AE30
	adds r0, r4, #0
	bl sub_805ABE4
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r5, #0
	str r5, [sp]
	ldr r2, _0805ABD8 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _0805AB96
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	strh r5, [r4, #0xc]
	movs r1, #0xff
	strb r1, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805AB96
	movs r0, #2
	strb r0, [r4]
_0805AB96:
	ldrb r1, [r4]
	cmp r1, #0
	beq _0805ABA2
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
_0805ABA2:
	cmp r1, #2
	bne _0805ABC6
	ldrh r0, [r4, #8]
	cmp r0, #0x3b
	bls _0805ABC6
	adds r1, r4, #0
	adds r1, #0x18
	ldr r2, _0805ABDC @ =gUnknown_080D1EE4
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r3, [r1, #8]
	ldr r0, _0805ABD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805ABE0 @ =sub_805ADC8
	str r0, [r1, #8]
_0805ABC6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ABD0: .4byte gCurTask
_0805ABD4: .4byte gUnknown_030008A0
_0805ABD8: .4byte sub_805217C
_0805ABDC: .4byte gUnknown_080D1EE4
_0805ABE0: .4byte sub_805ADC8

	thumb_func_start sub_805ABE4
sub_805ABE4: @ 0x0805ABE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0805AC08:
	cmp r5, #0
	bne _0805AC18
	ldr r0, _0805AC14 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805AC22
	.align 2, 0
_0805AC14: .4byte gUnknown_030008A0
_0805AC18:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805AC22:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805AC6C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805AC70
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805AC70
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805AC68
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805AC68:
	movs r0, #1
	b _0805AC7C
	.align 2, 0
_0805AC6C: .4byte gUnknown_030015C0
_0805AC70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805AC08
	movs r0, #0
_0805AC7C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805AC88
sub_805AC88: @ 0x0805AC88
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x4c
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

	thumb_func_start sub_805ACB4
sub_805ACB4: @ 0x0805ACB4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805AC88
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x4c
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

	thumb_func_start sub_805ACF0
sub_805ACF0: @ 0x0805ACF0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805AD04
sub_805AD04: @ 0x0805AD04
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	adds r5, r0, #0
	mov sl, r1
	mov r8, r2
	mov sb, r3
	ldr r6, [sp, #0x28]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805ADB0 @ =sub_805AB14
	ldr r2, _0805ADB4 @ =0x00004040
	ldr r1, _0805ADB8 @ =sub_805AE74
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	adds r5, r5, r0
	str r5, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r5, #0
	mov r1, r8
	strh r1, [r4, #4]
	mov r1, sb
	strh r1, [r4, #6]
	strb r0, [r4]
	strb r6, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _0805ADBC @ =0x03000044
	adds r1, r3, r0
	ldr r6, _0805ADC0 @ =0x01000002
	add r0, sp, #4
	adds r2, r6, #0
	str r3, [sp, #8]
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #8]
	ldr r1, _0805ADC4 @ =0x0300003C
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805AAB0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADB0: .4byte sub_805AB14
_0805ADB4: .4byte 0x00004040
_0805ADB8: .4byte sub_805AE74
_0805ADBC: .4byte 0x03000044
_0805ADC0: .4byte 0x01000002
_0805ADC4: .4byte 0x0300003C

	thumb_func_start sub_805ADC8
sub_805ADC8: @ 0x0805ADC8
	push {r4, r5, r6, lr}
	ldr r6, _0805ADF4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805AE30
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805ABE4
	cmp r5, #0
	bne _0805ADEE
	ldr r0, [r6]
	bl TaskDestroy
_0805ADEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADF4: .4byte gCurTask

	thumb_func_start sub_805ADF8
sub_805ADF8: @ 0x0805ADF8
	movs r2, #2
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	ldrh r1, [r0, #0xc]
	adds r1, #0x20
	strh r1, [r0, #0xc]
	lsls r2, r2, #0x19
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	adds r1, r3, #0
	lsls r3, r3, #8
	adds r3, r3, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r0, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x11
	ldr r1, [r0, #0x10]
	adds r1, r1, r3
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_805AE30
sub_805AE30: @ 0x0805AE30
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805AE70 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805AE70: .4byte gUnknown_03001D10

	thumb_func_start sub_805AE74
sub_805AE74: @ 0x0805AE74
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Minimole
CreateEntity_Minimole: @ 0x0805AE88
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805AF28 @ =sub_805B02C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805AF2C @ =sub_805B2E0
	str r1, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r2, sb
	str r2, [r4]
	ldrb r0, [r2]
	movs r3, #0
	strb r0, [r4, #5]
	strb r5, [r4, #4]
	movs r5, #0
	strh r6, [r4, #8]
	mov r6, r8
	strh r6, [r4, #0xa]
	ldrb r2, [r2]
	lsls r2, r2, #0xb
	str r2, [r4, #0x18]
	mov r6, sb
	ldrb r0, [r6, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x1c]
	str r2, [r4, #0x10]
	str r0, [r4, #0x14]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x1c]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xc]
	strb r5, [r4, #6]
	add r0, sp, #4
	strh r3, [r0]
	ldr r0, _0805AF30 @ =0x0300007C
	adds r1, r1, r0
	ldr r2, _0805AF34 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805AF38
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF28: .4byte sub_805B02C
_0805AF2C: .4byte sub_805B2E0
_0805AF30: .4byte 0x0300007C
_0805AF34: .4byte 0x01000002

	thumb_func_start sub_805AF38
sub_805AF38: @ 0x0805AF38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x16
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x28
	str r5, [r7, #0x28]
	ldr r4, _0805B024 @ =gUnknown_080D1EF4
	ldr r0, [r4, #0x14]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x10]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805B028 @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r3, #0x1c]
	mov r0, sl
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl sub_80BF44C
	adds r3, r7, #0
	adds r3, #0x50
	str r5, [r7, #0x50]
	ldrh r0, [r4]
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sb
	strb r0, [r3, #0x1c]
	mov r1, sl
	strb r1, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B024: .4byte gUnknown_080D1EF4
_0805B028: .4byte gUnknown_03001D10

	thumb_func_start sub_805B02C
sub_805B02C: @ 0x0805B02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805B07C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _0805B080 @ =0x03000020
	adds r0, r6, r1
	ldr r2, _0805B084 @ =0x03000008
	adds r4, r6, r2
	subs r1, #0x1a
	adds r5, r6, r1
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_805CD70
	ldr r2, _0805B088 @ =0x03000018
	adds r0, r6, r2
	subs r2, #8
	adds r1, r6, r2
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_805CD70
	adds r0, r7, #0
	bl sub_805B2A4
	cmp r0, #1
	bne _0805B08C
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0805B0E0
	.align 2, 0
_0805B07C: .4byte gCurTask
_0805B080: .4byte 0x03000020
_0805B084: .4byte 0x03000008
_0805B088: .4byte 0x03000018
_0805B08C:
	adds r0, r7, #0
	bl sub_805B158
	ldr r0, _0805B0CC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B0E0
	cmp r1, #4
	beq _0805B0E0
	adds r0, r7, #0
	bl sub_805B22C
	cmp r0, #1
	bne _0805B0E0
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	bne _0805B0DC
	ldr r0, _0805B0D0 @ =0x03000050
	adds r2, r6, r0
	ldr r1, _0805B0D4 @ =gUnknown_080D1EF4
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0805B0D8 @ =sub_805B1CC
	str r0, [r1, #8]
	b _0805B0E0
	.align 2, 0
_0805B0CC: .4byte gUnknown_030008A0
_0805B0D0: .4byte 0x03000050
_0805B0D4: .4byte gUnknown_080D1EF4
_0805B0D8: .4byte sub_805B1CC
_0805B0DC:
	subs r0, #1
	strh r0, [r7, #0xe]
_0805B0E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B0EC
sub_805B0EC: @ 0x0805B0EC
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0xc]
	cmp r1, #0x7f
	bhi _0805B144
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805B106
	adds r0, r1, #2
	b _0805B108
_0805B106:
	adds r0, r1, #1
_0805B108:
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xc]
	cmp r0, #0x40
	bls _0805B11E
	adds r2, r3, #0
	adds r2, #0x50
	ldr r1, _0805B13C @ =gUnknown_080D1EF4
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
_0805B11E:
	ldr r1, _0805B140 @ =gUnknown_082B48B4
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	ldr r1, [r3, #0x14]
	subs r1, r1, r0
	str r1, [r3, #0x1c]
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x18]
	movs r0, #0
	b _0805B154
	.align 2, 0
_0805B13C: .4byte gUnknown_080D1EF4
_0805B140: .4byte gUnknown_082B48B4
_0805B144:
	movs r0, #0
	strh r0, [r3, #0xc]
	ldr r0, [r3, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	movs r0, #1
_0805B154:
	pop {r1}
	bx r1

	thumb_func_start sub_805B158
sub_805B158: @ 0x0805B158
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x50
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _0805B1C8 @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	adds r1, #0x14
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_80C033C
	subs r7, #0x28
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B1C8: .4byte gUnknown_03001D10

	thumb_func_start sub_805B1CC
sub_805B1CC: @ 0x0805B1CC
	push {r4, r5, lr}
	ldr r5, _0805B1F4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805B158
	adds r0, r4, #0
	bl sub_805B2A4
	cmp r0, #1
	bne _0805B1F8
	ldr r0, [r5]
	bl TaskDestroy
	b _0805B21E
	.align 2, 0
_0805B1F4: .4byte gCurTask
_0805B1F8:
	ldr r0, _0805B224 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B21E
	cmp r1, #4
	beq _0805B21E
	adds r0, r4, #0
	bl sub_805B0EC
	cmp r0, #1
	bne _0805B21E
	movs r0, #0x3c
	strh r0, [r4, #0xe]
	ldr r1, [r5]
	ldr r0, _0805B228 @ =sub_805B02C
	str r0, [r1, #8]
_0805B21E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B224: .4byte gUnknown_030008A0
_0805B228: .4byte sub_805B02C

	thumb_func_start sub_805B22C
sub_805B22C: @ 0x0805B22C
	push {r4, r5, lr}
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0805B25C
_0805B23C:
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	subs r1, r0, r5
	cmp r1, #0
	blt _0805B24C
	cmp r1, #0x63
	ble _0805B252
	b _0805B256
_0805B24C:
	subs r0, r5, r0
	cmp r0, #0x63
	bgt _0805B256
_0805B252:
	movs r0, #1
	b _0805B26C
_0805B256:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805B25C:
	cmp r4, #1
	bhi _0805B26A
	adds r0, r4, #0
	bl sub_805CD20
	cmp r0, #0
	bne _0805B23C
_0805B26A:
	movs r0, #0
_0805B26C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B274
sub_805B274: @ 0x0805B274
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x50
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r2, r2, r3
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1

	thumb_func_start sub_805B2A4
sub_805B2A4: @ 0x0805B2A4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805B274
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x50
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

	thumb_func_start sub_805B2E0
sub_805B2E0: @ 0x0805B2E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Takkon
CreateEntity_Takkon: @ 0x0805B2F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805B36C @ =sub_805B430
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805B370 @ =sub_805B880
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	str r1, [r7, #0x14]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x1c]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B374
	movs r0, #0xff
	b _0805B376
	.align 2, 0
_0805B36C: .4byte sub_805B430
_0805B370: .4byte sub_805B880
_0805B374:
	movs r0, #1
_0805B376:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _0805B3A8 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805B3AC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B3A8: .4byte 0x01000002

	thumb_func_start sub_805B3AC
sub_805B3AC: @ 0x0805B3AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x24
	str r0, [r4, #0x24]
	ldr r1, _0805B428 @ =gUnknown_080D1F0C
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805B42C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805B416
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805B416:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B428: .4byte gUnknown_080D1F0C
_0805B42C: .4byte gUnknown_03001D10

	thumb_func_start sub_805B430
sub_805B430: @ 0x0805B430
	push {r4, r5, r6, lr}
	ldr r5, _0805B450 @ =gCurTask
	ldr r0, [r5]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_805B844
	cmp r0, #1
	bne _0805B454
	ldr r0, [r5]
	bl TaskDestroy
	b _0805B4DC
	.align 2, 0
_0805B450: .4byte gCurTask
_0805B454:
	adds r0, r4, #0
	bl sub_805B77C
	ldr r0, _0805B498 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B4A8
	cmp r1, #4
	beq _0805B4A8
	adds r0, r4, #0
	bl sub_805B738
	adds r0, r4, #0
	bl sub_805B7C0
	cmp r0, #1
	bne _0805B4A8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0805B4A8
	ldr r0, _0805B49C @ =0x03000024
	adds r2, r6, r0
	ldr r1, _0805B4A0 @ =gUnknown_080D1F0C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r1, [r5]
	ldr r0, _0805B4A4 @ =sub_805B4E4
	str r0, [r1, #8]
	b _0805B4DC
	.align 2, 0
_0805B498: .4byte gUnknown_030008A0
_0805B49C: .4byte 0x03000024
_0805B4A0: .4byte gUnknown_080D1F0C
_0805B4A4: .4byte sub_805B4E4
_0805B4A8:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0805B4B6
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _0805B4DC
_0805B4B6:
	adds r2, r4, #0
	adds r2, #0x24
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805B4D4
	ldr r0, _0805B4D0 @ =0xFFFFFBFF
	ands r1, r0
	b _0805B4D6
	.align 2, 0
_0805B4D0: .4byte 0xFFFFFBFF
_0805B4D4:
	orrs r1, r3
_0805B4D6:
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r4, #6]
_0805B4DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B4E4
sub_805B4E4: @ 0x0805B4E4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805B50C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805B77C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_805B844
	cmp r0, #1
	bne _0805B510
	ldr r0, [r7]
	bl TaskDestroy
	b _0805B550
	.align 2, 0
_0805B50C: .4byte gCurTask
_0805B510:
	ldr r0, _0805B558 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B550
	cmp r1, #4
	beq _0805B550
	cmp r6, #0
	bne _0805B550
	ldr r0, _0805B55C @ =0x03000024
	adds r2, r5, r0
	ldr r1, _0805B560 @ =gUnknown_080D1F0C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #1
	strb r0, [r4, #6]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	bl sub_805B894
	ldr r1, [r7]
	ldr r0, _0805B564 @ =sub_805B430
	str r0, [r1, #8]
_0805B550:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B558: .4byte gUnknown_030008A0
_0805B55C: .4byte 0x03000024
_0805B560: .4byte gUnknown_080D1F0C
_0805B564: .4byte sub_805B430

	thumb_func_start sub_805B568
sub_805B568: @ 0x0805B568
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	ldr r2, _0805B5C8 @ =gUnknown_080D1F1C
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r3, _0805B5CC @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B5C8: .4byte gUnknown_080D1F1C
_0805B5CC: .4byte gUnknown_03001D10

	thumb_func_start sub_805B5D0
sub_805B5D0: @ 0x0805B5D0
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0805B65C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _0805B660 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B5FA
	cmp r1, #4
	beq _0805B5FA
	adds r0, r4, #0
	bl sub_805B91C
_0805B5FA:
	adds r0, r4, #0
	bl sub_805B928
	adds r0, r4, #0
	bl sub_805B670
	cmp r0, #1
	bne _0805B60C
	movs r5, #1
_0805B60C:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldrh r2, [r4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #2]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r6, #0
	str r6, [sp]
	ldr r2, _0805B664 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _0805B636
	movs r5, #1
_0805B636:
	cmp r5, #1
	bne _0805B652
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0805B668 @ =gUnknown_080D1F1C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r6, [r1, #8]
	ldr r0, _0805B65C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805B66C @ =sub_805B8EC
	str r0, [r1, #8]
_0805B652:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B65C: .4byte gCurTask
_0805B660: .4byte gUnknown_030008A0
_0805B664: .4byte sub_805217C
_0805B668: .4byte gUnknown_080D1F1C
_0805B66C: .4byte sub_805B8EC

	thumb_func_start sub_805B670
sub_805B670: @ 0x0805B670
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r3, r0, #0
	movs r4, #0
	ldr r0, [r3, #4]
	asrs r7, r0, #8
	ldr r0, [r3, #8]
	asrs r6, r0, #8
	ldrh r0, [r3]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r6, r6, r0
	movs r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #0xfd
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xfc
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #4
	strb r0, [r1]
	subs r0, #7
	mov r1, r8
	str r0, [r1, #0x28]
	movs r5, #0
_0805B6B8:
	cmp r5, #0
	bne _0805B6C8
	ldr r0, _0805B6C4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805B6D2
	.align 2, 0
_0805B6C4: .4byte gUnknown_030008A0
_0805B6C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805B6D2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805B71C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805B720
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805B720
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805B718
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805B718:
	movs r0, #1
	b _0805B72C
	.align 2, 0
_0805B71C: .4byte gUnknown_030015C0
_0805B720:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805B6B8
	movs r0, #0
_0805B72C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805B738
sub_805B738: @ 0x0805B738
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805B75E
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bge _0805B772
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	ble _0805B772
	b _0805B770
_0805B75E:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x1c]
	cmp r0, r1
	blt _0805B772
	ldr r3, _0805B778 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	bge _0805B772
_0805B770:
	str r1, [r2, #0x14]
_0805B772:
	pop {r0}
	bx r0
	.align 2, 0
_0805B778: .4byte 0xFFFFFF00

	thumb_func_start sub_805B77C
sub_805B77C: @ 0x0805B77C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x24
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B7BC @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805B7BC: .4byte gUnknown_03001D10

	thumb_func_start sub_805B7C0
sub_805B7C0: @ 0x0805B7C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x24
	ldr r1, [r0, #0x14]
	asrs r5, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0805B7FE
_0805B7D4:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805B7E8
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _0805B7EE
_0805B7E8:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_0805B7EE:
	subs r0, #1
	cmp r0, #0x62
	bhi _0805B7F8
	movs r0, #1
	b _0805B810
_0805B7F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805B7FE:
	cmp r4, #1
	bhi _0805B80E
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _0805B7D4
_0805B80E:
	movs r0, #0
_0805B810:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B818
sub_805B818: @ 0x0805B818
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x24
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x14]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B844
sub_805B844: @ 0x0805B844
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805B818
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

	thumb_func_start sub_805B880
sub_805B880: @ 0x0805B880
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805B894
sub_805B894: @ 0x0805B894
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0805B8E0 @ =sub_805B5D0
	ldr r2, _0805B8E4 @ =0x00004040
	ldr r1, _0805B8E8 @ =sub_805B96C
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r6, [r0, #4]
	mov r1, r8
	str r1, [r0, #8]
	strh r4, [r0]
	strh r5, [r0, #2]
	bl sub_805B568
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8E0: .4byte sub_805B5D0
_0805B8E4: .4byte 0x00004040
_0805B8E8: .4byte sub_805B96C

	thumb_func_start sub_805B8EC
sub_805B8EC: @ 0x0805B8EC
	push {r4, r5, r6, lr}
	ldr r6, _0805B918 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805B928
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805B670
	cmp r5, #0
	bne _0805B912
	ldr r0, [r6]
	bl TaskDestroy
_0805B912:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B918: .4byte gCurTask

	thumb_func_start sub_805B91C
sub_805B91C: @ 0x0805B91C
	ldr r1, [r0, #8]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_805B928
sub_805B928: @ 0x0805B928
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B968 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805B968: .4byte gUnknown_03001D10

	thumb_func_start sub_805B96C
sub_805B96C: @ 0x0805B96C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805B980
sub_805B980: @ 0x0805B980
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x14
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x30
	str r1, [r4, #0x30]
	ldr r2, _0805B9EC @ =gUnknown_080D1F2C
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B9F0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x24]
	asrs r2, r2, #8
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B9EC: .4byte gUnknown_080D1F2C
_0805B9F0: .4byte gUnknown_03001D10

	thumb_func_start sub_805B9F4
sub_805B9F4: @ 0x0805B9F4
	push {r4, lr}
	ldr r0, _0805BA30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0805BA34 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805BA1A
	cmp r1, #4
	beq _0805BA1A
	adds r0, r4, #0
	bl sub_805BF04
_0805BA1A:
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BA38
	ldr r0, _0805BA30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805BA66
	.align 2, 0
_0805BA30: .4byte gCurTask
_0805BA34: .4byte gUnknown_030008A0
_0805BA38:
	adds r0, r4, #0
	bl sub_805BF7C
	adds r0, r4, #0
	bl sub_805BD08
	cmp r0, #1
	bne _0805BA66
	adds r2, r4, #0
	adds r2, #0x30
	ldr r1, _0805BA6C @ =gUnknown_080D1F2C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x2c]
	ldr r0, _0805BA70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805BA74 @ =sub_805BEAC
	str r0, [r1, #8]
_0805BA66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA6C: .4byte gUnknown_080D1F2C
_0805BA70: .4byte gCurTask
_0805BA74: .4byte sub_805BEAC

	thumb_func_start sub_805BA78
sub_805BA78: @ 0x0805BA78
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0805BAA0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805BF7C
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BAA4
	ldr r0, [r6]
	bl TaskDestroy
	b _0805BAE6
	.align 2, 0
_0805BAA0: .4byte gCurTask
_0805BAA4:
	ldr r0, _0805BAF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805BAE6
	cmp r1, #4
	beq _0805BAE6
	adds r0, r4, #0
	bl sub_805BB80
	cmp r0, #1
	bne _0805BAE6
	ldr r0, _0805BAF4 @ =0x03000030
	adds r2, r5, r0
	ldr r1, _0805BAF8 @ =gUnknown_080D1F2C
	ldrh r0, [r1, #0x18]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	mov r0, sp
	strh r3, [r0]
	ldr r0, _0805BAFC @ =0x0300005C
	adds r1, r5, r0
	ldr r2, _0805BB00 @ =0x01000002
	mov r0, sp
	bl sub_80C7520
	ldr r1, [r6]
	ldr r0, _0805BB04 @ =sub_805BB08
	str r0, [r1, #8]
_0805BAE6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BAF0: .4byte gUnknown_030008A0
_0805BAF4: .4byte 0x03000030
_0805BAF8: .4byte gUnknown_080D1F2C
_0805BAFC: .4byte 0x0300005C
_0805BB00: .4byte 0x01000002
_0805BB04: .4byte sub_805BB08

	thumb_func_start sub_805BB08
sub_805BB08: @ 0x0805BB08
	push {r4, r5, r6, lr}
	ldr r6, _0805BB28 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BB2C
	ldr r0, [r6]
	bl TaskDestroy
	b _0805BB7A
	.align 2, 0
_0805BB28: .4byte gCurTask
_0805BB2C:
	ldr r0, _0805BB64 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805BB74
	cmp r1, #4
	beq _0805BB74
	adds r0, r4, #0
	bl sub_805BC24
	cmp r0, #1
	bne _0805BB74
	ldr r0, _0805BB68 @ =0x03000030
	adds r2, r5, r0
	ldr r1, _0805BB6C @ =gUnknown_080D1F2C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	adds r0, r4, #0
	bl sub_805BF7C
	ldr r1, [r6]
	ldr r0, _0805BB70 @ =sub_805B9F4
	str r0, [r1, #8]
	b _0805BB7A
	.align 2, 0
_0805BB64: .4byte gUnknown_030008A0
_0805BB68: .4byte 0x03000030
_0805BB6C: .4byte gUnknown_080D1F2C
_0805BB70: .4byte sub_805B9F4
_0805BB74:
	adds r0, r4, #0
	bl sub_805BF7C
_0805BB7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805BB80
sub_805BB80: @ 0x0805BB80
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #2
	movs r4, #0
	ldrh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	ldr r3, [r2, #0x14]
	subs r0, r3, r0
	ldr r1, [r2, #0x1c]
	cmp r1, r0
	bge _0805BBAC
	ldr r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r2, #0x24]
	ldrh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	subs r0, r3, r0
	cmp r1, r0
	ble _0805BBC2
	b _0805BBBE
_0805BBAC:
	ldr r1, [r2, #0x24]
	ldr r0, _0805BBE8 @ =0xFFFFFC00
	adds r1, r1, r0
	str r1, [r2, #0x24]
	ldrh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	subs r0, r3, r0
	cmp r1, r0
	bge _0805BBC2
_0805BBBE:
	str r0, [r2, #0x24]
	movs r4, #1
_0805BBC2:
	ldr r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805BBF0
	adds r1, r5, #0
	adds r1, #8
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x28]
	ldr r3, _0805BBEC @ =0xFFFFC400
	adds r0, r0, r3
	cmp r1, r0
	bgt _0805BC12
	b _0805BC0A
	.align 2, 0
_0805BBE8: .4byte 0xFFFFFC00
_0805BBEC: .4byte 0xFFFFC400
_0805BBF0:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2, #0x20]
	adds r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x28]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r0, r3
	cmp r1, r0
	blt _0805BC12
_0805BC0A:
	str r0, [r2, #0x20]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805BC12:
	cmp r4, #2
	beq _0805BC1A
	movs r0, #0
	b _0805BC1C
_0805BC1A:
	movs r0, #1
_0805BC1C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805BC24
sub_805BC24: @ 0x0805BC24
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #0x28]
	ldr r0, [r1, #0x20]
	cmp r2, r0
	bgt _0805BC44
	ldr r4, _0805BC40 @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r1, #0x20]
	cmp r2, r0
	blt _0805BC54
	b _0805BC50
	.align 2, 0
_0805BC40: .4byte 0xFFFFFF00
_0805BC44:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #0x20]
	cmp r2, r0
	bgt _0805BC54
_0805BC50:
	str r2, [r1, #0x20]
	movs r3, #1
_0805BC54:
	ldr r0, [r1, #0x24]
	ldr r2, [r1, #0x2c]
	cmp r0, r2
	ble _0805BC68
	ldr r2, _0805BC64 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x24]
	b _0805BC70
	.align 2, 0
_0805BC64: .4byte 0xFFFFFF00
_0805BC68:
	str r2, [r1, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0805BC70:
	cmp r3, #2
	beq _0805BC78
	movs r0, #0
	b _0805BC7A
_0805BC78:
	movs r0, #1
_0805BC7A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805BC80
sub_805BC80: @ 0x0805BC80
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r2, #0x30
	movs r4, #0
	ldr r1, [r0, #0x20]
	asrs r6, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r6, r6, r0
	movs r5, #0
	ldr r7, _0805BCA0 @ =gUnknown_030015C0
_0805BC96:
	cmp r5, #0
	bne _0805BCA8
	ldr r0, _0805BCA4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805BCB2
	.align 2, 0
_0805BCA0: .4byte gUnknown_030015C0
_0805BCA4: .4byte gUnknown_030008A0
_0805BCA8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805BCB2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805BCE4
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r6
	blt _0805BCDA
	ldr r0, _0805BD04 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #8]
_0805BCDA:
	ldr r1, [r2, #8]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0805BCF4
_0805BCE4:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805BCF4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r2, #8]
_0805BCF4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805BC96
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BD04: .4byte 0xFFFFFBFF

	thumb_func_start sub_805BD08
sub_805BD08: @ 0x0805BD08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r4, #0x24]
	asrs r7, r0, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	movs r6, #0
	b _0805BDA2
_0805BD2A:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	mov r2, r8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r0, r1, r0
	ldr r1, [r4, #0x24]
	subs r2, r0, r1
	cmp r2, #0
	blt _0805BD5E
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	ble _0805BD68
	b _0805BD9C
_0805BD5E:
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0805BD9C
_0805BD68:
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805BD84
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x20]
	cmp r0, r2
	ble _0805BD92
	b _0805BD9C
_0805BD84:
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x20]
	cmp r0, r2
	blt _0805BD9C
_0805BD92:
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	movs r0, #1
	b _0805BDB4
_0805BD9C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0805BDA2:
	cmp r6, #1
	bhi _0805BDB2
	adds r0, r6, #0
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805BD2A
_0805BDB2:
	movs r0, #0
_0805BDB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Jousun_0
CreateEntity_Jousun_0: @ 0x0805BDC0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805BE28 @ =sub_805B9F4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805BE2C @ =sub_805C028
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805BF38
	adds r0, r4, #0
	bl sub_805B980
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BE28: .4byte sub_805B9F4
_0805BE2C: .4byte sub_805C028

	thumb_func_start CreateEntity_Jousun_1
CreateEntity_Jousun_1: @ 0x0805BE30
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805BEA4 @ =sub_805B9F4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805BEA8 @ =sub_805C028
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805BF38
	adds r0, r4, #0
	bl sub_805B980
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x38]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BEA4: .4byte sub_805B9F4
_0805BEA8: .4byte sub_805C028

	thumb_func_start sub_805BEAC
sub_805BEAC: @ 0x0805BEAC
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805BED4 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_805BF7C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BED8
	ldr r0, [r7]
	bl TaskDestroy
	b _0805BEF0
	.align 2, 0
_0805BED4: .4byte gCurTask
_0805BED8:
	cmp r5, #0
	bne _0805BEF0
	ldr r0, _0805BEF8 @ =0x03000030
	adds r2, r6, r0
	ldr r1, _0805BEFC @ =gUnknown_080D1F2C
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805BF00 @ =sub_805BA78
	str r0, [r1, #8]
_0805BEF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BEF8: .4byte 0x03000030
_0805BEFC: .4byte gUnknown_080D1F2C
_0805BF00: .4byte sub_805BA78

	thumb_func_start sub_805BF04
sub_805BF04: @ 0x0805BF04
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	cmp r0, #0xff
	bhi _0805BF12
	adds r0, #1
	b _0805BF14
_0805BF12:
	movs r0, #0
_0805BF14:
	strh r0, [r2, #6]
	ldr r0, [r2, #0x18]
	str r0, [r2, #0x20]
	ldr r1, _0805BF34 @ =gUnknown_082B48B4
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [r2, #0x1c]
	adds r1, r1, r0
	str r1, [r2, #0x24]
	pop {r0}
	bx r0
	.align 2, 0
_0805BF34: .4byte gUnknown_082B48B4

	thumb_func_start sub_805BF38
sub_805BF38: @ 0x0805BF38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [sp, #0x14]
	str r1, [r4]
	ldrb r0, [r1]
	movs r5, #0
	strb r0, [r4, #5]
	strb r6, [r4, #4]
	strh r2, [r4, #0xa]
	strh r3, [r4, #0xc]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r4, #0x20]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x24]
	str r2, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	adds r4, #0x5c
	ldr r2, _0805BF78 @ =0x01000002
	adds r1, r4, #0
	bl sub_80C7520
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BF78: .4byte 0x01000002

	thumb_func_start sub_805BF7C
sub_805BF7C: @ 0x0805BF7C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x30
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805BFBC @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805BFBC: .4byte gUnknown_03001D10

	thumb_func_start sub_805BFC0
sub_805BFC0: @ 0x0805BFC0
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x30
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
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

	thumb_func_start sub_805BFEC
sub_805BFEC: @ 0x0805BFEC
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805BFC0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x30
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
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

	thumb_func_start sub_805C028
sub_805C028: @ 0x0805C028
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805C03C
sub_805C03C: @ 0x0805C03C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _0805C068 @ =gUnknown_03001CFC
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r0, r2
	ldr r1, _0805C06C @ =0x03000028
	adds r3, r0, r1
	ldr r1, _0805C070 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r4, r0, r2
	movs r7, #0x8f
	lsls r7, r7, #3
	mov ip, r5
	movs r2, #0
	mov r8, r1
	b _0805C07C
	.align 2, 0
_0805C068: .4byte gUnknown_03001CFC
_0805C06C: .4byte 0x03000028
_0805C070: .4byte gCurTask
_0805C074:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #0x14
_0805C07C:
	cmp r2, #0x1f
	bhi _0805C08E
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	beq _0805C08C
	cmp r2, #0x1f
	bne _0805C074
	movs r2, #0
_0805C08C:
	mov ip, r2
_0805C08E:
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	movs r1, #1
	ands r0, r1
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	adds r1, r0, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #1
	bls _0805C0AE
	movs r0, #1
	b _0805C0B0
_0805C0AE:
	ldrb r0, [r1]
_0805C0B0:
	strh r0, [r3, #0xe]
	movs r0, #0xb4
	strh r0, [r3, #0xc]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldrh r1, [r4, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #4]
	cmp r7, #0
	blt _0805C100
	asrs r0, r7, #8
	cmp r0, #5
	ble _0805C0E4
	rsbs r0, r0, #0
	adds r2, r0, #0
	adds r2, #9
	b _0805C0E6
_0805C0E4:
	adds r2, r0, #0
_0805C0E6:
	ldr r0, _0805C134 @ =gUnknown_082B48B4
	movs r1, #0xff
	ands r1, r7
	lsls r1, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r1, r5
	adds r1, r1, r0
	movs r0, #0
	ldrsh r5, [r1, r0]
	asrs r5, r2
	asrs r0, r5, #1
	subs r5, r5, r0
_0805C100:
	movs r0, #0
	strh r0, [r3, #8]
	strh r5, [r3, #0xa]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0805C118
	rsbs r0, r5, #0
	strh r0, [r3, #0xa]
_0805C118:
	movs r0, #3
	mov r1, ip
	ands r1, r0
	strh r1, [r3, #0x10]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C134: .4byte gUnknown_082B48B4

	thumb_func_start sub_805C138
sub_805C138: @ 0x0805C138
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	movs r6, #0
	movs r5, #0
	ldr r1, _0805C190 @ =0x0000053A
	strh r1, [r0, #0xc]
	strb r6, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	ldr r3, _0805C194 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805C190: .4byte 0x0000053A
_0805C194: .4byte gUnknown_03001D10

	thumb_func_start sub_805C198
sub_805C198: @ 0x0805C198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805C220 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	mov sl, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	mov sb, r1
	lsls r2, r1, #8
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	ldr r0, _0805C224 @ =gUnknown_030008A0
	ldrb r3, [r0, #0xa]
	cmp r3, #7
	beq _0805C234
	cmp r3, #9
	beq _0805C23A
	ldrh r6, [r4, #4]
	cmp r6, #0
	bne _0805C234
	ldrh r7, [r4, #6]
	ldrh r0, [r4, #8]
	mov r8, r0
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0805C256
	ldr r0, _0805C228 @ =sub_805C03C
	ldr r1, _0805C22C @ =sub_805CF8C
	str r1, [sp]
	movs r1, #0x14
	ldr r2, _0805C230 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strb r6, [r0]
	str r5, [r0, #0x10]
	mov r1, sl
	str r1, [r0, #8]
	mov r1, sb
	str r1, [r0, #0xc]
	strh r7, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	b _0805C256
	.align 2, 0
_0805C220: .4byte gCurTask
_0805C224: .4byte gUnknown_030008A0
_0805C228: .4byte sub_805C03C
_0805C22C: .4byte sub_805CF8C
_0805C230: .4byte 0x00004040
_0805C234:
	ldrb r0, [r0, #0xa]
	cmp r0, #9
	bne _0805C25A
_0805C23A:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0805C25A
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r4, #0x14]
	adds r2, #0x2a
	ldrb r2, [r2]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	bl sub_803C12C
_0805C256:
	movs r0, #1
	strb r0, [r4, #5]
_0805C25A:
	adds r0, r4, #0
	bl sub_805D058
	cmp r0, #0
	bne _0805C26C
	ldr r0, _0805C27C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805C26C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C27C: .4byte gCurTask

	thumb_func_start sub_805C280
sub_805C280: @ 0x0805C280
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, [r7, #0x10]
	str r1, [sp, #4]
	lsls r0, r1, #8
	ldr r3, [r7, #0x14]
	mov sl, r3
	lsls r2, r3, #8
	ldrh r1, [r7, #0xc]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [r7, #0x1c]
	ldr r1, _0805C328 @ =gUnknown_03001D10
	ldr r6, [r1]
	ldrh r0, [r3, #0x10]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r1, #4]
	ldrh r0, [r3, #0x12]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0805C3AC
	ldr r0, _0805C32C @ =gUnknown_030008A0
	ldrb r0, [r0, #0xa]
	cmp r0, #9
	beq _0805C33C
	lsls r5, r5, #0x10
	asrs r5, r5, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #8
	ldr r0, [r7, #0x18]
	mov sb, r0
	ldr r0, _0805C330 @ =sub_805C198
	ldr r1, _0805C334 @ =sub_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C338 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	str r5, [r0, #0xc]
	str r4, [r0, #0x10]
	mov r3, r8
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	mov r4, sb
	str r4, [r0, #0x14]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl sub_80BA57C
	b _0805C38A
	.align 2, 0
_0805C328: .4byte gUnknown_03001D10
_0805C32C: .4byte gUnknown_030008A0
_0805C330: .4byte sub_805C198
_0805C334: .4byte sub_805D09C
_0805C338: .4byte 0x00004040
_0805C33C:
	movs r0, #0x10
	ldrsh r5, [r3, r0]
	adds r5, r5, r6
	lsls r5, r5, #8
	movs r0, #0x12
	ldrsh r4, [r3, r0]
	adds r4, r4, r1
	lsls r4, r4, #8
	ldr r1, [r7, #0x18]
	mov sb, r1
	ldr r0, _0805C39C @ =sub_805C198
	ldr r1, _0805C3A0 @ =sub_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C3A4 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	str r5, [r0, #0xc]
	str r4, [r0, #0x10]
	mov r4, r8
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	mov r5, sb
	str r5, [r0, #0x14]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl sub_80BA57C
_0805C38A:
	ldr r0, _0805C3A8 @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _0805C394
	b _0805C4FA
_0805C394:
	ldr r0, [r7]
	bl sub_8027578
	b _0805C4FA
	.align 2, 0
_0805C39C: .4byte sub_805C198
_0805C3A0: .4byte sub_805D09C
_0805C3A4: .4byte 0x00004040
_0805C3A8: .4byte gUnknown_030008A0
_0805C3AC:
	ldr r0, [r7]
	ldrb r1, [r0]
	ldr r3, _0805C468 @ =gUnknown_030008A0
	ldrb r0, [r3, #3]
	cmp r0, #4
	bhi _0805C3BA
	b _0805C4D4
_0805C3BA:
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	movs r0, #6
	rsbs r0, r0, #0
	cmp r6, r0
	bge _0805C3C8
	b _0805C4D4
_0805C3C8:
	adds r0, #3
	cmp r6, r0
	ble _0805C3D0
	b _0805C4D4
_0805C3D0:
	ldrb r0, [r3, #0xa]
	cmp r0, #9
	beq _0805C484
	ldrh r4, [r7, #0xc]
	ldrh r5, [r7, #0xe]
	ldr r0, [r7, #0x18]
	mov sb, r0
	ldr r0, _0805C46C @ =sub_805C198
	ldr r1, _0805C470 @ =sub_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C474 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r3, #0
	mov r8, r3
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	ldr r1, [sp, #4]
	str r1, [r0, #0xc]
	mov r3, sl
	str r3, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	mov r4, sb
	str r4, [r0, #0x14]
	mov r5, r8
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl sub_80BA57C
	ldrh r0, [r7, #0xc]
	mov sb, r0
	ldrh r1, [r7, #0xe]
	mov sl, r1
	ldr r5, [r7, #0x10]
	ldr r7, [r7, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _0805C478 @ =gUnknown_03001DA0
	adds r4, r0, r1
	cmp r4, #0
	beq _0805C4FA
	ldr r0, _0805C47C @ =sub_805C03C
	ldr r1, _0805C480 @ =sub_805CF8C
	str r1, [sp]
	movs r1, #0x14
	ldr r2, _0805C474 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	mov r1, r8
	strb r1, [r0]
	str r4, [r0, #0x10]
	str r5, [r0, #8]
	str r7, [r0, #0xc]
	mov r3, sb
	strh r3, [r0, #2]
	mov r4, sl
	strh r4, [r0, #4]
	b _0805C4FA
	.align 2, 0
_0805C468: .4byte gUnknown_030008A0
_0805C46C: .4byte sub_805C198
_0805C470: .4byte sub_805D09C
_0805C474: .4byte 0x00004040
_0805C478: .4byte gUnknown_03001DA0
_0805C47C: .4byte sub_805C03C
_0805C480: .4byte sub_805CF8C
_0805C484:
	ldrh r4, [r7, #0xc]
	ldrh r5, [r7, #0xe]
	ldr r7, [r7, #0x18]
	ldr r0, _0805C4C8 @ =sub_805C198
	ldr r1, _0805C4CC @ =sub_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C4D0 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	ldr r3, [sp, #4]
	str r3, [r0, #0xc]
	mov r1, sl
	str r1, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	str r7, [r0, #0x14]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl sub_80BA57C
	b _0805C4FA
	.align 2, 0
_0805C4C8: .4byte sub_805C198
_0805C4CC: .4byte sub_805D09C
_0805C4D0: .4byte 0x00004040
_0805C4D4:
	ldr r3, [r7, #0x1c]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r5, #0x10
	ldrsh r2, [r3, r5]
	movs r4, #0x12
	ldrsh r3, [r3, r4]
	bl sub_805CF90
	cmp r0, #0
	bne _0805C4FE
	ldr r1, [r7]
	cmp r1, #0
	beq _0805C4FA
	ldrb r0, [r7, #8]
	strb r0, [r1]
_0805C4FA:
	movs r0, #1
	b _0805C500
_0805C4FE:
	movs r0, #0
_0805C500:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805C510
sub_805C510: @ 0x0805C510
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, _0805C540 @ =gUnknown_030008A0
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _0805C544 @ =0x03000020
	adds r3, r1, r2
	movs r4, #0
	mov sb, r4
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805C548
	movs r0, #0
	b _0805C62E
	.align 2, 0
_0805C540: .4byte gUnknown_030008A0
_0805C544: .4byte 0x03000020
_0805C548:
	mov r0, ip
	adds r0, #0x24
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r1, ip
	adds r1, #0x26
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C562
	subs r0, r1, r2
_0805C562:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	mov r0, ip
	adds r0, #0x25
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r1, ip
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C582
	subs r0, r1, r2
_0805C582:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	adds r0, r3, #0
	adds r0, #0x2c
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C5A2
	subs r0, r1, r2
_0805C5A2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r3, #0
	adds r0, #0x2d
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C5C2
	subs r0, r1, r2
_0805C5C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r6, #0
	bne _0805C5D0
	cmp r7, #0
	beq _0805C62C
_0805C5D0:
	mov r5, ip
	movs r0, #0x10
	ldrsh r4, [r5, r0]
	movs r1, #0x10
	ldrsh r2, [r3, r1]
	cmp r4, r2
	bgt _0805C5EC
	adds r0, r4, #0
	adds r0, r0, r6
	adds r1, r2, #0
	cmp r0, r1
	bge _0805C5FC
	cmp r4, r2
	blt _0805C62C
_0805C5EC:
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	add r0, sl
	mov r2, ip
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	cmp r0, r1
	blt _0805C62C
_0805C5FC:
	mov r5, ip
	movs r0, #0x12
	ldrsh r4, [r5, r0]
	movs r1, #0x12
	ldrsh r2, [r3, r1]
	cmp r4, r2
	bgt _0805C618
	adds r0, r4, #0
	adds r0, r0, r7
	adds r1, r2, #0
	cmp r0, r1
	bge _0805C628
	cmp r4, r2
	blt _0805C62C
_0805C618:
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	add r0, r8
	mov r2, ip
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _0805C62C
_0805C628:
	movs r4, #1
	mov sb, r4
_0805C62C:
	mov r0, sb
_0805C62E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805C63C
sub_805C63C: @ 0x0805C63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	asrs r7, r0, #8
	ldr r0, [r4, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r4, #0x1c]
	mov r8, r1
	lsls r2, r7, #8
	lsls r1, r6, #8
	mov r3, r8
	ldrh r0, [r3, #0xc]
	ldr r3, _0805C6A8 @ =0x000004B1
	mov sb, r3
	cmp r0, sb
	bne _0805C67E
	ldr r0, _0805C6AC @ =0xFFFFF000
	adds r1, r1, r0
	adds r2, r2, r0
_0805C67E:
	adds r0, r2, #0
	bl sub_8004D68
	mov r1, r8
	ldrh r0, [r1, #0xc]
	movs r3, #0
	mov sl, r3
_0805C68C:
	mov r0, sl
	cmp r0, #0
	bne _0805C6B8
	ldr r1, _0805C6B0 @ =gUnknown_030008A0
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0805C6B4 @ =gUnknown_030015C0
	adds r5, r1, r0
	b _0805C6D0
	.align 2, 0
_0805C6A8: .4byte 0x000004B1
_0805C6AC: .4byte 0xFFFFF000
_0805C6B0: .4byte gUnknown_030008A0
_0805C6B4: .4byte gUnknown_030015C0
_0805C6B8:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C748 @ =gUnknown_030015C0
	adds r5, r0, r1
_0805C6D0:
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	beq _0805C6DC
	b _0805C86C
_0805C6DC:
	ldr r3, _0805C74C @ =gUnknown_03000938
	ldr r0, [r3]
	cmp r0, #0
	beq _0805C700
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x50]
	cmp r0, r5
	bne _0805C700
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0805C700
	movs r3, #1
	str r3, [sp, #8]
_0805C700:
	str r5, [sp]
	movs r0, #0
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805C754
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805C7C4
	str r5, [sp]
	mov r3, sb
	str r3, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0805C73C
	b _0805C86C
_0805C73C:
	mov r0, sl
	cmp r0, #0
	bne _0805C81C
	ldr r1, _0805C750 @ =gUnknown_030008A0
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C748: .4byte gUnknown_030015C0
_0805C74C: .4byte gUnknown_03000938
_0805C750: .4byte gUnknown_030008A0
_0805C754:
	str r5, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805C7A4
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0805C77A
	mov r1, sb
	strb r1, [r4, #0xa]
	b _0805C77E
_0805C77A:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0805C77E:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805C78A
	movs r0, #1
	b _0805C78C
_0805C78A:
	movs r0, #0xff
_0805C78C:
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl sub_80044CC
	mov r3, sl
	cmp r3, #0
	bne _0805C81C
	ldr r1, _0805C7A0 @ =gUnknown_030008A0
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C7A0: .4byte gUnknown_030008A0
_0805C7A4:
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805C82E
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C7E2
_0805C7C4:
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0805C86C
_0805C7E2:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0805C7F0
	mov r3, sb
	strb r3, [r4, #0xa]
	b _0805C7F4
_0805C7F0:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0805C7F4:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805C800
	movs r0, #1
	b _0805C802
_0805C800:
	movs r0, #0xff
_0805C802:
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl sub_80044CC
	mov r0, sl
	cmp r0, #0
	bne _0805C81C
	ldr r1, _0805C818 @ =gUnknown_030008A0
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C818: .4byte gUnknown_030008A0
_0805C81C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0805C826:
	strb r0, [r4, #9]
	movs r3, #1
	str r3, [sp, #8]
	b _0805C86C
_0805C82E:
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805C86C
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C86C
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805C86C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0805C87C
	b _0805C68C
_0805C87C:
	str r5, [r4, #0x18]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805C890
sub_805C890: @ 0x0805C890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r6, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r1, #0x14]
	asrs r7, r0, #8
	ldrh r0, [r1, #0xc]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r1, #0xe]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldr r0, [r1, #0x1c]
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #8
	lsls r1, r7, #8
	bl sub_8004D68
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp, #0x18]
_0805C8D8:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _0805C8FC
	ldr r2, _0805C8F4 @ =gUnknown_030008A0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C8F8 @ =gUnknown_030015C0
	adds r6, r0, r1
	b _0805C916
	.align 2, 0
_0805C8F4: .4byte gUnknown_030008A0
_0805C8F8: .4byte gUnknown_030015C0
_0805C8FC:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C9F8 @ =gUnknown_030015C0
	adds r6, r0, r1
	ldr r2, _0805C9FC @ =gUnknown_030008A0
_0805C916:
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0805C93C
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x50]
	cmp r0, r6
	bne _0805C93C
	mov r0, sb
	bl sub_805C510
	cmp r0, #1
	bne _0805C93C
	movs r0, #1
	str r0, [sp, #0x10]
_0805C93C:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805C94A
	b _0805CB4A
_0805C94A:
	adds r1, r6, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	movs r2, #0x1c
	ands r2, r0
	mov sl, r1
	cmp r2, #4
	beq _0805C964
	cmp r2, #8
	beq _0805C964
	cmp r2, #0x10
	beq _0805C964
	b _0805CB4A
_0805C964:
	str r6, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805CA4C
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0805C988
	b _0805CB4A
_0805C988:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0805CA38
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CA38
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r5, [r0, r1]
	cmp r5, #0
	bne _0805CA38
	str r6, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020874
	adds r4, r0, #0
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0805CA04
	str r7, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CFE8
	str r7, [sp]
	ldr r1, [sp, #0x18]
	str r1, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CC5C
	strh r5, [r6, #0x36]
	adds r0, r6, #0
	ldr r1, _0805CA00 @ =sub_800DB30
	bl sub_800D87C
	b _0805CA1C
	.align 2, 0
_0805C9F8: .4byte gUnknown_030015C0
_0805C9FC: .4byte gUnknown_030008A0
_0805CA00: .4byte sub_800DB30
_0805CA04:
	str r7, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CB70
	adds r0, r6, #0
	bl sub_800891C
_0805CA1C:
	ldr r1, [r6, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805CA32
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	b _0805CB4A
_0805CA32:
	orrs r1, r2
	str r1, [r6, #4]
	b _0805CB4A
_0805CA38:
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805CA4A
	b _0805CB4A
_0805CA4A:
	b _0805CB04
_0805CA4C:
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805CB10
	ldr r0, [r6, #4]
	movs r4, #0x80
	lsls r4, r4, #0x11
	ands r0, r4
	cmp r0, #0
	bne _0805CB4A
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CB4A
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CB04
	str r6, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020CE0
	str r6, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
	ldr r5, _0805CB00 @ =gUnknown_030015C0
	mov r1, sl
	ldrb r0, [r1]
	lsls r2, r0, #0x1e
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _0805CB4A
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020CE0
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
	b _0805CB4A
	.align 2, 0
_0805CB00: .4byte gUnknown_030015C0
_0805CB04:
	adds r0, r6, #0
	bl sub_80044CC
	movs r1, #1
	str r1, [sp, #0x10]
	b _0805CB4A
_0805CB10:
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805CB4A
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0805CB4A
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0805CB40
	adds r0, r6, #0
	bl sub_8016F28
_0805CB40:
	adds r0, r6, #0
	bl sub_80044CC
	movs r0, #1
	str r0, [sp, #0x10]
_0805CB4A:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805CB5A
	b _0805C8D8
_0805CB5A:
	ldr r1, [sp, #0xc]
	str r6, [r1, #0x18]
	ldr r0, [sp, #0x10]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805CB70
sub_805CB70: @ 0x0805CB70
	push {r4, r5, lr}
	adds r4, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0805CB94
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	lsls r2, r5, #0x18
	b _0805CBF2
_0805CB94:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	lsls r2, r5, #0x18
	cmp r0, #0
	beq _0805CBF2
	cmp r2, #0
	bge _0805CBBE
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CBD8
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CBEE
_0805CBBE:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CBD8
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CBEE
_0805CBD8:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805CBF2
	adds r0, r3, #0
	adds r0, #0x10
_0805CBEE:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0805CBF2:
	cmp r2, #0
	bge _0805CC1C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0805CC00
	rsbs r1, r1, #0
_0805CC00:
	ldr r0, _0805CC18 @ =0x000001FF
	cmp r1, r0
	bgt _0805CC46
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0805CC40
	movs r2, #0x80
	lsls r2, r2, #2
	b _0805CC42
	.align 2, 0
_0805CC18: .4byte 0x000001FF
_0805CC1C:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0805CC26
	rsbs r1, r1, #0
_0805CC26:
	ldr r0, _0805CC3C @ =0x000001FF
	cmp r1, r0
	bgt _0805CC46
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0805CC40
	movs r2, #0x80
	lsls r2, r2, #2
	b _0805CC42
	.align 2, 0
_0805CC3C: .4byte 0x000001FF
_0805CC40:
	ldr r2, _0805CC58 @ =0xFFFFFE00
_0805CC42:
	adds r0, r1, r2
	strh r0, [r4, #0x18]
_0805CC46:
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CC58: .4byte 0xFFFFFE00

	thumb_func_start sub_805CC5C
sub_805CC5C: @ 0x0805CC5C
	push {r4, r5, lr}
	adds r4, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0805CC7A
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	blt _0805CC8C
_0805CC7A:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0805CD1A
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0805CD1A
_0805CC8C:
	ldr r0, [sp, #0xc]
	subs r0, #0x30
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	lsls r0, r1, #0x18
	adds r2, r0, #0
	cmp r2, #0
	bge _0805CCBC
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CCD6
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CCEC
_0805CCBC:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CCD6
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CCEC
_0805CCD6:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805CCF0
	adds r0, r3, #0
	adds r0, #0x10
_0805CCEC:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0805CCF0:
	asrs r1, r2, #0x18
	cmp r1, #0
	bge _0805CCFE
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0805CD0A
_0805CCFE:
	cmp r1, #0
	ble _0805CD1A
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _0805CD1A
_0805CD0A:
	cmp r2, #0
	bge _0805CD14
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0805CD18
_0805CD14:
	movs r0, #0xfd
	lsls r0, r0, #8
_0805CD18:
	strh r0, [r4, #0x18]
_0805CD1A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_805CD20
sub_805CD20: @ 0x0805CD20
	push {lr}
	lsls r0, r0, #0x18
	movs r1, #0
	cmp r0, #0
	bne _0805CD48
	ldr r0, _0805CD40 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805CD44 @ =gUnknown_030015C0
	adds r1, r0, r1
	b _0805CD66
	.align 2, 0
_0805CD40: .4byte gUnknown_030008A0
_0805CD44: .4byte gUnknown_030015C0
_0805CD48:
	movs r0, #0x2b
	ldrb r2, [r0]
	movs r0, #0x1c
	ands r0, r2
	cmp r0, #4
	bne _0805CD66
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0805CD6C @ =gUnknown_030015C0
	adds r1, r1, r0
_0805CD66:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805CD6C: .4byte gUnknown_030015C0

	thumb_func_start sub_805CD70
sub_805CD70: @ 0x0805CD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sl, r3
	movs r7, #0
	ldr r0, [r6]
	asrs r5, r0, #8
	ldr r0, [r6, #4]
	asrs r4, r0, #8
	cmp r2, #0
	beq _0805CD9C
	ldrh r0, [r2]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	adds r4, r4, r0
_0805CD9C:
	str r7, [sp]
	ldr r0, _0805CE10 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805CDE6
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CDE6
	subs r0, r4, #1
	movs r1, #0
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805CE00
_0805CDE6:
	mov r0, sl
	strb r7, [r0]
	lsls r0, r7, #0x18
	asrs r1, r0, #0x10
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	mov r2, r8
	cmp r2, #0
	beq _0805CE00
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
_0805CE00:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CE10: .4byte sub_805217C

	thumb_func_start sub_805CE14
sub_805CE14: @ 0x0805CE14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sl, r3
	movs r7, #0
	ldr r0, [r6]
	asrs r5, r0, #8
	ldr r0, [r6, #4]
	asrs r4, r0, #8
	cmp r2, #0
	beq _0805CE40
	ldrh r0, [r2]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	adds r4, r4, r0
_0805CE40:
	str r7, [sp]
	ldr r0, _0805CEB8 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805CE8E
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CE8E
	adds r0, r4, #1
	movs r1, #0
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805CEA8
_0805CE8E:
	mov r0, sl
	strb r7, [r0]
	lsls r0, r7, #0x18
	asrs r1, r0, #0x10
	ldr r0, [r6, #4]
	subs r0, r0, r1
	str r0, [r6, #4]
	mov r2, r8
	cmp r2, #0
	beq _0805CEA8
	ldr r0, [r2, #4]
	subs r0, r0, r1
	str r0, [r2, #4]
_0805CEA8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEB8: .4byte sub_805217C

	thumb_func_start sub_805CEBC
sub_805CEBC: @ 0x0805CEBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805CF2C @ =sub_805C198
	ldr r2, _0805CF30 @ =0x00004040
	ldr r1, _0805CF34 @ =sub_805D09C
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	mov r1, r8
	str r1, [r0, #0xc]
	mov r1, sb
	str r1, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	str r7, [r0, #0x14]
	strb r6, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	cmp r6, #0
	bne _0805CF1C
	movs r0, #0x8a
	bl sub_80BA57C
_0805CF1C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF2C: .4byte sub_805C198
_0805CF30: .4byte 0x00004040
_0805CF34: .4byte sub_805D09C

	thumb_func_start sub_805CF38
sub_805CF38: @ 0x0805CF38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0805CF76
	ldr r0, _0805CF80 @ =sub_805C03C
	ldr r2, _0805CF84 @ =0x00004040
	ldr r1, _0805CF88 @ =sub_805CF8C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x10]
	str r6, [r0, #8]
	str r7, [r0, #0xc]
	strh r5, [r0, #2]
	strh r4, [r0, #4]
_0805CF76:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF80: .4byte sub_805C03C
_0805CF84: .4byte 0x00004040
_0805CF88: .4byte sub_805CF8C

    thumb_func_start sub_805CF8C
sub_805CF8C:
    bx lr
    .align 2 , 0

	thumb_func_start sub_805CF90
sub_805CF90: @ 0x0805CF90
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _0805CFDC @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r4, r4, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0805CFBA
	adds r0, r4, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0805CFBA
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	ble _0805CFE0
_0805CFBA:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0805CFD6
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0805CFD6
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0805CFE0
_0805CFD6:
	movs r0, #0
	b _0805CFE2
	.align 2, 0
_0805CFDC: .4byte gUnknown_03001D10
_0805CFE0:
	movs r0, #1
_0805CFE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805CFE8
sub_805CFE8: @ 0x0805CFE8
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0805D004
	movs r4, #0x1a
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0805D016
_0805D004:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0805D052
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0805D052
_0805D016:
	ldr r0, [sp, #8]
	subs r0, #0x30
	lsls r0, r0, #8
	str r0, [r1, #0x14]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1, #0x1a]
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	adds r3, r0, #0
	cmp r2, #0
	bge _0805D036
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0805D042
_0805D036:
	cmp r2, #0
	ble _0805D052
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0805D052
_0805D042:
	cmp r3, #0
	bge _0805D04C
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0805D050
_0805D04C:
	movs r0, #0xc0
	lsls r0, r0, #2
_0805D050:
	strh r0, [r1, #0x18]
_0805D052:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D058
sub_805D058: @ 0x0805D058
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805D098 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D098: .4byte gUnknown_03001D10

	thumb_func_start sub_805D09C
sub_805D09C: @ 0x0805D09C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805D0B0
sub_805D0B0: @ 0x0805D0B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r5, [sp, #0x2c]
	str r1, [r6]
	ldrb r0, [r1]
	movs r4, #0
	strb r0, [r6, #5]
	strb r5, [r6, #4]
	strh r2, [r6, #0x12]
	strh r3, [r6, #0x14]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r6, #0x60]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r6, #0x64]
	str r2, [r6, #0x58]
	str r0, [r6, #0x5c]
	strh r4, [r6, #0x16]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x24]
	adds r0, r6, #0
	adds r0, #0x68
	strh r4, [r0]
	movs r3, #0
	movs r0, #2
	add r0, sp
	mov sb, r0
	add r0, sp, #4
	mov sl, r0
	mov r0, sp
	adds r0, #6
	str r0, [sp, #8]
	movs r0, #0x30
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0x34
	adds r0, r0, r6
	mov ip, r0
	adds r7, r6, #0
	adds r7, #0x1a
	adds r5, r6, #0
	adds r5, #8
_0805D110:
	lsls r1, r3, #3
	mov r0, r8
	adds r2, r0, r1
	ldr r0, [r6, #0x58]
	str r0, [r2]
	add r1, ip
	ldr r0, [r6, #0x5c]
	str r0, [r1]
	lsls r1, r3, #1
	adds r0, r7, r1
	strh r4, [r0]
	adds r1, r5, r1
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0805D110
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, r6, #0
	adds r1, #0xa0
	ldr r5, _0805D184 @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sb
	strh r4, [r0]
	adds r1, r6, #0
	adds r1, #0xd0
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sl
	strh r4, [r0]
	adds r1, r6, #0
	adds r1, #0x98
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #8]
	strh r4, [r0]
	adds r1, r6, #0
	adds r1, #0xc8
	ldr r0, [sp, #8]
	adds r2, r5, #0
	bl sub_80C7520
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D184: .4byte 0x01000002

	thumb_func_start sub_805D188
sub_805D188: @ 0x0805D188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	lsls r1, r1, #0x18
	mov sb, r1
	mov r0, sb
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r3, #0
	adds r0, #0x68
	str r0, [sp]
	movs r0, #0x20
	str r3, [sp, #4]
	bl VramMalloc
	adds r5, r0, #0
	ldr r3, [sp, #4]
	adds r7, r3, #0
	adds r7, #0xa4
	str r5, [r7]
	ldr r4, _0805D290 @ =gUnknown_080D1F4C
	ldr r0, [r4, #0xc]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #8]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #0xa]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r1, [r3, #0x60]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805D294 @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r3, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	str r0, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp]
	mov r2, sb
	str r3, [sp, #4]
	bl sub_805D298
	adds r0, r7, #0
	bl sub_80BF44C
	ldr r3, [sp, #4]
	adds r7, r3, #0
	adds r7, #0x74
	str r5, [r3, #0x74]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r1, [r3, #0x60]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r3, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	mov r0, r8
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	mov r0, sl
	str r0, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp]
	mov r2, sb
	bl sub_805D298
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D290: .4byte gUnknown_080D1F4C
_0805D294: .4byte gUnknown_03001D10

	thumb_func_start sub_805D298
sub_805D298: @ 0x0805D298
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	cmp r2, #2
	beq _0805D2C8
	cmp r2, #2
	bgt _0805D2B8
	cmp r2, #1
	beq _0805D2BE
	b _0805D30E
_0805D2B8:
	cmp r0, #3
	beq _0805D2EA
	b _0805D30E
_0805D2BE:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
	b _0805D30E
_0805D2C8:
	movs r0, #0x6a
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r3]
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r3, #8]
	strh r1, [r3, #2]
	strh r1, [r3, #4]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80BF8F4
	b _0805D30E
_0805D2EA:
	movs r0, #0x6b
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3]
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80BF8F4
_0805D30E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D314
sub_805D314: @ 0x0805D314
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805D394 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805DADC
	adds r7, r0, #0
	ldr r0, _0805D398 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805D3DA
	cmp r1, #4
	beq _0805D3DA
	ldr r1, _0805D39C @ =0x03000060
	adds r6, r4, r1
	ldr r0, _0805D3A0 @ =0x03000018
	adds r2, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_805D708
	cmp r7, #0
	bne _0805D36E
	ldr r0, _0805D3A4 @ =0x0300008F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0805D3A8 @ =0x0300008C
	adds r1, r4, r0
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0805D3AC @ =0x0300008A
	adds r0, r4, r1
	strh r7, [r0]
_0805D36E:
	ldrh r0, [r5, #0x16]
	cmp r0, #0x7f
	bhi _0805D3B4
	adds r0, #1
	strh r0, [r5, #0x16]
	ldr r0, _0805D3B0 @ =0x03000074
	adds r1, r4, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805D3DA
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0805D3DA
	.align 2, 0
_0805D394: .4byte gCurTask
_0805D398: .4byte gUnknown_030008A0
_0805D39C: .4byte 0x03000060
_0805D3A0: .4byte 0x03000018
_0805D3A4: .4byte 0x0300008F
_0805D3A8: .4byte 0x0300008C
_0805D3AC: .4byte 0x0300008A
_0805D3B0: .4byte 0x03000074
_0805D3B4:
	movs r0, #0
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x18]
	movs r3, #0
	mov r6, r8
	ldr r5, _0805D3E4 @ =sub_805D3EC
	ldr r0, _0805D3E8 @ =0x0300001A
	adds r1, r4, r0
	movs r2, #0
_0805D3C6:
	lsls r0, r3, #1
	adds r0, r1, r0
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0805D3C6
	ldr r0, [r6]
	str r5, [r0, #8]
_0805D3DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D3E4: .4byte sub_805D3EC
_0805D3E8: .4byte 0x0300001A

	thumb_func_start sub_805D3EC
sub_805D3EC: @ 0x0805D3EC
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0805D43C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _0805D440 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805D450
	cmp r1, #4
	beq _0805D450
	adds r0, r4, #0
	bl sub_805D5F0
	cmp r0, #1
	bne _0805D450
	adds r0, r4, #0
	bl sub_805DADC
	movs r1, #0
	strb r1, [r4, #6]
	mov r0, sp
	strh r1, [r0]
	ldr r0, _0805D444 @ =0x03000008
	adds r1, r5, r0
	ldr r2, _0805D448 @ =0x01000005
	mov r0, sp
	bl sub_80C7520
	ldr r1, [r6]
	ldr r0, _0805D44C @ =sub_805DDCC
	str r0, [r1, #8]
	b _0805D470
	.align 2, 0
_0805D43C: .4byte gCurTask
_0805D440: .4byte gUnknown_030008A0
_0805D444: .4byte 0x03000008
_0805D448: .4byte 0x01000005
_0805D44C: .4byte sub_805DDCC
_0805D450:
	adds r0, r4, #0
	bl sub_805DADC
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805D470
	ldr r0, _0805D478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805D470:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D478: .4byte gCurTask

	thumb_func_start sub_805D47C
sub_805D47C: @ 0x0805D47C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r3, [r1, #0x28]
	subs r3, r3, r0
	str r3, [sp, #8]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x2c]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	mov r2, ip
	ldr r5, [r2, #0x58]
	str r5, [sp]
	ldr r2, [r2, #0x5c]
	str r2, [sp, #4]
	subs r1, r1, r2
	asrs r1, r1, #6
	mov r4, ip
	ldrh r0, [r4, #8]
	lsrs r4, r0, #6
	muls r1, r4, r1
	adds r2, r2, r1
	mov r1, ip
	str r2, [r1, #0x64]
	subs r3, r3, r5
	asrs r3, r3, #6
	adds r1, r3, #0
	muls r1, r4, r1
	adds r2, r5, r1
	mov r4, ip
	str r2, [r4, #0x60]
	adds r0, #0x80
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	cmp r0, #0x3f
	bhi _0805D520
	mov r0, ip
	adds r0, #0x68
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0805D4FC
	subs r1, r2, r5
	cmp r1, #0
	bge _0805D4EA
	subs r1, r5, r2
_0805D4EA:
	ldr r0, _0805D514 @ =0x000039FF
	cmp r1, r0
	bgt _0805D520
	mov r1, sb
	ldrh r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x64]
	cmp r0, #0
	beq _0805D534
_0805D4FC:
	mov r4, ip
	ldr r0, [r4, #0x64]
	ldr r1, [sp, #4]
	subs r2, r0, r1
	adds r3, r0, #0
	cmp r2, #0
	blt _0805D518
	ldr r0, _0805D514 @ =0x000039FF
	cmp r2, r0
	bgt _0805D520
	b _0805D534
	.align 2, 0
_0805D514: .4byte 0x000039FF
_0805D518:
	subs r1, r1, r3
	ldr r0, _0805D530 @ =0x000039FF
	cmp r1, r0
	ble _0805D534
_0805D520:
	movs r0, #1
	str r0, [sp, #0x10]
	movs r1, #0x68
	add r1, ip
	mov sb, r1
	mov r2, ip
	ldr r3, [r2, #0x64]
	b _0805D538
	.align 2, 0
_0805D530: .4byte 0x000039FF
_0805D534:
	movs r4, #0
	str r4, [sp, #0x10]
_0805D538:
	mov r1, ip
	ldr r0, [r1, #0x60]
	str r0, [r1, #0x30]
	str r3, [r1, #0x34]
	movs r2, #0
	movs r4, #0x30
	add r4, ip
	mov r8, r4
	mov r7, ip
	adds r7, #0x34
	movs r0, #7
	movs r1, #1
	mov sl, r1
	mov r4, sl
	lsls r4, r0
	mov sl, r4
_0805D558:
	movs r3, #0xa
	cmp r2, #0
	bne _0805D560
	movs r3, #0xe
_0805D560:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	bne _0805D574
	lsls r0, r2, #3
	add r0, r8
	adds r2, #1
	lsls r1, r2, #3
	add r1, r8
	b _0805D57E
_0805D574:
	lsls r0, r2, #3
	adds r0, r7, r0
	adds r2, #1
	lsls r1, r2, #3
	adds r1, r7, r1
_0805D57E:
	ldr r0, [r0]
	ldr r1, [r1]
	subs r4, r0, r1
	adds r6, r2, #0
	cmp r4, #0
	bge _0805D58C
	subs r4, r1, r0
_0805D58C:
	lsls r0, r3, #8
	cmp r4, r0
	blt _0805D5D6
	mov r2, ip
	ldr r5, [r2, #0x58]
	str r5, [sp]
	ldr r0, [r2, #0x5c]
	str r0, [sp, #4]
	lsls r3, r6, #3
	adds r4, r7, r3
	str r0, [r4]
	add r3, r8
	str r5, [r3]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	asrs r1, r1, #6
	lsls r0, r6, #1
	adds r2, #8
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r1, #6
	ldrh r0, [r2]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2]
	add r0, sl
	strh r0, [r2]
_0805D5D6:
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805D558
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805D5F0
sub_805D5F0: @ 0x0805D5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov ip, r0
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldr r5, [r1, #0x58]
	str r5, [sp]
	ldr r3, [r1, #0x5c]
	str r3, [sp, #4]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0x10
	ldr r2, [r1, #0x28]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r1, [r1, #0x14]
	lsls r1, r1, #0x10
	mov r4, ip
	ldr r0, [r4, #0x2c]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r0, r0, r3
	asrs r0, r0, #6
	ldrh r1, [r4, #8]
	lsrs r4, r1, #6
	muls r0, r4, r0
	adds r3, r3, r0
	mov r7, ip
	str r3, [r7, #0x64]
	subs r2, r2, r5
	asrs r2, r2, #6
	adds r0, r2, #0
	muls r0, r4, r0
	adds r5, r5, r0
	str r5, [r7, #0x60]
	subs r1, #0x40
	strh r1, [r7, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x16
	cmp r1, #0x3f
	bls _0805D652
	mov r0, r8
	strh r0, [r7, #8]
	movs r1, #1
	mov r8, r1
_0805D652:
	mov r4, ip
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x30]
	movs r3, #0
	adds r4, #0x34
	str r4, [sp, #0x10]
	movs r5, #0x30
	add r5, ip
	mov sl, r5
	movs r7, #8
	add r7, ip
	mov sb, r7
_0805D66A:
	mov r0, ip
	ldr r6, [r0, #0x58]
	str r6, [sp]
	ldr r5, [r0, #0x5c]
	str r5, [sp, #4]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r2, [r1, #0x28]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x2c]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0x14]
	lsls r3, r3, #3
	ldr r7, [sp, #0x10]
	adds r4, r7, r3
	str r5, [r4]
	add r3, sl
	str r6, [r3]
	subs r1, r1, r5
	asrs r1, r1, #6
	ldr r5, [sp, #0x14]
	lsls r0, r5, #1
	mov r7, sb
	adds r5, r7, r0
	ldrh r0, [r5]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	subs r2, r2, r6
	asrs r2, r2, #6
	ldrh r0, [r5]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	subs r0, #0x40
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	cmp r0, #0x3f
	bls _0805D6E0
	movs r0, #0
	strh r0, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0805D6E0:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0805D66A
	mov r4, r8
	cmp r4, #5
	beq _0805D6F4
	movs r0, #0
	b _0805D6F6
_0805D6F4:
	movs r0, #1
_0805D6F6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805D708
sub_805D708: @ 0x0805D708
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r4, r2, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0xff
	bhi _0805D726
	adds r0, #2
	mov r1, ip
	strh r0, [r1, #0x18]
	b _0805D72C
_0805D726:
	movs r0, #0
	mov r2, ip
	strh r0, [r2, #0x18]
_0805D72C:
	mov r0, ip
	adds r0, #0x68
	ldrh r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _0805D774
	ldr r3, _0805D770 @ =gUnknown_082B48B4
	ldrh r0, [r4]
	lsls r0, r0, #3
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov r5, ip
	ldr r0, [r5, #0x60]
	subs r0, r0, r1
	str r0, [r5, #0x60]
	ldrh r0, [r4]
	lsls r0, r0, #2
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r5, #0x64]
	adds r0, r0, r1
	b _0805D7AA
	.align 2, 0
_0805D770: .4byte gUnknown_082B48B4
_0805D774:
	ldr r3, _0805D7E8 @ =gUnknown_082B48B4
	ldrh r0, [r4]
	lsls r0, r0, #2
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov r5, ip
	ldr r0, [r5, #0x60]
	adds r0, r0, r1
	str r0, [r5, #0x60]
	ldrh r0, [r4]
	lsls r0, r0, #3
	ands r0, r2
	lsls r0, r0, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r5, #0x64]
	subs r0, r0, r1
_0805D7AA:
	str r0, [r5, #0x64]
	mov r2, ip
	ldr r0, [r2, #0x60]
	str r0, [r2, #0x30]
	ldr r0, [r2, #0x64]
	str r0, [r2, #0x34]
	movs r2, #0
	movs r5, #0x30
	add r5, ip
	mov r8, r5
	mov r7, ip
	adds r7, #0x34
	ldr r0, _0805D7E8 @ =gUnknown_082B48B4
	mov sl, r0
	movs r1, #0xff
	mov sb, r1
_0805D7CA:
	movs r3, #5
	cmp r2, #0
	bne _0805D7D2
	movs r3, #7
_0805D7D2:
	ldr r5, [sp]
	ldrh r0, [r5]
	cmp r0, #0
	bne _0805D7EC
	lsls r0, r2, #3
	add r0, r8
	adds r2, #1
	lsls r1, r2, #3
	add r1, r8
	b _0805D7F6
	.align 2, 0
_0805D7E8: .4byte gUnknown_082B48B4
_0805D7EC:
	lsls r0, r2, #3
	adds r0, r7, r0
	adds r2, #1
	lsls r1, r2, #3
	adds r1, r7, r1
_0805D7F6:
	ldr r0, [r0]
	ldr r1, [r1]
	subs r4, r0, r1
	adds r6, r2, #0
	cmp r4, #0
	bge _0805D804
	subs r4, r1, r0
_0805D804:
	lsls r0, r3, #8
	cmp r4, r0
	blt _0805D8BC
	lsls r0, r6, #1
	mov r1, ip
	adds r1, #0x1a
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0xff
	bhi _0805D81C
	adds r0, #2
	b _0805D81E
_0805D81C:
	movs r0, #0
_0805D81E:
	strh r0, [r2]
	ldr r2, [sp]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0805D872
	lsls r3, r6, #3
	mov r5, r8
	adds r4, r5, r3
	lsls r2, r6, #1
	adds r5, r1, r2
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r4]
	subs r1, r1, r0
	str r1, [r4]
	adds r3, r7, r3
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #2
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r3]
	adds r1, r1, r0
	b _0805D8BA
_0805D872:
	lsls r3, r6, #3
	mov r5, r8
	adds r4, r5, r3
	lsls r2, r6, #1
	adds r5, r1, r2
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #2
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r4]
	adds r3, r7, r3
	ldrh r0, [r5]
	subs r0, r0, r2
	lsls r0, r0, #3
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r0, r6
	ldr r1, [r3]
	subs r1, r1, r0
_0805D8BA:
	str r1, [r3]
_0805D8BC:
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805D7CA
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805D8D4
sub_805D8D4: @ 0x0805D8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #3
	mov sb, r0
	b _0805D9A2
_0805D8EA:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _0805D942
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x64]
	subs r2, r1, r0
	cmp r2, #0
	blt _0805D90C
	cmp r2, sb
	ble _0805D912
	b _0805D998
_0805D90C:
	subs r0, r0, r1
	cmp r0, sb
	bgt _0805D998
_0805D912:
	ldr r0, [r4, #0x7c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D930
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x60]
	adds r6, r1, #0
	cmp r0, r2
	ble _0805D98E
	b _0805D998
_0805D930:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x60]
	adds r6, r1, #0
	cmp r0, r2
	blt _0805D998
	b _0805D98E
_0805D942:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r3, r1, r0
	ldr r0, [r4, #0x60]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _0805D95A
	cmp r2, sb
	ble _0805D960
	b _0805D998
_0805D95A:
	subs r0, r0, r3
	cmp r0, sb
	bgt _0805D998
_0805D960:
	ldrh r2, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _0805D978
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x64]
	cmp r1, r0
	ble _0805D98E
_0805D978:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bne _0805D998
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x64]
	cmp r1, r0
	blt _0805D998
_0805D98E:
	str r6, [r4, #0x28]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x2c]
	movs r0, #1
	b _0805D9B4
_0805D998:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0805D9A2:
	mov r0, r8
	cmp r0, #1
	bhi _0805D9B2
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805D8EA
_0805D9B2:
	movs r0, #0
_0805D9B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805D9C0
sub_805D9C0: @ 0x0805D9C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0x68
	adds r0, r0, r6
	mov sl, r0
	movs r7, #0
	add r1, sp, #0x28
	mov sb, r1
	mov r8, sp
_0805D9DC:
	subs r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805DA1A
	lsls r0, r7, #3
	adds r0, #0x30
	adds r4, r6, r0
	adds r5, r6, #0
	adds r5, #0xa4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, sp
	bl sub_805DE9C
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x12]
	mov r2, r8
	strh r0, [r2, #0xc]
	ldrh r0, [r6, #0x14]
	strh r0, [r2, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r2, #8]
_0805DA1A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0805D9DC
	adds r4, r6, #0
	adds r4, #0x60
	adds r5, r6, #0
	adds r5, #0x74
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, sp
	bl sub_805DE9C
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	ldr r2, _0805DA84 @ =gUnknown_03001D10
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	mov r2, sp
	ldrb r0, [r6, #5]
	strb r0, [r2, #8]
	mov r2, sb
	strh r1, [r2]
	strh r1, [r2, #2]
	mov r4, sl
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DA88
	movs r0, #0x14
	strh r0, [r2]
	movs r0, #0x16
	strh r0, [r2, #2]
	b _0805DA9A
	.align 2, 0
_0805DA84: .4byte gUnknown_03001D10
_0805DA88:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _0805DA9A
	movs r0, #0xa
	mov r1, sb
	strh r0, [r1]
	movs r0, #0x32
	strh r0, [r1, #2]
_0805DA9A:
	ldr r1, [sp, #0x1c]
	mov r2, sb
	ldrh r0, [r2]
	ldrh r4, [r1, #0x10]
	adds r0, r0, r4
	strh r0, [r1, #0x10]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r2, #2]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	mov r0, sp
	bl sub_805C280
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x10]
	mov r4, sb
	ldrh r2, [r4]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r3, [sp, #0x1c]
	ldrh r1, [r3, #0x12]
	ldrh r2, [r4, #2]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805DADC
sub_805DADC: @ 0x0805DADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov r3, sp
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #8
	ldr r2, _0805DBF8 @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #2]
	adds r4, r5, #0
	adds r4, #0x74
	ldr r0, [r5, #0x60]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r2, r0, r1
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x64]
	asrs r1, r1, #8
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805DB38
	adds r1, r5, #0
	adds r1, #0x68
	strh r2, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
_0805DB38:
	adds r0, r4, #0
	bl sub_80BF44C
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_80C033C
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0xa4
	str r0, [sp, #0xc]
	adds r1, r5, #0
	adds r1, #0x30
	str r1, [sp, #8]
	movs r2, #0x34
	adds r2, r2, r5
	mov sl, r2
	adds r4, r0, #0
	mov r8, sp
_0805DB5E:
	lsls r1, r7, #3
	ldr r3, [sp, #8]
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r6, r8
	ldrh r6, [r6]
	adds r2, r0, r6
	strh r2, [r4, #0x10]
	add r1, sl
	ldr r1, [r1]
	asrs r1, r1, #8
	mov r3, r8
	ldrh r0, [r3, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r6, #0x20
	mov sb, r6
	ands r0, r6
	cmp r0, #0
	beq _0805DB9C
	adds r1, r5, #0
	adds r1, #0x68
	strh r2, [r1, #6]
	ldr r2, [sp, #0xc]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #8]
	ldr r0, [sp, #0xc]
	bl sub_80BF8F4
_0805DB9C:
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _0805DB5E
	ldr r4, [sp, #0xc]
	ldr r0, [r5, #0x58]
	mov r1, sp
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r2, r0, r1
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x5c]
	asrs r1, r1, #8
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _0805DBE0
	adds r1, r5, #0
	adds r1, #0x68
	strh r2, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
_0805DBE0:
	adds r0, r4, #0
	bl sub_80C033C
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DBF8: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Uutsubo_1
CreateEntity_Uutsubo_1: @ 0x0805DBFC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805DC68 @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DC6C @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805D0B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DC68: .4byte sub_805DDCC
_0805DC6C: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_0
CreateEntity_Uutsubo_0: @ 0x0805DC70
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805DCDC @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DCE0 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805D0B0
	adds r0, r4, #0
	movs r1, #0
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DCDC: .4byte sub_805DDCC
_0805DCE0: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_2
CreateEntity_Uutsubo_2: @ 0x0805DCE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805DD50 @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DD54 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805D0B0
	adds r0, r4, #0
	movs r1, #2
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD50: .4byte sub_805DDCC
_0805DD54: .4byte sub_805DEC4

	thumb_func_start CreateEntity_Uutsubo_3
CreateEntity_Uutsubo_3: @ 0x0805DD58
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805DDC4 @ =sub_805DDCC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DDC8 @ =sub_805DEC4
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805D0B0
	adds r0, r4, #0
	movs r1, #3
	bl sub_805D188
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDC4: .4byte sub_805DDCC
_0805DDC8: .4byte sub_805DEC4

	thumb_func_start sub_805DDCC
sub_805DDCC: @ 0x0805DDCC
	push {r4, r5, lr}
	ldr r5, _0805DE04 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE08 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE10
	cmp r1, #4
	beq _0805DE10
	adds r0, r4, #0
	bl sub_805D8D4
	cmp r0, #1
	bne _0805DE10
	ldr r1, [r5]
	ldr r0, _0805DE0C @ =sub_805DE34
	str r0, [r1, #8]
	b _0805DE2A
	.align 2, 0
_0805DE04: .4byte gCurTask
_0805DE08: .4byte gUnknown_030008A0
_0805DE0C: .4byte sub_805DE34
_0805DE10:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE2A
	ldr r0, _0805DE30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE30: .4byte gCurTask

	thumb_func_start sub_805DE34
sub_805DE34: @ 0x0805DE34
	push {r4, r5, lr}
	ldr r5, _0805DE6C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE70 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE78
	cmp r1, #4
	beq _0805DE78
	adds r0, r4, #0
	bl sub_805D47C
	cmp r0, #1
	bne _0805DE78
	ldr r1, [r5]
	ldr r0, _0805DE74 @ =sub_805D314
	str r0, [r1, #8]
	b _0805DE92
	.align 2, 0
_0805DE6C: .4byte gCurTask
_0805DE70: .4byte gUnknown_030008A0
_0805DE74: .4byte sub_805D314
_0805DE78:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE92
	ldr r0, _0805DE98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE98: .4byte gCurTask

	thumb_func_start sub_805DE9C
sub_805DE9C: @ 0x0805DE9C
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x14]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805DEC4
sub_805DEC4: @ 0x0805DEC4
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0805DED8 @ =0x030000A4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0805DED8: .4byte 0x030000A4

	thumb_func_start CreateEntity_GaoGao
CreateEntity_GaoGao: @ 0x0805DEDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805DF54 @ =sub_805E018
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DF58 @ =sub_805E22C
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	str r1, [r7, #0x14]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x1c]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DF5C
	movs r0, #0xff
	b _0805DF5E
	.align 2, 0
_0805DF54: .4byte sub_805E018
_0805DF58: .4byte sub_805E22C
_0805DF5C:
	movs r0, #1
_0805DF5E:
	strb r0, [r7, #7]
	movs r1, #0
	strb r1, [r7, #6]
	add r0, sp, #4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _0805DF90 @ =0x01000002
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805DF94
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF90: .4byte 0x01000002

	thumb_func_start sub_805DF94
sub_805DF94: @ 0x0805DF94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x24
	str r0, [r4, #0x24]
	ldr r1, _0805E010 @ =gUnknown_080D1F5C
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805E014 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805DFFE
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805DFFE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E010: .4byte gUnknown_080D1F5C
_0805E014: .4byte gUnknown_03001D10

	thumb_func_start sub_805E018
sub_805E018: @ 0x0805E018
	push {r4, lr}
	ldr r0, _0805E064 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805E068 @ =0x03000014
	adds r0, r3, r1
	subs r1, #0xc
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805E06C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805E050
	cmp r1, #4
	beq _0805E050
	adds r0, r4, #0
	bl sub_805E144
_0805E050:
	adds r0, r4, #0
	bl sub_805E1F0
	cmp r0, #1
	bne _0805E070
	ldr r0, _0805E064 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805E09A
	.align 2, 0
_0805E064: .4byte gCurTask
_0805E068: .4byte 0x03000014
_0805E06C: .4byte gUnknown_030008A0
_0805E070:
	adds r0, r4, #0
	bl sub_805E17C
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0805E084
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _0805E09A
_0805E084:
	adds r2, r4, #0
	adds r2, #0x24
	ldr r1, _0805E0A0 @ =gUnknown_080D1F5C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0805E0A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805E0A8 @ =sub_805E0AC
	str r0, [r1, #8]
_0805E09A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0A0: .4byte gUnknown_080D1F5C
_0805E0A4: .4byte gCurTask
_0805E0A8: .4byte sub_805E0AC

	thumb_func_start sub_805E0AC
sub_805E0AC: @ 0x0805E0AC
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805E0D4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805E17C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_805E1F0
	cmp r0, #1
	bne _0805E0D8
	ldr r0, [r7]
	bl TaskDestroy
	b _0805E132
	.align 2, 0
_0805E0D4: .4byte gCurTask
_0805E0D8:
	ldr r0, _0805E10C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805E132
	cmp r1, #4
	beq _0805E132
	cmp r6, #0
	bne _0805E132
	ldr r0, _0805E110 @ =0x03000024
	adds r2, r5, r0
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805E118
	ldr r0, _0805E114 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r2, #8]
	movs r0, #1
	b _0805E11E
	.align 2, 0
_0805E10C: .4byte gUnknown_030008A0
_0805E110: .4byte 0x03000024
_0805E114: .4byte 0xFFFFFBFF
_0805E118:
	orrs r1, r3
	str r1, [r2, #8]
	movs r0, #0xff
_0805E11E:
	strb r0, [r4, #7]
	ldr r1, _0805E138 @ =gUnknown_080D1F5C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _0805E13C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805E140 @ =sub_805E018
	str r0, [r1, #8]
_0805E132:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E138: .4byte gUnknown_080D1F5C
_0805E13C: .4byte gCurTask
_0805E140: .4byte sub_805E018

	thumb_func_start sub_805E144
sub_805E144: @ 0x0805E144
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E166
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bgt _0805E178
	adds r0, #0x40
	str r0, [r2, #0x14]
	cmp r0, r1
	ble _0805E178
	b _0805E176
_0805E166:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x1c]
	cmp r0, r1
	blt _0805E178
	subs r0, #0x40
	str r0, [r2, #0x14]
	cmp r0, r1
	bge _0805E178
_0805E176:
	str r1, [r2, #0x14]
_0805E178:
	pop {r0}
	bx r0

	thumb_func_start sub_805E17C
sub_805E17C: @ 0x0805E17C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x24
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805E1BC @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805E1BC: .4byte gUnknown_03001D10

	thumb_func_start sub_805E1C0
sub_805E1C0: @ 0x0805E1C0
	push {lr}
	adds r2, r1, #0
	movs r1, #0
	str r1, [r2]
	strb r1, [r2, #8]
	str r1, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x24
	str r1, [r2, #0x1c]
	ldr r1, [r0, #0x14]
	str r1, [r2, #0x10]
	ldr r1, [r0, #0x18]
	str r1, [r2, #0x14]
	ldrh r1, [r0, #8]
	strh r1, [r2, #0xc]
	ldrh r1, [r0, #0xa]
	strh r1, [r2, #0xe]
	movs r1, #7
	ldrsb r1, [r0, r1]
	adds r0, r2, #0
	bl sub_805C890
	pop {r1}
	bx r1

	thumb_func_start sub_805E1F0
sub_805E1F0: @ 0x0805E1F0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805E1C0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

	thumb_func_start sub_805E22C
sub_805E22C: @ 0x0805E22C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Juggling
CreateEntity_Juggling: @ 0x0805E240
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805E2E0 @ =sub_805E4B4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805E2E4 @ =sub_805EA10
	str r1, [sp]
	movs r1, #0xdc
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r4, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r5, r8
	ldrb r1, [r5]
	lsls r1, r1, #0xb
	str r1, [r7, #0x20]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	str r2, [r7, #0x28]
	str r2, [r7, #0x2c]
	str r2, [r7, #0x30]
	str r2, [r7, #0x34]
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x3c]
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x40]
	strh r2, [r7, #0xe]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r7, #0x10]
	strb r4, [r7, #6]
	strb r4, [r7, #7]
	strb r4, [r7, #8]
	ldr r1, _0805E2E8 @ =0x030000D4
	adds r0, r3, r1
	str r2, [r0]
	ldr r5, _0805E2EC @ =0x030000D8
	adds r3, r3, r5
	str r2, [r3]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805E2F0
	movs r0, #0xff
	b _0805E2F2
	.align 2, 0
_0805E2E0: .4byte sub_805E4B4
_0805E2E4: .4byte sub_805EA10
_0805E2E8: .4byte 0x030000D4
_0805E2EC: .4byte 0x030000D8
_0805E2F0:
	movs r0, #1
_0805E2F2:
	strb r0, [r7, #9]
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x70
	ldr r5, _0805E340 @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0xa0
	adds r2, r5, #0
	bl sub_80C7520
	add r0, sp, #8
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0xd0
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805E344
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r5, r8
	strb r0, [r5]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E340: .4byte 0x01000002

	thumb_func_start sub_805E344
sub_805E344: @ 0x0805E344
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0x30
	bl VramMalloc
	adds r3, r0, #0
	adds r2, r7, #0
	adds r2, #0x44
	str r3, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r5, _0805E4AC @ =gUnknown_080D1F6C
	ldrh r0, [r5]
	movs r1, #0
	mov sb, r1
	strh r0, [r2, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r2, #0x1a]
	subs r1, #1
	mov r0, sp
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _0805E4B0 @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r0, sb
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sl, r1
	str r1, [r2, #8]
	movs r0, #9
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _0805E3CC
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r2, #8]
_0805E3CC:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	str r3, [sp, #4]
	bl sub_80BF44C
	ldr r3, [sp, #4]
	str r3, [r7, #0x14]
	adds r2, r7, #0
	adds r2, #0x74
	str r3, [r7, #0x74]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r3, r1
	ldrh r0, [r5, #8]
	mov r8, r0
	strh r0, [r2, #0xc]
	ldrb r6, [r5, #0xa]
	strb r6, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sp
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r5, #0x90
	lsls r5, r5, #3
	strh r5, [r2, #0x14]
	mov r0, sb
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	str r3, [sp, #4]
	bl sub_80BF44C
	adds r2, r7, #0
	adds r2, #0xa4
	ldr r3, [sp, #4]
	str r3, [r2]
	mov r1, r8
	strh r1, [r2, #0xc]
	strb r6, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	strh r5, [r2, #0x14]
	mov r5, sb
	strh r5, [r2, #0xe]
	strh r5, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	mov r3, sl
	str r3, [r2, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E4AC: .4byte gUnknown_080D1F6C
_0805E4B0: .4byte gUnknown_03001D10

	thumb_func_start sub_805E4B4
sub_805E4B4: @ 0x0805E4B4
	push {r4, lr}
	ldr r0, _0805E504 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805E508 @ =0x03000020
	adds r0, r3, r1
	subs r1, #0x16
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805E50C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805E4F2
	cmp r1, #4
	beq _0805E4F2
	adds r0, r4, #0
	bl sub_805E918
	adds r0, r4, #0
	bl sub_805E624
_0805E4F2:
	ldrh r0, [r4, #0xe]
	ldrh r1, [r4, #0x10]
	subs r2, r0, r1
	cmp r2, #0
	blt _0805E514
	ldr r0, _0805E510 @ =0x000007FF
	cmp r2, r0
	ble _0805E51C
	b _0805E534
	.align 2, 0
_0805E504: .4byte gCurTask
_0805E508: .4byte 0x03000020
_0805E50C: .4byte gUnknown_030008A0
_0805E510: .4byte 0x000007FF
_0805E514:
	subs r1, r1, r0
	ldr r0, _0805E548 @ =0x000007FF
	cmp r1, r0
	bgt _0805E534
_0805E51C:
	movs r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0805E526
	movs r1, #1
_0805E526:
	cmp r1, #0
	beq _0805E534
	movs r0, #0
	strh r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x10]
_0805E534:
	adds r0, r4, #0
	bl sub_805E9D4
	cmp r0, #1
	bne _0805E554
	ldr r0, _0805E54C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805E550 @ =sub_805E8B8
	str r0, [r1, #8]
	b _0805E598
	.align 2, 0
_0805E548: .4byte 0x000007FF
_0805E54C: .4byte gCurTask
_0805E550: .4byte sub_805E8B8
_0805E554:
	adds r0, r4, #0
	bl sub_805E950
	cmp r0, #1
	bne _0805E564
	adds r0, r4, #0
	bl sub_805E5A0
_0805E564:
	adds r0, r4, #0
	bl sub_805E6E0
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	ble _0805E578
	ldr r0, [r4, #0x40]
	cmp r1, r0
	blt _0805E598
_0805E578:
	adds r3, r4, #0
	adds r3, #0x44
	ldr r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E594
	ldr r0, _0805E590 @ =0xFFFFFBFF
	ands r1, r0
	b _0805E596
	.align 2, 0
_0805E590: .4byte 0xFFFFFBFF
_0805E594:
	orrs r1, r2
_0805E596:
	str r1, [r3, #8]
_0805E598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805E5A0
sub_805E5A0: @ 0x0805E5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0805E5DE
	ldrh r5, [r6, #0xe]
	cmp r5, #0
	bne _0805E5DE
	adds r0, r6, #0
	adds r0, #0x28
	adds r1, r6, #0
	adds r1, #0x24
	ldrh r2, [r6, #0xa]
	ldrh r3, [r6, #0xc]
	adds r4, r6, #6
	str r4, [sp]
	str r5, [sp, #4]
	ldr r4, [r6, #0x14]
	str r4, [sp, #8]
	bl sub_805EA24
	adds r1, r6, #0
	adds r1, #0xd8
	str r0, [r1]
	movs r0, #1
	strb r0, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #0xe]
	b _0805E61A
_0805E5DE:
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _0805E61A
	ldrh r0, [r6, #0x10]
	cmp r0, #0
	bne _0805E61A
	adds r0, r6, #0
	adds r0, #0x30
	adds r1, r6, #0
	adds r1, #0x24
	ldrh r2, [r6, #0xa]
	ldrh r3, [r6, #0xc]
	adds r4, r6, #7
	str r4, [sp]
	movs r5, #1
	str r5, [sp, #4]
	ldr r4, [r6, #0x14]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r4, r4, r7
	str r4, [sp, #8]
	bl sub_805EA24
	adds r1, r6, #0
	adds r1, #0xd4
	str r0, [r1]
	strb r5, [r6, #7]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #0x10]
_0805E61A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805E624
sub_805E624: @ 0x0805E624
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov ip, r1
	ldr r7, _0805E688 @ =gUnknown_082B48B4
	adds r5, r3, #0
	adds r5, #0x2c
	movs r6, #0xff
_0805E642:
	adds r0, r3, #6
	adds r0, r0, r4
	ldrb r2, [r0]
	cmp r2, #0
	bne _0805E6AC
	lsls r1, r4, #1
	adds r0, r3, #0
	adds r0, #0xe
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bls _0805E664
	strh r2, [r1]
_0805E664:
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	cmp r0, ip
	bls _0805E68C
	lsls r2, r4, #3
	adds r2, r5, r2
	lsrs r0, r1, #0x14
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #2
	movs r1, #0x90
	lsls r1, r1, #5
	b _0805E6A4
	.align 2, 0
_0805E688: .4byte gUnknown_082B48B4
_0805E68C:
	lsls r2, r4, #3
	adds r2, r5, r2
	lsrs r0, r1, #0x14
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #6
_0805E6A4:
	adds r0, r0, r1
	ldr r1, [r3, #0x24]
	subs r1, r1, r0
	str r1, [r2]
_0805E6AC:
	cmp r4, #0
	bne _0805E6B8
	ldr r0, [r3, #0x20]
	add r0, ip
	str r0, [r3, #0x28]
	b _0805E6C8
_0805E6B8:
	lsls r0, r4, #3
	adds r1, r3, #0
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r3, #0x20]
	ldr r2, _0805E6DC @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1]
_0805E6C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0805E642
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E6DC: .4byte 0xFFFFF800

	thumb_func_start sub_805E6E0
sub_805E6E0: @ 0x0805E6E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x44
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0805E79C @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0805E754
	adds r4, #0x30
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0805E7A0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0805E754:
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0805E794
	adds r4, r5, #0
	adds r4, #0xa4
	ldr r1, [r5, #0x30]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x34]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0805E794:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E79C: .4byte gUnknown_03001D10
_0805E7A0: .4byte 0xFFFFFBFF

	thumb_func_start sub_805E7A4
sub_805E7A4: @ 0x0805E7A4
	push {r4, r5, r6, lr}
	ldr r1, [r0, #0x14]
	adds r6, r0, #0
	adds r6, #0x28
	str r1, [r0, #0x28]
	ldr r2, _0805E80C @ =gUnknown_080D1F7C
	ldrh r1, [r2]
	movs r5, #0
	movs r4, #0
	strh r1, [r6, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r6, #0x1a]
	movs r1, #0xff
	strb r1, [r6, #0x1b]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldr r3, _0805E810 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r6, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r6, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	strh r4, [r6, #0xe]
	strh r4, [r6, #0x16]
	movs r1, #0x20
	strb r1, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0805E7FA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805E7FA:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E80C: .4byte gUnknown_080D1F7C
_0805E810: .4byte gUnknown_03001D10

	thumb_func_start sub_805E814
sub_805E814: @ 0x0805E814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x20]
	asrs r7, r1, #8
	ldr r1, [r0, #0x24]
	asrs r6, r1, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x28
	mov r8, r0
	movs r5, #0
_0805E838:
	cmp r5, #0
	bne _0805E848
	ldr r0, _0805E844 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805E852
	.align 2, 0
_0805E844: .4byte gUnknown_030008A0
_0805E848:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805E852:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805E89C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805E8A0
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805E8A0
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805E898
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805E898:
	movs r0, #1
	b _0805E8AC
	.align 2, 0
_0805E89C: .4byte gUnknown_030015C0
_0805E8A0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805E838
	movs r0, #0
_0805E8AC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805E8B8
sub_805E8B8: @ 0x0805E8B8
	push {r4, r5, r6, lr}
	ldr r0, _0805E910 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0805E8E0
	ldr r0, _0805E914 @ =0x030000D4
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0805E8E0
	bl TaskDestroy
	str r6, [r4]
	movs r6, #1
_0805E8E0:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0805E8FC
	adds r4, r5, #0
	adds r4, #0xd8
	ldr r0, [r4]
	cmp r0, #0
	beq _0805E8FC
	cmp r6, #0
	bne _0805E908
	bl TaskDestroy
	str r6, [r4]
	movs r6, #1
_0805E8FC:
	cmp r6, #0
	bne _0805E908
	ldr r0, _0805E910 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805E908:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E910: .4byte gCurTask
_0805E914: .4byte 0x030000D4

	thumb_func_start sub_805E918
sub_805E918: @ 0x0805E918
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E93A
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x40]
	cmp r0, r1
	bgt _0805E94C
	adds r0, #0x80
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _0805E94C
	b _0805E94A
_0805E93A:
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x3c]
	cmp r0, r1
	blt _0805E94C
	subs r0, #0x80
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _0805E94C
_0805E94A:
	str r1, [r2, #0x20]
_0805E94C:
	pop {r0}
	bx r0

	thumb_func_start sub_805E950
sub_805E950: @ 0x0805E950
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x44
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0805E98E
_0805E964:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E978
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _0805E97E
_0805E978:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_0805E97E:
	subs r0, #1
	cmp r0, #0x4e
	bhi _0805E988
	movs r0, #1
	b _0805E9A0
_0805E988:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805E98E:
	cmp r4, #1
	bhi _0805E99E
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _0805E964
_0805E99E:
	movs r0, #0
_0805E9A0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805E9A8
sub_805E9A8: @ 0x0805E9A8
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x44
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
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

	thumb_func_start sub_805E9D4
sub_805E9D4: @ 0x0805E9D4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805E9A8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x44
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
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

	thumb_func_start sub_805EA10
sub_805EA10: @ 0x0805EA10
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x44]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805EA24
sub_805EA24: @ 0x0805EA24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r7, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r5, [sp, #0x2c]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805EAB4 @ =sub_805EAC8
	ldr r2, _0805EAB8 @ =0x00004040
	ldr r1, _0805EABC @ =sub_805EBF8
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r3, sl
	str r3, [r4, #0x18]
	str r7, [r4, #0x1c]
	movs r2, #0
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	movs r0, #0
	strh r6, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
	strb r5, [r4, #8]
	strb r0, [r4]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	strh r2, [r4, #0xe]
	ldr r0, [sp, #0x28]
	str r0, [r4, #4]
	ldr r3, [sp, #0x30]
	str r3, [r4, #0x14]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _0805EAC0 @ =0x03000054
	adds r1, r1, r0
	ldr r2, _0805EAC4 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805E7A4
	mov r0, sb
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EAB4: .4byte sub_805EAC8
_0805EAB8: .4byte 0x00004040
_0805EABC: .4byte sub_805EBF8
_0805EAC0: .4byte 0x03000054
_0805EAC4: .4byte 0x01000002

	thumb_func_start sub_805EAC8
sub_805EAC8: @ 0x0805EAC8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805EAF8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_805EB68
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805EBB4
	cmp r5, #1
	bne _0805EAFC
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
	b _0805EB20
	.align 2, 0
_0805EAF8: .4byte gCurTask
_0805EAFC:
	adds r0, r4, #0
	bl sub_805E814
	cmp r0, #1
	bne _0805EB08
	movs r5, #1
_0805EB08:
	cmp r5, #1
	bne _0805EB20
	ldr r0, _0805EB28 @ =0x03000028
	adds r2, r6, r0
	ldr r1, _0805EB2C @ =gUnknown_080D1F7C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805EB30 @ =sub_805EB34
	str r0, [r1, #8]
_0805EB20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB28: .4byte 0x03000028
_0805EB2C: .4byte gUnknown_080D1F7C
_0805EB30: .4byte sub_805EB34

	thumb_func_start sub_805EB34
sub_805EB34: @ 0x0805EB34
	push {r4, r5, r6, lr}
	ldr r6, _0805EB64 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805EBB4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805E814
	cmp r5, #0
	bne _0805EB5E
	ldr r0, [r4, #4]
	strb r5, [r0]
	ldr r0, [r6]
	bl TaskDestroy
_0805EB5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB64: .4byte gCurTask

	thumb_func_start sub_805EB68
sub_805EB68: @ 0x0805EB68
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	adds r0, #0x20
	strh r0, [r4, #0xe]
	lsls r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	bhi _0805EBAC
	ldr r3, [r4, #0x1c]
	ldr r2, _0805EBA8 @ =gUnknown_082B48B4
	lsrs r0, r1, #0x14
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [r3]
	subs r1, r1, r0
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	str r0, [r4, #0x20]
	movs r0, #0
	b _0805EBAE
	.align 2, 0
_0805EBA8: .4byte gUnknown_082B48B4
_0805EBAC:
	movs r0, #1
_0805EBAE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805EBB4
sub_805EBB4: @ 0x0805EBB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805EBF4 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EBF4: .4byte gUnknown_03001D10
    
    thumb_func_start sub_805EBF8
sub_805EBF8:
    bx lr
    .align 2 , 0

	thumb_func_start CreateEntity_BuBu
CreateEntity_BuBu: @ 0x0805EBFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805EC84 @ =sub_805ED48
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805EC88 @ =sub_805F2AC
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x10]
	strb r2, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r0, #0x5a
	strh r0, [r7, #0xe]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r2, [r7, #8]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805EC8C
	movs r0, #0xff
	b _0805EC8E
	.align 2, 0
_0805EC84: .4byte sub_805ED48
_0805EC88: .4byte sub_805F2AC
_0805EC8C:
	movs r0, #1
_0805EC8E:
	strb r0, [r7, #9]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _0805ECC0 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805ECC4
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805ECC0: .4byte 0x01000002

	thumb_func_start sub_805ECC4
sub_805ECC4: @ 0x0805ECC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x2c
	str r0, [r4, #0x2c]
	ldr r1, _0805ED40 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805ED44 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805ED2E
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805ED2E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ED40: .4byte gUnknown_080D1F8C
_0805ED44: .4byte gUnknown_03001D10

	thumb_func_start sub_805ED48
sub_805ED48: @ 0x0805ED48
	push {r4, lr}
	ldr r0, _0805ED94 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805ED98 @ =0x0300001C
	adds r0, r3, r1
	subs r1, #0x12
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805ED9C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805ED80
	cmp r1, #4
	beq _0805ED80
	adds r0, r4, #0
	bl sub_805F15C
_0805ED80:
	adds r0, r4, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805EDA0
	ldr r0, _0805ED94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805EDF8
	.align 2, 0
_0805ED94: .4byte gCurTask
_0805ED98: .4byte 0x0300001C
_0805ED9C: .4byte gUnknown_030008A0
_0805EDA0:
	adds r0, r4, #0
	bl sub_805F268
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	ble _0805EDB4
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _0805EDD8
_0805EDB4:
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _0805EDCC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0805EDD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805EDD4 @ =sub_805EE0C
	b _0805EDF6
	.align 2, 0
_0805EDCC: .4byte gUnknown_080D1F8C
_0805EDD0: .4byte gCurTask
_0805EDD4: .4byte sub_805EE0C
_0805EDD8:
	adds r0, r4, #0
	bl sub_805F1A0
	cmp r0, #1
	bne _0805EDF8
	adds r2, r4, #0
	adds r2, #0x2c
	ldr r1, _0805EE00 @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, _0805EE04 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805EE08 @ =sub_805F094
_0805EDF6:
	str r0, [r1, #8]
_0805EDF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE00: .4byte gUnknown_080D1F8C
_0805EE04: .4byte gCurTask
_0805EE08: .4byte sub_805F094

	thumb_func_start sub_805EE0C
sub_805EE0C: @ 0x0805EE0C
	push {r4, r5, r6, lr}
	ldr r6, _0805EE2C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805EE30
	ldr r0, [r6]
	bl TaskDestroy
	b _0805EEA2
	.align 2, 0
_0805EE2C: .4byte gCurTask
_0805EE30:
	adds r0, r5, #0
	bl sub_805F268
	cmp r0, #0
	bne _0805EE84
	ldr r0, _0805EE54 @ =0x0300002C
	adds r3, r4, r0
	ldr r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805EE5C
	ldr r0, _0805EE58 @ =0xFFFFFBFF
	ands r1, r0
	b _0805EE5E
	.align 2, 0
_0805EE54: .4byte 0x0300002C
_0805EE58: .4byte 0xFFFFFBFF
_0805EE5C:
	orrs r1, r2
_0805EE5E:
	str r1, [r3, #8]
	ldr r1, _0805EE78 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	strb r2, [r5, #6]
	ldr r0, _0805EE7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805EE80 @ =sub_805ED48
	b _0805EEA0
	.align 2, 0
_0805EE78: .4byte gUnknown_080D1F8C
_0805EE7C: .4byte gCurTask
_0805EE80: .4byte sub_805ED48
_0805EE84:
	adds r0, r5, #0
	bl sub_805F1A0
	cmp r0, #1
	bne _0805EEA2
	ldr r0, _0805EEA8 @ =0x0300002C
	adds r2, r4, r0
	ldr r1, _0805EEAC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _0805EEB0 @ =sub_805F094
_0805EEA0:
	str r0, [r1, #8]
_0805EEA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EEA8: .4byte 0x0300002C
_0805EEAC: .4byte gUnknown_080D1F8C
_0805EEB0: .4byte sub_805F094

	thumb_func_start sub_805EEB4
sub_805EEB4: @ 0x0805EEB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r3, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r3, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	mov sb, r2
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r3, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	mov sl, r2
	ldr r1, _0805EF5C @ =gUnknown_03001CFC
	ldr r3, [r1]
	cmp r3, #0
	bne _0805EEEE
	b _0805F010
_0805EEEE:
	ldr r1, _0805EF60 @ =gUnknown_030008A0
	ldrb r2, [r1, #4]
	subs r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bhi _0805EEFE
	b _0805F012
_0805EEFE:
	cmp r2, #4
	bne _0805EF04
	b _0805F012
_0805EF04:
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	movs r6, #0
	movs r2, #0xfd
	lsls r2, r2, #0x18
	mov r8, r2
	mov r3, sl
	subs r3, #8
	str r3, [sp, #0xc]
_0805EF1A:
	lsls r0, r6, #2
	adds r1, r0, r6
	lsls r3, r1, #2
	adds r4, r5, r3
	ldrh r1, [r4, #0x34]
	adds r7, r0, #0
	cmp r1, #0
	beq _0805EFF8
	movs r0, #1
	str r0, [sp]
	mov r2, sb
	subs r2, #8
	adds r1, r5, #0
	adds r1, #0x28
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r3, r0, #8
	mov ip, r1
	cmp r2, r3
	blt _0805EF64
	ldrh r0, [r4, #0x30]
	adds r0, #0x40
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0x12
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _0805EF84
	strh r1, [r4, #0x30]
	b _0805EF84
	.align 2, 0
_0805EF5C: .4byte gUnknown_03001CFC
_0805EF60: .4byte gUnknown_030008A0
_0805EF64:
	mov r0, sb
	adds r0, #8
	cmp r0, r3
	bgt _0805EF80
	ldrh r0, [r4, #0x30]
	subs r0, #0x40
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	mov r3, r8
	asrs r1, r3, #0x10
	cmp r0, r8
	bge _0805EF84
	strh r1, [r4, #0x30]
	b _0805EF84
_0805EF80:
	movs r0, #1
	str r0, [sp, #4]
_0805EF84:
	adds r0, r7, r6
	lsls r3, r0, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r0, r1, r3
	ldr r0, [r0]
	asrs r2, r0, #8
	adds r4, r1, #0
	ldr r1, [sp, #0xc]
	cmp r1, r2
	blt _0805EFB4
	adds r1, r5, r3
	ldrh r0, [r1, #0x32]
	adds r0, #0x40
	strh r0, [r1, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0x12
	asrs r2, r3, #0x10
	cmp r0, r2
	ble _0805EFD6
	strh r2, [r1, #0x32]
	b _0805EFD6
_0805EFB4:
	mov r0, sl
	adds r0, #8
	cmp r0, r2
	bgt _0805EFD2
	adds r1, r5, r3
	ldrh r0, [r1, #0x32]
	subs r0, #0x40
	strh r0, [r1, #0x32]
	lsls r0, r0, #0x10
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r8
	bge _0805EFD6
	strh r2, [r1, #0x32]
	b _0805EFD6
_0805EFD2:
	movs r0, #1
	str r0, [sp, #8]
_0805EFD6:
	ldr r1, [sp, #4]
	cmp r1, #1
	bne _0805EFF8
	ldr r2, [sp, #8]
	cmp r2, #1
	bne _0805EFF8
	adds r1, r7, r6
	lsls r1, r1, #2
	mov r3, ip
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	bl sub_8029C54
_0805EFF8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x1f
	bls _0805EF1A
	ldr r0, [sp]
	cmp r0, #0
	bne _0805F00C
	movs r0, #1
	b _0805F012
_0805F00C:
	movs r0, #0
	b _0805F012
_0805F010:
	movs r0, #0
_0805F012:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F024
sub_805F024: @ 0x0805F024
	push {lr}
	adds r2, r0, #0
	ldr r1, _0805F060 @ =gUnknown_080D1FAC
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	ldr r3, _0805F064 @ =0xFFFFC000
	adds r0, r0, r3
	cmp r1, r0
	bge _0805F044
	str r0, [r2, #0x20]
_0805F044:
	ldr r0, [r2, #0x18]
	ldr r1, _0805F064 @ =0xFFFFC000
	adds r0, r0, r1
	ldr r1, [r2, #0x20]
	cmp r1, r0
	bne _0805F06C
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	bne _0805F068
	movs r0, #0x5a
	strh r0, [r2, #0xe]
	movs r0, #1
	b _0805F08E
	.align 2, 0
_0805F060: .4byte gUnknown_080D1FAC
_0805F064: .4byte 0xFFFFC000
_0805F068:
	subs r0, #1
	strh r0, [r2, #0xe]
_0805F06C:
	ldrh r0, [r2, #0x10]
	cmp r0, #5
	bhi _0805F076
	adds r0, #1
	b _0805F08A
_0805F076:
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0805F088
	movs r0, #2
	strb r0, [r2, #6]
_0805F088:
	movs r0, #0
_0805F08A:
	strh r0, [r2, #0x10]
	movs r0, #0
_0805F08E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F094
sub_805F094: @ 0x0805F094
	push {r4, r5, r6, lr}
	ldr r6, _0805F0CC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0805F0D0 @ =0x0300001C
	adds r0, r4, r1
	subs r1, #0x12
	adds r2, r4, r1
	subs r1, #2
	adds r3, r4, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r5, #0
	bl sub_805F268
	adds r0, r5, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805F0D4
	ldr r0, [r6]
	bl TaskDestroy
	b _0805F0F2
	.align 2, 0
_0805F0CC: .4byte gCurTask
_0805F0D0: .4byte 0x0300001C
_0805F0D4:
	adds r0, r5, #0
	bl sub_805EEB4
	cmp r0, #1
	bne _0805F0F2
	ldr r0, _0805F0F8 @ =0x0300002C
	adds r2, r4, r0
	ldr r1, _0805F0FC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _0805F100 @ =sub_805F104
	str r0, [r1, #8]
_0805F0F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F0F8: .4byte 0x0300002C
_0805F0FC: .4byte gUnknown_080D1F8C
_0805F100: .4byte sub_805F104

	thumb_func_start sub_805F104
sub_805F104: @ 0x0805F104
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805F12C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_805F268
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805F130
	ldr r0, [r7]
	bl TaskDestroy
	b _0805F148
	.align 2, 0
_0805F12C: .4byte gCurTask
_0805F130:
	cmp r5, #0
	bne _0805F148
	ldr r0, _0805F150 @ =0x0300002C
	adds r2, r6, r0
	ldr r1, _0805F154 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805F158 @ =sub_805ED48
	str r0, [r1, #8]
_0805F148:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F150: .4byte 0x0300002C
_0805F154: .4byte gUnknown_080D1F8C
_0805F158: .4byte sub_805ED48

	thumb_func_start sub_805F15C
sub_805F15C: @ 0x0805F15C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805F182
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x28]
	cmp r0, r1
	bgt _0805F196
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	ble _0805F196
	b _0805F194
_0805F182:
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	blt _0805F196
	ldr r3, _0805F19C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	bge _0805F196
_0805F194:
	str r1, [r2, #0x1c]
_0805F196:
	pop {r0}
	bx r0
	.align 2, 0
_0805F19C: .4byte 0xFFFFFF00

	thumb_func_start sub_805F1A0
sub_805F1A0: @ 0x0805F1A0
	push {lr}
	ldr r1, _0805F1D0 @ =gUnknown_03001CFC
	ldr r1, [r1]
	cmp r1, #0
	beq _0805F1D8
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	movs r3, #0
_0805F1B4:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0x34]
	cmp r1, #0
	bne _0805F1D4
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #0x1f
	bls _0805F1B4
	b _0805F1DA
	.align 2, 0
_0805F1D0: .4byte gUnknown_03001CFC
_0805F1D4:
	movs r0, #1
	b _0805F1DA
_0805F1D8:
	movs r0, #0
_0805F1DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F1E0
sub_805F1E0: @ 0x0805F1E0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x20]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	blt _0805F1FA
	str r2, [r1, #0x20]
	movs r0, #1
	b _0805F1FC
_0805F1FA:
	movs r0, #0
_0805F1FC:
	pop {r1}
	bx r1

	thumb_func_start sub_805F200
sub_805F200: @ 0x0805F200
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

	thumb_func_start sub_805F22C
sub_805F22C: @ 0x0805F22C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805F200
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

	thumb_func_start sub_805F268
sub_805F268: @ 0x0805F268
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805F2A8 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F2A8: .4byte gUnknown_03001D10

	thumb_func_start sub_805F2AC
sub_805F2AC: @ 0x0805F2AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805F2C0
sub_805F2C0: @ 0x0805F2C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	mov sb, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0805F360 @ =sub_805F418
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805F364 @ =sub_805F9A4
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r5, [r7]
	ldrb r0, [r5]
	strb r0, [r7, #6]
	strb r4, [r7, #4]
	movs r2, #0
	strh r6, [r7, #0xc]
	mov r0, r8
	strh r0, [r7, #0xe]
	mov r0, sb
	lsls r1, r0, #1
	ldrb r0, [r5]
	adds r1, r1, r0
	lsls r1, r1, #0xb
	str r1, [r7, #0x20]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [r7, #0x14]
	mov r0, sb
	strb r0, [r7, #0x10]
	strb r2, [r7, #5]
	strb r2, [r7, #7]
	strb r2, [r7, #8]
	strb r2, [r7, #9]
	ldrb r1, [r5, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805F368
	movs r0, #0xff
	b _0805F36A
	.align 2, 0
_0805F360: .4byte sub_805F418
_0805F364: .4byte sub_805F9A4
_0805F368:
	movs r0, #1
_0805F36A:
	strb r0, [r7, #0xa]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x5c
	ldr r2, _0805F394 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805F398
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F394: .4byte 0x01000002

	thumb_func_start sub_805F398
sub_805F398: @ 0x0805F398
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x30
	str r0, [r4, #0x30]
	ldr r1, _0805F410 @ =gUnknown_080D1FB0
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805F414 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805F402
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805F402:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F410: .4byte gUnknown_080D1FB0
_0805F414: .4byte gUnknown_03001D10

	thumb_func_start sub_805F418
sub_805F418: @ 0x0805F418
	push {r4, r5, r6, r7, lr}
	ldr r5, _0805F44C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805F450 @ =0x03000020
	adds r0, r3, r1
	ldr r2, _0805F454 @ =0x03000018
	adds r1, r3, r2
	ldr r6, _0805F458 @ =0x0300000C
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_805F89C
	cmp r0, #1
	bne _0805F45C
	ldr r0, [r5]
	bl TaskDestroy
	b _0805F504
	.align 2, 0
_0805F44C: .4byte gCurTask
_0805F450: .4byte 0x03000020
_0805F454: .4byte 0x03000018
_0805F458: .4byte 0x0300000C
_0805F45C:
	adds r0, r4, #0
	bl sub_805F8E8
	adds r7, r0, #0
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	cmp r7, #0
	beq _0805F476
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0805F47A
_0805F476:
	movs r0, #0
	strb r0, [r4, #5]
_0805F47A:
	ldr r0, _0805F4C8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F504
	cmp r1, #4
	beq _0805F504
	ldrb r0, [r4, #5]
	cmp r0, #0x14
	bls _0805F498
	adds r0, r4, #0
	bl sub_805F858
_0805F498:
	ldr r2, [r4, #0x20]
	ldr r5, [r4, #0x28]
	cmp r2, r5
	ble _0805F4A6
	ldr r0, [r4, #0x2c]
	cmp r2, r0
	blt _0805F4DA
_0805F4A6:
	adds r3, r4, #0
	adds r3, #0x30
	ldr r1, [r3, #8]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0805F4D0
	ldr r0, [r4, #0x2c]
	cmp r2, r0
	blt _0805F4DA
	ldr r0, _0805F4CC @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r3, #8]
	movs r0, #0
	b _0805F4D8
	.align 2, 0
_0805F4C8: .4byte gUnknown_030008A0
_0805F4CC: .4byte 0xFFFFFBFF
_0805F4D0:
	cmp r2, r5
	bgt _0805F4DA
	orrs r1, r6
	str r1, [r3, #8]
_0805F4D8:
	strb r0, [r4, #7]
_0805F4DA:
	cmp r7, #0
	bne _0805F504
	adds r1, r4, #0
	adds r1, #0x30
	ldr r2, _0805F50C @ =gUnknown_080D1FB0
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	strb r3, [r4, #7]
	adds r1, #0x1b
	movs r0, #0xff
	strb r0, [r1]
	strb r3, [r4, #5]
	ldr r0, _0805F510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805F514 @ =sub_805F518
	str r0, [r1, #8]
_0805F504:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F50C: .4byte gUnknown_080D1FB0
_0805F510: .4byte gCurTask
_0805F514: .4byte sub_805F518

	thumb_func_start sub_805F518
sub_805F518: @ 0x0805F518
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0805F550 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r1, _0805F554 @ =0x03000020
	adds r0, r3, r1
	ldr r2, _0805F558 @ =0x03000018
	adds r1, r3, r2
	ldr r6, _0805F55C @ =0x0300000C
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
	adds r0, r5, #0
	bl sub_805F89C
	cmp r0, #1
	bne _0805F560
	ldr r0, [r4]
	bl TaskDestroy
	b _0805F640
	.align 2, 0
_0805F550: .4byte gCurTask
_0805F554: .4byte 0x03000020
_0805F558: .4byte 0x03000018
_0805F55C: .4byte 0x0300000C
_0805F560:
	adds r0, r5, #0
	bl sub_805F8E8
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	cmp r7, #0
	beq _0805F57A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0805F57E
_0805F57A:
	movs r0, #0
	strb r0, [r5, #5]
_0805F57E:
	ldr r0, _0805F604 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F640
	cmp r1, #4
	beq _0805F640
	ldrb r0, [r5, #5]
	cmp r0, #0x14
	bls _0805F59C
	adds r0, r5, #0
	bl sub_805F858
_0805F59C:
	ldrb r0, [r5, #5]
	cmp r0, #0x1d
	bne _0805F5D6
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0805F5D6
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r4, #0xff
	cmp r0, #0
	beq _0805F5B8
	movs r4, #1
_0805F5B8:
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r1, r4, #0xc
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	ldr r1, [r5, #0x24]
	ldr r2, _0805F608 @ =0xFFFFE500
	adds r1, r1, r2
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	str r4, [sp]
	bl sub_805F9B8
	movs r0, #1
	strb r0, [r5, #8]
_0805F5D6:
	ldr r2, [r5, #0x20]
	ldr r4, [r5, #0x28]
	cmp r2, r4
	ble _0805F5E4
	ldr r0, [r5, #0x2c]
	cmp r2, r0
	blt _0805F618
_0805F5E4:
	adds r3, r5, #0
	adds r3, #0x30
	ldr r1, [r3, #8]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0805F610
	ldr r0, [r5, #0x2c]
	cmp r2, r0
	blt _0805F618
	ldr r0, _0805F60C @ =0xFFFFFBFF
	ands r1, r0
	b _0805F616
	.align 2, 0
_0805F604: .4byte gUnknown_030008A0
_0805F608: .4byte 0xFFFFE500
_0805F60C: .4byte 0xFFFFFBFF
_0805F610:
	cmp r2, r4
	bgt _0805F618
	orrs r1, r6
_0805F616:
	str r1, [r3, #8]
_0805F618:
	cmp r7, #0
	bne _0805F640
	adds r1, r5, #0
	adds r1, #0x30
	ldr r2, _0805F648 @ =gUnknown_080D1FB0
	ldrh r0, [r2]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	adds r1, #0x1b
	movs r0, #0xff
	strb r0, [r1]
	strb r3, [r5, #8]
	ldr r0, _0805F64C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805F650 @ =sub_805F418
	str r0, [r1, #8]
_0805F640:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F648: .4byte gUnknown_080D1FB0
_0805F64C: .4byte gCurTask
_0805F650: .4byte sub_805F418

	thumb_func_start sub_805F654
sub_805F654: @ 0x0805F654
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _0805F6B4 @ =gUnknown_080D1FC0
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _0805F6B8 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F6B4: .4byte gUnknown_080D1FC0
_0805F6B8: .4byte gUnknown_03001D10

	thumb_func_start sub_805F6BC
sub_805F6BC: @ 0x0805F6BC
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0805F748 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _0805F74C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F6E6
	cmp r1, #4
	beq _0805F6E6
	adds r0, r4, #0
	bl sub_805F800
_0805F6E6:
	adds r0, r4, #0
	bl sub_805FA80
	adds r0, r4, #0
	bl sub_805F75C
	cmp r0, #1
	bne _0805F6F8
	movs r5, #1
_0805F6F8:
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r6, #0
	str r6, [sp]
	ldr r2, _0805F750 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _0805F722
	movs r5, #1
_0805F722:
	cmp r5, #1
	bne _0805F73E
	adds r1, r4, #0
	adds r1, #0x18
	ldr r2, _0805F754 @ =gUnknown_080D1FC0
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r6, [r1, #8]
	ldr r0, _0805F748 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805F758 @ =sub_805FA50
	str r0, [r1, #8]
_0805F73E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F748: .4byte gCurTask
_0805F74C: .4byte gUnknown_030008A0
_0805F750: .4byte sub_805217C
_0805F754: .4byte gUnknown_080D1FC0
_0805F758: .4byte sub_805FA50

	thumb_func_start sub_805F75C
sub_805F75C: @ 0x0805F75C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0805F780:
	cmp r5, #0
	bne _0805F790
	ldr r0, _0805F78C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805F79A
	.align 2, 0
_0805F78C: .4byte gUnknown_030008A0
_0805F790:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805F79A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805F7E4 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805F7E8
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805F7E8
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805F7E0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805F7E0:
	movs r0, #1
	b _0805F7F4
	.align 2, 0
_0805F7E4: .4byte gUnknown_030015C0
_0805F7E8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805F780
	movs r0, #0
_0805F7F4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805F800
sub_805F800: @ 0x0805F800
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0805F81A
	adds r1, r0, #0
	adds r0, r1, #4
	b _0805F820
_0805F81A:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_0805F820:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r4, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_805F858
sub_805F858: @ 0x0805F858
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805F87E
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x2c]
	cmp r0, r1
	bgt _0805F892
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _0805F892
	b _0805F890
_0805F87E:
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x28]
	cmp r0, r1
	blt _0805F892
	ldr r3, _0805F898 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _0805F892
_0805F890:
	str r1, [r2, #0x20]
_0805F892:
	pop {r0}
	bx r0
	.align 2, 0
_0805F898: .4byte 0xFFFFFE00

	thumb_func_start sub_805F89C
sub_805F89C: @ 0x0805F89C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0
	mov r0, sp
	strb r1, [r0]
	adds r0, r4, #0
	mov r1, sp
	bl sub_805F958
	adds r3, r0, #0
	cmp r3, #1
	bne _0805F8DC
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F8CC
	ldr r2, [r4]
	adds r0, r3, #0
	ldrb r1, [r4, #0x10]
	lsls r0, r1
	ldrb r1, [r2, #7]
	orrs r0, r1
	strb r0, [r2, #7]
_0805F8CC:
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0x10]
	lsls r3, r4
	ldrb r0, [r1]
	bics r0, r3
	strb r0, [r1]
	movs r0, #1
	b _0805F8DE
_0805F8DC:
	movs r0, #0
_0805F8DE:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F8E8
sub_805F8E8: @ 0x0805F8E8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x30
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805F928 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F928: .4byte gUnknown_03001D10

	thumb_func_start sub_805F92C
sub_805F92C: @ 0x0805F92C
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x30
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F958
sub_805F958: @ 0x0805F958
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl sub_805F92C
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x30
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #0xb
	ldrb r1, [r4, #0x10]
	lsls r1, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #0xb
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xe]
	strh r0, [r1, #0xe]
	str r2, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	ldr r0, [sp, #4]
	strb r0, [r5]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805F9A4
sub_805F9A4: @ 0x0805F9A4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805F9B8
sub_805F9B8: @ 0x0805F9B8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0805FA3C @ =sub_805F6BC
	ldr r2, _0805FA40 @ =0x00004040
	ldr r1, _0805FA44 @ =sub_805FAC4
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, sb
	str r0, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r2, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _0805FA48 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _0805FA4C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805F654
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA3C: .4byte sub_805F6BC
_0805FA40: .4byte 0x00004040
_0805FA44: .4byte sub_805FAC4
_0805FA48: .4byte 0x03000044
_0805FA4C: .4byte 0x01000002

	thumb_func_start sub_805FA50
sub_805FA50: @ 0x0805FA50
	push {r4, r5, r6, lr}
	ldr r6, _0805FA7C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805FA80
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805F75C
	cmp r5, #0
	bne _0805FA76
	ldr r0, [r6]
	bl TaskDestroy
_0805FA76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA7C: .4byte gCurTask

	thumb_func_start sub_805FA80
sub_805FA80: @ 0x0805FA80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805FAC0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805FAC0: .4byte gUnknown_03001D10

	thumb_func_start sub_805FAC4
sub_805FAC4: @ 0x0805FAC4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Guard
CreateEntity_Guard: @ 0x0805FAD8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805FB50 @ =sub_805FB8C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805FB54 @ =sub_805FC04
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #0xf]
	strb r5, [r0, #0xe]
	movs r1, #0
	strh r6, [r0, #0x10]
	mov r2, r8
	strh r2, [r0, #0x12]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	ldrb r1, [r4]
	strb r1, [r0, #4]
	ldrb r1, [r4, #1]
	strb r1, [r0, #5]
	ldrb r1, [r4, #7]
	strb r1, [r0, #0xb]
	ldrb r1, [r4, #3]
	strb r1, [r0, #7]
	ldrb r1, [r4, #5]
	strb r1, [r0, #9]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB50: .4byte sub_805FB8C
_0805FB54: .4byte sub_805FC04

	thumb_func_start sub_805FB58
sub_805FB58: @ 0x0805FB58
	push {lr}
	ldr r3, _0805FB88 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	bne _0805FB84
	ldr r0, [r2]
	ldrb r1, [r2, #0xb]
	strb r1, [r0, #7]
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	cmp r0, #6
	bhi _0805FB7E
	ldrb r0, [r2, #0xf]
	strb r0, [r1]
_0805FB7E:
	ldr r0, [r3]
	bl TaskDestroy
_0805FB84:
	pop {r0}
	bx r0
	.align 2, 0
_0805FB88: .4byte gCurTask

	thumb_func_start sub_805FB8C
sub_805FB8C: @ 0x0805FB8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _0805FBF8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrb r0, [r5, #0xb]
	ldrb r1, [r5, #0xc]
	asrs r0, r1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _0805FBD4
	ldr r7, _0805FBFC @ =0x03000004
	adds r0, r4, r7
	ldrh r1, [r5, #0x10]
	ldrh r2, [r5, #0x12]
	ldrb r3, [r5, #0xf]
	adds r7, #9
	adds r4, r4, r7
	str r4, [sp]
	ldrb r4, [r5, #0xc]
	str r4, [sp, #4]
	bl sub_805F2C0
	adds r0, r6, #0
	ldrb r1, [r5, #0xc]
	lsls r0, r1
	ldrb r1, [r5, #0xd]
	orrs r0, r1
	strb r0, [r5, #0xd]
_0805FBD4:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0805FBEA
	mov r7, r8
	ldr r1, [r7]
	ldr r0, _0805FC00 @ =sub_805FB58
	str r0, [r1, #8]
_0805FBEA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBF8: .4byte gCurTask
_0805FBFC: .4byte 0x03000004
_0805FC00: .4byte sub_805FB58
    
    thumb_func_start sub_805FC04
sub_805FC04:
    bx lr
    .align 2 , 0

	thumb_func_start CreateEntity_Yadokk
CreateEntity_Yadokk: @ 0x0805FC08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805FC80 @ =sub_805FD48
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805FC84 @ =sub_8060134
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805FC88
	movs r0, #0xff
	b _0805FC8A
	.align 2, 0
_0805FC80: .4byte sub_805FD48
_0805FC84: .4byte sub_8060134
_0805FC88:
	movs r0, #1
_0805FC8A:
	strb r0, [r7, #8]
	movs r0, #0
	strb r0, [r7, #6]
	strb r0, [r7, #7]
	add r1, sp, #4
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _0805FCC0 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805FCC4
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FCC0: .4byte 0x01000002

	thumb_func_start sub_805FCC4
sub_805FCC4: @ 0x0805FCC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _0805FD40 @ =gUnknown_080D1FD0
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805FD44 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805FD2E
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805FD2E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD40: .4byte gUnknown_080D1FD0
_0805FD44: .4byte gUnknown_03001D10

	thumb_func_start sub_805FD48
sub_805FD48: @ 0x0805FD48
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0805FDA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0x28
	adds r4, r3, r0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _0805FDA8 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #3
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805FDAC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805FD90
	cmp r1, #4
	beq _0805FD90
	adds r0, r5, #0
	bl sub_805FFEC
_0805FD90:
	adds r0, r5, #0
	bl sub_80600F8
	cmp r0, #1
	bne _0805FDB0
	ldr r0, _0805FDA4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805FE30
	.align 2, 0
_0805FDA4: .4byte gCurTask
_0805FDA8: .4byte 0x03000018
_0805FDAC: .4byte gUnknown_030008A0
_0805FDB0:
	adds r0, r5, #0
	bl sub_8060088
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	ble _0805FDC4
	ldr r0, [r5, #0x24]
	cmp r1, r0
	blt _0805FDF4
_0805FDC4:
	ldrb r0, [r5, #6]
	movs r2, #3
	cmp r0, #0
	bne _0805FDCE
	movs r2, #1
_0805FDCE:
	ldr r1, _0805FDE8 @ =gUnknown_080D1FD0
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _0805FDEC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805FDF0 @ =sub_805FE40
	str r0, [r1, #8]
	b _0805FE30
	.align 2, 0
_0805FDE8: .4byte gUnknown_080D1FD0
_0805FDEC: .4byte gCurTask
_0805FDF0: .4byte sub_805FE40
_0805FDF4:
	adds r0, r5, #0
	bl sub_8060030
	adds r7, r0, #0
	cmp r7, #1
	bne _0805FE30
	ldrb r6, [r5, #6]
	cmp r6, #0
	bne _0805FE30
	adds r4, r5, #0
	adds r4, #0x28
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	bl sub_8060148
	strb r7, [r5, #6]
	mov r0, sp
	strh r6, [r0]
	adds r1, r5, #0
	adds r1, #0x54
	ldr r2, _0805FE38 @ =0x01000002
	bl sub_80C7520
	ldr r1, _0805FE3C @ =gUnknown_080D1FD0
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
_0805FE30:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FE38: .4byte 0x01000002
_0805FE3C: .4byte gUnknown_080D1FD0

	thumb_func_start sub_805FE40
sub_805FE40: @ 0x0805FE40
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805FE68 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8060088
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_80600F8
	cmp r0, #1
	bne _0805FE6C
	ldr r0, [r7]
	bl TaskDestroy
	b _0805FECE
	.align 2, 0
_0805FE68: .4byte gCurTask
_0805FE6C:
	ldr r0, _0805FEA8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805FECE
	cmp r1, #4
	beq _0805FECE
	cmp r6, #0
	bne _0805FECE
	ldr r0, _0805FEAC @ =0x03000028
	adds r2, r5, r0
	ldrb r0, [r4, #6]
	movs r4, #2
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	ands r4, r1
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805FEB4
	ldr r0, _0805FEB0 @ =0xFFFFFBFF
	ands r1, r0
	b _0805FEB6
	.align 2, 0
_0805FEA8: .4byte gUnknown_030008A0
_0805FEAC: .4byte 0x03000028
_0805FEB0: .4byte 0xFFFFFBFF
_0805FEB4:
	orrs r1, r3
_0805FEB6:
	str r1, [r2, #8]
	ldr r1, _0805FED4 @ =gUnknown_080D1FD0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _0805FED8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805FEDC @ =sub_805FD48
	str r0, [r1, #8]
_0805FECE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FED4: .4byte gUnknown_080D1FD0
_0805FED8: .4byte gCurTask
_0805FEDC: .4byte sub_805FD48

	thumb_func_start sub_805FEE0
sub_805FEE0: @ 0x0805FEE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x14
	str r1, [r4, #0x14]
	ldr r2, _0805FF40 @ =gUnknown_080D1FF0
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	ldr r3, _0805FF44 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x20
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FF40: .4byte gUnknown_080D1FF0
_0805FF44: .4byte gUnknown_03001D10

	thumb_func_start sub_805FF48
sub_805FF48: @ 0x0805FF48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0xc]
	asrs r7, r1, #8
	ldr r1, [r0, #0x10]
	asrs r6, r1, #8
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x14
	mov r8, r0
	movs r5, #0
_0805FF6C:
	cmp r5, #0
	bne _0805FF7C
	ldr r0, _0805FF78 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805FF86
	.align 2, 0
_0805FF78: .4byte gUnknown_030008A0
_0805FF7C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805FF86:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805FFD0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805FFD4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805FFD4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805FFCC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805FFCC:
	movs r0, #1
	b _0805FFE0
	.align 2, 0
_0805FFD0: .4byte gUnknown_030015C0
_0805FFD4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805FF6C
	movs r0, #0
_0805FFE0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805FFEC
sub_805FFEC: @ 0x0805FFEC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08060012
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bgt _08060026
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _08060026
	b _08060024
_08060012:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _08060026
	ldr r3, _0806002C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _08060026
_08060024:
	str r1, [r2, #0x18]
_08060026:
	pop {r0}
	bx r0
	.align 2, 0
_0806002C: .4byte 0xFFFFFF00

	thumb_func_start sub_8060030
sub_8060030: @ 0x08060030
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x28
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0806006E
_08060044:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08060058
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _0806005E
_08060058:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_0806005E:
	subs r0, #1
	cmp r0, #0x26
	bhi _08060068
	movs r0, #1
	b _08060080
_08060068:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0806006E:
	cmp r4, #1
	bhi _0806007E
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _08060044
_0806007E:
	movs r0, #0
_08060080:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8060088
sub_8060088: @ 0x08060088
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080600C8 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080600C8: .4byte gUnknown_03001D10

	thumb_func_start sub_80600CC
sub_80600CC: @ 0x080600CC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_80600F8
sub_80600F8: @ 0x080600F8
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80600CC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
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

	thumb_func_start sub_8060134
sub_8060134: @ 0x08060134
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8060148
sub_8060148: @ 0x08060148
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080601B4 @ =sub_80601C8
	ldr r2, _080601B8 @ =0x00004040
	ldr r1, _080601BC @ =sub_80602B4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, r8
	str r0, [r4, #0xc]
	mov r0, sb
	str r0, [r4, #0x10]
	movs r2, #0
	strh r5, [r4, #2]
	strh r6, [r4, #4]
	strh r2, [r4]
	strh r2, [r4, #6]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _080601C0 @ =0x03000040
	adds r1, r1, r0
	ldr r2, _080601C4 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805FEE0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080601B4: .4byte sub_80601C8
_080601B8: .4byte 0x00004040
_080601BC: .4byte sub_80602B4
_080601C0: .4byte 0x03000040
_080601C4: .4byte 0x01000002

	thumb_func_start sub_80601C8
sub_80601C8: @ 0x080601C8
	push {r4, r5, lr}
	ldr r5, _08060200 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8060204
	adds r0, r4, #0
	bl sub_8060238
	adds r0, r4, #0
	bl sub_805FF48
	adds r0, r4, #0
	bl sub_806027C
	cmp r0, #1
	bne _080601F8
	ldr r0, [r5]
	bl TaskDestroy
_080601F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08060200: .4byte gCurTask

	thumb_func_start sub_8060204
sub_8060204: @ 0x08060204
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2]
	ldr r0, _08060230 @ =0x000009FF
	cmp r1, r0
	bhi _08060216
	adds r0, r1, #0
	adds r0, #0x40
	strh r0, [r2]
_08060216:
	ldr r1, _08060234 @ =gUnknown_080D1FF8
	ldrh r0, [r2]
	lsrs r0, r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08060230: .4byte 0x000009FF
_08060234: .4byte gUnknown_080D1FF8

	thumb_func_start sub_8060238
sub_8060238: @ 0x08060238
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x14
	ldr r2, [r0, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08060278 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060278: .4byte gUnknown_03001D10

	thumb_func_start sub_806027C
sub_806027C: @ 0x0806027C
	push {r4, lr}
	sub sp, #0x28
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x14]
	mov r2, sp
	ldrh r1, [r0, #2]
	movs r3, #0
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrh r0, [r0, #4]
	strh r0, [r1, #0xe]
	str r4, [sp]
	mov r0, sp
	strb r3, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80602B4
sub_80602B4: @ 0x080602B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Ginpe
CreateEntity_Ginpe: @ 0x080602C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08060344 @ =sub_8060408
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060348 @ =sub_80607B0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r2, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	strb r2, [r7, #6]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806034C
	movs r0, #0xff
	b _0806034E
	.align 2, 0
_08060344: .4byte sub_8060408
_08060348: .4byte sub_80607B0
_0806034C:
	movs r0, #1
_0806034E:
	strb r0, [r7, #8]
	movs r1, #0
	strb r1, [r7, #7]
	add r0, sp, #4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _08060380 @ =0x01000002
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8060384
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060380: .4byte 0x01000002

	thumb_func_start sub_8060384
sub_8060384: @ 0x08060384
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _08060400 @ =gUnknown_080D2004
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08060404 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080603EE
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_080603EE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060400: .4byte gUnknown_080D2004
_08060404: .4byte gUnknown_03001D10

	thumb_func_start sub_8060408
sub_8060408: @ 0x08060408
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08060468 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x28
	adds r6, r3, r0
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, _0806046C @ =0x03000018
	adds r0, r3, r1
	ldr r2, _08060470 @ =0x03000010
	adds r1, r3, r2
	ldr r5, _08060474 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CD70
	ldr r0, _08060478 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060452
	cmp r1, #4
	beq _08060452
	adds r0, r4, #0
	bl sub_80606CC
_08060452:
	adds r0, r4, #0
	bl sub_8060774
	cmp r0, #1
	bne _0806047C
	ldr r0, _08060468 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080604E4
	.align 2, 0
_08060468: .4byte gCurTask
_0806046C: .4byte 0x03000018
_08060470: .4byte 0x03000010
_08060474: .4byte 0x0300000A
_08060478: .4byte gUnknown_030008A0
_0806047C:
	adds r0, r4, #0
	bl sub_8060704
	ldr r5, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r5, r0
	ble _08060490
	ldr r0, [r4, #0x24]
	cmp r5, r0
	blt _080604B0
_08060490:
	ldr r1, _080604A4 @ =gUnknown_080D2004
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	ldr r0, _080604A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080604AC @ =sub_8060654
	str r0, [r1, #8]
	b _080604E4
	.align 2, 0
_080604A4: .4byte gUnknown_080D2004
_080604A8: .4byte gCurTask
_080604AC: .4byte sub_8060654
_080604B0:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x59
	bls _080604E4
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r6, #1
	cmp r0, #0
	beq _080604CE
	movs r6, #0
_080604CE:
	ldr r1, [r4, #0x1c]
	ldr r0, _080604EC @ =0xFFFFEA00
	adds r1, r1, r0
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	str r6, [sp]
	adds r0, r5, #0
	bl sub_80607C4
	movs r0, #0
	strb r0, [r4, #6]
_080604E4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080604EC: .4byte 0xFFFFEA00

	thumb_func_start sub_80604F0
sub_80604F0: @ 0x080604F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _08060550 @ =gUnknown_080D2014
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _08060554 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060550: .4byte gUnknown_080D2014
_08060554: .4byte gUnknown_03001D10

	thumb_func_start sub_8060558
sub_8060558: @ 0x08060558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0806057C:
	cmp r5, #0
	bne _0806058C
	ldr r0, _08060588 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08060596
	.align 2, 0
_08060588: .4byte gUnknown_030008A0
_0806058C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08060596:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080605E0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080605E4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _080605E4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080605DC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_080605DC:
	movs r0, #1
	b _080605F0
	.align 2, 0
_080605E0: .4byte gUnknown_030015C0
_080605E4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806057C
	movs r0, #0
_080605F0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80605FC
sub_80605FC: @ 0x080605FC
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060616
	adds r1, r0, #0
	adds r0, r1, #4
	b _0806061C
_08060616:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_0806061C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r4, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8060654
sub_8060654: @ 0x08060654
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806067C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_8060704
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060774
	cmp r0, #1
	bne _08060680
	ldr r0, [r7]
	bl TaskDestroy
	b _080606BA
	.align 2, 0
_0806067C: .4byte gCurTask
_08060680:
	cmp r5, #0
	bne _080606BA
	ldr r0, _0806069C @ =0x03000028
	adds r4, r6, r0
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080606A4
	ldr r0, _080606A0 @ =0xFFFFFBFF
	ands r1, r0
	b _080606A6
	.align 2, 0
_0806069C: .4byte 0x03000028
_080606A0: .4byte 0xFFFFFBFF
_080606A4:
	orrs r1, r2
_080606A6:
	str r1, [r4, #8]
	ldr r1, _080606C0 @ =gUnknown_080D2004
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _080606C4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080606C8 @ =sub_8060408
	str r0, [r1, #8]
_080606BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080606C0: .4byte gUnknown_080D2004
_080606C4: .4byte gCurTask
_080606C8: .4byte sub_8060408

	thumb_func_start sub_80606CC
sub_80606CC: @ 0x080606CC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080606EE
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bgt _08060700
	adds r0, #0x80
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _08060700
	b _080606FE
_080606EE:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _08060700
	subs r0, #0x80
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _08060700
_080606FE:
	str r1, [r2, #0x18]
_08060700:
	pop {r0}
	bx r0

	thumb_func_start sub_8060704
sub_8060704: @ 0x08060704
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08060744 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060744: .4byte gUnknown_03001D10

	thumb_func_start sub_8060748
sub_8060748: @ 0x08060748
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_8060774
sub_8060774: @ 0x08060774
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8060748
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
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

	thumb_func_start sub_80607B0
sub_80607B0: @ 0x080607B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80607C4
sub_80607C4: @ 0x080607C4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08060848 @ =sub_806085C
	ldr r2, _0806084C @ =0x00004040
	ldr r1, _08060850 @ =sub_8060978
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, sb
	str r0, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r2, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08060854 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _08060858 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80604F0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060848: .4byte sub_806085C
_0806084C: .4byte 0x00004040
_08060850: .4byte sub_8060978
_08060854: .4byte 0x03000044
_08060858: .4byte 0x01000002

	thumb_func_start sub_806085C
sub_806085C: @ 0x0806085C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080608A4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r6, #0
	adds r0, r4, #0
	bl sub_80605FC
	adds r0, r4, #0
	bl sub_80608FC
	adds r0, r4, #0
	bl sub_8060558
	cmp r0, #1
	bne _08060884
	movs r6, #1
_08060884:
	cmp r6, #1
	bne _080608B4
	ldr r0, _080608A8 @ =0x03000018
	adds r1, r5, r0
	ldr r2, _080608AC @ =gUnknown_080D2014
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r3, [r1, #8]
	ldr r1, [r7]
	ldr r0, _080608B0 @ =sub_80608CC
	str r0, [r1, #8]
	b _080608C4
	.align 2, 0
_080608A4: .4byte gCurTask
_080608A8: .4byte 0x03000018
_080608AC: .4byte gUnknown_080D2014
_080608B0: .4byte sub_80608CC
_080608B4:
	adds r0, r4, #0
	bl sub_8060940
	cmp r0, #1
	bne _080608C4
	ldr r0, [r7]
	bl TaskDestroy
_080608C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80608CC
sub_80608CC: @ 0x080608CC
	push {r4, r5, r6, lr}
	ldr r6, _080608F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80608FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060558
	cmp r5, #0
	bne _080608F2
	ldr r0, [r6]
	bl TaskDestroy
_080608F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080608F8: .4byte gCurTask

	thumb_func_start sub_80608FC
sub_80608FC: @ 0x080608FC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806093C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806093C: .4byte gUnknown_03001D10

	thumb_func_start sub_8060940
sub_8060940: @ 0x08060940
	push {r4, lr}
	sub sp, #0x28
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x18
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x14]
	mov r2, sp
	ldrh r1, [r0, #4]
	movs r3, #0
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #0xe]
	str r4, [sp]
	mov r0, sp
	strb r3, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8060978
sub_8060978: @ 0x08060978
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806098C
sub_806098C: @ 0x0806098C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x10
	bl VramMalloc
	adds r7, r4, #0
	adds r7, #0x20
	str r0, [r4, #0x20]
	ldr r1, _08060A08 @ =gUnknown_080D2024
	ldrh r0, [r1]
	movs r6, #0
	movs r3, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08060A0C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	cmp r5, #2
	bne _080609F6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #8]
_080609F6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	adds r0, r7, #0
	bl sub_80BF44C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060A08: .4byte gUnknown_080D2024
_08060A0C: .4byte gUnknown_03001D10

	thumb_func_start sub_8060A10
sub_8060A10: @ 0x08060A10
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08060A54 @ =gCurTask
	ldr r0, [r7]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x20
	adds r5, r3, r0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08060A58 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8061054
	cmp r0, #1
	bne _08060A5C
	ldr r0, [r7]
	bl TaskDestroy
	b _08060AB0
	.align 2, 0
_08060A54: .4byte gCurTask
_08060A58: .4byte 0x03000018
_08060A5C:
	adds r0, r4, #0
	bl sub_8061010
	adds r2, r0, #0
	ldr r0, _08060AB8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060AB0
	cmp r1, #4
	beq _08060AB0
	cmp r2, #0
	bne _08060AB0
	ldr r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r6, #0xff
	cmp r0, #0
	beq _08060A8A
	movs r6, #1
_08060A8A:
	ldr r1, _08060ABC @ =gUnknown_080D2024
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _08060AC0 @ =0xFFFFE800
	adds r1, r1, r2
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	lsls r4, r6, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	bl sub_80610D0
	ldr r1, [r7]
	ldr r0, _08060AC4 @ =sub_8060AC8
	str r0, [r1, #8]
_08060AB0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060AB8: .4byte gUnknown_030008A0
_08060ABC: .4byte gUnknown_080D2024
_08060AC0: .4byte 0xFFFFE800
_08060AC4: .4byte sub_8060AC8

	thumb_func_start sub_8060AC8
sub_8060AC8: @ 0x08060AC8
	push {r4, r5, r6, lr}
	ldr r6, _08060AFC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08060B00 @ =0x03000018
	adds r0, r5, r1
	subs r1, #0xe
	adds r2, r5, r1
	subs r1, #2
	adds r3, r5, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8061054
	cmp r0, #1
	bne _08060B04
	ldr r0, [r6]
	bl TaskDestroy
	b _08060B48
	.align 2, 0
_08060AFC: .4byte gCurTask
_08060B00: .4byte 0x03000018
_08060B04:
	adds r0, r4, #0
	bl sub_8061010
	adds r2, r0, #0
	ldr r0, _08060B50 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060B48
	cmp r1, #4
	beq _08060B48
	cmp r2, #0
	bne _08060B28
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
_08060B28:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #6]
	cmp r0, r1
	blo _08060B48
	ldr r0, _08060B54 @ =0x03000020
	adds r2, r5, r0
	ldr r1, _08060B58 @ =gUnknown_080D2024
	ldrh r0, [r1]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strb r3, [r4, #7]
	ldr r1, [r6]
	ldr r0, _08060B5C @ =sub_8060A10
	str r0, [r1, #8]
_08060B48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060B50: .4byte gUnknown_030008A0
_08060B54: .4byte 0x03000020
_08060B58: .4byte gUnknown_080D2024
_08060B5C: .4byte sub_8060A10

	thumb_func_start sub_8060B60
sub_8060B60: @ 0x08060B60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _08060BC0 @ =gUnknown_080D2034
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _08060BC4 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060BC0: .4byte gUnknown_080D2034
_08060BC4: .4byte gUnknown_03001D10

	thumb_func_start sub_8060BC8
sub_8060BC8: @ 0x08060BC8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08060C50 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80611A0
	ldr r0, _08060C54 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060C48
	cmp r1, #4
	beq _08060C48
	adds r0, r4, #0
	bl sub_8060D0C
	adds r0, r4, #0
	bl sub_8060C68
	cmp r0, #1
	bne _08060C04
	movs r5, #1
_08060C04:
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r4, #0
	str r4, [sp]
	ldr r2, _08060C58 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _08060C2E
	movs r5, #1
_08060C2E:
	cmp r5, #1
	bne _08060C48
	ldr r0, _08060C5C @ =0x03000018
	adds r1, r6, r0
	ldr r2, _08060C60 @ =gUnknown_080D2034
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r4, [r1, #8]
	ldr r1, [r7]
	ldr r0, _08060C64 @ =sub_8061170
	str r0, [r1, #8]
_08060C48:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060C50: .4byte gCurTask
_08060C54: .4byte gUnknown_030008A0
_08060C58: .4byte sub_805217C
_08060C5C: .4byte 0x03000018
_08060C60: .4byte gUnknown_080D2034
_08060C64: .4byte sub_8061170

	thumb_func_start sub_8060C68
sub_8060C68: @ 0x08060C68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_08060C8C:
	cmp r5, #0
	bne _08060C9C
	ldr r0, _08060C98 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08060CA6
	.align 2, 0
_08060C98: .4byte gUnknown_030008A0
_08060C9C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08060CA6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08060CF0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08060CF4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08060CF4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08060CEC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08060CEC:
	movs r0, #1
	b _08060D00
	.align 2, 0
_08060CF0: .4byte gUnknown_030015C0
_08060CF4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08060C8C
	movs r0, #0
_08060D00:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8060D0C
sub_8060D0C: @ 0x08060D0C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D26
	adds r1, r0, #0
	adds r0, r1, #4
	b _08060D2C
_08060D26:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_08060D2C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r2, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D5C
	ldrh r0, [r3, #0xa]
	movs r6, #0xa
	ldrsh r1, [r3, r6]
	cmp r1, #0
	bgt _08060D58
	cmp r1, #0
	bge _08060D5C
_08060D58:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
_08060D5C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0xa]
	adds r1, r1, r0
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Yukigasen_Right
CreateEntity_Yukigasen_Right: @ 0x08060D80
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060E08 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060E0C @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x3c
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060E10 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060E14 @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #2
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060E08: .4byte sub_8060A10
_08060E0C: .4byte sub_80610BC
_08060E10: .4byte 0x0300004C
_08060E14: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Left
CreateEntity_Yukigasen_Left: @ 0x08060E18
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060EA0 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060EA4 @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x3c
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060EA8 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060EAC @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #3
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060EA0: .4byte sub_8060A10
_08060EA4: .4byte sub_80610BC
_08060EA8: .4byte 0x0300004C
_08060EAC: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Right_HighCooldown
CreateEntity_Yukigasen_Right_HighCooldown: @ 0x08060EB0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060F38 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060F3C @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060F40 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060F44 @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #2
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060F38: .4byte sub_8060A10
_08060F3C: .4byte sub_80610BC
_08060F40: .4byte 0x0300004C
_08060F44: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Left_HighCooldown
CreateEntity_Yukigasen_Left_HighCooldown: @ 0x08060F48
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060FD0 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060FD4 @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060FD8 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060FDC @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #3
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD0: .4byte sub_8060A10
_08060FD4: .4byte sub_80610BC
_08060FD8: .4byte 0x0300004C
_08060FDC: .4byte 0x01000002

	thumb_func_start sub_8060FE0
sub_8060FE0: @ 0x08060FE0
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	ldr r4, [sp, #0x10]
	strb r4, [r0, #4]
	str r2, [r0]
	ldrb r4, [r2]
	strb r4, [r0, #5]
	movs r4, #0
	strh r3, [r0, #0xa]
	strh r5, [r0, #0xc]
	ldrb r3, [r2]
	lsls r3, r3, #0xb
	str r3, [r0, #0x18]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0xb
	str r2, [r0, #0x1c]
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
	strb r4, [r0, #8]
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8061010
sub_8061010: @ 0x08061010
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08061050 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061050: .4byte gUnknown_03001D10

	thumb_func_start sub_8061054
sub_8061054: @ 0x08061054
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8061090
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
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

	thumb_func_start sub_8061090
sub_8061090: @ 0x08061090
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_80610BC
sub_80610BC: @ 0x080610BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80610D0
sub_80610D0: @ 0x080610D0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806115C @ =sub_8060BC8
	ldr r2, _08061160 @ =0x00004040
	ldr r1, _08061164 @ =sub_80611E4
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r3, sb
	str r3, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r6, [r4, #4]
	mov r3, r8
	strh r3, [r4, #6]
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r0, [r4, #2]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08061168 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _0806116C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_8060B60
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806115C: .4byte sub_8060BC8
_08061160: .4byte 0x00004040
_08061164: .4byte sub_80611E4
_08061168: .4byte 0x03000044
_0806116C: .4byte 0x01000002

	thumb_func_start sub_8061170
sub_8061170: @ 0x08061170
	push {r4, r5, r6, lr}
	ldr r6, _0806119C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80611A0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060C68
	cmp r5, #0
	bne _08061196
	ldr r0, [r6]
	bl TaskDestroy
_08061196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806119C: .4byte gCurTask

	thumb_func_start sub_80611A0
sub_80611A0: @ 0x080611A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080611E0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080611E0: .4byte gUnknown_03001D10

	thumb_func_start sub_80611E4
sub_80611E4: @ 0x080611E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Hariisen
CreateEntity_Hariisen: @ 0x080611F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806131C @ =sub_8061474
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08061320 @ =sub_80625E8
	str r1, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strb r4, [r7, #4]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strh r5, [r7, #6]
	strh r6, [r7, #8]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x28]
	movs r2, #0
	movs r0, #6
	add r0, sp
	mov sl, r0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0xc]
	ldr r0, _08061324 @ =0x0300002C
	adds r6, r1, r0
	movs r3, #0
	adds r0, #4
	adds r5, r1, r0
	subs r0, #0x20
	adds r4, r1, r0
_0806126A:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r3, [r0]
	adds r1, r5, r1
	str r3, [r1]
	lsls r0, r2, #1
	adds r0, r4, r0
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806126A
	movs r2, #0
	movs r1, #0x88
	adds r1, r1, r7
	mov ip, r1
	movs r0, #0xb8
	adds r0, r0, r7
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0xe8
	str r1, [sp, #0x10]
	adds r6, r7, #0
	adds r6, #0x3c
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0x40
	adds r4, r7, #0
	adds r4, #0x14
_080612A6:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r3, [r0]
	adds r1, r5, r1
	str r3, [r1]
	lsls r0, r2, #1
	adds r0, r4, r0
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080612A6
	ldr r0, [r7, #0x24]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x28]
	str r0, [r7, #0x20]
	movs r4, #0
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0xe]
	add r0, sp, #4
	strh r4, [r0]
	ldr r5, _08061328 @ =0x01000002
	mov r1, ip
	adds r2, r5, #0
	bl sub_80C7520
	mov r2, sl
	strh r4, [r2]
	mov r0, sl
	mov r1, sb
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_806132C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806131C: .4byte sub_8061474
_08061320: .4byte sub_80625E8
_08061324: .4byte 0x0300002C
_08061328: .4byte 0x01000002

	thumb_func_start sub_806132C
sub_806132C: @ 0x0806132C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x12
	bl VramMalloc
	adds r5, r0, #0
	adds r2, r7, #0
	adds r2, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _0806146C @ =gUnknown_080D2044
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4]
	movs r1, #0
	mov r8, r1
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08061470 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r0, r8
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #0
	strb r3, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	str r0, [r2, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r7, #0
	adds r2, #0x8c
	str r5, [r2]
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08061470 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r6, #0x98
	lsls r6, r6, #3
	strh r6, [r2, #0x14]
	mov r0, r8
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #0
	strb r3, [r2, #0x1f]
	mov r0, sl
	str r0, [r2, #8]
	mov r1, sb
	str r1, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r7, #0
	adds r2, #0xbc
	str r5, [r2]
	ldrh r0, [r4, #0x20]
	strh r0, [r2, #0xc]
	adds r4, #0x22
	ldrb r0, [r4]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08061470 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	strh r6, [r2, #0x14]
	mov r0, r8
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #0
	strb r3, [r2, #0x1f]
	mov r0, sl
	str r0, [r2, #8]
	mov r1, sb
	str r1, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806146C: .4byte gUnknown_080D2044
_08061470: .4byte gUnknown_03001D10

	thumb_func_start sub_8061474
sub_8061474: @ 0x08061474
	push {r4, r5, r6, r7, lr}
	ldr r7, _080614F4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_80617E0
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_8061AC8
	adds r0, r4, #0
	bl sub_806253C
	adds r0, r4, #0
	bl sub_8061BD4
	ldr r0, _080614F8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08061510
	cmp r1, #4
	beq _08061510
	adds r0, r4, #0
	bl sub_806172C
	cmp r0, #1
	bne _08061510
	cmp r6, #1
	bne _08061510
	ldr r0, _080614FC @ =0x0300005C
	adds r1, r5, r0
	ldr r2, _08061500 @ =gUnknown_080D2044
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, _08061504 @ =0x03000094
	adds r1, r5, r0
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r0, _08061508 @ =0x030000C4
	adds r1, r5, r0
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r7]
	ldr r0, _0806150C @ =sub_806152C
	str r0, [r1, #8]
	b _08061522
	.align 2, 0
_080614F4: .4byte gCurTask
_080614F8: .4byte gUnknown_030008A0
_080614FC: .4byte 0x0300005C
_08061500: .4byte gUnknown_080D2044
_08061504: .4byte 0x03000094
_08061508: .4byte 0x030000C4
_0806150C: .4byte sub_806152C
_08061510:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08061522
	ldr r0, _08061528 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08061522:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061528: .4byte gCurTask

	thumb_func_start sub_806152C
sub_806152C: @ 0x0806152C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08061648 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	movs r1, #1
	bl sub_80617E0
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_8061AC8
	adds r0, r5, #0
	bl sub_806253C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_8061BD4
	adds r0, r5, #0
	bl sub_80619EC
	ldr r0, _0806164C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08061578
	b _0806168A
_08061578:
	cmp r1, #4
	bne _0806157E
	b _0806168A
_0806157E:
	cmp r4, #0
	bne _08061678
	cmp r7, #1
	bne _08061678
	ldrh r0, [r5, #0xa]
	adds r0, #1
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bne _08061678
	ldr r0, _08061650 @ =0x0300005C
	adds r2, r6, r0
	ldr r1, _08061654 @ =gUnknown_080D2044
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, [r2, #8]
	ldr r1, _08061658 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2, #8]
	ldr r0, [r5, #0x24]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	str r0, [sp, #8]
	add r1, sp, #4
	ldrh r0, [r5, #6]
	strh r0, [r1, #8]
	ldrh r0, [r5, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0806165C @ =0x03000010
	adds r4, r6, r1
	str r4, [sp, #0x10]
	adds r1, #4
	adds r0, r6, r1
	str r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r3, r4, #0
	bl sub_8061D3C
	movs r3, #0
	ldr r0, _08061660 @ =0x0300003C
	adds r0, r0, r6
	mov ip, r0
	ldr r1, _08061664 @ =0x03000040
	adds r1, r1, r6
	mov r8, r1
	ldr r0, _08061668 @ =0x03000014
	adds r0, r0, r6
	mov sb, r0
	ldr r1, _0806166C @ =0x0300002C
	adds r7, r6, r1
	movs r2, #0
	ldr r0, _08061670 @ =0x03000030
	adds r6, r6, r0
_080615F4:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r2, [r0]
	adds r1, r6, r1
	str r2, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080615F4
	movs r3, #0
	ldr r1, _08061648 @ =gCurTask
	mov sl, r1
	mov r7, ip
	movs r2, #0
	mov r6, r8
	mov r4, sb
_0806161C:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r2, [r0]
	adds r1, r6, r1
	str r2, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0806161C
	movs r0, #0
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _08061674 @ =sub_80624E4
	str r1, [r0, #8]
	b _0806168A
	.align 2, 0
_08061648: .4byte gCurTask
_0806164C: .4byte gUnknown_030008A0
_08061650: .4byte 0x0300005C
_08061654: .4byte gUnknown_080D2044
_08061658: .4byte 0xFFFBFFFF
_0806165C: .4byte 0x03000010
_08061660: .4byte 0x0300003C
_08061664: .4byte 0x03000040
_08061668: .4byte 0x03000014
_0806166C: .4byte 0x0300002C
_08061670: .4byte 0x03000030
_08061674: .4byte sub_80624E4
_08061678:
	adds r0, r5, #0
	bl sub_8062580
	cmp r0, #1
	bne _0806168A
	ldr r0, _0806169C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0806168A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806169C: .4byte gCurTask

	thumb_func_start sub_80616A0
sub_80616A0: @ 0x080616A0
	push {r4, r5, lr}
	ldr r5, _08061700 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_806253C
	adds r0, r4, #0
	bl sub_8061AC8
	ldr r0, _08061704 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08061722
	cmp r1, #4
	beq _08061722
	ldrh r0, [r4, #0xa]
	ldr r1, _08061708 @ =0x0000012B
	cmp r0, r1
	bhi _080616E0
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08061710
_080616E0:
	adds r0, r4, #0
	bl sub_8061BD4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80617E0
	cmp r0, #1
	bne _08061710
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r1, [r5]
	ldr r0, _0806170C @ =sub_8061474
	str r0, [r1, #8]
	b _08061722
	.align 2, 0
_08061700: .4byte gCurTask
_08061704: .4byte gUnknown_030008A0
_08061708: .4byte 0x0000012B
_0806170C: .4byte sub_8061474
_08061710:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08061722
	ldr r0, _08061728 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08061722:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061728: .4byte gCurTask

	thumb_func_start sub_806172C
sub_806172C: @ 0x0806172C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0xf0
	lsls r7, r7, #7
	b _080617C2
_08061740:
	ldrh r0, [r6, #8]
	lsls r1, r0, #0x10
	ldr r2, [r5, #0x14]
	subs r4, r2, r1
	ldr r1, [r6, #0x28]
	subs r3, r4, r1
	mov ip, r0
	mov r8, r2
	adds r2, r1, #0
	cmp r3, #0
	blt _0806175C
	cmp r3, r7
	ble _08061762
	b _0806177E
_0806175C:
	subs r0, r1, r4
	cmp r0, r7
	bgt _0806177E
_08061762:
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	ldr r0, [r6, #0x24]
	subs r3, r1, r0
	cmp r3, #0
	blt _08061778
	cmp r3, r7
	ble _080617B4
	b _0806177E
_08061778:
	subs r0, r0, r1
	cmp r0, r7
	ble _080617B4
_0806177E:
	mov r1, ip
	lsls r0, r1, #0x10
	mov r1, r8
	subs r0, r1, r0
	subs r1, r0, r2
	cmp r1, #0
	blt _08061792
	cmp r1, r7
	ble _08061798
	b _080617B8
_08061792:
	subs r0, r2, r0
	cmp r0, r7
	bgt _080617B8
_08061798:
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	ldr r0, [r6, #0x24]
	subs r2, r1, r0
	cmp r2, #0
	blt _080617AE
	cmp r2, r7
	ble _080617B4
	b _080617B8
_080617AE:
	subs r0, r0, r1
	cmp r0, r7
	bgt _080617B8
_080617B4:
	movs r0, #1
	b _080617D4
_080617B8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080617C2:
	mov r0, sb
	cmp r0, #1
	bhi _080617D2
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _08061740
_080617D2:
	movs r0, #0
_080617D4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80617E0
sub_80617E0: @ 0x080617E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	movs r0, #6
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r7, #0
_080617FE:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r0, r7, #1
	mov r8, r0
	ldr r0, _0806189C @ =gUnknown_080D20AC
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r2, #3
	ldr r1, _080618A0 @ =gUnknown_082B48B4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r1, _080618A0 @ =gUnknown_082B48B4
	adds r2, r2, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r7, #0
	beq _08061848
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061848:
	lsls r0, r7, #3
	mov r2, ip
	adds r2, #0x30
	adds r2, r2, r0
	ldr r3, [sp, #4]
	str r3, [r2]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r3
	mov r0, sl
	asrs r1, r0
	mov r6, ip
	adds r6, #0x10
	mov r0, r8
	adds r3, r6, r0
	ldrh r0, [r3]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	mov r0, sl
	asrs r1, r0
	ldrh r0, [r3]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _080618A4
	movs r2, #0x48
	movs r1, #1
	b _080618A8
	.align 2, 0
_0806189C: .4byte gUnknown_080D20AC
_080618A0: .4byte gUnknown_082B48B4
_080618A4:
	movs r2, #0x40
	movs r1, #4
_080618A8:
	lsls r0, r7, #1
	adds r6, r6, r0
	ldrh r3, [r6]
	lsrs r0, r3, #6
	cmp r0, r2
	bhs _080618C0
	adds r1, #3
	movs r0, #1
	lsls r0, r1
	adds r0, r3, r0
	strh r0, [r6]
	b _080618CE
_080618C0:
	lsls r0, r2, #6
	strh r0, [r6]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080618CE:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080617FE
	movs r7, #0
	mov r0, ip
	adds r0, #0x40
	str r0, [sp, #0x18]
	mov r1, ip
	adds r1, #0x3c
	str r1, [sp, #0x14]
	movs r0, #0x14
	add r0, ip
	mov r8, r0
	ldr r1, _08061994 @ =gUnknown_082B48B4
	mov ip, r1
_080618F0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r3, r7, #1
	ldr r1, _08061998 @ =gUnknown_080D20B0
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	adds r6, r3, #0
	cmp r7, #1
	bhi _08061936
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	str r0, [sp, #8]
_08061936:
	cmp r7, #0
	beq _0806193E
	cmp r7, #3
	bne _08061948
_0806193E:
	ldr r0, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061948:
	lsls r2, r7, #3
	ldr r0, [sp, #0x18]
	adds r3, r0, r2
	ldr r0, [sp, #4]
	str r0, [r3]
	ldr r1, [sp, #0x14]
	adds r2, r1, r2
	ldr r5, [sp]
	str r5, [r2]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	mov r0, sl
	asrs r1, r0
	mov r0, r8
	adds r4, r0, r6
	ldrh r0, [r4]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	mov r0, sl
	asrs r1, r0
	ldrh r0, [r4]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _0806199C
	movs r2, #0x54
	movs r1, #1
	b _080619A0
	.align 2, 0
_08061994: .4byte gUnknown_082B48B4
_08061998: .4byte gUnknown_080D20B0
_0806199C:
	movs r2, #0x40
	movs r1, #4
_080619A0:
	mov r0, r8
	adds r3, r0, r6
	ldrh r4, [r3]
	lsrs r0, r4, #6
	cmp r0, r2
	bhs _080619B8
	adds r1, #3
	movs r0, #1
	lsls r0, r1
	adds r0, r4, r0
	strh r0, [r3]
	b _080619C6
_080619B8:
	lsls r0, r2, #6
	strh r0, [r3]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080619C6:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080618F0
	mov r1, sb
	cmp r1, #6
	beq _080619DA
	movs r0, #0
	b _080619DC
_080619DA:
	movs r0, #1
_080619DC:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80619EC
sub_80619EC: @ 0x080619EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	ldr r2, _08061A38 @ =gUnknown_080D20B8
	ldrh r1, [r4, #0xe]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _08061AB8
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r3, _08061A3C @ =gUnknown_03003370
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r5, _08061A40 @ =gUnknown_080D206C
	ldrh r0, [r0]
	ldrh r6, [r5, #0x10]
	cmp r0, r6
	bne _08061A80
	ldr r5, _08061A44 @ =gUnknown_03002B40
	ldr r2, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08061A4C
	ldr r0, _08061A48 @ =gUnknown_080D208C
	movs r1, #0xc0
	movs r2, #0x10
	bl sub_80C4564
	b _08061A66
	.align 2, 0
_08061A38: .4byte gUnknown_080D20B8
_08061A3C: .4byte gUnknown_03003370
_08061A40: .4byte gUnknown_080D206C
_08061A44: .4byte gUnknown_03002B40
_08061A48: .4byte gUnknown_080D208C
_08061A4C:
	ldr r1, _08061A74 @ =0x040000D4
	ldr r0, _08061A78 @ =gUnknown_080D208C
	str r0, [r1]
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r3, r6
	str r0, [r1, #4]
	ldr r0, _08061A7C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r5]
_08061A66:
	ldrh r0, [r4, #0xe]
	cmp r0, #7
	bhi _08061AB8
	adds r0, #1
	strh r0, [r4, #0xe]
	b _08061AB8
	.align 2, 0
_08061A74: .4byte 0x040000D4
_08061A78: .4byte gUnknown_080D208C
_08061A7C: .4byte 0x80000010
_08061A80:
	ldr r4, _08061A9C @ =gUnknown_03002B40
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08061AA0
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl sub_80C4564
	b _08061AB8
	.align 2, 0
_08061A9C: .4byte gUnknown_03002B40
_08061AA0:
	ldr r1, _08061AC0 @ =0x040000D4
	str r5, [r1]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r3, r5
	str r0, [r1, #4]
	ldr r0, _08061AC4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r4]
_08061AB8:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061AC0: .4byte 0x040000D4
_08061AC4: .4byte 0x80000010

	thumb_func_start sub_8061AC8
sub_8061AC8: @ 0x08061AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0
	mov sl, r0
_08061ADC:
	mov r1, sl
	cmp r1, #1
	bhi _08061B00
	movs r0, #0x8c
	adds r0, r0, r4
	mov sb, r0
	lsls r2, r1, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x30
	b _08061B20
_08061B00:
	movs r1, #0xbc
	adds r1, r1, r4
	mov sb, r1
	mov r2, sl
	subs r2, #2
	lsls r2, r2, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x40
_08061B20:
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r0, #0
	mov r8, r0
_08061B3C:
	mov r1, r8
	cmp r1, #0
	bne _08061B4C
	ldr r0, _08061B48 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08061B56
	.align 2, 0
_08061B48: .4byte gUnknown_030008A0
_08061B4C:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08061B56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08061BA0 @ =gUnknown_030015C0
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _08061BA4
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08061BA4
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08061B9C
	str r7, [sp]
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
_08061B9C:
	movs r0, #1
	b _08061BC2
	.align 2, 0
_08061BA0: .4byte gUnknown_030015C0
_08061BA4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08061B3C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bls _08061ADC
	movs r0, #0
_08061BC2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8061BD4
sub_8061BD4: @ 0x08061BD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x8c
	ldr r7, _08061C38 @ =gUnknown_03001D10
_08061BEA:
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r2, [r5, #0x28]
	asrs r2, r2, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r7, #4]
	subs r2, r2, r0
	strh r2, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	cmp r6, #0
	beq _08061C40
	ldr r0, [r4, #8]
	ldr r1, _08061C3C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #2
	b _08061C4C
	.align 2, 0
_08061C38: .4byte gUnknown_03001D10
_08061C3C: .4byte 0xFFFFF7FF
_08061C40:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	subs r0, r2, #2
_08061C4C:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061BEA
	movs r6, #0
	movs r0, #0xbc
	adds r0, r0, r5
	mov r8, r0
	adds r1, r5, #0
	adds r1, #0x3c
	str r1, [sp]
	movs r2, #0x40
	adds r2, r2, r5
	mov sl, r2
	mov r4, r8
	ldr r7, _08061C98 @ =gUnknown_03001D10
	mov sb, r7
_08061C7E:
	cmp r6, #0
	bne _08061C9C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #8]
	b _08061CD2
	.align 2, 0
_08061C98: .4byte gUnknown_03001D10
_08061C9C:
	cmp r6, #1
	bne _08061CB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08061CAC @ =0xFFFFF7FF
	b _08061CCE
	.align 2, 0
_08061CAC: .4byte 0xFFFFF7FF
_08061CB0:
	cmp r6, #2
	bne _08061CC0
	ldr r0, [r4, #8]
	ldr r1, _08061CBC @ =0xFFFFF7FF
	ands r0, r1
	b _08061CCC
	.align 2, 0
_08061CBC: .4byte 0xFFFFF7FF
_08061CC0:
	cmp r6, #3
	bne _08061CD2
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08061CCC:
	ldr r1, _08061D38 @ =0xFFFFFBFF
_08061CCE:
	ands r0, r1
	str r0, [r4, #8]
_08061CD2:
	ldr r3, [r5, #0x24]
	asrs r3, r3, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	mov r7, sb
	ldr r0, [r7]
	subs r3, r3, r0
	strh r3, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	lsls r2, r6, #3
	ldr r7, [sp]
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r3, r3, r0
	strh r3, [r4, #0x10]
	add r2, sl
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08061C7E
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061D38: .4byte 0xFFFFFBFF

	thumb_func_start sub_8061D3C
sub_8061D3C: @ 0x08061D3C
	sub sp, #0x10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	str r3, [sp, #0x38]
	ldr r0, _08061E44 @ =sub_80625FC
	ldr r2, _08061E48 @ =0x00004040
	ldr r1, _08061E4C @ =sub_8062638
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r3, #0
	mov r0, sp
	adds r0, #6
	str r0, [sp, #8]
	ldr r2, _08061E50 @ =0x0300002C
	adds r7, r1, r2
	movs r4, #0
	ldr r0, _08061E54 @ =0x03000030
	adds r5, r1, r0
	movs r1, #1
	mov r8, r1
_08061D80:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	adds r0, r6, r3
	mov r2, r8
	strb r2, [r0]
	lsls r0, r3, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r2, [sp, #0x38]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08061D80
	movs r3, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r6
	mov sb, r1
	movs r2, #0xb8
	adds r2, r2, r6
	mov sl, r2
	movs r0, #0x3c
	adds r0, r0, r6
	mov ip, r0
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x40
	adds r5, r6, #2
_08061DCE:
	lsls r1, r3, #3
	mov r2, ip
	adds r0, r2, r1
	str r4, [r0]
	adds r1, r7, r1
	str r4, [r1]
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	lsls r1, r3, #2
	add r1, r8
	ldr r2, [sp, #0x3c]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08061DCE
	ldr r0, [sp, #0x2c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x30]
	str r0, [r6, #0x28]
	add r0, sp, #0x2c
	ldrh r0, [r0, #8]
	movs r5, #0
	strh r0, [r6, #6]
	add r0, sp, #0x2c
	ldrh r0, [r0, #0xa]
	strh r0, [r6, #8]
	add r0, sp, #4
	strh r5, [r0]
	ldr r4, _08061E58 @ =0x01000002
	mov r1, sb
	adds r2, r4, #0
	bl sub_80C7520
	ldr r0, [sp, #8]
	strh r5, [r0]
	ldr r0, [sp, #8]
	mov r1, sl
	adds r2, r4, #0
	bl sub_80C7520
	adds r0, r6, #0
	bl sub_8061E5C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08061E44: .4byte sub_80625FC
_08061E48: .4byte 0x00004040
_08061E4C: .4byte sub_8062638
_08061E50: .4byte 0x0300002C
_08061E54: .4byte 0x03000030
_08061E58: .4byte 0x01000002

	thumb_func_start sub_8061E5C
sub_8061E5C: @ 0x08061E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #2
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _08061F48 @ =gUnknown_080D2044
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x18]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _08061F4C @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl sub_80BF44C
	adds r3, r7, #0
	adds r3, #0x8c
	str r5, [r3]
	ldrh r0, [r4, #0x20]
	strh r0, [r3, #0xc]
	adds r4, #0x22
	ldrb r0, [r4]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	mov r0, sb
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061F48: .4byte gUnknown_080D2044
_08061F4C: .4byte gUnknown_03001D10

	thumb_func_start sub_8061F50
sub_8061F50: @ 0x08061F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	movs r7, #6
	movs r6, #0
	ldr r0, _080620E0 @ =gUnknown_082B48B4
	mov r8, r0
_08061F66:
	mov r1, ip
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062000
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E4 @ =gUnknown_080D20AC
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r0, r2, #3
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	add r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _08061FB4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061FB4:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x30
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0xc
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08062000:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061F66
	movs r6, #0
	movs r1, #2
	add r1, ip
	mov sl, r1
	ldr r0, _080620E0 @ =gUnknown_082B48B4
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
_0806201C:
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080620C2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E8 @ =gUnknown_080D20B0
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r6, #1
	bhi _08062068
	mov r1, r8
	adds r0, r2, r1
	str r0, [sp, #8]
_08062068:
	cmp r6, #0
	beq _08062070
	cmp r6, #3
	bne _08062076
_08062070:
	ldr r0, [sp, #0xc]
	add r0, r8
	str r0, [sp, #0xc]
_08062076:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x40
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x3c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0x14
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080620C2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806201C
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080620E0: .4byte gUnknown_082B48B4
_080620E4: .4byte gUnknown_080D20AC
_080620E8: .4byte gUnknown_080D20B0

	thumb_func_start sub_80620EC
sub_80620EC: @ 0x080620EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r4, _08062230 @ =gUnknown_03001D10
_08062102:
	mov r2, ip
	ldr r1, [r2, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	lsls r2, r6, #3
	mov r0, ip
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r3, ip
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x30
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r0, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r2, #0
	bge _08062152
	rsbs r2, r2, #0
_08062152:
	ldr r0, _08062234 @ =0x0000C7FF
	mov r7, ip
	adds r3, r7, r6
	cmp r2, r0
	bgt _0806216A
	cmp r5, #0xf0
	bhi _0806216A
	cmp r1, #0xa0
	bhi _0806216A
	ldrb r0, [r3]
	cmp r0, #0
	bne _08062178
_0806216A:
	movs r0, #0
	strb r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08062178:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08062102
	movs r6, #0
	mov r0, ip
	adds r0, #0x3c
	str r0, [sp]
	mov r1, ip
	adds r1, #0x40
	str r1, [sp, #4]
	ldr r2, _08062230 @ =gUnknown_03001D10
	mov sb, r2
	ldr r3, [r2, #4]
	mov sl, r3
	mov r7, ip
	adds r7, #2
_0806219C:
	mov r0, ip
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r2, r6, #3
	ldr r3, [sp]
	adds r0, r3, r2
	ldr r4, [r0]
	asrs r0, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x28]
	asrs r0, r0, #8
	ldrh r1, [r1, #8]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r3, sl
	subs r0, r0, r3
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldr r2, [r2]
	asrs r1, r2, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0
	bge _080621EA
	rsbs r2, r2, #0
_080621EA:
	ldr r3, _08062238 @ =0x00008BFF
	cmp r2, r3
	ble _080621FC
	adds r0, r4, #0
	cmp r0, #0
	bge _080621F8
	rsbs r0, r0, #0
_080621F8:
	cmp r0, r3
	bgt _0806220C
_080621FC:
	cmp r5, #0xf0
	bhi _0806220C
	cmp r1, #0xa0
	bhi _0806220C
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806221C
_0806220C:
	adds r1, r7, r6
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0806221C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806219C
	mov r2, r8
	cmp r2, #6
	beq _0806223C
	movs r0, #0
	b _0806223E
	.align 2, 0
_08062230: .4byte gUnknown_03001D10
_08062234: .4byte 0x0000C7FF
_08062238: .4byte 0x00008BFF
_0806223C:
	movs r0, #1
_0806223E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8062250
sub_8062250: @ 0x08062250
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	mov sl, r6
_08062262:
	mov r0, sl
	cmp r0, #1
	bhi _08062296
	movs r1, #0x5c
	adds r1, r1, r4
	mov sb, r1
	lsls r2, r0, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	mov r1, sl
	adds r0, r4, r1
	b _080622C6
_08062296:
	movs r0, #0x8c
	adds r0, r0, r4
	mov sb, r0
	mov r3, sl
	subs r3, #2
	lsls r2, r3, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	adds r0, r4, #2
	adds r0, r0, r3
_080622C6:
	ldrb r1, [r0]
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	cmp r1, #0
	beq _08062352
	movs r1, #0
	mov r8, r1
_080622DC:
	mov r0, r8
	cmp r0, #0
	bne _080622EC
	ldr r0, _080622E8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _080622F6
	.align 2, 0
_080622E8: .4byte gUnknown_030008A0
_080622EC:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080622F6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08062340 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08062344
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08062344
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806233C
	str r6, [sp]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
_0806233C:
	movs r0, #1
	b _08062364
	.align 2, 0
_08062340: .4byte gUnknown_030015C0
_08062344:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _080622DC
_08062352:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bhi _08062362
	b _08062262
_08062362:
	movs r0, #0
_08062364:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8062374
sub_8062374: @ 0x08062374
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r7, #1
	movs r6, #0
	ldr r0, _080623E4 @ =gUnknown_03001D10
	mov r8, r0
_08062386:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062408
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r2, [r5, #0x28]
	asrs r2, r2, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #4]
	subs r2, r2, r0
	strh r2, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	cmp r6, #0
	beq _080623EC
	ldr r0, [r4, #8]
	ldr r1, _080623E8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #2
	b _080623F8
	.align 2, 0
_080623E4: .4byte gUnknown_03001D10
_080623E8: .4byte 0xFFFFF7FF
_080623EC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	subs r0, r2, #2
_080623F8:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
_08062408:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08062386
	movs r6, #0
	adds r0, r5, #2
	mov sb, r0
	ldr r1, _08062440 @ =gUnknown_03001D10
	mov r8, r1
_0806241C:
	mov r2, sb
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080624C8
	adds r4, r5, #0
	adds r4, #0x8c
	cmp r6, #0
	bne _08062444
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08062478
	.align 2, 0
_08062440: .4byte gUnknown_03001D10
_08062444:
	cmp r6, #1
	bne _08062458
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08062454 @ =0xFFFFF7FF
	b _08062476
	.align 2, 0
_08062454: .4byte 0xFFFFF7FF
_08062458:
	cmp r6, #2
	bne _08062468
	ldr r0, [r4, #8]
	ldr r1, _08062464 @ =0xFFFFF7FF
	ands r0, r1
	b _08062474
	.align 2, 0
_08062464: .4byte 0xFFFFF7FF
_08062468:
	cmp r6, #3
	bne _0806247A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08062474:
	ldr r1, _080624E0 @ =0xFFFFFBFF
_08062476:
	ands r0, r1
_08062478:
	str r0, [r4, #8]
_0806247A:
	ldr r2, [r5, #0x24]
	asrs r2, r2, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3]
	subs r2, r2, r0
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
_080624C8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806241C
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080624E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80624E4
sub_80624E4: @ 0x080624E4
	push {r4, r5, r6, lr}
	ldr r6, _08062514 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_806253C
	cmp r0, #0
	bne _08062524
	ldr r0, _08062518 @ =0x0300005C
	adds r2, r5, r0
	ldr r1, _0806251C @ =gUnknown_080D2044
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _08062520 @ =sub_80616A0
	str r0, [r1, #8]
	b _08062534
	.align 2, 0
_08062514: .4byte gCurTask
_08062518: .4byte 0x0300005C
_0806251C: .4byte gUnknown_080D2044
_08062520: .4byte sub_80616A0
_08062524:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08062534
	ldr r0, [r6]
	bl TaskDestroy
_08062534:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806253C
sub_806253C: @ 0x0806253C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x5c
	ldr r2, [r0, #0x24]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806257C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806257C: .4byte gUnknown_03001D10

	thumb_func_start sub_8062580
sub_8062580: @ 0x08062580
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80625BC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #8]
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

	thumb_func_start sub_80625BC
sub_80625BC: @ 0x080625BC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x5c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80625E8
sub_80625E8: @ 0x080625E8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80625FC
sub_80625FC: @ 0x080625FC
	push {r4, r5, lr}
	ldr r5, _08062634 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8061F50
	adds r0, r4, #0
	bl sub_8062374
	adds r0, r4, #0
	bl sub_8062250
	adds r0, r4, #0
	bl sub_80620EC
	cmp r0, #1
	bne _0806262C
	ldr r0, [r5]
	bl TaskDestroy
_0806262C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062634: .4byte gCurTask

	thumb_func_start sub_8062638
sub_8062638: @ 0x08062638
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806264C
sub_806264C: @ 0x0806264C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r6, r0, #0
	ldr r5, [sp, #0x64]
	str r1, [r6]
	ldrb r0, [r1]
	movs r4, #0
	strb r0, [r6, #5]
	strb r5, [r6, #4]
	movs r5, #0
	strh r2, [r6, #0x14]
	strh r3, [r6, #0x16]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r6, #0x64]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r6, #0x68]
	str r2, [r6, #0x5c]
	str r0, [r6, #0x60]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	strb r5, [r6, #7]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r4, [r0]
	movs r0, #3
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x5c]
	adds r2, r2, r0
	str r2, [r6, #0x24]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x28]
	movs r0, #4
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x60]
	adds r2, r2, r0
	str r2, [r6, #0x34]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x38]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	str r0, [r6, #0x2c]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	ldrb r1, [r1, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080626CA
	movs r0, #0xff
	b _080626CC
_080626CA:
	movs r0, #1
_080626CC:
	strb r0, [r6, #8]
	movs r3, #0
	movs r0, #0xa
	adds r0, r0, r6
	mov r8, r0
	adds r1, r6, #0
	adds r1, #0xa4
	str r1, [sp, #0x18]
	movs r0, #2
	add r0, sp
	mov sb, r0
	adds r1, #0x30
	str r1, [sp, #0x40]
	add r0, sp, #4
	mov sl, r0
	mov r1, sp
	adds r1, #6
	str r1, [sp, #0x1c]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	adds r0, r6, #0
	adds r0, #0x9c
	str r0, [sp, #0x14]
	adds r1, #2
	str r1, [sp, #0x2c]
	adds r0, #0x30
	str r0, [sp, #0x3c]
	adds r1, #2
	str r1, [sp, #0x30]
	adds r0, #0x30
	str r0, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x34]
	mov r0, sp
	adds r0, #0x12
	str r0, [sp, #0x38]
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r6, #0
	adds r5, #0x40
	mov r4, r8
	mov ip, r3
_08062726:
	lsls r1, r3, #3
	adds r2, r7, r1
	ldr r0, [r6, #0x5c]
	str r0, [r2]
	adds r1, r5, r1
	ldr r0, [r6, #0x60]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08062726
	lsls r0, r3, #1
	add r0, r8
	movs r4, #0
	strh r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r5, _080627FC @ =0x01000002
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sb
	strh r4, [r0]
	ldr r1, [sp, #0x40]
	adds r2, r5, #0
	bl sub_80C7520
	mov r1, sl
	strh r4, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r6, r0
	mov r0, sl
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x1c]
	strh r4, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x1c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x24]
	strh r4, [r1]
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x24]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x28]
	strh r4, [r1]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x2c]
	strh r4, [r0]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x30]
	strh r4, [r1]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x20]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x34]
	strh r4, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x34]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x38]
	strh r4, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x38]
	adds r2, r5, #0
	bl sub_80C7520
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080627FC: .4byte 0x01000002

	thumb_func_start sub_8062800
sub_8062800: @ 0x08062800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	adds r0, #0x6c
	str r0, [sp, #4]
	ldr r0, _0806298C @ =gUnknown_030008A0
	ldr r4, [r0, #0x1c]
	movs r0, #7
	ands r4, r0
	movs r0, #0x40
	bl VramMalloc
	adds r6, r0, #0
	mov r7, sl
	adds r7, #0xa8
	str r6, [r7]
	ldr r5, _08062990 @ =gUnknown_080D20C4
	ldr r0, [r5, #0xc]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5, #8]
	movs r1, #0
	mov r8, r1
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08062994 @ =gUnknown_03001D10
	mov sb, r0
	ldr r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl sub_80BF44C
	subs r7, #0x30
	mov r2, sl
	str r6, [r2, #0x78]
	ldr r0, [r5, #4]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	mov r0, sl
	ldr r1, [r0, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	mov r2, r8
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl sub_80BF44C
	adds r7, #0x60
	str r6, [r7]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5, #0x10]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #0x12]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r0, sl
	ldr r1, [r0, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	mov r0, sl
	ldr r1, [r0, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	mov r2, r8
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl sub_80BF44C
	movs r7, #0x84
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r6, r6, r4
	ldr r0, [sp]
	cmp r0, #0
	bne _08062998
	ldrh r0, [r5, #0x28]
	strh r0, [r7, #0xc]
	adds r0, r5, #0
	adds r0, #0x2a
	b _080629A4
	.align 2, 0
_0806298C: .4byte gUnknown_030008A0
_08062990: .4byte gUnknown_080D20C4
_08062994: .4byte gUnknown_03001D10
_08062998:
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r0, r5, #0
	adds r0, #0x42
_080629A4:
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08062A10 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r7, #0x10]
	mov r4, sl
	ldr r1, [r4, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	ldr r0, [sp]
	cmp r0, #0
	bne _08062A18
	ldr r0, _08062A14 @ =gUnknown_080D20C4
	ldrh r1, [r0, #0x28]
	strh r1, [r7, #0xc]
	adds r0, #0x2a
	b _08062A24
	.align 2, 0
_08062A10: .4byte gUnknown_03001D10
_08062A14: .4byte gUnknown_080D20C4
_08062A18:
	ldr r0, _08062A88 @ =gUnknown_080D20C4
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r7, #0xc]
	adds r0, #0x42
_08062A24:
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08062A8C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r7, #0x10]
	mov r4, sl
	ldr r1, [r4, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062A88: .4byte gUnknown_080D20C4
_08062A8C: .4byte gUnknown_03001D10

	thumb_func_start sub_8062A90
sub_8062A90: @ 0x08062A90
	push {r4, r5, lr}
	ldr r0, _08062AEC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062AF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062ACE
	cmp r1, #4
	beq _08062ACE
	ldr r0, _08062AF4 @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
_08062ACE:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062AF8
	ldr r0, _08062AEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062B88
	.align 2, 0
_08062AEC: .4byte gCurTask
_08062AF0: .4byte gUnknown_030008A0
_08062AF4: .4byte 0x03000064
_08062AF8:
	movs r4, #0
	b _08062B10
_08062AFC:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
_08062B10:
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062AFC
	ldrb r2, [r5, #7]
	adds r1, r2, #0
	movs r3, #0xa
	cmp r1, #0
	bne _08062B24
	movs r3, #5
_08062B24:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r3
	bls _08062B88
	movs r0, #0
	strh r0, [r5, #0x18]
	cmp r1, #5
	bne _08062B84
	ldr r0, [r5]
	ldrb r0, [r0, #7]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08062B54
	movs r1, #8
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08062B5C
	b _08062B70
_08062B54:
	movs r0, #8
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08062B70
_08062B5C:
	ldr r0, _08062B68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B6C @ =sub_8062B90
	str r0, [r1, #8]
	b _08062B88
	.align 2, 0
_08062B68: .4byte gCurTask
_08062B6C: .4byte sub_8062B90
_08062B70:
	ldr r0, _08062B7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B80 @ =sub_8062C4C
	str r0, [r1, #8]
	b _08062B88
	.align 2, 0
_08062B7C: .4byte gCurTask
_08062B80: .4byte sub_8062C4C
_08062B84:
	adds r0, r2, #1
	strb r0, [r5, #7]
_08062B88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8062B90
sub_8062B90: @ 0x08062B90
	push {r4, r5, r6, lr}
	ldr r0, _08062C14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062C18 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062BF8
	cmp r1, #4
	beq _08062BF8
	ldr r0, _08062C1C @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
	movs r4, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r6, r0
	bge _08062BF8
_08062BDA:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
	adds r6, r0, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062BDA
_08062BF8:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062C20
	ldr r0, _08062C14 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062C3E
	.align 2, 0
_08062C14: .4byte gCurTask
_08062C18: .4byte gUnknown_030008A0
_08062C1C: .4byte 0x03000064
_08062C20:
	ldr r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	cmp r6, #1
	bne _08062C3E
	movs r0, #0xff
	strb r0, [r5, #8]
	movs r0, #0
	strb r0, [r5, #7]
	ldr r0, _08062C44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062C48 @ =sub_8062A90
	str r0, [r1, #8]
_08062C3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062C44: .4byte gCurTask
_08062C48: .4byte sub_8062A90

	thumb_func_start sub_8062C4C
sub_8062C4C: @ 0x08062C4C
	push {r4, r5, r6, lr}
	ldr r0, _08062CD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062CD4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062CB4
	cmp r1, #4
	beq _08062CB4
	ldr r0, _08062CD8 @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
	movs r4, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r6, r0
	bge _08062CB4
_08062C96:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
	adds r6, r0, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062C96
_08062CB4:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062CDC
	ldr r0, _08062CD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062CEE
	.align 2, 0
_08062CD0: .4byte gCurTask
_08062CD4: .4byte gUnknown_030008A0
_08062CD8: .4byte 0x03000064
_08062CDC:
	cmp r6, #1
	bne _08062CEE
	movs r0, #0
	strb r6, [r5, #8]
	strb r0, [r5, #7]
	ldr r0, _08062CF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CF8 @ =sub_8062A90
	str r0, [r1, #8]
_08062CEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CF4: .4byte gCurTask
_08062CF8: .4byte sub_8062A90

	thumb_func_start sub_8062CFC
sub_8062CFC: @ 0x08062CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrh r0, [r7, #0x1a]
	adds r0, #1
	strh r0, [r7, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _08062D20
	b _08062EE6
_08062D20:
	adds r0, r7, #0
	bl sub_8063324
	str r0, [sp, #4]
	ldr r1, _08062DC4 @ =gUnknown_080D20C4
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1, #0x18]
	cmp r2, r3
	bne _08062D3A
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #0x1a]
	cmp r0, r3
	beq _08062D4A
_08062D3A:
	ldrh r0, [r1, #0x30]
	cmp r2, r0
	bne _08062D54
	adds r1, #0x32
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08062D54
_08062D4A:
	ldrh r0, [r7, #0x1a]
	cmp r0, #0xb3
	bls _08062D54
	movs r1, #0
	str r1, [sp, #4]
_08062D54:
	movs r2, #0
	mov sb, r2
	ldr r3, _08062DC4 @ =gUnknown_080D20C4
	mov r8, r3
	movs r0, #0x32
	add r0, r8
	mov sl, r0
_08062D62:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08062D6A
	b _08062ED6
_08062D6A:
	mov r2, sb
	cmp r2, #0
	beq _08062D76
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r4, r7, r3
_08062D76:
	ldr r1, _08062DC4 @ =gUnknown_080D20C4
	ldrh r0, [r4, #0xc]
	adds r5, r0, #0
	adds r2, r1, #0
	adds r6, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r5, r0
	bne _08062D94
	adds r3, r2, #0
	adds r3, #0x22
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	beq _08062DA8
_08062D94:
	ldrh r1, [r2, #0x38]
	cmp r5, r1
	bne _08062E1C
	adds r3, r2, #0
	adds r3, #0x3a
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	bne _08062E1C
_08062DA8:
	ldrh r3, [r2, #0x20]
	cmp r6, r3
	bne _08062DC8
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062DC8
	ldrh r0, [r2, #0x28]
	strh r0, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	b _08062DD4
	.align 2, 0
_08062DC4: .4byte gUnknown_080D20C4
_08062DC8:
	mov r0, r8
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r1, _08062DF8 @ =gUnknown_080D2106
	ldrb r0, [r1]
_08062DD4:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r2, sb
	cmp r2, #0
	beq _08062E00
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r1, r7, r3
	ldr r2, _08062DFC @ =0x01000002
	bl sub_80C7520
	b _08062E12
	.align 2, 0
_08062DF8: .4byte gUnknown_080D2106
_08062DFC: .4byte 0x01000002
_08062E00:
	mov r0, sp
	mov r1, sb
	strh r1, [r0]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, _08062E18 @ =0x01000002
	bl sub_80C7520
_08062E12:
	movs r0, #0
	strh r0, [r7, #0x1a]
	b _08062ED6
	.align 2, 0
_08062E18: .4byte 0x01000002
_08062E1C:
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	ldrh r3, [r2, #0x28]
	cmp r5, r3
	bne _08062E34
	adds r3, r2, #0
	adds r3, #0x2a
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	beq _08062E4A
_08062E34:
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r5, r0
	bne _08062E82
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldr r0, _08062E68 @ =gUnknown_080D2106
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062E82
_08062E4A:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2, #0x28]
	cmp r0, r3
	bne _08062E6C
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062E6C
	ldrh r0, [r2, #0x18]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #0x1a]
	b _08062E76
	.align 2, 0
_08062E68: .4byte gUnknown_080D2106
_08062E6C:
	mov r1, r8
	ldrh r0, [r1, #0x30]
	strh r0, [r4, #0xc]
	mov r2, sl
	ldrb r0, [r2]
_08062E76:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x3c
	strh r0, [r7, #0x1a]
	b _08062ED6
_08062E82:
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2, #0x18]
	cmp r3, r0
	bne _08062E96
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r0, [r2, #0x1a]
	cmp r1, r0
	beq _08062EA8
_08062E96:
	ldrh r1, [r2, #0x30]
	cmp r3, r1
	bne _08062ED6
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	mov r3, sl
	ldrb r3, [r3]
	cmp r1, r3
	bne _08062ED6
_08062EA8:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2, #0x30]
	cmp r0, r3
	bne _08062EC4
	mov r0, sl
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062EC4
	ldrh r0, [r2, #0x38]
	strh r0, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x3a
	b _08062ECE
_08062EC4:
	mov r1, r8
	ldrh r0, [r1, #0x20]
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x22
_08062ECE:
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08062ED6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi _08062EE6
	b _08062D62
_08062EE6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8062EF8
sub_8062EF8: @ 0x08062EF8
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r0, #0x6c
	movs r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08062F58
	mov r1, ip
	movs r0, #8
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	mov r2, ip
	ldr r0, [r2, #0x34]
	cmp r0, r1
	bgt _08062F2A
	mov r7, ip
	ldr r0, [r7, #0x38]
	cmp r0, r1
	bge _08062F30
_08062F2A:
	str r0, [r4, #4]
	movs r6, #1
	b _08062FA6
_08062F30:
	ldr r1, _08062F54 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	mov r3, ip
	adds r3, #0xa
	adds r3, r3, r0
	ldrh r2, [r3]
	lsrs r0, r2, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	mov r7, ip
	ldr r1, [r7, #0x5c]
	adds r1, r1, r0
	str r1, [r4]
	b _08062F9E
	.align 2, 0
_08062F54: .4byte gUnknown_082B48B4
_08062F58:
	mov r1, ip
	movs r0, #8
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r4]
	subs r1, r1, r0
	str r1, [r4]
	mov r2, ip
	ldr r0, [r2, #0x24]
	cmp r0, r1
	bgt _08062F76
	mov r7, ip
	ldr r0, [r7, #0x28]
	cmp r0, r1
	bge _08062F7C
_08062F76:
	str r0, [r4]
	movs r6, #1
	b _08062FA6
_08062F7C:
	ldr r1, _08062FB4 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	mov r3, ip
	adds r3, #0xa
	adds r3, r3, r0
	ldrh r2, [r3]
	lsrs r0, r2, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	mov r7, ip
	ldr r1, [r7, #0x60]
	adds r1, r1, r0
	str r1, [r4, #4]
_08062F9E:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3]
_08062FA6:
	cmp r6, #1
	bne _08062FB8
	cmp r5, #4
	bne _08062FB8
	movs r0, #1
	b _08062FBA
	.align 2, 0
_08062FB4: .4byte gUnknown_082B48B4
_08062FB8:
	movs r0, #0
_08062FBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8062FC0
sub_8062FC0: @ 0x08062FC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #3
	mov sb, r0
	b _0806308E
_08062FD6:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08063032
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	subs r2, r1, r0
	cmp r2, #0
	blt _08062FF8
	cmp r2, sb
	ble _08062FFE
	b _08063084
_08062FF8:
	subs r0, r0, r1
	cmp r0, sb
	bgt _08063084
_08062FFE:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08063020
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x64]
	adds r6, r1, #0
	cmp r0, r2
	ble _0806307A
	b _08063084
_08063020:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x64]
	adds r6, r1, #0
	cmp r0, r2
	blt _08063084
	b _0806307A
_08063032:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r3, r1, r0
	ldr r0, [r4, #0x64]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _0806304A
	cmp r2, sb
	ble _08063050
	b _08063084
_0806304A:
	subs r0, r0, r3
	cmp r0, sb
	bgt _08063084
_08063050:
	ldrh r2, [r7]
	cmp r2, #0
	beq _08063064
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	cmp r1, r0
	ble _0806307A
_08063064:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bne _08063084
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	cmp r1, r0
	blt _08063084
_0806307A:
	str r6, [r4, #0x1c]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x20]
	movs r0, #1
	b _080630A0
_08063084:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0806308E:
	mov r0, r8
	cmp r0, #1
	bhi _0806309E
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _08062FD6
_0806309E:
	movs r0, #0
_080630A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80630AC
sub_80630AC: @ 0x080630AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	ldrb r0, [r6, #7]
	subs r0, #1
	cmp sb, r0
	bge _08063182
	mov r8, sp
_080630C6:
	mov r1, sb
	cmp r1, #0
	beq _080630D2
	lsls r4, r1, #3
	cmp r1, #3
	bne _0806313C
_080630D2:
	mov r0, sb
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r7, r6, r0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r5, r6, r1
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r6, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
_0806313C:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r7, r6, r0
	adds r5, r6, #0
	adds r5, #0xa8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r0, [r6, #7]
	subs r0, #1
	cmp sb, r0
	blt _080630C6
_08063182:
	adds r7, r6, #0
	adds r7, #0x64
	adds r5, r6, #0
	adds r5, #0x78
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	ldr r2, _080631F4 @ =gUnknown_03001D10
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080631CC
	ldrh r0, [r5, #0x10]
	adds r0, #0xa
	strh r0, [r5, #0x10]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1, #0x12]
	adds r0, #0x1e
	strh r0, [r1, #0x12]
_080631CC:
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	mov r1, sp
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080631F4: .4byte gUnknown_03001D10

	thumb_func_start sub_80631F8
sub_80631F8: @ 0x080631F8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x6c
	adds r4, r2, #0
	adds r4, #0x78
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0806325C @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08063248
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_08063248:
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806325C: .4byte gUnknown_03001D10

	thumb_func_start sub_8063260
sub_8063260: @ 0x08063260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x6c
	movs r0, #0
	mov sl, r0
	movs r7, #0
_08063276:
	cmp r7, sl
	bne _08063290
	adds r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r4, r5, #0
	adds r4, #0xd8
	mov r8, r4
	movs r2, #0xa8
	adds r2, r2, r5
	mov sb, r2
	b _0806329C
_08063290:
	adds r4, r5, #0
	adds r4, #0xa8
	movs r3, #0xd8
	adds r3, r3, r5
	mov r8, r3
	mov sb, r4
_0806329C:
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08063320 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080632F0
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
_080632F0:
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08063276
	mov r4, r8
	adds r0, r4, #0
	bl sub_80BF44C
	mov r4, sb
	adds r0, r4, #0
	bl sub_80BF44C
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063320: .4byte gUnknown_03001D10

	thumb_func_start sub_8063324
sub_8063324: @ 0x08063324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r0, #0x6c
	str r0, [sp]
	movs r1, #0
	mov r8, r1
	mov sb, r1
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_80BF44C
	cmp r0, #0
	bne _0806334E
	movs r0, #1
	mov sb, r0
_0806334E:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_80BF44C
	cmp r0, #0
	bne _08063366
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08063366:
	adds r0, r6, #0
	adds r0, #0x3c
	str r0, [sp, #4]
	movs r1, #0x40
	adds r1, r1, r6
	mov sl, r1
	ldr r7, _080633E8 @ =gUnknown_03001D10
_08063374:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r2, r6, r0
	mov r1, r8
	lsls r4, r1, #3
	ldr r0, [sp, #4]
	adds r5, r0, r4
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	add r4, sl
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80C033C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r2, r6, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r5, r1, r0
	strh r5, [r2, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r3, r1, r0
	strh r3, [r2, #0x12]
	ldr r1, [sp]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080633EC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r5, #1
	strh r0, [r2, #0x10]
	b _080633FA
	.align 2, 0
_080633E8: .4byte gUnknown_03001D10
_080633EC:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r3, #1
	strh r0, [r2, #0x12]
_080633FA:
	adds r0, r2, #0
	bl sub_80C033C
	mov r0, r8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08063374
	mov r0, sb
	cmp r0, #2
	beq _08063418
	movs r0, #1
	b _0806341A
_08063418:
	movs r0, #0
_0806341A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Muukaden_0
CreateEntity_Muukaden_0: @ 0x0806342C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08063498 @ =sub_8062A90
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806349C @ =sub_80635E0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_806264C
	adds r0, r4, #0
	movs r1, #0
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063498: .4byte sub_8062A90
_0806349C: .4byte sub_80635E0

	thumb_func_start CreateEntity_Muukaden_1
CreateEntity_Muukaden_1: @ 0x080634A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806350C @ =sub_8062A90
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08063510 @ =sub_80635E0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_806264C
	adds r0, r4, #0
	movs r1, #1
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806350C: .4byte sub_8062A90
_08063510: .4byte sub_80635E0

	thumb_func_start sub_8063514
sub_8063514: @ 0x08063514
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	cmp r2, #0
	beq _08063532
	cmp r2, #1
	beq _0806353E
	b _0806356C
_08063532:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r4, #8]
	strh r2, [r5]
	b _0806356C
_0806353E:
	cmp r0, #0
	beq _0806354C
	movs r1, #0x60
	orrs r1, r3
	adds r0, #0xa
	orrs r0, r1
	b _08063550
_0806354C:
	movs r0, #0x6a
	orrs r0, r3
_08063550:
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	ldrh r1, [r4, #0x10]
	strh r1, [r5, #6]
	ldrh r1, [r4, #0x12]
	strh r1, [r5, #8]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_0806356C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063574
sub_8063574: @ 0x08063574
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x14]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x16]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_806359C
sub_806359C: @ 0x0806359C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080635BE
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635B6
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	b _080635D8
_080635B6:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _080635D8
_080635BE:
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635D0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080635D6
_080635D0:
	ldr r0, [r3, #8]
	ldr r1, _080635DC @ =0xFFFFFBFF
	ands r0, r1
_080635D6:
	str r0, [r3, #8]
_080635D8:
	pop {r0}
	bx r0
	.align 2, 0
_080635DC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80635E0
sub_80635E0: @ 0x080635E0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080635F4 @ =0x030000A8
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080635F4: .4byte 0x030000A8

	thumb_func_start CreateEntity_Marun
CreateEntity_Marun: @ 0x080635F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08063674 @ =sub_8063758
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063678 @ =sub_8063F08
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	strb r2, [r7, #4]
	strb r4, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #7]
	strb r2, [r7, #8]
	movs r3, #0
	strh r5, [r7, #0xc]
	strh r6, [r7, #0xe]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x24]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x28]
	str r1, [r7, #0x1c]
	str r0, [r7, #0x20]
	strh r2, [r7, #0x10]
	strb r3, [r7, #9]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r7, #0x14]
	str r2, [r7, #0x18]
	strh r2, [r7, #0x12]
	strb r3, [r7, #5]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806367C
	movs r0, #0xff
	b _0806367E
	.align 2, 0
_08063674: .4byte sub_8063758
_08063678: .4byte sub_8063F08
_0806367C:
	movs r0, #1
_0806367E:
	strb r0, [r7, #0xa]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r2, _080636B0 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80636B4
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080636B0: .4byte 0x01000002

	thumb_func_start sub_80636B4
sub_80636B4: @ 0x080636B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x11
	bl VramMalloc
	adds r4, r5, #0
	adds r4, #0x38
	adds r6, r5, #0
	adds r6, #0x2c
	str r0, [r5, #0x38]
	ldr r1, _08063750 @ =gUnknown_080D210C
	ldrh r0, [r1]
	movs r3, #0
	movs r7, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063754 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08063722
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
_08063722:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	strh r7, [r5, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063750: .4byte gUnknown_080D210C
_08063754: .4byte gUnknown_03001D10

	thumb_func_start sub_8063758
sub_8063758: @ 0x08063758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080637F8 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r1, _080637FC @ =0x03000024
	adds r0, r6, r1
	ldr r2, _08063800 @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063804 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063808 @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
	ldr r0, _0806380C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063828
	cmp r1, #4
	beq _08063828
	mov r0, r8
	bl sub_8063C98
	mov sb, r0
	cmp r0, #1
	bne _08063828
	mov r0, r8
	ldrh r7, [r0, #4]
	cmp r7, #0
	bne _08063828
	ldr r1, _08063810 @ =0x03000038
	adds r4, r6, r1
	ldr r1, _08063814 @ =gUnknown_080D210C
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, sp
	strh r7, [r0]
	ldr r2, _08063818 @ =0x03000064
	adds r1, r6, r2
	ldr r5, _0806381C @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	ldr r3, _08063820 @ =0x0300005C
	adds r1, r6, r3
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80BF44C
	mov r0, sb
	mov r4, r8
	strb r0, [r4, #8]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08063824 @ =sub_8063858
	str r0, [r1, #8]
	b _08063846
	.align 2, 0
_080637F8: .4byte gCurTask
_080637FC: .4byte 0x03000024
_08063800: .4byte 0x0300001C
_08063804: .4byte 0x0300000C
_08063808: .4byte 0x03000009
_0806380C: .4byte gUnknown_030008A0
_08063810: .4byte 0x03000038
_08063814: .4byte gUnknown_080D210C
_08063818: .4byte 0x03000064
_0806381C: .4byte 0x01000002
_08063820: .4byte 0x0300005C
_08063824: .4byte sub_8063858
_08063828:
	mov r0, r8
	bl sub_8063D38
	cmp r0, #1
	bne _08063840
	ldr r0, _0806383C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08063846
	.align 2, 0
_0806383C: .4byte gCurTask
_08063840:
	mov r0, r8
	bl sub_8063E5C
_08063846:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063858
sub_8063858: @ 0x08063858
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080638F4 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080638F8 @ =0x03000024
	adds r0, r6, r1
	ldr r2, _080638FC @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063900 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063904 @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
	ldr r0, _08063908 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063928
	cmp r1, #4
	beq _08063928
	adds r0, r5, #0
	bl sub_8063E5C
	adds r7, r0, #0
	cmp r7, #0
	bne _08063928
	ldr r0, _0806390C @ =0x03000038
	adds r4, r6, r0
	ldr r1, _08063910 @ =gUnknown_080D210C
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x6a
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #0x24]
	ldr r1, _08063914 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x24]
	mov r0, sp
	strh r7, [r0]
	ldr r2, _08063918 @ =0x03000064
	adds r1, r6, r2
	ldr r5, _0806391C @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	ldr r3, _08063920 @ =0x0300005C
	adds r1, r6, r3
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80BF44C
	mov r4, r8
	ldr r1, [r4]
	ldr r0, _08063924 @ =sub_806394C
	str r0, [r1, #8]
	b _0806393A
	.align 2, 0
_080638F4: .4byte gCurTask
_080638F8: .4byte 0x03000024
_080638FC: .4byte 0x0300001C
_08063900: .4byte 0x0300000C
_08063904: .4byte 0x03000009
_08063908: .4byte gUnknown_030008A0
_0806390C: .4byte 0x03000038
_08063910: .4byte gUnknown_080D210C
_08063914: .4byte 0xFFFFF000
_08063918: .4byte 0x03000064
_0806391C: .4byte 0x01000002
_08063920: .4byte 0x0300005C
_08063924: .4byte sub_806394C
_08063928:
	adds r0, r5, #0
	bl sub_8063D38
	cmp r0, #1
	bne _0806393A
	ldr r0, _08063948 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0806393A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063948: .4byte gCurTask

	thumb_func_start sub_806394C
sub_806394C: @ 0x0806394C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _080639AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r0, r5, #0
	bl sub_8063BB8
	ldr r0, [r5, #0x24]
	asrs r2, r0, #8
	ldr r0, [r5, #0x28]
	asrs r1, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080639B4
	subs r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	str r4, [sp]
	ldr r0, _080639B0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #1
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080639E6
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	b _080639DA
	.align 2, 0
_080639AC: .4byte gCurTask
_080639B0: .4byte sub_805203C
_080639B4:
	adds r0, r2, #0
	adds r0, #8
	subs r1, #8
	str r4, [sp]
	ldr r2, _08063A68 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080639E6
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	ldr r1, _08063A6C @ =0xFFFFF800
_080639DA:
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #1
	strb r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x14]
_080639E6:
	ldr r0, _08063A70 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063AB4
	cmp r1, #4
	beq _08063AB4
	ldrh r0, [r5, #0x12]
	adds r0, #1
	movs r7, #0
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bgt _08063A10
	lsls r0, r4, #0x18
	cmp r0, #0
	bge _08063AB4
_08063A10:
	adds r6, r5, #0
	adds r6, #0x38
	ldr r1, _08063A74 @ =gUnknown_080D210C
	ldrh r0, [r1, #0x18]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	add r0, sp, #8
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x64
	ldr r4, _08063A78 @ =0x01000002
	adds r2, r4, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #0xa
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x5c
	adds r2, r4, #0
	bl sub_80C7520
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08063A58
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08063A58:
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08063A7C
	ldr r0, [r5, #0x24]
	movs r1, #0x98
	lsls r1, r1, #5
	b _08063A82
	.align 2, 0
_08063A68: .4byte sub_805203C
_08063A6C: .4byte 0xFFFFF800
_08063A70: .4byte gUnknown_030008A0
_08063A74: .4byte gUnknown_080D210C
_08063A78: .4byte 0x01000002
_08063A7C:
	ldr r0, [r5, #0x24]
	movs r1, #0xd0
	lsls r1, r1, #4
_08063A82:
	adds r0, r0, r1
	str r0, [r5, #0x24]
	adds r0, r6, #0
	bl sub_80BF44C
	movs r2, #0
	movs r1, #0
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	strb r2, [r5, #8]
	movs r0, #1
	strb r0, [r5, #5]
	ldr r0, _08063AAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08063AB0 @ =sub_8063ADC
	str r0, [r1, #8]
	b _08063AD2
	.align 2, 0
_08063AAC: .4byte gCurTask
_08063AB0: .4byte sub_8063ADC
_08063AB4:
	adds r0, r5, #0
	bl sub_8063D38
	cmp r0, #1
	bne _08063ACC
	ldr r0, _08063AC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08063AD2
	.align 2, 0
_08063AC8: .4byte gCurTask
_08063ACC:
	adds r0, r5, #0
	bl sub_8063E5C
_08063AD2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063ADC
sub_8063ADC: @ 0x08063ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08063B6C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08063B0E
	ldr r1, _08063B70 @ =0x03000024
	adds r0, r6, r1
	ldr r2, _08063B74 @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063B78 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063B7C @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
_08063B0E:
	adds r0, r7, #0
	bl sub_8063E5C
	adds r5, r0, #0
	cmp r5, #0
	bne _08063B98
	ldr r0, _08063B80 @ =0x03000038
	adds r4, r6, r0
	ldr r1, _08063B84 @ =gUnknown_080D210C
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _08063B88 @ =0x03000064
	adds r1, r6, r2
	ldr r3, _08063B8C @ =0x01000002
	mov r8, r3
	mov r2, r8
	bl sub_80C7520
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r2, _08063B90 @ =0x0300005C
	adds r1, r6, r2
	mov r2, r8
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80BF44C
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r7, #0x14]
	str r5, [r7, #0x18]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _08063B94 @ =sub_8063758
	str r0, [r1, #8]
	b _08063BAA
	.align 2, 0
_08063B6C: .4byte gCurTask
_08063B70: .4byte 0x03000024
_08063B74: .4byte 0x0300001C
_08063B78: .4byte 0x0300000C
_08063B7C: .4byte 0x03000009
_08063B80: .4byte 0x03000038
_08063B84: .4byte gUnknown_080D210C
_08063B88: .4byte 0x03000064
_08063B8C: .4byte 0x01000002
_08063B90: .4byte 0x0300005C
_08063B94: .4byte sub_8063758
_08063B98:
	adds r0, r7, #0
	bl sub_8063D38
	cmp r0, #1
	bne _08063BAA
	mov r4, sb
	ldr r0, [r4]
	bl TaskDestroy
_08063BAA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8063BB8
sub_8063BB8: @ 0x08063BB8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08063BDA
	ldr r0, [r4, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	adds r0, #0x10
	b _08063BEA
_08063BDA:
	ldr r0, [r4, #0x24]
	ldr r1, _08063C64 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	subs r0, #0x10
_08063BEA:
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	asrs r2, r0, #8
	ldr r0, [r4, #0x28]
	asrs r1, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r6, #0
	str r6, [sp]
	ldr r5, _08063C68 @ =sub_805217C
	str r5, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	movs r1, #0
	cmp r0, #0
	ble _08063C1C
	movs r1, #1
_08063C1C:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08063C6C
	lsls r1, r1, #8
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	asrs r2, r1, #8
	asrs r1, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r6, [sp]
	str r5, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	ble _08063C82
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	adds r1, #0x20
	str r1, [r4, #0x18]
	b _08063C82
	.align 2, 0
_08063C64: .4byte 0xFFFFFF00
_08063C68: .4byte sub_805217C
_08063C6C:
	str r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x24
	adds r1, r4, #0
	adds r1, #0x1c
	adds r2, r4, #0
	adds r2, #0xc
	adds r3, r4, #0
	adds r3, #9
	bl sub_805CD70
_08063C82:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _08063C8C
	subs r0, #4
	b _08063C8E
_08063C8C:
	movs r0, #0
_08063C8E:
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8063C98
sub_8063C98: @ 0x08063C98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0x38
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r0, #0x24]
	asrs r7, r1, #8
	ldr r1, [r0, #0x28]
	asrs r4, r1, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r4, r4, r0
	movs r6, #0
	b _08063D1A
_08063CBC:
	mov r0, r8
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	adds r5, r1, #0
	ldr r1, [r3, #0x10]
	cmp r0, #0
	beq _08063CF4
	asrs r0, r1, #8
	subs r0, r0, r7
	subs r0, #1
	cmp r0, #0x4e
	bhi _08063CEA
	ldr r0, [r3, #0x14]
	asrs r2, r0, #8
	adds r0, r4, #0
	adds r0, #0x50
	cmp r2, r0
	bge _08063CEA
	subs r0, #0x60
	cmp r2, r0
	bgt _08063D10
_08063CEA:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08063D14
_08063CF4:
	asrs r0, r1, #8
	subs r0, r7, r0
	subs r0, #1
	cmp r0, #0x4e
	bhi _08063D14
	ldr r0, [r3, #0x14]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x50
	cmp r1, r0
	bge _08063D14
	subs r0, #0x60
	cmp r1, r0
	ble _08063D14
_08063D10:
	movs r0, #1
	b _08063D2C
_08063D14:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08063D1A:
	cmp r6, #1
	bhi _08063D2A
	adds r0, r6, #0
	bl sub_805CD20
	adds r3, r0, #0
	cmp r3, #0
	bne _08063CBC
_08063D2A:
	movs r0, #0
_08063D2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8063D38
sub_8063D38: @ 0x08063D38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #1
	beq _08063DA0
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r0, [r5]
	subs r0, #0x10
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x5d
	ldrb r0, [r4]
	subs r0, #0x10
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5e
	ldrb r0, [r3]
	subs r0, #0x10
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5f
	ldrb r0, [r2]
	subs r0, #0x10
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	mov r8, r5
	adds r7, r4, #0
	adds r5, r3, #0
	adds r4, r2, #0
	cmp r0, #1
	bne _08063DC4
_08063DA0:
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #0xfc
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5d
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5e
	movs r0, #4
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5f
	strb r0, [r1]
	mov r8, r4
	adds r7, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
_08063DC4:
	adds r0, r6, #0
	mov r1, sp
	bl sub_8063EDC
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r6, #0xc]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #7]
	strb r0, [r1, #8]
	mov r0, sp
	str r2, [sp, #0x28]
	bl sub_805C280
	adds r3, r0, #0
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0x28]
	cmp r0, #1
	beq _08063E44
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7]
	adds r0, #0x10
	strb r0, [r7]
	ldrb r0, [r5]
	adds r0, #0x10
	strb r0, [r5]
	ldrb r0, [r4]
	adds r0, #0x10
	strb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	cmp r0, #1
	bne _08063E4E
_08063E44:
	mov r0, r8
	strb r2, [r0]
	strb r2, [r7]
	strb r2, [r5]
	strb r2, [r4]
_08063E4E:
	adds r0, r3, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8063E5C
sub_8063E5C: @ 0x08063E5C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x38
	adds r4, r3, #0
	adds r4, #0x2c
	ldr r1, [r3, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063EA4 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r2, _08063EA8 @ =gUnknown_080D210C
	ldrh r0, [r5, #0xc]
	ldrh r6, [r2, #0x10]
	cmp r0, r6
	bne _08063EAC
	ldrb r0, [r5, #0x1a]
	ldrb r2, [r2, #0x12]
	cmp r0, r2
	bne _08063EAC
	adds r0, r1, #0
	subs r0, #0xb
	b _08063EB0
	.align 2, 0
_08063EA4: .4byte gUnknown_03001D10
_08063EA8: .4byte gUnknown_080D210C
_08063EAC:
	ldrh r0, [r5, #0x12]
	adds r0, #6
_08063EB0:
	strh r0, [r5, #0x12]
	ldrh r0, [r3, #0x10]
	strh r0, [r4]
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r4, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8063EDC
sub_8063EDC: @ 0x08063EDC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8063F08
sub_8063F08: @ 0x08063F08
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Clam
CreateEntity_Clam: @ 0x08063F1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08063F8C @ =sub_8064074
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063F90 @ =sub_80646DC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r3, #0
	strb r4, [r7, #5]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #6]
	movs r2, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strb r2, [r7, #7]
	strb r2, [r7, #8]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08063F94
	movs r0, #0xff
	b _08063F96
	.align 2, 0
_08063F8C: .4byte sub_8064074
_08063F90: .4byte sub_80646DC
_08063F94:
	movs r0, #1
_08063F96:
	strb r0, [r7, #9]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08063FAA
	movs r0, #1
_08063FAA:
	strb r0, [r7, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, _08063FDC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8063FE0
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063FDC: .4byte 0x01000002

	thumb_func_start sub_8063FE0
sub_8063FE0: @ 0x08063FE0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r5, r6, #0
	adds r5, #0x20
	str r0, [r6, #0x20]
	ldr r1, _0806406C @ =gUnknown_080D212C
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08064070 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r0, #9
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0806404A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_0806404A:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0806405A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_0806405A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806406C: .4byte gUnknown_080D212C
_08064070: .4byte gUnknown_03001D10

	thumb_func_start sub_8064074
sub_8064074: @ 0x08064074
	push {r4, lr}
	ldr r0, _0806409C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080640A4
	ldr r1, _080640A0 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _080640B6
	.align 2, 0
_0806409C: .4byte gCurTask
_080640A0: .4byte 0x03000018
_080640A4:
	ldr r2, _080640D0 @ =0x03000018
	adds r0, r3, r2
	ldr r1, _080640D4 @ =0x0300000A
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_080640B6:
	adds r0, r4, #0
	bl sub_80645D8
	adds r0, r4, #0
	bl sub_806461C
	cmp r0, #1
	bne _080640DC
	ldr r0, _080640D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806413A
	.align 2, 0
_080640D0: .4byte 0x03000018
_080640D4: .4byte 0x0300000A
_080640D8: .4byte gCurTask
_080640DC:
	ldr r0, _0806411C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806413A
	cmp r1, #4
	beq _0806413A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0806412C
	adds r0, r4, #0
	bl sub_8064684
	cmp r0, #1
	bne _0806412C
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _08064120 @ =gUnknown_080D212C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _08064124 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064128 @ =sub_8064140
	str r0, [r1, #8]
	b _0806413A
	.align 2, 0
_0806411C: .4byte gUnknown_030008A0
_08064120: .4byte gUnknown_080D212C
_08064124: .4byte gCurTask
_08064128: .4byte sub_8064140
_0806412C:
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0806413A
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0806413A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8064140
sub_8064140: @ 0x08064140
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0806416C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08064174
	ldr r1, _08064170 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _08064186
	.align 2, 0
_0806416C: .4byte gCurTask
_08064170: .4byte 0x03000018
_08064174:
	ldr r1, _080641D8 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_08064186:
	adds r0, r5, #0
	bl sub_80645D8
	adds r2, r0, #0
	ldr r0, _080641DC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064222
	cmp r1, #4
	beq _08064222
	cmp r2, #0
	bne _08064210
	adds r1, r5, #0
	adds r1, #0x20
	ldr r3, _080641E0 @ =gUnknown_080D212C
	ldrh r0, [r3, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrb r0, [r5, #7]
	cmp r0, #3
	bne _080641EC
	ldrh r0, [r3, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x12]
	strb r0, [r1, #0x1a]
	orrs r2, r4
	strb r2, [r1, #0x1b]
	ldr r0, _080641E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080641E8 @ =sub_8064230
	str r0, [r1, #8]
	b _08064222
	.align 2, 0
_080641D8: .4byte 0x03000018
_080641DC: .4byte gUnknown_030008A0
_080641E0: .4byte gUnknown_080D212C
_080641E4: .4byte gCurTask
_080641E8: .4byte sub_8064230
_080641EC:
	ldr r4, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	str r4, [sp]
	ldrb r4, [r5, #4]
	str r4, [sp, #4]
	bl sub_80646F0
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_08064210:
	adds r0, r5, #0
	bl sub_806461C
	cmp r0, #1
	bne _08064222
	ldr r0, _0806422C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064222:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806422C: .4byte gCurTask

	thumb_func_start sub_8064230
sub_8064230: @ 0x08064230
	push {r4, r5, lr}
	ldr r0, _08064258 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08064260
	ldr r1, _0806425C @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _08064272
	.align 2, 0
_08064258: .4byte gCurTask
_0806425C: .4byte 0x03000018
_08064260:
	ldr r1, _080642D0 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_08064272:
	adds r0, r4, #0
	bl sub_80645D8
	adds r2, r0, #0
	ldr r0, _080642D4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080642FA
	cmp r1, #4
	beq _080642FA
	cmp r2, #0
	bne _080642E8
	adds r2, r4, #0
	adds r2, #0x20
	ldr r3, _080642D8 @ =gUnknown_080D212C
	ldrh r0, [r3, #0x20]
	strh r0, [r2, #0xc]
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r0, #0
	movs r1, #0xff
	strb r1, [r2, #0x1b]
	ldrb r0, [r4, #7]
	cmp r0, #4
	bne _080642E4
	ldrh r0, [r3]
	strh r0, [r2, #0xc]
	ldrb r0, [r3, #2]
	strb r0, [r2, #0x1a]
	orrs r1, r5
	strb r1, [r2, #0x1b]
	movs r0, #0x78
	strh r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #7]
	ldr r0, _080642DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080642E0 @ =sub_8064074
	str r0, [r1, #8]
	b _080642FA
	.align 2, 0
_080642D0: .4byte 0x03000018
_080642D4: .4byte gUnknown_030008A0
_080642D8: .4byte gUnknown_080D212C
_080642DC: .4byte gCurTask
_080642E0: .4byte sub_8064074
_080642E4:
	adds r0, #1
	strb r0, [r4, #7]
_080642E8:
	adds r0, r4, #0
	bl sub_806461C
	cmp r0, #1
	bne _080642FA
	ldr r0, _08064300 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080642FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064300: .4byte gCurTask

	thumb_func_start sub_8064304
sub_8064304: @ 0x08064304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x1c
	str r1, [r4, #0x1c]
	ldr r1, _08064374 @ =gUnknown_080D212C
	ldrh r2, [r1, #0x28]
	movs r6, #0
	movs r5, #0
	strh r2, [r0, #0xc]
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r4, #2]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08064378 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064374: .4byte gUnknown_080D212C
_08064378: .4byte gUnknown_03001D10

	thumb_func_start sub_806437C
sub_806437C: @ 0x0806437C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r6, #6
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08064396
	ldrb r0, [r5]
	movs r4, #0x60
	cmp r0, #0
	beq _080643A0
	adds r4, #0xc0
	b _080643A0
_08064396:
	ldrb r0, [r5]
	movs r4, #0xa0
	cmp r0, #0
	beq _080643A0
	movs r4, #0xe0
_080643A0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, _0806441C @ =gUnknown_082B48B4
	movs r1, #0xff
	ands r1, r4
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r4, #0x60
	beq _080643E2
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	bne _080643EA
_080643E2:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	str r0, [sp, #8]
_080643EA:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [sp, #0xc]
	subs r0, r0, r1
	asrs r0, r6
	ldr r3, [r5, #8]
	asrs r4, r3, #6
	muls r0, r4, r0
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldr r0, [sp, #8]
	subs r0, r0, r2
	asrs r0, r6
	muls r0, r4, r0
	adds r2, r2, r0
	str r2, [r5, #0x14]
	movs r0, #2
	lsls r0, r0, #8
	adds r3, r3, r0
	str r3, [r5, #8]
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806441C: .4byte gUnknown_082B48B4

	thumb_func_start sub_8064420
sub_8064420: @ 0x08064420
	push {r4, r5, lr}
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldrh r2, [r0, #2]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08064480 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	ldr r4, [r0, #0x14]
	asrs r2, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r2, [r0, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r3, #4]
	subs r1, r1, r2
	ldr r2, [r0, #0x18]
	asrs r0, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r2, #0
	bge _08064462
	rsbs r2, r2, #0
_08064462:
	ldr r0, _08064484 @ =0x00008BFF
	cmp r2, r0
	ble _08064474
	adds r2, r4, #0
	cmp r2, #0
	bge _08064470
	rsbs r2, r2, #0
_08064470:
	cmp r2, r0
	bgt _0806447C
_08064474:
	cmp r5, #0xf0
	bhi _0806447C
	cmp r1, #0xa0
	bls _08064488
_0806447C:
	movs r0, #1
	b _0806448A
	.align 2, 0
_08064480: .4byte gUnknown_03001D10
_08064484: .4byte 0x00008BFF
_08064488:
	movs r0, #0
_0806448A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8064490
sub_8064490: @ 0x08064490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r3, r0, #0
	movs r7, #0
	movs r0, #0x1c
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r3, #0xc]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r4, r1, r0
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	adds r4, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080644C8
	adds r1, r5, #0
	adds r1, #0x14
	b _080644CC
_080644C8:
	adds r1, r5, #0
	subs r1, #0x14
_080644CC:
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	adds r5, r1, r0
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080644EE
	adds r4, #0xa
	b _080644F0
_080644DC:
	str r7, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
	movs r0, #1
	b _08064558
_080644EE:
	subs r4, #0xa
_080644F0:
	movs r6, #0
_080644F2:
	cmp r6, #0
	bne _08064500
	ldr r0, _080644FC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0806450A
	.align 2, 0
_080644FC: .4byte gUnknown_030008A0
_08064500:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806450A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064548 @ =gUnknown_030015C0
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _0806454C
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806454C
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080644DC
	movs r0, #1
	b _08064558
	.align 2, 0
_08064548: .4byte gUnknown_030015C0
_0806454C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080644F2
	movs r0, #0
_08064558:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8064564
sub_8064564: @ 0x08064564
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x1c
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080645A0 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x10]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080645A4
	adds r1, #0x14
	b _080645A6
	.align 2, 0
_080645A0: .4byte gUnknown_03001D10
_080645A4:
	subs r1, #0x14
_080645A6:
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r5, #0x12]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _080645BA
	ldrh r0, [r5, #0x10]
	adds r0, #0xa
	b _080645BE
_080645BA:
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
_080645BE:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80645D8
sub_80645D8: @ 0x080645D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08064618 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08064618: .4byte gUnknown_03001D10

	thumb_func_start sub_806461C
sub_806461C: @ 0x0806461C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8064658
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8064658
sub_8064658: @ 0x08064658
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_8064684
sub_8064684: @ 0x08064684
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x20
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _080646C2
_08064698:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080646AC
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _080646B2
_080646AC:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_080646B2:
	subs r0, #1
	cmp r0, #0x76
	bhi _080646BC
	movs r0, #1
	b _080646D4
_080646BC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080646C2:
	cmp r4, #1
	bhi _080646D2
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _08064698
_080646D2:
	movs r0, #0
_080646D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80646DC
sub_80646DC: @ 0x080646DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80646F0
sub_80646F0: @ 0x080646F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	str r1, [sp, #8]
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x30]
	mov sl, r0
	ldr r6, [sp, #0x34]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08064798 @ =sub_80647B0
	ldr r2, _0806479C @ =0x00004040
	ldr r1, _080647A0 @ =sub_8064804
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	movs r5, #0
	strb r6, [r4]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	mov r1, r8
	strh r1, [r4, #2]
	mov r0, sb
	strh r0, [r4, #4]
	mov r1, sl
	strb r1, [r4, #1]
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080647A4 @ =0x03000048
	adds r1, r3, r0
	ldr r6, _080647A8 @ =0x01000002
	add r0, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #0xc]
	ldr r1, _080647AC @ =0x03000040
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_8064304
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064798: .4byte sub_80647B0
_0806479C: .4byte 0x00004040
_080647A0: .4byte sub_8064804
_080647A4: .4byte 0x03000048
_080647A8: .4byte 0x01000002
_080647AC: .4byte 0x03000040

	thumb_func_start sub_80647B0
sub_80647B0: @ 0x080647B0
	push {r4, lr}
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08064800 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080647D6
	cmp r1, #4
	beq _080647D6
	adds r0, r4, #0
	bl sub_806437C
_080647D6:
	adds r0, r4, #0
	bl sub_8064564
	adds r0, r4, #0
	bl sub_8064490
	adds r0, r4, #0
	bl sub_8064420
	cmp r0, #1
	bne _080647F4
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080647F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080647FC: .4byte gCurTask
_08064800: .4byte gUnknown_030008A0

	thumb_func_start sub_8064804
sub_8064804: @ 0x08064804
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Kamaki
CreateEntity_Kamaki: @ 0x08064818
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08064898 @ =sub_8064980
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806489C @ =sub_8065150
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #6]
	strb r4, [r7, #5]
	movs r3, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r3, [r7, #7]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x10]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080648A0
	movs r0, #0xff
	b _080648A2
	.align 2, 0
_08064898: .4byte sub_8064980
_0806489C: .4byte sub_8065150
_080648A0:
	movs r0, #1
_080648A2:
	strb r0, [r7, #8]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _080648B6
	movs r0, #1
_080648B6:
	strb r0, [r7, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _080648E8 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80648EC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080648E8: .4byte 0x01000002

	thumb_func_start sub_80648EC
sub_80648EC: @ 0x080648EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r5, r6, #0
	adds r5, #0x2c
	str r0, [r6, #0x2c]
	ldr r1, _08064978 @ =gUnknown_080D215C
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0806497C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r0, #8
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08064956
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_08064956:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08064966
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_08064966:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064978: .4byte gUnknown_080D215C
_0806497C: .4byte gUnknown_03001D10

	thumb_func_start sub_8064980
sub_8064980: @ 0x08064980
	push {r4, r5, r6, lr}
	ldr r0, _080649B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x2c
	adds r5, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080649C0
	ldr r1, _080649B4 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _080649B8 @ =0x03000014
	adds r1, r3, r2
	ldr r6, _080649BC @ =0x0300000A
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CE14
	b _080649D4
	.align 2, 0
_080649B0: .4byte gCurTask
_080649B4: .4byte 0x0300001C
_080649B8: .4byte 0x03000014
_080649BC: .4byte 0x0300000A
_080649C0:
	ldr r1, _080649E8 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _080649EC @ =0x03000014
	adds r1, r3, r2
	ldr r6, _080649F0 @ =0x0300000A
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
_080649D4:
	adds r0, r4, #0
	bl sub_8065104
	cmp r0, #1
	bne _080649F8
	ldr r0, _080649F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064A48
	.align 2, 0
_080649E8: .4byte 0x0300001C
_080649EC: .4byte 0x03000014
_080649F0: .4byte 0x0300000A
_080649F4: .4byte gCurTask
_080649F8:
	adds r0, r4, #0
	bl sub_8065084
	adds r2, r0, #0
	ldr r0, _08064A50 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064A48
	cmp r1, #4
	beq _08064A48
	cmp r2, #0
	bne _08064A1C
	strh r2, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_08064A1C:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08064A48
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r2, _08064A54 @ =gUnknown_080D215C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	strh r0, [r4, #0x10]
	ldr r0, _08064A58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064A5C @ =sub_8064A60
	str r0, [r1, #8]
_08064A48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064A50: .4byte gUnknown_030008A0
_08064A54: .4byte gUnknown_080D215C
_08064A58: .4byte gCurTask
_08064A5C: .4byte sub_8064A60

	thumb_func_start sub_8064A60
sub_8064A60: @ 0x08064A60
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08064A8C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08064A9C
	ldr r1, _08064A90 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064A94 @ =0x03000014
	adds r1, r3, r2
	ldr r4, _08064A98 @ =0x0300000A
	adds r2, r3, r4
	subs r4, #3
	adds r3, r3, r4
	bl sub_805CE14
	b _08064AB0
	.align 2, 0
_08064A8C: .4byte gCurTask
_08064A90: .4byte 0x0300001C
_08064A94: .4byte 0x03000014
_08064A98: .4byte 0x0300000A
_08064A9C:
	ldr r1, _08064AC4 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064AC8 @ =0x03000014
	adds r1, r3, r2
	ldr r4, _08064ACC @ =0x0300000A
	adds r2, r3, r4
	subs r4, #3
	adds r3, r3, r4
	bl sub_805CD70
_08064AB0:
	adds r0, r5, #0
	bl sub_8065104
	cmp r0, #1
	bne _08064AD4
	ldr r0, _08064AD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064B3A
	.align 2, 0
_08064AC4: .4byte 0x0300001C
_08064AC8: .4byte 0x03000014
_08064ACC: .4byte 0x0300000A
_08064AD0: .4byte gCurTask
_08064AD4:
	adds r0, r5, #0
	bl sub_8065084
	adds r6, r0, #0
	ldr r0, _08064B44 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064B3A
	cmp r1, #4
	beq _08064B3A
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x61
	bne _08064B1A
	ldr r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	str r4, [sp]
	ldrb r4, [r5, #4]
	str r4, [sp, #4]
	bl sub_8064C18
_08064B1A:
	cmp r6, #0
	bne _08064B3A
	adds r1, r5, #0
	adds r1, #0x2c
	ldr r2, _08064B48 @ =gUnknown_080D215C
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r6, [r5, #0x10]
	ldr r0, _08064B4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064B50 @ =sub_8064B54
	str r0, [r1, #8]
_08064B3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064B44: .4byte gUnknown_030008A0
_08064B48: .4byte gUnknown_080D215C
_08064B4C: .4byte gCurTask
_08064B50: .4byte sub_8064B54

	thumb_func_start sub_8064B54
sub_8064B54: @ 0x08064B54
	push {r4, r5, lr}
	ldr r0, _08064B80 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08064B90
	ldr r1, _08064B84 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064B88 @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08064B8C @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CE14
	b _08064BA4
	.align 2, 0
_08064B80: .4byte gCurTask
_08064B84: .4byte 0x0300001C
_08064B88: .4byte 0x03000014
_08064B8C: .4byte 0x0300000A
_08064B90:
	ldr r1, _08064BB8 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064BBC @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08064BC0 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CD70
_08064BA4:
	adds r0, r4, #0
	bl sub_8065104
	cmp r0, #1
	bne _08064BC8
	ldr r0, _08064BC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064C02
	.align 2, 0
_08064BB8: .4byte 0x0300001C
_08064BBC: .4byte 0x03000014
_08064BC0: .4byte 0x0300000A
_08064BC4: .4byte gCurTask
_08064BC8:
	adds r0, r4, #0
	bl sub_8065084
	adds r3, r0, #0
	ldr r0, _08064C08 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064C02
	cmp r1, #4
	beq _08064C02
	cmp r3, #0
	bne _08064C02
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r2, _08064C0C @ =gUnknown_080D215C
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r3, [r4, #0xe]
	ldr r0, _08064C10 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064C14 @ =sub_8064980
	str r0, [r1, #8]
_08064C02:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064C08: .4byte gUnknown_030008A0
_08064C0C: .4byte gUnknown_080D215C
_08064C10: .4byte gCurTask
_08064C14: .4byte sub_8064980

	thumb_func_start sub_8064C18
sub_8064C18: @ 0x08064C18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r8, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _08064CA8 @ =sub_8064E10
	ldr r2, _08064CAC @ =0x00004040
	ldr r1, _08064CB0 @ =sub_80651BC
	str r1, [sp]
	movs r1, #0x98
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r1, #0
	strh r5, [r7, #2]
	strh r6, [r7, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
	strh r1, [r7, #0xe]
	strh r1, [r7, #6]
	strh r1, [r7, #8]
	mov r0, r8
	strb r0, [r7]
	ldr r0, _08064CB4 @ =gUnknown_080D217C
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #8
	ldr r2, _08064CB8 @ =0xFFFFF800
	adds r0, r1, r2
	add r0, sb
	str r0, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	add sb, r1
	mov r2, sb
	str r2, [r7, #0x18]
	mov r0, r8
	cmp r0, #0
	beq _08064CBC
	movs r0, #0x80
	lsls r0, r0, #6
	b _08064CBE
	.align 2, 0
_08064CA8: .4byte sub_8064E10
_08064CAC: .4byte 0x00004040
_08064CB0: .4byte sub_80651BC
_08064CB4: .4byte gUnknown_080D217C
_08064CB8: .4byte 0xFFFFF800
_08064CBC:
	ldr r0, _08064CFC @ =0xFFFFE000
_08064CBE:
	add r0, sl
	str r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r5, _08064D00 @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x94
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8064D04
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064CFC: .4byte 0xFFFFE000
_08064D00: .4byte 0x01000002

	thumb_func_start sub_8064D04
sub_8064D04: @ 0x08064D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	movs r0, #0x10
	str r3, [sp]
	bl VramMalloc
	mov r8, r0
	ldr r3, [sp]
	adds r1, r3, #0
	adds r1, #0x20
	adds r7, r3, #0
	adds r7, #0x38
	str r0, [r3, #0x38]
	ldr r2, _08064E08 @ =gUnknown_080D215C
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	add r8, r0
	ldrh r5, [r2, #0x18]
	strh r5, [r7, #0xc]
	ldrb r6, [r2, #0x1a]
	strb r6, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r4, _08064E0C @ =gUnknown_03001D10
	ldr r2, [r4]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r2, [r4, #4]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r4, #0x10
	mov sl, r4
	mov r0, sl
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	movs r0, #0x6a
	str r0, [r7, #8]
	subs r4, #0x11
	mov sb, r4
	str r4, [r7, #0x20]
	movs r0, #0
	strh r0, [r3, #0x20]
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	adds r0, r7, #0
	str r3, [sp]
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80BF44C
	ldr r3, [sp]
	adds r1, r3, #0
	adds r1, #0x2c
	adds r7, r3, #0
	adds r7, #0x68
	mov r2, r8
	str r2, [r3, #0x68]
	strh r5, [r7, #0xc]
	strb r6, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	ldr r5, _08064E0C @ =gUnknown_03001D10
	ldr r2, [r5]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x1c]
	asrs r0, r0, #8
	ldr r2, [r5, #4]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	mov r5, sl
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r0, #0x6b
	str r0, [r7, #8]
	mov r2, sb
	str r2, [r7, #0x20]
	strh r4, [r3, #0x2c]
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	adds r0, r7, #0
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064E08: .4byte gUnknown_080D215C
_08064E0C: .4byte gUnknown_03001D10

	thumb_func_start sub_8064E10
sub_8064E10: @ 0x08064E10
	push {r4, r5, lr}
	ldr r0, _08064E60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08064E64 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064E44
	cmp r1, #4
	beq _08064E44
	adds r0, r4, #0
	bl sub_8064F80
	ldrh r0, [r4, #6]
	adds r0, #0x40
	strh r0, [r4, #6]
	ldrh r0, [r4, #8]
	adds r0, #0x40
	strh r0, [r4, #8]
_08064E44:
	adds r0, r4, #0
	bl sub_8064EA0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8065164
	cmp r0, #1
	bne _08064E68
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E6E
	.align 2, 0
_08064E60: .4byte gCurTask
_08064E64: .4byte gUnknown_030008A0
_08064E68:
	adds r0, r4, #0
	bl sub_8064FCC
_08064E6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8065164
	cmp r0, #1
	bne _08064E82
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E88
_08064E82:
	adds r0, r4, #0
	bl sub_8065028
_08064E88:
	cmp r5, #2
	bne _08064E94
	ldr r0, _08064E9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064E9C: .4byte gCurTask

	thumb_func_start sub_8064EA0
sub_8064EA0: @ 0x08064EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	mov sl, r4
_08064EB2:
	mov r0, sl
	lsls r1, r0, #3
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r6, r0, #8
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r6, r6, r0
	adds r7, r5, #0
	adds r7, #0x68
	mov r1, sl
	cmp r1, #0
	bne _08064EE4
	subs r7, #0x30
_08064EE4:
	movs r0, #0
	mov sb, r0
_08064EE8:
	mov r1, sb
	cmp r1, #0
	bne _08064EF8
	ldr r0, _08064EF4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08064F02
	.align 2, 0
_08064EF4: .4byte gUnknown_030008A0
_08064EF8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08064F02:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064F4C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08064F50
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08064F50
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064F48
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08064F48:
	movs r0, #1
	b _08064F6E
	.align 2, 0
_08064F4C: .4byte gUnknown_030015C0
_08064F50:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _08064EE8
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bls _08064EB2
	movs r0, #0
_08064F6E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8064F80
sub_8064F80: @ 0x08064F80
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08064F98
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0xe]
	movs r3, #0xf8
	lsls r3, r3, #1
	b _08064FA2
_08064F98:
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2, #0xe]
	ldr r3, _08064FC8 @ =0xFFFFFE10
_08064FA2:
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r2, #0x18]
	adds r0, #0x80
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x10]
	subs r0, #0x80
	str r0, [r2, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x1c]
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08064FC8: .4byte 0xFFFFFE10

	thumb_func_start sub_8064FCC
sub_8064FCC: @ 0x08064FCC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x38
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065024 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x20
	ldrh r0, [r3, #6]
	strh r0, [r3, #0x20]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065024: .4byte gUnknown_03001D10

	thumb_func_start sub_8065028
sub_8065028: @ 0x08065028
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x68
	ldr r1, [r3, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065080 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x2c
	ldrh r0, [r3, #8]
	strh r0, [r3, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065080: .4byte gUnknown_03001D10

	thumb_func_start sub_8065084
sub_8065084: @ 0x08065084
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080650C4 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080650C4: .4byte gUnknown_03001D10

	thumb_func_start sub_80650C8
sub_80650C8: @ 0x080650C8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #8]
	str r0, [r1, #4]
	adds r0, r2, #0
	adds r0, #0x2c
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x10]
	ldr r3, [r2, #0x18]
	str r3, [r1, #0x14]
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _080650F0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r3, r4
	str r0, [r1, #0x14]
_080650F0:
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8065104
sub_8065104: @ 0x08065104
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80650C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0x14]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806512E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [sp, #0x14]
_0806512E:
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8065150
sub_8065150: @ 0x08065150
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8065164
sub_8065164: @ 0x08065164
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x15
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r3, ip
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080651B0 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r2, r2, r0
	mov r0, ip
	adds r0, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r4, ip
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _080651AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080651B4
_080651AC:
	movs r0, #1
	b _080651B6
	.align 2, 0
_080651B0: .4byte gUnknown_03001D10
_080651B4:
	movs r0, #0
_080651B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80651BC
sub_80651BC: @ 0x080651BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80651D0
sub_80651D0: @ 0x080651D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [sp, #0x4c]
	str r5, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #5]
	strb r1, [r4, #4]
	strh r2, [r4, #0x12]
	strh r3, [r4, #0x14]
	ldrb r1, [r5]
	lsls r1, r1, #0xb
	str r1, [r4, #0x48]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x4c]
	str r1, [r4, #0x40]
	str r0, [r4, #0x44]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r4, #0x1c]
	ldrb r1, [r5, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806521E
	movs r0, #0xff
	b _08065220
_0806521E:
	movs r0, #1
_08065220:
	strb r0, [r4, #7]
	ldrb r1, [r5, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08065232
	movs r0, #1
_08065232:
	strb r0, [r4, #6]
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x7c
	str r0, [sp, #0x28]
	movs r1, #2
	add r1, sp
	mov r8, r1
	adds r0, #0x30
	str r0, [sp, #0x18]
	add r1, sp, #4
	mov sb, r1
	adds r0, #0x30
	str r0, [sp, #0x10]
	movs r1, #6
	add r1, sp
	mov sl, r1
	subs r0, #0x68
	str r0, [sp, #0x1c]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x20]
	adds r0, #0x30
	str r0, [sp, #0x14]
	adds r1, #2
	str r1, [sp, #0x24]
	adds r0, #0x30
	str r0, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0x20
	adds r6, r4, #0
	adds r6, #0x24
	adds r5, r4, #0
	adds r5, #8
	mov ip, r3
_08065278:
	lsls r1, r3, #3
	adds r2, r7, r1
	ldr r0, [r4, #0x40]
	str r0, [r2]
	adds r1, r6, r1
	ldr r0, [r4, #0x44]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r5, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08065278
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _080652FC @ =0x01000002
	ldr r1, [sp, #0x28]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, r8
	strh r4, [r0]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	bl sub_80C7520
	mov r1, sb
	strh r4, [r1]
	mov r0, sb
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sl
	strh r4, [r0]
	ldr r1, [sp, #0x1c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x20]
	strh r4, [r1]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x24]
	strh r4, [r0]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	adds r2, r5, #0
	bl sub_80C7520
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080652FC: .4byte 0x01000002

	thumb_func_start sub_8065300
sub_8065300: @ 0x08065300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x16
	bl VramMalloc
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0xb0
	str r5, [r2]
	ldr r6, _0806547C @ =gUnknown_080D2180
	ldr r0, [r6, #0x14]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r6, #0x10]
	movs r1, #0
	mov sb, r1
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #0x12]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sp
	strb r0, [r3]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08065480 @ =gUnknown_03001D10
	mov r8, r3
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r2, #0x20]
	movs r7, #0x80
	lsls r7, r7, #5
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08065390
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_08065390:
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r4, #0
	adds r2, #0x50
	str r5, [r4, #0x50]
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #0x20]
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _080653FE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_080653FE:
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r4, #0
	adds r2, #0x80
	str r5, [r2]
	ldrh r0, [r6, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #0xa]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #0x20]
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08065466
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_08065466:
	adds r0, r2, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806547C: .4byte gUnknown_080D2180
_08065480: .4byte gUnknown_03001D10

	thumb_func_start sub_8065484
sub_8065484: @ 0x08065484
	push {r4, r5, r6, r7, lr}
	ldr r0, _080654F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80656B0
	ldr r0, _080654F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080654B6
	cmp r1, #4
	beq _080654B6
	ldr r0, _080654F8 @ =0x03000048
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8065544
_080654B6:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x50
	adds r6, r5, #0
	adds r6, #0x40
_080654C0:
	lsls r1, r4, #3
	adds r1, #0x20
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8065544
	cmp r4, #3
	bls _080654C0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8065884
	cmp r0, #1
	bne _080654FC
	ldr r0, _080654F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806553C
	.align 2, 0
_080654F0: .4byte gCurTask
_080654F4: .4byte gUnknown_030008A0
_080654F8: .4byte 0x03000048
_080654FC:
	movs r4, #0
_080654FE:
	cmp r4, #0
	beq _08065528
	cmp r4, #1
	bhi _08065518
	lsls r2, r4, #3
	adds r2, #0x20
	adds r2, r5, r2
	adds r0, r5, #0
	adds r1, r5, #0
	adds r1, #0xb0
	bl sub_8065884
	b _08065528
_08065518:
	lsls r2, r4, #3
	adds r2, #0x20
	adds r2, r5, r2
	adds r0, r5, #0
	adds r1, r5, #0
	adds r1, #0x80
	bl sub_8065884
_08065528:
	ldr r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080654FE
_0806553C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065544
sub_8065544: @ 0x08065544
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, _08065574 @ =0x0000FFFD
	cmp r0, #0
	bge _0806555C
	movs r5, #3
_0806555C:
	cmp r1, #0
	bne _08065578
	lsls r0, r5, #0x10
	asrs r0, r0, #0xa
	mov r1, ip
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #8]
	movs r4, #0
	adds r2, #8
	b _080655C8
	.align 2, 0
_08065574: .4byte 0x0000FFFD
_08065578:
	cmp r1, #1
	bne _0806558C
	lsls r1, r5, #0x10
	asrs r1, r1, #7
	mov r3, ip
	ldrh r0, [r3, #8]
	subs r0, r0, r1
	strh r0, [r3, #0xa]
	movs r4, #2
	b _080655A8
_0806558C:
	cmp r1, #2
	bls _080655AE
	cmp r1, #3
	bne _080655AE
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #6
	lsls r0, r0, #9
	mov r5, ip
	ldrh r1, [r5, #0xc]
	subs r1, r1, r0
	subs r1, r1, r2
	strh r1, [r5, #0xe]
	movs r4, #6
_080655A8:
	mov r2, ip
	adds r2, #8
	b _080655C8
_080655AE:
	lsls r3, r1, #1
	mov r2, ip
	adds r2, #8
	adds r4, r2, r3
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r0, r2, r0
	lsls r1, r5, #0x10
	asrs r1, r1, #7
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4]
	adds r4, r3, #0
_080655C8:
	mov r1, ip
	movs r0, #7
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080655E4
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	cmp r1, r0
	bls _080655F2
	movs r0, #0
	strh r0, [r3]
	b _080655F2
_080655E4:
	adds r3, r2, r4
	ldrh r0, [r3]
	movs r1, #0xff
	lsls r1, r1, #8
	cmp r0, r1
	bls _080655F2
	strh r1, [r3]
_080655F2:
	ldr r3, _08065630 @ =gUnknown_082B48B4
	adds r0, r2, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	movs r4, #0xff
	lsrs r0, r2, #0x18
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	mov r5, ip
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r6]
	lsrs r2, r2, #0x17
	ands r2, r4
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r6, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065630: .4byte gUnknown_082B48B4

	thumb_func_start sub_8065634
sub_8065634: @ 0x08065634
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	adds r0, #0x50
	cmp r1, r0
	bne _08065674
	adds r0, #0x10
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _08065670 @ =gUnknown_03001D10
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	mov r0, ip
	adds r0, #0x62
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	strh r4, [r3, #0xc]
	strh r4, [r3, #0xe]
	b _080656A2
	.align 2, 0
_08065670: .4byte gUnknown_03001D10
_08065674:
	adds r0, r1, #0
	adds r0, #0x2c
	movs r1, #0xfa
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2d
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2e
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2f
	strb r1, [r0]
	ldr r0, [r2]
	str r0, [r3, #0x10]
	ldr r0, [r2, #4]
	str r0, [r3, #0x14]
	mov r1, ip
	ldrh r0, [r1, #0x12]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xe]
_080656A2:
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80656B0
sub_80656B0: @ 0x080656B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x50
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065704 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	ldr r1, _08065708 @ =0xFFFFC000
	adds r0, r1, #0
	ldrh r2, [r4, #8]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _08065710
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _08065724
	ldr r0, [r3, #8]
	ldr r1, _0806570C @ =0xFFFFFBFF
	ands r0, r1
	b _0806572C
	.align 2, 0
_08065704: .4byte gUnknown_03001D10
_08065708: .4byte 0xFFFFC000
_0806570C: .4byte 0xFFFFFBFF
_08065710:
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08065724
	ldr r0, [r3, #8]
	ldr r1, _08065720 @ =0xFFFFFBFF
	ands r0, r1
	b _0806572C
	.align 2, 0
_08065720: .4byte 0xFFFFFBFF
_08065724:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0806572C:
	str r0, [r3, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0806573E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_0806573E:
	adds r0, r3, #0
	bl sub_80C033C
	movs r5, #0
	movs r0, #0x80
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0x20
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0x24
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #8
	ldr r6, _080657B8 @ =gUnknown_03001D10
_0806575E:
	mov r3, sl
	cmp r5, #1
	bhi _08065768
	adds r3, r4, #0
	adds r3, #0xb0
_08065768:
	lsls r2, r5, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	add r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	lsls r1, r5, #1
	adds r1, r7, r1
	ldr r2, _080657BC @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #8
	cmp r0, r1
	bls _080657C4
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080657D8
	ldr r0, [r3, #8]
	ldr r1, _080657C0 @ =0xFFFFFBFF
	ands r0, r1
	b _080657E0
	.align 2, 0
_080657B8: .4byte gUnknown_03001D10
_080657BC: .4byte 0xFFFFC000
_080657C0: .4byte 0xFFFFFBFF
_080657C4:
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080657D8
	ldr r0, [r3, #8]
	ldr r1, _080657D4 @ =0xFFFFFBFF
	ands r0, r1
	b _080657E0
	.align 2, 0
_080657D4: .4byte 0xFFFFFBFF
_080657D8:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080657E0:
	str r0, [r3, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _080657F2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_080657F2:
	adds r0, r3, #0
	bl sub_80C033C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0806575E
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_GuruGuru
CreateEntity_GuruGuru: @ 0x08065814
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806587C @ =sub_8065484
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08065880 @ =sub_80658C0
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_80651D0
	adds r0, r4, #0
	bl sub_8065300
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806587C: .4byte sub_8065484
_08065880: .4byte sub_80658C0

	thumb_func_start sub_8065884
sub_8065884: @ 0x08065884
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r3, sp
	bl sub_8065634
	str r0, [sp, #4]
	str r6, [sp, #0x1c]
	ldr r0, [r4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r5, #0x12]
	strh r0, [r1, #0xc]
	ldrh r0, [r5, #0x14]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	str r0, [sp]
	ldrb r0, [r5, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80658C0
sub_80658C0: @ 0x080658C0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080658D4 @ =0x030000B0
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080658D4: .4byte 0x030000B0

	thumb_func_start CreateEntity_Kyacchaa
CreateEntity_Kyacchaa: @ 0x080658D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806595C @ =Task_Kyacchaa
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08065960 @ =TaskDestructor_Kyacchaa
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r3, #0
	strh r2, [r7, #0xc]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x20]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	str r2, [r7, #0x10]
	str r2, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x30]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x2c]
	strb r3, [r7, #6]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08065964
	movs r0, #0xff
	b _08065966
	.align 2, 0
_0806595C: .4byte Task_Kyacchaa
_08065960: .4byte TaskDestructor_Kyacchaa
_08065964:
	movs r0, #1
_08065966:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x88
	ldr r2, _08065998 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_806599C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065998: .4byte 0x01000002

	thumb_func_start sub_806599C
sub_806599C: @ 0x0806599C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x15
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _08065A84 @ =gUnknown_080D2198
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _08065A88 @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl sub_80BF44C
	adds r3, r7, #0
	adds r3, #0x34
	str r5, [r7, #0x34]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	mov r0, sb
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065A84: .4byte gUnknown_080D2198
_08065A88: .4byte gUnknown_03001D10

	thumb_func_start sub_8065A8C
sub_8065A8C: @ 0x08065A8C
	push {r4, r5, lr}
	ldr r0, _08065AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08065AD4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065AB6
	cmp r1, #4
	beq _08065AB6
	adds r0, r4, #0
	bl sub_8065C48
	adds r5, r0, #0
_08065AB6:
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065AD8
	ldr r0, _08065AD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08065AFA
	.align 2, 0
_08065AD0: .4byte gCurTask
_08065AD4: .4byte gUnknown_030008A0
_08065AD8:
	cmp r5, #1
	bne _08065AFA
	adds r0, r4, #0
	adds r0, #0x5c
	ldr r2, _08065B00 @ =gUnknown_080D2198
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl sub_80BF44C
	ldr r0, _08065B04 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08065B08 @ =sub_8065B0C
	str r0, [r1, #8]
_08065AFA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065B00: .4byte gUnknown_080D2198
_08065B04: .4byte gCurTask
_08065B08: .4byte sub_8065B0C

	thumb_func_start sub_8065B0C
sub_8065B0C: @ 0x08065B0C
	push {r4, r5, r6, r7, lr}
	ldr r6, _08065B34 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8065CE0
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065B38
	ldr r0, [r6]
	bl TaskDestroy
	b _08065B7A
	.align 2, 0
_08065B34: .4byte gCurTask
_08065B38:
	ldr r0, _08065B80 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065B7A
	cmp r1, #4
	beq _08065B7A
	cmp r7, #0
	bne _08065B7A
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08065B7A
	ldr r1, _08065B84 @ =0x0300005C
	adds r0, r5, r1
	ldr r2, _08065B88 @ =gUnknown_080D2198
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl sub_80BF44C
	strh r7, [r4, #0xc]
	ldr r1, [r6]
	ldr r0, _08065B8C @ =sub_8065E48
	str r0, [r1, #8]
_08065B7A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065B80: .4byte gUnknown_030008A0
_08065B84: .4byte 0x0300005C
_08065B88: .4byte gUnknown_080D2198
_08065B8C: .4byte sub_8065E48

	thumb_func_start sub_8065B90
sub_8065B90: @ 0x08065B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x20]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r7, #0x24]
	asrs r0, r0, #8
	mov sb, r0
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	add sl, r0
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	add sb, r0
	movs r0, #0
	b _08065C24
_08065BB8:
	mov r1, sl
	lsls r2, r1, #8
	ldr r1, [r4, #0x10]
	subs r0, r1, r2
	adds r6, r2, #0
	adds r5, r1, #0
	ldr r3, _08065C14 @ =0x000027FF
	cmp r0, r3
	bgt _08065BE0
	cmp r1, r2
	blt _08065BE0
	mov r0, sb
	lsls r3, r0, #8
	ldr r2, [r4, #0x14]
	subs r1, r2, r3
	ldr r0, _08065C18 @ =0x00004FFF
	cmp r1, r0
	bgt _08065BE0
	cmp r2, r3
	bge _08065BFE
_08065BE0:
	subs r0, r6, r5
	ldr r1, _08065C14 @ =0x000027FF
	cmp r0, r1
	bgt _08065C1C
	cmp r6, r5
	blt _08065C1C
	mov r0, sb
	lsls r3, r0, #8
	ldr r2, [r4, #0x14]
	subs r1, r2, r3
	ldr r0, _08065C18 @ =0x00004FFF
	cmp r1, r0
	bgt _08065C1C
	cmp r2, r3
	blt _08065C1C
_08065BFE:
	ldrh r0, [r7, #8]
	lsls r0, r0, #0x10
	subs r0, r5, r0
	str r0, [r7, #0x10]
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	b _08065C3A
	.align 2, 0
_08065C14: .4byte 0x000027FF
_08065C18: .4byte 0x00004FFF
_08065C1C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08065C24:
	mov r8, r0
	mov r1, r8
	cmp r1, #1
	bhi _08065C38
	mov r0, r8
	bl sub_805CD20
	adds r4, r0, #0
	cmp r4, #0
	bne _08065BB8
_08065C38:
	movs r0, #0
_08065C3A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8065C48
sub_8065C48: @ 0x08065C48
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0x80
	lsls r5, r5, #2
	ldr r4, [r2, #0x20]
	ldr r3, [r2, #0x10]
	cmp r4, r3
	bgt _08065C7E
	cmp r4, r3
	beq _08065C74
	ldr r0, [r2, #0x64]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	orrs r0, r1
	str r0, [r2, #0x3c]
	adds r0, r4, r5
	str r0, [r2, #0x20]
	cmp r0, r3
	bgt _08065C96
_08065C74:
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x2c]
	cmp r0, r1
	ble _08065CAC
	b _08065CAA
_08065C7E:
	ldr r0, [r2, #0x64]
	ldr r1, _08065C9C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	ands r0, r1
	str r0, [r2, #0x3c]
	ldr r1, _08065CA0 @ =0xFFFFFE00
	adds r0, r4, r1
	str r0, [r2, #0x20]
	cmp r0, r3
	bge _08065CA4
_08065C96:
	str r3, [r2, #0x20]
	b _08065CAC
	.align 2, 0
_08065C9C: .4byte 0xFFFFFBFF
_08065CA0: .4byte 0xFFFFFE00
_08065CA4:
	ldr r1, [r2, #0x30]
	cmp r0, r1
	bge _08065CAC
_08065CAA:
	str r1, [r2, #0x20]
_08065CAC:
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x10]
	cmp r1, r0
	beq _08065CC0
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _08065CC0
	ldr r0, [r2, #0x30]
	cmp r1, r0
	bne _08065CD6
_08065CC0:
	ldr r0, [r2, #0x24]
	ldr r1, [r2, #0x14]
	cmp r0, r1
	bgt _08065CD6
	adds r0, r0, r5
	str r0, [r2, #0x24]
	cmp r0, r1
	ble _08065CD6
	str r1, [r2, #0x24]
	movs r0, #1
	b _08065CD8
_08065CD6:
	movs r0, #0
_08065CD8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8065CE0
sub_8065CE0: @ 0x08065CE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x5c
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08065D50 @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	subs r5, #0x28
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r2, r1, r0
	strh r2, [r5, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	subs r1, #0x13
	strh r1, [r5, #0x12]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08065D54
	subs r0, r2, #1
	b _08065D56
	.align 2, 0
_08065D50: .4byte gUnknown_03001D10
_08065D54:
	adds r0, r2, #1
_08065D56:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, [r6, #0x24]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r4, r0, r1
	ldr r0, [r6, #0x1c]
	cmp r4, r0
	ble _08065DD0
	adds r5, r6, #0
	adds r5, #0x34
	ldr r2, _08065DB0 @ =gUnknown_03001D10
	mov r8, r2
_08065D7C:
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r2, r1, r0
	strh r2, [r5, #0x10]
	asrs r1, r4, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	subs r1, #0x13
	strh r1, [r5, #0x12]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08065DB4
	subs r0, r2, #1
	b _08065DB6
	.align 2, 0
_08065DB0: .4byte gUnknown_03001D10
_08065DB4:
	adds r0, r2, #1
_08065DB6:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _08065DDC @ =0xFFFFF800
	adds r4, r4, r0
	ldr r0, [r6, #0x1c]
	cmp r4, r0
	bgt _08065D7C
_08065DD0:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065DDC: .4byte 0xFFFFF800

	thumb_func_start Task_Kyacchaa
Task_Kyacchaa: @ 0x08065DE0
	push {r4, r5, lr}
	ldr r5, _08065E08 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065B90
	cmp r0, #1
	bne _08065E10
	ldr r1, [r5]
	ldr r0, _08065E0C @ =sub_8065A8C
	str r0, [r1, #8]
	b _08065E3A
	.align 2, 0
_08065E08: .4byte gCurTask
_08065E0C: .4byte sub_8065A8C
_08065E10:
	ldr r0, _08065E40 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065E28
	cmp r1, #4
	beq _08065E28
	adds r0, r4, #0
	bl sub_8065EB0
_08065E28:
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065E3A
	ldr r0, _08065E44 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08065E3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065E40: .4byte gUnknown_030008A0
_08065E44: .4byte gCurTask

	thumb_func_start sub_8065E48
sub_8065E48: @ 0x08065E48
	push {r4, r5, lr}
	ldr r0, _08065E8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08065E90 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065E72
	cmp r1, #4
	beq _08065E72
	adds r0, r4, #0
	bl sub_8065F10
	adds r5, r0, #0
_08065E72:
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065E94
	ldr r0, _08065E8C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08065EA0
	.align 2, 0
_08065E8C: .4byte gCurTask
_08065E90: .4byte gUnknown_030008A0
_08065E94:
	cmp r5, #1
	bne _08065EA0
	ldr r0, _08065EA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08065EAC @ =Task_Kyacchaa
	str r0, [r1, #8]
_08065EA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065EA8: .4byte gCurTask
_08065EAC: .4byte Task_Kyacchaa

	thumb_func_start sub_8065EB0
sub_8065EB0: @ 0x08065EB0
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2c]
	ldr r3, [r2, #0x64]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08065EE8
	ldr r0, [r2, #0x20]
	cmp r0, r1
	bgt _08065F06
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _08065F06
	str r1, [r2, #0x20]
	ldr r1, _08065EE4 @ =0xFFFFFBFF
	ands r3, r1
	str r3, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	ands r0, r1
	b _08065F04
	.align 2, 0
_08065EE4: .4byte 0xFFFFFBFF
_08065EE8:
	ldrh r1, [r2, #0x30]
	ldr r0, [r2, #0x20]
	cmp r0, r1
	blt _08065F06
	ldr r5, _08065F0C @ =0xFFFFFF00
	adds r0, r0, r5
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _08065F06
	str r1, [r2, #0x20]
	orrs r3, r4
	str r3, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	orrs r0, r4
_08065F04:
	str r0, [r2, #0x3c]
_08065F06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065F0C: .4byte 0xFFFFFF00

	thumb_func_start sub_8065F10
sub_8065F10: @ 0x08065F10
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r2, [r1, #0x1c]
	cmp r0, r2
	blt _08065F2A
	subs r0, #0x80
	str r0, [r1, #0x24]
	cmp r0, r2
	bge _08065F2A
	str r2, [r1, #0x24]
	movs r0, #1
	b _08065F2C
_08065F2A:
	movs r0, #0
_08065F2C:
	pop {r1}
	bx r1

	thumb_func_start sub_8065F30
sub_8065F30: @ 0x08065F30
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x5c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8065F5C
sub_8065F5C: @ 0x08065F5C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8065F30
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

	thumb_func_start TaskDestructor_Kyacchaa
TaskDestructor_Kyacchaa: @ 0x08065F98
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0
