.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_OptionsInit
Task_OptionsInit: @ 0x0808B5B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _0808B638 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r1, _0808B63C @ =0x030000AC
	adds r0, r4, r1
	ldr r3, _0808B640 @ =gBgCntRegs
	movs r5, #0
	movs r2, #0
	ldr r1, _0808B644 @ =0x00001C8D
	strh r1, [r3, #4]
	ldr r1, _0808B648 @ =0x0600C000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0808B64C @ =0x0600E000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xb3
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _0808B650 @ =0x030000D6
	adds r4, r4, r1
	strb r5, [r4]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x40
	str r0, [sp]
	ldr r0, _0808B654 @ =0x00002150
	str r0, [sp, #4]
	ldr r0, _0808B658 @ =gBgScrollRegs
	ldrh r0, [r0, #6]
	rsbs r0, r0, #0
	adds r0, #0x5c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0808B65C @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	ldr r1, [r6]
	ldr r0, _0808B660 @ =Task_808B9B4
	str r0, [r1, #8]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808B638: .4byte gCurTask
_0808B63C: .4byte 0x030000AC
_0808B640: .4byte gBgCntRegs
_0808B644: .4byte 0x00001C8D
_0808B648: .4byte 0x0600C000
_0808B64C: .4byte 0x0600E000
_0808B650: .4byte 0x030000D6
_0808B654: .4byte 0x00002150
_0808B658: .4byte gBgScrollRegs
_0808B65C: .4byte gBgAffineRegs
_0808B660: .4byte Task_808B9B4

	thumb_func_start sub_808B664
sub_808B664: @ 0x0808B664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r2, _0808B69C @ =gLoadedSaveGame
	ldr r0, _0808B6A0 @ =0x00000366
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldrb r0, [r2]
	str r0, [r1]
	cmp r7, #0
	beq _0808B6A4
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r4, r2
	b _0808B6A8
	.align 2, 0
_0808B69C: .4byte gLoadedSaveGame
_0808B6A0: .4byte 0x00000366
_0808B6A4:
	adds r0, r4, #0
	adds r0, #0xa8
_0808B6A8:
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	movs r5, #0
	adds r3, r4, #0
	adds r3, #0x38
	str r3, [sp, #0x20]
	adds r6, r4, #0
	adds r6, #0x3c
	str r6, [sp, #0x24]
	adds r0, r4, #0
	adds r0, #0xa0
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0xa4
	str r1, [sp, #0x1c]
	adds r2, r4, #0
	adds r2, #0x90
	str r2, [sp, #0x10]
	adds r3, #0x5c
	str r3, [sp, #0x14]
	adds r6, #0x44
	str r6, [sp]
	subs r0, #0x1c
	str r0, [sp, #4]
	subs r1, #0x1c
	str r1, [sp, #8]
	subs r2, #4
	str r2, [sp, #0xc]
	ldr r3, _0808B72C @ =gUnknown_080D6960
_0808B6E2:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r6, #0xb6
	lsls r6, r6, #1
	adds r0, r0, r6
	adds r2, r4, r0
	ldr r0, [sp, #0x2c]
	str r0, [r2]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r1, r1, #3
	adds r0, r3, #4
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r6, [sp, #0x2c]
	adds r6, r6, r0
	str r6, [sp, #0x2c]
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	cmp r5, #0
	bne _0808B730
	adds r0, #1
	b _0808B734
	.align 2, 0
_0808B72C: .4byte gUnknown_080D6960
_0808B730:
	movs r0, #0xc0
	lsls r0, r0, #1
_0808B734:
	strh r0, [r2, #0x14]
	movs r0, #0
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r2, #0x1c]
	movs r6, #0
	strb r6, [r2, #0x1f]
	ldr r0, _0808B99C @ =0x00043080
	mov sl, r0
	str r0, [r2, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r2, #0x20]
	lsls r1, r5, #3
	ldr r6, [sp, #0x20]
	adds r6, r6, r1
	ldr r0, [r6]
	mov ip, r0
	mov r6, ip
	asrs r6, r6, #8
	strh r6, [r2, #0x10]
	ldr r0, [sp, #0x24]
	adds r1, r0, r1
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	str r3, [sp, #0x28]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0x28]
	cmp r5, #7
	bls _0808B6E2
	cmp r7, #0
	bne _0808B796
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	movs r2, #0xc8
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1]
_0808B796:
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r2, r4, r3
	cmp r7, #0
	bne _0808B7CE
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	movs r6, #0xe0
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	mov r0, sb
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	movs r0, #0x86
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	mov r1, r8
	str r1, [r2, #0x20]
_0808B7CE:
	ldr r1, _0808B9A0 @ =gUnknown_080D6BD8
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r3, #1
	rsbs r3, r3, #0
	adds r5, r3, #0
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x18]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r3, [sp, #0x1c]
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xab
	lsls r0, r0, #2
	adds r3, r4, r0
	cmp r7, #0
	bne _0808B83A
	adds r2, r4, #0
	adds r2, #0xa8
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, _0808B9A4 @ =gUnknown_080D6AE0
	ldr r1, [r0, #4]
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xc0
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	mov r1, sb
	strb r1, [r3, #0x1c]
	strb r6, [r3, #0x1f]
	mov r2, sl
	str r2, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
_0808B83A:
	ldr r1, _0808B9A4 @ =gUnknown_080D6AE0
	ldrh r0, [r1]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r5
	strb r0, [r3, #0x1b]
	ldr r1, [sp, #0x10]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r2, r4, r3
	cmp r7, #0
	bne _0808B892
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	subs r3, #0xd4
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	mov r0, sb
	strb r0, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #8]
	mov r3, r8
	str r3, [r2, #0x20]
_0808B892:
	ldr r1, _0808B9A8 @ =gUnknown_080D6AE8
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	orrs r0, r5
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r2, r4, r0
	cmp r7, #0
	bne _0808B8F4
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	mov r0, sb
	strb r0, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #8]
	mov r3, r8
	str r3, [r2, #0x20]
_0808B8F4:
	ldr r1, _0808B9AC @ =gUnknown_080D6B48
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	orrs r0, r5
	strb r0, [r2, #0x1b]
	ldr r1, [sp]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r3, [sp, #4]
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r3, r4, r0
	cmp r7, #0
	bne _0808B95A
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	mov r0, sb
	strb r0, [r3, #0x1c]
	strb r6, [r3, #0x1f]
	mov r1, sl
	str r1, [r3, #8]
	mov r2, r8
	str r2, [r3, #0x20]
_0808B95A:
	ldr r1, _0808B9B0 @ =gUnknown_080D6BA8
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r5
	strb r0, [r3, #0x1b]
	ldr r6, [sp, #8]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B99C: .4byte 0x00043080
_0808B9A0: .4byte gUnknown_080D6BD8
_0808B9A4: .4byte gUnknown_080D6AE0
_0808B9A8: .4byte gUnknown_080D6AE8
_0808B9AC: .4byte gUnknown_080D6B48
_0808B9B0: .4byte gUnknown_080D6BA8

	thumb_func_start Task_808B9B4
Task_808B9B4: @ 0x0808B9B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808BA08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, #0xa8
	adds r6, r1, r0
	ldr r7, _0808BA0C @ =gUnknown_080D7458
	ldr r1, _0808BA10 @ =gLoadedSaveGame + 0x4 @ <- playerName
	mov r8, r1
_0808B9D2:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r4, r0
	ldr r0, [r6]
	str r0, [r2]
	ldr r1, [r7, #4]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	adds r3, r1, #0
	ldr r0, _0808BA14 @ =0x0000FFFF
	cmp r3, r0
	beq _0808BA2A
	cmp r3, #0xff
	bls _0808BA1C
	strb r1, [r2, #0x1a]
	ldr r0, _0808BA18 @ =gUnknown_080D7460
	ldrh r0, [r0]
	b _0808BA20
	.align 2, 0
_0808BA08: .4byte gCurTask
_0808BA0C: .4byte gUnknown_080D7458
_0808BA10: .4byte gLoadedSaveGame + 0x4
_0808BA14: .4byte 0x0000FFFF
_0808BA18: .4byte gUnknown_080D7460
_0808BA1C:
	strb r1, [r2, #0x1a]
	ldrh r0, [r7]
_0808BA20:
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _0808BA32
_0808BA2A:
	ldrh r0, [r7]
	movs r1, #0
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_0808BA32:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r1, #0
	strh r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x80
	strh r0, [r2, #0x14]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r0, #9
	strb r0, [r2, #0x1f]
	ldr r0, _0808BA9C @ =0x00043080
	str r0, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0808B9D2
	adds r0, r4, #0
	movs r1, #0
	bl sub_808B664
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0808BA8A
	adds r0, r4, #0
	bl Options_LoadSelectedMenu
_0808BA8A:
	ldr r0, _0808BAA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808BAA4 @ =Task_808B294
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808BA9C: .4byte 0x00043080
_0808BAA0: .4byte gCurTask
_0808BAA4: .4byte Task_808B294

	thumb_func_start Task_808BAA8
Task_808BAA8: @ 0x0808BAA8
	push {r4, r5, lr}
	ldr r5, _0808BB10 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808C008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0808BB1C
	movs r2, #1
	strh r2, [r4, #0xc]
	ldr r1, _0808BB14 @ =gBldRegs
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	strh r2, [r1, #2]
	ldr r1, [r5]
	ldr r0, _0808BB18 @ =Task_808BD90
	str r0, [r1, #8]
	b _0808BB2A
	.align 2, 0
_0808BB10: .4byte gCurTask
_0808BB14: .4byte gBldRegs
_0808BB18: .4byte Task_808BD90
_0808BB1C:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x59
	ble _0808BB2A
	ldr r1, _0808BB30 @ =gBgScrollRegs
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BB2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808BB30: .4byte gBgScrollRegs

	thumb_func_start Task_808BB34
Task_808BB34: @ 0x0808BB34
	push {r4, r5, r6, lr}
	ldr r6, _0808BB98 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, _0808BB9C @ =gBldRegs
	movs r0, #0xf
	strh r0, [r5, #2]
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808C08C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0808BBA4
	movs r1, #1
	strh r1, [r4, #0xc]
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r0, #0
	strb r0, [r4, #3]
	ldr r1, [r6]
	ldr r0, _0808BBA0 @ =Task_808B398
	str r0, [r1, #8]
	b _0808BBB2
	.align 2, 0
_0808BB98: .4byte gCurTask
_0808BB9C: .4byte gBldRegs
_0808BBA0: .4byte Task_808B398
_0808BBA4:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _0808BBB2
	ldr r1, _0808BBB8 @ =gBgScrollRegs
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BBB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808BBB8: .4byte gBgScrollRegs

	thumb_func_start Task_808BBBC
Task_808BBBC: @ 0x0808BBBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0808BC88 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	ldr r5, _0808BC8C @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808BC0C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
_0808BC0C:
	adds r0, r4, #0
	bl sub_808C1BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808BCC4
	movs r1, #0
	mov r8, r1
	movs r5, #0
	strh r5, [r4, #0xc]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r0, #5
	bne _0808BC70
	ldr r1, _0808BC90 @ =0x030000EC
	adds r0, r6, r1
	ldr r3, _0808BC94 @ =gDispCnt
	ldrh r2, [r3]
	ldr r1, _0808BC98 @ =0x0000FBFF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _0808BC9C @ =gBgCntRegs
	ldr r1, _0808BCA0 @ =0x00005E06
	strh r1, [r2, #2]
	ldr r1, _0808BCA4 @ =0x06004000
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _0808BCA8 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xaf
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r2, _0808BCAC @ =0x03000116
	adds r1, r6, r2
	mov r2, r8
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
_0808BC70:
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #6
	bne _0808BCB8
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0808BCB4
	ldr r1, [r7]
	ldr r0, _0808BCB0 @ =Task_808CA9C
	str r0, [r1, #8]
	b _0808BCCC
	.align 2, 0
_0808BC88: .4byte gCurTask
_0808BC8C: .4byte gBgScrollRegs
_0808BC90: .4byte 0x030000EC
_0808BC94: .4byte gDispCnt
_0808BC98: .4byte 0x0000FBFF
_0808BC9C: .4byte gBgCntRegs
_0808BCA0: .4byte 0x00005E06
_0808BCA4: .4byte 0x06004000
_0808BCA8: .4byte 0x0600F000
_0808BCAC: .4byte 0x03000116
_0808BCB0: .4byte Task_808CA9C
_0808BCB4:
	mov r2, r8
	strb r2, [r4, #3]
_0808BCB8:
	ldr r1, [r7]
	ldr r0, _0808BCC0 @ =Task_808BD90
	str r0, [r1, #8]
	b _0808BCCC
	.align 2, 0
_0808BCC0: .4byte Task_808BD90
_0808BCC4:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r5, #4]
_0808BCCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_808BCD8
Task_808BCD8: @ 0x0808BCD8
	push {r4, r5, lr}
	ldr r0, _0808BD48 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808BFA0
	cmp r0, #1
	bne _0808BD28
	ldr r0, _0808BD4C @ =0x030000A0
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
_0808BD28:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0808BD54
	ldr r0, _0808BD50 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808BD54
	movs r0, #1
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Options_LoadSelectedMenu
	b _0808BD82
	.align 2, 0
_0808BD48: .4byte gCurTask
_0808BD4C: .4byte 0x030000A0
_0808BD50: .4byte gBgScrollRegs
_0808BD54:
	ldr r1, _0808BD88 @ =gUnknown_080D6E38
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #1
	beq _0808BD82
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #6
	bgt _0808BD78
	adds r0, r4, #0
	bl sub_808C250
_0808BD78:
	ldr r1, _0808BD8C @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BD82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808BD88: .4byte gUnknown_080D6E38
_0808BD8C: .4byte gBgScrollRegs

	thumb_func_start Task_808BD90
Task_808BD90: @ 0x0808BD90
	push {r4, r5, r6, r7, lr}
	ldr r6, _0808BE14 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808C2E4
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808BFA0
	cmp r0, #1
	bne _0808BDEC
	ldr r0, _0808BE18 @ =0x030000A0
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
_0808BDEC:
	ldr r0, _0808BE1C @ =gPressedKeys
	ldrh r1, [r0]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0808BE24
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #0xc]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #7
	beq _0808BE32
	ldr r1, [r6]
	ldr r0, _0808BE20 @ =Task_808BCD8
	str r0, [r1, #8]
	b _0808BEDE
	.align 2, 0
_0808BE14: .4byte gCurTask
_0808BE18: .4byte 0x030000A0
_0808BE1C: .4byte gPressedKeys
_0808BE20: .4byte Task_808BCD8
_0808BE24:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808BE44
	movs r0, #0x6b      @ SE_ABORT
	bl m4aSongNumStart
_0808BE32:
	adds r0, r4, #0
	bl sub_808CFC4
	ldr r1, [r6]
	ldr r0, _0808BE40 @ =Task_808BB34
	str r0, [r1, #8]
	b _0808BEDE
	.align 2, 0
_0808BE40: .4byte Task_808BB34
_0808BE44:
	ldr r5, _0808BE74 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808BED4
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808BE9C
	ldrh r2, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0808BE78
	movs r0, #7
	b _0808BECE
	.align 2, 0
_0808BE74: .4byte gRepeatedKeys
_0808BE78:
	subs r0, r2, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0808BED0
	ldr r0, _0808BE98 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0808BED0
	subs r0, r2, #2
	b _0808BECE
	.align 2, 0
_0808BE98: .4byte gLoadedSaveGame
_0808BE9C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808BED0
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #7
	bne _0808BEB2
	strh r2, [r4, #8]
	b _0808BED0
_0808BEB2:
	adds r2, r1, #1
	strh r2, [r4, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0808BED0
	ldr r0, _0808BEE4 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0808BED0
	adds r0, r2, #1
_0808BECE:
	strh r0, [r4, #8]
_0808BED0:
	movs r0, #0
	strh r0, [r4, #0xc]
_0808BED4:
	ldr r1, _0808BEE8 @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BEDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808BEE4: .4byte gLoadedSaveGame
_0808BEE8: .4byte gBgScrollRegs

	thumb_func_start sub_808BEEC
sub_808BEEC: @ 0x0808BEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r5, #0
	ldrb r3, [r0, #8]
	ldr r2, _0808BF6C @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0808BF70 @ =gHBlankCopyTarget
	ldr r0, _0808BF74 @ =0x04000052
	str r0, [r1]
	ldr r1, _0808BF78 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0808BF7C @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	mov r0, ip
	strh r5, [r0, #0x12]
	movs r4, #0
	ldr r1, _0808BF80 @ =gUnknown_080D6E54
	mov r8, r1
	lsls r3, r3, #4
	mov sb, r3
_0808BF22:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r4, r0
	blt _0808BF84
	adds r0, #0x10
	cmp r4, r0
	bge _0808BF84
	movs r1, #0
	adds r5, #1
	ldr r6, _0808BF80 @ =gUnknown_080D6E54
	mov r3, sb
_0808BF40:
	mov r7, ip
	ldrh r0, [r7, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r1, #0xf
	bls _0808BF40
	ldrh r0, [r7, #0x12]
	adds r0, #1
	strh r0, [r7, #0x12]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _0808BF8A
	.align 2, 0
_0808BF6C: .4byte gFlags
_0808BF70: .4byte gHBlankCopyTarget
_0808BF74: .4byte 0x04000052
_0808BF78: .4byte gHBlankCopySize
_0808BF7C: .4byte gBgOffsetsHBlankPrimary
_0808BF80: .4byte gUnknown_080D6E54
_0808BF84:
	mov r0, r8
	strh r0, [r2]
	adds r2, #2
_0808BF8A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x9f
	bls _0808BF22
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808BFA0
sub_808BFA0: @ 0x0808BFA0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #2]
	adds r2, r3, #0
	adds r2, #0xa0
	ldr r1, _0808BFDC @ =gUnknown_080D6ED4
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r4, #0
	bne _0808BFC2
	ldr r0, _0808BFE0 @ =0x000009FF
	cmp r1, r0
	bgt _0808BFD2
_0808BFC2:
	cmp r4, #1
	bne _0808BFE8
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r0, _0808BFE4 @ =0xFFFFF600
	cmp r1, r0
	bgt _0808BFE8
_0808BFD2:
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	b _0808BFFE
	.align 2, 0
_0808BFDC: .4byte gUnknown_080D6ED4
_0808BFE0: .4byte 0x000009FF
_0808BFE4: .4byte 0xFFFFF600
_0808BFE8:
	cmp r4, #2
	bne _0808BFFE
	adds r2, r3, #0
	adds r2, #0xa0
	ldr r0, [r2]
	cmp r0, #0
	ble _0808BFFE
	movs r0, #0
	str r0, [r2]
	movs r0, #1
	b _0808C000
_0808BFFE:
	movs r0, #0
_0808C000:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808C008
sub_808C008: @ 0x0808C008
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r6, #0
	movs r5, #0
_0808C010:
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x2b
	cmp r5, r0
	bne _0808C01E
	movs r2, #0x21
_0808C01E:
	lsls r4, r5, #3
	mov r0, ip
	adds r0, #0x38
	adds r1, r0, r4
	lsls r2, r2, #8
	ldr r3, [r1]
	adds r7, r0, #0
	cmp r3, r2
	bls _0808C03C
	ldr r2, _0808C038 @ =0xFFFFF800
	adds r0, r3, r2
	str r0, [r1]
	b _0808C064
	.align 2, 0
_0808C038: .4byte 0xFFFFF800
_0808C03C:
	str r2, [r1]
	mov r0, ip
	adds r0, #0x3c
	adds r2, r0, r4
	lsls r0, r5, #0xc
	movs r3, #0xe8
	lsls r3, r3, #5
	adds r0, r0, r3
	ldr r1, [r2]
	cmp r1, r0
	bge _0808C05C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r1, r3
	str r0, [r2]
	b _0808C064
_0808C05C:
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0808C064:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808C010
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #3
	adds r0, r7, r0
	ldr r0, [r0]
	movs r3, #0xb4
	lsls r3, r3, #8
	adds r0, r0, r3
	str r0, [r1, #0x30]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808C08C
sub_808C08C: @ 0x0808C08C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #0
	mov sb, r0
	mov r1, ip
	ldrh r2, [r1, #8]
	movs r3, #8
	ldrsh r0, [r1, r3]
	cmp r0, #5
	ble _0808C0C4
	ldr r0, _0808C0C0 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808C0C4
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _0808C0CA
	.align 2, 0
_0808C0C0: .4byte gLoadedSaveGame
_0808C0C4:
	mov r4, ip
	ldrb r4, [r4, #8]
	mov r8, r4
_0808C0CA:
	movs r5, #0
	mov r0, r8
	lsls r0, r0, #3
	mov sl, r0
	mov r6, ip
	adds r6, #0x3c
	adds r4, r6, r0
_0808C0D8:
	lsls r0, r5, #3
	adds r3, r6, r0
	ldr r1, [r3]
	ldr r2, [r4]
	adds r7, r0, #0
	cmp r1, r2
	bgt _0808C112
	cmp r1, r2
	beq _0808C0FA
	mov r2, r8
	subs r0, r2, r5
	lsls r0, r0, #9
	adds r0, r1, r0
	str r0, [r3]
	ldr r1, [r4]
	cmp r0, r1
	blt _0808C136
_0808C0FA:
	ldr r1, [r4]
	str r1, [r3]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, [r4]
	cmp r1, r0
	blt _0808C136
	cmp r1, r0
	beq _0808C126
_0808C112:
	adds r2, r6, r7
	mov r3, r8
	subs r0, r5, r3
	lsls r0, r0, #9
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	ldr r0, [r4]
	cmp r1, r0
	bgt _0808C136
_0808C126:
	adds r1, r6, r7
	ldr r0, [r4]
	str r0, [r1]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0808C136:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808C0D8
	mov r4, sb
	cmp r4, #0x10
	bne _0808C178
	mov r3, ip
	adds r3, #0x38
	mov r0, sl
	adds r1, r3, r0
	ldr r2, [r1]
	ldr r0, _0808C1B0 @ =0x0000B3FF
	cmp r2, r0
	bgt _0808C162
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r2, r4
	str r0, [r1]
	movs r0, #0xf
	mov sb, r0
_0808C162:
	movs r5, #0
	adds r2, r1, #0
_0808C166:
	lsls r0, r5, #3
	adds r0, r3, r0
	ldr r1, [r2]
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808C166
_0808C178:
	mov r2, ip
	ldr r1, [r2, #0x30]
	ldr r0, _0808C1B4 @ =0x0000DEFF
	cmp r1, r0
	bgt _0808C192
	mov r0, ip
	adds r0, #0x38
	add r0, sl
	ldr r0, [r0]
	movs r3, #0xb4
	lsls r3, r3, #8
	adds r0, r0, r3
	str r0, [r2, #0x30]
_0808C192:
	mov r4, ip
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	ldr r1, _0808C1B8 @ =gBgScrollRegs
	strh r0, [r1, #4]
	mov r2, sb
	lsrs r0, r2, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808C1B0: .4byte 0x0000B3FF
_0808C1B4: .4byte 0x0000DEFF
_0808C1B8: .4byte gBgScrollRegs

	thumb_func_start sub_808C1BC
sub_808C1BC: @ 0x0808C1BC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r6, #0
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	bne _0808C1FC
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r1, r0
	ldr r2, [r4]
	ldr r0, _0808C1E4 @ =0x000025FF
	adds r5, r1, #0
	cmp r2, r0
	bgt _0808C1E8
	movs r1, #0xa0
	lsls r1, r1, #5
	b _0808C1F2
	.align 2, 0
_0808C1E4: .4byte 0x000025FF
_0808C1E8:
	ldr r0, _0808C1F8 @ =0x00002EFF
	cmp r2, r0
	bgt _0808C1FC
	movs r1, #0x80
	lsls r1, r1, #4
_0808C1F2:
	adds r0, r2, r1
	str r0, [r4]
	b _0808C234
	.align 2, 0
_0808C1F8: .4byte 0x00002EFF
_0808C1FC:
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r2, r1, r0
	ldr r0, [r2]
	movs r4, #0xac
	lsls r4, r4, #6
	adds r5, r1, #0
	cmp r0, r4
	ble _0808C230
	movs r0, #1
	strh r0, [r3, #0xc]
	movs r0, #8
	ldrsh r1, [r3, r0]
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r1]
	ldr r2, _0808C22C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1]
	b _0808C234
	.align 2, 0
_0808C22C: .4byte 0xFFFFF800
_0808C230:
	movs r6, #1
	str r4, [r2]
_0808C234:
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #3
	adds r0, r5, r0
	ldr r0, [r0]
	movs r2, #0xb4
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r3, #0x30]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808C250
sub_808C250: @ 0x0808C250
	push {r4, lr}
	mov ip, r0
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0808C27C
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #3
	adds r1, #0x38
	adds r3, r1, r0
	ldr r2, [r3]
	ldr r0, _0808C274 @ =0xFFFF4600
	adds r4, r1, #0
	cmp r2, r0
	ble _0808C27C
	ldr r1, _0808C278 @ =0xFFFFEC00
	b _0808C2BE
	.align 2, 0
_0808C274: .4byte 0xFFFF4600
_0808C278: .4byte 0xFFFFEC00
_0808C27C:
	mov r2, ip
	movs r1, #8
	ldrsh r0, [r2, r1]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #0x38
	adds r3, r1, r0
	ldr r2, [r3]
	ldr r0, _0808C2B4 @ =0xFFFF4F00
	adds r4, r1, #0
	cmp r2, r0
	bgt _0808C2BC
	ldr r0, _0808C2B8 @ =0xFFFF4C00
	cmp r2, r0
	bge _0808C2C0
	movs r0, #1
	mov r2, ip
	strh r0, [r2, #0xc]
	movs r0, #8
	ldrsh r1, [r2, r0]
	lsls r1, r1, #3
	adds r1, r4, r1
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	b _0808C2C2
	.align 2, 0
_0808C2B4: .4byte 0xFFFF4F00
_0808C2B8: .4byte 0xFFFF4C00
_0808C2BC:
	ldr r1, _0808C2E0 @ =0xFFFFFF00
_0808C2BE:
	adds r0, r2, r1
_0808C2C0:
	str r0, [r3]
_0808C2C2:
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808C2E0: .4byte 0xFFFFFF00

	thumb_func_start sub_808C2E4
sub_808C2E4: @ 0x0808C2E4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	bne _0808C310
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r1, r0
	ldr r2, [r4]
	movs r0, #0xe0
	lsls r0, r0, #5
	adds r5, r1, #0
	cmp r2, r0
	ble _0808C310
	ldr r1, _0808C30C @ =0xFFFFFD00
	adds r0, r2, r1
	b _0808C348
	.align 2, 0
_0808C30C: .4byte 0xFFFFFD00
_0808C310:
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r1, r0
	ldr r2, [r4]
	ldr r0, _0808C340 @ =0x000020FF
	adds r5, r1, #0
	cmp r2, r0
	bgt _0808C344
	movs r0, #1
	strh r0, [r3, #0xc]
	movs r0, #8
	ldrsh r1, [r3, r0]
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	b _0808C34A
	.align 2, 0
_0808C340: .4byte 0x000020FF
_0808C344:
	movs r0, #0x84
	lsls r0, r0, #6
_0808C348:
	str r0, [r4]
_0808C34A:
	movs r2, #0
	adds r4, r5, #0
	ldr r7, _0808C38C @ =0x00002AFF
	movs r6, #0x80
	lsls r6, r6, #2
_0808C354:
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r2, r0
	beq _0808C36A
	lsls r0, r2, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, r7
	bgt _0808C36A
	adds r0, r0, r6
	str r0, [r1]
_0808C36A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0808C354
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r3, #0x30]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808C38C: .4byte 0x00002AFF

	thumb_func_start sub_808C390
sub_808C390: @ 0x0808C390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0808C3A0
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	b _0808C400
_0808C3A0:
	ldr r0, _0808C3E8 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r5, [r0, r1]
	adds r2, r0, #0
	cmp r5, #0
	bne _0808C414
	ldr r0, _0808C3EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808C414
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #2
	bgt _0808C3FC
	movs r0, #1
	strb r0, [r4, #3]
	ldr r1, _0808C3F0 @ =gBldRegs
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	strh r6, [r1, #2]
	ldr r0, _0808C3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C3F8 @ =Task_808B398
	b _0808C406
	.align 2, 0
_0808C3E8: .4byte gBgScrollRegs
_0808C3EC: .4byte gPressedKeys
_0808C3F0: .4byte gBldRegs
_0808C3F4: .4byte gCurTask
_0808C3F8: .4byte Task_808B398
_0808C3FC:
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
_0808C400:
	ldr r0, _0808C40C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C410 @ =Task_808BBBC
_0808C406:
	str r0, [r1, #8]
	movs r0, #1
	b _0808C41E
	.align 2, 0
_0808C40C: .4byte gCurTask
_0808C410: .4byte Task_808BBBC
_0808C414:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	movs r0, #0
_0808C41E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_808C424
sub_808C424: @ 0x0808C424
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0808C454 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C458
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	str r0, [r1]
	movs r0, #0
	strh r0, [r4, #0xc]
	b _0808C474
	.align 2, 0
_0808C454: .4byte gPressedKeys
_0808C458:
	ldr r0, _0808C480 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r5, [r0, r2]
	adds r6, r0, #0
	cmp r5, #0
	bne _0808C504
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C48C
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0xc]
_0808C474:
	ldr r0, _0808C484 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C488 @ =Task_808BBBC
	str r0, [r1, #8]
	movs r0, #1
	b _0808C50E
	.align 2, 0
_0808C480: .4byte gBgScrollRegs
_0808C484: .4byte gCurTask
_0808C488: .4byte Task_808BBBC
_0808C48C:
	ldr r5, _0808C4C8 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0808C504
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C4D4
	movs r0, #8
	ldrsh r3, [r4, r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r1
	ldr r0, [r2]
	cmp r0, #0
	bne _0808C4D0
	ldr r0, _0808C4CC @ =gUnknown_080D6C08
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0808C502
	.align 2, 0
_0808C4C8: .4byte gRepeatedKeys
_0808C4CC: .4byte gUnknown_080D6C08
_0808C4D0:
	subs r0, #1
	b _0808C502
_0808C4D4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C504
	movs r2, #8
	ldrsh r1, [r4, r2]
	lsls r2, r1, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r2
	ldr r0, _0808C4FC @ =gUnknown_080D6C08
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808C500
	str r3, [r2]
	b _0808C504
	.align 2, 0
_0808C4FC: .4byte gUnknown_080D6C08
_0808C500:
	adds r0, #1
_0808C502:
	str r0, [r2]
_0808C504:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r6, #4]
	movs r0, #0
_0808C50E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_808C514
sub_808C514: @ 0x0808C514
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808C578 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r5, [r0, r1]
	adds r3, r0, #0
	ldr r2, _0808C57C @ =gPressedKeys
	cmp r5, #0
	bne _0808C588
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0808C588
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C588
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0xc]
	ldr r0, _0808C580 @ =gLoadedSaveGame
	ldr r2, _0808C584 @ =0x00000366
	adds r5, r0, r2
	ldrb r1, [r5]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r3, r4, #0
	adds r3, #0x14
	adds r0, r3, r0
	ldr r2, [r0]
	cmp r1, r2
	beq _0808C570
	strb r2, [r5]
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r0, r3, r0
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	strb r2, [r4]
	adds r0, r4, #0
	movs r1, #1
	bl sub_808B664
_0808C570:
	movs r0, #0
	strb r0, [r4, #6]
	b _0808C5BA
	.align 2, 0
_0808C578: .4byte gBgScrollRegs
_0808C57C: .4byte gPressedKeys
_0808C580: .4byte gLoadedSaveGame
_0808C584: .4byte 0x00000366
_0808C588:
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0808C59E
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r3, #4]
	movs r0, #0
	b _0808C5C4
_0808C59E:
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	str r0, [r1]
	movs r0, #0
	strh r0, [r4, #0xc]
_0808C5BA:
	ldr r0, _0808C5CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C5D0 @ =Task_808BBBC
	str r0, [r1, #8]
	movs r0, #1
_0808C5C4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808C5CC: .4byte gCurTask
_0808C5D0: .4byte Task_808BBBC

	thumb_func_start sub_808C5D4
sub_808C5D4: @ 0x0808C5D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0808C610 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C620
	movs r0, #0x6b
	bl m4aSongNumStart
	ldrb r2, [r4, #3]
	cmp r2, #0
	bne _0808C61C
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	str r0, [r1]
	strh r2, [r4, #0xc]
	ldr r0, _0808C614 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C618 @ =Task_808BBBC
	str r0, [r1, #8]
	movs r0, #1
	b _0808C6F4
	.align 2, 0
_0808C610: .4byte gPressedKeys
_0808C614: .4byte gCurTask
_0808C618: .4byte Task_808BBBC
_0808C61C:
	movs r0, #0
	strb r0, [r4, #3]
_0808C620:
	ldr r6, _0808C684 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #0
	bne _0808C6E8
	ldr r0, _0808C688 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C63E
	movs r0, #0x6a
	bl m4aSongNumStart
	strb r5, [r4, #3]
_0808C63E:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0808C6E8
	ldr r5, _0808C68C @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808C6C8
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C698
	movs r0, #8
	ldrsh r3, [r4, r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r1
	ldr r0, [r2]
	cmp r0, #0
	bne _0808C694
	ldr r0, _0808C690 @ =gUnknown_080D6C08
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0808C6C6
	.align 2, 0
_0808C684: .4byte gBgScrollRegs
_0808C688: .4byte gPressedKeys
_0808C68C: .4byte gRepeatedKeys
_0808C690: .4byte gUnknown_080D6C08
_0808C694:
	subs r0, #1
	b _0808C6C6
_0808C698:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C6C8
	movs r0, #8
	ldrsh r1, [r4, r0]
	lsls r2, r1, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r2
	ldr r0, _0808C6C0 @ =gUnknown_080D6C08
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808C6C4
	str r3, [r2]
	b _0808C6C8
	.align 2, 0
_0808C6C0: .4byte gUnknown_080D6C08
_0808C6C4:
	adds r0, #1
_0808C6C6:
	str r0, [r2]
_0808C6C8:
	ldr r0, _0808C6FC @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808C6E8
	ldr r0, _0808C700 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0808C6E8
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #3]
_0808C6E8:
	ldr r1, _0808C6FC @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	movs r0, #0
_0808C6F4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808C6FC: .4byte gBgScrollRegs
_0808C700: .4byte gRepeatedKeys

	thumb_func_start sub_808C704
sub_808C704: @ 0x0808C704
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808C73C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C748
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r2, #0
	strb r2, [r4, #3]
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	str r0, [r1]
	strh r2, [r4, #0xc]
	ldr r0, _0808C740 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C744 @ =Task_808BBBC
	b _0808C7CA
	.align 2, 0
_0808C73C: .4byte gPressedKeys
_0808C740: .4byte gCurTask
_0808C744: .4byte Task_808BBBC
_0808C748:
	ldr r0, _0808C78C @ =gBgScrollRegs
	movs r2, #4
	ldrsh r5, [r0, r2]
	cmp r5, #0
	bne _0808C7AA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C7AA
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0808C798
	strb r5, [r4, #3]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	str r1, [r0]
	strh r5, [r4, #0xc]
	ldr r0, _0808C790 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C794 @ =Task_808BBBC
	b _0808C7CA
	.align 2, 0
_0808C78C: .4byte gBgScrollRegs
_0808C790: .4byte gCurTask
_0808C794: .4byte Task_808BBBC
_0808C798:
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0808C7AA
	movs r0, #1
	strb r0, [r4, #5]
_0808C7AA:
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0808C7C4
	ldr r1, _0808C7C0 @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	movs r0, #0
	b _0808C7CE
	.align 2, 0
_0808C7C0: .4byte gBgScrollRegs
_0808C7C4:
	ldr r0, _0808C7D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C7D8 @ =sub_808C9B0
_0808C7CA:
	str r0, [r1, #8]
	movs r0, #1
_0808C7CE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808C7D4: .4byte gCurTask
_0808C7D8: .4byte sub_808C9B0

	thumb_func_start Options_LoadSelectedMenu
Options_LoadSelectedMenu: @ 0x0808C7DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #6]
	cmp r4, #0
	bne _0808C8D6
	movs r0, #8
	ldrsh r6, [r5, r0]
	cmp r6, #6
	bgt _0808C8A4
	strb r4, [r5, #3]
	adds r0, r6, #0
	lsls r0, r0, #2
	adds r7, r5, #0
	adds r7, #0x14
	adds r0, r7, r0
	ldr r0, [r0]
	strh r0, [r5, #0xa]
	cmp r6, #5
	bne _0808C84E
	adds r0, r5, #0
	adds r0, #0xec
	ldr r3, _0808C888 @ =gDispCnt
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #3
	mov ip, r2
	mov r2, ip
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0808C88C @ =gBgCntRegs
	ldr r1, _0808C890 @ =0x00005E86
	strh r1, [r2, #2]
	ldr r1, _0808C894 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808C898 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0808C89C @ =0x00000165
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r2, r5, r1
	movs r1, #0
	strb r1, [r2]
	strh r6, [r0, #0x2e]
	bl DrawBackground
_0808C84E:
	movs r2, #8
	ldrsh r1, [r5, r2]
	cmp r1, #0
	bne _0808C85E
	adds r0, r1, #0
	lsls r0, r0, #2
	adds r0, r7, r0
	str r1, [r0]
_0808C85E:
	ldr r4, _0808C8A0 @ =sOptionsSlideInits
	movs r0, #8
	ldrsh r2, [r5, r0]
	lsls r2, r2, #2
	adds r4, r2, r4
	adds r0, r7, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	adds r2, #0x14
	adds r2, r5, r2
	adds r3, r5, #6
	ldr r4, [r4]
	bl _call_via_r4
	movs r0, #1
	strb r0, [r5, #6]
	b _0808C8D6
	.align 2, 0
_0808C888: .4byte gDispCnt
_0808C88C: .4byte gBgCntRegs
_0808C890: .4byte 0x00005E86
_0808C894: .4byte 0x06004000
_0808C898: .4byte 0x0600F000
_0808C89C: .4byte 0x00000165
_0808C8A0: .4byte sOptionsSlideInits
_0808C8A4:
	movs r4, #0
_0808C8A6:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, r0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r4, r0
	bne _0808C8C0
	movs r0, #0
	b _0808C8C4
_0808C8C0:
	movs r0, #0x80
	lsls r0, r0, #1
_0808C8C4:
	strh r0, [r1, #0x14]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0808C8A6
_0808C8D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_808C8DC
Task_808C8DC: @ 0x0808C8DC
	push {r4, r5, r6, lr}
	ldr r6, _0808C97C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x10]
	ldr r5, _0808C980 @ =gBldRegs
	cmp r0, #0
	bne _0808C928
	ldr r2, _0808C984 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808C988 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0808C928:
	ldr r0, _0808C98C @ =0x00003EFF
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0808C994
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldr r1, _0808C990 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #0xe]
	adds r0, r0, r3
	strh r0, [r4, #0xe]
	b _0808C9A0
	.align 2, 0
_0808C97C: .4byte gCurTask
_0808C980: .4byte gBldRegs
_0808C984: .4byte gDispCnt
_0808C988: .4byte gWinRegs
_0808C98C: .4byte 0x00003EFF
_0808C990: .4byte 0xFFFFFF00
_0808C994:
	strh r0, [r5, #4]
	ldr r0, _0808C9A8 @ =0x00003FFF
	strh r0, [r5]
	ldr r1, [r6]
	ldr r0, _0808C9AC @ =Task_808BD90
	str r0, [r1, #8]
_0808C9A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C9A8: .4byte 0x00003FFF
_0808C9AC: .4byte Task_808BD90

	thumb_func_start sub_808C9B0
sub_808C9B0: @ 0x0808C9B0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0808CA44 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _0808C9F8
	ldr r2, _0808CA48 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808CA4C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _0808CA50 @ =gBldRegs
	ldr r0, _0808CA54 @ =0x00003EFF
	strh r0, [r1]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x10]
_0808C9F8:
	adds r0, r5, #0
	bl sub_808CED0
	adds r0, r5, #0
	bl sub_808CB74
	adds r0, r5, #0
	bl sub_808CF4C
	adds r0, r5, #0
	bl sub_808CC48
	adds r0, r5, #0
	bl sub_808CF00
	adds r0, r5, #0
	bl sub_808CCA0
	adds r0, r5, #0
	bl sub_808CD14
	adds r0, r5, #0
	bl sub_808CD88
	ldr r2, _0808CA50 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _0808CA58
	ldrh r0, [r5, #0xe]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r5, #0xe]
	adds r0, r0, r2
	strh r0, [r5, #0xe]
	b _0808CA88
	.align 2, 0
_0808CA44: .4byte gCurTask
_0808CA48: .4byte gDispCnt
_0808CA4C: .4byte gWinRegs
_0808CA50: .4byte gBldRegs
_0808CA54: .4byte 0x00003EFF
_0808CA58:
	movs r1, #0
	movs r4, #0
	movs r0, #0x10
	strh r0, [r2, #4]
	strb r1, [r5, #4]
	ldr r0, _0808CA90 @ =gLoadedSaveGame
	ldr r0, [r0]
	bl sub_8001DDC
	bl sub_8001E0C
	movs r3, #8
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	ldr r2, _0808CA94 @ =0x03000014
	adds r1, r6, r2
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	str r0, [r1]
	strh r4, [r5, #0xc]
	ldr r1, [r7]
	ldr r0, _0808CA98 @ =Task_808BBBC
	str r0, [r1, #8]
_0808CA88:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808CA90: .4byte gLoadedSaveGame
_0808CA94: .4byte 0x03000014
_0808CA98: .4byte Task_808BBBC

	thumb_func_start Task_808CA9C
Task_808CA9C: @ 0x0808CA9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808CAE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	ldr r0, _0808CAE4 @ =gLoadedSaveGame + 0x4
	mov r8, r0
	ldr r7, _0808CAE8 @ =0x0000FFFF
	ldr r6, _0808CAEC @ =gUnknown_080D7458
_0808CAB8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r5, r0
	lsls r0, r4, #1
	add r0, r8
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, r7
	beq _0808CB02
	cmp r1, #0xff
	bls _0808CAF4
	adds r0, #1
	strb r0, [r2, #0x1a]
	ldr r0, _0808CAF0 @ =gUnknown_080D7460
	ldrh r0, [r0]
	b _0808CAF8
	.align 2, 0
_0808CAE0: .4byte gCurTask
_0808CAE4: .4byte gLoadedSaveGame + 0x4
_0808CAE8: .4byte 0x0000FFFF
_0808CAEC: .4byte gUnknown_080D7458
_0808CAF0: .4byte gUnknown_080D7460
_0808CAF4:
	strb r0, [r2, #0x1a]
	ldrh r0, [r6]
_0808CAF8:
	strh r0, [r2, #0xc]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #4]
	b _0808CB0A
_0808CB02:
	ldrh r0, [r6]
	movs r1, #0
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_0808CB0A:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0808CAB8
	movs r4, #0
	strb r4, [r5, #5]
	strb r4, [r5, #3]
	movs r2, #1
	str r2, [r5, #0x2c]
	ldr r1, _0808CB64 @ =gLoadedSaveGame
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [r5, #0x18]
	adds r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [r5, #0x1c]
	ldr r0, _0808CB68 @ =0x00000366
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [r5, #0x20]
	strh r2, [r5, #0xa]
	bl sub_8001E58
	movs r0, #0
	bl CreateOptions
	ldr r0, _0808CB6C @ =gWinRegs
	strh r4, [r0, #8]
	ldr r0, _0808CB70 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808CB64: .4byte gLoadedSaveGame
_0808CB68: .4byte 0x00000366
_0808CB6C: .4byte gWinRegs
_0808CB70: .4byte gCurTask

	thumb_func_start sub_808CB74
sub_808CB74: @ 0x0808CB74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r0, _0808CBEC @ =gLoadedSaveGame + 0x33
	mov sb, r0
	movs r7, #1
	ldr r1, _0808CBF0 @ =gUnknown_080D6960
	mov r8, r1
_0808CB8A:
	cmp r5, #5
	bne _0808CB9A
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0808CC30
_0808CB9A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r1, r5, #3
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	cmp r5, #5
	bls _0808CBF4
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0808CBF4
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0808CBF6
	.align 2, 0
_0808CBEC: .4byte gLoadedSaveGame + 0x33
_0808CBF0: .4byte gUnknown_080D6960
_0808CBF4:
	adds r0, r5, #0
_0808CBF6:
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r1, #0
	strh r0, [r4, #0x12]
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r5, r0
	beq _0808CC18
	strb r7, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _0808CC22
_0808CC18:
	strb r1, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_0808CC22:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808CC30:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808CB8A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CC48
sub_808CC48: @ 0x0808CC48
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r2, _0808CC84 @ =gUnknown_080D6AE0
	ldrh r1, [r2]
	strh r1, [r3, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r3, #0x1a]
	ldr r1, [r0, #0x38]
	movs r2, #0xd6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r3, #0x10]
	ldr r1, [r0, #0x3c]
	asrs r1, r1, #8
	strh r1, [r3, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808CC88
	movs r0, #0
	strb r0, [r3, #0x1f]
	ldr r0, [r3, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CC92
	.align 2, 0
_0808CC84: .4byte gUnknown_080D6AE0
_0808CC88:
	movs r0, #4
	strb r0, [r3, #0x1f]
	ldr r0, [r3, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CC92:
	str r0, [r3, #8]
	adds r0, r3, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CCA0
sub_808CCA0: @ 0x0808CCA0
	push {r4, lr}
	ldrb r2, [r0, #0x18]
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, _0808CCF0 @ =gUnknown_080D6AE8
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrb r1, [r2, #2]
	strb r1, [r4, #0x1a]
	ldr r1, [r0, #0x40]
	movs r2, #0xe6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0808CCF4
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CCFE
	.align 2, 0
_0808CCF0: .4byte gUnknown_080D6AE8
_0808CCF4:
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CCFE:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CD14
sub_808CD14: @ 0x0808CD14
	push {r4, lr}
	ldrb r2, [r0, #0x1c]
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, _0808CD64 @ =gUnknown_080D6B48
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrb r1, [r2, #2]
	strb r1, [r4, #0x1a]
	ldr r1, [r0, #0x48]
	movs r2, #0xe6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x4c]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _0808CD68
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CD72
	.align 2, 0
_0808CD64: .4byte gUnknown_080D6B48
_0808CD68:
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CD72:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CD88
sub_808CD88: @ 0x0808CD88
	push {r4, lr}
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r2, _0808CDD0 @ =gUnknown_080D6BA8
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r4, #0x1a]
	ldr r1, [r0, #0x50]
	movs r2, #0xe6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #3
	bne _0808CDD4
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CDDE
	.align 2, 0
_0808CDD0: .4byte gUnknown_080D6BA8
_0808CDD4:
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CDDE:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CDF4
sub_808CDF4: @ 0x0808CDF4
	push {lr}
	movs r0, #0
	bl CreateOptions
	pop {r0}
	bx r0

	thumb_func_start Task_808CE00
Task_808CE00: @ 0x0808CE00
	push {r4, r5, lr}
	ldr r0, _0808CE78 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808C250
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808BFA0
	cmp r0, #1
	bne _0808CE56
	ldr r0, _0808CE7C @ =0x030000A0
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
_0808CE56:
	ldr r1, _0808CE80 @ =gUnknown_080D6E38
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _0808CE84 @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808CE78: .4byte gCurTask
_0808CE7C: .4byte 0x030000A0
_0808CE80: .4byte gUnknown_080D6E38
_0808CE84: .4byte gBgScrollRegs

	thumb_func_start sub_808CE88
sub_808CE88: @ 0x0808CE88
	push {lr}
	adds r2, r0, #0
	movs r1, #8
	ldrsh r0, [r2, r1]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0x7b
	beq _0808CEB0
	ldr r1, _0808CEAC @ =gBgScrollRegs
	ldr r0, [r2, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	movs r0, #0
	b _0808CEC4
	.align 2, 0
_0808CEAC: .4byte gBgScrollRegs
_0808CEB0:
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	str r0, [r1]
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r0, _0808CEC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808CECC @ =Task_808BBBC
	str r0, [r1, #8]
	movs r0, #1
_0808CEC4:
	pop {r1}
	bx r1
	.align 2, 0
_0808CEC8: .4byte gCurTask
_0808CECC: .4byte Task_808BBBC

	thumb_func_start sub_808CED0
sub_808CED0: @ 0x0808CED0
	adds r2, r0, #0
	adds r2, #0x98
	ldr r1, [r2]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	str r1, [r2]
	adds r0, #0x9c
	ldr r1, [r0]
	ldr r3, _0808CEF8 @ =0xFFFFFE80
	adds r1, r1, r3
	str r1, [r0]
	ldr r3, _0808CEFC @ =gBgScrollRegs
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r3]
	asrs r1, r1, #8
	strh r1, [r3, #2]
	bx lr
	.align 2, 0
_0808CEF8: .4byte 0xFFFFFE80
_0808CEFC: .4byte gBgScrollRegs

	thumb_func_start sub_808CF00
sub_808CF00: @ 0x0808CF00
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0808CF3E
_0808CF08:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r1, [r5, #0x38]
	movs r2, #0xd6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	lsls r2, r4, #3
	adds r1, r1, r2
	lsls r2, r4, #1
	adds r1, r1, r2
	adds r1, #0xa
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x3c]
	asrs r1, r1, #8
	adds r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0808CF3E:
	ldrb r0, [r5, #4]
	cmp r4, r0
	blo _0808CF08
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CF4C
sub_808CF4C: @ 0x0808CF4C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r2, r1
	adds r1, r2, #0
	adds r1, #0xa0
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r2, #0
	adds r1, #0xa4
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_808CF74
Task_808CF74: @ 0x0808CF74
	push {r4, r5, lr}
	ldr r5, _0808CFC0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	ldr r0, [r5]
	bl TaskDestroy
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808CFC0: .4byte gCurTask

	thumb_func_start sub_808CFC4
sub_808CFC4: @ 0x0808CFC4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0808CFCA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, r0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r4, r0
	bne _0808CFE4
	movs r0, #0
	b _0808CFE8
_0808CFE4:
	movs r0, #0x80
	lsls r0, r0, #1
_0808CFE8:
	strh r0, [r1, #0x14]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0808CFCA
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Options
TaskDestructor_Options: @ 0x0808D000
	ldr r1, _0808D008 @ =gWinRegs
	movs r0, #0
	strh r0, [r1, #8]
	bx lr
	.align 2, 0
_0808D008: .4byte gWinRegs
