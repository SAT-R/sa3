.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_802304C
sub_802304C: @ 0x0802304C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, _08023158 @ =gTilemapIdsChaoMap
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	ldr r1, _0802315C @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08023160 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, _08023164 @ =0x00008E06
	strh r0, [r1, #2]
	ldr r0, _08023168 @ =0x0000970B
	strh r0, [r1, #4]
	ldr r0, _0802316C @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	adds r1, r7, #0
	adds r1, #8
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08023170 @ =0x06003800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r0, _08023174 @ =gStageData
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r6, #0x20
	strh r6, [r1, #0x26]
	strh r6, [r1, #0x28]
	adds r0, r7, #0
	adds r0, #0x32
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	adds r0, r1, #0
	bl DrawBackground
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08023178 @ =0x06004000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _0802317C @ =0x06007000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r0, _08023180 @ =0x000001C5 @ TM_CHAO_MAP_LIST
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	strh r6, [r1, #0x26]
	movs r0, #0x40
	strh r0, [r1, #0x28]
	adds r0, r7, #0
	adds r0, #0x72
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #1
	strh r0, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	adds r0, r1, #0
	bl DrawBackground
	adds r1, r7, #0
	adds r1, #0x88
	ldr r0, _08023184 @ =0x06008000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08023188 @ =0x0600B800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xe3
	lsls r0, r0, #1         @ TM_CHAO_MAP_BG
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	strh r6, [r1, #0x26]
	strh r6, [r1, #0x28]
	adds r0, r7, #0
	adds r0, #0xb2
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #2
	strh r0, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	adds r0, r1, #0
	bl DrawBackground
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023158: .4byte gTilemapIdsChaoMap
_0802315C: .4byte gDispCnt
_08023160: .4byte gBgCntRegs
_08023164: .4byte 0x00008E06
_08023168: .4byte 0x0000970B
_0802316C: .4byte gBgScrollRegs
_08023170: .4byte 0x06003800
_08023174: .4byte gStageData
_08023178: .4byte 0x06004000
_0802317C: .4byte 0x06007000
_08023180: .4byte 0x000001C5
_08023184: .4byte 0x06008000
_08023188: .4byte 0x0600B800

	thumb_func_start ChaoMap_InitSprites
ChaoMap_InitSprites: @ 0x0802318C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r1, _0802322C @ =gUnknown_080CEECC
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	ldr r0, [sp, #0xc]
	adds r0, #0xc8
	movs r6, #0
	ldr r7, _08023230 @ =sChaoIATilesInfo
	movs r1, #0
	mov sb, r1
	adds r2, r7, #2
	mov r8, r2
	movs r4, #0
_080231B6:
	adds r5, r0, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	lsls r0, r1, #6
	strh r0, [r5, #0x14]
	strh r4, [r5, #0x16]
	ldr r0, _08023234 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	add r2, r8
	ldrh r0, [r2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, sb
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	adds r0, r5, #0
	adds r0, #0x28
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _080231B6
	ldr r1, [sp, #0xc]
	movs r2, #0x96
	lsls r2, r2, #2
	adds r5, r1, r2
	movs r6, #0
_08023214:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r2, r0, #0
	cmp r1, #4
	bgt _08023238
	movs r0, #0x38
	str r0, [sp, #0x10]
	movs r1, #0x10
	str r1, [sp, #0x14]
	lsrs r0, r2, #0x10
	b _08023246
	.align 2, 0
_0802322C: .4byte gUnknown_080CEECC
_08023230: .4byte sChaoIATilesInfo
_08023234: .4byte 0x0000FFFF
_08023238:
	movs r0, #0x4a
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	subs r0, r1, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08023246:
	mov r8, r0
	movs r4, #0
	movs r1, #8
	adds r1, r1, r5
	mov sl, r1
	asrs r7, r2, #0x10
	lsls r2, r7, #1
	mov sb, r2
_08023256:
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	mov r2, sp
	adds r1, r2, r7
	ldrb r1, [r1]
	bl GetChaoFlag
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080232B0
	asrs r3, r4, #0x10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r1, r0, #4
	adds r2, r1, r5
	movs r1, #1
	strb r1, [r2]
	ldr r1, _080232AC @ =gUnknown_080D0410
	lsls r0, r0, #2
	add r0, sb
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #1]
	movs r1, #0
	cmp r0, #2
	bls _0802328E
	movs r1, #8
_0802328E:
	strb r1, [r2, #2]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0xb
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	strh r0, [r2, #4]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, #0x20
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	strh r0, [r2, #6]
	b _080232BC
	.align 2, 0
_080232AC: .4byte gUnknown_080D0410
_080232B0:
	asrs r1, r4, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	strb r2, [r0]
_080232BC:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08023256
	lsls r0, r6, #0x10
	adds r0, r0, r2
	mov r5, sl
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08023214
	movs r6, #0
	movs r7, #0
	ldr r0, _0802334C @ =0x00000356		@ ANIM_CHAOS_EMERALD_BIG
	mov r8, r0
_080232E0:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, [sp, #0xc]
	adds r5, r2, r0
	movs r0, #0x14
	bl VramMalloc
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	mov r0, r8				@ ANIM_CHAOS_EMERALD_BIG
	strh r0, [r5, #0xc]
	movs r0, #0x78
	strh r0, [r5, #0x10]
	strh r7, [r5, #0x12]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x16]
	ldr r0, _08023350 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	strb r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	adds r0, r6, #1
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #6
	ble _080232E0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802334C: .4byte 0x00000356
_08023350: .4byte 0x0000FFFF

	thumb_func_start sub_8023354
sub_8023354: @ 0x08023354
	push {r4, lr}
	ldr r3, _080233BC @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _080233C0 @ =gInput
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802337E
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802337E
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4]
_0802337E:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023396
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bgt _08023396
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_08023396:
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #4
	strh r0, [r4, #6]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	cmp r1, #0xd4
	ble _080233AE
	movs r0, #0xd4
	strh r0, [r4, #6]
_080233AE:
	ldr r1, [r3]
	ldr r0, _080233C4 @ =Task_80233C8
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080233BC: .4byte gCurTask
_080233C0: .4byte gInput
_080233C4: .4byte Task_80233C8

	thumb_func_start Task_80233C8
Task_80233C8: @ 0x080233C8
	push {r4, r5, lr}
	ldr r0, _080233F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r3, [r4, #6]
	movs r0, #6
	ldrsh r2, [r4, r0]
	ldrh r0, [r4, #4]
	movs r5, #4
	ldrsh r1, [r4, r5]
	cmp r2, r1
	bge _080233F8
	subs r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0802340A
	b _08023408
	.align 2, 0
_080233F4: .4byte gCurTask
_080233F8:
	cmp r2, r1
	ble _0802340A
	adds r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0802340A
_08023408:
	strh r3, [r4, #4]
_0802340A:
	ldr r1, _08023434 @ =gBgScrollRegs
	ldrh r0, [r4, #4]
	strh r0, [r1, #6]
	bl sub_8023440
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0802342C
	ldrh r0, [r4, #2]
	strh r0, [r4]
	ldr r0, _08023438 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802343C @ =Task_ChaoMap
	str r0, [r1, #8]
_0802342C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023434: .4byte gBgScrollRegs
_08023438: .4byte gCurTask
_0802343C: .4byte Task_ChaoMap

	thumb_func_start sub_8023440
sub_8023440: @ 0x08023440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080234F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldrh r1, [r7]
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r0, #4
	ble _08023464
	movs r1, #4
_08023464:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, #4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x46
	ble _08023486
	movs r2, #0x46
_08023486:
	ldr r0, _080234F8 @ =0x030000C8
	adds r1, r3, r0
	adds r0, #0xf0
	adds r0, r0, r3
	mov sl, r0
	movs r0, #0
	mov sb, r0
	lsls r2, r2, #0x10
	str r2, [sp, #4]
	lsls r4, r4, #0x10
	str r4, [sp]
_0802349C:
	adds r5, r1, #0
	movs r1, #0
	mov r8, r1
	mov r6, sl
	ldr r2, [sp]
	lsrs r3, r2, #0x10
	lsls r1, r3, #0x10
	ldr r4, [sp, #4]
	asrs r2, r4, #0x10
	mov r4, sb
	lsls r0, r4, #0x10
	adds r4, r5, #0
	adds r4, #0x28
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r1, r4
	bge _0802352E
	asrs r0, r0, #0x10
	mov ip, r0
	adds r4, r2, #0
_080234C4:
	asrs r0, r1, #0xd
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r7, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802351C
	ldrb r0, [r2, #1]
	cmp r0, ip
	bne _0802351C
	mov r0, r8
	cmp r0, #0
	bne _080234FC
	ldrh r0, [r2, #4]
	strh r0, [r5, #0x10]
	ldrb r1, [r2, #2]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	b _0802350E
	.align 2, 0
_080234F4: .4byte gCurTask
_080234F8: .4byte 0x030000C8
_080234FC:
	ldrh r0, [r2, #4]
	strh r0, [r6]
	ldrb r1, [r2, #2]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r6, #2]
	adds r6, #4
_0802350E:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov r8, r0
_0802351C:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	cmp r0, r4
	blt _080234C4
_0802352E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08023544
	adds r0, r5, #0
	bl DisplaySprite
_08023544:
	cmp r4, #1
	ble _0802355A
	mov r2, r8
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	mov r1, sl
	bl DisplaySprites
	mov sl, r6
_0802355A:
	mov r4, sb
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0802349C
	movs r4, #0
	mov sb, r4
	ldr r6, _080235C8 @ =gLoadedSaveGame + 0x32
_08023576:
	ldrb r0, [r6]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080235AA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #4
	ldrh r0, [r7, #4]
	subs r0, #0x38
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
_080235AA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08023576
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080235C8: .4byte gLoadedSaveGame + 0x32

	thumb_func_start ChaoMap_DestroySprites
ChaoMap_DestroySprites: @ 0x080235CC
	push {r4, r5, r6, lr}
	ldr r0, _08023630 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc8
	adds r4, r1, r0
	movs r5, #0
_080235E0:
	ldr r0, [r4]
	cmp r0, #0
	beq _080235EA
	bl VramFree
_080235EA:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080235E0
	movs r5, #0
_080235FE:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	movs r2, #0x91
	lsls r2, r2, #3
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #6
	ble _080235FE
	movs r0, #11
	movs r1, #1
	bl WarpToMap
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023630: .4byte gCurTask

	thumb_func_start CreateChaoMap
CreateChaoMap: @ 0x08023634
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08023684 @ =Task_ChaoMap
	movs r1, #0xb4
	lsls r1, r1, #3     @ r1 = 0x5A0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_802304C
	adds r0, r4, #0
	bl ChaoMap_InitSprites
	ldr r0, _08023688 @ =gMPlayInfo_SE1
	bl MPlayStop
	ldr r0, _0802368C @ =gMPlayInfo_SE2
	bl MPlayStop
	ldr r0, _08023690 @ =gMPlayInfo_SE3
	bl MPlayStop
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023684: .4byte Task_ChaoMap
_08023688: .4byte gMPlayInfo_SE1
_0802368C: .4byte gMPlayInfo_SE2
_08023690: .4byte gMPlayInfo_SE3

	thumb_func_start Task_ChaoMap
Task_ChaoMap: @ 0x08023694
	push {lr}
	ldr r0, _080236B8 @ =gInput
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080236A6
	bl sub_8023354
_080236A6:
	ldr r0, _080236BC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080236C0
	bl ChaoMap_DestroySprites
	b _080236C4
	.align 2, 0
_080236B8: .4byte gInput
_080236BC: .4byte gPressedKeys
_080236C0:
	bl sub_8023440
_080236C4:
	pop {r0}
	bx r0

