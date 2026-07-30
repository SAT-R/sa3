
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08073DE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0xa]
	adds r0, #0x20
	strh r0, [r5, #0xa]
	movs r1, #8
	ldrsh r0, [r5, r1]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r0, #0xa
	ldrsh r2, [r5, r0]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	movs r2, #0xaf
	lsls r2, r2, #0xb
	cmp r1, r2
	bgt _08073DE4
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08073DE4
	str r2, [r5]
	b _08073DFC
	.align 2, 0
_08073DE0: .4byte gCurTask
_08073DE4:
	ldr r1, [r5]
	ldr r0, _08073E48 @ =0x000621FF
	cmp r1, r0
	ble _08073E00
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08073E00
	ldr r0, _08073E4C @ =0x00062200
	str r0, [r5]
	movs r2, #8
	ldrsh r0, [r5, r2]
_08073DFC:
	rsbs r0, r0, #0
	strh r0, [r5, #8]
_08073E00:
	ldr r0, [r5]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r5, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r5, #0
	adds r2, #0x44
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	movs r6, #1
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _08073E24
	movs r6, #0
_08073E24:
	cmp r6, #3
	bhi _08073EBE
	adds r7, r5, #0
	adds r7, #0x5c
	ldr r0, _08073E50 @ =gSineTable
	mov sb, r0
_08073E30:
	lsls r1, r6, #1
	adds r3, r7, r1
	ldrh r2, [r3]
	movs r0, #1
	ands r0, r6
	adds r4, r1, #0
	cmp r0, #0
	beq _08073E54
	adds r1, r2, #0
	subs r1, #0x3e
	b _08073E58
	.align 2, 0
_08073E48: .4byte 0x000621FF
_08073E4C: .4byte 0x00062200
_08073E50: .4byte gSineTable
_08073E54:
	adds r1, r2, #0
	adds r1, #0x3e
_08073E58:
	ldr r0, _08073F0C @ =0x000003FF
	ands r1, r0
	strh r1, [r3]
	adds r0, r7, r4
	ldrh r4, [r0]
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r3, r0, #2
	adds r3, r3, r0
	asrs r3, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #0xc
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x4c]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08073E30
_08073EBE:
	ldr r4, [sp, #0x10]
	ldrh r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08073ED0
	ldr r0, _08073F10 @ =0x00000221
	bl m4aSongNumStart
_08073ED0:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08073EE8
	mov r2, r8
	lsls r1, r2, #0x10
	movs r0, #0xe6
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08073F1C
_08073EE8:
	ldr r0, [r5, #0x70]
	bl VramFree
	movs r0, #0
	str r0, [r5, #0x70]
	ldr r0, _08073F10 @ =0x00000221
	bl m4aSongNumStart
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	ldr r0, _08073F14 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073F18 @ =Task_Boss_8073F4C
	str r0, [r1, #8]
	b _08073F3C
	.align 2, 0
_08073F0C: .4byte 0x000003FF
_08073F10: .4byte 0x00000221
_08073F14: .4byte gCurTask
_08073F18: .4byte Task_Boss_8073F4C
_08073F1C:
	ldr r1, [r5, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r5, #0
	bl sub_8074CF0
	adds r0, r5, #0
	bl sub_8074148
_08073F3C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
