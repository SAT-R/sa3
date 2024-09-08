.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0          @ sb = me
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10  @ r4 = regionX
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10  @ r5 = regionY
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18  @ r6 = id
	ldr r0, _08044D5C @ =Task_SunsetBridge
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08044D60 @ =TaskDestruction_SunsetBridge
	str r1, [sp]
	movs r1, #0xa8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0     @ r7 = bridge
	ldr r3, _08044D64 @ =0x03000080
	add r3, r8
	mov sl, r3
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sb
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	mov r1, sb          @ r1 = sb = me
	ldrb r3, [r1]
	lsls r3, r3, #3
	lsls r4, r4, #8
	adds r3, r3, r4     @ r3 = worldX
	str r3, [r7, #0xc]
	ldrb r2, [r1, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5     @ r2 = worldY
	str r2, [r7, #0x10] @ bridge->worldY = TO_WORLD_POS(me->y, regionY);
	ldr r0, _08044D68 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _08044D6C @ =gPlayers
	adds r0, r0, r4
	str r0, [r7, #0x74]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r7, #0x78] 
	mov r4, sb          @ r4 = sb = me
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r1, r1, #3
	adds r1, r2, r1
	strh r1, [r7, #0x16]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r7, #0x1a]
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r1, r1, #3
	adds r1, r3, r1
	strh r1, [r7, #0x14]
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	lsls r3, r3, #8
	str r3, [r7, #0xc]
	lsls r2, r2, #8
	str r2, [r7, #0x10]
	movs r0, #0x20
	str r0, [r7, #0x6c]
	str r0, [r7, #0x70]
	ldrb r0, [r4, #5]
	lsls r0, r0, #3     @ width = (me->d.uData[2] * TILE_WIDTH);
	movs r1, #0x18
	bl __divsi3
	ldr r2, _08044D70 @ =0x03000068
	add r2, r8
	strh r0, [r2]       @ bridge->unk68 = width / 24;
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08044D2A
	movs r0, #0x10
	strh r0, [r2]
_08044D2A:
	mov r1, sb              @ r1 = sb = me
	ldrb r0, [r1, #5]
	lsls r0, r0, #2
	strh r0, [r7, #0x20]    
	movs r3, #0x14
	ldrsh r0, [r7, r3]
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r7, #0x1c]
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	strh r0, [r7, #0x22]
	ldrh r0, [r2]
	cmp r0, #1
	bls _08044D74
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0x80
	lsls r0, r0, #2
	bl __divsi3
	b _08044D78
	.align 2, 0
_08044D5C: .4byte Task_SunsetBridge
_08044D60: .4byte TaskDestruction_SunsetBridge
_08044D64: .4byte 0x03000080
_08044D68: .4byte gStageData
_08044D6C: .4byte gPlayers
_08044D70: .4byte 0x03000068
_08044D74:
	movs r0, #0x80
	lsls r0, r0, #2
_08044D78:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	bl sub_8045060
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sb
	strb r0, [r4]
	movs r0, #0xc
	bl VramMalloc
	mov r1, sl
	str r0, [r1]    @ bridge->tiles = ALLOC_TILES(ANIM_SUNSET_BRIDGE);
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x14]
	movs r0, #0xdf
	lsls r0, r0, #2
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	mov r0, sl
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0


.syntax divided
