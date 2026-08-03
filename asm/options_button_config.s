.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Options_ButtonConfig
Options_ButtonConfig: @ 0x08090F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	str r1, [sp, #0x14]
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08091018 @ =gLoadedSaveGame
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	add r5, sp, #0xc
	movs r6, #0
	movs r2, #0
	mov r8, r2
	strh r0, [r5]
	ldr r2, _0809101C @ =0x0000035E
	adds r0, r1, r2
	ldrh r2, [r0]
	mov r0, sp
	adds r0, #0xe
	strh r2, [r0]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	add r0, sp, #0x10
	strh r1, [r0]
	add r0, sp, #4
	adds r1, r5, #0
	movs r2, #6
	bl memcpy
	ldr r1, _08091020 @ =gUnknown_080D73BC
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	ldr r0, _08091024 @ =Task_Options_ButtonConfig_Init
	movs r1, #0x93
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08091028 @ =TaskDestructor_Options_ButtonConfig
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	strh r4, [r1, #0x1e]
	mov r2, sb
	str r2, [r1, #8]
	mov r0, r8
	strh r0, [r1, #0x20]
	strb r6, [r1, #1]
	movs r0, #2
	strb r0, [r1, #3]
	strb r6, [r1, #2]
	mov r2, r8
	strh r2, [r1, #0x22]
	movs r0, #1
	strb r0, [r1, #4]
	movs r6, #0
_08091000:
	lsls r0, r6, #1
	add r0, sp
	adds r0, #4
	ldrh r1, [r0]
	cmp r1, #2
	beq _08091040
	cmp r1, #2
	bgt _0809102C
	cmp r1, #1
	beq _08091036
	b _08091052
	.align 2, 0
_08091018: .4byte gLoadedSaveGame
_0809101C: .4byte 0x0000035E
_08091020: .4byte gUnknown_080D73BC
_08091024: .4byte Task_Options_ButtonConfig_Init
_08091028: .4byte TaskDestructor_Options_ButtonConfig
_0809102C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0809104A
	b _08091052
_08091036:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r1, ip
	strh r0, [r1, #0x18]
	b _08091052
_08091040:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r2, ip
	strh r0, [r2, #0x1a]
	b _08091052
_0809104A:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r1, ip
	strh r0, [r1, #0x1c]
_08091052:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08091000
	mov r2, ip
	ldrh r0, [r2, #0x18]
	strh r0, [r2, #0x20]
	movs r6, #0
	adds r2, #0x24
	str r2, [sp, #0x28]
	ldr r5, _08091144 @ =gBgScrollRegs
	mov r0, ip
	adds r0, #0x28
	str r0, [sp, #0x2c]
	mov r1, ip
	adds r1, #0x3c
	str r1, [sp, #0x18]
	adds r2, #0x1c
	str r2, [sp, #0x1c]
	movs r0, #0xc
	add r0, ip
	mov sl, r0
	movs r1, #0x18
	add r1, ip
	mov sb, r1
	movs r2, #0x12
	add r2, ip
	mov r8, r2
	mov r0, ip
	adds r0, #0x64
	str r0, [sp, #0x20]
	mov r1, ip
	adds r1, #0x66
	str r1, [sp, #0x24]
	adds r7, r5, #0
_0809109A:
	lsls r2, r6, #3
	ldr r0, [sp, #0x28]
	adds r4, r0, r2
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r0, #0x70
	subs r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #0x2c]
	adds r3, r1, r2
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r0, #0x2d
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldr r0, [r4]
	subs r0, #0x46
	str r0, [r1]
	ldr r1, [sp, #0x1c]
	adds r2, r1, r2
	ldr r0, [r3]
	str r0, [r2]
	lsls r1, r6, #1
	mov r2, sl
	adds r3, r2, r1
	mov r0, sb
	adds r2, r0, r1
	ldrh r0, [r2]
	strh r0, [r3]
	add r1, r8
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0809109A
	movs r1, #4
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	mov r2, ip
	str r0, [r2, #0x54]
	movs r1, #6
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r2, #0x58]
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	ldr r2, [sp, #0x20]
	strh r0, [r2]
	ldrh r0, [r5, #6]
	rsbs r0, r0, #0
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	movs r2, #4
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x5c]
	movs r2, #6
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	str r0, [r1, #0x60]
	ldr r0, [sp, #0x14]
	str r0, [r1, #0x68]
	ldr r1, _08091148 @ =gLoadedSaveGame
	ldr r2, _0809114C @ =0x00000366
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	mov r0, ip
	bl sub_8091150
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091144: .4byte gBgScrollRegs
_08091148: .4byte gLoadedSaveGame
_0809114C: .4byte 0x00000366

	thumb_func_start sub_8091150
sub_8091150: @ 0x08091150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r6, #0x68]
	str r1, [r0]
	ldr r3, _08091404 @ =gUnknown_080D7334
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r6, #0
	adds r1, #0x64
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x66
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r7, #0
	ldr r2, _08091408 @ =gUnknown_080D7264
	mov r8, r2
	movs r3, #0
	movs r0, #0x10
	mov sl, r0
	mov sb, r4
	adds r1, r6, #0
	adds r1, #0x24
	str r1, [sp]
	adds r2, r6, #0
	adds r2, #0x28
	str r2, [sp, #4]
_080911DE:
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r6, r0
	ldr r1, [r6, #0x68]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	mov r2, r8
	adds r2, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	add r1, r8
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	movs r2, #0xff
	orrs r1, r2
	strb r1, [r0, #0x1b]
	lsls r5, r7, #3
	adds r1, r6, #0
	adds r1, #0x24
	adds r1, r1, r5
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x28
	adds r1, r1, r5
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	mov r2, sl
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r3, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r4, #0xe4
	adds r4, r6, r4
	ldr r0, [r6, #0x68]
	str r0, [r4]
	ldr r2, _0809140C @ =gUnknown_080D731C
	adds r0, r2, #4
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x68]
	adds r0, r0, r1
	str r0, [r6, #0x68]
	adds r2, r5, r2
	ldrh r0, [r2]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xff
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r5
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r2, #0x40
	strh r2, [r4, #0x14]
	ldr r3, [sp, #8]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	mov r0, sl
	strb r0, [r4, #0x1c]
	movs r1, #0
	strb r1, [r4, #0x1f]
	str r3, [r4, #8]
	mov r2, sb
	str r2, [r4, #0x20]
	adds r0, r4, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #8]
	cmp r7, #2
	bls _080911DE
	movs r7, #0
	ldr r5, _08091410 @ =gUnknown_080D736C
	movs r4, #0
_080912D4:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r6, r0
	ldr r1, [r6, #0x68]
	str r1, [r0]
	lsls r3, r7, #3
	adds r1, r5, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	adds r3, r3, r5
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r1, r2, r1
	ldr r1, [r1]
	subs r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r2, [r1]
	ldrh r1, [r6, #0x1e]
	lsls r1, r1, #4
	adds r2, r2, r1
	subs r2, #4
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sb, r1
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080912D4
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r6, #0x68]
	str r1, [r0]
	ldr r3, _08091414 @ =gUnknown_080D7364
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, sl
	orrs r1, r2
	strb r1, [r0, #0x1b]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r1, r2, r1
	ldr r1, [r1]
	subs r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r2, [r1]
	ldrh r1, [r6, #0x1e]
	lsls r1, r1, #4
	adds r2, r2, r1
	subs r2, #4
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, r8
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r7, #0
	ldr r3, _08091418 @ =gUnknown_080D7024
	ldr r5, _0809141C @ =gUnknown_080D7234
	movs r0, #0
	mov r8, r0
_080913CA:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	ldr r0, [r6, #0x68]
	str r0, [r2]
	cmp r7, #0
	bne _08091420
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x68]
	adds r0, r0, r1
	str r0, [r6, #0x68]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r3
	b _08091442
	.align 2, 0
_08091404: .4byte gUnknown_080D7334
_08091408: .4byte gUnknown_080D7264
_0809140C: .4byte gUnknown_080D731C
_08091410: .4byte gUnknown_080D736C
_08091414: .4byte gUnknown_080D7364
_08091418: .4byte gUnknown_080D7024
_0809141C: .4byte gUnknown_080D7234
_08091420:
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x68]
	adds r0, r0, r1
	str r0, [r6, #0x68]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
_08091442:
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	str r4, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #8]
	cmp r7, #1
	bls _080913CA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_Options_ButtonConfig_Init
Task_Options_ButtonConfig_Init: @ 0x08091490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08091508 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_8091A44
	adds r0, r5, #0
	bl sub_8091AE0
	adds r0, r5, #0
	bl sub_8091CA0
	adds r0, r5, #0
	bl sub_8091BC4
	adds r0, r5, #0
	bl sub_8091CDC
	adds r0, r5, #0
	bl sub_8091B78
	adds r0, r5, #0
	bl sub_8091C38
	ldr r2, _0809150C @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0809154C
	ldr r0, [r5, #0x5c]
	cmn r0, r1
	bgt _0809154C
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #4]
	ldr r0, [r5, #8]
	strb r1, [r0]
	ldr r3, _08091510 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08091518
	ldr r0, _08091514 @ =gUnknown_080D737C
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _0809152E
	.align 2, 0
_08091508: .4byte gCurTask
_0809150C: .4byte gBgScrollRegs
_08091510: .4byte gFlags
_08091514: .4byte gUnknown_080D737C
_08091518:
	ldr r1, _08091538 @ =0x040000D4
	ldr r0, _0809153C @ =gUnknown_080D737C
	str r0, [r1]
	ldr r0, _08091540 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08091544 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_0809152E:
	ldr r0, _08091548 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08091A24
	.align 2, 0
_08091538: .4byte 0x040000D4
_0809153C: .4byte gUnknown_080D737C
_08091540: .4byte gObjPalette
_08091544: .4byte 0x80000010
_08091548: .4byte gCurTask
_0809154C:
	ldr r0, _080915E4 @ =gBgScrollRegs
	movs r7, #4
	ldrsh r1, [r0, r7]
	rsbs r1, r1, #0
	str r1, [r5, #0x5c]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08091560
	b _0809177C
_08091560:
	ldr r0, _080915E8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809156E
	b _0809168A
_0809156E:
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x12
	adds r0, r1, r0
	movs r4, #0
	mov ip, r1
	adds r6, r5, #0
	adds r6, #0x18
	movs r3, #0xc
	adds r3, r3, r5
	mov sb, r3
	mov r8, ip
	ldrb r0, [r0]
	mov sl, r0
	adds r3, r6, #0
_08091590:
	movs r7, #0x1e
	ldrsh r2, [r5, r7]
	cmp r4, r2
	beq _080915AC
	lsls r0, r4, #1
	mov r7, r8
	adds r1, r7, r0
	ldrh r0, [r1]
	cmp sl, r0
	bne _080915AC
	lsls r0, r2, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
_080915AC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08091590
	movs r4, #0
	adds r3, r6, #0
	ldr r1, _080915EC @ =gLoadedSaveGame + 0x35C @ buttonConfig.jump
	mov r8, r1
	movs r2, #4
	add r2, r8
	mov sl, r2
_080915C4:
	lsls r1, r4, #1
	adds r2, r3, r1
	mov r7, ip
	adds r0, r7, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r0, [r2]
	adds r2, r1, #0
	cmp r0, #1
	beq _08091604
	cmp r0, #1
	bgt _080915F0
	cmp r0, #0
	beq _080915F6
	b _08091622
	.align 2, 0
_080915E4: .4byte gBgScrollRegs
_080915E8: .4byte gPressedKeys
_080915EC: .4byte gLoadedSaveGame + 0x35C @ buttonConfig.jump
_080915F0:
	cmp r0, #2
	beq _08091618
	b _08091622
_080915F6:
	ldr r1, _08091600 @ =gUnknown_080D73C0
	adds r0, r2, r1
	ldrh r0, [r0]
	mov r7, r8
	b _08091620
	.align 2, 0
_08091600: .4byte gUnknown_080D73C0
_08091604:
	ldr r1, _08091610 @ =gUnknown_080D73C0
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r7, _08091614 @ =gLoadedSaveGame + 0x35E @ buttonConfig.attack
	b _08091620
	.align 2, 0
_08091610: .4byte gUnknown_080D73C0
_08091614: .4byte gLoadedSaveGame + 0x35E @ buttonConfig.attack
_08091618:
	ldr r1, _08091664 @ =gUnknown_080D73C0
	adds r0, r2, r1
	ldrh r0, [r0]
	mov r7, sl
_08091620:
	strh r0, [r7]
_08091622:
	mov r0, sb
	adds r1, r0, r2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080915C4
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r5, #0x20]
	strb r1, [r5, #1]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r2, _08091668 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08091670
	ldr r0, _0809166C @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _0809168A
	.align 2, 0
_08091664: .4byte gUnknown_080D73C0
_08091668: .4byte gFlags
_0809166C: .4byte gUnknown_080D737C
_08091670:
	ldr r1, _080916E0 @ =0x040000D4
	ldr r3, _080916E4 @ =gUnknown_080D737C
	str r3, [r1]
	ldr r0, _080916E8 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _080916EC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _080916F0 @ =gFlags
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0809168A:
	ldr r0, _080916F4 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0809177C
	ldr r0, _080916F8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809177C
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r4, #0
	movs r2, #0x12
	adds r2, r2, r5
	mov ip, r2
	adds r6, r5, #0
	adds r6, #0x18
	ldr r3, _080916FC @ =gUnknown_080D73C0
	ldr r7, _08091700 @ =gLoadedSaveGame + 0x35C @ buttonConfig
	mov sl, r7
	movs r0, #2
	add r0, sl
	mov sb, r0
	movs r1, #4
	add r1, sl
	mov r8, r1
_080916C4:
	lsls r2, r4, #1
	adds r1, r6, r2
	strh r4, [r1]
	mov r7, ip
	adds r0, r7, r2
	strh r4, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	beq _08091714
	cmp r0, #1
	bgt _08091704
	cmp r0, #0
	beq _0809170A
	b _08091726
	.align 2, 0
_080916E0: .4byte 0x040000D4
_080916E4: .4byte gUnknown_080D737C
_080916E8: .4byte gObjPalette
_080916EC: .4byte 0x80000010
_080916F0: .4byte gFlags
_080916F4: .4byte gBgScrollRegs
_080916F8: .4byte gPressedKeys
_080916FC: .4byte gUnknown_080D73C0
_08091700: .4byte gLoadedSaveGame + 0x35C @ buttonConfig
_08091704:
	cmp r0, #2
	beq _0809171E
	b _08091726
_0809170A:
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r1, sl
	strh r0, [r1]
	b _08091726
_08091714:
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r2, sb
	strh r0, [r2]
	b _08091726
_0809171E:
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r7, r8
	strh r0, [r7]
_08091726:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080916C4
	movs r0, #1
	strb r0, [r5, #4]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
	ldr r1, _0809175C @ =gFlags
	ldr r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08091764
	ldr r0, _08091760 @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _0809177C
	.align 2, 0
_0809175C: .4byte gFlags
_08091760: .4byte gUnknown_080D737C
_08091764:
	ldr r1, _080917EC @ =0x040000D4
	ldr r0, _080917F0 @ =gUnknown_080D737C
	str r0, [r1]
	ldr r0, _080917F4 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _080917F8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	ldr r3, _080917FC @ =gFlags
	str r2, [r3]
_0809177C:
	ldr r0, _08091800 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809181E
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080917CA
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x18
	mov r8, r6
	movs r7, #0xc
	adds r7, r7, r5
	mov ip, r7
	adds r7, r5, #0
	adds r7, #0x12
_080917A0:
	lsls r1, r4, #1
	mov r0, r8
	adds r3, r0, r1
	mov r0, ip
	adds r2, r0, r1
	ldrh r0, [r2]
	strh r0, [r3]
	adds r1, r7, r1
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080917A0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
_080917CA:
	movs r0, #0
	strb r0, [r5, #1]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r2, _080917FC @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08091804
	ldr r0, _080917F0 @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _0809181E
	.align 2, 0
_080917EC: .4byte 0x040000D4
_080917F0: .4byte gUnknown_080D737C
_080917F4: .4byte gObjPalette
_080917F8: .4byte 0x80000010
_080917FC: .4byte gFlags
_08091800: .4byte gPressedKeys
_08091804:
	ldr r1, _08091850 @ =0x040000D4
	ldr r3, _08091854 @ =gUnknown_080D737C
	str r3, [r1]
	ldr r0, _08091858 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _0809185C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _08091860 @ =gFlags
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0809181E:
	ldr r0, _08091864 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0809182A
	b _08091978
_0809182A:
	ldr r0, _08091868 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080918F6
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08091870
	ldrh r1, [r5, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0809186C
	movs r0, #2
	b _08091888
	.align 2, 0
_08091850: .4byte 0x040000D4
_08091854: .4byte gUnknown_080D737C
_08091858: .4byte gObjPalette
_0809185C: .4byte 0x80000010
_08091860: .4byte gFlags
_08091864: .4byte gBgScrollRegs
_08091868: .4byte gRepeatedKeys
_0809186C:
	subs r0, r1, #1
	b _08091888
_08091870:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809188A
	ldrh r1, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #2
	bne _08091886
	strh r2, [r5, #0x1e]
	b _0809188A
_08091886:
	adds r0, r1, #1
_08091888:
	strh r0, [r5, #0x1e]
_0809188A:
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x18
	adds r3, r5, #0
	adds r3, #0x12
	adds r2, r6, #0
_08091896:
	lsls r0, r4, #1
	adds r1, r3, r0
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08091896
	movs r7, #0x1e
	ldrsh r0, [r5, r7]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r1, _080918D4 @ =gFlags
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080918DC
	ldr r0, _080918D8 @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080918F6
	.align 2, 0
_080918D4: .4byte gFlags
_080918D8: .4byte gUnknown_080D737C
_080918DC:
	ldr r1, _0809192C @ =0x040000D4
	ldr r2, _08091930 @ =gUnknown_080D737C
	str r2, [r1]
	ldr r0, _08091934 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08091938 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0809193C @ =gFlags
	ldr r0, [r3]
	movs r1, #2
	orrs r0, r1
	str r0, [r3]
_080918F6:
	ldr r0, _08091940 @ =gBgScrollRegs
	movs r7, #4
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne _08091978
	ldr r0, _08091944 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08091978
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08091948
	ldrh r0, [r5, #0x20]
	subs r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08091960
	movs r0, #2
	strh r0, [r5, #0x20]
	b _08091960
	.align 2, 0
_0809192C: .4byte 0x040000D4
_08091930: .4byte gUnknown_080D737C
_08091934: .4byte gObjPalette
_08091938: .4byte 0x80000010
_0809193C: .4byte gFlags
_08091940: .4byte gBgScrollRegs
_08091944: .4byte gRepeatedKeys
_08091948:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091960
	ldrh r0, [r5, #0x20]
	adds r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08091960
	strh r2, [r5, #0x20]
_08091960:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x12
	adds r1, r1, r0
	ldrh r0, [r5, #0x20]
	movs r2, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5, #1]
	strb r2, [r5, #4]
_08091978:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08091A24
	ldrh r0, [r5, #0x22]
	ldrb r2, [r5, #3]
	cmp r0, r2
	blo _08091A1E
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080919DC
	ldr r3, _080919A8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080919B0
	ldr r0, _080919AC @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080919C6
	.align 2, 0
_080919A8: .4byte gFlags
_080919AC: .4byte gUnknown_080D737C
_080919B0:
	ldr r1, _080919CC @ =0x040000D4
	ldr r0, _080919D0 @ =gUnknown_080D737C
	str r0, [r1]
	ldr r0, _080919D4 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _080919D8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080919C6:
	movs r0, #1
	b _08091A18
	.align 2, 0
_080919CC: .4byte 0x040000D4
_080919D0: .4byte gUnknown_080D737C
_080919D4: .4byte gObjPalette
_080919D8: .4byte 0x80000010
_080919DC:
	ldr r3, _080919F8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08091A00
	ldr r0, _080919FC @ =gUnknown_080D739C
	movs r1, #0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _08091A16
	.align 2, 0
_080919F8: .4byte gFlags
_080919FC: .4byte gUnknown_080D739C
_08091A00:
	ldr r1, _08091A34 @ =0x040000D4
	ldr r0, _08091A38 @ =gUnknown_080D739C
	str r0, [r1]
	ldr r0, _08091A3C @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08091A40 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08091A16:
	movs r0, #0
_08091A18:
	strb r0, [r5, #2]
	movs r0, #0
	strh r0, [r5, #0x22]
_08091A1E:
	ldrh r0, [r5, #0x22]
	adds r0, #1
	strh r0, [r5, #0x22]
_08091A24:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091A34: .4byte 0x040000D4
_08091A38: .4byte gUnknown_080D739C
_08091A3C: .4byte gObjPalette
_08091A40: .4byte 0x80000010

	thumb_func_start sub_8091A44
sub_8091A44: @ 0x08091A44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r5, #0
	ldr r6, _08091ADC @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x70
	subs r0, r0, r1
	mov sb, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	mov r8, r1
	mov r7, ip
	adds r7, #0x24
_08091A66:
	lsls r2, r5, #3
	adds r4, r7, r2
	mov r1, sb
	str r1, [r4]
	mov r3, ip
	adds r3, #0x28
	adds r3, r3, r2
	lsls r0, r5, #4
	adds r0, #0x2d
	mov r1, r8
	subs r0, r0, r1
	adds r0, r0, r2
	str r0, [r3]
	mov r1, ip
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r0, [r4]
	subs r0, #0x46
	str r0, [r1]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r3]
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08091A66
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x54]
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x7b
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x58]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x64
	strh r0, [r1]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x66
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091ADC: .4byte gBgScrollRegs

	thumb_func_start sub_8091AE0
sub_8091AE0: @ 0x08091AE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	ldr r7, _08091B44 @ =gUnknown_080D7264
	movs r0, #0
	mov r8, r0
_08091AF0:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x6c
	adds r4, r5, r0
	lsls r1, r6, #1
	adds r0, r5, #0
	adds r0, #0x12
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	lsls r1, r6, #3
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r6, r0
	bne _08091B48
	mov r0, r8
	b _08091B4A
	.align 2, 0
_08091B44: .4byte gUnknown_080D7264
_08091B48:
	movs r0, #1
_08091B4A:
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08091AF0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8091B78
sub_8091B78: @ 0x08091B78
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08091B7E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xe4
	adds r0, r5, r0
	ldr r2, _08091BC0 @ =gUnknown_080D731C
	lsls r3, r4, #3
	adds r2, r3, r2
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	adds r1, #0x3c
	adds r1, r1, r3
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	adds r1, r1, r3
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08091B7E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08091BC0: .4byte gUnknown_080D731C

	thumb_func_start sub_8091BC4
sub_8091BC4: @ 0x08091BC4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r7, _08091BF4 @ =gUnknown_080D7024
	ldr r6, _08091BF8 @ =gUnknown_080D7234
_08091BCE:
	lsls r1, r5, #2
	adds r0, r1, r5
	lsls r0, r0, #3
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r2, r4, r0
	adds r3, r1, #0
	cmp r5, #0
	bne _08091BFC
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	b _08091C0C
	.align 2, 0
_08091BF4: .4byte gUnknown_080D7024
_08091BF8: .4byte gUnknown_080D7234
_08091BFC:
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r6
_08091C0C:
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x54]
	lsls r1, r5, #1
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x58]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r3
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08091BCE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8091C38
sub_8091C38: @ 0x08091C38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08091C3E:
	lsls r2, r5, #2
	adds r4, r2, r5
	lsls r4, r4, #3
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r6, r4
	movs r0, #0x1e
	ldrsh r1, [r6, r0]
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r5, #6
	subs r0, #0x12
	adds r1, r1, r0
	lsls r0, r5, #4
	adds r1, r1, r0
	lsls r0, r5, #3
	adds r1, r1, r0
	adds r1, r1, r2
	strh r1, [r4, #0x10]
	movs r0, #0x1e
	ldrsh r1, [r6, r0]
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #4
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08091C3E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Options_ButtonConfig
TaskDestructor_Options_ButtonConfig: @ 0x08091C9C
	bx lr
	.align 2, 0

	thumb_func_start sub_8091CA0
sub_8091CA0: @ 0x08091CA0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r2, _08091CD8 @ =gUnknown_080D7334
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x64
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x66
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08091CD8: .4byte gUnknown_080D7334

	thumb_func_start sub_8091CDC
sub_8091CDC: @ 0x08091CDC
	push {lr}
	adds r3, r0, #0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0x1e
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r1, [r1]
	subs r1, #8
	strh r1, [r0, #0x10]
	movs r1, #0x1e
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x40
	adds r1, r1, r2
	ldr r1, [r1]
	subs r1, #4
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
