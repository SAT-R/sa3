.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_IA125_126
Task_IA125_126: @ 0x0803D7D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0803D81C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0     @ r7 = ia
	ldr r5, [r7]        @ r5 = me
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1          @ r8 = worldX
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r6, r1, r0     @ r6 = worldY
	mov r0, r8
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803D820
	ldrb r0, [r7, #0xa]
	strb r0, [r5]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0803D982
	.align 2, 0
_0803D81C: .4byte gCurTask
_0803D820:
	lsls r1, r6, #8
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [sp]         @ sp00 = Q(worldX)
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sl, r1
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	add r0, r8
	mov sb, r0
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0803D85C
	ldr r1, _0803D858 @ =0xFFFFFA00
	add sb, r1
	b _0803D862
	.align 2, 0
_0803D858: .4byte 0xFFFFFA00
_0803D85C:
	movs r0, #0xc0
	lsls r0, r0, #3
	add r8, r0
_0803D862:
	movs r6, #0
_0803D864:
	movs r3, #0
	cmp r6, #0
	bne _0803D874
	ldr r0, _0803D870 @ =gStageData
	ldrb r1, [r0, #6]
	b _0803D87E
	.align 2, 0
_0803D870: .4byte gStageData
_0803D874:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803D87E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803D8F4 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803D8A2
	cmp r1, #8
	beq _0803D8A2
	cmp r1, #0x10
	bne _0803D97A
_0803D8A2:
	adds r0, r4, #0
	str r3, [sp, #4]
	bl sub_802C0D4
	ldr r3, [sp, #4]
	cmp r0, #0
	bne _0803D97A
	ldr r2, [r4, #0x10]
	cmp r2, r8
	ble _0803D928
	cmp r2, sb
	bge _0803D928
	ldr r0, [r4, #0x14]
	ldr r1, [sp]
	cmp r0, r1
	ble _0803D928
	cmp r0, sl
	bge _0803D928
	adds r0, r7, #0
	adds r0, #0xd
	adds r1, r0, r6
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _0803D97A
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803D91C
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803D8FC
	adds r0, r4, #0
	ldr r1, _0803D8F8 @ =sub_80077CC
	bl SetPlayerCallback
	b _0803D91C
	.align 2, 0
_0803D8F4: .4byte gPlayers
_0803D8F8: .4byte sub_80077CC
_0803D8FC:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0803D914
	adds r0, r4, #0
	ldr r1, _0803D910 @ =sub_8005380
	bl SetPlayerCallback
	b _0803D91C
	.align 2, 0
_0803D910: .4byte sub_8005380
_0803D914:
	adds r0, r4, #0
	ldr r1, _0803D924 @ =sub_800891C
	bl SetPlayerCallback
_0803D91C:
	adds r1, r5, r6
	movs r0, #1
	b _0803D978
	.align 2, 0
_0803D924: .4byte sub_800891C
_0803D928:
	adds r0, r7, #0
	adds r0, #0xd
	adds r1, r0, r6
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #1
	bne _0803D974
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0803D974
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0803D956
	cmp r2, sb
	ble _0803D964
	mov r0, sb
	str r0, [r4, #0x70]
	mov r1, sl
	str r1, [r4, #0x74]
	movs r3, #1
	b _0803D968
_0803D956:
	cmp r2, r8
	bge _0803D964
	mov r0, r8
	str r0, [r4, #0x70]
	mov r1, sl
	str r1, [r4, #0x74]
	movs r3, #1
_0803D964:
	cmp r3, #0
	beq _0803D974
_0803D968:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800A218
_0803D974:
	adds r1, r5, r6
	movs r0, #0
_0803D978:
	strb r0, [r1]
_0803D97A:
	adds r6, #1
	cmp r6, #1
	bgt _0803D982
	b _0803D864
_0803D982:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.endif
