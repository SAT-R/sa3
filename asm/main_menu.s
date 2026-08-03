.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_8094740
Task_8094740: @ 0x08094740
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080947C8 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	movs r2, #0
	str r2, [sp]
	ldr r3, _080947CC @ =0x040000D4
	mov r0, sp
	str r0, [r3]
	ldr r0, _080947D0 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080947D4 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080947D8 @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _080947DC @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x40
	strb r3, [r0, #3]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	adds r0, r5, #0
	bl sub_8094F3C
	adds r0, r5, #0
	bl sub_8094A98
	ldr r0, _080947E0 @ =0x0000FFFF
	bl sub_80C4C0C
	ldr r1, _080947E4 @ =gBgPalette
	strh r0, [r1]
	ldr r2, [r6]
	ldr r1, _080947E8 @ =gUnknown_080D8B4C
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080947C8: .4byte gCurTask
_080947CC: .4byte 0x040000D4
_080947D0: .4byte gBgCntRegs
_080947D4: .4byte 0x85000010
_080947D8: .4byte gBgSprites_Unknown1
_080947DC: .4byte gBgSprites_Unknown2
_080947E0: .4byte 0x0000FFFF
_080947E4: .4byte gBgPalette
_080947E8: .4byte gUnknown_080D8B4C

	thumb_func_start sub_80947EC
sub_80947EC: @ 0x080947EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r3, _0809486C @ =gLoadedSaveGame
	ldr r1, _08094870 @ =0x00000366
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	movs r1, #0
	strh r2, [r4, #0x22]
	strb r1, [r4, #0x1c]
	strb r1, [r4, #0x1d]
	strh r2, [r4, #0x26]
	strh r2, [r4, #0x28]
	movs r0, #0xa
	strh r0, [r4, #0x20]
	strh r2, [r4, #0x24]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #4]
	movs r4, #0
	mov r8, r3
	mov r6, ip
	adds r6, #0x78
	mov r5, ip
	adds r5, #0x7c
	mov r3, ip
	adds r3, #0xf
	mov sb, r4
_08094834:
	lsls r1, r4, #3
	adds r2, r6, r1
	lsls r0, r4, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r4, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, r4
	mov r7, sb
	strb r7, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08094834
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08094874
	movs r0, #7
	strb r0, [r1, #0x14]
	b _08094888
	.align 2, 0
_0809486C: .4byte gLoadedSaveGame
_08094870: .4byte 0x00000366
_08094874:
	mov r2, r8
	ldrb r3, [r2, #0x11]
	cmp r3, #7
	bls _08094884
	movs r0, #7
	mov r4, ip
	strb r0, [r4, #0x14]
	b _08094888
_08094884:
	mov r7, ip
	strb r3, [r7, #0x14]
_08094888:
	movs r4, #0
	mov r6, ip
	adds r6, #0xa0
	mov r2, ip
	adds r2, #0x15
	movs r3, #3
	ldr r5, _080948A4 @ =gLoadedSaveGame + 0x29
_08094896:
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _080948A8
	adds r0, r2, r4
	strb r3, [r0]
	b _080948CC
	.align 2, 0
_080948A4: .4byte gLoadedSaveGame + 0x29
_080948A8:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080948C8
	adds r1, r2, r4
	lsrs r0, r0, #0x19
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080948CC
	strb r3, [r1]
	b _080948CC
_080948C8:
	adds r0, r2, r4
	strb r1, [r0]
_080948CC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08094896
	ldr r0, _0809491C @ =0xFFFFCE00
	mov r2, ip
	str r0, [r2, #0x30]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r2, #0x68]
	str r1, [r2, #0x6c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r2, #0x70]
	str r1, [r2, #0x74]
	movs r0, #0
	str r0, [r2, #0x58]
	str r0, [r2, #0x5c]
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x2c]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x60]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x64]
	ldr r0, _08094920 @ =0x06010000
	str r0, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809491C: .4byte 0xFFFFCE00
_08094920: .4byte 0x06010000

	thumb_func_start sub_8094924
sub_8094924: @ 0x08094924
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
_08094936:
	movs r1, #0
	mov sb, r1
	ldr r2, [sp]
	lsls r0, r2, #4
	lsls r4, r2, #2
	str r4, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0x14]
	ldr r5, [sp]
	subs r0, r0, r5
	lsls r0, r0, #4
	str r0, [sp, #4]
_0809494E:
	movs r0, #0
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #4
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	mov r2, sb
	adds r2, #1
	str r2, [sp, #8]
	mov r4, sb
	subs r0, r0, r4
	lsls r0, r0, #2
	mov sl, r0
_08094968:
	mov r5, r8
	lsls r2, r5, #1
	add r2, sl
	ldr r0, [sp, #4]
	adds r2, r2, r0
	ldr r1, _08094A70 @ =0x0000054C
	adds r3, r7, r1
	adds r3, r3, r2
	lsls r6, r5, #2
	ldr r1, [sp, #0x10]
	add r1, sb
	lsls r1, r1, #2
	adds r1, r6, r1
	ldr r4, [sp, #0xc]
	ldr r5, [sp]
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08094A74 @ =gLoadedSaveGame
	adds r4, r1, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r5, _08094A78 @ =0x0000054D
	adds r1, r7, r5
	adds r1, r1, r2
	ldr r2, _08094A7C @ =0x0000012D
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r5, #0x97
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrh r4, [r0]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	add r6, r8
	lsls r6, r6, #1
	add r6, sl
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r1, _08094A80 @ =0x0000055E
	adds r2, r7, r1
	adds r2, r2, r6
	lsls r5, r5, #1
	ldr r1, _08094A84 @ =gUnknown_080CE4B2
	adds r1, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strh r1, [r2]
	ldr r1, _08094A88 @ =0x0000055C
	adds r2, r7, r1
	adds r2, r2, r6
	ldr r1, _08094A84 @ =gUnknown_080CE4B2
	adds r5, r5, r1
	ldrb r1, [r5]
	strh r1, [r2]
	ldr r5, _08094A8C @ =0x0000055A
	adds r2, r7, r5
	adds r2, r2, r6
	lsrs r4, r4, #0xf
	ldr r1, _08094A90 @ =gUnknown_080CE438
	adds r1, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strh r1, [r2]
	movs r1, #0xab
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r6
	ldr r5, _08094A90 @ =gUnknown_080CE438
	adds r4, r4, r5
	ldrb r1, [r4]
	strh r1, [r2]
	ldr r2, _08094A94 @ =0x00000556
	adds r1, r7, r2
	adds r1, r1, r6
	strh r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08094968
	ldr r4, [sp, #8]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _08094A52
	b _0809494E
_08094A52:
	ldr r5, [sp, #0x14]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #6
	bhi _08094A60
	b _08094936
_08094A60:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094A70: .4byte 0x0000054C
_08094A74: .4byte gLoadedSaveGame
_08094A78: .4byte 0x0000054D
_08094A7C: .4byte 0x0000012D
_08094A80: .4byte 0x0000055E
_08094A84: .4byte gUnknown_080CE4B2
_08094A88: .4byte 0x0000055C
_08094A8C: .4byte 0x0000055A
_08094A90: .4byte gUnknown_080CE438
_08094A94: .4byte 0x00000556

	thumb_func_start sub_8094A98
sub_8094A98: @ 0x08094A98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	movs r3, #0
	mov r0, sl
	ldrb r0, [r0, #2]
	cmp r3, r0
	bhi _08094B30
	mov r4, sl
	adds r4, #0xa0
	ldr r1, _08094E90 @ =gUnknown_080D8AAC
	mov r8, r1
	movs r2, #0
	mov sb, r2
	movs r6, #0
_08094AC6:
	mov r7, sl
	adds r7, #0xcc
	cmp r3, #0
	bne _08094AD0
	subs r7, #0x28
_08094AD0:
	ldr r0, [r4]
	str r0, [r7]
	lsls r2, r5, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	mov r0, r8
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r1, sl
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r1, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xe]
	strh r6, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r6, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, sl
	ldrb r0, [r0, #2]
	cmp r3, r0
	bls _08094AC6
_08094B30:
	movs r7, #0x8e
	lsls r7, r7, #1
	add r7, sl
	mov r4, sl
	adds r4, #0xa0
	ldr r0, [r4]
	str r0, [r7]
	ldr r2, _08094E94 @ =gUnknown_080D8AE4
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r2]
	movs r5, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r1, sl
	ldr r0, [r1, #0x60]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r1, #0x64]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xa2
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r4]
	str r0, [r7]
	ldr r2, _08094E98 @ =gUnknown_080D8AEC
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x68]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r3, #0xc0
	strh r3, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r4]
	str r0, [r7]
	ldr r2, _08094E9C @ =sAnimsTimeAttackDigits
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r2]
	mov r3, sp
	strh r0, [r3]
	strh r0, [r7, #0xc]
	ldrb r2, [r2, #2]
	mov r8, r2
	strb r2, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r1, sl
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r1, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r2, #0xc0
	strh r2, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	mov r3, sb
	strb r3, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xca
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r4]
	str r0, [r7]
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r7, #0xc]
	mov r2, r8
	strb r2, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r3, sl
	ldr r0, [r3, #0x30]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sl
	ldrb r0, [r3]
	movs r5, #5
	adds r6, r4, #0
	cmp r0, #0
	bne _08094C70
	movs r5, #0
_08094C70:
	movs r3, #0
	mov r0, sl
	adds r0, #0x78
	str r0, [sp, #0x18]
	mov r1, sl
	adds r1, #0x7c
	str r1, [sp, #0x1c]
	mov r2, sl
	adds r2, #0xf4
	str r2, [sp, #0x14]
	adds r4, r6, #0
	ldr r0, _08094EA0 @ =gUnknown_080D8AF4
	mov sb, r0
	mov r8, r3
_08094C8C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, sl
	adds r7, r2, r0
	ldr r0, [r4]
	str r0, [r7]
	adds r2, r3, r5
	lsls r2, r2, #3
	mov r0, sb
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	add r2, sb
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	lsls r1, r3, #3
	ldr r2, [sp, #0x18]
	adds r0, r2, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x1c]
	adds r1, r0, r1
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08094C8C
	movs r3, #1
	adds r4, r6, #0
	ldr r1, _08094EA4 @ =gUnknown_080D8B44
	movs r5, #0
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	str r0, [sp, #4]
_08094D10:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r2, sl
	adds r7, r2, r0
	ldr r0, [r4]
	str r0, [r7]
	ldr r0, [r4]
	ldr r2, [sp, #4]
	adds r0, r0, r2
	str r0, [r4]
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrb r2, [r1, #2]
	adds r0, r3, r2
	strb r0, [r7, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sp
	strb r2, [r0, #8]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x78]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x7c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	mov sb, r0
	mov r2, sb
	strh r2, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r2, r8
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, [sp, #0x20]
	cmp r3, #0xa
	bls _08094D10
	ldr r7, _08094EA8 @ =0x00000414
	add r7, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r4, _08094EA4 @ =gUnknown_080D8B44
	ldr r5, [r4, #4]
	lsls r5, r5, #5
	ldr r0, [r6]
	adds r0, r0, r5
	str r0, [r6]
	ldrh r0, [r4]
	movs r1, #0
	mov ip, r1
	movs r1, #0
	strh r0, [r7, #0xc]
	ldrb r3, [r4, #2]
	mov r2, sp
	strb r3, [r2, #0xc]
	strb r3, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	ldrb r2, [r2, #8]
	orrs r0, r2
	strb r0, [r7, #0x1b]
	mov r3, sl
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x7c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	mov r2, r8
	strb r2, [r7, #0x1c]
	mov r3, ip
	strb r3, [r7, #0x1f]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r3, #0
	adds r1, r6, #0
	movs r4, #0
	mov r0, sp
	ldrb r2, [r0, #0xc]
	strb r2, [r0, #0x10]
	str r5, [sp, #0x28]
_08094DE4:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r5, _08094EAC @ =0x0000043C
	adds r0, r0, r5
	mov r2, sl
	adds r7, r2, r0
	ldr r0, [r1]
	str r0, [r7]
	ldr r0, [r1]
	ldr r5, [sp, #0x28]
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08094EA4 @ =gUnknown_080D8B44
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	adds r0, r3, #0
	adds r0, #0xb
	mov r5, sp
	ldrb r5, [r5, #0x10]
	adds r0, r5, r0
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x78]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x7c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r5, #0xc0
	strh r5, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r2, sb
	strb r2, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, [sp, #0x20]
	cmp r3, #1
	bls _08094DE4
	mov r0, sl
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	ldr r7, [sp, #0x14]
	ldr r0, [r6]
	str r0, [r7]
	ldr r3, _08094EB0 @ =gUnknown_080D8ACC
	lsls r2, r5, #3
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r2, r2, r3
	ldrh r0, [r2]
	movs r5, #0
	movs r4, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r1, r8
	orrs r0, r1
	b _08094EB4
	.align 2, 0
_08094E90: .4byte gUnknown_080D8AAC
_08094E94: .4byte gUnknown_080D8AE4
_08094E98: .4byte gUnknown_080D8AEC
_08094E9C: .4byte sAnimsTimeAttackDigits
_08094EA0: .4byte gUnknown_080D8AF4
_08094EA4: .4byte gUnknown_080D8B44
_08094EA8: .4byte 0x00000414
_08094EAC: .4byte 0x0000043C
_08094EB0: .4byte gUnknown_080D8ACC
_08094EB4:
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x48]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x4c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r3, #0xc0
	strh r3, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r0, sb
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6]
	adds r0, #0x80
	str r0, [r6]
	ldr r1, _08094F38 @ =sAnimsTimeAttackDigits
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x30]
	asrs r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r0, r3
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r1, sb
	strb r1, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094F38: .4byte sAnimsTimeAttackDigits

	thumb_func_start sub_8094F3C
sub_8094F3C: @ 0x08094F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _0809503C @ =gDispCnt
	mov sb, r0
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r2, _08095040 @ =gBgCntRegs
	mov sl, r2
	movs r7, #0
	movs r4, #0
	ldr r0, _08095044 @ =0x00000603
	strh r0, [r2]
	ldr r0, _08095048 @ =gBgScrollRegs
	mov r8, r0
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r1, _0809504C @ =0x0000050C
	adds r0, r5, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08095050 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08095054 @ =0x00000161
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _08095058 @ =0x00000536
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0809505C @ =0x00004E06
	mov r1, sl
	strh r0, [r1, #2]
	mov r2, r8
	strh r4, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #6]
	ldr r1, _08095060 @ =0x000004CC
	adds r0, r5, r1
	ldr r1, _08095064 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08095068 @ =0x06007000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _0809506C @ =0x000004F6
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08095070 @ =0x00005609
	mov r1, sl
	strh r0, [r1, #4]
	mov r2, sb
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r0, _08095074 @ =0x0000FF06
	mov r2, r8
	strh r0, [r2, #8]
	strh r4, [r2, #0xa]
	ldr r1, _08095078 @ =0x0000048C
	adds r0, r5, r1
	ldr r1, _0809507C @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08095080 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08095084 @ =0x00000163
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _08095088 @ =0x000004B6
	adds r5, r5, r2
	strb r7, [r5]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809503C: .4byte gDispCnt
_08095040: .4byte gBgCntRegs
_08095044: .4byte 0x00000603
_08095048: .4byte gBgScrollRegs
_0809504C: .4byte 0x0000050C
_08095050: .4byte 0x06003000
_08095054: .4byte 0x00000161
_08095058: .4byte 0x00000536
_0809505C: .4byte 0x00004E06
_08095060: .4byte 0x000004CC
_08095064: .4byte 0x06004000
_08095068: .4byte 0x06007000
_0809506C: .4byte 0x000004F6
_08095070: .4byte 0x00005609
_08095074: .4byte 0x0000FF06
_08095078: .4byte 0x0000048C
_0809507C: .4byte 0x06008000
_08095080: .4byte 0x0600B000
_08095084: .4byte 0x00000163
_08095088: .4byte 0x000004B6

	thumb_func_start sub_809508C
sub_809508C: @ 0x0809508C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08095108 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r5, [r3, #0x28]
	ldr r6, _0809510C @ =gBldRegs
	ldr r4, _08095110 @ =gWinRegs
	cmp r5, #0
	bne _080950D4
	ldr r0, _08095114 @ =0x00003FFF
	strh r0, [r6]
	ldr r2, _08095118 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #6]
	ldr r0, _0809511C @ =0x00003130
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #0x26]
	movs r0, #1
	strh r0, [r3, #0x28]
_080950D4:
	ldr r0, [r3, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #4]
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08095128
	ldrh r0, [r3, #0x26]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	ldr r1, _08095120 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r7, [r3, #0x26]
	adds r0, r0, r7
	strh r0, [r3, #0x26]
	lsls r0, r0, #0x10
	ldr r1, _08095124 @ =0x0FFF0000
	cmp r0, r1
	bls _0809513E
	movs r0, #0
	strh r0, [r3, #0x26]
	b _0809513E
	.align 2, 0
_08095108: .4byte gCurTask
_0809510C: .4byte gBldRegs
_08095110: .4byte gWinRegs
_08095114: .4byte 0x00003FFF
_08095118: .4byte gDispCnt
_0809511C: .4byte 0x00003130
_08095120: .4byte 0xFFFFFE00
_08095124: .4byte 0x0FFF0000
_08095128:
	strh r0, [r3, #0x28]
	ldr r0, _08095144 @ =0x00003110
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r6, #2]
	movs r0, #0x10
	strh r0, [r6, #4]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _08095148 @ =sub_8095674
	str r0, [r1, #8]
_0809513E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095144: .4byte 0x00003110
_08095148: .4byte sub_8095674

	thumb_func_start sub_809514C
sub_809514C: @ 0x0809514C
	push {r4, lr}
	ldr r4, _080951A0 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldrb r3, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	strh r0, [r2, #0x24]
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
	movs r0, #4
	strb r0, [r2, #1]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r2, #0x30]
	movs r1, #0x8c
	subs r1, r1, r3
	lsls r1, r1, #8
	str r1, [r2, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r2, #0x2c]
	lsls r3, r3, #8
	adds r1, r1, r3
	ldr r0, _080951A4 @ =0xFFFFF400
	adds r1, r1, r0
	str r1, [r2, #0x54]
	ldr r2, _080951A8 @ =gWinRegs
	asrs r0, r1, #8
	adds r0, r0, r1
	adds r0, #0x18
	strh r0, [r2, #4]
	ldr r1, [r4]
	ldr r0, _080951AC @ =sub_8095210
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080951A0: .4byte gCurTask
_080951A4: .4byte 0xFFFFF400
_080951A8: .4byte gWinRegs
_080951AC: .4byte sub_8095210

	thumb_func_start sub_80951B0
sub_80951B0: @ 0x080951B0
	ldr r3, _08095204 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0
	movs r0, #0x20
	strb r0, [r2, #4]
	movs r0, #1
	strh r0, [r2, #0x24]
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x28]
	movs r0, #4
	strb r0, [r2, #1]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r2, #0x30]
	movs r1, #0xd8
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	str r0, [r2, #0x38]
	str r1, [r2, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r2, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r2, #0x54]
	movs r0, #3
	strb r0, [r2, #0x1e]
	ldr r2, _08095208 @ =gWinRegs
	lsrs r0, r1, #8
	orrs r0, r1
	adds r0, #0x18
	strh r0, [r2, #4]
	ldr r1, [r3]
	ldr r0, _0809520C @ =sub_8095210
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08095204: .4byte gCurTask
_08095208: .4byte gWinRegs
_0809520C: .4byte sub_8095210

	thumb_func_start sub_8095210
sub_8095210: @ 0x08095210
	push {r4, r5, r6, lr}
	ldr r0, _08095254 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x28]
	ldr r3, _08095258 @ =gWinRegs
	cmp r0, #0
	bne _08095284
	ldr r1, _0809525C @ =gBldRegs
	movs r5, #0
	ldr r0, _08095260 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _08095264 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #6]
	ldrb r0, [r4, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809526C
	ldr r0, _08095268 @ =0x00003530
	b _0809526E
	.align 2, 0
_08095254: .4byte gCurTask
_08095258: .4byte gWinRegs
_0809525C: .4byte gBldRegs
_08095260: .4byte 0x00003FFF
_08095264: .4byte gDispCnt
_08095268: .4byte 0x00003530
_0809526C:
	ldr r0, _080952C8 @ =0x00003510
_0809526E:
	strh r0, [r3, #8]
	movs r0, #0
	strh r0, [r3, #0xa]
	ldr r1, _080952CC @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x26]
	movs r0, #1
	strh r0, [r4, #0x28]
_08095284:
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3, #4]
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8096590
	adds r0, r4, #0
	bl sub_8095D24
	adds r0, r4, #0
	bl sub_809660C
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_8095EF4
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080952D0
	adds r0, r4, #0
	bl sub_809673C
	b _080952D6
	.align 2, 0
_080952C8: .4byte 0x00003510
_080952CC: .4byte gBldRegs
_080952D0:
	adds r0, r4, #0
	bl sub_8096758
_080952D6:
	ldr r3, _080952F4 @ =gBldRegs
	ldrh r0, [r3, #4]
	adds r5, r0, #0
	cmp r5, #0
	beq _080952FC
	ldrh r0, [r4, #0x26]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r6, _080952F8 @ =0xFFFFFF00
	adds r0, r6, #0
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	b _08095350
	.align 2, 0
_080952F4: .4byte gBldRegs
_080952F8: .4byte 0xFFFFFF00
_080952FC:
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	ldr r0, _08095358 @ =0xFFFFCE00
	str r0, [r4, #0x30]
	ldr r2, _0809535C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08095324
	ldr r0, [r4, #0x34]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r0, r6
	str r0, [r4, #0x34]
_08095324:
	ldr r0, [r4, #0x30]
	movs r1, #0xa8
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x4c]
	movs r0, #0x82
	strh r0, [r3]
	ldr r1, _08095360 @ =gWinRegs
	ldr r0, _08095364 @ =0x00003532
	strh r0, [r1, #8]
	movs r0, #0x10
	strh r0, [r3, #4]
	strh r5, [r4, #0x28]
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	ldr r0, _08095368 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809536C @ =sub_8095840
	str r0, [r1, #8]
_08095350:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095358: .4byte 0xFFFFCE00
_0809535C: .4byte gDispCnt
_08095360: .4byte gWinRegs
_08095364: .4byte 0x00003532
_08095368: .4byte gCurTask
_0809536C: .4byte sub_8095840

	thumb_func_start Task_8095370
Task_8095370: @ 0x08095370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080953C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _080953B0
	ldr r1, _080953C4 @ =gBldRegs
	movs r3, #0
	ldr r0, _080953C8 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _080953CC @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080953D0 @ =gWinRegs
	ldr r0, _080953D4 @ =0x00003510
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x26]
	strh r3, [r4, #0x28]
_080953B0:
	movs r7, #0x24
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _080953D8
	adds r0, r4, #0
	bl sub_809673C
	b _080953DE
	.align 2, 0
_080953C0: .4byte gCurTask
_080953C4: .4byte gBldRegs
_080953C8: .4byte 0x00003FFF
_080953CC: .4byte gDispCnt
_080953D0: .4byte gWinRegs
_080953D4: .4byte 0x00003510
_080953D8:
	adds r0, r4, #0
	bl sub_8096758
_080953DE:
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8096490
	adds r0, r4, #0
	bl sub_8096714
	ldr r2, _08095420 @ =gWinRegs
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _08095424 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08095428
	ldrh r0, [r4, #0x26]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r4, #0x26]
	adds r0, r0, r2
	strh r0, [r4, #0x26]
	b _0809548A
	.align 2, 0
_08095420: .4byte gWinRegs
_08095424: .4byte gBldRegs
_08095428:
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	movs r3, #0
	ldr r5, _0809549C @ =gCurTask
	mov sl, r5
	ldr r7, _080954A0 @ =gBgScrollRegs
	mov r8, r7
	ldr r0, _080954A4 @ =sub_80962B4
	mov sb, r0
	adds r1, r4, #0
	adds r1, #0x78
	str r1, [sp]
	adds r6, r4, #0
	adds r6, #0x7c
	adds r5, r4, #0
	adds r5, #0xf
	mov ip, r3
_0809544A:
	lsls r1, r3, #3
	ldr r7, [sp]
	adds r2, r7, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r6, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, r3
	mov r7, ip
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0809544A
	movs r0, #0
	strb r0, [r4, #0x1f]
	strb r0, [r4, #0x1e]
	movs r0, #0x80
	mov r1, r8
	strh r0, [r1, #6]
	mov r2, sl
	ldr r0, [r2]
	mov r5, sb
	str r5, [r0, #8]
_0809548A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809549C: .4byte gCurTask
_080954A0: .4byte gBgScrollRegs
_080954A4: .4byte sub_80962B4

	thumb_func_start Task_80954A8
Task_80954A8: @ 0x080954A8
	push {r4, r5, r6, lr}
	ldr r0, _080954F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #0x28]
	cmp r0, #0
	beq _0809551A
	ldr r1, _080954F4 @ =gBldRegs
	movs r3, #0
	movs r4, #0
	ldr r0, _080954F8 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _080954FC @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08095508
	ldr r0, _08095500 @ =gWinRegs
	movs r1, #0xff
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0, #6]
	ldr r1, _08095504 @ =0x00003130
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	b _08095510
	.align 2, 0
_080954F0: .4byte gCurTask
_080954F4: .4byte gBldRegs
_080954F8: .4byte 0x00003FFF
_080954FC: .4byte gDispCnt
_08095500: .4byte gWinRegs
_08095504: .4byte 0x00003130
_08095508:
	ldr r1, _08095540 @ =gWinRegs
	ldr r0, _08095544 @ =0x00003532
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
_08095510:
	movs r0, #0
	strh r0, [r6, #0x26]
	strh r0, [r6, #0x28]
	ldr r1, _08095548 @ =gBldRegs
	strh r0, [r1, #4]
_0809551A:
	ldrb r0, [r6, #3]
	cmp r0, #1
	beq _0809552C
	cmp r0, #5
	beq _0809552C
	cmp r0, #7
	beq _0809552C
	cmp r0, #3
	bne _0809554C
_0809552C:
	adds r0, r6, #0
	bl sub_809673C
	adds r0, r6, #0
	bl sub_8096814
	adds r0, r6, #0
	bl sub_8096774
	b _08095562
	.align 2, 0
_08095540: .4byte gWinRegs
_08095544: .4byte 0x00003532
_08095548: .4byte gBldRegs
_0809554C:
	cmp r0, #2
	beq _0809555C
	cmp r0, #6
	beq _0809555C
	cmp r0, #8
	beq _0809555C
	cmp r0, #4
	bne _08095582
_0809555C:
	adds r0, r6, #0
	bl sub_8096758
_08095562:
	adds r0, r6, #0
	bl sub_809673C
	adds r0, r6, #0
	bl sub_8095E8C
	adds r0, r6, #0
	bl sub_80960B8
	adds r0, r6, #0
	bl sub_80967DC
	adds r0, r6, #0
	bl sub_8095EF4
	b _08095598
_08095582:
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08095592
	adds r0, r6, #0
	bl sub_809673C
	b _08095598
_08095592:
	adds r0, r6, #0
	bl sub_8096758
_08095598:
	ldr r1, _080955B4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080955B8
	ldrh r0, [r6, #0x26]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	strh r0, [r6, #0x26]
	b _0809566A
	.align 2, 0
_080955B4: .4byte gBldRegs
_080955B8:
	ldrb r0, [r6, #3]
	cmp r0, #1
	beq _080955C2
	cmp r0, #3
	bne _080955E4
_080955C2:
	ldr r4, _080955E0 @ =gStageData
	movs r5, #0
	movs r0, #3
	strb r0, [r4, #3]
	movs r0, #0x1f
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x1e
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	adds r0, #3
	b _08095606
	.align 2, 0
_080955E0: .4byte gStageData
_080955E4:
	cmp r0, #2
	beq _080955EC
	cmp r0, #4
	bne _08095614
_080955EC:
	ldr r4, _08095610 @ =gStageData
	movs r5, #0
	movs r0, #4
	strb r0, [r4, #3]
	movs r1, #0x1f
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	asrs r0, r0, #0x10
_08095606:
	movs r1, #0
	bl WarpToMap
	strb r5, [r4, #1]
	b _0809566A
	.align 2, 0
_08095610: .4byte gStageData
_08095614:
	cmp r0, #5
	bne _08095624
	ldr r0, _08095620 @ =gStageData
	movs r2, #0
	movs r1, #3
	b _0809562E
	.align 2, 0
_08095620: .4byte gStageData
_08095624:
	cmp r0, #6
	bne _08095640
	ldr r0, _0809563C @ =gStageData
	movs r2, #0
	movs r1, #4
_0809562E:
	strb r1, [r0, #3]
	strb r2, [r0, #6]
	movs r0, #0
	bl CreateCharacterSelect
	b _08095662
	.align 2, 0
_0809563C: .4byte gStageData
_08095640:
	cmp r0, #7
	beq _08095648
	cmp r0, #8
	bne _0809565C
_08095648:
	ldr r1, _08095658 @ =gStageData
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #3
	bl CreateCharacterSelect
	b _08095662
	.align 2, 0
_08095658: .4byte gStageData
_0809565C:
	movs r0, #9
	bl LaunchOptionsMenu
_08095662:
	ldr r0, _08095670 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809566A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095670: .4byte gCurTask

	thumb_func_start sub_8095674
sub_8095674: @ 0x08095674
	push {r4, r5, lr}
	ldr r0, _08095694 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095698
	adds r0, r4, #0
	bl sub_809673C
	b _0809569E
	.align 2, 0
_08095694: .4byte gCurTask
_08095698:
	adds r0, r4, #0
	bl sub_8096758
_0809569E:
	adds r0, r4, #0
	bl sub_8096398
	adds r1, r0, #0
	cmp r1, #1
	bne _080956B2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strb r1, [r4, #1]
_080956B2:
	adds r0, r4, #0
	bl sub_8096678
	cmp r0, #1
	bne _080956C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #2
	strb r0, [r4, #1]
_080956C6:
	cmp r5, #2
	bne _080956D6
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _080956DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080956E0 @ =sub_8095764
	str r0, [r1, #8]
_080956D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080956DC: .4byte gCurTask
_080956E0: .4byte sub_8095764

	thumb_func_start Task_80956E4
Task_80956E4: @ 0x080956E4
	push {r4, r5, lr}
	ldr r0, _08095704 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095708
	adds r0, r4, #0
	bl sub_809673C
	b _0809570E
	.align 2, 0
_08095704: .4byte gCurTask
_08095708:
	adds r0, r4, #0
	bl sub_8096758
_0809570E:
	adds r0, r4, #0
	bl sub_80963E0
	cmp r0, #1
	bne _0809571E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809571E:
	adds r0, r4, #0
	bl sub_80966C4
	cmp r0, #1
	bne _0809572E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809572E:
	ldr r2, _08095758 @ =gWinRegs
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _08095750
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _0809575C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095760 @ =Task_80954A8
	str r0, [r1, #8]
_08095750:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095758: .4byte gWinRegs
_0809575C: .4byte gCurTask
_08095760: .4byte Task_80954A8

	thumb_func_start sub_8095764
sub_8095764: @ 0x08095764
	push {r4, r5, lr}
	ldr r5, _080957B0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096758
	adds r0, r4, #0
	bl sub_8096790
	adds r0, r4, #0
	bl sub_8096428
	adds r0, r4, #0
	bl sub_8096554
	ldr r0, _080957B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080957BC
	movs r0, #0x6b @ SE_ABORT
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #1]
	strh r0, [r4, #0x28]
	ldr r1, [r5]
	ldr r0, _080957B8 @ =Task_80956E4
	str r0, [r1, #8]
	b _08095830
	.align 2, 0
_080957B0: .4byte gCurTask
_080957B4: .4byte gPressedKeys
_080957B8: .4byte Task_80956E4
_080957BC:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _080957DC
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #4
	strb r0, [r4, #1]
	ldr r1, [r5]
	ldr r0, _080957D8 @ =sub_809624C
	str r0, [r1, #8]
	b _08095830
	.align 2, 0
_080957D8: .4byte sub_809624C
_080957DC:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08095830
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095804
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08095804
	strb r2, [r4, #4]
	strh r2, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x64]
	movs r0, #0x6c
	bl m4aSongNumStart
_08095804:
	ldr r0, _08095838 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809582A
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0809582A
	movs r0, #0x20
	strb r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _0809583C @ =0xFFFFF800
	str r0, [r4, #0x64]
	movs r0, #0x6c
	bl m4aSongNumStart
_0809582A:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x60]
_08095830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095838: .4byte gPressedKeys
_0809583C: .4byte 0xFFFFF800

	thumb_func_start sub_8095840
sub_8095840: @ 0x08095840
	push {r4, r5, lr}
	ldr r0, _080958AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8095D24
	cmp r0, #1
	bne _08095868
	movs r5, #2
_08095868:
	adds r0, r4, #0
	bl sub_8096590
	cmp r0, #1
	bne _08095876
	movs r0, #1
	orrs r5, r0
_08095876:
	adds r0, r4, #0
	bl sub_809660C
	cmp r0, #1
	bne _08095888
	movs r0, #4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08095888:
	adds r0, r4, #0
	bl sub_80967DC
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080958B0
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096774
	adds r0, r4, #0
	bl sub_8096814
	b _080958BC
	.align 2, 0
_080958AC: .4byte gCurTask
_080958B0:
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096758
_080958BC:
	adds r0, r4, #0
	bl sub_8095EF4
	ldr r0, _080958D8 @ =gBldRegs
	ldrh r0, [r0]
	cmp r0, #0x82
	bne _080958DC
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _080958DC
	adds r0, r4, #0
	bl sub_8095DF8
	b _08095910
	.align 2, 0
_080958D8: .4byte gBldRegs
_080958DC:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08095910
	ldr r1, _08095960 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080958FC
	ldr r2, _08095964 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r3, [r4, #0x26]
	adds r0, r0, r3
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_080958FC:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _08095910
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r4, #0x26]
	movs r5, #0xf
_08095910:
	cmp r5, #0xf
	bne _0809595A
	ldr r2, _08095968 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08095960 @ =gBldRegs
	movs r0, #0x82
	strh r0, [r1]
	ldr r1, _0809596C @ =gWinRegs
	ldr r0, _08095970 @ =0x00003532
	strh r0, [r1, #8]
	ldr r1, _08095974 @ =gBgScrollRegs
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r0, #0xf
	strh r0, [r1, #8]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x34]
	str r1, [r4, #0x6c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	ldr r0, _08095978 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809597C @ =sub_809630C
	str r0, [r1, #8]
_0809595A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095960: .4byte gBldRegs
_08095964: .4byte 0xFFFFFF00
_08095968: .4byte gDispCnt
_0809596C: .4byte gWinRegs
_08095970: .4byte 0x00003532
_08095974: .4byte gBgScrollRegs
_08095978: .4byte gCurTask
_0809597C: .4byte sub_809630C

	thumb_func_start sub_8095980
sub_8095980: @ 0x08095980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r6, #0
	ldrb r0, [r4, #0x1e]
	mov r8, r0
	ldrb r7, [r4, #0x1f]
	ldr r0, _080959B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08095A04
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #1
	strh r0, [r4, #0x28]
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _080959B8
	movs r0, #5
	strb r0, [r4, #3]
	b _08095A1C
	.align 2, 0
_080959B4: .4byte gPressedKeys
_080959B8:
	cmp r0, #2
	bne _080959C2
	movs r0, #6
	strb r0, [r4, #3]
	b _08095A1C
_080959C2:
	cmp r0, #3
	bne _080959CC
	movs r0, #7
	strb r0, [r4, #3]
	b _08095A1C
_080959CC:
	cmp r0, #4
	bne _080959D6
	movs r0, #8
	strb r0, [r4, #3]
	b _08095A1C
_080959D6:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080959EA
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	ldr r2, _080959F8 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080959EA:
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _080959FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095A00 @ =Task_8095370
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_080959F8: .4byte 0xFFFFE000
_080959FC: .4byte gCurTask
_08095A00: .4byte Task_8095370
_08095A04:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08095A30
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08095A30
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0x28]
_08095A1C:
	ldr r0, _08095A28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095A2C @ =Task_80954A8
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_08095A28: .4byte gCurTask
_08095A2C: .4byte Task_80954A8
_08095A30:
	ldr r1, _08095AD8 @ =gRepeatedKeys
	ldrh r2, [r1]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08095AE4
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08095A5C
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _08095A5C
	movs r0, #0
	strb r0, [r4, #0x1f]
_08095A5C:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08095A78
	ldrb r0, [r4, #0x1f]
	subs r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095A78
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x1f]
_08095A78:
	movs r1, #0x1f
	ldrsb r1, [r4, r1]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08095A86
	movs r6, #1
_08095A86:
	cmp r6, #0
	beq _08095AE4
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #2
	strh r0, [r4, #0x28]
	movs r3, #0
	adds r6, r4, #0
	adds r6, #0x78
	adds r5, r4, #0
	adds r5, #0x7c
	adds r4, #0xf
	mov r8, r3
_08095AA2:
	lsls r1, r3, #3
	adds r2, r6, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, r3
	mov r7, r8
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08095AA2
	ldr r0, _08095ADC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095AE0 @ =sub_8095840
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_08095AD8: .4byte gRepeatedKeys
_08095ADC: .4byte gCurTask
_08095AE0: .4byte sub_8095840
_08095AE4:
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08095AF0
	b _08095C00
_08095AF0:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095B4A
	movs r0, #0x24
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bne _08095B2E
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08095B4A
	strb r2, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _08095B4A
	strb r2, [r4, #0x1f]
	b _08095B4A
_08095B2E:
	movs r0, #3
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	movs r1, #0x1f
	ldrsb r1, [r4, r1]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _08095B4A
	movs r0, #0
	strb r0, [r4, #0x1f]
_08095B4A:
	ldr r0, _08095B70 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08095B8A
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095B74
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095B8A
	movs r0, #2
	b _08095B76
	.align 2, 0
_08095B70: .4byte gRepeatedKeys
_08095B74:
	movs r0, #3
_08095B76:
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	subs r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095B8A
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x1f]
_08095B8A:
	movs r0, #0x1f
	ldrsb r0, [r4, r0]
	lsls r1, r7, #0x18
	asrs r2, r1, #0x18
	ldrb r3, [r4, #0x1f]
	adds r5, r1, #0
	cmp r0, r2
	bne _08095BA8
	movs r1, #0x1e
	ldrsb r1, [r4, r1]
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08095BAA
_08095BA8:
	movs r6, #1
_08095BAA:
	cmp r6, #0
	beq _08095C00
	lsls r0, r3, #0x18
	cmp r0, r5
	beq _08095BB8
	movs r0, #2
	strh r0, [r4, #0x28]
_08095BB8:
	movs r3, #0
	ldr r7, _08095C0C @ =gCurTask
	mov r8, r7
	ldr r0, _08095C10 @ =sub_8095840
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0x78
	adds r5, r4, #0
	adds r5, #0x7c
	adds r4, #0xf
	mov sb, r3
_08095BCE:
	lsls r1, r3, #3
	adds r2, r6, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, r3
	mov r7, sb
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08095BCE
	mov r1, r8
	ldr r0, [r1]
	mov r2, ip
	str r2, [r0, #8]
_08095C00:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095C0C: .4byte gCurTask
_08095C10: .4byte sub_8095840

	thumb_func_start sub_8095C14
sub_8095C14: @ 0x08095C14
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, _08095C6C @ =gPressedKeys
	ldrh r3, [r1]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08095C80
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #1]
	movs r1, #0
	strh r0, [r2, #0x24]
	strb r1, [r2, #0x1e]
	strh r0, [r2, #0x22]
	strb r1, [r2, #4]
	ldrb r1, [r2, #2]
	ldr r3, _08095C70 @ =gWinRegs
	ldr r4, _08095C74 @ =gCurTask
	ldr r5, _08095C78 @ =sub_8095674
	cmp r0, r1
	bhi _08095C54
_08095C40:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _08095C40
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	ldr r0, _08095C7C @ =0xFFFFCE00
	str r0, [r2, #0x30]
_08095C54:
	movs r0, #0
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x2c]
	movs r0, #0xff
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #4]
	ldr r0, [r4]
	str r5, [r0, #8]
	b _08095CAE
	.align 2, 0
_08095C6C: .4byte gPressedKeys
_08095C70: .4byte gWinRegs
_08095C74: .4byte gCurTask
_08095C78: .4byte sub_8095674
_08095C7C: .4byte 0xFFFFCE00
_08095C80:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08095C90
	ldrh r0, [r2, #0x20]
	adds r0, #1
	strh r0, [r2, #0x20]
_08095C90:
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095CAE
	ldrh r0, [r2, #0x20]
	subs r0, #1
	strh r0, [r2, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08095CAE
	movs r0, #2
	strh r0, [r2, #0x20]
_08095CAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8095CB4
sub_8095CB4: @ 0x08095CB4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r1, [r2, #4]
	movs r4, #0
	movs r0, #0x8c
	subs r0, r0, r1
	lsls r3, r0, #8
	ldr r1, [r2, #0x34]
	cmp r1, r3
	bge _08095CE8
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x34]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x30]
	movs r5, #0x24
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _08095D02
	cmp r1, r3
	blt _08095D02
	str r3, [r2, #0x34]
	b _08095D02
_08095CE8:
	ldrh r0, [r2, #0x20]
	adds r0, #2
	lsls r0, r0, #8
	ldr r1, [r2, #0x30]
	adds r1, r1, r0
	str r1, [r2, #0x30]
	str r3, [r2, #0x34]
	ldr r0, _08095D18 @ =0x000117FF
	cmp r1, r0
	ble _08095D02
	adds r0, #1
	str r0, [r2, #0x30]
	movs r4, #1
_08095D02:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	cmp r4, #0
	bne _08095D1C
	movs r0, #0
	b _08095D1E
	.align 2, 0
_08095D18: .4byte 0x000117FF
_08095D1C:
	movs r0, #1
_08095D1E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8095D24
sub_8095D24: @ 0x08095D24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r5, #0
	mov r7, ip
	adds r7, #0xf
	mov r6, ip
	adds r6, #0x78
	mov sl, r5
	ldr r4, _08095D78 @ =gUnknown_080D8BB0
	mov sb, r4
_08095D44:
	adds r0, r7, r5
	ldrb r3, [r0]
	lsls r2, r5, #3
	mov r1, ip
	adds r1, #0x7c
	adds r1, r1, r2
	lsls r0, r5, #2
	ldr r4, _08095D7C @ =gUnknown_080D8B9C
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r1]
	cmp r3, #6
	bne _08095D86
	adds r2, r6, r2
	ldr r0, [r2]
	cmp r0, #0
	blt _08095D80
	mov r0, sl
	str r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _08095DCC
	.align 2, 0
_08095D78: .4byte gUnknown_080D8BB0
_08095D7C: .4byte gUnknown_080D8B9C
_08095D80:
	mov r4, sl
	str r4, [r2]
	b _08095DCC
_08095D86:
	cmp r3, #5
	bhi _08095DA0
	adds r0, r6, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	mov r4, ip
	adds r4, #0x78
	cmp r1, r0
	bgt _08095DBA
	b _08095DB4
_08095DA0:
	adds r0, r6, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	mov r4, ip
	adds r4, #0x78
	cmp r1, r0
	blt _08095DBA
_08095DB4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08095DBA:
	adds r2, r4, r2
	ldr r0, _08095DE4 @ =gUnknown_080D8BD8
	adds r0, r3, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
_08095DCC:
	adds r0, r7, r5
	strb r3, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08095D44
	mov r0, r8
	cmp r0, #4
	bhi _08095DE8
	movs r0, #0
	b _08095DEA
	.align 2, 0
_08095DE4: .4byte gUnknown_080D8BD8
_08095DE8:
	movs r0, #1
_08095DEA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8095DF8
sub_8095DF8: @ 0x08095DF8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x1f]
	ldr r4, _08095E80 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r2, #0x28]
	cmp r0, #2
	bne _08095E46
	ldr r1, _08095E84 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08095E24
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r5, [r2, #0x26]
	adds r0, r0, r5
	strh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_08095E24:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _08095E46
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r1, #1
	strh r1, [r2, #0x28]
	lsls r0, r0, #8
	strh r0, [r2, #0x26]
	lsls r1, r3, #4
	lsls r0, r3, #3
	adds r0, #0x80
	adds r1, r1, r0
	strh r1, [r4, #6]
_08095E46:
	ldrh r0, [r2, #0x28]
	cmp r0, #1
	bne _08095E76
	ldr r1, _08095E84 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08095E64
	ldr r3, _08095E88 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r5, [r2, #0x26]
	adds r0, r0, r5
	strh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_08095E64:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08095E76
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r2, #0x28]
_08095E76:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08095E80: .4byte gBgScrollRegs
_08095E84: .4byte gBldRegs
_08095E88: .4byte 0xFFFFFF00

	thumb_func_start sub_8095E8C
sub_8095E8C: @ 0x08095E8C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08095EEC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldrh r1, [r5, #0x1e]
	ldr r0, _08095EF0 @ =0x00000603
	cmp r1, r0
	bne _08095EBA
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08095EBA:
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	adds r0, #0x69
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x74]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095EEC: .4byte 0xFFFFFBFF
_08095EF0: .4byte 0x00000603

	thumb_func_start sub_8095EF4
sub_8095EF4: @ 0x08095EF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08095FBC @ =gUnknown_080D8BE2
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldrb r1, [r6, #0x1e]
	ldrb r2, [r6, #0x1f]
	movs r3, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x18]
_08095F26:
	movs r1, #0
	mov r8, r1
	lsls r0, r3, #1
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r2, _08095FC0 @ =0x0000054C
	adds r1, r6, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #4
	bhi _08095F46
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08095FC4
_08095F46:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	adds r3, #1
	str r3, [sp, #0x24]
	mov sl, r7
	adds r2, r2, r7
	str r2, [sp, #0x2c]
_08095F62:
	cmp r4, #1
	beq _08095F6A
	cmp r4, #3
	bne _08095F74
_08095F6A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08095F74:
	mov r3, sp
	adds r0, r3, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	mov r3, sl
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095F62
	b _08096058
	.align 2, 0
_08095FBC: .4byte gUnknown_080D8BE2
_08095FC0: .4byte 0x0000054C
_08095FC4:
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x20]
	lsls r0, r3, #2
	adds r1, r3, #1
	str r1, [sp, #0x24]
	str r7, [sp, #0x1c]
	adds r2, r2, r7
	mov sl, r2
	adds r0, r0, r3
	lsls r0, r0, #1
	str r0, [sp, #0x2c]
_08095FEA:
	ldr r3, [sp, #0x20]
	adds r2, r3, r4
	lsls r0, r4, #1
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	adds r0, r0, r3
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r3, _080960AC @ =0x00000556
	adds r1, r6, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	cmp r4, #1
	beq _0809601E
	cmp r4, #3
	bne _08096028
_0809601E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08096028:
	ldr r3, [sp, #0x1c]
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	mov r1, sl
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095FEA
_08096058:
	ldr r3, _080960B0 @ =0x0000043C
	adds r2, r6, r3
	adds r5, r5, r7
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xb3
	strh r0, [r2, #0x10]
	mov r0, sb
	adds r4, r0, r7
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r1, _080960B4 @ =0x00000464
	adds r2, r6, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xce
	strh r0, [r2, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _0809609A
	b _08095F26
_0809609A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080960AC: .4byte 0x00000556
_080960B0: .4byte 0x0000043C
_080960B4: .4byte 0x00000464

	thumb_func_start sub_80960B8
sub_80960B8: @ 0x080960B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r1, [r6]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	ldrb r0, [r6, #0x1e]
	str r0, [sp]
	ldrb r1, [r6, #0x1f]
	mov sl, r1
	movs r2, #0
	mov sb, r2
_080960DC:
	mov r3, sb
	lsls r1, r3, #1
	ldr r2, [sp]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _080961D0 @ =0x0000054C
	adds r0, r6, r1
	mov r2, r8
	adds r7, r0, r2
	ldrb r0, [r7]
	cmp r0, #4
	bhi _080961C0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	mov r0, sb
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0x78
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #8
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	adds r5, r6, #0
	adds r5, #0x7c
	adds r5, r5, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r3, _080961D4 @ =0x00000414
	adds r2, r6, r3
	ldr r1, _080961D8 @ =gUnknown_080D8B44
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, _080961DC @ =gUnknown_080D8BE7
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	orrs r0, r3
	ldrb r7, [r7]
	adds r0, r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, _080961E0 @ =0x0000054D
	adds r0, r6, r2
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	adds r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #4
	bls _080960DC
_080961C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080961D0: .4byte 0x0000054C
_080961D4: .4byte 0x00000414
_080961D8: .4byte gUnknown_080D8B44
_080961DC: .4byte gUnknown_080D8BE7
_080961E0: .4byte 0x0000054D

	thumb_func_start sub_80961E4
sub_80961E4: @ 0x080961E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08096238 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809623C @ =Task_8094740
	ldr r1, _08096240 @ =0x00000BDC
	ldr r2, _08096244 @ =0x00000101
	ldr r3, _08096248 @ =sub_809684C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	strb r5, [r4, #3]
	adds r0, r4, #0
	bl sub_80947EC
	adds r0, r4, #0
	bl sub_8094924
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0809622E
	bl m4aMPlayAllStop
	movs r0, #0x47      @ MUS_TIME_ATTACK_1
	bl m4aSongNumStart
_0809622E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08096238: .4byte gDispCnt
_0809623C: .4byte Task_8094740
_08096240: .4byte 0x00000BDC
_08096244: .4byte 0x00000101
_08096248: .4byte sub_809684C

	thumb_func_start sub_809624C
sub_809624C: @ 0x0809624C
	push {r4, lr}
	ldr r0, _0809626C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08096270
	adds r0, r4, #0
	bl sub_809673C
	b _08096276
	.align 2, 0
_0809626C: .4byte gCurTask
_08096270:
	adds r0, r4, #0
	bl sub_8096758
_08096276:
	adds r0, r4, #0
	bl sub_8096714
	adds r0, r4, #0
	bl sub_8095CB4
	cmp r0, #1
	bne _080962A4
	movs r0, #0
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_8096714
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0809629C
	movs r0, #3
	strb r0, [r4, #0x1e]
_0809629C:
	ldr r0, _080962AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080962B0 @ =sub_8095210
	str r0, [r1, #8]
_080962A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080962AC: .4byte gCurTask
_080962B0: .4byte sub_8095210

	thumb_func_start sub_80962B4
sub_80962B4: @ 0x080962B4
	push {r4, lr}
	ldr r0, _080962D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080962D8
	adds r0, r4, #0
	bl sub_809673C
	b _080962DE
	.align 2, 0
_080962D4: .4byte gCurTask
_080962D8:
	adds r0, r4, #0
	bl sub_8096758
_080962DE:
	adds r0, r4, #0
	bl sub_8096714
	adds r0, r4, #0
	bl sub_8096490
	cmp r0, #1
	bne _080962FC
	adds r0, r4, #0
	bl sub_8096714
	ldr r0, _08096304 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08096308 @ =sub_8095764
	str r0, [r1, #8]
_080962FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096304: .4byte gCurTask
_08096308: .4byte sub_8095764

	thumb_func_start sub_809630C
sub_809630C: @ 0x0809630C
	push {r4, r5, lr}
	ldr r0, _0809634C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x30]
	ldr r0, _08096350 @ =0x00007BFF
	cmp r1, r0
	ble _0809632E
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0809632E
	adds r0, r4, #0
	bl sub_8095DF8
_0809632E:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08096354
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096814
	adds r0, r4, #0
	bl sub_8096774
	b _0809635A
	.align 2, 0
_0809634C: .4byte gCurTask
_08096350: .4byte 0x00007BFF
_08096354:
	adds r0, r4, #0
	bl sub_8096758
_0809635A:
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8095E8C
	adds r0, r4, #0
	bl sub_8096520
	adds r0, r4, #0
	bl sub_8096520
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_80967DC
	adds r0, r4, #0
	bl sub_8095EF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8095980
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8096398
sub_8096398: @ 0x08096398
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080963CE
	ldr r1, [r2, #0x30]
	ldr r3, _080963D4 @ =0x000077FF
	cmp r1, r3
	bgt _080963C4
	ldrh r0, [r2, #0x20]
	adds r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r2, #0x30]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	cmp r0, r3
	ble _080963C4
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x30]
_080963C4:
	ldr r1, [r2, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	beq _080963D8
_080963CE:
	movs r0, #0
	b _080963DA
	.align 2, 0
_080963D4: .4byte 0x000077FF
_080963D8:
	movs r0, #1
_080963DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80963E0
sub_80963E0: @ 0x080963E0
	push {r4, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #4]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08096416
	ldr r0, [r2, #0x30]
	ldr r3, _0809641C @ =0xFFFFCE00
	cmp r0, r3
	blt _0809640C
	ldrh r1, [r2, #0x20]
	adds r1, #1
	lsls r1, r1, #8
	subs r1, r0, r1
	str r1, [r2, #0x30]
	movs r0, #0x50
	subs r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	cmp r1, r3
	bgt _0809640C
	str r3, [r2, #0x30]
_0809640C:
	ldr r1, [r2, #0x30]
	str r1, [r2, #0x38]
	ldr r0, _0809641C @ =0xFFFFCE00
	cmp r1, r0
	beq _08096420
_08096416:
	movs r0, #0
	b _08096422
	.align 2, 0
_0809641C: .4byte 0xFFFFCE00
_08096420:
	movs r0, #1
_08096422:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8096428
sub_8096428: @ 0x08096428
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #4]
	ldr r1, [r2, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0809647A
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0809645E
	movs r0, #0x50
	subs r0, r0, r3
	lsls r1, r0, #8
	ldr r3, [r2, #0x34]
	cmp r3, r1
	ble _0809647A
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	subs r0, r3, r0
	str r0, [r2, #0x34]
	cmp r0, r1
	bgt _0809647A
	str r1, [r2, #0x34]
	b _0809647A
_0809645E:
	ldr r1, [r2, #0x34]
	movs r3, #0xa0
	lsls r3, r3, #7
	cmp r1, r3
	bgt _0809647A
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r2, #0x34]
	ldr r1, _0809648C @ =0x00004FFF
	cmp r0, r1
	ble _0809647A
	str r3, [r2, #0x34]
_0809647A:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	pop {r0}
	bx r0
	.align 2, 0
_0809648C: .4byte 0x00004FFF

	thumb_func_start sub_8096490
sub_8096490: @ 0x08096490
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #4]
	movs r5, #0
	ldr r0, [r2, #0x30]
	movs r3, #0xf0
	lsls r3, r3, #7
	cmp r0, r3
	ble _080964BC
	ldrh r1, [r2, #0x20]
	adds r1, #7
	lsls r1, r1, #8
	subs r1, r0, r1
	str r1, [r2, #0x30]
	movs r0, #0x8c
	subs r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	cmp r1, r3
	bgt _080964D8
	str r3, [r2, #0x30]
	b _080964D8
_080964BC:
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	ldr r1, [r2, #0x34]
	subs r1, r1, r0
	str r1, [r2, #0x34]
	str r3, [r2, #0x30]
	movs r0, #0x50
	subs r0, r0, r4
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080964D8
	str r0, [r2, #0x34]
	movs r5, #1
_080964D8:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	cmp r5, #0
	bne _080964EE
	movs r0, #0
	b _080964F0
_080964EE:
	movs r0, #1
_080964F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80964F8
sub_80964F8: @ 0x080964F8
	ldr r2, [r0, #0x58]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r2, r1
	str r2, [r0, #0x58]
	ldr r1, [r0, #0x5c]
	ldr r3, _08096518 @ =0xFFFFFE80
	adds r1, r1, r3
	str r1, [r0, #0x5c]
	ldr r0, _0809651C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0]
	asrs r1, r1, #8
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08096518: .4byte 0xFFFFFE80
_0809651C: .4byte gBgScrollRegs

	thumb_func_start sub_8096520
sub_8096520: @ 0x08096520
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x68]
	subs r0, #0x20
	str r0, [r2, #0x68]
	ldr r1, _08096550 @ =0x00007FFF
	cmp r0, r1
	bgt _08096536
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r2, #0x68]
_08096536:
	ldr r0, [r2, #0x70]
	adds r0, #0x20
	str r0, [r2, #0x70]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809654A
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r2, #0x70]
_0809654A:
	pop {r0}
	bx r0
	.align 2, 0
_08096550: .4byte 0x00007FFF

	thumb_func_start sub_8096554
sub_8096554: @ 0x08096554
	push {lr}
	adds r2, r0, #0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08096574
	ldr r0, [r2, #0x64]
	adds r0, #0x80
	str r0, [r2, #0x64]
	movs r1, #0x94
	lsls r1, r1, #6
	cmp r0, r1
	ble _08096584
	movs r0, #0x80
	lsls r0, r0, #6
	b _08096582
_08096574:
	ldr r0, [r2, #0x64]
	subs r0, #0x80
	str r0, [r2, #0x64]
	ldr r1, _08096588 @ =0xFFFFF300
	cmp r0, r1
	bge _08096584
	ldr r0, _0809658C @ =0xFFFFF800
_08096582:
	str r0, [r2, #0x64]
_08096584:
	pop {r0}
	bx r0
	.align 2, 0
_08096588: .4byte 0xFFFFF300
_0809658C: .4byte 0xFFFFF800

	thumb_func_start sub_8096590
sub_8096590: @ 0x08096590
	push {r4, r5, lr}
	mov ip, r0
	movs r4, #0
	movs r3, #0
	movs r5, #0
	ldr r2, _080965F8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080965FC @ =gHBlankCopyTarget
	ldr r0, _08096600 @ =0x04000018
	str r0, [r1]
	ldr r1, _08096604 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08096608 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
_080965B4:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x78
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, #0xf
	cmp r0, #0xf0
	ble _080965C8
	movs r0, #0xf0
_080965C8:
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r2, #2
	cmp r4, #3
	bls _080965E4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x18
	bne _080965E4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0
_080965E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _080965B4
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080965F8: .4byte gFlags
_080965FC: .4byte gHBlankCopyTarget
_08096600: .4byte 0x04000018
_08096604: .4byte gHBlankCopySize
_08096608: .4byte gBgOffsetsHBlankPrimary

	thumb_func_start sub_809660C
sub_809660C: @ 0x0809660C
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r3, r1]
	movs r1, #0x8c
	cmp r0, #0
	bne _0809661E
	movs r1, #0x7c
_0809661E:
	lsls r4, r1, #8
	ldr r0, [r3, #0x30]
	cmp r0, r4
	bgt _0809664C
	ldrh r2, [r3, #0x20]
	adds r2, #8
	lsls r2, r2, #8
	adds r2, r0, r2
	str r2, [r3, #0x30]
	ldrh r1, [r3, #0x20]
	adds r1, #8
	lsls r1, r1, #8
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	cmp r2, r4
	ble _0809664C
	str r4, [r3, #0x30]
	movs r2, #0xa8
	lsls r2, r2, #6
	adds r0, r4, r2
	str r0, [r3, #0x48]
	movs r5, #1
_0809664C:
	ldr r1, [r3, #0x30]
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r3, #0x38]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08096664
	movs r2, #0x84
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r3, #0x38]
_08096664:
	ldr r0, [r3, #0x34]
	str r0, [r3, #0x3c]
	cmp r5, #0
	bne _08096670
	movs r0, #0
	b _08096672
_08096670:
	movs r0, #1
_08096672:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8096678
sub_8096678: @ 0x08096678
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #4]
	ldr r2, [r3, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r2, r1
	ble _080966BC
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r3, #0x2c]
	cmp r0, r1
	bgt _08096696
	str r1, [r3, #0x2c]
_08096696:
	lsls r1, r4, #8
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	ldr r2, [r3, #0x2c]
	asrs r1, r2, #1
	subs r0, r0, r1
	str r0, [r3, #0x54]
	ldr r3, _080966B8 @ =gWinRegs
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	strh r1, [r3, #4]
	movs r0, #0
	b _080966BE
	.align 2, 0
_080966B8: .4byte gWinRegs
_080966BC:
	movs r0, #1
_080966BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80966C4
sub_80966C4: @ 0x080966C4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #4]
	ldr r2, [r3, #0x2c]
	ldr r1, _08096704 @ =0x00009FFF
	cmp r2, r1
	bgt _0809670C
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r3, #0x2c]
	cmp r0, r1
	ble _080966E4
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r3, #0x2c]
_080966E4:
	lsls r1, r4, #8
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	ldr r2, [r3, #0x2c]
	asrs r1, r2, #1
	subs r0, r0, r1
	str r0, [r3, #0x54]
	ldr r3, _08096708 @ =gWinRegs
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	strh r1, [r3, #4]
	movs r0, #0
	b _0809670E
	.align 2, 0
_08096704: .4byte 0x00009FFF
_08096708: .4byte gWinRegs
_0809670C:
	movs r0, #1
_0809670E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8096714
sub_8096714: @ 0x08096714
	ldrb r2, [r0, #4]
	lsls r2, r2, #8
	ldr r1, [r0, #0x34]
	adds r1, r1, r2
	ldr r2, _08096734 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x54]
	ldr r3, _08096738 @ =gWinRegs
	asrs r1, r1, #8
	lsls r2, r1, #8
	adds r2, r2, r1
	ldr r0, [r0, #0x2c]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_08096734: .4byte 0xFFFFF400
_08096738: .4byte gWinRegs

	thumb_func_start sub_809673C
sub_809673C: @ 0x0809673C
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa4
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x34]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096758
sub_8096758: @ 0x08096758
	push {lr}
	adds r2, r0, #0
	adds r2, #0xcc
	ldr r1, [r0, #0x38]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x3c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096774
sub_8096774: @ 0x08096774
	push {lr}
	adds r2, r0, #0
	adds r2, #0xf4
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x4c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096790
sub_8096790: @ 0x08096790
	push {r4, lr}
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x60]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r2, [r0, #0x64]
	asrs r2, r2, #8
	strh r2, [r4, #0x12]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r4, #0x12]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080967BE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080967C4
_080967BE:
	ldr r0, [r4, #8]
	ldr r1, _080967D8 @ =0xFFFFF7FF
	ands r0, r1
_080967C4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080967D8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80967DC
sub_80967DC: @ 0x080967DC
	push {r4, lr}
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	adds r1, #0x19
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x34]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	ldr r1, _08096810 @ =sAnimsTimeAttackDigits
	ldrb r0, [r0, #0x1f]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096810: .4byte sAnimsTimeAttackDigits

	thumb_func_start sub_8096814
sub_8096814: @ 0x08096814
	push {r4, lr}
	ldrb r2, [r0, #0x1e]
	movs r1, #0xca
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	adds r1, #0x2d
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x4c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, _08096848 @ =sAnimsTimeAttackDigits
	ldrb r0, [r0, #2]
	adds r2, r2, r0
	strb r2, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096848: .4byte sAnimsTimeAttackDigits
    
	thumb_func_start sub_809684C
sub_809684C: @ 0x0809684C
	bx lr
	.align 2, 0

	thumb_func_start CreateVsRecordScreen
CreateVsRecordScreen: @ 0x08096850
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _080968EC @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080968F0 @ =sub_8096FA8
	ldr r1, _080968F4 @ =0x00000FB8
	ldr r2, _080968F8 @ =0x00000101
	ldr r3, _080968FC @ =sub_8097C50
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8096B30
	adds r0, r5, #0
	bl sub_8096918
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, _08096900 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _08096904 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _08096908 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _0809690C @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _08096910 @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x40
	strb r3, [r0, #3]
	movs r1, #3
	strb r1, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	subs r1, #4
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	adds r0, r5, #0
	bl sub_8096EB8
	adds r0, r5, #0
	bl sub_8096C60
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _08096914 @ =gBgPalette
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080968EC: .4byte gDispCnt
_080968F0: .4byte sub_8096FA8
_080968F4: .4byte 0x00000FB8
_080968F8: .4byte 0x00000101
_080968FC: .4byte sub_8097C50
_08096900: .4byte 0x040000D4
_08096904: .4byte gBgCntRegs
_08096908: .4byte 0x85000010
_0809690C: .4byte gBgSprites_Unknown1
_08096910: .4byte gBgSprites_Unknown2
_08096914: .4byte gBgPalette

	thumb_func_start sub_8096918
sub_8096918: @ 0x08096918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r3, #0
_08096928:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080969A8 @ =gLoadedSaveGame
	adds r0, r0, r1
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096940
	ldrb r0, [r7, #0x1b]
	adds r0, #1
	strb r0, [r7, #0x1b]
_08096940:
	movs r5, #0
	movs r2, #0xc2
	adds r2, r2, r7
	mov sl, r2
	adds r0, r7, #0
	adds r0, #0xc3
	str r0, [sp, #4]
	adds r1, r7, #0
	adds r1, #0xc4
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0xc5
	str r2, [sp, #0xc]
	adds r0, #3
	str r0, [sp, #0x10]
	adds r1, #3
	str r1, [sp, #0x14]
	adds r2, r3, #1
	str r2, [sp]
	adds r6, r7, #0
	adds r6, #0x3e
	ldr r0, _080969A8 @ =gLoadedSaveGame
	adds r0, #0x68
	mov ip, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	mov sb, r0
	subs r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0xd
	adds r4, r0, r3
_08096988:
	cmp r3, #0
	bne _080969AC
	lsls r1, r5, #1
	adds r2, r7, #0
	adds r2, #0x2c
	adds r2, r2, r1
	ldr r0, _080969A8 @ =gLoadedSaveGame
	adds r0, #4
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r6, r1
	add r1, ip
	ldrh r0, [r1]
	strh r0, [r2]
	b _080969CC
	.align 2, 0
_080969A8: .4byte gLoadedSaveGame
_080969AC:
	lsls r0, r5, #1
	mov r2, sb
	adds r1, r0, r2
	adds r1, r6, r1
	add r0, r8
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08096A90 @ =0x0000FFFF
	cmp r0, r1
	beq _080969CC
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080969CC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08096988
	cmp r3, #0
	bne _08096A9C
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x75
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	mov r2, sl
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x76
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x77
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x60
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r7, #0
	adds r1, #0x38
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r7, #0
	adds r1, #0x39
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x61
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r7, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r7, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldr r2, _08096A98 @ =gLoadedSaveGame + 0x62
	ldrb r0, [r2]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r7, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r1, _08096A98 @ =gLoadedSaveGame + 0x62
	ldrb r0, [r1]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r7, #0
	adds r1, #0x3d
	strb r0, [r1]
	b _08096B0E
	.align 2, 0
_08096A90: .4byte 0x0000FFFF
_08096A94: .4byte gLoadedSaveGame
_08096A98: .4byte gLoadedSaveGame + 0x62
_08096A9C:
	lsls r4, r3, #1
	adds r4, r4, r3
	lsls r4, r4, #1
	mov r2, sl
	adds r5, r2, r4
	subs r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08096B2C @ =gLoadedSaveGame
	adds r0, r0, r1
	mov r8, r0
	mov r6, r8
	adds r6, #0x75
	ldrb r0, [r6]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5]
	ldr r2, [sp, #4]
	adds r5, r2, r4
	ldrb r0, [r6]
	movs r1, #0xa
	bl __umodsi3
	strb r0, [r5]
	ldr r0, [sp, #8]
	adds r5, r0, r4
	adds r6, #1
	ldrb r0, [r6]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5]
	ldr r1, [sp, #0xc]
	adds r5, r1, r4
	ldrb r0, [r6]
	movs r1, #0xa
	bl __umodsi3
	strb r0, [r5]
	ldr r2, [sp, #0x10]
	adds r6, r2, r4
	mov r5, r8
	adds r5, #0x77
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r6]
	ldr r0, [sp, #0x14]
	adds r4, r0, r4
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	strb r0, [r4]
_08096B0E:
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bhi _08096B1A
	b _08096928
_08096B1A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096B2C: .4byte gLoadedSaveGame

	thumb_func_start sub_8096B30
sub_8096B30: @ 0x08096B30
	push {lr}
	mov ip, r0
	ldr r0, _08096C4C @ =gLoadedSaveGame
	ldr r1, _08096C50 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	mov r2, ip
	strb r0, [r2]
	movs r0, #0
	strh r1, [r2, #0x1c]
	strh r1, [r2, #0x28]
	strh r1, [r2, #0x2a]
	strb r0, [r2, #1]
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	strh r1, [r2, #0x1e]
	strb r0, [r2, #5]
	strb r0, [r2, #2]
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x1a]
	strb r0, [r2, #0xc]
	strb r0, [r2, #0x1b]
	adds r2, #6
_08096B60:
	adds r0, r2, r1
	strb r1, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08096B60
	movs r1, #0
	mov r2, ip
	adds r2, #0xd
	movs r3, #0
_08096B76:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xa
	bls _08096B76
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, ip
	movs r3, #0xc8
	lsls r3, r3, #7
	str r3, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, ip
	movs r2, #0x96
	lsls r2, r2, #7
	str r2, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xb6
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, ip
	str r2, [r0]
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xbc
	lsls r0, r0, #7
	str r0, [r1]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x98
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0
	mov r1, ip
	strh r0, [r1, #0x24]
	strh r0, [r1, #0x26]
	movs r1, #0x9c
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08096C54 @ =0xFFFF7400
	str r0, [r1]
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08096C58 @ =0xFFFFEA00
	str r0, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, ip
	str r3, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r1]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	str r2, [r0]
	movs r1, #0xa6
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08096C5C @ =0x06010000
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08096C4C: .4byte gLoadedSaveGame
_08096C50: .4byte 0x00000366
_08096C54: .4byte 0xFFFF7400
_08096C58: .4byte 0xFFFFEA00
_08096C5C: .4byte 0x06010000

	thumb_func_start sub_8096C60
sub_8096C60: @ 0x08096C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldrb r5, [r0]
	movs r7, #0xa8
	lsls r7, r7, #1
	add r7, sl
	movs r6, #0x82
	lsls r6, r6, #1
	add r6, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r2, _08096DB4 @ =gUnknown_080D8BF4
	lsls r5, r5, #3
	adds r0, r2, #4
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r2, r5, r2
	ldrh r0, [r2]
	movs r1, #0
	mov sb, r1
	movs r4, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	adds r0, #0x39
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r7, _08096DB8 @ =0x00000E98
	add r7, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r2, _08096DBC @ =gUnknown_080D8C6C
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r1, r8
	strb r1, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xec
	lsls r7, r7, #4
	add r7, sl
	ldr r0, _08096DC0 @ =0x06004000
	str r0, [r7]
	ldr r0, _08096DC4 @ =gUnknown_080D8C24
	adds r5, r5, r0
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strh r4, [r7, #0x10]
	movs r0, #8
	strh r0, [r7, #0x12]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r1, r8
	strb r1, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r7, #0
	bl sub_80BE46C
	movs r6, #0x82
	lsls r6, r6, #1
	add r6, sl
	ldr r3, _08096DC8 @ =gUnknown_080D8C5C
	movs r5, #0
	ldr r0, [r3, #4]
	lsls r0, r0, #5
	mov r8, r0
_08096D7A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, sl
	adds r7, r1, r0
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6]
	add r0, r8
	str r0, [r6]
	lsls r1, r4, #1
	mov r0, sl
	adds r0, #0x2c
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #0
	ldr r0, _08096DCC @ =0x0000FFFF
	cmp r2, r0
	beq _08096DE4
	cmp r2, #0xff
	bls _08096DD4
	strb r1, [r7, #0x1a]
	ldr r0, _08096DD0 @ =gUnknown_080D8C64
	ldrh r0, [r0]
	b _08096DD8
	.align 2, 0
_08096DB4: .4byte gUnknown_080D8BF4
_08096DB8: .4byte 0x00000E98
_08096DBC: .4byte gUnknown_080D8C6C
_08096DC0: .4byte 0x06004000
_08096DC4: .4byte gUnknown_080D8C24
_08096DC8: .4byte gUnknown_080D8C5C
_08096DCC: .4byte 0x0000FFFF
_08096DD0: .4byte gUnknown_080D8C64
_08096DD4:
	strb r1, [r7, #0x1a]
	ldrh r0, [r3]
_08096DD8:
	strh r0, [r7, #0xc]
	mov r1, sl
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	b _08096DEA
_08096DE4:
	strb r5, [r7, #0x1a]
	ldrh r0, [r3]
	strh r0, [r7, #0xc]
_08096DEA:
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	lsls r0, r4, #3
	adds r0, #0x12
	strh r0, [r7, #0x10]
	movs r0, #0x45
	strh r0, [r7, #0x12]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	strh r5, [r7, #0x14]
	movs r0, #0x80
	str r0, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #5
	bls _08096D7A
	movs r4, #0
	mov r0, sl
	adds r0, #0x38
	str r0, [sp]
	movs r5, #0x82
	lsls r5, r5, #1
	add r5, sl
	ldr r2, _08096EB4 @ =gUnknown_080D8C54
	movs r6, #0
	ldrb r1, [r2, #2]
	mov sb, r1
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	mov r8, r0
_08096E38:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r1, sl
	adds r7, r1, r0
	ldr r0, [r5]
	str r0, [r7]
	ldr r0, [r5]
	add r0, r8
	str r0, [r5]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldr r1, [sp]
	adds r0, r1, r4
	ldrb r0, [r0]
	add r0, sb
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	adds r0, #0x11
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r4, #3
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0xe]
	strh r6, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	strh r6, [r7, #0x14]
	movs r0, #0x80
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #4]
	cmp r4, #5
	bls _08096E38
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096EB4: .4byte gUnknown_080D8C54

	thumb_func_start sub_8096EB8
sub_8096EB8: @ 0x08096EB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	ldr r6, _08096F6C @ =gBgCntRegs
	movs r0, #0
	mov sb, r0
	movs r4, #0
	ldr r0, _08096F70 @ =0x00000602
	strh r0, [r6]
	ldr r5, _08096F74 @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	ldr r0, _08096F78 @ =0x00000F38
	add r0, r8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08096F7C @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08096F80 @ =0x0000015F
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _08096F84 @ =0x00000F62
	add r1, r8
	mov r2, sb
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08096F88 @ =0x00001007
	strh r0, [r6, #2]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	ldr r0, _08096F8C @ =0x00001E0D
	strh r0, [r6, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	ldr r0, _08096F90 @ =0x00000F78
	add r0, r8
	ldr r1, _08096F94 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08096F98 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xb2
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r1, _08096F9C @ =0x00000FA2
	add r1, r8
	mov r2, sb
	strb r2, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r1, _08096FA0 @ =gWinRegs
	mov r2, r8
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #8
	ldr r2, _08096FA4 @ =0x00003C3C
	adds r0, r0, r2
	strh r0, [r1, #4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08096F6C: .4byte gBgCntRegs
_08096F70: .4byte 0x00000602
_08096F74: .4byte gBgScrollRegs
_08096F78: .4byte 0x00000F38
_08096F7C: .4byte 0x06003000
_08096F80: .4byte 0x0000015F
_08096F84: .4byte 0x00000F62
_08096F88: .4byte 0x00001007
_08096F8C: .4byte 0x00001E0D
_08096F90: .4byte 0x00000F78
_08096F94: .4byte 0x0600C000
_08096F98: .4byte 0x0600F000
_08096F9C: .4byte 0x00000FA2
_08096FA0: .4byte gWinRegs
_08096FA4: .4byte 0x00003C3C

	thumb_func_start sub_8096FA8
sub_8096FA8: @ 0x08096FA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08097034 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r4, [r3, #0x19]
	adds r0, r4, #3
	cmp r4, r0
	bge _080970AA
	ldr r0, _08097038 @ =0x0300003E
	adds r0, r1, r0
	str r0, [sp]
	ldr r7, _0809703C @ =0x03000104
	adds r7, r1, r7
	str r7, [sp, #8]
	ldr r6, _08097040 @ =gUnknown_080D8C5C
_08096FD6:
	movs r5, #0
	lsls r0, r4, #4
	lsls r1, r4, #1
	mov sb, r1
	adds r7, r4, #1
	mov sl, r7
	subs r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08097044 @ =0x000008F8
	adds r0, r0, r1
	adds r0, r0, r3
	mov r8, r0
_08096FEE:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r7, r8
	adds r2, r7, r0
	ldr r1, [sp, #8]
	ldr r0, [r1]
	str r0, [r2]
	ldr r1, [r6, #4]
	lsls r1, r1, #5
	ldr r7, [sp, #8]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	lsls r1, r5, #1
	mov r7, sb
	adds r0, r7, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [sp]
	adds r1, r0, r1
	ldrh r1, [r1]
	adds r0, r1, #0
	ldr r7, _08097048 @ =0x0000FFFF
	cmp r0, r7
	beq _0809705C
	cmp r0, #0xff
	bls _08097050
	ldrb r0, [r6, #2]
	adds r0, r1, r0
	strb r0, [r2, #0x1a]
	ldr r0, _0809704C @ =gUnknown_080D8C64
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	b _08097064
	.align 2, 0
_08097034: .4byte gCurTask
_08097038: .4byte 0x0300003E
_0809703C: .4byte 0x03000104
_08097040: .4byte gUnknown_080D8C5C
_08097044: .4byte 0x000008F8
_08097048: .4byte 0x0000FFFF
_0809704C: .4byte gUnknown_080D8C64
_08097050:
	ldrb r0, [r6, #2]
	adds r0, r1, r0
	strb r0, [r2, #0x1a]
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	b _08097064
_0809705C:
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
_08097064:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	lsls r0, r5, #3
	adds r0, #0x12
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #0x45
	strh r0, [r2, #0x12]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	movs r0, #0x82
	lsls r0, r0, #6
	str r0, [r2, #8]
	adds r0, r2, #0
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #4]
	cmp r5, #5
	bls _08096FEE
	mov r7, sl
	lsls r0, r7, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r3, #0x19]
	adds r0, #3
	cmp r4, r0
	blt _08096FD6
_080970AA:
	ldrb r0, [r3, #0x19]
	adds r0, r4, r0
	strb r0, [r3, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080970C4
	movs r0, #0
	strb r0, [r3, #0x19]
	ldr r0, _080970D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080970D8 @ =sub_80970DC
	str r0, [r1, #8]
_080970C4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080970D4: .4byte gCurTask
_080970D8: .4byte sub_80970DC

	thumb_func_start sub_80970DC
sub_80970DC: @ 0x080970DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080971E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r4, [r6, #0x19]
	adds r0, r4, #3
	cmp r4, r0
	bge _080971C0
	ldr r0, _080971EC @ =0x030000C2
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _080971F0 @ =0x03000104
	adds r2, r1, r2
	str r2, [sp, #0x10]
	ldr r7, _080971F4 @ =gUnknown_080D8C54
	mov sl, r7
	mov r0, sl
	ldrb r1, [r0, #2]
	mov r0, sp
	strb r1, [r0]
_08097114:
	movs r5, #0
	lsls r2, r4, #1
	mov sb, r2
	adds r7, r4, #1
	str r7, [sp, #8]
	lsls r3, r4, #4
	subs r0, r3, r4
	lsls r0, r0, #4
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r6
	mov r8, r0
_0809712E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	add r0, r8
	ldr r2, [sp, #0x10]
	ldr r1, [r2]
	str r1, [r0]
	mov r7, sl
	ldr r2, [r7, #4]
	lsls r2, r2, #5
	ldr r7, [sp, #0x10]
	ldr r1, [r7]
	adds r1, r1, r2
	str r1, [r7]
	mov r2, sl
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r7, sb
	adds r1, r7, r4
	lsls r1, r1, #1
	adds r1, r5, r1
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldrb r1, [r1]
	mov r7, sp
	ldrb r7, [r7]
	adds r1, r7, r1
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	lsls r2, r5, #3
	adds r1, r1, r2
	strh r1, [r0, #0x10]
	movs r7, #0x8a
	lsls r7, r7, #1
	adds r1, r6, r7
	ldr r1, [r1]
	asrs r1, r1, #8
	adds r1, r1, r3
	strh r1, [r0, #0x12]
	movs r1, #0
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	movs r1, #0x82
	lsls r1, r1, #6
	str r1, [r0, #8]
	str r3, [sp, #0xc]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r5, #5
	bls _0809712E
	ldr r7, [sp, #8]
	lsls r0, r7, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r6, #0x19]
	adds r0, #3
	cmp r4, r0
	blt _08097114
_080971C0:
	ldrb r0, [r6, #0x19]
	adds r0, r4, r0
	strb r0, [r6, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080971D6
	ldr r0, _080971E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080971F8 @ =sub_80971FC
	str r0, [r1, #8]
_080971D6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080971E8: .4byte gCurTask
_080971EC: .4byte 0x030000C2
_080971F0: .4byte 0x03000104
_080971F4: .4byte gUnknown_080D8C54
_080971F8: .4byte sub_80971FC

	thumb_func_start sub_80971FC
sub_80971FC: @ 0x080971FC
	push {r4, r5, r6, r7, lr}
	ldr r6, _0809728C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r5, [r4, #0x2a]
	cmp r5, #0
	bne _08097240
	ldr r3, _08097290 @ =gBldRegs
	ldr r0, _08097294 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _08097298 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809729C @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080972A0 @ =0x00003336
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x28]
	movs r0, #1
	strh r0, [r4, #0x2a]
_08097240:
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097C28
	ldr r2, _0809729C @ =gWinRegs
	ldr r1, _080972A4 @ =0x00003C3C
	adds r0, r1, #0
	ldrh r3, [r4, #0x1e]
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r2, #4]
	ldr r1, _08097290 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080972B4
	ldrh r0, [r4, #0x28]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r7, _080972A8 @ =0xFFFFFF00
	adds r0, r7, #0
	ldrh r1, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r4, #0x28]
	ldr r1, _080972AC @ =gBgScrollRegs
	ldr r0, _080972B0 @ =0x0000FF9C
	strh r0, [r1, #4]
	adds r0, #0x36
	strh r0, [r1, #6]
	b _080972DA
	.align 2, 0
_0809728C: .4byte gCurTask
_08097290: .4byte gBldRegs
_08097294: .4byte 0x00003FFF
_08097298: .4byte gDispCnt
_0809729C: .4byte gWinRegs
_080972A0: .4byte 0x00003336
_080972A4: .4byte 0x00003C3C
_080972A8: .4byte 0xFFFFFF00
_080972AC: .4byte gBgScrollRegs
_080972B0: .4byte 0x0000FF9C
_080972B4:
	strh r0, [r1, #4]
	ldr r0, _080972E0 @ =0x00003316
	strh r0, [r2, #8]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1, #2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, _080972E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r6]
	ldr r0, _080972E8 @ =sub_809738C
	str r0, [r1, #8]
_080972DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080972E0: .4byte 0x00003316
_080972E4: .4byte gDispCnt
_080972E8: .4byte sub_809738C

	thumb_func_start sub_80972EC
sub_80972EC: @ 0x080972EC
	push {r4, r5, r6, lr}
	ldr r5, _0809735C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08097328
	ldr r1, _08097360 @ =gBldRegs
	movs r3, #0
	ldr r0, _08097364 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _08097368 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809736C @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _08097370 @ =0x00003332
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x28]
	strh r3, [r4, #0x2a]
_08097328:
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097C28
	ldr r1, _08097360 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08097374
	ldrh r0, [r4, #0x28]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r6, [r4, #0x28]
	adds r0, r0, r6
	strh r0, [r4, #0x28]
	b _08097384
	.align 2, 0
_0809735C: .4byte gCurTask
_08097360: .4byte gBldRegs
_08097364: .4byte 0x00003FFF
_08097368: .4byte gDispCnt
_0809736C: .4byte gWinRegs
_08097370: .4byte 0x00003332
_08097374:
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xa
	bl LaunchOptionsMenu
	ldr r0, [r5]
	bl TaskDestroy
_08097384:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809738C
sub_809738C: @ 0x0809738C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _080973F8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097830
	cmp r0, #1
	bne _080973B4
	movs r5, #1
_080973B4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809789C
	cmp r0, #1
	bne _080973C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080973C6:
	adds r0, r4, #0
	bl sub_8097C28
	adds r0, r4, #0
	movs r1, #0
	bl sub_8097958
	ldr r2, _080973FC @ =gWinRegs
	ldr r1, _08097400 @ =0x03000134
	adds r0, r6, r1
	ldr r1, [r0]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0x1e]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _080973F2
	ldr r1, [r7]
	ldr r0, _08097404 @ =sub_8097474
	str r0, [r1, #8]
_080973F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080973F8: .4byte gCurTask
_080973FC: .4byte gWinRegs
_08097400: .4byte 0x03000134
_08097404: .4byte sub_8097474

	thumb_func_start sub_8097408
sub_8097408: @ 0x08097408
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08097460 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_809789C
	cmp r0, #1
	bne _08097432
	movs r6, #1
_08097432:
	adds r0, r4, #0
	bl sub_8097C28
	ldr r2, _08097464 @ =gWinRegs
	ldr r1, _08097468 @ =0x03000134
	adds r0, r5, r1
	ldr r1, [r0]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0x1e]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r6, #0
	beq _0809745A
	ldr r0, _0809746C @ =0x00003332
	strh r0, [r2, #8]
	ldr r1, [r7]
	ldr r0, _08097470 @ =sub_80972EC
	str r0, [r1, #8]
_0809745A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097460: .4byte gCurTask
_08097464: .4byte gWinRegs
_08097468: .4byte 0x03000134
_0809746C: .4byte 0x00003332
_08097470: .4byte sub_80972EC

	thumb_func_start sub_8097474
sub_8097474: @ 0x08097474
	push {r4, r5, lr}
	ldr r5, _080974C0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097C28
	adds r0, r4, #0
	movs r1, #0
	bl sub_8097958
	adds r0, r4, #0
	bl sub_8097ACC
	ldr r0, _080974C4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080974CC
	ldr r1, [r5]
	ldr r0, _080974C8 @ =sub_8097408
	b _08097520
	.align 2, 0
_080974C0: .4byte gCurTask
_080974C4: .4byte gPressedKeys
_080974C8: .4byte sub_8097408
_080974CC:
	ldr r1, _080974F4 @ =gRepeatedKeys
	ldrh r3, [r1]
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08097522
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080974F8
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080974F8
	movs r0, #2
	strb r0, [r4, #1]
	strb r2, [r4, #0x19]
	strb r2, [r4, #0x1a]
	ldr r1, [r5]
	b _0809751E
	.align 2, 0
_080974F4: .4byte gRepeatedKeys
_080974F8:
	ldrh r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08097522
	ldrb r0, [r4, #0x1b]
	ldrb r1, [r4, #2]
	subs r0, r0, r1
	cmp r0, #5
	ble _08097522
	cmp r1, #5
	bhi _08097522
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #1]
	strb r1, [r4, #0x19]
	strb r1, [r4, #0x1a]
	ldr r0, _08097528 @ =gCurTask
	ldr r1, [r0]
_0809751E:
	ldr r0, _0809752C @ =sub_8097530
_08097520:
	str r0, [r1, #8]
_08097522:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097528: .4byte gCurTask
_0809752C: .4byte sub_8097530

	thumb_func_start sub_8097530
sub_8097530: @ 0x08097530
	push {r4, r5, r6, lr}
	ldr r0, _080975A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097ACC
	adds r0, r4, #0
	bl sub_8097C28
	adds r0, r4, #0
	movs r1, #1
	bl sub_8097958
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl sub_8097B54
	cmp r0, #1
	bne _080975F6
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080975B0
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08097588
	movs r0, #6
	strb r0, [r4, #2]
_08097588:
	ldrb r5, [r4, #6]
	movs r1, #0
	ldr r0, _080975AC @ =0x03000006
	adds r3, r6, r0
_08097590:
	adds r2, r3, r1
	adds r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	bls _08097590
	strb r5, [r4, #0xb]
	movs r0, #6
	b _080975E4
	.align 2, 0
_080975A8: .4byte gCurTask
_080975AC: .4byte 0x03000006
_080975B0:
	cmp r0, #2
	bne _080975E6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080975C6
	movs r0, #0
	strb r0, [r4, #2]
_080975C6:
	ldrb r5, [r4, #0xb]
	movs r1, #5
	ldr r0, _080975FC @ =0x03000006
	adds r3, r6, r0
_080975CE:
	adds r2, r3, r1
	subs r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _080975CE
	strb r5, [r4, #6]
	movs r0, #1
_080975E4:
	strb r0, [r4, #0x18]
_080975E6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8097608
	ldr r0, _08097600 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08097604 @ =sub_8097474
	str r0, [r1, #8]
_080975F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080975FC: .4byte 0x03000006
_08097600: .4byte gCurTask
_08097604: .4byte sub_8097474

	thumb_func_start sub_8097608
sub_8097608: @ 0x08097608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r4, #0
	ldrb r0, [r6, #0x18]
	mov sl, r0
	ldrb r1, [r6, #2]
	adds r0, r1, r0
	cmp r0, #0xb
	bhi _08097634
	mov r0, sl
	adds r0, #0xff
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08097634:
	adds r1, r6, #0
	adds r1, #0xd
	adds r0, r1, r5
	strb r4, [r0]
	movs r7, #0
	str r1, [sp, #4]
_08097640:
	ldrb r1, [r6, #2]
	mov r2, sl
	adds r0, r1, r2
	cmp r0, #0xb
	bhi _080976EC
	mov r0, sl
	adds r0, #0xff
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp]
	lsls r3, r0, #4
	subs r1, r3, r0
	lsls r1, r1, #4
	ldr r2, _08097690 @ =0x000008F8
	adds r1, r1, r2
	adds r1, r6, r1
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r4, r1, r0
	lsls r1, r7, #1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x3e
	adds r1, r0, r1
	ldrh r0, [r1]
	mov r8, r3
	mov sb, r2
	ldr r2, _08097694 @ =0x0000FFFF
	cmp r0, r2
	beq _080976B6
	cmp r0, #0xff
	bls _0809769C
	ldr r0, _08097698 @ =gUnknown_080D8C64
	b _0809769E
	.align 2, 0
_08097690: .4byte 0x000008F8
_08097694: .4byte 0x0000FFFF
_08097698: .4byte gUnknown_080D8C64
_0809769C:
	ldr r0, _08097708 @ =gUnknown_080D8C5C
_0809769E:
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r0, [r1]
	strb r0, [r4, #0x1a]
	ldr r0, [sp, #4]
	adds r1, r0, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080976B6:
	mov r2, r8
	ldr r0, [sp]
	subs r1, r2, r0
	lsls r1, r1, #4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r6, r1
	mov r2, sb
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r4, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r7, r0
	adds r1, r6, #0
	adds r1, #0xc2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, _0809770C @ =gUnknown_080D8C54
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080976EC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _08097640
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097708: .4byte gUnknown_080D8C5C
_0809770C: .4byte gUnknown_080D8C54

	thumb_func_start sub_8097710
sub_8097710: @ 0x08097710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #8
	ldr r3, _08097794 @ =gFlags
	ldr r0, [r3]
	movs r2, #4
	orrs r0, r2
	str r0, [r3]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, r5, r1
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	mov ip, r0
	movs r2, #0xe8
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r1, _08097798 @ =gHBlankCopyTarget
	ldr r0, _0809779C @ =0x04000040
	str r0, [r1]
	ldr r1, _080977A0 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080977A4 @ =gBgOffsetsHBlankPrimary
	ldr r7, [r0]
	movs r3, #0
	ldr r6, _080977A8 @ =gUnknown_080D8C74
	mov sb, r3
	movs r2, #2
	mov r8, r2
	adds r0, r4, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xfe
	lsls r0, r0, #0x10
	mov sl, r0
_08097782:
	adds r0, r3, #0
	subs r0, #0x1e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080977AC
	movs r2, #0x78
	movs r1, #0x79
	b _0809780E
	.align 2, 0
_08097794: .4byte gFlags
_08097798: .4byte gHBlankCopyTarget
_0809779C: .4byte 0x04000040
_080977A0: .4byte gHBlankCopySize
_080977A4: .4byte gBgOffsetsHBlankPrimary
_080977A8: .4byte gUnknown_080D8C74
_080977AC:
	cmp r3, r5
	blo _080977D8
	adds r0, r5, #0
	adds r0, #0xc
	cmp r3, r0
	bge _080977D8
	subs r1, r3, r5
	lsls r1, r1, #2
	mov r2, sb
	adds r0, r2, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r4, r0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	b _0809780C
_080977D8:
	mov r0, ip
	subs r0, #0xc
	cmp r3, r0
	blt _08097806
	cmp r3, ip
	bhs _08097806
	ldr r0, [sp]
	subs r1, r3, r0
	lsls r1, r1, #2
	mov r2, sb
	adds r0, r2, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r4, r0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	b _0809780C
_08097806:
	ldr r0, [sp, #4]
	lsrs r2, r0, #0x10
	mov r0, sl
_0809780C:
	lsrs r1, r0, #0x10
_0809780E:
	lsls r0, r2, #8
	adds r0, r1, r0
	strh r0, [r7]
	adds r7, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9f
	bls _08097782
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8097830
sub_8097830: @ 0x08097830
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #5]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r1, _08097870 @ =gUnknown_080D6ED4
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r4, #0
	bne _08097854
	ldr r0, _08097874 @ =0x000009FF
	cmp r1, r0
	bgt _08097866
_08097854:
	cmp r4, #1
	bne _0809787C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _08097878 @ =0xFFFFF600
	cmp r1, r0
	bgt _0809787C
_08097866:
	ldrb r0, [r3, #5]
	adds r0, #1
	strb r0, [r3, #5]
	b _08097894
	.align 2, 0
_08097870: .4byte gUnknown_080D6ED4
_08097874: .4byte 0x000009FF
_08097878: .4byte 0xFFFFF600
_0809787C:
	cmp r4, #2
	bne _08097894
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r0, #0
	ble _08097894
	movs r0, #0
	str r0, [r2]
	movs r0, #1
	b _08097896
_08097894:
	movs r0, #0
_08097896:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809789C
sub_809789C: @ 0x0809789C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r5, #0xb
	cmp r1, #0
	bne _080978F8
	ldrh r0, [r2, #0x1e]
	ldr r1, _080978CC @ =0x00004FFF
	cmp r0, r1
	bhi _080978D0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	strh r0, [r2, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080978D2
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r2, #0x1e]
	b _080978D2
	.align 2, 0
_080978CC: .4byte 0x00004FFF
_080978D0:
	movs r3, #1
_080978D2:
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r1, [r2]
	movs r4, #0xf0
	lsls r4, r4, #6
	cmp r1, r4
	ble _08097940
	movs r0, #1
	lsls r0, r5
	subs r0, r1, r0
	str r0, [r2]
	ldr r1, _080978F4 @ =0x00003BFF
	cmp r0, r1
	bgt _08097946
	str r4, [r2]
	b _08097946
	.align 2, 0
_080978F4: .4byte 0x00003BFF
_080978F8:
	ldrh r0, [r2, #0x1e]
	cmp r0, #0
	beq _08097918
	ldr r1, _08097910 @ =0xFFFFF000
	adds r0, r0, r1
	strh r0, [r2, #0x1e]
	lsls r0, r0, #0x10
	ldr r1, _08097914 @ =0x4FFF0000
	cmp r0, r1
	bls _0809791A
	strh r3, [r2, #0x1e]
	b _0809791A
	.align 2, 0
_08097910: .4byte 0xFFFFF000
_08097914: .4byte 0x4FFF0000
_08097918:
	movs r3, #1
_0809791A:
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r2, r4
	ldr r2, [r1]
	ldr r0, _0809793C @ =0x000063FF
	cmp r2, r0
	bgt _08097940
	movs r0, #1
	lsls r0, r5
	adds r0, r2, r0
	str r0, [r1]
	movs r2, #0xc8
	lsls r2, r2, #7
	cmp r0, r2
	ble _08097946
	str r2, [r1]
	b _08097946
	.align 2, 0
_0809793C: .4byte 0x000063FF
_08097940:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08097946:
	cmp r3, #2
	bne _0809794E
	movs r0, #1
	b _08097950
_0809794E:
	movs r0, #0
_08097950:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8097958
sub_8097958: @ 0x08097958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x18
	movs r0, #5
	str r0, [sp]
	cmp r1, #0
	beq _08097974
	movs r1, #6
	str r1, [sp]
_08097974:
	movs r2, #0
	mov sb, r2
	b _08097AAC
_0809797A:
	mov r1, sb
	cmp r1, #0
	beq _0809799C
	ldr r2, _08097998 @ =gLoadedSaveGame
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x74
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _0809799E
	.align 2, 0
_08097998: .4byte gLoadedSaveGame
_0809799C:
	movs r0, #1
_0809799E:
	mov r2, sb
	adds r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _08097AA4
	movs r7, #0
	adds r0, r5, #6
	str r0, [sp, #4]
	mov r1, sb
	lsls r1, r1, #4
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0xd
	str r2, [sp, #0xc]
_080979BA:
	lsls r0, r7, #2
	mov r8, r0
	mov r1, sb
	cmp r1, #0
	bne _08097A16
	adds r0, r0, r7
	lsls r6, r0, #3
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r4, r5, r0
	movs r0, #0x4b
	strh r0, [r4, #0x12]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08097AC4 @ =gUnknown_080D8CD4
	adds r1, r7, r1
	asrs r0, r0, #8
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r2, [r5, #0xc]
	cmp r7, r2
	bhs _08097A16
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r4, r5, r0
	lsls r1, r7, #3
	lsls r0, r7, #1
	adds r0, #0x12
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	movs r0, #0x45
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08097A16:
	ldr r3, [sp, #4]
	add r3, sb
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	mov r2, r8
	adds r1, r2, r7
	lsls r2, r1, #3
	adds r4, r0, r2
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08097AC4 @ =gUnknown_080D8CD4
	adds r1, r7, r1
	asrs r0, r0, #8
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	add r0, sl
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl DisplaySprite
	ldrb r0, [r5, #2]
	add r0, sb
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08097A9A
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08097AC8 @ =0x000008F8
	adds r0, r0, r1
	adds r0, r5, r0
	adds r4, r0, r2
	lsls r1, r7, #3
	lsls r0, r7, #1
	adds r0, #0x12
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	add r0, sl
	subs r0, #6
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08097A9A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _080979BA
_08097AA4:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08097AAC:
	ldr r0, [sp]
	cmp sb, r0
	bhs _08097AB4
	b _0809797A
_08097AB4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097AC4: .4byte gUnknown_080D8CD4
_08097AC8: .4byte 0x000008F8

	thumb_func_start sub_8097ACC
sub_8097ACC: @ 0x08097ACC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08097B4C @ =0x00000E98
	adds r4, r5, r0
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #2]
	subs r0, r0, r1
	cmp r0, #5
	ble _08097B12
	cmp r1, #5
	bhi _08097B12
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r2, #1
_08097B12:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08097B46
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08097B50 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	bne _08097B40
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08097B40:
	adds r0, r4, #0
	bl DisplaySprite
_08097B46:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097B4C: .4byte 0x00000E98
_08097B50: .4byte 0xFFFFF7FF

	thumb_func_start sub_8097B54
sub_8097B54: @ 0x08097B54
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	cmp r1, #1
	bne _08097B84
	ldrb r0, [r2, #2]
	cmp r0, #6
	bhi _08097BAE
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08097B7C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08097B80 @ =0x00003AFF
	cmp r0, r1
	ble _08097BA8
	b _08097BA4
	.align 2, 0
_08097B7C: .4byte 0xFFFFFE00
_08097B80: .4byte 0x00003AFF
_08097B84:
	cmp r1, #2
	bne _08097BAE
	ldrb r0, [r2, #2]
	cmp r0, #6
	bhi _08097BAE
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r0, r1, #8
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #0xb6
	lsls r0, r0, #7
	cmp r1, r0
	bgt _08097BA8
_08097BA4:
	movs r0, #0
	b _08097BB0
_08097BA8:
	movs r0, #0x96
	lsls r0, r0, #7
	str r0, [r2]
_08097BAE:
	movs r0, #1
_08097BB0:
	pop {r1}
	bx r1

	thumb_func_start sub_8097BB4
sub_8097BB4: @ 0x08097BB4
	ldr r2, _08097BE0 @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0, #0x24]
	adds r1, r1, r3
	strh r1, [r0, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r3, [r0, #0x26]
	adds r2, r2, r3
	strh r2, [r0, #0x26]
	ldr r0, _08097BE4 @ =gBgScrollRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	rsbs r1, r1, #0
	strh r1, [r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	rsbs r2, r2, #0
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_08097BE0: .4byte 0xFFFFFF00
_08097BE4: .4byte gBgScrollRegs

	thumb_func_start sub_8097BE8
sub_8097BE8: @ 0x08097BE8
	push {lr}
	adds r3, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	adds r0, #0x40
	str r0, [r2]
	movs r1, #0x93
	lsls r1, r1, #8
	cmp r0, r1
	ble _08097C06
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r2]
_08097C06:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	subs r0, #0x40
	str r0, [r2]
	ldr r1, _08097C24 @ =0x000028FF
	cmp r0, r1
	bgt _08097C1E
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r2]
_08097C1E:
	pop {r0}
	bx r0
	.align 2, 0
_08097C24: .4byte 0x000028FF

	thumb_func_start sub_8097C28
sub_8097C28: @ 0x08097C28
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r2, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8097C50
sub_8097C50: @ 0x08097C50
	bx lr
	.align 2, 0
