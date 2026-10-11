
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A2948 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r0, _080A294C @ =0x0300014C
	adds r5, r6, r0
	ldrh r0, [r5]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A2814
	b _080A2940
_080A2814:
	ldr r1, _080A2950 @ =0x0300013E
	adds r4, r6, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	bl sub_80A2978
	ldr r2, _080A2954 @ =0x0300013C
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080A2858
	movs r5, #0
	adds r2, #0x12
	adds r4, r6, r2
	movs r2, #0
_080A2842:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080A2842
_080A2858:
	movs r5, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0xa7
	lsls r1, r1, #1
	adds r6, r7, r1
_080A2866:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #2
	cmp r1, r2
	ble _080A288E
	ldrh r0, [r4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r3, #1
	adds r1, r6, r1
	adds r2, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080A288C
	movs r2, #0x1f
_080A288C:
	strh r2, [r1]
_080A288E:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080A2866
	movs r5, #0
	ldr r6, _080A2958 @ =gBgPalette
_080A28A2:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #1
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
	bl sub_80C4C0C
	adds r1, r4, #0
	adds r1, #0x50
	lsls r1, r1, #1
	adds r1, r1, r6
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080A28A2
	ldr r5, _080A295C @ =gFlags
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	bl sub_80A2D80
	bl sub_80A23A4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x95
	bne _080A2918
	ldr r0, _080A2960 @ =gMPlayInfo_BGM
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A2964 @ =gMPlayInfo_SE1
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A2968 @ =gMPlayInfo_SE2
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A296C @ =gMPlayInfo_SE3
	movs r1, #5
	bl m4aMPlayFadeOut
_080A2918:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x9f
	ble _080A2940
	ldr r1, _080A2970 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, _080A2948 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2974 @ =Task_170_80A2D34
	str r0, [r1, #8]
_080A2940:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2948: .4byte gCurTask
_080A294C: .4byte 0x0300014C
_080A2950: .4byte 0x0300013E
_080A2954: .4byte 0x0300013C
_080A2958: .4byte gBgPalette
_080A295C: .4byte gFlags
_080A2960: .4byte gMPlayInfo_BGM
_080A2964: .4byte gMPlayInfo_SE1
_080A2968: .4byte gMPlayInfo_SE2
_080A296C: .4byte gMPlayInfo_SE3
_080A2970: .4byte gBldRegs
_080A2974: .4byte Task_170_80A2D34

.syntax divided
