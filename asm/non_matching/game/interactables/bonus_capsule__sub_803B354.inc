
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r1, _0803B420 @ =gUnknown_080CF8A0
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	ldr r0, _0803B424 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0         @ r5 = cap
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _0803B37E
	b _0803B486
_0803B37E:
	subs r0, #1
	strh r0, [r5, #0x2e]
	movs r7, #0
	ldr r0, _0803B428 @ =0x03000032
	adds r0, r1, r0
	str r0, [sp, #0x18]     @ sp18 = &cap->qUnk32
	ldr r2, _0803B42C @ =0x03000038
	adds r2, r1, r2
	str r2, [sp, #0x1c]     @ sp1C = &cap->qUnk38
	ldr r0, _0803B430 @ =0x03000030
	adds r0, r1, r0
	str r0, [sp, #0x14]     @ sp14 = &cap->qUnk30
	ldr r2, _0803B434 @ =0x0300003C
	adds r2, r1, r2
	str r2, [sp, #0x10]     @ sp10 = &cap->qUnk3C
	ldr r0, _0803B438 @ =0x030000A8
	adds r0, r0, r1
	mov sl, r0              @ sl = &cap->unkA8
	ldr r2, _0803B43C @ =gCamera
	mov r8, r2              @ r8 = r2 = gCamera
	add r6, sp, #8          @ r6 = sp08
	ldr r0, _0803B440 @ =0x030000AC
	adds r0, r0, r1
	mov sb, r0              @ sb = &cap->unkAc
_0803B3AE:
	lsls r1, r7, #2         @ r1 = i * 4
	ldr r2, [sp, #0x18]
	adds r4, r2, r1         @ r4 = &cap->qUnk30[i][1]
	ldrh r0, [r4]
	adds r0, #0x40
	strh r0, [r4]
	lsls r2, r7, #3         @ r2 = i * 8
	ldr r0, [sp, #0x1c]
	adds r3, r0, r2         @ r3 = &cap->qUnk38[i][0]
	ldr r0, [sp, #0x14]     @ r0 = &cap->qUnk30
	adds r1, r0, r1
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [sp, #0x10]     @ r0 = &cap->qUnk3C
	adds r2, r0, r2         @ r2 = = &cap->qUnk38[i][1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r1, [r5, #0x2e]    @ r1 = cap->unk2E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B444
	cmp r7, #0
	bne _0803B47C
	mov r0, sl
	movs r1, #1
	movs r2, #0
	bl sub_80C4EB0
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #8]        @ sp08[0] = ?
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]        @ sp08[1] = ?
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	movs r1, #1
	adds r2, r6, #0
	add r3, sp, #4      @ r3 = sp04 = 
	bl sub_80C59E8
	b _0803B47C
	.align 2, 0
_0803B420: .4byte gUnknown_080CF8A0
_0803B424: .4byte gCurTask
_0803B428: .4byte 0x03000032
_0803B42C: .4byte 0x03000038
_0803B430: .4byte 0x03000030
_0803B434: .4byte 0x0300003C
_0803B438: .4byte 0x030000A8
_0803B43C: .4byte gCamera
_0803B440: .4byte 0x030000AC
_0803B444:
	cmp r7, #1
	bne _0803B47C
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_80C4EB0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	movs r1, #1
	adds r2, r6, #0
	add r3, sp, #4      @ r3 = sp04 = arr
	bl sub_80C59E8
_0803B47C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0803B3AE
_0803B486:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
