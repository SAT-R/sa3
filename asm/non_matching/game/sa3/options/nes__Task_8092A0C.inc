
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r0, _08092AB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	movs r3, #0
	ldrb r0, [r4, #5]
	cmp r3, r0
	bhs _08092A86
	ldr r7, _08092AB8 @ =gLoadedSaveGame + 0x4
	mov ip, r7
	ldr r0, _08092ABC @ =gUnknown_080D7458
	ldrh r5, [r0]
	movs r6, #0xee
	lsls r6, r6, #1
_08092A58:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r4, r0
	lsls r1, r3, #1
	add r1, ip
	ldrb r2, [r0, #0x1a]
	strh r2, [r1]
	ldrh r0, [r0, #0xc]
	cmp r0, r5
	beq _08092A7A
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	adds r0, r2, r0
	strh r0, [r1]
_08092A7A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r4, #5]
	cmp r3, r0
	blo _08092A58
_08092A86:
	ldrb r3, [r4, #5]
	ldr r5, _08092AB4 @ =gCurTask
	ldr r6, _08092AC0 @ =Task_8093710
	cmp r3, #5
	bhi _08092AAA
	ldr r4, _08092AB8 @ =gLoadedSaveGame + 0x4
	ldr r7, _08092AC4 @ =0x0000FFFF
	adds r2, r7, #0
_08092A96:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _08092A96
_08092AAA:
	ldr r0, [r5]
	str r6, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092AB4: .4byte gCurTask
_08092AB8: .4byte gLoadedSaveGame + 0x4
_08092ABC: .4byte gUnknown_080D7458
_08092AC0: .4byte Task_8093710
_08092AC4: .4byte 0x0000FFFF

.syntax divided
