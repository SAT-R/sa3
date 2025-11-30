
.syntax unified
.text
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
	ldr r0, _0806164C @ =gStageData
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
_0806164C: .4byte gStageData
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

.syntax divided
