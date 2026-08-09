.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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

	thumb_func_start Task_VsRecordScreen
Task_VsRecordScreen: @ 0x08096FA8
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

	thumb_func_start TaskDestructor_VsRecordScreen
TaskDestructor_VsRecordScreen: @ 0x08097C50
	bx lr
	.align 2, 0
