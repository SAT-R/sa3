.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?

@ ---------- unsure about split ----------
@ sub_809E85C() only referenced once in sub_809E164, so probably part of module?

	thumb_func_start sub_809E85C
sub_809E85C: @ 0x0809E85C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0809E8DC @ =gDispCnt
	ldr r2, _0809E8E0 @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809E8E4 @ =Task_809EBF4
	movs r1, #0xf0
	lsls r1, r1, #1     @ 0x1E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0809E8E8 @ =TaskDestructor_809F84C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0
	strb r4, [r5, #2]
	ldr r2, _0809E8EC @ =gLoadedSaveGame
	ldr r3, _0809E8F0 @ =0x00000366 @ .language
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r5, #5]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strh r0, [r5, #0x12]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	strh r0, [r5, #0xe]
	strh r0, [r5, #0x10]
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, _0809E8F4 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	strb r0, [r5, #1]
	movs r1, #0x84
	lsls r1, r1, #8
	str r1, [r5, #0x38]
	str r1, [r5, #0x3c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r5, #0x40]
	str r1, [r5, #0x44]
	cmp r4, #0
	beq _0809E8D6
	ldrb r1, [r2, #0x11]
	cmp r1, #7
	bls _0809E8F8
_0809E8D6:
	movs r0, #7
	strb r0, [r5, #6]
	b _0809E8FA
	.align 2, 0
_0809E8DC: .4byte gDispCnt
_0809E8E0: .4byte 0x00001041
_0809E8E4: .4byte Task_809EBF4
_0809E8E8: .4byte TaskDestructor_809F84C
_0809E8EC: .4byte gLoadedSaveGame
_0809E8F0: .4byte 0x00000366
_0809E8F4: .4byte gUnknown_03001060
_0809E8F8:
	strb r1, [r5, #6]
_0809E8FA:
	movs r2, #0
	adds r3, r5, #7
	movs r4, #3
	ldr r6, _0809E910 @ =gLoadedSaveGame + 0x29
_0809E902:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0809E914
	adds r0, r3, r2
	strb r4, [r0]
	b _0809E938
	.align 2, 0
_0809E910: .4byte gLoadedSaveGame + 0x29
_0809E914:
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0809E934
	adds r1, r3, r2
	lsrs r0, r0, #0x19
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0809E938
	strb r4, [r1]
	b _0809E938
_0809E934:
	adds r0, r3, r2
	strb r1, [r0]
_0809E938:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0809E902
	adds r0, r5, #0
	bl sub_809E978
	adds r0, r5, #0
	bl sub_809EB74
	ldr r0, _0809E96C @ =0x0000FFFF
	bl sub_80C4C0C
	ldr r1, _0809E970 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _0809E974 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809E96C: .4byte 0x0000FFFF
_0809E970: .4byte gBgPalette
_0809E974: .4byte gFlags

	thumb_func_start sub_809E978
sub_809E978: @ 0x0809E978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r6, _0809EB5C @ =0x06010000
	ldrb r0, [r7, #5]
	rsbs r5, r0, #0
	orrs r5, r0
	lsrs r5, r5, #0x1f
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	ldr r3, _0809EB60 @ =gUnknown_080D98D8
	lsls r2, r5, #3
	mov r8, r2
	adds r1, r3, #4
	add r1, r8
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r1, r6
	adds r2, r2, r3
	ldrh r1, [r2]
	movs r4, #0
	mov sl, r4
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sb, r1
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xe8
	str r6, [r0]
	ldr r3, [sp]
	ldr r1, [r3, #0x14]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r3, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x48
	str r6, [r7, #0x48]
	ldr r2, _0809EB64 @ =gUnknown_080D8AAC
	lsls r5, r5, #4
	adds r1, r2, #4
	adds r1, r5, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	adds r5, r5, r2
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x70
	str r6, [r7, #0x70]
	ldr r2, _0809EB68 @ =gUnknown_080D8ACC
	adds r1, r2, #4
	add r1, r8
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	add r8, r2
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x98
	str r6, [r0]
	adds r6, #0x80
	ldr r5, _0809EB6C @ =sAnimsTimeAttackDigits
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc0
	str r6, [r0]
	adds r6, #0x80
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	ldr r2, _0809EB70 @ =gUnknown_080D8AEC
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EB5C: .4byte 0x06010000
_0809EB60: .4byte gUnknown_080D98D8
_0809EB64: .4byte gUnknown_080D8AAC
_0809EB68: .4byte gUnknown_080D8ACC
_0809EB6C: .4byte sAnimsTimeAttackDigits
_0809EB70: .4byte gUnknown_080D8AEC

	thumb_func_start sub_809EB74
sub_809EB74: @ 0x0809EB74
	push {lr}
	mov ip, r0
	ldr r2, _0809EBD8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809EBDC @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _0809EBE0 @ =0x00001808
	strh r0, [r1, #2]
	ldr r1, _0809EBE4 @ =gBgScrollRegs
	strh r2, [r1, #4]
	ldr r0, _0809EBE8 @ =0x0000FF88
	strh r0, [r1, #6]
	movs r0, #0xd0
	lsls r0, r0, #1
	add r0, ip
	ldr r1, _0809EBEC @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0809EBF0 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1         @ Tilemap-ID: 354 (Stage preview icons)
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x28
	strh r1, [r0, #0x28]
	movs r1, #0xe5
	lsls r1, r1, #1
	add r1, ip
	strb r3, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r0}
	bx r0
	.align 2, 0
_0809EBD8: .4byte gDispCnt
_0809EBDC: .4byte gBgCntRegs
_0809EBE0: .4byte 0x00001808
_0809EBE4: .4byte gBgScrollRegs
_0809EBE8: .4byte 0x0000FF88
_0809EBEC: .4byte 0x06008000
_0809EBF0: .4byte 0x0600C000

	thumb_func_start Task_809EBF4
Task_809EBF4: @ 0x0809EBF4
	push {r4, r5, lr}
	ldr r5, _0809EC60 @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	ldr r2, _0809EC64 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809EC68 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _0809EC6C @ =0x00000E83
	strh r0, [r1]
	ldr r0, _0809EC70 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r1, _0809EC74 @ =0x03000160
	adds r0, r3, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0809EC78 @ =0x06007000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xbb
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r1, _0809EC7C @ =0x0300018A
	adds r3, r3, r1
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r1, [r5]
	ldr r0, _0809EC80 @ =Task_809EC84
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809EC60: .4byte gCurTask
_0809EC64: .4byte gDispCnt
_0809EC68: .4byte gBgCntRegs
_0809EC6C: .4byte 0x00000E83
_0809EC70: .4byte gBgScrollRegs
_0809EC74: .4byte 0x03000160
_0809EC78: .4byte 0x06007000
_0809EC7C: .4byte 0x0300018A
_0809EC80: .4byte Task_809EC84

	thumb_func_start Task_809EC84
Task_809EC84: @ 0x0809EC84
	push {r4, r5, r6, r7, lr}
	ldr r2, _0809ECA4 @ =gStageData
	movs r5, #0
	ldr r0, _0809ECA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0809ECAC
	bl sub_80254CC
	b _0809ECB0
	.align 2, 0
_0809ECA4: .4byte gStageData
_0809ECA8: .4byte gCurTask
_0809ECAC:
	bl sub_8025AFC
_0809ECB0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809ECCC
	ldr r0, _0809ECC4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809ECC8 @ =Task_809F638
	b _0809ED9A
	.align 2, 0
_0809ECC4: .4byte gCurTask
_0809ECC8: .4byte Task_809F638
_0809ECCC:
	cmp r0, #0
	beq _0809ED9C
	ldrh r3, [r4, #0x10]
	ldr r6, _0809ED2C @ =gBldRegs
	cmp r3, #0
	bne _0809ED08
	ldr r0, _0809ED30 @ =0x00003FFF
	strh r0, [r6]
	ldr r2, _0809ED34 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809ED38 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _0809ED3C @ =0x00003132
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0809ED08:
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _0809ED48
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	ldr r1, _0809ED40 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r7, [r4, #0xe]
	adds r0, r0, r7
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	ldr r1, _0809ED44 @ =0x0FFF0000
	cmp r0, r1
	bls _0809ED4E
	movs r0, #0
	strh r0, [r4, #0xe]
	b _0809ED4E
	.align 2, 0
_0809ED2C: .4byte gBldRegs
_0809ED30: .4byte 0x00003FFF
_0809ED34: .4byte gDispCnt
_0809ED38: .4byte gWinRegs
_0809ED3C: .4byte 0x00003132
_0809ED40: .4byte 0xFFFFFE00
_0809ED44: .4byte 0x0FFF0000
_0809ED48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809ED4E:
	adds r0, r4, #0
	bl sub_809F7D8
	cmp r0, #1
	bne _0809ED5E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809ED5E:
	adds r0, r4, #0
	bl sub_809F810
	cmp r0, #1
	bne _0809ED6E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809ED6E:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r4, #0x14]
	ldr r1, _0809EDA4 @ =gWinRegs
	adds r0, #0x90
	strh r0, [r1, #4]
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	cmp r5, #3
	bne _0809ED9C
	movs r0, #0
	strh r0, [r4, #0x10]
	ldr r0, _0809EDA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EDAC @ =Task_809EDB0
_0809ED9A:
	str r0, [r1, #8]
_0809ED9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EDA4: .4byte gWinRegs
_0809EDA8: .4byte gCurTask
_0809EDAC: .4byte Task_809EDB0

	thumb_func_start Task_809EDB0
Task_809EDB0: @ 0x0809EDB0
	push {r4, r5, lr}
	ldr r0, _0809EDF0 @ =gStageData
	ldrb r2, [r0, #6]
	ldr r0, _0809EDF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r1, [r4]
	ldr r0, _0809EDF8 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809EDE0
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809EDE0:
	lsls r0, r2, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809EDFC
	ldrb r0, [r4]
	bl sub_8025460
	b _0809EE00
	.align 2, 0
_0809EDF0: .4byte gStageData
_0809EDF4: .4byte gCurTask
_0809EDF8: .4byte gUnknown_03001060
_0809EDFC:
	bl sub_8025AA8
_0809EE00:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809EE1C
	ldr r0, _0809EE14 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EE18 @ =Task_809F638
	b _0809EE3E
	.align 2, 0
_0809EE14: .4byte gCurTask
_0809EE18: .4byte Task_809F638
_0809EE1C:
	cmp r5, #0
	beq _0809EE26
	adds r0, r4, #0
	bl sub_809F7A4
_0809EE26:
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldr r0, _0809EE48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EE4C @ =Task_809EE50
_0809EE3E:
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809EE48: .4byte gCurTask
_0809EE4C: .4byte Task_809EE50

	thumb_func_start Task_809EE50
Task_809EE50: @ 0x0809EE50
	push {r4, r5, r6, lr}
	ldr r0, _0809EEA4 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809EEA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809EEAC @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809EE92
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809EE92:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809EEB0
	ldrb r0, [r4]
	bl sub_8025460
	b _0809EEB4
	.align 2, 0
_0809EEA4: .4byte gStageData
_0809EEA8: .4byte gCurTask
_0809EEAC: .4byte gUnknown_03001060
_0809EEB0:
	bl sub_80255B0
_0809EEB4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bge _0809EED0
	ldr r0, _0809EEC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EECC @ =Task_809F638
	b _0809EF56
	.align 2, 0
_0809EEC8: .4byte gCurTask
_0809EECC: .4byte Task_809F638
_0809EED0:
	asrs r5, r5, #0x10
	cmp r5, #0
	beq _0809EEDC
	adds r0, r4, #0
	bl sub_809F7A4
_0809EEDC:
	cmp r6, #1
	bne _0809EEF0
	ldr r0, _0809EEE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EEEC @ =Task_809F170
	b _0809EF56
	.align 2, 0
_0809EEE8: .4byte gCurTask
_0809EEEC: .4byte Task_809F170
_0809EEF0:
	cmp r5, #0
	bne _0809EF3C
	ldr r0, _0809EF2C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809EF3C
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _0809EF30 @ =gUnknown_03001060
	adds r0, #0x50
	ldrb r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0809EF22
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809EF22:
	ldr r0, _0809EF34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EF38 @ =Task_809F718
	b _0809EF56
	.align 2, 0
_0809EF2C: .4byte gPressedKeys
_0809EF30: .4byte gUnknown_03001060
_0809EF34: .4byte gCurTask
_0809EF38: .4byte Task_809F718
_0809EF3C:
	adds r0, r4, #0
	bl sub_809F310
	cmp r0, #1
	beq _0809EF50
	adds r0, r4, #0
	bl sub_809F460
	cmp r0, #1
	bne _0809EF58
_0809EF50:
	ldr r0, _0809EF60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EF64 @ =Task_809EF68
_0809EF56:
	str r0, [r1, #8]
_0809EF58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809EF60: .4byte gCurTask
_0809EF64: .4byte Task_809EF68

	thumb_func_start Task_809EF68
Task_809EF68: @ 0x0809EF68
	push {r4, r5, lr}
	ldr r0, _0809EFBC @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809EFC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809F550
	adds r0, r5, #0
	bl sub_809F7B8
	adds r0, r5, #0
	bl sub_809F5E4
	ldrb r1, [r5]
	ldr r0, _0809EFC4 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809EFAA
	ldrb r1, [r5, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r5, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r5]
_0809EFAA:
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0809EFC8
	ldrb r0, [r5]
	bl sub_8025460
	b _0809EFCC
	.align 2, 0
_0809EFBC: .4byte gStageData
_0809EFC0: .4byte gCurTask
_0809EFC4: .4byte gUnknown_03001060
_0809EFC8:
	bl sub_8025614
_0809EFCC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809EFE8
	ldr r0, _0809EFE0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809EFE4 @ =Task_809F638
	b _0809F058
	.align 2, 0
_0809EFE0: .4byte gCurTask
_0809EFE4: .4byte Task_809F638
_0809EFE8:
	cmp r4, #0
	beq _0809EFF2
	adds r0, r5, #0
	bl sub_809F7A4
_0809EFF2:
	ldrh r2, [r5, #0x10]
	ldr r3, _0809F028 @ =gBldRegs
	cmp r2, #0
	bne _0809F00C
	ldr r0, _0809F02C @ =0x00003F8F
	strh r0, [r3]
	ldr r1, _0809F030 @ =gWinRegs
	ldr r0, _0809F034 @ =0x00001132
	strh r0, [r1, #8]
	strh r2, [r3, #4]
	strh r2, [r5, #0xe]
	movs r0, #1
	strh r0, [r5, #0x10]
_0809F00C:
	ldrh r0, [r3, #4]
	cmp r0, #0xf
	bhi _0809F038
	ldrh r0, [r5, #0xe]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	strh r0, [r5, #0xe]
	b _0809F05A
	.align 2, 0
_0809F028: .4byte gBldRegs
_0809F02C: .4byte 0x00003F8F
_0809F030: .4byte gWinRegs
_0809F034: .4byte 0x00001132
_0809F038:
	movs r4, #0
	movs r0, #0x10
	strh r0, [r3, #4]
	ldr r3, _0809F060 @ =gBgScrollRegs
	ldr r2, _0809F064 @ =0x0000FF88
	strh r2, [r3, #6]
	ldrb r0, [r5, #3]
	lsls r1, r0, #3
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	strh r1, [r3, #6]
	strh r4, [r5, #0x10]
	ldr r0, _0809F068 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F06C @ =Task_809F070
_0809F058:
	str r0, [r1, #8]
_0809F05A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F060: .4byte gBgScrollRegs
_0809F064: .4byte 0x0000FF88
_0809F068: .4byte gCurTask
_0809F06C: .4byte Task_809F070

	thumb_func_start Task_809F070
Task_809F070: @ 0x0809F070
	push {r4, r5, lr}
	ldr r0, _0809F0C4 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809F0C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809F0CC @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809F0B2
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809F0B2:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809F0D0
	ldrb r0, [r4]
	bl sub_8025460
	b _0809F0D4
	.align 2, 0
_0809F0C4: .4byte gStageData
_0809F0C8: .4byte gCurTask
_0809F0CC: .4byte gUnknown_03001060
_0809F0D0:
	bl sub_80255B0
_0809F0D4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809F0F0
	ldr r0, _0809F0E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F0EC @ =Task_809F638
	b _0809F160
	.align 2, 0
_0809F0E8: .4byte gCurTask
_0809F0EC: .4byte Task_809F638
_0809F0F0:
	cmp r0, #1
	bne _0809F104
	ldr r0, _0809F0FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F100 @ =Task_809F170
	b _0809F160
	.align 2, 0
_0809F0FC: .4byte gCurTask
_0809F100: .4byte Task_809F170
_0809F104:
	cmp r5, #0
	beq _0809F10E
	adds r0, r4, #0
	bl sub_809F7A4
_0809F10E:
	adds r0, r4, #0
	bl sub_809F310
	cmp r0, #1
	beq _0809F122
	adds r0, r4, #0
	bl sub_809F460
	cmp r0, #1
	bne _0809F134
_0809F122:
	ldr r0, _0809F12C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F130 @ =Task_809EF68
	b _0809F160
	.align 2, 0
_0809F12C: .4byte gCurTask
_0809F130: .4byte Task_809EF68
_0809F134:
	ldr r1, _0809F150 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0809F158
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _0809F154 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r1, [r4, #0xe]
	adds r0, r0, r1
	strh r0, [r4, #0xe]
	b _0809F162
	.align 2, 0
_0809F150: .4byte gBldRegs
_0809F154: .4byte 0xFFFFFE00
_0809F158:
	strh r0, [r1, #4]
	ldr r0, _0809F168 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F16C @ =Task_809EE50
_0809F160:
	str r0, [r1, #8]
_0809F162:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F168: .4byte gCurTask
_0809F16C: .4byte Task_809EE50

	thumb_func_start Task_809F170
Task_809F170: @ 0x0809F170
	push {r4, r5, r6, lr}
	ldr r0, _0809F1C0 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809F1C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809F1C8 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809F1B2
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809F1B2:
	lsls r0, r5, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0809F1CC
	bl sub_8025534
	b _0809F1D0
	.align 2, 0
_0809F1C0: .4byte gStageData
_0809F1C4: .4byte gCurTask
_0809F1C8: .4byte gUnknown_03001060
_0809F1CC:
	bl sub_8025614
_0809F1D0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0809F1EC
	ldr r0, _0809F1E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F1E8 @ =Task_809F638
	b _0809F200
	.align 2, 0
_0809F1E4: .4byte gCurTask
_0809F1E8: .4byte Task_809F638
_0809F1EC:
	cmp r6, #0
	beq _0809F1F6
	adds r0, r4, #0
	bl sub_809F7A4
_0809F1F6:
	cmp r5, #1
	bne _0809F202
	ldr r0, _0809F208 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F20C @ =Task_809F210
_0809F200:
	str r0, [r1, #8]
_0809F202:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F208: .4byte gCurTask
_0809F20C: .4byte Task_809F210

	thumb_func_start Task_809F210
Task_809F210: @ 0x0809F210
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809F260 @ =gStageData
	ldrb r5, [r0, #6]
	ldr r0, _0809F264 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	ldrb r1, [r4]
	ldr r0, _0809F268 @ =gUnknown_03001060
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #2
	cmp r1, r0
	beq _0809F252
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
_0809F252:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0809F26C
	bl sub_8025534
	b _0809F270
	.align 2, 0
_0809F260: .4byte gStageData
_0809F264: .4byte gCurTask
_0809F268: .4byte gUnknown_03001060
_0809F26C:
	bl sub_8025614
_0809F270:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bge _0809F28C
	ldr r0, _0809F284 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F288 @ =Task_809F638
	b _0809F2FE
	.align 2, 0
_0809F284: .4byte gCurTask
_0809F288: .4byte Task_809F638
_0809F28C:
	cmp r5, #0
	beq _0809F296
	adds r0, r4, #0
	bl sub_809F7A4
_0809F296:
	ldrh r3, [r4, #0x10]
	ldr r5, _0809F2E0 @ =gBldRegs
	cmp r3, #0
	bne _0809F2C6
	ldr r2, _0809F2E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809F2E8 @ =gWinRegs
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _0809F2EC @ =0x00003132
	strh r0, [r1, #8]
	ldr r0, _0809F2F0 @ =0x00003FFF
	strh r0, [r5]
	strh r3, [r5, #4]
	strh r3, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0809F2C6:
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _0809F2F4
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r7, [r4, #0xe]
	adds r0, r0, r7
	strh r0, [r4, #0xe]
	b _0809F300
	.align 2, 0
_0809F2E0: .4byte gBldRegs
_0809F2E4: .4byte gDispCnt
_0809F2E8: .4byte gWinRegs
_0809F2EC: .4byte 0x00003132
_0809F2F0: .4byte 0x00003FFF
_0809F2F4:
	cmp r6, #1
	bne _0809F300
	ldr r0, _0809F308 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809F30C @ =Task_809F768
_0809F2FE:
	str r0, [r1, #8]
_0809F300:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F308: .4byte gCurTask
_0809F30C: .4byte Task_809F768

	thumb_func_start sub_809F310
sub_809F310: @ 0x0809F310
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0809F398 @ =gStageData
	ldrb r2, [r0, #6]
	ldr r0, [r4, #0x38]
	subs r0, #0x20
	str r0, [r4, #0x38]
	ldr r1, _0809F39C @ =0x00007FFF
	cmp r0, r1
	bgt _0809F32A
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x38]
_0809F32A:
	ldr r0, [r4, #0x40]
	adds r0, #0x20
	str r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809F33E
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x40]
_0809F33E:
	cmp r2, #0
	bne _0809F404
	ldr r5, _0809F3A0 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _0809F350
	b _0809F458
_0809F350:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809F3A4
	ldrb r0, [r4, #4]
	subs r0, #1
	strb r0, [r4, #4]
	ldrb r1, [r4, #4]
	adds r0, r4, #7
	ldrb r3, [r4, #3]
	adds r2, r0, r3
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F3A4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r4, #4]
	adds r0, r3, #0
	subs r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F450
	ldrb r0, [r4, #6]
	subs r0, #1
	strb r0, [r4, #3]
	b _0809F450
	.align 2, 0
_0809F398: .4byte gStageData
_0809F39C: .4byte 0x00007FFF
_0809F3A0: .4byte gRepeatedKeys
_0809F3A4:
	ldr r0, _0809F3E4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldrb r1, [r4, #3]
	cmp r0, #0
	beq _0809F3E8
	ldrb r0, [r4, #4]
	adds r0, #1
	movs r3, #0
	strb r0, [r4, #4]
	ldrb r2, [r4, #4]
	adds r0, r4, #7
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #1
	cmp r2, r0
	ble _0809F3E8
	strb r3, [r4, #4]
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F450
	strb r3, [r4, #3]
	b _0809F450
	.align 2, 0
_0809F3E4: .4byte gRepeatedKeys
_0809F3E8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
	ldr r0, _0809F400 @ =gUnknown_03001060
	ldrb r1, [r4]
	adds r0, #0x50
	strh r1, [r0]
	b _0809F458
	.align 2, 0
_0809F400: .4byte gUnknown_03001060
_0809F404:
	ldr r0, _0809F454 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x50
	ldrh r5, [r1]
	ldrb r0, [r4, #1]
	cmp r0, r5
	beq _0809F458
	ldrb r6, [r4, #4]
	ldrb r7, [r4, #3]
	ldrh r0, [r1]
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	strb r2, [r4, #3]
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r5, r0
	subs r1, r0, #2
	strb r1, [r4, #4]
	strb r5, [r4, #1]
	cmp r6, #2
	bne _0809F43C
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0809F450
_0809F43C:
	cmp r6, #0
	bne _0809F448
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0809F450
_0809F448:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	beq _0809F458
_0809F450:
	movs r0, #1
	b _0809F45A
	.align 2, 0
_0809F454: .4byte gUnknown_03001060
_0809F458:
	movs r0, #0
_0809F45A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_809F460
sub_809F460: @ 0x0809F460
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809F508 @ =gStageData
	ldrb r2, [r0, #6]
	ldr r0, [r4, #0x38]
	subs r0, #0x20
	str r0, [r4, #0x38]
	ldr r1, _0809F50C @ =0x00007FFF
	cmp r0, r1
	bgt _0809F47A
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x38]
_0809F47A:
	ldr r0, [r4, #0x40]
	adds r0, #0x20
	str r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809F48E
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x40]
_0809F48E:
	cmp r2, #0
	bne _0809F518
	ldr r1, _0809F510 @ =gRepeatedKeys
	ldrh r2, [r1]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _0809F546
	ldrb r3, [r4, #3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0809F4C0
	subs r0, r3, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F4C0
	ldrb r0, [r4, #6]
	subs r0, #1
	strb r0, [r4, #3]
_0809F4C0:
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809F4E0
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	movs r0, #6
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _0809F4E0
	movs r0, #0
	strb r0, [r4, #3]
_0809F4E0:
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	adds r0, #2
	strb r0, [r4]
	ldr r0, _0809F514 @ =gUnknown_03001060
	ldrb r1, [r4]
	adds r0, #0x50
	strh r1, [r0]
	ldrb r4, [r4, #3]
	cmp r3, r4
	beq _0809F53C
	movs r0, #0x6c
	bl m4aSongNumStart
	b _0809F53C
	.align 2, 0
_0809F508: .4byte gStageData
_0809F50C: .4byte 0x00007FFF
_0809F510: .4byte gRepeatedKeys
_0809F514: .4byte gUnknown_03001060
_0809F518:
	ldr r0, _0809F540 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x50
	ldrb r0, [r4, #1]
	ldrh r2, [r1]
	cmp r0, r2
	beq _0809F546
	ldrh r5, [r1]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r0, [r4, #3]
	cmp r0, r1
	beq _0809F544
	strb r1, [r4, #3]
_0809F53C:
	movs r0, #1
	b _0809F548
	.align 2, 0
_0809F540: .4byte gUnknown_03001060
_0809F544:
	strb r5, [r4, #1]
_0809F546:
	movs r0, #0
_0809F548:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809F550
sub_809F550: @ 0x0809F550
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r4, r6, #0
	adds r4, #0x98
	ldr r5, _0809F5E0 @ =sAnimsTimeAttackDigits
	ldrh r0, [r5]
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #3]
	ldrb r1, [r5, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	adds r0, #0x19
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #0
	adds r0, #0x70
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	adds r1, #0x2a
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r4, #0x28
	ldrh r0, [r5]
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #4]
	ldrb r5, [r5, #2]
	adds r0, r0, r5
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #0x20]
	asrs r0, r0, #8
	adds r0, #0x57
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F5E0: .4byte sAnimsTimeAttackDigits

	thumb_func_start sub_809F5E4
sub_809F5E4: @ 0x0809F5E4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809F634 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x69
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F634: .4byte 0xFFFFFBFF

	thumb_func_start Task_809F638
Task_809F638: @ 0x0809F638
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0809F6A8 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	bl sub_80260F0
	ldr r2, _0809F6AC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809F6B0 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0809F6B4 @ =gBldRegs
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [sp]
	ldr r2, _0809F6B8 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0809F6BC @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0809F6C0 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0809F6C4 @ =gBgSprites_Unknown1
	strb r3, [r0, #2]
	ldr r1, _0809F6C8 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	adds r0, #0xec
	strh r0, [r4, #0x12]
	ldr r1, [r5]
	ldr r0, _0809F6CC @ =Task_809F6D0
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F6A8: .4byte gCurTask
_0809F6AC: .4byte gDispCnt
_0809F6B0: .4byte 0x00009FFF
_0809F6B4: .4byte gBldRegs
_0809F6B8: .4byte 0x040000D4
_0809F6BC: .4byte gBgCntRegs
_0809F6C0: .4byte 0x85000010
_0809F6C4: .4byte gBgSprites_Unknown1
_0809F6C8: .4byte gBgSprites_Unknown2
_0809F6CC: .4byte Task_809F6D0

	thumb_func_start Task_809F6D0
Task_809F6D0: @ 0x0809F6D0
	push {lr}
	sub sp, #0x20
	ldr r1, _0809F700 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809F704 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809F708 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809F70C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809F710 @ =gVramGraphicsCopyCursor
	ldr r0, _0809F714 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	add sp, #0x20
	pop {r0}
	bx r0
	.align 2, 0
_0809F700: .4byte 0x0000FFFF
_0809F704: .4byte gBackgroundsCopyQueueCursor
_0809F708: .4byte gBackgroundsCopyQueueIndex
_0809F70C: .4byte gBgSpritesCount
_0809F710: .4byte gVramGraphicsCopyCursor
_0809F714: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start Task_809F718
Task_809F718: @ 0x0809F718
	push {r4, r5, lr}
	ldr r5, _0809F74C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_809F550
	adds r0, r4, #0
	bl sub_809F7B8
	adds r0, r4, #0
	bl sub_809F5E4
	bl sub_8025534
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809F754
	ldr r1, [r5]
	ldr r0, _0809F750 @ =Task_809F638
	b _0809F75C
	.align 2, 0
_0809F74C: .4byte gCurTask
_0809F750: .4byte Task_809F638
_0809F754:
	cmp r0, #1
	bne _0809F75E
	ldr r1, [r5]
	ldr r0, _0809F764 @ =Task_809F210
_0809F75C:
	str r0, [r1, #8]
_0809F75E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F764: .4byte Task_809F210

	thumb_func_start Task_809F768
Task_809F768: @ 0x0809F768
	push {r4, lr}
	ldr r0, _0809F79C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	bl sub_800214C
	ldr r2, _0809F7A0 @ =gUnknown_03001060
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r4, [r4, #4]
	adds r0, r0, r4
	adds r0, #3
	adds r2, #0x50
	strh r0, [r2]
	ldrh r0, [r2]
	bl sub_80022E8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809F79C: .4byte gCurTask
_0809F7A0: .4byte gUnknown_03001060

	thumb_func_start sub_809F7A4
sub_809F7A4: @ 0x0809F7A4
	push {lr}
	adds r0, #0xe8
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x46
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_809F7B8
sub_809F7B8: @ 0x0809F7B8
	push {lr}
	movs r1, #0x88
	lsls r1, r1, #1
	adds r2, r0, r1
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
	.align 2, 0

	thumb_func_start sub_809F7D8
sub_809F7D8: @ 0x0809F7D8
	push {lr}
	adds r2, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r2, #0x34]
	ldr r1, [r2, #0x30]
	movs r3, #0xec
	lsls r3, r3, #7
	cmp r1, r3
	ble _0809F7F8
	ldr r0, _0809F800 @ =0xFFFFF000
	adds r1, r1, r0
	str r1, [r2, #0x30]
	ldr r0, _0809F804 @ =0x000075FF
	cmp r1, r0
	bgt _0809F808
_0809F7F8:
	str r3, [r2, #0x30]
	movs r0, #1
	b _0809F80A
	.align 2, 0
_0809F800: .4byte 0xFFFFF000
_0809F804: .4byte 0x000075FF
_0809F808:
	movs r0, #0
_0809F80A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809F810
sub_809F810: @ 0x0809F810
	push {lr}
	adds r1, r0, #0
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r1, #0x24]
	ldr r2, [r1, #0x20]
	ldr r0, _0809F838 @ =0x00007CFF
	cmp r2, r0
	bgt _0809F83C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r2, r3
	str r0, [r1, #0x20]
	movs r2, #0xfa
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809F846
	str r2, [r1, #0x20]
	movs r0, #1
	b _0809F848
	.align 2, 0
_0809F838: .4byte 0x00007CFF
_0809F83C:
	movs r0, #0xfa
	lsls r0, r0, #7
	str r0, [r1, #0x20]
	movs r0, #1
	b _0809F848
_0809F846:
	movs r0, #0
_0809F848:
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_809F84C
TaskDestructor_809F84C: @ 0x0809F84C
	bx lr
	.align 2, 0
