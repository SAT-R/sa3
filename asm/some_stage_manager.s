.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_8065FAC
Task_8065FAC: @ 0x08065FAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0806607C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrb r0, [r0, #1]
	str r0, [sp]
	movs r0, #0
	mov r8, r0
	ldr r1, _08066080 @ =gUnknown_080D5248
	ldr r3, [sp]
	lsls r0, r3, #1
	adds r0, r0, r1
	mov sl, r1
	ldrh r0, [r0]
	cmp r8, r0
	blo _08065FDE
	b _080660FC
_08065FDE:
	ldr r0, _08066084 @ =0x03000002
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r1, _08066088 @ =0x03000014
	adds r1, r2, r1
	str r1, [sp, #0xc]
_08065FEA:
	ldr r1, _0806608C @ =gUnknown_08E2EC98
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r3, r8
	lsls r0, r3, #1
	add r0, r8
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r0, [r5]
	mov sb, r0
	ldrh r1, [r5, #2]
	mov ip, r1
	ldrh r2, [r5, #4]
	str r2, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r8
	ldrb r6, [r0]
	mov r0, ip
	adds r0, #1
	muls r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r7, [r5, #8]
	lsls r0, r4, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	lsls r3, r3, #2
	ldr r1, [sp, #0xc]
	adds r0, r1, r3
	ldr r2, _08066090 @ =gStageData
	ldr r1, [r2, #0x1c]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r3, [sp, #0x10]
	cmp r1, r2
	bls _080660E4
	ldr r3, _08066094 @ =gFlags
	ldr r2, [r3]
	movs r0, #1
	mov sl, r0
	orrs r2, r0
	str r2, [r3]
	adds r0, r4, #1
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r6, #1
	ldr r1, [sp, #4]
	cmp r5, r1
	blt _0806605C
	movs r4, #0
_0806605C:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08066098
	lsls r0, r4, #1
	adds r0, #2
	adds r0, r7, r0
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	mov r2, ip
	bl sub_80C460C
	b _080660C2
	.align 2, 0
_0806607C: .4byte gCurTask
_08066080: .4byte gUnknown_080D5248
_08066084: .4byte 0x03000002
_08066088: .4byte 0x03000014
_0806608C: .4byte gUnknown_08E2EC98
_08066090: .4byte gStageData
_08066094: .4byte gFlags
_08066098:
	lsls r0, r4, #1
	adds r0, #2
	adds r0, r7, r0
	ldr r1, _0806610C @ =0x040000D4
	str r0, [r1]
	mov r1, sb
	lsls r0, r1, #1
	ldr r1, _08066110 @ =gBgPalette
	adds r0, r0, r1
	ldr r1, _0806610C @ =0x040000D4
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r1, ip
	orrs r1, r0
	ldr r0, _0806610C @ =0x040000D4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r1, sl
	orrs r2, r1
	str r2, [r3]
_080660C2:
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r2, r3
	ldr r2, _08066114 @ =gStageData
	ldr r1, [r2, #0x1c]
	str r1, [r0]
	lsls r0, r5, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #4]
	cmp r6, r3
	blo _080660DA
	movs r6, #0
_080660DA:
	ldr r0, [sp, #8]
	add r0, r8
	strb r6, [r0]
	ldr r0, _08066118 @ =gUnknown_080D5248
	mov sl, r0
_080660E4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, [sp]
	lsls r0, r1, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r8, r0
	bhs _080660FC
	b _08065FEA
_080660FC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806610C: .4byte 0x040000D4
_08066110: .4byte gBgPalette
_08066114: .4byte gStageData
_08066118: .4byte gUnknown_080D5248
.endif
