
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _080C6350 @ =0x03000438
	ldr r0, _080C6354 @ =0x04000120
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080C6358 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080C635C @ =gUnknown_03006C20
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #5
	bls _080C6344
	b _080C6500
_080C6344:
	lsls r0, r1, #2
	ldr r1, _080C6360 @ =_080C6364
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6350: .4byte 0x03000438
_080C6354: .4byte 0x04000120
_080C6358: .4byte 0x0400010E
_080C635C: .4byte gUnknown_03006C20
_080C6360: .4byte _080C6364
_080C6364: @ jump table
	.4byte _080C637C @ case 0
	.4byte _080C6440 @ case 1
	.4byte _080C6480 @ case 2
	.4byte _080C64C0 @ case 3
	.4byte _080C6500 @ case 4
	.4byte _080C6500 @ case 5
_080C637C:
	ldr r0, _080C63D0 @ =0x04000120
	mov r8, r0
	ldr r6, [r0]
	ldr r3, _080C63D4 @ =0x03000428
	ldrb r1, [r3]
	lsls r2, r1, #4
	adds r0, r6, #0
	lsls r0, r2
	lsrs r0, r0, #0x10
	movs r2, #1
	mov ip, r2
	subs r1, r2, r1
	lsls r1, r1, #4
	lsls r6, r1
	adds r1, r6, #0
	lsrs r6, r1, #0x10
	ldrh r5, [r3, #0xa]
	adds r4, r3, #0
	cmp r5, #0
	bne _080C6404
	ldrh r2, [r4, #6]
	adds r1, r0, #0
	cmp r1, r2
	bne _080C6402
	ldrh r3, [r4, #2]
	cmp r3, #3
	bhi _080C63D8
	ldrh r0, [r4, #4]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _080C6404
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r6, r0
	bne _080C6404
	adds r0, r3, #1
	strh r0, [r4, #2]
	b _080C6404
	.align 2, 0
_080C63D0: .4byte 0x04000120
_080C63D4: .4byte 0x03000428
_080C63D8:
	strh r6, [r4, #0xa]
	ldr r0, _080C63F8 @ =0x00008002
	cmp r6, r0
	bne _080C6400
	mov r0, ip
	strb r0, [r7]
	movs r0, #1
	bl sub_80C65F0
	ldr r1, _080C63FC @ =0x03000434
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r5, [r4, #2]
	b _080C6524
	.align 2, 0
_080C63F8: .4byte 0x00008002
_080C63FC: .4byte 0x03000434
_080C6400:
	strh r5, [r4, #0xa]
_080C6402:
	strh r5, [r4, #2]
_080C6404:
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _080C6418
	lsls r0, r0, #1
	ldr r1, _080C6414 @ =gUnknown_082B533C
	adds r0, r0, r1
	ldrh r0, [r0]
	b _080C641C
	.align 2, 0
_080C6414: .4byte gUnknown_082B533C
_080C6418:
	movs r0, #0x80
	lsls r0, r0, #8
_080C641C:
	strh r0, [r4, #4]
	mvns r0, r6
	strh r0, [r4, #6]
	ldr r3, _080C643C @ =0x04000120
	ldrh r2, [r4, #4]
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	lsls r0, r0, #4
	lsls r2, r0
	ldrh r0, [r4, #6]
	lsls r1, r1, #4
	lsls r0, r1
	adds r2, r2, r0
	str r2, [r3]
	b _080C6524
	.align 2, 0
_080C643C: .4byte 0x04000120
_080C6440:
	ldr r5, _080C6464 @ =gUnknown_03006C20
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C6470
	ldr r1, _080C6468 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp]
	ldr r2, _080C646C @ =0x05000003
	mov r0, sp
	bl CpuSet
	strb r4, [r5]
	b _080C6474
	.align 2, 0
_080C6464: .4byte gUnknown_03006C20
_080C6468: .4byte 0x03000428
_080C646C: .4byte 0x05000003
_080C6470:
	movs r0, #2
	strb r0, [r5]
_080C6474:
	ldr r0, _080C647C @ =gUnknown_03006C20
	ldrb r0, [r0]
	b _080C64E2
	.align 2, 0
_080C647C: .4byte gUnknown_03006C20
_080C6480:
	ldr r5, _080C64A4 @ =gUnknown_03006C20
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C64B0
	ldr r1, _080C64A8 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _080C64AC @ =0x05000003
	bl CpuSet
	strb r4, [r5]
	b _080C64B4
	.align 2, 0
_080C64A4: .4byte gUnknown_03006C20
_080C64A8: .4byte 0x03000428
_080C64AC: .4byte 0x05000003
_080C64B0:
	movs r0, #3
	strb r0, [r5]
_080C64B4:
	ldr r0, _080C64BC @ =gUnknown_03006C20
	ldrb r0, [r0]
	b _080C64E2
	.align 2, 0
_080C64BC: .4byte gUnknown_03006C20
_080C64C0:
	adds r5, r7, #0
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C64E0
	ldr r1, _080C64F0 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r2, _080C64F4 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
_080C64E0:
	ldrb r0, [r7]
_080C64E2:
	bl sub_80C65F0
	ldr r1, _080C64F8 @ =0x03000434
	str r0, [r1]
	ldr r1, _080C64FC @ =0x04000120
	str r0, [r1]
	b _080C6524
	.align 2, 0
_080C64F0: .4byte 0x03000428
_080C64F4: .4byte 0x05000003
_080C64F8: .4byte 0x03000434
_080C64FC: .4byte 0x04000120
_080C6500:
	ldr r3, _080C6518 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080C651C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C6520 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	b _080C6534
	.align 2, 0
_080C6518: .4byte 0x04000208
_080C651C: .4byte 0x04000200
_080C6520: .4byte 0x0000FF7F
_080C6524:
	ldr r2, _080C6540 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C6544 @ =0x0400010E
	movs r0, #0xc1
	strh r0, [r1]
_080C6534:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6540: .4byte 0x04000128
_080C6544: .4byte 0x0400010E

.syntax divided
