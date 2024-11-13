.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ NOTE(Jace): Trigger for Bosses (Gmerl and main each) as well as the
@             Trigger for the Stage Goal Ring (different from main Stage Goal Ring IA)

	thumb_func_start CreateEntity_Interactable087
CreateEntity_Interactable087: @ 0x0803E424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0     @ r7 = me
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1          @ sb = regionX
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2          @ r8 = regionY
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3          @ sl = id
	ldrb r0, [r7, #7]
	movs r6, #0x1f
	ands r6, r0
	ldr r0, _0803E524 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _0803E456
	cmp r6, #3
	bls _0803E50C
_0803E456:
	ldr r0, _0803E528 @ =sub_803E544
	ldr r2, _0803E52C @ =0x00000FFF
	ldr r1, _0803E530 @ =TaskDestructor_TriggerBossAndGoalRing
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r2, _0803E534 @ =0x03000014
	adds r0, r4, r2
	movs r1, #0
	mov ip, r1
	movs r5, #0
	mov r2, sb
	strh r2, [r3, #4]
	mov r1, r8
	strh r1, [r3, #6]
	str r7, [r3]
	ldrb r1, [r7]
	strb r1, [r3, #0xa]
	mov r2, sl
	strb r2, [r3, #0xb]
	ldr r1, _0803E538 @ =0x0300002F
	adds r2, r4, r1
	movs r1, #1
	strb r1, [r2]
	str r5, [r3, #0x30]
	ldr r2, _0803E53C @ =0x0300002E
	adds r4, r4, r2
	strb r6, [r4]
	ldrb r1, [r7, #7]
	lsrs r1, r1, #5
	lsls r1, r1, #6
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	strh r1, [r3, #0x2c]
	str r5, [r3, #0x3c]
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r2, [r3, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #8
	str r1, [r3, #0xc]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r2, [r3, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #8
	str r1, [r3, #0x10]
	ldr r1, _0803E524 @ =gStageData
	adds r1, #0xbd
	mov r2, ip
	strb r2, [r1]
	ldr r2, _0803E540 @ =gCamera
	ldr r1, [r2, #0x18]
	strh r1, [r3, #0x34]
	ldr r1, [r2, #0x10]
	strh r1, [r3, #0x36]
	ldr r1, [r2, #0x1c]
	strh r1, [r3, #0x38]
	ldr r1, [r2, #0x14]
	strh r1, [r3, #0x3a]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #0xb
	ldr r2, [r3, #0xc]
	adds r2, r2, r1
	str r2, [r0]
	ldrb r1, [r7, #5]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r0, #4]
	movs r1, #4
	ldrsb r1, [r7, r1]
	lsls r1, r1, #0xb
	ldr r2, [r3, #0x10]
	adds r2, r2, r1
	str r2, [r0, #8]
	ldrb r1, [r7, #6]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r0, #0xc]
	bl sub_803E900
_0803E50C:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E524: .4byte gStageData
_0803E528: .4byte sub_803E544
_0803E52C: .4byte 0x00000FFF
_0803E530: .4byte TaskDestructor_TriggerBossAndGoalRing
_0803E534: .4byte 0x03000014
_0803E538: .4byte 0x0300002F
_0803E53C: .4byte 0x0300002E
_0803E540: .4byte gCamera

.if 0
	thumb_func_start sub_803E544
sub_803E544: @ 0x0803E544
.endif
