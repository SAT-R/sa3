.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start ProcessVramGraphicsCopyQueue
ProcessVramGraphicsCopyQueue: @ 0x080BC9DC
	push {r4, r5, r6, r7, lr}
	ldr r2, _080BCA28 @ =gVramGraphicsCopyCursor
	ldr r0, _080BCA2C @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r2]
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	beq _080BCA8A
	adds r6, r2, #0
_080BC9EE:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080BCA30 @ =gVramGraphicsCopyQueue
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080BCA66
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r3, _080BCA34 @ =0x040000D4
_080BCA08:
	cmp r0, r5
	bls _080BCA40
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _080BCA38 @ =0x80000200
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _080BCA3C @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r2, #8]
	adds r0, r0, r1
	b _080BCA5C
	.align 2, 0
_080BCA28: .4byte gVramGraphicsCopyCursor
_080BCA2C: .4byte gVramGraphicsCopyQueueIndex
_080BCA30: .4byte gVramGraphicsCopyQueue
_080BCA34: .4byte 0x040000D4
_080BCA38: .4byte 0x80000200
_080BCA3C: .4byte 0xFFFFFC00
_080BCA40:
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0
_080BCA5C:
	strh r0, [r2, #8]
	adds r4, r4, r5
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _080BCA08
_080BCA66:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x1f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _080BCA80 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BCA84
	movs r0, #0
	b _080BCA8C
	.align 2, 0
_080BCA80: .4byte 0x04000004
_080BCA84:
	ldrb r0, [r7]
	cmp r2, r0
	bne _080BC9EE
_080BCA8A:
	movs r0, #1
_080BCA8C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start GetInput
GetInput: @ 0x080BCA94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _080BCAC8 @ =gRepeatedKeysTestCounter
	ldr r0, _080BCACC @ =gKeysFirstRepeatIntervals
	mov sb, r0
	ldr r1, _080BCAD0 @ =gKeysContinuedRepeatIntervals
	mov r8, r1
	ldr r4, _080BCAD4 @ =gInput
	ldr r0, _080BCAD8 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _080BCADC @ =0x000003FF
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4]
	ldr r1, _080BCAE0 @ =gPhysicalInput
	strh r0, [r1]
	ldr r0, _080BCAE4 @ =gInputRecorder
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _080BCAE8
	ldrh r0, [r4]
	bl InputRecorderWrite
	b _080BCAF2
	.align 2, 0
_080BCAC8: .4byte gRepeatedKeysTestCounter
_080BCACC: .4byte gKeysFirstRepeatIntervals
_080BCAD0: .4byte gKeysContinuedRepeatIntervals
_080BCAD4: .4byte gInput
_080BCAD8: .4byte 0x04000130
_080BCADC: .4byte 0x000003FF
_080BCAE0: .4byte gPhysicalInput
_080BCAE4: .4byte gInputRecorder
_080BCAE8:
	cmp r0, #2
	bne _080BCAF2
	bl InputRecorderRead
	strh r0, [r4]
_080BCAF2:
	ldr r2, _080BCB38 @ =gPressedKeys
	ldr r6, _080BCB3C @ =gInput
	ldr r5, _080BCB40 @ =gPrevInput
	ldrh r3, [r6]
	ldrh r4, [r5]
	adds r0, r3, #0
	eors r0, r4
	adds r1, r0, #0
	ands r1, r3
	strh r1, [r2]
	ldr r2, _080BCB44 @ =gReleasedKeys
	ands r0, r4
	strh r0, [r2]
	strh r3, [r5]
	ldr r0, _080BCB48 @ =gRepeatedKeys
	strh r1, [r0]
	movs r1, #0
	mov ip, r6
	movs r6, #1
	adds r5, r0, #0
_080BCB1A:
	mov r3, ip
	ldrh r0, [r3]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r6
	adds r4, r1, #0
	cmp r0, #0
	bne _080BCB4C
	adds r0, r7, r2
	mov r3, sb
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _080BCB6A
	.align 2, 0
_080BCB38: .4byte gPressedKeys
_080BCB3C: .4byte gInput
_080BCB40: .4byte gPrevInput
_080BCB44: .4byte gReleasedKeys
_080BCB48: .4byte gRepeatedKeys
_080BCB4C:
	adds r3, r7, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BCB58
	subs r0, #1
	b _080BCB68
_080BCB58:
	adds r0, r6, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
_080BCB68:
	strb r0, [r3]
_080BCB6A:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r4, r2
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080BCB1A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    @ Not in SA2 ?
	thumb_func_start sub_80BCB84
