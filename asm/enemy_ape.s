.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
