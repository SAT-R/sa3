
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803B82C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1              @ sb = cap
	ldrh r0, [r1, #0x2c]
	lsrs r0, r0, #2
	cmp r0, #7
	bhi _0803B830
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803B832
	.align 2, 0
_0803B82C: .4byte gCurTask
_0803B830:
	movs r0, #8
_0803B832:
	str r0, [sp, #4]        @ sp04 = maximum
	movs r1, #0
	mov sl, r1              @ sl = i = 0
	ldr r3, [sp, #4]
	cmp sl, r3
	bhs _0803B8F6
	mov r0, sb
	adds r0, #0x4a
	str r0, [sp, #8]        @ sp08 = cap->unk48[i][1]
_0803B844:
	mov r1, sl
	lsls r1, r1, #2
	mov r8, r1              @ r8 = i * 4
	ldr r7, [sp, #8]
	add r7, r8              @ r7 = &cap->unk48[i][0]
	ldrh r0, [r7]
	adds r0, #0x40
	strh r0, [r7]
	mov r3, sl              @ r3 = sl = i
	lsls r2, r3, #3         @ r2 = i * 8
	mov r0, sb
	adds r0, #0x68
	adds r4, r0, r2
	subs r0, #0x20
	adds r5, r0, r1
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]            @ cap->unk68[i][0] += cap->unk48[i][0];
	mov r0, sb
	adds r0, #0x6c
	adds r6, r0, r2
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0803B8BC @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r1, r0, #0
	mov r2, r8
	cmp r1, #0
	bge _0803B8E6_continue
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	ble _0803B8E6_continue
	lsls r0, r1, #8
	ldr r1, [r6]
	adds r1, r1, r0
	str r1, [r6]
	ldr r1, [r4]            @ r4 = cap->unk68[i][0]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _0803B8C0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0803B8D2
	b _0803B8CE
	.align 2, 0
_0803B8BC: .4byte sub_8051F54
_0803B8C0:
	ldr r0, _0803B908 @ =0x00004FFF
	cmp r1, r0
	bgt _0803B8D2
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0803B8D2
_0803B8CE:
	rsbs r0, r0, #0
	strh r0, [r5]
_0803B8D2:
	ldr r0, [sp, #8]
	adds r2, r0, r2
	movs r1, #3
	mov r3, sl              @ r3 = sl = i
	ands r1, r3
	lsls r1, r1, #6
	ldr r3, _0803B90C @ =0xFFFFFB80
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
_0803B8E6_continue:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0          @ i++
	ldr r0, [sp, #4]
	cmp sl, r0
	blo _0803B844
_0803B8F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B908: .4byte 0x00004FFF
_0803B90C: .4byte 0xFFFFFB80

.syntax divided
