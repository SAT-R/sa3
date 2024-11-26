.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_Spikes7
Task_Spikes7: @ 0x0803072C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08030784 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _08030788 @ =0x0300000C
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r3, [r2]
	ldr r1, _0803078C @ =0x03000034
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r1, #0
_08030776:
	lsls r0, r1, #0x10
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _08030794
	ldr r0, _08030790 @ =gStageData
	ldrb r1, [r0, #6]
	b _0803079E
	.align 2, 0
_08030784: .4byte gCurTask
_08030788: .4byte 0x0300000C
_0803078C: .4byte 0x03000034
_08030790: .4byte gStageData
_08030794:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803079E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080307E0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080307C4
	cmp r1, #8
	beq _080307C4
	cmp r1, #0x10
	beq _080307C4
	b _0803098C
_080307C4:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _080307D0
	b _0803098C
_080307D0:
	ldr r2, [sp, #0x14]
	cmp r2, #1
	beq _08030804
	cmp r2, #1
	bgt _080307E4
	cmp r2, #0
	beq _080307F0
	b _08030826
	.align 2, 0
_080307E0: .4byte gPlayers
_080307E4:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	beq _08030818
	cmp r0, #3
	beq _08030820
	b _08030826
_080307F0:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _08030826
	movs r1, #0x80
	lsls r1, r1, #0xa
	b _08030824
_08030804:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0xa
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _08030826
	b _08030824
_08030818:
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #0x10]
	b _08030826
_08030820:
	movs r1, #0x80
	lsls r1, r1, #0xb
_08030824:
	str r1, [sp, #0x10]
_08030826:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	movs r2, #0
	str r2, [sp]
	ldr r0, [sp, #4]
	mov r1, sl
	mov r2, sb
	adds r3, r5, #0
	bl sub_8020950
	adds r7, r0, #0
	cmp r7, #0
	bne _0803084E
	b _0803098C
_0803084E:
	mov r8, r7
	mov r0, r8
	ldr r1, [sp, #0x10]
	ands r0, r1
	mov r8, r0
	cmp r0, #0
	beq _080308E6
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0803089A
	ldr r4, [sp, #4]
	adds r4, #0x24
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r6, [sp, #4]
	adds r6, #0x26
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	movs r2, #0
	str r2, [sp]
	ldr r0, [sp, #4]
	mov r1, sl
	mov r2, sb
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _0803089C
_0803089A:
	adds r1, r7, #0
_0803089C:
	adds r0, r1, #0
	ldr r2, [sp, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080308E6
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080308D8
	adds r0, r5, #0
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080308D8
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _080308E6
	adds r0, r5, #0
	bl Player_8014550
	adds r0, r5, #0
	movs r1, #0x9a
	bl Player_PlaySong
	b _080308E6
_080308D8:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	movs r0, #0
	strh r0, [r5, #0x1a]
_080308E6:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r7
	cmp r0, #0
	beq _08030950
	movs r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	adds r2, r1, r0
	str r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r7
	cmp r0, #0
	beq _08030928
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08030928
	ldr r1, _08030924 @ =0xFFFFFF00
	adds r0, r2, r1
	b _08030944
	.align 2, 0
_08030924: .4byte 0xFFFFFF00
_08030928:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r7
	cmp r0, #0
	beq _0803098C
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803098C
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_08030944:
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
	b _0803098C
_08030950:
	mov r0, r8
	cmp r0, #0
	bne _0803098C
	lsls r0, r7, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	adds r2, r1, r0
	str r2, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r7
	cmp r0, #0
	beq _0803098C
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08030980
	ldr r1, _0803097C @ =0xFFFFFF00
	b _08030984
	.align 2, 0
_0803097C: .4byte 0xFFFFFF00
_08030980:
	movs r1, #0x80
	lsls r1, r1, #1
_08030984:
	adds r0, r2, r1
	str r0, [r5, #0x14]
	movs r0, #0
	strh r0, [r5, #0x1a]
_0803098C:
	ldr r2, [sp, #0x18]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803099E
	b _08030776
_0803099E:
	bl sub_8030DEC
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_Spikes_4_6
Task_Spikes_4_6: @ 0x080309B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08030A28 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08030A2C @ =0x0300000C
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r5, [r4]
	ldr r2, _08030A30 @ =0x03000034
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, _08030A34 @ =gStageData
	ldr r7, [r0, #0x1c]
	movs r0, #0x7f
	ands r7, r0
	bl sub_8030F70
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r0, r7, #0
	subs r0, #0x40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08030A86
	movs r1, #0
	ldr r2, _08030A38 @ =gPlayers
_08030A18:
	lsls r0, r1, #0x10
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _08030A3C
	ldr r0, _08030A34 @ =gStageData
	ldrb r1, [r0, #6]
	b _08030A46
	.align 2, 0
_08030A28: .4byte gCurTask
_08030A2C: .4byte 0x0300000C
_08030A30: .4byte 0x03000034
_08030A34: .4byte gStageData
_08030A38: .4byte gPlayers
_08030A3C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08030A46:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08030A74
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #4]
	cmp r0, r3
	bne _08030A74
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r6, #4]
	movs r0, #0
	str r0, [r6, #0x6c]
_08030A74:
	ldr r4, [sp, #0x18]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08030A18
	b _08030D20
_08030A86:
	mov r2, r8
	cmp r2, #4
	beq _08030A92
	cmp r2, #5
	beq _08030A9A
	b _08030AA0
_08030A92:
	movs r3, #0x80
	lsls r3, r3, #9
	str r3, [sp, #0x10]
	b _08030AA0
_08030A9A:
	movs r4, #0x80
	lsls r4, r4, #0xa
	str r4, [sp, #0x10]
_08030AA0:
	movs r1, #0
	adds r0, r7, #0
	subs r0, #0x3c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
_08030AAC:
	ldr r2, _08030AD8 @ =gStageData
	ldrb r0, [r2, #3]
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	cmp r0, #7
	bne _08030ABE
	cmp r1, #0
	beq _08030ABE
	b _08030D0E
_08030ABE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _08030AE0
	ldrb r0, [r2, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08030ADC @ =gPlayers
	adds r6, r1, r0
	b _08030AF8
	.align 2, 0
_08030AD8: .4byte gStageData
_08030ADC: .4byte gPlayers
_08030AE0:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08030BCC @ =gPlayers
	adds r6, r0, r1
_08030AF8:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08030B10
	cmp r1, #8
	beq _08030B10
	cmp r1, #0x10
	beq _08030B10
	b _08030D0E
_08030B10:
	adds r0, r6, #0
	bl sub_802C0D4
	mov r8, r0
	cmp r0, #0
	beq _08030B1E
	b _08030D0E
_08030B1E:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r3, r8
	str r3, [sp]
	ldr r0, [sp, #4]
	mov r1, sl
	mov r2, sb
	adds r3, r6, #0
	bl sub_8020950
	adds r7, r0, #0
	cmp r7, #0
	bne _08030B46
	b _08030D0E
_08030B46:
	ldr r4, [sp, #0x10]
	ands r0, r4
	cmp r0, #0
	bne _08030B54
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _08030BDE
_08030B54:
	ldr r4, [sp, #4]
	adds r4, #0x24
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r5, [sp, #4]
	adds r5, #0x26
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	mov r1, r8
	str r1, [sp]
	ldr r0, [sp, #4]
	mov r1, sl
	mov r2, sb
	adds r3, r6, #0
	bl sub_8020950
	adds r7, r0, #0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r0, r7, #0
	ldr r2, [sp, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08030B9A
	cmp r7, #0
	beq _08030BDE
	ldr r3, [sp, #0x14]
	cmp r3, #4
	bhi _08030BDE
_08030B9A:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _08030BD0
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08030BD0
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08030BDE
	adds r0, r6, #0
	bl Player_8014550
	adds r0, r6, #0
	movs r1, #0x9a
	bl Player_PlaySong
	b _08030BDE
	.align 2, 0
_08030BCC: .4byte gPlayers
_08030BD0:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	str r1, [r6, #0x14]
	movs r0, #0
	strh r0, [r6, #0x1a]
_08030BDE:
	adds r0, r6, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	beq _08030BEC
	b _08030D0E
_08030BEC:
	ldr r2, [sp, #0x14]
	cmp r2, #4
	bhi _08030C70
	movs r0, #0x80
	lsls r0, r0, #0xa
	ldr r4, [sp, #0x10]
	cmp r4, r0
	beq _08030C40
	ldr r1, [r6, #4]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08030C16
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	str r1, [r6, #4]
	ldr r0, [sp, #4]
	str r0, [r6, #0x6c]
_08030C16:
	ldr r0, _08030C3C @ =gCamera
	ldr r2, [sp, #4]
	movs r4, #0x12
	ldrsh r1, [r2, r4]
	ldr r0, [r0, #4]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08030C64
	.align 2, 0
_08030C3C: .4byte gCamera
_08030C40:
	ldr r0, _08030C6C @ =gCamera
	ldr r2, [sp, #4]
	movs r4, #0x12
	ldrsh r1, [r2, r4]
	ldr r0, [r0, #4]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08030C64:
	lsls r0, r0, #8
	str r0, [r6, #0x14]
	strh r3, [r6, #0x1a]
	b _08030D0E
	.align 2, 0
_08030C6C: .4byte gCamera
_08030C70:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r7
	cmp r0, #0
	beq _08030CD8
	strh r3, [r6, #0x18]
	strh r3, [r6, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r7
	cmp r0, #0
	beq _08030CB0
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08030CB0
	ldr r1, _08030CAC @ =0xFFFFFF00
	adds r0, r2, r1
	b _08030CCC
	.align 2, 0
_08030CAC: .4byte 0xFFFFFF00
_08030CB0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r7
	cmp r0, #0
	beq _08030D0E
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08030D0E
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_08030CCC:
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _08030D0E
_08030CD8:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	str r1, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r7
	cmp r0, #0
	beq _08030CF8
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08030D0A
_08030CF8:
	movs r1, #0x80
	lsls r1, r1, #9
	ands r7, r1
	cmp r7, #0
	beq _08030D0E
	ldr r0, [r6, #4]
	ands r0, r1
	cmp r0, #0
	beq _08030D0E
_08030D0A:
	movs r0, #0
	strh r0, [r6, #0x1a]
_08030D0E:
	ldr r3, [sp, #0x18]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08030D20
	b _08030AAC
_08030D20:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8030D30
sub_8030D30: @ 0x08030D30
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r2, _08030D84 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08030DA8
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bgt _08030D8C
	ldrb r0, [r2, #9]
	ldr r2, _08030D88 @ =0x00000365
	adds r1, r2, #0
	cmp r0, #3
	bne _08030D7E
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r1, r0, #0
_08030D7E:
	strh r1, [r4, #0xc]
	strb r3, [r4, #0x1a]
	b _08030DB4
	.align 2, 0
_08030D84: .4byte gStageData
_08030D88: .4byte 0x00000365
_08030D8C:
	ldrb r0, [r2, #9]
	ldr r2, _08030DA4 @ =0x00000365
	adds r1, r2, #0
	cmp r0, #3
	bne _08030D9C
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r1, r0, #0
_08030D9C:
	strh r1, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	b _08030DB4
	.align 2, 0
_08030DA4: .4byte 0x00000365
_08030DA8:
	ldr r0, _08030DE8 @ =0x00000365
	strh r0, [r4, #0xc]
	strb r3, [r4, #0x1a]
	movs r6, #0x80
	lsls r6, r6, #2
	lsls r5, r5, #0x10
_08030DB4:
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r1, r6
	str r1, [r4, #8]
	asrs r2, r5, #0x10
	movs r0, #3
	ands r0, r2
	cmp r0, #1
	bne _08030DCE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r4, #8]
_08030DCE:
	cmp r2, #2
	bne _08030DDC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08030DDC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030DE8: .4byte 0x00000365

	thumb_func_start sub_8030DEC
sub_8030DEC: @ 0x08030DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08030E50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08030E54 @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r3, r8
	ldrb r2, [r3, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08030E9C
	movs r1, #0
	ldr r6, _08030E58 @ =gPlayers
_08030E3A:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08030E5C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08030E60
	.align 2, 0
_08030E50: .4byte gCurTask
_08030E54: .4byte 0x0300000C
_08030E58: .4byte gPlayers
_08030E5C:
	ldr r0, _08030E94 @ =gStageData
	ldrb r1, [r0, #6]
_08030E60:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08030E3A
	mov r3, r8
	ldrb r0, [r3, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08030E98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08030EB6
	.align 2, 0
_08030E94: .4byte gStageData
_08030E98: .4byte gCurTask
_08030E9C:
	ldr r0, _08030EC4 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08030EB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030EC4: .4byte gCamera

	thumb_func_start sub_8030EC8
sub_8030EC8: @ 0x08030EC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _08030F24 @ =gStageData
	ldr r6, [r4, #0x1c]
	movs r0, #0x7f
	ands r6, r0
	adds r7, r6, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	ldrb r0, [r4, #9]
	ldr r3, _08030F28 @ =0x00000365
	adds r1, r3, #0
	cmp r0, #3
	bne _08030F14
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r1, r0, #0
_08030F14:
	strh r1, [r5, #0xc]
	cmp r6, #0x3d
	bls _08030F40
	cmp r6, #0x3f
	bhi _08030F2C
	movs r0, #2
	b _08030F42
	.align 2, 0
_08030F24: .4byte gStageData
_08030F28: .4byte 0x00000365
_08030F2C:
	cmp r6, #0x7b
	bhi _08030F34
	strb r2, [r5, #0x1a]
	b _08030F44
_08030F34:
	cmp r6, #0x7d
	bhi _08030F3C
	movs r0, #2
	b _08030F42
_08030F3C:
	cmp r7, #0x7f
	bhi _08030F44
_08030F40:
	movs r0, #1
_08030F42:
	strb r0, [r5, #0x1a]
_08030F44:
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r5, #8]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08030F60
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r2
	str r0, [r5, #8]
_08030F60:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8030F70
sub_8030F70: @ 0x08030F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08030FD0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r4, _08030FD4 @ =0x0300000C
	add r4, r8
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08030FD8
	ldrb r0, [r5, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08031052
	.align 2, 0
_08030FD0: .4byte gCurTask
_08030FD4: .4byte 0x0300000C
_08030FD8:
	ldr r1, _0803100C @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	ldr r0, _08031010 @ =0x03000034
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #3
	bls _08031046
	ldr r0, _08031014 @ =gStageData
	ldr r1, [r0, #0x1c]
	movs r0, #0x7f
	ands r1, r0
	cmp r1, #0x3b
	bhi _08031018
	movs r0, #1
	strb r0, [r4, #0x1a]
	subs r0, #2
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08031052
	.align 2, 0
_0803100C: .4byte gCamera
_08031010: .4byte 0x03000034
_08031014: .4byte gStageData
_08031018:
	cmp r1, #0x3c
	beq _08031020
	cmp r1, #0x7e
	bne _08031028
_08031020:
	movs r0, #1
	strb r0, [r4, #0x1a]
	subs r0, #2
	b _08031044
_08031028:
	cmp r1, #0x3e
	beq _08031030
	cmp r1, #0x7c
	bne _08031038
_08031030:
	movs r0, #2
	strb r0, [r4, #0x1a]
	subs r0, #3
	b _08031044
_08031038:
	cmp r1, #0x40
	bne _08031046
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
_08031044:
	str r0, [r4, #0x20]
_08031046:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08031052:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Up
CreateEntity_Spikes_Up: @ 0x08031060
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Down
CreateEntity_Spikes_Down: @ 0x0803108C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Left
CreateEntity_Spikes_Left: @ 0x080310B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Right
CreateEntity_Spikes_Right: @ 0x080310E4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_HidingUp
CreateEntity_Spikes_HidingUp: @ 0x08031110
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_HidingDown
CreateEntity_Spikes_HidingDown: @ 0x0803113C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Spikes
TaskDestructor_Spikes: @ 0x08031168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
