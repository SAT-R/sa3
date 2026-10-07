
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080A9400 @ =0xFFFFFBF8
	add sp, r4
	ldr r0, _080A9404 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0			@ R4 = strcE04
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A9410
	ldr r0, _080A9408 @ =Palette_unknown_318
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A940C @ =Palette_unknown_319
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
	b _080A9424
	.align 2, 0
_080A9400: .4byte 0xFFFFFBF8
_080A9404: .4byte gCurTask
_080A9408: .4byte Palette_unknown_318
_080A940C: .4byte Palette_unknown_319
_080A9410:
	ldr r0, _080A94D8 @ =Palette_unknown_307
	mov r1, sp
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080A94DC @ =Palette_unknown_308
	add r1, sp, #0x200
	movs r2, #0x80
	bl CpuFastSet
_080A9424:
	movs r7, #0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r4, r0		@ R0 = &strcE04->palette204;
	movs r1, #0x80
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]		@ swapRefs[0] = &strcE04->palette204
	movs r2, #0x80
	lsls r2, r2, #2
	add r2, sp
	ldr r6, _080A94E0 @ =0x00000404
	add r6, sp
	str r2, [r6]		@ swapRefs[1] = paletteSP1
	movs r0, #0x1f
	mov ip, r0			@ IP = 0x1F
	movs r1, #0x1f
	mov r8, r1			@ R8 = 0x1F
	movs r2, #0x82
	lsls r2, r2, #2
	adds r2, r2, r4
	mov sl, r2			@ SL = &strcE04->palette204[1]
	movs r6, #0x83
	lsls r6, r6, #2
	adds r6, r6, r4
	mov sb, r6			@ SB = &strcE04->palette204[2]
_080A9458:
	lsls r2, r7, #1
	adds r3, r2, r7
	lsls r3, r3, #2
	movs r0, #0x80
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	adds r6, r0, r3
	ldr r1, _080A94E0 @ =0x00000404
	add r1, sp
	ldr r1, [r1]
	adds r5, r1, r2
	ldrh r0, [r5]
	mov r1, r8
	ands r1, r0
	mov r0, sp
	adds r4, r0, r2
	ldrh r2, [r4]
	mov r0, r8
	ands r0, r2
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r6]
	mov r1, sl			@ R1 = SL = &strcE04->palette204[1]
	adds r2, r1, r3		@ R2 = 
	ldrh r1, [r5]
	lsrs r1, r1, #5
	mov r6, ip
	ands r1, r6
	ldrh r0, [r4]
	lsrs r0, r0, #5
	ands r0, r6
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r2]
	add r3, sb
	ldrh r1, [r5]
	lsrs r1, r1, #0xa
	ands r1, r6
	ldrh r0, [r4]
	lsrs r0, r0, #0xa
	ands r0, r6
	subs r1, r1, r0
	lsls r1, r1, #4
	str r1, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xff
	bls _080A9458
	ldr r1, _080A94E4 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _080A94E8 @ =Task_E04_80A94EC
	str r2, [r0, #8]
	movs r3, #0x81
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A94D8: .4byte Palette_unknown_307
_080A94DC: .4byte Palette_unknown_308
_080A94E0: .4byte 0x00000404
_080A94E4: .4byte gCurTask
_080A94E8: .4byte Task_E04_80A94EC

.syntax divided