sub_80BCB84: @ 0x080BCB84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r1, _080BCC4C @ =gFlagsPreVBlank
	ldr r0, [r1]
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r2, _080BCC4C @ =gFlagsPreVBlank
	str r0, [r2]
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	strh r0, [r1]
	add r0, sp, #8
	mov sl, r0
	ldr r1, _080BCC50 @ =0x04000004
	mov sb, r1
	ldrh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	movs r0, #0x80
	subs r1, #4
	strh r0, [r1]
	ldr r1, _080BCC54 @ =0x04000132
	ldr r2, _080BCC58 @ =0x00008304
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080BCC5C @ =0x04000208
	movs r6, #0
	strh r6, [r5]
	mov r0, sb
	strh r6, [r0]
	mov r7, sp
	adds r7, #2
	ldr r4, _080BCC60 @ =0x04000200
	ldrh r0, [r4]
	strh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	strh r0, [r5]
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	strh r6, [r5]
	ldrh r0, [r7]
	strh r0, [r4]
	mov r1, r8
	strh r1, [r5]
	mov r2, sl
	ldrh r0, [r2]
	mov r1, sb
	strh r0, [r1]
	bl VBlankIntrWait
	mov r0, sp
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	strh r0, [r2]
	ldr r0, [sp, #4]
	ldr r1, _080BCC4C @ =gFlagsPreVBlank
	str r0, [r1]
	ldr r2, _080BCC64 @ =gFlags
	ldr r0, [r2]
	ldr r1, _080BCC68 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BCC4C: .4byte gFlagsPreVBlank
_080BCC50: .4byte 0x04000004
_080BCC54: .4byte 0x04000132
_080BCC58: .4byte 0x00008304
_080BCC5C: .4byte 0x04000208
_080BCC60: .4byte 0x04000200
_080BCC64: .4byte gFlags
_080BCC68: .4byte 0xFFFBFFFF

	thumb_func_start HBlankIntr
HBlankIntr: @ 0x080BCC6C
	push {r4, r5, r6, lr}
	ldr r0, _080BCCAC @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _080BCC9E
	movs r4, #0
	ldr r0, _080BCCB0 @ =gNumHBlankIntrs
	ldrb r0, [r0]
	cmp r4, r0
	bhs _080BCC9E
	ldr r6, _080BCCB4 @ =gHBlankIntrs
_080BCC84:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080BCCB0 @ =gNumHBlankIntrs
	ldrb r0, [r0]
	cmp r4, r0
	blo _080BCC84
_080BCC9E:
	ldr r1, _080BCCB8 @ =REG_IF
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BCCAC: .4byte 0x04000006
_080BCCB0: .4byte gNumHBlankIntrs
_080BCCB4: .4byte gHBlankIntrs
_080BCCB8: .4byte REG_IF

	thumb_func_start VCountIntr
VCountIntr: @ 0x080BCCBC
	ldr r1, _080BCCC4 @ =REG_IF
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCC4: .4byte REG_IF

	thumb_func_start Dma0Intr
Dma0Intr: @ 0x080BCCC8
	ldr r1, _080BCCD4 @ =REG_IF
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCD4: .4byte REG_IF

	thumb_func_start Dma1Intr
Dma1Intr: @ 0x080BCCD8
	ldr r1, _080BCCE4 @ =REG_IF
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCE4: .4byte REG_IF

	thumb_func_start Dma2Intr
Dma2Intr: @ 0x080BCCE8
	ldr r1, _080BCCF4 @ =REG_IF
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCF4: .4byte REG_IF

	thumb_func_start Dma3Intr
Dma3Intr: @ 0x080BCCF8
	ldr r1, _080BCD04 @ =REG_IF
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD04: .4byte REG_IF

	thumb_func_start Timer0Intr
Timer0Intr: @ 0x080BCD08
	ldr r1, _080BCD10 @ =REG_IF
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD10: .4byte REG_IF

	thumb_func_start Timer1Intr
Timer1Intr: @ 0x080BCD14
	ldr r1, _080BCD1C @ =REG_IF
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD1C: .4byte REG_IF

	thumb_func_start Timer2Intr
Timer2Intr: @ 0x080BCD20
	ldr r1, _080BCD28 @ =REG_IF
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD28: .4byte REG_IF

@ Unused - Not in SA2!
	thumb_func_start sub_80BCD2C
sub_80BCD2C: @ 0x080BCD2C
	ldr r1, _080BCD34 @ =REG_IF
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD34: .4byte REG_IF

	thumb_func_start KeypadIntr
KeypadIntr: @ 0x080BCD38
	ldr r1, _080BCD44 @ =REG_IF
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD44: .4byte REG_IF

	thumb_func_start GamepakIntr
GamepakIntr: @ 0x080BCD48
	ldr r1, _080BCD54 @ =REG_IF
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD54: .4byte REG_IF

    thumb_func_start DummyFunc
DummyFunc:
	bx	lr
	.align 2, 0

	thumb_func_start ClearOamBufferCpuSet
ClearOamBufferCpuSet: @ 0x080BCD5C
	push {r4, lr}
	sub sp, #4
	ldr r1, _080BCD94 @ =gNumHBlankCallbacks
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080BCD98 @ =gFlags
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _080BCDB4
	ldr r1, _080BCD9C @ =gBgOffsetsHBlankPrimary
	ldr r0, [r1]
	ldr r2, _080BCDA0 @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _080BCDA8
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _080BCDA4 @ =gBgOffsetsHBlankSecondary
	str r2, [r0]
	b _080BCDB4
	.align 2, 0
_080BCD94: .4byte gNumHBlankCallbacks
_080BCD98: .4byte gFlags
_080BCD9C: .4byte gBgOffsetsHBlankPrimary
_080BCDA0: .4byte gBgOffsetsBuffer
_080BCDA4: .4byte gBgOffsetsHBlankSecondary
_080BCDA8:
	str r2, [r1]
	ldr r1, _080BCDE8 @ =gBgOffsetsHBlankSecondary
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_080BCDB4:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	ldr r1, _080BCDEC @ =gOamBuffer
	ldr r2, _080BCDF0 @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	ldr r1, _080BCDF4 @ =gNumVBlankCallbacks
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCDE8: .4byte gBgOffsetsHBlankSecondary
_080BCDEC: .4byte gOamBuffer
_080BCDF0: .4byte 0x01000100
_080BCDF4: .4byte gNumVBlankCallbacks

@ End of core.c (src/core.c)
