.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_808F748
sub_808F748: @ 0x0808F748
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0xdc
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _0808F8F4 @ =gUnknown_080D7084
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
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
	ldrh r1, [r6, #0x34]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r6, #0x36]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r7, _0808F8F8 @ =gUnknown_080D6AE8
	movs r5, #0
_0808F7B2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r7, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0808F7B2
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _0808F8FC @ =gUnknown_080D7024
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _0808F900 @ =gUnknown_080D70B4
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x30]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F8F4: .4byte gUnknown_080D7084
_0808F8F8: .4byte gUnknown_080D6AE8
_0808F8FC: .4byte gUnknown_080D7024
_0808F900: .4byte gUnknown_080D70B4

	thumb_func_start Task_Options_Difficulty_Init
Task_Options_Difficulty_Init: @ 0x0808F904
	push {r4, lr}
	ldr r0, _0808F954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808FA9C
	adds r0, r4, #0
	bl sub_808FA18
	adds r0, r4, #0
	bl sub_808FB10
	adds r0, r4, #0
	bl sub_808FB44
	adds r0, r4, #0
	bl sub_808FB78
	ldr r0, _0808F958 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808F984
	ldr r0, _0808F95C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808F984
	movs r2, #8
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _0808F960
	cmp r1, #1
	beq _0808F970
	b _0808FA12
	.align 2, 0
_0808F954: .4byte gCurTask
_0808F958: .4byte gBgScrollRegs
_0808F95C: .4byte gPressedKeys
_0808F960:
	ldr r0, _0808F96C @ =gLoadedSaveGame
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r0, r3
	strb r1, [r0]
	b _0808FA12
	.align 2, 0
_0808F96C: .4byte gLoadedSaveGame
_0808F970:
	ldr r0, _0808F980 @ =gLoadedSaveGame
	movs r1, #0xd9
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _0808FA12
	.align 2, 0
_0808F980: .4byte gLoadedSaveGame
_0808F984:
	ldr r0, _0808F9B0 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bgt _0808F9B8
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x24]
	cmn r0, r1
	bgt _0808F9B8
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0808F9B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808FA12
	.align 2, 0
_0808F9B0: .4byte gBgScrollRegs
_0808F9B4: .4byte gCurTask
_0808F9B8:
	movs r1, #4
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _0808FA12
	ldr r0, _0808F9F0 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0808FA12
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808F9F8
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0808F9F4
	movs r0, #1
	b _0808FA10
	.align 2, 0
_0808F9F0: .4byte gRepeatedKeys
_0808F9F4:
	subs r0, r1, #1
	b _0808FA10
_0808F9F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808FA12
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #1
	bne _0808FA0E
	strh r2, [r4, #8]
	b _0808FA12
_0808FA0E:
	adds r0, r1, #1
_0808FA10:
	strh r0, [r4, #8]
_0808FA12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_808FA18
sub_808FA18: @ 0x0808FA18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _0808FA74 @ =gUnknown_080D6AE8
	movs r0, #0
	mov r8, r0
_0808FA28:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r2, r5, #3
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r5, #6
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r5, r0
	beq _0808FA78
	movs r0, #1
	b _0808FA7A
	.align 2, 0
_0808FA74: .4byte gUnknown_080D6AE8
_0808FA78:
	mov r0, r8
_0808FA7A:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0808FA28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808FA9C
sub_808FA9C: @ 0x0808FA9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _0808FB0C @ =gBgScrollRegs
	movs r0, #0xc
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x37
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x46
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x10
_0808FAC4:
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
	cmp r2, #1
	bls _0808FAC4
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x1c]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x87
	subs r0, r0, r1
	str r0, [r3, #0x20]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r3, #0x34]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r3, #0x36]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FB0C: .4byte gBgScrollRegs

	thumb_func_start sub_808FB10
sub_808FB10: @ 0x0808FB10
	push {lr}
	adds r2, r0, #0
	adds r2, #0xdc
	ldr r3, _0808FB40 @ =gUnknown_080D7084
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
	ldrh r1, [r0, #0x34]
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #0x36]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808FB40: .4byte gUnknown_080D7084

	thumb_func_start sub_808FB44
sub_808FB44: @ 0x0808FB44
	push {lr}
	adds r2, r0, #0
	adds r2, #0x8c
	ldr r3, _0808FB74 @ =gUnknown_080D7024
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
	ldr r1, [r0, #0x1c]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808FB74: .4byte gUnknown_080D7024

	thumb_func_start sub_808FB78
sub_808FB78: @ 0x0808FB78
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb4
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3, #8]
	lsls r1, r1, #6
	adds r2, r2, r1
	subs r2, #3
	strh r2, [r0, #0x10]
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
    
	thumb_func_start TaskDestructor_Options_Difficulty
TaskDestructor_Options_Difficulty: @ 0x0808FBB0
	bx lr
	.align 2, 0
