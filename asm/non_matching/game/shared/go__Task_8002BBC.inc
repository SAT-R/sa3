
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08002BF8 @ =gStageData
	movs r0, #0
	mov sl, r0
	ldr r0, _08002BFC @ =gNextFreeAffineIndex
	movs r1, #6
	strb r1, [r0]
	ldrb r0, [r3, #3]
	cmp r0, #4
	bls _08002C04
	adds r1, r3, #0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08002C04
	ldr r2, _08002C00 @ =gMultiSioRecv
	ldr r1, [r1, #0x1c]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r2, #2]
	adds r2, r3, #0
	str r0, [r2, #0x1c]
	ldrb r1, [r2, #4]
	b _08002C16
	.align 2, 0
_08002BF8: .4byte gStageData
_08002BFC: .4byte gNextFreeAffineIndex
_08002C00: .4byte gMultiSioRecv
_08002C04:
	ldrb r0, [r3, #4]
	adds r1, r0, #0
	cmp r1, #4
	beq _08002C16
	ldr r0, [r3, #0x1c]
	adds r0, #1
	str r0, [r3, #0x1c]
	movs r0, #1
	mov sl, r0
_08002C16:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08002D12
	cmp r1, #3
	beq _08002C24
	b _08002DC0
_08002C24:
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	add r0, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08002CC8 @ =0x00008C9F
	cmp r0, r2
	bhi _08002C3A
	b _08002DC0
_08002C3A:
	strh r2, [r1]
	ldr r3, _08002CC4 @ =gStageData
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08002C4C
	ldrb r0, [r3, #3]
	cmp r0, #6
	beq _08002C4C
	b _08002DC0
_08002C4C:
	ldr r0, _08002CC4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08002CCC @ =gPlayers
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	ldr r0, [r4, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08002C82
	b _08002DC0
_08002C82:
	bl sub_8003A14
	ldr r1, _08002CC4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08002C9C
	bl sub_802789C
	ldr r0, _08002CC4 @ =gStageData
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002C9C:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #9]
	cmp r0, #8
	beq _08002CD0
	adds r0, r4, #0
	bl Player_HitWithoutRingsUpdate
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _08002CBA
	b _08002DC0
_08002CBA:
	adds r0, r5, #0
	bl Player_HitWithoutRingsUpdate
	b _08002DC0
	.align 2, 0
_08002CC4: .4byte gStageData
_08002CC8: .4byte 0x00008C9F
_08002CCC: .4byte gPlayers
_08002CD0:
	ldr r3, _08002CF4 @ =gStageData
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08002CF8
	adds r0, r4, #0
	bl Player_HitWithoutRingsUpdate
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08002DC0
	adds r0, r5, #0
	bl sub_80105F0
	b _08002DC0
	.align 2, 0
_08002CF4: .4byte gStageData
_08002CF8:
	adds r0, r5, #0
	bl Player_HitWithoutRingsUpdate
	ldr r0, [r5, #4]
	orrs r0, r6
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	orrs r0, r6
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_80105F0
	b _08002DC0
_08002D12:
	cmp r1, #3
	bne _08002D82
	ldr r5, _08002E0C @ =gMultiSioRecv
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0x3c
	beq _08002D60
	cmp r2, #0x78
	beq _08002D60
	cmp r2, #0xb4
	beq _08002D60
	cmp r2, #0xf0
	beq _08002D60
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	bne _08002D66
_08002D60:
	ldr r0, _08002E10 @ =0x00000336
	bl m4aSongNumStart
_08002D66:
	ldrh r1, [r4]
	ldr r0, _08002E14 @ =0x00002A30
	cmp r1, r0
	bhi _08002D76
	ldrh r1, [r5]
	ldr r0, _08002E18 @ =0x0000600E
	cmp r1, r0
	bne _08002D82
_08002D76:
	movs r0, #0
	strh r0, [r4]
	ldr r0, _08002E1C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002E20 @ =sub_8003288
	str r0, [r1, #8]
_08002D82:
	ldr r3, _08002E24 @ =gUnknown_03001060
	adds r4, r3, #0
	adds r4, #0x52
	ldrh r0, [r4]
	mov r1, sl
	adds r2, r0, r1
	strh r2, [r4]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08002E28 @ =0x000001FF
	cmp r0, r5
	bls _08002DC0
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	ands r2, r5
	strh r2, [r4]
	adds r2, r3, #0
	adds r2, #0x54
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
_08002DC0:
	ldr r0, _08002E2C @ =gStageData
	ldrb r1, [r0, #3]
	cmp r1, #7
	bne _08002DCA
	b _08003008
_08002DCA:
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002E76
	movs r2, #0
	mov r8, r2
	mov sb, r1
_08002DDA:
	mov r3, sb
	ldrb r0, [r3]
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002E62
	lsls r1, r3, #1
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x2e
	adds r1, r1, r0
	ldrh r3, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r3, r0
	cmp r0, #0
	bge _08002E30
	movs r0, #0
	b _08002E34
	.align 2, 0
_08002E0C: .4byte gMultiSioRecv
_08002E10: .4byte 0x00000336
_08002E14: .4byte 0x00002A30
_08002E18: .4byte 0x0000600E
_08002E1C: .4byte gCurTask
_08002E20: .4byte sub_8003288
_08002E24: .4byte gUnknown_03001060
_08002E28: .4byte 0x000001FF
_08002E2C: .4byte gStageData
_08002E30:
	mov r2, sl
	subs r0, r3, r2
_08002E34:
	strh r0, [r1]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	ldr r6, _08002EB8 @ =gStageData
	adds r6, #0x2e
	adds r4, r0, r6
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002E50
	ldr r0, _08002EBC @ =0x00000249
	bl m4aSongNumStart
_08002E50:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002E62
	movs r1, #1
	lsls r1, r5
	mov r3, sb
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
_08002E62:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov r8, r3
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002DDA
_08002E76:
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002F02
	movs r0, #0
	mov r8, r0
	adds r6, r1, #0
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x3e
	mov sb, r1
_08002E8C:
	ldrb r0, [r6]
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002EEE
	lsls r0, r3, #1
	mov r1, sb
	adds r2, r0, r1
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _08002EC0
	movs r0, #0
	b _08002EC4
	.align 2, 0
_08002EB8: .4byte gStageData
_08002EBC: .4byte 0x00000249
_08002EC0:
	mov r3, sl
	subs r0, r1, r3
_08002EC4:
	strh r0, [r2]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	mov r1, sb
	adds r4, r0, r1
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002EDE
	ldr r0, _08002F44 @ =0x00000249
	bl m4aSongNumStart
_08002EDE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002EEE
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
	strb r0, [r6]
_08002EEE:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002E8C
_08002F02:
	movs r2, #0
	mov r8, r2
	ldr r3, _08002F48 @ =gStageData + 0x5E
	mov sb, r3
	movs r0, #0x10
	add r0, sb
	mov ip, r0
	ldr r1, _08002F4C @ =0x03FF0000
	mov sl, r1
_08002F14:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xf
	mov r0, sb
	adds r6, r1, r0
	subs r0, #0x10
	adds r4, r1, r0
	add r1, ip
	ldrh r5, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r7, r2, #0
	cmp r0, #0
	beq _08002F82
	ldrh r0, [r1]
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r3, #0
	bne _08002F50
	movs r3, #0x78
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _08002F80
	.align 2, 0
_08002F44: .4byte 0x00000249
_08002F48: .4byte gStageData + 0x5E
_08002F4C: .4byte 0x03FF0000
_08002F50:
	cmp r3, #0
	bge _08002F62
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002F82
	movs r0, #1
	b _08002F80
_08002F62:
	subs r0, r5, r0
	strh r0, [r4]
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #7
	bgt _08002F74
	adds r0, r3, #1
	strh r0, [r1]
_08002F74:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _08002F82
	movs r0, #0
	strh r0, [r4]
_08002F80:
	strh r0, [r1]
_08002F82:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _08002F90
	strh r1, [r4]
_08002F90:
	movs r0, #0
	ldrsh r3, [r4, r0]
	ldrh r0, [r6]
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r3, r1
	ble _08002FB2
	adds r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08002FCA
	b _08002FC8
_08002FB2:
	cmp r3, r1
	bge _08002FCA
	subs r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08002FCA
_08002FC8:
	strh r3, [r6]
_08002FCA:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r7, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002F14
	bl sub_80043B8
	ldr r3, _08003034 @ =gStageData
	ldrb r2, [r3, #3]
	cmp r2, #7
	beq _08003008
	ldr r0, _08003038 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003008
	cmp r2, #1
	beq _08003008
	cmp r2, #2
	beq _08003008
	ldrh r0, [r3, #0xe]
	cmp r0, #1
	bne _08003004
	cmp r2, #5
	beq _08003008
_08003004:
	bl sub_800341C
_08003008:
	ldr r4, _08003034 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08003018
	bl sub_8026478
	bl sub_80264F0
_08003018:
	adds r1, r4, #0
	adds r1, #0xbb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08003026
	subs r0, #1
	strb r0, [r1]
_08003026:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003034: .4byte gStageData
_08003038: .4byte gPressedKeys

.syntax divided
