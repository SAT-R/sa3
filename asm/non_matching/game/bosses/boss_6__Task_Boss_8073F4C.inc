
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _08074028 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x44
	adds r6, r1, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _08074040
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bne _08073F8C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #8
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0807402C @ =0x00000221
	bl m4aSongNumStart
_08073F8C:
	ldrh r1, [r6]
	cmp r1, #0xef
	bhi _08074044
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074014
	ldr r3, _08074030 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _08074034 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08074038 @ =0x3C6EF35F
	adds r0, r0, r1
	movs r4, #0xff
	ands r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r4, r4, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	movs r1, #3
	adds r3, r0, #0
	ands r3, r1
	lsls r3, r3, #8
	ldr r5, _0807403C @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r0, r1
	lsls r2, r4, #1
	adds r2, r2, r5
	movs r5, #0
	ldrsh r2, [r2, r5]
	muls r2, r0, r2
	lsrs r1, r1, #0xe
	movs r0, #0xba
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsrs r2, r2, #0xe
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r3, r0
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r7, #0x4c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_08074014:
	ldrh r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08074044
	ldr r0, _0807402C @ =0x00000221
	bl m4aSongNumStart
	b _08074044
	.align 2, 0
_08074028: .4byte gCurTask
_0807402C: .4byte 0x00000221
_08074030: .4byte gPseudoRandom
_08074034: .4byte 0x00196225
_08074038: .4byte 0x3C6EF35F
_0807403C: .4byte gSineTable
_08074040:
	ldr r0, _0807404C @ =Task_Boss_8074050
	str r0, [r2, #8]
_08074044:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807404C: .4byte Task_Boss_8074050

.syntax divided
