
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0xa
	beq _08066778
	cmp r0, #0xa
	bgt _08066748
	cmp r0, #1
	beq _08066750
	b _0806687E
_08066748:
	cmp r0, #0x64
	bne _0806674E
	b _0806684C
_0806674E:
	b _0806687E
_08066750:
	ldr r0, _0806682C @ =gCamera
	ldr r0, [r0]
	adds r0, #0x78
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	subs r2, r0, r1
	adds r0, r2, #0
	cmp r2, #0
	bge _08066764
	adds r0, #0x3f
_08066764:
	asrs r0, r0, #6
	movs r1, #0
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r5, #0x18]
	strh r1, [r5, #0x1a]
_08066778:
	ldr r0, _08066830 @ =gSineTable
	mov ip, r0
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r1, #0x3a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r0, r0, r6
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x1a]
	adds r0, #8
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _080667AC
	movs r0, #0
	strh r0, [r5, #0x14]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	movs r0, #0x78
	strh r0, [r5, #0x1a]
_080667AC:
	ldr r0, _08066834 @ =gStageData
	mov r8, r0
	ldr r7, [r0, #0x1c]
	movs r0, #3
	ands r7, r0
	cmp r7, #0
	bne _08066816
	ldr r3, _08066838 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806683C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08066840 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _08066844 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r6, #0xf
	ands r6, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	lsrs r6, r0, #6
	ldr r1, [r5, #8]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r2, r2, r6
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	adds r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #9
	bl sub_8079758
_08066816:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806687E
	ldr r0, _08066848 @ =0x00000221
	bl m4aSongNumStart
	b _0806687E
	.align 2, 0
_0806682C: .4byte gCamera
_08066830: .4byte gSineTable
_08066834: .4byte gStageData
_08066838: .4byte gPseudoRandom
_0806683C: .4byte 0x00196225
_08066840: .4byte 0x3C6EF35F
_08066844: .4byte 0x000003FF
_08066848: .4byte 0x00000221
_0806684C:
	ldrh r0, [r5, #0x1a]
	subs r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0806687E
	strh r0, [r5, #0x18]
	ldr r6, [r4, #8]
	adds r0, r5, #0
	movs r1, #9
	bl Gemerl_SwitchState
	movs r1, #0x80
	lsls r1, r1, #3
	ands r6, r1
	cmp r6, #0
	beq _08066876
	ldr r0, [r4, #8]
	orrs r0, r1
	b _0806687C
_08066876:
	ldr r0, [r4, #8]
	ldr r1, _0806688C @ =0xFFFFFBFF
	ands r0, r1
_0806687C:
	str r0, [r4, #8]
_0806687E:
	movs r0, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806688C: .4byte 0xFFFFFBFF

.syntax divided
