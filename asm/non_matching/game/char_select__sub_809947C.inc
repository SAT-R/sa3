
.syntax unified
.text
	push {r4, r5, r6, lr}
	ldr r0, _080994A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080994AC @ =gStageData
	ldrb r1, [r0, #6]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _080994CE
	cmp r0, #3
	beq _080994CE
	cmp r0, #1
	bne _080994C2
	cmp r1, #0
	bne _080994B0
	ldrb r0, [r4, #3]
	bl sub_80240B4
	b _080994B4
	.align 2, 0
_080994A8: .4byte gCurTask
_080994AC: .4byte gStageData
_080994B0:
	bl sub_80240F4
_080994B4:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x10
	ands r0, r2
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_080994C2:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _080994CE
	bl sub_802613C
	b _0809966E
_080994CE:
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B69C
	adds r0, r4, #0
	bl sub_809B6C0
	movs r0, #0
	strb r0, [r4, #3]
	movs r1, #0
	ldrb r0, [r4, #5]
	cmp r1, r0
	bne _08099514
_080994F8:
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080994FE:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08099514
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #5]
	cmp r0, r2
	beq _080994F8
	cmp r0, #4
	bhi _080994FE
_08099514:
	ldrb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #6]
	ldr r1, _08099550 @ =gUnknown_080D8F18
	ldrb r0, [r4, #6]
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x3c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	ldr r1, _08099554 @ =gLoadedSaveGame
	ldr r0, _08099558 @ =gUnknown_080D946D
	adds r0, r5, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809958C
	ldr r3, _0809955C @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08099564
	ldr r0, _08099560 @ =gUnknown_08E2EEF0
	b _080995A0
	.align 2, 0
_08099550: .4byte gUnknown_080D8F18
_08099554: .4byte gLoadedSaveGame
_08099558: .4byte gUnknown_080D946D
_0809955C: .4byte gFlags
_08099560: .4byte gUnknown_08E2EEF0
_08099564:
	ldr r1, _0809957C @ =0x040000D4
	ldr r0, _08099580 @ =gUnknown_08E2EEF0
	str r0, [r1]
	ldr r0, _08099584 @ =gObjPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _08099588 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
	b _080995CE
	.align 2, 0
_0809957C: .4byte 0x040000D4
_08099580: .4byte gUnknown_08E2EEF0
_08099584: .4byte gObjPalette + 0xE0
_08099588: .4byte 0x80000010
_0809958C:
	ldr r6, _080995AC @ =gFlags
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _080995B4
	lsls r0, r5, #5
	ldr r1, _080995B0 @ =gUnknown_08E2EE50
	adds r0, r0, r1
_080995A0:
	movs r1, #0x70
	movs r2, #0x10
	bl CopyPalette
	b _080995CE
	.align 2, 0
_080995AC: .4byte gFlags
_080995B0: .4byte gUnknown_08E2EE50
_080995B4:
	ldr r2, _0809960C @ =0x040000D4
	lsls r0, r5, #5
	ldr r1, _08099610 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08099614 @ =gObjPalette + 0xE0
	str r0, [r2, #4]
	ldr r0, _08099618 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r6]
_080995CE:
	ldr r2, _0809961C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08099620 @ =0x00000157
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, _08099624 @ =0x06008000
	str r0, [r2, #4]
	movs r1, #0
	strh r1, [r2, #0xa]
	ldr r0, _08099628 @ =0x0600D800
	str r0, [r2, #0xc]
	strh r1, [r2, #0x18]
	strh r1, [r2, #0x1a]
	ldr r1, _0809962C @ =gLoadedSaveGame
	ldr r0, _08099630 @ =gUnknown_080D946D
	adds r0, r5, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08099638
	ldr r0, _08099634 @ =gUnknown_080D8CDC
	ldrh r0, [r0, #0x20]
	b _08099642
	.align 2, 0
_0809960C: .4byte 0x040000D4
_08099610: .4byte gUnknown_08E2EE50
_08099614: .4byte gObjPalette + 0xE0
_08099618: .4byte 0x80000010
_0809961C: .4byte gFlags
_08099620: .4byte 0x00000157
_08099624: .4byte 0x06008000
_08099628: .4byte 0x0600D800
_0809962C: .4byte gLoadedSaveGame
_08099630: .4byte gUnknown_080D946D
_08099634: .4byte gUnknown_080D8CDC
_08099638:
	ldr r0, _08099674 @ =gUnknown_080D8CDC
	adds r1, r5, #5
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08099642:
	strh r0, [r2, #0x1c]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0x1e]
	strh r0, [r2, #0x20]
	strh r0, [r2, #0x22]
	strh r0, [r2, #0x24]
	movs r0, #0x10
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
	adds r0, r2, #0
	adds r0, #0x2a
	strb r1, [r0]
	movs r0, #6
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	bl DrawBackground
	ldr r0, _08099678 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809967C @ =Task_8099680
	str r0, [r1, #8]
_0809966E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099674: .4byte gUnknown_080D8CDC
_08099678: .4byte gCurTask
_0809967C: .4byte Task_8099680

.syntax divided
