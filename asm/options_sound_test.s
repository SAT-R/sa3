.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Options_SoundTest
Options_SoundTest: @ 0x08093954
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r0, _08093A94 @ =Task_SoundTest
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08093A98 @ =TaskDestructor_SoundTest
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	str r4, [r0, #0xc]
	movs r3, #0
	movs r1, #0
	strh r1, [r0, #0x18]
	strb r3, [r0, #5]
	ldr r4, _08093A9C @ =0x030000A0
	adds r0, r2, r4
	str r5, [r0]
	ldr r0, _08093AA0 @ =gLoadedSaveGame
	ldr r4, _08093AA4 @ =0x00000366
	adds r0, r0, r4
	ldrb r0, [r0]
	mov r4, ip
	strb r0, [r4, #4]
	strb r3, [r4, #6]
	str r6, [r4, #0x14]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x22]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	ldr r0, _08093AA8 @ =0x03000028
	adds r4, r2, r0
	movs r3, #0
	subs r0, #0xe
	adds r2, r2, r0
_080939B0:
	lsls r0, r1, #2
	adds r0, r4, r0
	str r3, [r0]
	cmp r1, #3
	bhi _080939C0
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r3, [r0]
_080939C0:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _080939B0
	ldr r1, _08093AAC @ =gBgScrollRegs
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	adds r0, #0x18
	mov r3, ip
	str r0, [r3, #0x60]
	movs r4, #6
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	adds r0, #0x87
	str r0, [r3, #0x64]
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	adds r0, #0x19
	str r0, [r3, #0x68]
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r0, #0x19
	mov r4, ip
	str r0, [r4, #0x6c]
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	str r0, [r4, #0x70]
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	str r0, [r4, #0x74]
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	adds r0, #0x50
	mov r2, ip
	str r0, [r2, #0x78]
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r0, #0x5c
	str r0, [r2, #0x7c]
	adds r2, #0x80
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r2, #4
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r2, #0xc
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	adds r0, #0x50
	str r0, [r2]
	adds r2, #4
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r0, #0x5c
	str r0, [r2]
	adds r2, #4
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r2, #4
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	str r0, [r2]
	mov r0, ip
	adds r0, #0x88
	movs r2, #0
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r4, ip
	strh r0, [r4, #0x26]
	strb r1, [r4, #9]
	strb r1, [r4, #8]
	movs r0, #1
	strb r0, [r4, #7]
	str r2, [r4]
	mov r0, ip
	bl sub_8094144
	movs r0, #6
	bl m4aSongNumStop
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093A94: .4byte Task_SoundTest
_08093A98: .4byte TaskDestructor_SoundTest
_08093A9C: .4byte 0x030000A0
_08093AA0: .4byte gLoadedSaveGame
_08093AA4: .4byte 0x00000366
_08093AA8: .4byte 0x03000028
_08093AAC: .4byte gBgScrollRegs

	thumb_func_start sub_8093AB0
sub_8093AB0: @ 0x08093AB0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08093AEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, _08093AF0 @ =gSoundInfo
	adds r0, r4, #0
	bl sub_80945A0
	adds r0, r4, #0
	bl sub_8093F64
	adds r0, r4, #0
	bl sub_8094630
	adds r0, r4, #0
	bl sub_8094664
	adds r0, r4, #0
	bl sub_8093FDC
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08093AF4
	adds r0, r4, #0
	bl sub_8093DF4
	b _08093AFA
	.align 2, 0
_08093AEC: .4byte gCurTask
_08093AF0: .4byte gSoundInfo
_08093AF4:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x26]
_08093AFA:
	adds r0, r4, #0
	bl sub_8094604
	adds r0, r4, #0
	bl sub_80940B4
	ldr r2, _08093B28 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08093B2C
	ldr r0, [r4, #0x70]
	cmn r0, r1
	bgt _08093B2C
	ldr r1, [r4, #0xc]
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #5]
	b _08093B94
	.align 2, 0
_08093B28: .4byte gBgScrollRegs
_08093B2C:
	ldr r2, _08093B68 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x70]
	ldr r0, _08093B6C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08093BAC
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _08093B74
	movs r1, #0
	strb r1, [r4, #6]
	adds r0, r4, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r1, _08093B70 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	b _08093C44
	.align 2, 0
_08093B68: .4byte gBgScrollRegs
_08093B6C: .4byte gPressedKeys
_08093B70: .4byte gUnknown_080D7530
_08093B74:
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #6         @ MUS_OPTIONS_COPY
	bl m4aSongNumStart
	ldr r1, [r4, #0x14]
	movs r0, #0x7b
	strh r0, [r1]
	ldr r1, _08093BA0 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
_08093B94:
	ldr r0, _08093BA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093BA8 @ =sub_8093D30
	str r0, [r1, #8]
	b _08093D28
	.align 2, 0
_08093BA0: .4byte gUnknown_080D7530
_08093BA4: .4byte gCurTask
_08093BA8: .4byte sub_8093D30
_08093BAC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08093C44
	movs r0, #4
	ldrsh r5, [r2, r0]
	cmp r5, #0
	beq _08093BBE
	b _08093CCE
_08093BBE:
	bl m4aMPlayAllStop
	ldr r1, _08093C40 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	strh r5, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x26]
	str r5, [r4, #0x5c]
	str r5, [r4, #0x58]
	strh r5, [r4, #0x22]
	movs r1, #0
	adds r6, r4, #0
	adds r6, #0x1a
	adds r5, r4, #0
	adds r5, #0x28
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x70
_08093BEE:
	lsls r0, r1, #2
	adds r0, r5, r0
	str r2, [r0]
	lsls r0, r1, #6
	adds r0, r3, r0
	str r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08093BEE
	movs r1, #0
	ldr r5, _08093C40 @ =gUnknown_080D7530
	adds r2, r6, #0
	movs r3, #0
_08093C0C:
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08093C0C
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #6]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x12]
	b _08093D28
	.align 2, 0
_08093C40: .4byte gUnknown_080D7530
_08093C44:
	ldr r0, _08093C74 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08093CCE
	ldr r0, _08093C78 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08093CCE
	movs r5, #0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093C80
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0x7a
	bne _08093C7C
	strh r5, [r4, #0x18]
	b _08093C9A
	.align 2, 0
_08093C74: .4byte gBgScrollRegs
_08093C78: .4byte gRepeatedKeys
_08093C7C:
	adds r0, r1, #1
	b _08093C98
_08093C80:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093C9A
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08093C96
	movs r0, #0x7a
	b _08093C98
_08093C96:
	subs r0, r1, #1
_08093C98:
	strh r0, [r4, #0x18]
_08093C9A:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r4, #9]
	ldrb r1, [r4, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r5, r0
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x18]
	adds r1, #1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	subs r1, r1, r0
	strb r1, [r4, #7]
_08093CCE:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _08093D28
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _08093D24
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08093D24
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08093D28
	ldrh r0, [r4, #0x24]
	adds r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08093D28
	strh r1, [r4, #0x24]
	movs r0, #0
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r1, _08093D20 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	b _08093D28
	.align 2, 0
_08093D20: .4byte gUnknown_080D7530
_08093D24:
	movs r0, #0
	strh r0, [r4, #0x24]
_08093D28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8093D30
sub_8093D30: @ 0x08093D30
	push {r4, lr}
	ldr r0, _08093DA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80945A0
	adds r0, r4, #0
	bl sub_8093F64
	adds r0, r4, #0
	bl sub_8094630
	adds r0, r4, #0
	bl sub_8094664
	adds r0, r4, #0
	bl sub_8093FDC
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08093D68
	adds r0, r4, #0
	bl sub_8093DF4
_08093D68:
	adds r0, r4, #0
	bl sub_8094604
	adds r0, r4, #0
	bl sub_80940B4
	ldr r2, _08093DA8 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08093DD8
	ldr r0, [r4, #0x70]
	cmn r0, r1
	bgt _08093DD8
	ldr r3, _08093DAC @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08093DB4
	ldr r0, _08093DB0 @ =gUnknown_080D6C1C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl CopyObjPaletteMasked
	b _08093DCA
	.align 2, 0
_08093DA4: .4byte gCurTask
_08093DA8: .4byte gBgScrollRegs
_08093DAC: .4byte gFlags
_08093DB0: .4byte gUnknown_080D6C1C
_08093DB4:
	ldr r1, _08093DE0 @ =0x040000D4
	ldr r0, _08093DE4 @ =gUnknown_080D6C1C
	str r0, [r1]
	ldr r0, _08093DE8 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08093DEC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08093DCA:
	ldr r1, [r4, #0xc]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08093DF0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08093DD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093DE0: .4byte 0x040000D4
_08093DE4: .4byte gUnknown_080D6C1C
_08093DE8: .4byte gObjPalette
_08093DEC: .4byte 0x80000100
_08093DF0: .4byte gCurTask

	thumb_func_start sub_8093DF4
sub_8093DF4: @ 0x08093DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08093E5C @ =gSoundInfo
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov r0, sp
	movs r2, #8
	bl memset
	mov r1, sp
	ldr r0, _08093E60 @ =0x04000062
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	ldr r0, _08093E64 @ =0x04000072
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1, #4]
	ldr r0, _08093E68 @ =0x04000078
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1, #6]
	mov r3, r8
	strh r3, [r6, #0x22]
	mov r7, r8
	str r7, [r6, #0x58]
	movs r5, #0
	movs r0, #0x1a
	adds r0, r0, r6
	mov ip, r0
_08093E3E:
	lsls r2, r5, #1
	mov r1, ip
	adds r4, r1, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	mov r7, sp
	adds r3, r7, r2
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	cmp r1, #0
	blt _08093E6C
	ldrh r0, [r4]
	ldrh r1, [r3]
	b _08093E70
	.align 2, 0
_08093E5C: .4byte gSoundInfo
_08093E60: .4byte 0x04000062
_08093E64: .4byte 0x04000072
_08093E68: .4byte 0x04000078
_08093E6C:
	ldrh r0, [r3]
	ldrh r1, [r4]
_08093E70:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x22
	ldrsh r1, [r6, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08093E84
	strh r3, [r6, #0x22]
_08093E84:
	mov r3, ip
	adds r1, r3, r2
	mov r7, sp
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08093E3E
	movs r5, #0
	movs r0, #0x70
	add r0, sb
	mov ip, r0
	adds r7, r6, #0
	adds r7, #0x28
_08093EA6:
	lsls r0, r5, #6
	mov r1, ip
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r5, #2
	adds r3, r7, r0
	ldr r0, [r3]
	subs r2, r0, r1
	subs r1, r1, r0
	cmp r2, #0
	blt _08093EBE
	adds r1, r2, #0
_08093EBE:
	ldr r0, [r6, #0x58]
	cmp r0, r1
	bhs _08093EC6
	str r1, [r6, #0x58]
_08093EC6:
	ldr r0, [r4]
	str r0, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08093EA6
	ldr r0, [r6, #0x58]
	lsrs r3, r0, #7
	cmp r3, #0x20
	bls _08093EDE
	movs r3, #0x20
_08093EDE:
	ldrh r0, [r6, #0x22]
	lsls r0, r0, #0x13
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08093EEC
	movs r4, #0x20
_08093EEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	add r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08093F3E
	ldr r0, [r6, #0x5c]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	subs r0, r2, r1
	cmp r0, #0
	bge _08093F0C
	subs r0, r1, r2
_08093F0C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08093F1C
	lsls r0, r0, #0x12
	b _08093F1E
_08093F1C:
	lsls r0, r0, #0x11
_08093F1E:
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _08093F30
	movs r0, #0x30
	mov r8, r0
_08093F30:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r6, #0x5c]
_08093F3E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r0, r3, r0
	add r0, r8
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x80
	cmp r0, r1
	bls _08093F56
	strh r1, [r6, #0x26]
_08093F56:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8093F64
sub_8093F64: @ 0x08093F64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xa4
	ldr r2, _08093FD4 @ =gUnknown_080D7628
	ldrb r1, [r5, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldr r1, [r5, #0x60]
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x64]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xcc
	ldr r1, _08093FD8 @ =gUnknown_080D7658
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	ldrb r2, [r5, #6]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	ldrb r2, [r5, #6]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #0x60]
	adds r0, #0x50
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08093FD4: .4byte gUnknown_080D7628
_08093FD8: .4byte gUnknown_080D7658

	thumb_func_start sub_8093FDC
sub_8093FDC: @ 0x08093FDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	ldr r0, _08094048 @ =gUnknown_080D76F0
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x90
_08093FEE:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r5, r0
	adds r1, r5, #7
	adds r1, r1, r6
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	cmp r6, #0
	bne _0809404C
	ldr r1, [r7]
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0809402E
	adds r0, r1, #6
	strh r0, [r4, #0x10]
_0809402E:
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0809406C
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08094040
	ldrh r0, [r4, #0x10]
	subs r0, #6
	strh r0, [r4, #0x10]
_08094040:
	ldrh r0, [r4, #0x10]
	adds r0, #0xc
	strh r0, [r4, #0x10]
	b _0809406C
	.align 2, 0
_08094048: .4byte gUnknown_080D76F0
_0809404C:
	cmp r6, #1
	bne _0809407A
	ldr r1, [r7]
	subs r0, r1, #6
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _08094066
	strh r1, [r4, #0x10]
_08094066:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0809409E
_0809406C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0809409E
_0809407A:
	cmp r6, #2
	bne _0809409E
	ldr r0, [r7]
	subs r0, #0xc
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0809409E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0809409E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08093FEE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80940B4
sub_80940B4: @ 0x080940B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0xde
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r5, #0
	ldr r1, _08094108 @ =gBgScrollRegs
	mov r8, r1
	adds r6, r7, #0
	adds r6, #0x88
_080940CC:
	mov r1, r8
	ldrh r0, [r1, #4]
	rsbs r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x38
	strh r3, [r4, #0x10]
	ldrh r1, [r1, #6]
	rsbs r1, r1, #0
	adds r1, #0x5a
	strh r1, [r4, #0x12]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	cmp r5, #0
	beq _08094110
	ldr r0, [r4, #8]
	ldr r1, _0809410C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r2, #0
	adds r1, #0x68
	strh r1, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	b _08094122
	.align 2, 0
_08094108: .4byte gBgScrollRegs
_0809410C: .4byte 0xFFFFFBFF
_08094110:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r3, r0
	strh r0, [r4, #0x10]
_08094122:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080940CC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8094144
sub_8094144: @ 0x08094144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, #0xf4
	adds r5, r7, #0
	adds r5, #0xa0
	ldr r1, [r5]
	str r1, [r0]
	ldr r3, _08094388 @ =gUnknown_080D76C0
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r5]
	adds r1, r1, r2
	str r1, [r5]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r2, #0
	mov sb, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x68]
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x6c]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	mov r8, r3
	mov r6, r8
	strb r6, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xa4
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, _0809438C @ =gUnknown_080D7628
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, r8
	strb r3, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, _08094390 @ =gUnknown_080D7658
	ldrb r1, [r7, #4]
	lsls r1, r1, #1
	ldrb r3, [r7, #6]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #1
	ldrb r3, [r7, #6]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	adds r1, #0x40
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _08094394 @ =gUnknown_080D76F0
	movs r6, #0
	ldrb r0, [r2, #2]
	mov r3, sp
	strb r0, [r3, #4]
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	str r0, [sp]
	mov r8, r5
_08094268:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	ldr r3, [sp]
	adds r1, r1, r3
	str r1, [r5]
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0, #0x1a]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r3
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	str r6, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r0, #0x20]
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #8]
	cmp r4, #2
	bls _08094268
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	ldr r3, _08094398 @ =gUnknown_080D76B8
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	mov r4, r8
	ldr r1, [r4]
	adds r1, r1, r2
	str r1, [r4]
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r6, sb
	orrs r1, r6
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x84
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sl
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r3, #0xde
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r6, r8
	ldr r1, [r6]
	str r1, [r0]
	ldr r3, _0809439C @ =gUnknown_080D7740
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6]
	adds r1, r1, r2
	str r1, [r6]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, sb
	orrs r1, r2
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x88
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r4, sl
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094388: .4byte gUnknown_080D76C0
_0809438C: .4byte gUnknown_080D7628
_08094390: .4byte gUnknown_080D7658
_08094394: .4byte gUnknown_080D76F0
_08094398: .4byte gUnknown_080D76B8
_0809439C: .4byte gUnknown_080D7740

	thumb_func_start Task_SoundTestUI_Init
Task_SoundTestUI_Init: @ 0x080943A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08094430 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r4, [r5, #4]
	adds r0, r4, #0
	adds r0, #8
	cmp r4, r0
	bge _0809440E
	ldr r7, _08094434 @ =gUnknown_080D8A84
	movs r6, #0
	ldrb r0, [r7, #2]
	mov r8, r0
_080943C4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r0, r5, r0
	ldr r1, [r5, #0x18]
	str r1, [r0]
	ldr r1, [r5, #0x18]
	adds r1, #0x80
	str r1, [r5, #0x18]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #9
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #4]
	adds r0, #8
	cmp r4, r0
	blt _080943C4
_0809440E:
	ldrb r0, [r5, #4]
	adds r0, #8
	cmp r0, #0x17
	ble _0809447C
	ldr r3, _08094438 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08094440
	ldr r0, _0809443C @ =gUnknown_080D8A8C
	movs r1, #0xf0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _08094456
	.align 2, 0
_08094430: .4byte gCurTask
_08094434: .4byte gUnknown_080D8A84
_08094438: .4byte gFlags
_0809443C: .4byte gUnknown_080D8A8C
_08094440:
	ldr r1, _08094464 @ =0x040000D4
	ldr r0, _08094468 @ =gUnknown_080D8A8C
	str r0, [r1]
	ldr r0, _0809446C @ =gObjPalette + 0x1E0
	str r0, [r1, #4]
	ldr r0, _08094470 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08094456:
	movs r0, #0
	strb r0, [r5, #4]
	ldr r0, _08094474 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08094478 @ =sub_80946F0
	str r0, [r1, #8]
	b _0809447E
	.align 2, 0
_08094464: .4byte 0x040000D4
_08094468: .4byte gUnknown_080D8A8C
_0809446C: .4byte gObjPalette + 0x1E0
_08094470: .4byte 0x80000010
_08094474: .4byte gCurTask
_08094478: .4byte sub_80946F0
_0809447C:
	strb r0, [r5, #4]
_0809447E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start SoundTest_DrawSongName
SoundTest_DrawSongName: @ 0x08094488
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r3, _0809453C @ =sSongNames
	ldr r2, [r6, #8]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3     @ r0 = &sSongNames[i]
	ldrb r0, [r0]       @ r0 = sSongNames[i].strlen
	cmp r5, r0
	bhs _08094530
	mov sb, r3
	movs r1, #1
	add r1, sb
	mov r8, r1
	ldr r7, _08094540 @ =gUnknown_080D8A84
_080944B4:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _08094516
	ldrh r0, [r7]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #8]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	ldrb r1, [r7, #2]
	adds r0, r0, r1
	subs r0, #0x20
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, _08094544 @ =gBgScrollRegs
	ldrh r1, [r0, #4]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r1
	lsls r1, r5, #3
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08094516:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [r6, #8]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blo _080944B4
_08094530:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809453C: .4byte sSongNames
_08094540: .4byte gUnknown_080D8A84
_08094544: .4byte gBgScrollRegs

	thumb_func_start Task_SoundTest
Task_SoundTest: @ 0x08094548
	push {r4, r5, r6, lr}
	ldr r6, _0809458C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _08094590 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r0, #0x1e
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08094584
	ldr r3, _08094594 @ =0x03000018
	adds r0, r4, r3
	ldr r1, [r5, #0xc]
	adds r3, #0x88
	adds r2, r4, r3
	ldr r2, [r2]
	bl CreateSoundTestUI
	ldr r2, _08094598 @ =0x0300024C
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	str r0, [r5]
	ldr r1, [r6]
	ldr r0, _0809459C @ =sub_8093AB0
	str r0, [r1, #8]
_08094584:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809458C: .4byte gCurTask
_08094590: .4byte gBgScrollRegs
_08094594: .4byte 0x03000018
_08094598: .4byte 0x0300024C
_0809459C: .4byte sub_8093AB0

	thumb_func_start sub_80945A0
sub_80945A0: @ 0x080945A0
	push {r4, lr}
	ldr r3, _08094600 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r2, [r3, r1]
	movs r1, #0x18
	subs r1, r1, r2
	str r1, [r0, #0x60]
	movs r4, #6
	ldrsh r2, [r3, r4]
	movs r1, #0x87
	subs r1, r1, r2
	str r1, [r0, #0x64]
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r2, #0x19
	subs r1, r2, r1
	str r1, [r0, #0x68]
	movs r4, #6
	ldrsh r1, [r3, r4]
	subs r2, r2, r1
	str r2, [r0, #0x6c]
	movs r2, #4
	ldrsh r1, [r3, r2]
	rsbs r1, r1, #0
	adds r1, #0x50
	str r1, [r0, #0x78]
	movs r4, #6
	ldrsh r1, [r3, r4]
	rsbs r1, r1, #0
	adds r1, #0x5c
	str r1, [r0, #0x7c]
	adds r2, r0, #0
	adds r2, #0x90
	movs r4, #4
	ldrsh r1, [r3, r4]
	rsbs r1, r1, #0
	adds r1, #0x50
	str r1, [r2]
	adds r0, #0x94
	movs r2, #6
	ldrsh r1, [r3, r2]
	rsbs r1, r1, #0
	adds r1, #0x5c
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094600: .4byte gBgScrollRegs

	thumb_func_start sub_8094604
sub_8094604: @ 0x08094604
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, [r2]
	ldr r3, _0809462C @ =0x000009FF
	cmp r0, r3
	bgt _08094620
	adds r0, #0x60
	str r0, [r2]
	cmp r0, r3
	ble _08094620
	movs r0, #0
	str r0, [r2]
_08094620:
	adds r1, #0x8c
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0809462C: .4byte 0x000009FF

	thumb_func_start sub_8094630
sub_8094630: @ 0x08094630
	push {lr}
	adds r2, r0, #0
	adds r2, #0xf4
	ldr r3, _08094660 @ =gUnknown_080D76C0
	ldrb r1, [r0, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x68]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x6c]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08094660: .4byte gUnknown_080D76C0

	thumb_func_start sub_8094664
sub_8094664: @ 0x08094664
	push {lr}
	sub sp, #0x10
	movs r1, #0x26
	ldrsh r2, [r0, r1]
	movs r1, #0x40
	str r1, [sp]
	ldr r1, [r0, #0x78]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08094694 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08094694: .4byte gBgAffineRegs
    
	thumb_func_start TaskDestructor_SoundTest
TaskDestructor_SoundTest: @ 0x08094698
	bx lr
	.align 2, 0

	thumb_func_start CreateSoundTestUI
CreateSoundTestUI: @ 0x0809469C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _080946E4 @ =Task_SoundTestUI_Init
	movs r1, #0xf7
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080946E8 @ =TaskDestructor_SoundTestUI
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #8]
	movs r2, #0
	strb r2, [r1, #4]
	strh r2, [r1, #0xc]
	movs r2, #0x8c
	lsls r2, r2, #6
	str r2, [r1, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #6
	str r2, [r1, #0x14]
	str r6, [r1, #0x18]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080946E4: .4byte Task_SoundTestUI_Init
_080946E8: .4byte TaskDestructor_SoundTestUI

	thumb_func_start TaskDestructor_SoundTestUI
TaskDestructor_SoundTestUI: @ 0x080946EC
	bx lr
	.align 2, 0

	thumb_func_start sub_80946F0
sub_80946F0: @ 0x080946F0
	push {r4, lr}
	ldr r0, _08094720 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08094724 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08094728
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl SoundTest_DrawSongName
	adds r0, r4, #0
	bl sub_809473C
	b _08094734
	.align 2, 0
_08094720: .4byte gCurTask
_08094724: .4byte gBgScrollRegs
_08094728:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08094734
	adds r0, r2, #0
	bl TaskDestroy
_08094734:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809473C
sub_809473C: @ 0x0809473C
	bx lr
	.align 2, 0
