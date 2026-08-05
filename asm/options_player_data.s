.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

	thumb_func_start Task_Options_PlayerData
Task_Options_PlayerData: @ 0x0808F268
	push {r4, r5, lr}
	ldr r5, _0808F2A0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808F4AC
	ldr r2, _0808F2A4 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808F2A8
	ldr r0, [r4, #0x3c]
	cmn r0, r1
	bgt _0808F2A8
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
	b _0808F3A4
	.align 2, 0
_0808F2A0: .4byte gCurTask
_0808F2A4: .4byte gBgScrollRegs
_0808F2A8:
	ldr r5, _0808F310 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	movs r3, #4
	ldrsh r1, [r5, r3]
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0808F2D6
	adds r0, r4, #0
	bl sub_808F3AC
	adds r0, r4, #0
	bl sub_808F564
	adds r0, r4, #0
	bl sub_808F598
	adds r0, r4, #0
	bl sub_808F528
_0808F2D6:
	ldr r0, _0808F314 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0808F3A4
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0808F3A4
	ldr r0, _0808F318 @ =gPressedKeys
	ldrh r1, [r0]
	movs r5, #1
	ands r5, r1
	cmp r5, #0
	bne _0808F324
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808F340
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, [r4, #4]
	strb r5, [r0]
	ldr r0, _0808F31C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808F320 @ =sub_808F434
	str r0, [r1, #8]
	b _0808F3A4
	.align 2, 0
_0808F310: .4byte gBgScrollRegs
_0808F314: .4byte gBldRegs
_0808F318: .4byte gPressedKeys
_0808F31C: .4byte gCurTask
_0808F320: .4byte sub_808F434
_0808F324:
	ldr r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #2
	bgt _0808F340
	ldr r0, _0808F338 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808F33C @ =Task_808F5E0
	str r0, [r1, #8]
	b _0808F3A4
	.align 2, 0
_0808F338: .4byte gCurTask
_0808F33C: .4byte Task_808F5E0
_0808F340:
	ldr r0, _0808F37C @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808F3A4
	ldr r5, _0808F380 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808F3A4
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808F388
	ldr r1, [r4, #8]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0808F384
	movs r0, #3
	b _0808F3A2
	.align 2, 0
_0808F37C: .4byte gBgScrollRegs
_0808F380: .4byte gRepeatedKeys
_0808F384:
	subs r0, r2, #1
	b _0808F3A2
_0808F388:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F3A4
	ldr r1, [r4, #8]
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #3
	bne _0808F3A0
	strh r3, [r1]
	b _0808F3A4
_0808F3A0:
	adds r0, r2, #1
_0808F3A2:
	strh r0, [r1]
_0808F3A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808F3AC
sub_808F3AC: @ 0x0808F3AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _0808F40C @ =gUnknown_080D6F5C
	movs r0, #0
	mov r8, r0
_0808F3BC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r1, r5, #3
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r5, #4
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r6, #8]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r5, r0
	beq _0808F410
	movs r0, #1
	b _0808F412
	.align 2, 0
_0808F40C: .4byte gUnknown_080D6F5C
_0808F410:
	mov r0, r8
_0808F412:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0808F3BC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808F434
sub_808F434: @ 0x0808F434
	push {r4, r5, lr}
	ldr r5, _0808F46C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808F4AC
	ldr r2, _0808F470 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808F474
	ldr r0, [r4, #0x3c]
	cmn r0, r1
	bgt _0808F474
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
	b _0808F4A2
	.align 2, 0
_0808F46C: .4byte gCurTask
_0808F470: .4byte gBgScrollRegs
_0808F474:
	ldr r1, _0808F4A8 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	movs r0, #4
	ldrsh r1, [r1, r0]
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0808F4A2
	adds r0, r4, #0
	bl sub_808F3AC
	adds r0, r4, #0
	bl sub_808F564
	adds r0, r4, #0
	bl sub_808F598
	adds r0, r4, #0
	bl sub_808F528
_0808F4A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808F4A8: .4byte gBgScrollRegs

	thumb_func_start sub_808F4AC
sub_808F4AC: @ 0x0808F4AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _0808F524 @ =gBgScrollRegs
	movs r0, #0x14
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x28
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x32
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x18
_0808F4D4:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0808F4D4
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x87
	subs r0, r0, r1
	str r0, [r3, #0x38]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x46
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F524: .4byte gBgScrollRegs

	thumb_func_start sub_808F528
sub_808F528: @ 0x0808F528
	push {lr}
	adds r3, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, _0808F560 @ =gUnknown_080D7054
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
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808F560: .4byte gUnknown_080D7054

	thumb_func_start sub_808F564
sub_808F564: @ 0x0808F564
	push {lr}
	adds r2, r0, #0
	adds r2, #0xec
	ldr r3, _0808F594 @ =gUnknown_080D7024
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x34]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x38]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808F594: .4byte gUnknown_080D7024

	thumb_func_start sub_808F598
sub_808F598: @ 0x0808F598
	push {lr}
	mov ip, r0
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, ip
	mov r2, ip
	ldr r1, [r2, #8]
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x14
	adds r1, r1, r2
	ldr r1, [r1]
	subs r1, #1
	strh r1, [r0, #0x10]
	mov r1, ip
	ldr r3, [r1, #8]
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x18
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Options_PlayerData
TaskDestructor_Options_PlayerData: @ 0x0808F5DC
	bx lr
	.align 2, 0

	thumb_func_start Task_808F5E0
Task_808F5E0: @ 0x0808F5E0
	push {r4, r5, lr}
	ldr r5, _0808F630 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808F4AC
	adds r0, r4, #0
	bl sub_808F3AC
	adds r0, r4, #0
	bl sub_808F528
	adds r0, r4, #0
	bl sub_808F564
	adds r0, r4, #0
	bl sub_808F598
	ldr r2, _0808F634 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808F638
	ldr r0, [r4, #0x3c]
	cmn r0, r1
	bgt _0808F638
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
	b _0808F652
	.align 2, 0
_0808F630: .4byte gCurTask
_0808F634: .4byte gBgScrollRegs
_0808F638:
	ldr r0, _0808F658 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _0808F65C @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0xe
	bls _0808F652
	ldr r0, _0808F660 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808F652:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808F658: .4byte gBgScrollRegs
_0808F65C: .4byte gBldRegs
_0808F660: .4byte gCurTask
