.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8065FAC
sub_8065FAC: @ 0x08065FAC
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
	ldr r1, _08066110 @ =gUnknown_03003D30
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
_08066110: .4byte gUnknown_03003D30
_08066114: .4byte gStageData
_08066118: .4byte gUnknown_080D5248

	thumb_func_start sub_806611C
sub_806611C: @ 0x0806611C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08066180 @ =gStageData
	mov r8, r0
	ldr r0, _08066184 @ =sub_8065FAC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08066188 @ =sub_806619C
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	movs r6, #0
	strb r4, [r0, #1]
	add r1, sp, #4
	mov r2, r8
	ldr r0, [r2, #0x1c]
	strh r0, [r1]
	ldr r0, _0806618C @ =0x03000014
	adds r1, r5, r0
	ldr r2, _08066190 @ =0x01000020
	add r0, sp, #4
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r6, [r0]
	ldr r1, _08066194 @ =0x03000002
	adds r5, r5, r1
	ldr r2, _08066198 @ =0x01000008
	adds r1, r5, #0
	bl CpuSet
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066180: .4byte gStageData
_08066184: .4byte sub_8065FAC
_08066188: .4byte sub_806619C
_0806618C: .4byte 0x03000014
_08066190: .4byte 0x01000020
_08066194: .4byte 0x03000002
_08066198: .4byte 0x01000008

    thumb_func_start sub_806619C
sub_806619C:
    bx lr
    .align 2 , 0

    @ Called on init of Gmerl (in Boss 1 and Extra Boss)
	thumb_func_start sub_80661A0
sub_80661A0: @ 0x080661A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r4, r1, #0
	mov r8, r2
	ldr r0, _08066208 @ =sub_8068860
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806620C @ =sub_8068828
	str r1, [sp]
	movs r1, #0xf0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldr r2, _08066210 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x88
	ldr r1, [sp, #4]
	str r1, [r0]
	ldrh r0, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r3, _08066214 @ =0x0300003C
	adds r5, r0, r3
	adds r1, #0x78
	adds r1, r0, r1
	str r1, [sp, #8]
	adds r3, #0x64
	adds r3, r0, r3
	str r3, [sp, #0xc]
	ldr r1, _08066218 @ =0x0300006C
	adds r7, r0, r1
	strh r4, [r5, #0x10]
	ldrb r0, [r2, #9]
	cmp r0, #7
	beq _08066202
	ldr r0, [r2, #8]
	ldr r1, _0806621C @ =0x00FFFF00
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _08066224
_08066202:
	ldr r0, _08066220 @ =gCamera
	ldr r0, [r0, #0x10]
	b _08066228
	.align 2, 0
_08066208: .4byte sub_8068860
_0806620C: .4byte sub_8068828
_08066210: .4byte gStageData
_08066214: .4byte 0x0300003C
_08066218: .4byte 0x0300006C
_0806621C: .4byte 0x00FFFF00
_08066220: .4byte gCamera
_08066224:
	mov r0, r8
	subs r0, #0x74
_08066228:
	strh r0, [r5, #0x12]
	movs r0, #0x78
	bl VramMalloc
	str r0, [r6, #4]
	movs r2, #0
	movs r1, #0
	strh r1, [r6, #0x18]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [r6, #8]
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [r6, #0xc]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r6, #0x14]
	strh r1, [r6, #0x16]
	adds r0, r6, #0
	adds r0, #0x21
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r0, _0806626C @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08066270
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #4
	b _08066276
	.align 2, 0
_0806626C: .4byte gStageData
_08066270:
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #2
_08066276:
	strb r0, [r1]
	mov r0, sb
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x23
	str r1, [sp, #0x14]
	adds r3, r6, #0
	adds r3, #0x2e
	movs r2, #0x2f
	adds r2, r2, r6
	mov ip, r2
	movs r0, #0x30
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x31
	adds r1, r1, r6
	mov sb, r1
	movs r2, #0x32
	adds r2, r2, r6
	mov sl, r2
	adds r0, r6, #0
	adds r0, #0x33
	str r0, [sp, #0x18]
	adds r1, r6, #0
	adds r1, #0xc8
	str r1, [sp, #0x10]
	subs r1, #0xa4
	movs r2, #0
_080662B0:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _080662B0
	ldr r2, _0806630C @ =gStageData
	ldrb r1, [r2, #9]
	movs r0, #0
	ldr r2, [sp, #0x14]
	strb r1, [r2]
	strb r0, [r3]
	mov r3, ip
	strb r0, [r3]
	movs r1, #2
	mov r2, r8
	strb r1, [r2]
	mov r3, sb
	strb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	movs r1, #1
	ldr r2, [sp, #0x18]
	strb r1, [r2]
	strh r0, [r7]
	strh r0, [r7, #6]
	strh r0, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_80678C0
	ldr r3, [sp, #0x14]
	ldrb r0, [r3]
	cmp r0, #7
	bhi _0806634C
	lsls r0, r0, #2
	ldr r1, _08066310 @ =_08066314
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806630C: .4byte gStageData
_08066310: .4byte _08066314
_08066314: @ jump table
	.4byte _0806634C @ case 0
	.4byte _0806634C @ case 1
	.4byte _0806634C @ case 2
	.4byte _08066334 @ case 3
	.4byte _0806634C @ case 4
	.4byte _08066338 @ case 5
	.4byte _0806634C @ case 6
	.4byte _0806633C @ case 7
_08066334:
	movs r7, #0xc
	b _0806634E
_08066338:
	movs r7, #0xe
	b _0806634E
_0806633C:
	movs r7, #0xe
	ldr r1, _08066348 @ =gStageData
	movs r0, #3
	strb r0, [r1, #0xa]
	b _0806634E
	.align 2, 0
_08066348: .4byte gStageData
_0806634C:
	movs r7, #0xa
_0806634E:
	movs r4, #0
	ldr r0, _080663E8 @ =gPlayers
	mov sl, r0
	movs r5, #0
	movs r1, #0x9e
	lsls r1, r1, #1
	mov r8, r1
	movs r2, #0xbf
	mov sb, r2
_08066360:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, sl
	adds r0, r1, #0
	adds r0, #0x4c
	strh r5, [r0]
	mov r0, r8
	adds r3, r1, r0
	ldrb r2, [r3]
	mov r0, sb
	ands r0, r2
	strb r0, [r3]
	adds r0, r1, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r1, #0x5e
	strh r5, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08066360
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80676D4
	bl sub_807A4BC
	ldr r5, [sp, #0x10]
	ldr r0, [r6, #4]
	adds r0, #0x80
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	ldr r0, _080663EC @ =0x000004F9
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	str r1, [r5, #8]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080663E8: .4byte gPlayers
_080663EC: .4byte 0x000004F9

	thumb_func_start sub_80663F0
sub_80663F0: @ 0x080663F0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08066410 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08066414
	adds r0, r2, #0
	bl TaskDestroy
	b _0806655E
	.align 2, 0
_08066410: .4byte gCurTask
_08066414:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	movs r2, #0
	ldr r7, _08066488 @ =gPlayers
	adds r6, r7, #0
	movs r5, #0
_08066428:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r6
	adds r0, r2, #0
	adds r0, #0x4c
	strh r5, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r3, r2, r0
	ldrb r2, [r3]
	movs r0, #0xbf
	ands r0, r2
	strb r0, [r3]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	ble _08066428
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	beq _08066462
	b _0806655E
_08066462:
	movs r2, #0
	ldr r5, _0806648C @ =gStageData
_08066466:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r7
	ldrb r0, [r5, #9]
	cmp r0, #7
	bhi _08066538
	lsls r0, r0, #2
	ldr r1, _08066490 @ =_08066494
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08066488: .4byte gPlayers
_0806648C: .4byte gStageData
_08066490: .4byte _08066494
_08066494: @ jump table
	.4byte _080664B4 @ case 0
	.4byte _080664C0 @ case 1
	.4byte _08066538 @ case 2
	.4byte _080664E4 @ case 3
	.4byte _08066538 @ case 4
	.4byte _08066504 @ case 5
	.4byte _08066538 @ case 6
	.4byte _0806652C @ case 7
_080664B4:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _080664BC @ =0xFFFFFB5F
	b _08066532
	.align 2, 0
_080664BC: .4byte 0xFFFFFB5F
_080664C0:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _080664DC @ =0xFFFFE537
	adds r0, r0, r1
	cmp r0, #0xee
	bhi _0806655E
	ldr r0, [r3, #0x14]
	asrs r1, r0, #8
	ldr r0, _080664E0 @ =0x00000642
	cmp r1, r0
	ble _0806655E
	adds r0, #0x8a
	b _0806651C
	.align 2, 0
_080664DC: .4byte 0xFFFFE537
_080664E0: .4byte 0x00000642
_080664E4:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _08066500 @ =0xFFFFE297
	adds r0, r0, r1
	cmp r0, #0xee
	bhi _0806655E
	ldr r0, [r3, #0x14]
	asrs r1, r0, #8
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0806655E
	adds r0, #0x82
	b _0806651C
	.align 2, 0
_08066500: .4byte 0xFFFFE297
_08066504:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _08066524 @ =0xFFFFD157
	adds r0, r0, r1
	cmp r0, #0xee
	bhi _0806655E
	ldr r0, [r3, #0x14]
	asrs r1, r0, #8
	ldr r0, _08066528 @ =0x0000015D
	cmp r1, r0
	ble _0806655E
	adds r0, #0x97
_0806651C:
	cmp r1, r0
	bgt _0806655E
	b _08066538
	.align 2, 0
_08066524: .4byte 0xFFFFD157
_08066528: .4byte 0x0000015D
_0806652C:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _08066564 @ =0xFFFFFBAF
_08066532:
	adds r0, r0, r1
	cmp r0, #0xee
	bhi _0806655E
_08066538:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08066466
	bl sub_807A4A8
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #0
	bne _0806655E
	ldr r0, _08066568 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806656C @ =sub_8068908
	str r0, [r1, #8]
_0806655E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066564: .4byte 0xFFFFFBAF
_08066568: .4byte gCurTask
_0806656C: .4byte sub_8068908

	thumb_func_start sub_8066570
sub_8066570: @ 0x08066570
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x3c
	ldrh r2, [r4, #0x18]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #1
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	subs r2, #1
	strh r2, [r4, #0x18]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bne _080665C0
	ldr r1, _080665C8 @ =gUnknown_080D52E0
	ldr r0, [r1]
	str r0, [r4]
	ldrh r0, [r1, #4]
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x16]
	ldrh r0, [r1, #0xe]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x10]
	strb r0, [r3, #0x1a]
	ldr r0, _080665CC @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	adds r0, r4, #0
	bl sub_8068AD8
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _080665D0 @ =0x00000223
	bl sub_80BA57C
_080665C0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080665C8: .4byte gUnknown_080D52E0
_080665CC: .4byte 0x0000FFFF
_080665D0: .4byte 0x00000223

	thumb_func_start sub_80665D4
sub_80665D4: @ 0x080665D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066618
	ldr r0, _08066610 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _08066642
	adds r0, r4, #0
	movs r1, #6
	bl sub_80676D4
	ldr r0, _08066614 @ =0x00000223
	bl sub_80BA648
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8068ACC
	b _08066642
	.align 2, 0
_08066610: .4byte gCamera
_08066614: .4byte 0x00000223
_08066618:
	ldr r0, _08066668 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _08066642
	adds r0, r4, #0
	movs r1, #6
	bl sub_80676D4
	ldr r0, _0806666C @ =0x00000223
	bl sub_80BA648
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8068ACC
_08066642:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806665A
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806665A:
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08066668: .4byte gCamera
_0806666C: .4byte 0x00000223

	thumb_func_start sub_8066670
sub_8066670: @ 0x08066670
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	ldr r1, _080666AC @ =gUnknown_080D56DC
	adds r0, #0x20
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A6C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080666B0
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	lsrs r6, r0, #0x1f
	b _080666BA
	.align 2, 0
_080666AC: .4byte gUnknown_080D56DC
_080666B0:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080666BA
	movs r6, #1
_080666BA:
	cmp r6, #0
	beq _080666CC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	movs r0, #1
	strh r0, [r5, #0x18]
_080666CC:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08066702
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	beq _080666F0
	cmp r0, #5
	bgt _080666EC
	cmp r0, #3
	beq _080666F0
	b _080666FA
_080666EC:
	cmp r0, #7
	bne _080666FA
_080666F0:
	adds r0, r5, #0
	movs r1, #0x32
	bl sub_80676D4
	b _08066702
_080666FA:
	adds r0, r5, #0
	movs r1, #7
	bl sub_80676D4
_08066702:
	adds r0, r5, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806671A
	adds r0, r5, #0
	bl sub_8068AAC
	adds r0, r5, #0
	bl sub_8067590
_0806671A:
	adds r0, r5, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8066728
sub_8066728: @ 0x08066728
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0xa
	beq _08066778
	cmp r0, #0xa
	bgt _08066748
	cmp r0, #1
	beq _08066750
	b _0806687E
_08066748:
	cmp r0, #0x64
	bne _0806674E
	b _0806684C
_0806674E:
	b _0806687E
_08066750:
	ldr r0, _0806682C @ =gCamera
	ldr r0, [r0]
	adds r0, #0x78
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	subs r2, r0, r1
	adds r0, r2, #0
	cmp r2, #0
	bge _08066764
	adds r0, #0x3f
_08066764:
	asrs r0, r0, #6
	movs r1, #0
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r5, #0x18]
	strh r1, [r5, #0x1a]
_08066778:
	ldr r0, _08066830 @ =gSineTable
	mov ip, r0
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r1, #0x3a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r0, r0, r6
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x1a]
	adds r0, #8
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _080667AC
	movs r0, #0
	strh r0, [r5, #0x14]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	movs r0, #0x78
	strh r0, [r5, #0x1a]
_080667AC:
	ldr r0, _08066834 @ =gStageData
	mov r8, r0
	ldr r7, [r0, #0x1c]
	movs r0, #3
	ands r7, r0
	cmp r7, #0
	bne _08066816
	ldr r3, _08066838 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0806683C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08066840 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _08066844 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r6, #0xf
	ands r6, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	lsrs r6, r0, #6
	ldr r1, [r5, #8]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r2, r2, r6
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	adds r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #9
	bl sub_8079758
_08066816:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806687E
	ldr r0, _08066848 @ =0x00000221
	bl sub_80BA57C
	b _0806687E
	.align 2, 0
_0806682C: .4byte gCamera
_08066830: .4byte gSineTable
_08066834: .4byte gStageData
_08066838: .4byte gUnknown_03006868
_0806683C: .4byte 0x00196225
_08066840: .4byte 0x3C6EF35F
_08066844: .4byte 0x000003FF
_08066848: .4byte 0x00000221
_0806684C:
	ldrh r0, [r5, #0x1a]
	subs r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0806687E
	strh r0, [r5, #0x18]
	ldr r6, [r4, #8]
	adds r0, r5, #0
	movs r1, #9
	bl sub_80676D4
	movs r1, #0x80
	lsls r1, r1, #3
	ands r6, r1
	cmp r6, #0
	beq _08066876
	ldr r0, [r4, #8]
	orrs r0, r1
	b _0806687C
_08066876:
	ldr r0, [r4, #8]
	ldr r1, _0806688C @ =0xFFFFFBFF
	ands r0, r1
_0806687C:
	str r0, [r4, #8]
_0806687E:
	movs r0, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806688C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8066890
sub_8066890: @ 0x08066890
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x3c
	ldr r0, _080668E4 @ =gCamera
	ldr r0, [r0, #0x1c]
	adds r0, #0x10
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	cmp r1, r0
	ble _080668E8
	adds r4, r5, #0
	adds r4, #0x33
	ldrb r0, [r4]
	cmp r0, #0
	beq _080668D4
	ldr r0, [r5, #0x3c]
	bl VramFree
	ldr r0, [r5, #0x78]
	bl VramFree
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl VramFree
	ldr r0, [r5, #4]
	bl VramFree
	movs r0, #0
	str r0, [r5, #4]
	strb r0, [r4]
_080668D4:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08066968
	movs r0, #1
	b _0806696A
	.align 2, 0
_080668E4: .4byte gCamera
_080668E8:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	ldr r0, _08066974 @ =gStageData
	ldr r6, [r0, #0x1c]
	movs r0, #7
	ands r6, r0
	cmp r6, #0
	bne _08066968
	ldr r4, _08066978 @ =gUnknown_03006868
	ldr r0, [r4]
	ldr r2, _0806697C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08066980 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r3, _08066984 @ =0x000003FF
	ands r3, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	movs r1, #0xf
	ands r1, r0
	ldr r4, _08066988 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r1, r2
	lsrs r2, r2, #6
	lsls r0, r3, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r1, r0
	lsrs r0, r0, #6
	ldr r1, [r5, #8]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #8
	movs r3, #0x10
	bl sub_8079758
_08066968:
	movs r0, #0
_0806696A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08066974: .4byte gStageData
_08066978: .4byte gUnknown_03006868
_0806697C: .4byte 0x00196225
_08066980: .4byte 0x3C6EF35F
_08066984: .4byte 0x000003FF
_08066988: .4byte gSineTable

	thumb_func_start sub_806698C
sub_806698C: @ 0x0806698C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _080669F8 @ =gPlayers
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r2, _080669FC @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068A6C
	movs r3, #0x16
	ldrsh r1, [r5, r3]
	ldr r0, _08066A00 @ =0xFFFFFD00
	cmp r1, r0
	bge _08066AA0
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066A0E
	ldr r0, _08066A04 @ =0x000001FF
	cmp r4, r0
	bls _08066A08
	movs r4, #0
	b _08066A22
	.align 2, 0
_080669F8: .4byte gPlayers
_080669FC: .4byte gUnknown_080D56F0
_08066A00: .4byte 0xFFFFFD00
_08066A04: .4byte 0x000001FF
_08066A08:
	cmp r4, #0xff
	bls _08066A22
	b _08066A1E
_08066A0E:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bls _08066A1A
	adds r4, r0, #0
	b _08066A22
_08066A1A:
	cmp r4, #0xff
	bhi _08066A22
_08066A1E:
	movs r4, #0x80
	lsls r4, r4, #1
_08066A22:
	ldr r7, _08066AB0 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r2, _08066AB4 @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r1, r0, #0xe
	cmp r1, #0
	bge _08066A56
	rsbs r1, r1, #0
_08066A56:
	lsls r0, r4, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r4, r0, #0
	muls r4, r2, r4
	lsls r4, r4, #2
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r5, #0
	movs r1, #0x15
	bl sub_80676D4
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066A9A
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_08066A9A:
	movs r0, #0xe7
	bl sub_80BA57C
_08066AA0:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066AB0: .4byte gSineTable
_08066AB4: .4byte gUnknown_080D56F0

	thumb_func_start sub_8066AB8
sub_8066AB8: @ 0x08066AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	adds r6, r5, #0
	adds r6, #0x6c
	ldr r2, _08066B2C @ =gUnknown_080D56DC
	adds r7, r5, #0
	adds r7, #0x20
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r8, r0
	mov sb, r8
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068984
	mov ip, r0
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	beq _08066B62
	ldr r2, _08066B30 @ =gUnknown_080D56F0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	ldr r2, _08066B34 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0
	strh r0, [r6]
	ldr r0, _08066B38 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	cmp r0, r1
	bge _08066B3C
	strh r2, [r6]
	b _08066B90
	.align 2, 0
_08066B2C: .4byte gUnknown_080D56DC
_08066B30: .4byte gUnknown_080D56F0
_08066B34: .4byte 0x000003FF
_08066B38: .4byte gCamera
_08066B3C:
	mov r0, ip
	cmp r0, #0
	beq _08066BD4
	strh r2, [r6]
	adds r0, r5, #0
	bl sub_8068AD8
	adds r0, r5, #0
	movs r1, #0x17
	bl sub_80676D4
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	b _08066BD4
_08066B62:
	ldr r2, _08066BA4 @ =gUnknown_080D56F0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r6]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08066BA8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r6]
	ldr r0, _08066BAC @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	cmp r0, r1
	ble _08066BB0
	strh r3, [r6]
_08066B90:
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_80676D4
	b _08066BD4
	.align 2, 0
_08066BA4: .4byte gUnknown_080D56F0
_08066BA8: .4byte 0x000003FF
_08066BAC: .4byte gCamera
_08066BB0:
	mov r0, ip
	cmp r0, #0
	beq _08066BD4
	strh r3, [r6]
	adds r0, r5, #0
	bl sub_8068AD8
	adds r0, r5, #0
	movs r1, #0x17
	bl sub_80676D4
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
_08066BD4:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8066BEC
sub_8066BEC: @ 0x08066BEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x2e
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08066C2C @ =gUnknown_080D5B00
	adds r2, r0, r1
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08066C3A
	adds r1, r4, #0
	adds r1, #0x2f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r2, #8]
	cmp r0, r2
	bne _08066C30
	adds r0, r4, #0
	movs r1, #0x1a
	bl sub_80676D4
	b _08066C76
	.align 2, 0
_08066C2C: .4byte gUnknown_080D5B00
_08066C30:
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_80676D4
	b _08066C76
_08066C3A:
	cmp r0, #9
	bne _08066C76
	adds r2, r4, #0
	adds r2, #0x2f
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r2]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r3]
	ldrb r2, [r2]
	adds r5, r4, #0
	adds r5, #0x30
	ldrb r3, [r5]
	adds r0, r4, #0
	bl sub_807A574
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08066C70
	movs r0, #0
	strb r0, [r5]
_08066C70:
	adds r0, r4, #0
	bl sub_08068B10
_08066C76:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08066C8E
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08066C8E:
	adds r0, r4, #0
	bl sub_8067B20
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8066C9C
sub_8066C9C: @ 0x08066C9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08066CF0 @ =gUnknown_080D54C0
	ldr r2, _08066CF4 @ =gUnknown_080D56DC
	adds r5, r4, #0
	adds r5, #0x20
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08066D02
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	ldr r0, [r6]
	str r0, [r4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08066CF8
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r6, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08066CFA
	.align 2, 0
_08066CF0: .4byte gUnknown_080D54C0
_08066CF4: .4byte gUnknown_080D56DC
_08066CF8:
	ldrh r0, [r6, #4]
_08066CFA:
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8068AD8
_08066D02:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8066D0C
sub_8066D0C: @ 0x08066D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x3c
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066D48
	ldr r0, _08066D44 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #8]
	cmp r0, r1
	bge _08066D5A
	movs r0, #1
	mov sb, r0
	b _08066D5A
	.align 2, 0
_08066D44: .4byte gCamera
_08066D48:
	ldr r0, _08066D98 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #8]
	cmp r0, r1
	ble _08066D5A
	movs r1, #1
	mov sb, r1
_08066D5A:
	adds r0, r7, #0
	bl sub_8067A64
	movs r6, #0
_08066D62:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08066D9C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _08066DA0
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066DEA
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08066DEA
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	b _08066DE8
	.align 2, 0
_08066D98: .4byte gCamera
_08066D9C: .4byte gPlayers
_08066DA0:
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	ldr r2, [r7, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #1
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #1
	bne _08066DEA
	adds r0, r4, #0
	bl sub_8009850
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066DD8
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08066DDC
_08066DD8:
	ldr r0, [r4, #4]
	orrs r0, r5
_08066DDC:
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	mov r0, r8
_08066DE8:
	str r0, [r4, #0x6c]
_08066DEA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08066D62
	movs r6, #0
	ldr r3, _08066E2C @ =gPlayers
_08066DF8:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066E6C
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08066E6C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066E30
	ldr r0, [r7, #8]
	movs r1, #0xf0
	lsls r1, r1, #5
	b _08066E34
	.align 2, 0
_08066E2C: .4byte gPlayers
_08066E30:
	ldr r0, [r7, #8]
	ldr r1, _08066E54 @ =0xFFFFE200
_08066E34:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0xc]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r2, _08066E58 @ =gCamera
	ldr r0, [r2, #0x1c]
	subs r0, #1
	cmp r1, r0
	blt _08066E5C
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r0, #1
	mov sb, r0
	b _08066E6C
	.align 2, 0
_08066E54: .4byte 0xFFFFE200
_08066E58: .4byte gCamera
_08066E5C:
	ldr r0, [r2, #0x18]
	adds r0, #1
	cmp r1, r0
	bgt _08066E6C
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r1, #1
	mov sb, r1
_08066E6C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08066DF8
	mov r0, sb
	cmp r0, #1
	bne _08066ED0
	adds r0, r7, #0
	movs r1, #0x1e
	bl sub_80676D4
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r7, #0
	bl sub_8068ACC
	movs r6, #0
	movs r5, #0
_08066E98:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08066EE0 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066EC6
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08066EC6
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_80213F0
_08066EC6:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08066E98
_08066ED0:
	movs r0, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066EE0: .4byte gPlayers

	thumb_func_start sub_8066EE4
sub_8066EE4: @ 0x08066EE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08066F60 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08066F3E
	adds r0, r4, #0
	movs r1, #0x22
	bl sub_80676D4
	adds r0, r4, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x24
	movs r3, #0
_08066F30:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08066F30
_08066F3E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08066F56
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08066F56:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08066F60: .4byte gUnknown_080D56F0

	thumb_func_start sub_8066F64
sub_8066F64: @ 0x08066F64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r0, _08067044 @ =gUnknown_080D56F0
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x20
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068A6C
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	ldr r0, _08067048 @ =0xFFFFFD00
	cmp r1, r0
	bge _0806702E
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sb, r1
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r0, #0
	beq _08066FBA
	movs r4, #0
_08066FBA:
	ldr r2, _0806704C @ =gSineTable
	mov ip, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r1, r0, #0xe
	cmp r1, #0
	bge _08066FEC
	rsbs r1, r1, #0
_08066FEC:
	lsls r0, r4, #1
	add r0, ip
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r0, #0
	muls r4, r3, r4
	lsls r4, r4, #2
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r5, #0
	movs r1, #0x23
	bl sub_80676D4
	ldr r0, [r6, #8]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0806702E
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_0806702E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067044: .4byte gUnknown_080D56F0
_08067048: .4byte 0xFFFFFD00
_0806704C: .4byte gSineTable

	thumb_func_start sub_8067050
sub_8067050: @ 0x08067050
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	adds r7, r4, #0
	adds r7, #0x6c
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080670C8 @ =gUnknown_080D5B48
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068984
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080670D8
	ldr r2, _080670CC @ =gUnknown_080D56F0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	ldr r2, _080670D0 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	ldr r2, _080670D4 @ =gCamera
	ldr r0, [r2, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _0806710C
	b _08067108
	.align 2, 0
_080670C8: .4byte gUnknown_080D5B48
_080670CC: .4byte gUnknown_080D56F0
_080670D0: .4byte 0x000003FF
_080670D4: .4byte gCamera
_080670D8:
	ldr r2, _0806714C @ =gUnknown_080D56F0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08067150 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r7]
	ldr r2, _08067154 @ =gCamera
	ldr r0, [r2, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _0806710C
_08067108:
	movs r3, #1
	mov sl, r3
_0806710C:
	ldr r0, [r4, #8]
	mov r8, r0
	asrs r0, r0, #8
	ldr r6, [r2, #0x18]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806715C
	lsls r0, r2, #0x10
	ldr r1, _08067158 @ =0xFFD80000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r1, [r2]
	movs r3, #0x1c
	muls r1, r3, r1
	adds r5, r2, #0
	cmp r0, r1
	ble _08067184
	movs r0, #1
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r1, r0
	b _08067180
	.align 2, 0
_0806714C: .4byte gUnknown_080D56F0
_08067150: .4byte 0x000003FF
_08067154: .4byte gCamera
_08067158: .4byte 0xFFD80000
_0806715C:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	movs r5, #0x1c
	adds r3, r5, #0
	muls r3, r0, r3
	movs r0, #0xc8
	subs r0, r0, r3
	adds r5, r2, #0
	cmp r1, r0
	bge _08067184
	movs r0, #1
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0xc8
	subs r0, r0, r3
_08067180:
	lsls r0, r0, #8
	str r0, [r4, #8]
_08067184:
	mov r1, sb
	cmp r1, #0
	beq _080671EA
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r2, [r5]
	adds r0, r0, r2
	movs r6, #1
	strb r6, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	ldrb r0, [r3]
	adds r1, r6, #0
	ands r1, r0
	adds r1, #6
	ldrb r2, [r5]
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_807A574
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r3, r8
	str r3, [r4, #8]
	ldrb r0, [r5]
	ldr r5, [sp]
	ldrb r5, [r5, #8]
	cmp r0, r5
	bne _080671EA
	mov r0, sl
	cmp r0, #0
	beq _080671EA
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x31
	strb r6, [r0]
	movs r0, #0
	strh r0, [r7]
	adds r0, r4, #0
	movs r1, #0x24
	bl sub_80676D4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_080671EA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8067204
sub_8067204: @ 0x08067204
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08067240 @ =gUnknown_080D5B48
	adds r5, r1, r0
	ldr r0, _08067244 @ =gUnknown_080D56F0
	ldrh r0, [r0, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #7
	beq _08067248
	lsls r2, r2, #0x10
	asrs r2, r2, #0x13
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	b _08067254
	.align 2, 0
_08067240: .4byte gUnknown_080D5B48
_08067244: .4byte gUnknown_080D56F0
_08067248:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
_08067254:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r2, r0
	bhs _08067286
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080672D8
_08067270:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r5, #8]
	cmp r2, r0
	bhs _08067286
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067270
	movs r6, #0
_08067286:
	cmp r6, #0
	beq _080672D8
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r0, [r2]
	cmp r0, #1
	bne _0806729E
	adds r0, r4, #0
	movs r1, #0x25
	bl sub_80676D4
	b _080672D8
_0806729E:
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0x24
	movs r3, #0
_080672B6:
	adds r0, r1, r2
	strb r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _080672B6
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x22
	bl sub_80676D4
_080672D8:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80672E0
sub_80672E0: @ 0x080672E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0806736C @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	movs r2, #0
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806734A
	adds r0, r4, #0
	adds r0, #0x2f
	strb r2, [r0]
	adds r0, #2
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	movs r2, #0
	lsls r5, r1, #0x10
	adds r3, r4, #0
	adds r3, #0x24
	movs r1, #0
_0806731C:
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _0806731C
	ldr r0, [r4, #0xc]
	ldr r1, _08067370 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	asrs r1, r5, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_80676D4
	ldr r0, _08067374 @ =0x00000219
	bl sub_80BA57C
_0806734A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067362
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067362:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806736C: .4byte gUnknown_080D56F0
_08067370: .4byte 0xFFFFF800
_08067374: .4byte 0x00000219

	thumb_func_start sub_8067378
sub_8067378: @ 0x08067378
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080673F4 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080673D2
	adds r0, r4, #0
	movs r1, #0x29
	bl sub_80676D4
	adds r0, r4, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x24
	movs r3, #0
_080673C4:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _080673C4
_080673D2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080673EA
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080673EA:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080673F4: .4byte gUnknown_080D56F0

	thumb_func_start sub_80673F8
sub_80673F8: @ 0x080673F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _08067438 @ =gUnknown_080D5B60
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x6c
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08067444
	ldr r2, _0806743C @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	ldr r2, _08067440 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	b _08067466
	.align 2, 0
_08067438: .4byte gUnknown_080D5B60
_0806743C: .4byte gUnknown_080D56F0
_08067440: .4byte 0x000003FF
_08067444:
	ldr r2, _080674B0 @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _080674B4 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r7]
_08067466:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0x5a
	bne _080674B8
	movs r6, #0
	mov r2, r8
	ldrb r2, [r2, #8]
	cmp r6, r2
	bhs _080674C4
	adds r4, r5, #0
	adds r4, #0x2f
_0806747C:
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r1, [r4]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r3, [r0]
	adds r0, r5, #0
	movs r1, #8
	bl sub_807A574
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r2, r8
	ldrb r2, [r2, #8]
	cmp r6, r2
	blo _0806747C
	b _080674C4
	.align 2, 0
_080674B0: .4byte gUnknown_080D56F0
_080674B4: .4byte 0x000003FF
_080674B8:
	cmp r0, #0x1e
	bne _080674C4
	adds r1, r5, #0
	adds r1, #0x31
	movs r0, #1
	strb r0, [r1]
_080674C4:
	adds r0, r5, #0
	movs r1, #0x2d
	bl sub_80689DC
	cmp r0, #0
	beq _080674DE
	movs r0, #0
	strh r0, [r7]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0xc]
_080674DE:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80674EC
sub_80674EC: @ 0x080674EC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08067588 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0xe
	lsrs r7, r0, #0x10
	ldr r5, _0806758C @ =gUnknown_080D5B60
	movs r6, #1
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r2, r0
	bhs _0806753A
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _08067538
_08067524:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r1, [r5, #8]
	cmp r2, r1
	bhs _0806753A
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067524
_08067538:
	movs r6, #0
_0806753A:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _08067568
	cmp r6, #0
	beq _08067568
	adds r0, r4, #0
	movs r1, #0x30
	bl sub_80676D4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_08067568:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067580
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067580:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067588: .4byte gUnknown_080D56F0
_0806758C: .4byte gUnknown_080D5B60

	thumb_func_start sub_8067590
sub_8067590: @ 0x08067590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x3c
	adds r3, r5, #0
	adds r3, #0x21
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _080675AA
	b _080676C8
_080675AA:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _080675BC
	b _080676C8
_080675BC:
	subs r0, r2, #1
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r3]
	ldr r0, _08067608 @ =0x00000222
	bl sub_80BA57C
	movs r0, #0xa3
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0x78
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _08067620
	ldr r1, _0806760C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080676C8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08067610
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x83
	bl sub_8027674
	b _080676C8
	.align 2, 0
_08067608: .4byte 0x00000222
_0806760C: .4byte gStageData
_08067610:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x84
	bl sub_8027674
	b _080676C8
_08067620:
	movs r4, #0
	movs r0, #0x6c
	adds r0, r0, r5
	mov r8, r0
_08067628:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08067688 @ =gPlayers
	adds r2, r0, r1
	ldr r0, [r2, #0x6c]
	cmp r0, r7
	bne _08067650
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08067650
	str r1, [r2, #0x6c]
	adds r0, r2, #0
	bl Player_8005380
_08067650:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08067628
	movs r2, #0
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r0, r8
	strh r2, [r0]
	ldr r1, _0806768C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080676A8
	strh r2, [r5, #0x1a]
	ldr r0, [r5, #0x10]
	str r0, [r5, #0xc]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08067690
	ldr r1, [r5, #8]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	movs r0, #0x81
	bl sub_8027674
	b _080676B6
	.align 2, 0
_08067688: .4byte gPlayers
_0806768C: .4byte gStageData
_08067690:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x84
	bl sub_8027674
	adds r0, r5, #0
	movs r1, #0x36
	bl sub_80676D4
	b _080676C8
_080676A8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_8068984
	cmp r0, #1
	bne _080676C0
_080676B6:
	adds r0, r5, #0
	movs r1, #0x33
	bl sub_80676D4
	b _080676C8
_080676C0:
	adds r0, r5, #0
	movs r1, #0x35
	bl sub_80676D4
_080676C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80676D4
sub_80676D4: @ 0x080676D4
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x3c
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08067704 @ =gUnknown_080D527C
	adds r2, r0, r1
	ldr r0, [r2]
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08067708
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r2, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0806770A
	.align 2, 0
_08067704: .4byte gUnknown_080D527C
_08067708:
	ldrh r0, [r2, #4]
_0806770A:
	strh r0, [r4, #0x18]
	ldrh r0, [r2, #0xe]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #0x10]
	strb r0, [r3, #0x1a]
	ldr r0, _08067738 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _08067730
	adds r0, r4, #0
	bl sub_8068A00
_08067730:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067738: .4byte 0x0000FFFF

	thumb_func_start sub_806773C
sub_806773C: @ 0x0806773C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08067754 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #7
	bhi _08067828
	lsls r0, r0, #2
	ldr r1, _08067758 @ =_0806775C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067754: .4byte gStageData
_08067758: .4byte _0806775C
_0806775C: @ jump table
	.4byte _0806777C @ case 0
	.4byte _08067780 @ case 1
	.4byte _08067828 @ case 2
	.4byte _080677A8 @ case 3
	.4byte _08067828 @ case 4
	.4byte _080677D0 @ case 5
	.4byte _08067828 @ case 6
	.4byte _080677F8 @ case 7
_0806777C:
	movs r1, #0x31
	b _0806782A
_08067780:
	ldr r2, _08067798 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0806779C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080677A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ldr r2, _080677A4 @ =gUnknown_080D5724
	b _0806780C
	.align 2, 0
_08067798: .4byte gUnknown_03006868
_0806779C: .4byte 0x00196225
_080677A0: .4byte 0x3C6EF35F
_080677A4: .4byte gUnknown_080D5724
_080677A8:
	ldr r2, _080677C0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080677C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080677C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ldr r2, _080677CC @ =gUnknown_080D572C
	b _0806780C
	.align 2, 0
_080677C0: .4byte gUnknown_03006868
_080677C4: .4byte 0x00196225
_080677C8: .4byte 0x3C6EF35F
_080677CC: .4byte gUnknown_080D572C
_080677D0:
	ldr r2, _080677E8 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080677EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080677F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ldr r2, _080677F4 @ =gUnknown_080D573C
	b _0806780C
	.align 2, 0
_080677E8: .4byte gUnknown_03006868
_080677EC: .4byte 0x00196225
_080677F0: .4byte 0x3C6EF35F
_080677F4: .4byte gUnknown_080D573C
_080677F8:
	ldr r2, _08067818 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0806781C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08067820 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ldr r2, _08067824 @ =gUnknown_080D574C
_0806780C:
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	b _0806782A
	.align 2, 0
_08067818: .4byte gUnknown_03006868
_0806781C: .4byte 0x00196225
_08067820: .4byte 0x3C6EF35F
_08067824: .4byte gUnknown_080D574C
_08067828:
	movs r1, #1
_0806782A:
	ldrh r0, [r3, #0x18]
	subs r0, #1
	strh r0, [r3, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806783C
	adds r0, r3, #0
	bl sub_80676D4
_0806783C:
	pop {r0}
	bx r0

	thumb_func_start sub_8067840
sub_8067840: @ 0x08067840
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	movs r0, #0x16
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r2
	str r0, [r4, #0xc]
	movs r5, #0
	movs r2, #0xb0
	lsls r2, r2, #4
	adds r0, r0, r2
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _080678B0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _0806788A
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldr r0, _080678B4 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #0xc]
	strh r5, [r4, #0x16]
_0806788A:
	ldr r1, [r4]
	ldr r0, _080678B8 @ =sub_8066890
	cmp r1, r0
	beq _080678A8
	ldr r2, _080678BC @ =gCamera
	ldr r0, [r2, #0x18]
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _080678A6
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #8
	cmp r1, r0
	ble _080678A8
_080678A6:
	str r0, [r4, #8]
_080678A8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080678B0: .4byte sub_805217C
_080678B4: .4byte 0xFFFFFF00
_080678B8: .4byte sub_8066890
_080678BC: .4byte gCamera

	thumb_func_start sub_80678C0
sub_80678C0: @ 0x080678C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4]
	movs r0, #0
	mov sb, r0
	movs r0, #0
	mov r8, r0
	ldr r0, _08067990 @ =0x00000506
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r0, #0x98
	lsls r0, r0, #3
	mov sl, r0
	mov r0, sl
	strh r0, [r4, #0x14]
	mov r0, r8
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sb
	strb r0, [r4, #0x1f]
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #0xf
	bl VramMalloc
	str r0, [r5]
	ldr r0, _08067994 @ =0x0000050C
	strh r0, [r5, #0xc]
	mov r0, sb
	strb r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #0x14]
	mov r0, r8
	strh r0, [r5, #0xe]
	strh r0, [r5, #0x16]
	adds r0, r7, #0
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, sb
	strb r0, [r5, #0x1f]
	str r7, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r6]
	ldr r0, _08067998 @ =0x0000050E
	strh r0, [r6, #0xc]
	mov r0, sb
	strb r0, [r6, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	mov r0, r8
	strh r0, [r6, #0xe]
	strh r0, [r6, #0x16]
	adds r0, r7, #0
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	mov r0, sb
	strb r0, [r6, #0x1f]
	str r7, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067990: .4byte 0x00000506
_08067994: .4byte 0x0000050C
_08067998: .4byte 0x0000050E

	thumb_func_start sub_806799C
sub_806799C: @ 0x0806799C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	adds r6, r4, #0
	adds r6, #0x6c
	movs r7, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	bne _080679B6
	movs r0, #0
	b _08067A5E
_080679B6:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r2, _08067A44 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080679DE
	subs r0, r2, #1
	strb r0, [r1]
_080679DE:
	ldrb r0, [r5, #0x1b]
	cmp r0, #0xff
	beq _08067A00
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08067A00
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08067A08
_08067A00:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
_08067A08:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08067A4C
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08067A4C
	ldr r2, _08067A48 @ =gUnknown_03002C24
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x60
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	b _08067A56
	.align 2, 0
_08067A44: .4byte gCamera
_08067A48: .4byte gUnknown_03002C24
_08067A4C:
	ldr r0, [r5, #8]
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_08067A56:
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
_08067A5E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8067A64
sub_8067A64: @ 0x08067A64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x78
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	beq _08067AC0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	ldr r2, _08067A9C @ =gCamera
	ldr r1, [r2]
	subs r3, r0, r1
	strh r3, [r4, #0x10]
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08067AA0
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r3, #0
	subs r0, #0x10
	b _08067AAC
	.align 2, 0
_08067A9C: .4byte gCamera
_08067AA0:
	ldr r0, [r4, #8]
	ldr r1, _08067AC8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r3, #0
	adds r0, #0x10
_08067AAC:
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	subs r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08067AC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067AC8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8067ACC
sub_8067ACC: @ 0x08067ACC
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xa0
	movs r0, #0x32
	adds r0, r0, r3
	mov ip, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _08067B12
	ldrh r1, [r4, #0xc]
	ldr r0, _08067B18 @ =0x0000050E
	cmp r1, r0
	bne _08067B12
	subs r0, r2, #1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	ldr r2, _08067B1C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	adds r0, #0xc
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08067B12:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067B18: .4byte 0x0000050E
_08067B1C: .4byte gCamera

	thumb_func_start sub_8067B20
sub_8067B20: @ 0x08067B20
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xa0
	movs r0, #0x32
	adds r0, r0, r3
	mov ip, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _08067B8A
	ldrh r1, [r4, #0xc]
	ldr r0, _08067B5C @ =0x00000514
	cmp r1, r0
	bne _08067B8A
	subs r0, r2, #1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08067B64
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	ldr r2, _08067B60 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	subs r0, #4
	b _08067B70
	.align 2, 0
_08067B5C: .4byte 0x00000514
_08067B60: .4byte gCamera
_08067B64:
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	ldr r2, _08067B90 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	adds r0, #4
_08067B70:
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08067B8A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067B90: .4byte gCamera

	thumb_func_start sub_8067B94
sub_8067B94: @ 0x08067B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r0, #1
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x3c
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08067C10
	cmp r0, #0x3b
	ble _08067BC4
	b _08067D0E
_08067BC4:
	movs r6, #0
_08067BC6:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067C0C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067C00
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067C00
	mov r0, r8
	cmp r0, #0
	beq _08067C00
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
_08067C00:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067BC6
	b _08067D0E
	.align 2, 0
_08067C0C: .4byte gPlayers
_08067C10:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_8004D68
	ldr r2, _08067CC0 @ =gPlayers
	ldr r0, _08067CC4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08067C5A
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08067C68
_08067C5A:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _08067C68
	movs r0, #1
	mov sb, r0
_08067C68:
	movs r6, #0
_08067C6A:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067CC0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067D04
	ldr r1, [r7, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067CE2
	mov r0, r8
	cmp r0, #0
	beq _08067CE2
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _08067CC8
	mov r0, sl
	cmp r0, #0
	beq _08067CC8
	movs r0, #1
	mov sb, r0
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl sub_80044CC
	b _08067CE2
	.align 2, 0
_08067CC0: .4byte gPlayers
_08067CC4: .4byte gStageData
_08067CC8:
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	cmp r0, #0
	beq _08067CE2
	movs r0, #0
	mov r8, r0
_08067CE2:
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067D04
	mov r0, r8
	cmp r0, #0
	beq _08067D04
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
_08067D04:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067C6A
_08067D0E:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8067D20
sub_8067D20: @ 0x08067D20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r0, #1
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x3c
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08067D98
	movs r6, #0
_08067D4C:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067D94 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067D86
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067D86
	mov r0, r8
	cmp r0, #0
	beq _08067D86
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
_08067D86:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067D4C
	b _08067E8C
	.align 2, 0
_08067D94: .4byte gPlayers
_08067D98:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_8004D68
	ldr r2, _08067E68 @ =gPlayers
	ldr r0, _08067E6C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08067DE2
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08067DF0
_08067DE2:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _08067DF0
	movs r0, #1
	mov sb, r0
_08067DF0:
	movs r6, #0
_08067DF2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067E68 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067E82
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067E2E
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _08067E2E
	movs r0, #0
	mov r8, r0
_08067E2E:
	ldr r1, [r7, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067E82
	mov r0, r8
	cmp r0, #0
	beq _08067E82
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _08067E70
	mov r0, sl
	cmp r0, #0
	beq _08067E70
	adds r0, r4, #0
	bl sub_80044CC
	movs r0, #1
	mov sb, r0
	b _08067E82
	.align 2, 0
_08067E68: .4byte gPlayers
_08067E6C: .4byte gStageData
_08067E70:
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_08067E82:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067DF2
_08067E8C:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08067EA0
sub_08067EA0: @ 0x08067EA0
	push {r4, r5, r6, lr}
	ldr r1, _08067EE8 @ =gStageData
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	adds r1, #0x3c
	adds r6, r3, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	adds r5, r2, #0
	cmp r1, #1
	bne _08067EF0
	ldr r0, _08067EEC @ =0x03000020
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	lsls r0, r2, #8
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	adds r0, r4, #0
	movs r1, #0x33
	bl sub_80676D4
	b _08067F12
	.align 2, 0
_08067EE8: .4byte gStageData
_08067EEC: .4byte 0x03000020
_08067EF0:
	cmp r1, #1
	blt _08067F12
	cmp r1, #4
	bgt _08067F12
	cmp r1, #3
	blt _08067F12
	ldr r1, _08067F18 @ =0x03000020
	adds r0, r3, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08067F12
	adds r0, r4, #0
	bl sub_8067590
_08067F12:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067F18: .4byte 0x03000020

	thumb_func_start sub_8067F1C
sub_8067F1C: @ 0x08067F1C
	push {lr}
	movs r1, #1
	bl sub_80689DC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8067F2C
sub_8067F2C: @ 0x08067F2C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_80689DC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067F4A
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067D20
	b _08067F52
_08067F4A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
_08067F52:
	cmp r0, #0
	beq _08067F74
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067F68
	adds r0, r4, #0
	bl sub_8068AE4
	b _08067F74
_08067F68:
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067F74:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8067F84
sub_8067F84: @ 0x08067F84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_80689DC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067FA2
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067D20
	b _08067FAA
_08067FA2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
_08067FAA:
	cmp r0, #0
	beq _08067FCC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067FC0
	adds r0, r4, #0
	bl sub_8068AE4
	b _08067FCC
_08067FC0:
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067FCC:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8067FDC
sub_8067FDC: @ 0x08067FDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_80689DC
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067FFE
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067FFE:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_806800C
sub_806800C: @ 0x0806800C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0806805C @ =gUnknown_080D56DC
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r5, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068064
	ldr r0, _08068060 @ =0x00000223
	bl sub_80BA57C
	adds r0, r4, #0
	movs r1, #5
	bl sub_80676D4
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	bl sub_8068AD8
	b _0806807C
	.align 2, 0
_0806805C: .4byte gUnknown_080D56DC
_08068060: .4byte 0x00000223
_08068064:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806807C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806807C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8068084
sub_8068084: @ 0x08068084
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080680B4
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080680AC
	adds r0, r1, #0
	movs r1, #9
	bl sub_80676D4
	b _080680B4
_080680AC:
	adds r0, r1, #0
	movs r1, #8
	bl sub_80676D4
_080680B4:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80680BC
sub_80680BC: @ 0x080680BC
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x3c
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080680E2
	adds r0, r1, #0
	movs r1, #8
	bl sub_80676D4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080680E2:
	ldr r0, _08068100 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080680F6
	movs r0, #0x89
	lsls r0, r0, #2
	bl sub_80BA57C
_080680F6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068100: .4byte gStageData

	thumb_func_start sub_8068104
sub_8068104: @ 0x08068104
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	bl sub_8068984
	cmp r0, #1
	bne _0806811C
	adds r0, r4, #0
	movs r1, #0x33
	bl sub_80676D4
_0806811C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8068124
sub_8068124: @ 0x08068124
    movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8068128
sub_8068128: @ 0x08068128
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068166
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	ldr r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08068160
	ldr r0, _0806815C @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r5, #8]
	b _0806816C
	.align 2, 0
_0806815C: .4byte 0xFFFFFBFF
_08068160:
	orrs r1, r2
	str r1, [r5, #8]
	b _0806816C
_08068166:
	adds r0, r4, #0
	bl sub_806773C
_0806816C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8068174
sub_8068174: @ 0x08068174
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068190
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	b _08068196
_08068190:
	adds r0, r4, #0
	bl sub_806773C
_08068196:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80681A0
sub_80681A0: @ 0x080681A0
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	adds r5, #0x3c
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080681F0
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080681CE
	movs r0, #1
	strh r0, [r1, #0x18]
	adds r0, r1, #0
	bl sub_806773C
	b _080681F0
_080681CE:
	ldr r4, [r5, #8]
	adds r0, r1, #0
	movs r1, #0x34
	bl sub_80676D4
	movs r1, #0x80
	lsls r1, r1, #3
	ands r4, r1
	cmp r4, #0
	beq _080681E8
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080681EE
_080681E8:
	ldr r0, [r5, #8]
	ldr r1, _080681F8 @ =0xFFFFFBFF
	ands r0, r1
_080681EE:
	str r0, [r5, #8]
_080681F0:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080681F8: .4byte 0xFFFFFBFF

	thumb_func_start sub_80681FC
sub_80681FC: @ 0x080681FC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0xb
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08068246
	lsls r0, r0, #2
	ldr r1, _08068218 @ =_0806821C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08068218: .4byte _0806821C
_0806821C: @ jump table
	.4byte _0806823C @ case 0
	.4byte _0806823C @ case 1
	.4byte _08068246 @ case 2
	.4byte _08068240 @ case 3
	.4byte _08068246 @ case 4
	.4byte _08068244 @ case 5
	.4byte _08068246 @ case 6
	.4byte _08068244 @ case 7
_0806823C:
	movs r5, #0xb
	b _08068246
_08068240:
	movs r5, #0xd
	b _08068246
_08068244:
	movs r5, #0xf
_08068246:
	ldr r0, [r4, #0xc]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	str r1, [r4, #0xc]
	movs r1, #0xd0
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _0806828C @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r0, #2
	bgt _08068280
	lsls r1, r0, #8
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80676D4
_08068280:
	movs r0, #1
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806828C: .4byte sub_805217C

	thumb_func_start sub_8068290
sub_8068290: @ 0x08068290
	push {lr}
	movs r1, #0x10
	bl sub_80689DC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80682A0
sub_80682A0: @ 0x080682A0
	push {lr}
	movs r1, #0x11
	bl sub_80689DC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80682B0
sub_80682B0: @ 0x080682B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068314 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080682F4
	ldr r0, [r4, #0xc]
	ldr r2, _08068318 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x13
	bl sub_80676D4
	ldr r0, _0806831C @ =0x00000219
	bl sub_80BA57C
_080682F4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806830C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806830C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068314: .4byte gUnknown_080D56F0
_08068318: .4byte 0xFFFFF800
_0806831C: .4byte 0x00000219

	thumb_func_start sub_8068320
sub_8068320: @ 0x08068320
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068378 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08068356
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_80676D4
_08068356:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806836E
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806836E:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068378: .4byte gUnknown_080D56F0

	thumb_func_start sub_806837C
sub_806837C: @ 0x0806837C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080683B8 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _080683DE
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #3
	bne _080683BC
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_80676D4
	b _080683C4
	.align 2, 0
_080683B8: .4byte gUnknown_080D56F0
_080683BC:
	adds r0, r4, #0
	movs r1, #7
	bl sub_80676D4
_080683C4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	movs r0, #0xe7
	bl sub_80BA648
_080683DE:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80683E8
sub_80683E8: @ 0x080683E8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068410
	ldr r0, _0806840C @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _08068420
	b _08068424
	.align 2, 0
_0806840C: .4byte gCamera
_08068410:
	ldr r0, _08068458 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _08068420
	movs r2, #1
_08068420:
	cmp r2, #0
	beq _08068440
_08068424:
	adds r0, r4, #0
	bl sub_8068ACC
	adds r0, r4, #0
	movs r1, #6
	bl sub_80676D4
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	movs r0, #0xe7
	bl sub_80BA648
_08068440:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068458: .4byte gCamera

	thumb_func_start sub_806845C
sub_806845C: @ 0x0806845C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x19
	bl sub_80689DC
	cmp r0, #1
	bne _08068490
	ldr r0, _0806847C @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _08068480
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #2
	b _08068486
	.align 2, 0
_0806847C: .4byte gStageData
_08068480:
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #0
_08068486:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_08068490:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080684A8
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080684A8:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80684B0
sub_80684B0: @ 0x080684B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806851C @ =gUnknown_080D5B00
	adds r3, r1, r0
	movs r6, #1
	movs r2, #0
	ldrb r0, [r3, #8]
	cmp r2, r0
	bhs _080684EE
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080684FA
_080684D8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3, #8]
	cmp r2, r0
	bhs _080684EE
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080684D8
	movs r6, #0
_080684EE:
	cmp r6, #0
	beq _080684FA
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_80676D4
_080684FA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068512
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08068512:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806851C: .4byte gUnknown_080D5B00

	thumb_func_start sub_8068520
sub_8068520: @ 0x08068520
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08068560 @ =gPlayers
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0x1c
	bl sub_80689DC
	cmp r0, #1
	bne _080685A0
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806856C
	ldr r0, _08068564 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	blt _08068594
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08068568 @ =0xFFFFFBFF
	ands r0, r1
	b _0806859E
	.align 2, 0
_08068560: .4byte gPlayers
_08068564: .4byte gCamera
_08068568: .4byte 0xFFFFFBFF
_0806856C:
	ldr r0, _0806858C @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _08068594
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r1, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08068590 @ =0xFFFFFBFF
	ands r0, r1
	b _0806859E
	.align 2, 0
_0806858C: .4byte gCamera
_08068590: .4byte 0xFFFFFBFF
_08068594:
	ldr r3, _080685A8 @ =0xFFFFD800
	adds r0, r1, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	orrs r0, r2
_0806859E:
	str r0, [r4, #8]
_080685A0:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080685A8: .4byte 0xFFFFD800

	thumb_func_start sub_80685AC
sub_80685AC: @ 0x080685AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x32
	bl sub_80689DC
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80685C4
sub_80685C4: @ 0x080685C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080685E0
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	b _080685E6
_080685E0:
	adds r0, r4, #0
	bl sub_806773C
_080685E6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80685F0
sub_80685F0: @ 0x080685F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068654 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068634
	ldr r0, [r4, #0xc]
	ldr r2, _08068658 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x21
	bl sub_80676D4
	ldr r0, _0806865C @ =0x00000219
	bl sub_80BA57C
_08068634:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806864C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806864C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068654: .4byte gUnknown_080D56F0
_08068658: .4byte 0xFFFFF800
_0806865C: .4byte 0x00000219

	thumb_func_start sub_8068660
sub_8068660: @ 0x08068660
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080686C4 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _080686A4
	adds r0, r4, #0
	movs r1, #0x26
	bl sub_80676D4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_080686A4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080686BC
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080686BC:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080686C4: .4byte gUnknown_080D56F0

	thumb_func_start sub_80686C8
sub_80686C8: @ 0x080686C8
	push {lr}
	movs r1, #0x32
	bl sub_80689DC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80686D8
sub_80686D8: @ 0x080686D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068740 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, _08068744 @ =0xFFFFFD80
	cmp r1, r0
	bge _08068730
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x2a
	bl sub_80676D4
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0xc]
_08068730:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068740: .4byte gUnknown_080D56F0
_08068744: .4byte 0xFFFFFD80

	thumb_func_start sub_8068748
sub_8068748: @ 0x08068748
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x18]
	subs r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806876E
	ldr r0, _08068774 @ =gCamera
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #8
	str r1, [r2, #8]
	adds r0, r2, #0
	movs r1, #0x2b
	bl sub_80676D4
_0806876E:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08068774: .4byte gCamera

	thumb_func_start sub_8068778
sub_8068778: @ 0x08068778
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0x2c
	bl sub_80689DC
	cmp r0, #0
	beq _080687A4
	ldr r0, [r4, #0xc]
	ldr r1, _080687AC @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080687A4
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_080687A4:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687AC: .4byte 0xFFFFF800

	thumb_func_start sub_80687B0
sub_80687B0: @ 0x080687B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0x2e
	bl sub_80689DC
	cmp r0, #0
	beq _080687E6
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080687DC
	ldr r0, _080687D8 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0xc
	b _080687E2
	.align 2, 0
_080687D8: .4byte gCamera
_080687DC:
	ldr r0, _080687F0 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0xc
_080687E2:
	lsls r0, r0, #8
	str r0, [r4, #8]
_080687E6:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687F0: .4byte gCamera

	thumb_func_start sub_80687F4
sub_80687F4: @ 0x080687F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x2f
	bl sub_80689DC
	cmp r0, #0
	beq _0806880A
	ldr r0, [r4, #0xc]
	ldr r1, _08068814 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0806880A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068814: .4byte 0xFFFFF800

	thumb_func_start sub_8068818
sub_8068818: @ 0x08068818
	push {lr}
	movs r1, #0x32
	bl sub_80689DC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8068828
sub_8068828: @ 0x08068828
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08068854
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldr r0, [r4, #0x78]
	bl VramFree
	ldr r1, _0806885C @ =0x030000A0
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, [r4, #4]
	bl VramFree
_08068854:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806885C: .4byte 0x030000A0

	thumb_func_start sub_8068860
sub_8068860: @ 0x08068860
	push {r4, r5, lr}
	ldr r5, _08068880 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08068884
	adds r0, r2, #0
	bl TaskDestroy
	b _080688AA
	.align 2, 0
_08068880: .4byte gCurTask
_08068884:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080688A4
	ldr r1, [r5]
	ldr r0, _080688A0 @ =sub_80688B4
	b _080688A8
	.align 2, 0
_080688A0: .4byte sub_80688B4
_080688A4:
	ldr r1, [r5]
	ldr r0, _080688B0 @ =sub_80663F0
_080688A8:
	str r0, [r1, #8]
_080688AA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080688B0: .4byte sub_80663F0

	thumb_func_start sub_80688B4
sub_80688B4: @ 0x080688B4
	push {r4, r5, lr}
	ldr r5, _080688D4 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080688D8
	adds r0, r2, #0
	bl TaskDestroy
	b _080688FC
	.align 2, 0
_080688D4: .4byte gCurTask
_080688D8:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080688FC
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080688FC
	ldr r1, [r5]
	ldr r0, _08068904 @ =sub_80663F0
	str r0, [r1, #8]
_080688FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068904: .4byte sub_80663F0

	thumb_func_start sub_8068908
sub_8068908: @ 0x08068908
	push {r4, r5, lr}
	ldr r0, _0806892C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x22
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r5, #0
	ldrsb r5, [r1, r5]
	cmp r5, #0
	beq _08068930
	subs r0, #1
	strb r0, [r1]
	b _08068942
	.align 2, 0
_0806892C: .4byte gCurTask
_08068930:
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #0
	beq _08068942
	ldr r0, [r4, #0x1c]
	strb r5, [r0]
	b _0806894E
_08068942:
	adds r0, r4, #0
	bl sub_8067840
	adds r0, r4, #0
	bl sub_806799C
_0806894E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8068954
sub_8068954: @ 0x08068954
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2]
	ldr r0, _0806897C @ =sub_8066890
	cmp r1, r0
	beq _08068976
	ldr r3, _08068980 @ =gCamera
	ldr r0, [r3, #0x18]
	lsls r0, r0, #8
	ldr r1, [r2, #8]
	cmp r1, r0
	blt _08068974
	ldr r0, [r3, #0x1c]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068976
_08068974:
	str r0, [r2, #8]
_08068976:
	pop {r0}
	bx r0
	.align 2, 0
_0806897C: .4byte sub_8066890
_08068980: .4byte gCamera

	thumb_func_start sub_8068984
sub_8068984: @ 0x08068984
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x16]
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r4, #0xc]
	movs r1, #0xb0
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _080689D4 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _080689CA
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldr r0, _080689D8 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #0xc]
	strh r5, [r4, #0x16]
	movs r5, #1
_080689CA:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080689D4: .4byte sub_805217C
_080689D8: .4byte 0xFFFFFF00

	thumb_func_start sub_80689DC
sub_80689DC: @ 0x080689DC
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldrh r0, [r2, #0x18]
	subs r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080689F6
	movs r4, #1
	adds r0, r2, #0
	bl sub_80676D4
_080689F6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8068A00
sub_8068A00: @ 0x08068A00
	push {lr}
	adds r3, r0, #0
	adds r3, #0x3c
	ldr r2, _08068A24 @ =gCamera
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r1, r1, r2
	asrs r1, r1, #1
	lsls r1, r1, #8
	ldr r0, [r0, #8]
	cmp r1, r0
	ble _08068A28
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08068A2E
	.align 2, 0
_08068A24: .4byte gCamera
_08068A28:
	ldr r0, [r3, #8]
	ldr r1, _08068A34 @ =0xFFFFFBFF
	ands r0, r1
_08068A2E:
	str r0, [r3, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08068A34: .4byte 0xFFFFFBFF

	thumb_func_start sub_8068A38
sub_8068A38: @ 0x08068A38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0x3c
	lsls r2, r2, #0x18
	cmp r2, #0
	bne _08068A62
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068A58
	strh r3, [r4, #0x14]
	b _08068A64
_08068A58:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0x14]
	b _08068A64
_08068A62:
	strh r3, [r4, #0x16]
_08068A64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068A6C
sub_8068A6C: @ 0x08068A6C
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068A90
	ldrh r1, [r3, #0x14]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x14]
	b _08068A9A
_08068A90:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
_08068A9A:
	ldrh r1, [r3, #0x16]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x16]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068AAC
sub_8068AAC: @ 0x08068AAC
	push {lr}
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08068AC6
	movs r0, #0
_08068ABC:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08068ABC
_08068AC6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068ACC
sub_8068ACC: @ 0x08068ACC
	adds r0, #0x78
	movs r1, #1
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr

	thumb_func_start sub_8068AD8
sub_8068AD8: @ 0x08068AD8
	adds r0, #0x78
	movs r1, #0
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr

	thumb_func_start sub_8068AE4
sub_8068AE4: @ 0x08068AE4
	adds r2, r0, #0
	adds r2, #0xa0
	adds r0, #0x32
	movs r1, #0x14
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08068B08 @ =0x0000050E
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	ldr r0, _08068B0C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08068B08: .4byte 0x0000050E
_08068B0C: .4byte 0x0000FFFF

	thumb_func_start sub_08068B10
sub_08068B10: @ 0x08068B10
	adds r2, r0, #0
	adds r2, #0xa0
	adds r0, #0x32
	movs r1, #0x12
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08068B34 @ =0x00000514
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	ldr r0, _08068B38 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08068B34: .4byte 0x00000514
_08068B38: .4byte 0x0000FFFF

    @ Called on init of Boss 1
	thumb_func_start sub_8068B3C
sub_8068B3C: @ 0x08068B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08068B88 @ =sub_806A728
	movs r1, #0xde
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08068B8C @ =sub_806A7E4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldr r2, _08068B90 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x88
	mov r1, r8
	str r1, [r0]
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	lsls r4, r4, #8
	str r4, [r6]
	lsls r5, r5, #8
	str r5, [r6, #4]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08068B94
	movs r0, #8
	b _08068B96
	.align 2, 0
_08068B88: .4byte sub_806A728
_08068B8C: .4byte sub_806A7E4
_08068B90: .4byte gStageData
_08068B94:
	movs r0, #6
_08068B96:
	strb r0, [r6, #0xc]
	str r7, [r6, #8]
	movs r1, #0
	strb r1, [r6, #0xd]
	movs r0, #0
	strh r1, [r6, #0x32]
	strb r0, [r6, #0xf]
	strh r1, [r6, #0x2c]
	strh r1, [r6, #0x2e]
	strb r0, [r6, #0x10]
	strb r0, [r6, #0x11]
	strb r0, [r6, #0x12]
	ldr r0, _08068C34 @ =gPlayers
	str r0, [r6, #0x50]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r6, #0x54]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	movs r0, #0x9e
	bl VramMalloc
	str r0, [r6, #0x28]
	adds r0, r6, #0
	bl sub_8069460
	adds r0, r6, #0
	bl sub_80692E4
	adds r0, r6, #0
	bl sub_806940C
	movs r5, #0
	movs r0, #0x16
	adds r0, r0, r6
	mov ip, r0
	movs r1, #0x88
	lsls r1, r1, #1
	mov sb, r1
	adds r7, r6, #0
	adds r7, #0x14
_08068BEA:
	lsls r2, r5, #3
	add r2, sb
	adds r2, r6, r2
	lsls r3, r5, #2
	adds r4, r7, r3
	movs r1, #4
	ldrsb r1, [r2, r1]
	movs r0, #6
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r4]
	add r3, ip
	movs r1, #5
	ldrsb r1, [r2, r1]
	movs r0, #7
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08068BEA
	bl sub_807A4BC
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068C34: .4byte gPlayers

	thumb_func_start sub_8068C38
sub_8068C38: @ 0x08068C38
	push {r4, r5, r6, lr}
	ldr r0, _08068CBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xf0
	adds r6, r1, r0
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_8069814
	adds r0, r4, #0
	bl sub_8069360
	adds r0, r4, #0
	bl sub_806A894
	ldr r0, [r4, #0x50]
	bl sub_8068E5C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x54]
	bl sub_8068E5C
	adds r0, r5, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4, #0xd]
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08068C96
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068C96
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r6, #0xc]
	movs r0, #0
	strb r0, [r6, #0x1a]
_08068C96:
	cmp r5, #0
	beq _08068CA0
	adds r0, r4, #0
	bl sub_806A5DC
_08068CA0:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08068CDE
	ldr r1, _08068CC0 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08068CD0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08068CC8
	ldr r0, _08068CBC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08068CC4 @ =sub_806A7A4
	b _08068CDC
	.align 2, 0
_08068CBC: .4byte gCurTask
_08068CC0: .4byte gStageData
_08068CC4: .4byte sub_806A7A4
_08068CC8:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08068CD0:
	adds r0, r4, #0
	bl sub_806A818
	ldr r0, _08068CF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08068CFC @ =sub_806A760
_08068CDC:
	str r0, [r1, #8]
_08068CDE:
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068CF8: .4byte gCurTask
_08068CFC: .4byte sub_806A760

	thumb_func_start sub_8068D00
sub_8068D00: @ 0x08068D00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _08068D20 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, [r4, #0x50]
	ldrh r5, [r4, #0x32]
	cmp r5, #0
	beq _08068D24
	cmp r5, #1
	beq _08068D74
	b _08068D88
	.align 2, 0
_08068D20: .4byte gCurTask
_08068D24:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _08068D30
	bl VramFree
	str r5, [r4, #0x48]
_08068D30:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08068D3C
	bl VramFree
	str r5, [r4, #0x4c]
_08068D3C:
	ldr r0, [r4, #0x58]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #3
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r1, _08068D6C @ =0x030000EC
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r0, #0xc
	str r0, [sp, #0xc]
	ldr r1, _08068D70 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _08068D86
	.align 2, 0
_08068D6C: .4byte 0x030000EC
_08068D70: .4byte sub_807A37C
_08068D74:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _08068D88
	ldr r0, [r4, #8]
	strb r1, [r0]
	movs r0, #0x64
_08068D86:
	strh r0, [r4, #0x32]
_08068D88:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8068D90
sub_8068D90: @ 0x08068D90
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08068E04 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _08068E08 @ =0x03000138
	adds r6, r5, r0
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08068E40
	ldr r1, _08068E0C @ =0x030000E8
	adds r0, r5, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, _08068E10 @ =0x030000EC
	adds r0, r5, r2
	ldr r2, [r0]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08068DDE
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r7, #1
_08068DDE:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08068E40
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08068E14
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08068E2E
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	b _08068E22
	.align 2, 0
_08068E04: .4byte gCurTask
_08068E08: .4byte 0x03000138
_08068E0C: .4byte 0x030000E8
_08068E10: .4byte 0x030000EC
_08068E14:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08068E2E
	ldr r0, [r4, #0x10]
	ldr r1, _08068E58 @ =0xFFFFFF00
_08068E22:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08068E2E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
_08068E40:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08068E4C
	movs r7, #1
_08068E4C:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068E58: .4byte 0xFFFFFF00

	thumb_func_start sub_8068E5C
sub_8068E5C: @ 0x08068E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	mov r0, sl
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	add r1, sp, #4
	strb r0, [r1]
	mov r2, sp
	adds r2, #5
	movs r0, #0xf7
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r3, [r0]
	adds r2, #2
	movs r0, #9
	strb r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _08068EBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08068EC0 @ =0x030000F0
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	mov r0, sl
	bl sub_802C080
	cmp r0, #0
	beq _08068EC4
	movs r0, #0
	b _080692C8
	.align 2, 0
_08068EBC: .4byte gCurTask
_08068EC0: .4byte 0x030000F0
_08068EC4:
	ldr r0, [r6, #0x58]
	ldr r1, [r6, #0x5c]
	bl sub_8004D68
	ldr r2, _08069014 @ =gPlayers
	ldr r0, _08069018 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08068F0E
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08068F1C
_08068F0E:
	ldr r0, [sp, #0x1c]
	bl sub_807A1DC
	cmp r0, #1
	bne _08068F1C
	movs r3, #1
	str r3, [sp, #0xc]
_08068F1C:
	ldr r2, [sp, #0x1c]
	adds r2, #0x27
	movs r0, #0x14
	strb r0, [r2]
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, _0806901C @ =gCamera
	ldr r0, [r0]
	subs r1, r1, r0
	mov r0, sp
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r3, r1, r4
	ldr r5, [sp, #0x1c]
	movs r7, #0x10
	ldrsh r1, [r5, r7]
	adds r0, r5, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	mov r8, r2
	mov sb, r0
	cmp r3, r1
	bgt _08068F66
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08068F7A
	cmp r3, r1
	bge _08068F66
	b _080690B0
_08068F66:
	ldr r0, [sp, #0x1c]
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _08068F7A
	b _080690B0
_08068F7A:
	mov r0, sl
	ldr r2, [r0, #0x14]
	asrs r1, r2, #8
	ldr r0, _0806901C @ =gCamera
	ldr r0, [r0, #4]
	subs r1, r1, r0
	mov r0, sp
	movs r4, #1
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	ldr r3, [sp, #0x1c]
	movs r5, #0x12
	ldrsh r0, [r3, r5]
	adds r3, #0x25
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r3, r0, r5
	cmp r1, r3
	bgt _08068FB6
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _08068FC4
	cmp r1, r3
	bge _08068FB6
	b _080690B0
_08068FB6:
	mov r7, r8
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	blt _080690B0
_08068FC4:
	mov r0, sl
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	subs r1, r1, r0
	asrs r0, r2, #8
	ldr r2, [r6, #0x5c]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r6, #0x34]
	lsls r0, r0, #8
	movs r7, #0
	lsrs r5, r0, #0x10
	asrs r3, r0, #0x10
	ldr r4, _08069020 @ =0xFFFFFF00
	adds r2, r3, r4
	cmp r2, #0
	bge _08069028
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r3, r1
	bgt _08069036
	ldr r5, _08069024 @ =0x000003FF
	adds r0, r5, #0
	adds r5, r0, #0
	ands r5, r2
	cmp r5, r1
	bge _08069038
	b _08069036
	.align 2, 0
_08069014: .4byte gPlayers
_08069018: .4byte gStageData
_0806901C: .4byte gCamera
_08069020: .4byte 0xFFFFFF00
_08069024: .4byte 0x000003FF
_08069028:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r2, r1
	bge _08069038
	cmp r3, r1
	ble _08069038
_08069036:
	movs r7, #1
_08069038:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r3, _08069058 @ =0x000003FF
	cmp r1, r3
	ble _0806905C
	asrs r0, r4, #0x10
	cmp r2, r0
	blt _0806906C
	ands r1, r3
	cmp r1, r0
	ble _08069068
	b _0806906C
	.align 2, 0
_08069058: .4byte 0x000003FF
_0806905C:
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _08069068
	cmp r2, r0
	bge _08069068
	movs r7, #1
_08069068:
	cmp r7, #0
	beq _080690A6
_0806906C:
	mov r1, sl
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080690B0
	mov r0, sl
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806909E
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08069098
	mov r0, sl
	bl sub_80044CC
_08069098:
	movs r2, #1
	str r2, [sp, #0xc]
	b _080690B0
_0806909E:
	mov r0, sl
	bl sub_8014550
	b _08069180
_080690A6:
	mov r0, sl
	bl sub_8014550
	movs r3, #1
	str r3, [sp, #0x10]
_080690B0:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _08069180
	ldr r5, [sp, #0xc]
	cmp r5, #0
	bne _08069180
	mov r7, sl
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08069180
	mov r0, sl
	adds r0, #0xe0
	ldr r4, [r0]
	ldr r2, [r4, #0x34]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _08069180
	mov r1, sl
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	mov r2, sb
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08069114
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08069126
	cmp r3, r2
	blt _08069180
_08069114:
	ldr r0, [sp, #0x1c]
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08069180
_08069126:
	mov r3, sl
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r3, [r7]
	adds r1, r3, #0
	adds r1, #0x39
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [sp, #0x1c]
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08069160
	adds r0, r3, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0806916E
	cmp r2, r1
	blt _08069180
_08069160:
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08069180
_0806916E:
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806917C
	mov r0, sl
	bl sub_80044CC
_0806917C:
	movs r5, #1
	str r5, [sp, #0xc]
_08069180:
	movs r0, #0
	mov r7, r8
	strb r0, [r7]
	ldr r0, [r6, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _080692D8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r2, _080692DC @ =gSineTable
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r3, [r1, r4]
	str r3, [sp, #0x14]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r7, [r0, r1]
	str r7, [sp, #0x18]
	movs r2, #1
	str r2, [sp, #8]
	adds r3, r6, #0
	adds r3, #0x14
	str r3, [sp, #0x20]
	adds r6, #0x16
	str r6, [sp, #0x24]
	mov r8, sp
_080691C4:
	ldr r5, [sp, #8]
	lsls r4, r5, #2
	ldr r6, [sp, #0x20]
	adds r0, r6, r4
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r0, [sp, #0x18]
	adds r2, r0, #0
	muls r2, r3, r2
	ldr r5, [sp, #0x14]
	adds r1, r5, #0
	muls r1, r3, r1
	mov ip, r1
	ldr r6, [sp, #0x24]
	adds r0, r6, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r0, r5, #0
	muls r0, r1, r0
	subs r2, r2, r0
	ldr r5, [sp, #0x18]
	adds r0, r5, #0
	muls r0, r1, r0
	add ip, r0
	asrs r2, r2, #0xe
	mov r6, ip
	asrs r6, r6, #0xe
	mov ip, r6
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _080692E0 @ =gCamera
	ldr r0, [r0]
	subs r1, r1, r0
	mov r0, r8
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r1, r6
	ldr r7, [sp, #0x1c]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	adds r1, r1, r2
	subs r1, r1, r3
	ldr r3, [sp, #8]
	lsls r2, r3, #3
	adds r3, r7, r2
	adds r0, r3, #0
	adds r0, #0x24
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	mov sb, r2
	cmp r5, r1
	bgt _08069242
	mov r2, r8
	movs r0, #2
	ldrsb r0, [r2, r0]
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _08069254
	cmp r5, r1
	blt _080692B6
_08069242:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _080692B6
_08069254:
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldr r5, _080692E0 @ =gCamera
	ldr r0, [r5, #4]
	subs r1, r1, r0
	mov r6, r8
	movs r5, #1
	ldrsb r5, [r6, r5]
	adds r2, r1, r5
	ldr r7, [sp, #0x1c]
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	add r1, ip
	ldr r3, [sp, #0x24]
	adds r0, r3, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	adds r4, r7, #0
	add r4, sb
	adds r3, r4, #0
	adds r3, #0x25
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r1, r3
	cmp r2, r1
	bgt _0806929E
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _080692B0
	cmp r2, r1
	blt _080692B6
_0806929E:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _080692B6
_080692B0:
	mov r0, sl
	bl sub_8014550
_080692B6:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	bhi _080692C6
	b _080691C4
_080692C6:
	ldr r0, [sp, #0xc]
_080692C8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080692D8: .4byte 0x000003FF
_080692DC: .4byte gSineTable
_080692E0: .4byte gCamera

	thumb_func_start sub_80692E4
sub_80692E4: @ 0x080692E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r5, r7, #0
	adds r5, #0xe8
	ldr r0, [r7]
	str r0, [r5]
	adds r6, r7, #0
	adds r6, #0xec
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08069358 @ =0x000004B5
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	adds r0, #0x4b
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _0806935C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	str r0, [r7, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069358: .4byte 0x000004B5
_0806935C: .4byte gCamera

	thumb_func_start sub_8069360
sub_8069360: @ 0x08069360
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	bl sub_8068D90
	adds r2, r0, #0
	strb r2, [r4, #0xf]
	ldr r1, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bgt _08069392
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08069392
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08069392
	adds r0, r5, #0
	bl sub_8014550
_08069392:
	ldr r0, [r5, #0x10]
	asrs r1, r0, #8
	ldr r0, _080693A0 @ =0x0000069F
	cmp r1, r0
	bgt _080693A4
	movs r3, #0
	b _080693C4
	.align 2, 0
_080693A0: .4byte 0x0000069F
_080693A4:
	ldr r0, _080693B0 @ =0x000006DF
	cmp r1, r0
	ble _080693B4
	movs r3, #8
	b _080693C4
	.align 2, 0
_080693B0: .4byte 0x000006DF
_080693B4:
	ldr r2, _08069404 @ =0xFFFFF960
	adds r0, r1, r2
	cmp r0, #0
	bge _080693BE
	adds r0, #7
_080693BE:
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080693C4:
	ldr r1, _08069408 @ =gUnknown_080D575C
	lsls r2, r3, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r6, #0x1a]
	strb r3, [r4, #0x11]
	ldr r5, [r4, #0x54]
	adds r0, r5, #0
	bl sub_8068D90
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080693FE
	cmp r2, #0
	beq _080693FE
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080693FE
	adds r0, r5, #0
	bl sub_8014550
_080693FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08069404: .4byte 0xFFFFF960
_08069408: .4byte gUnknown_080D575C

	thumb_func_start sub_806940C
sub_806940C: @ 0x0806940C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, _08069458 @ =0x06004040
	str r1, [r0]
	movs r2, #0
	movs r4, #0
	ldr r1, _0806945C @ =0x000004B6
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	movs r1, #0x40
	strh r1, [r0, #0x10]
	movs r1, #0x68
	strh r1, [r0, #0x12]
	bl sub_80BE09C
	strh r4, [r5, #0x30]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069458: .4byte 0x06004040
_0806945C: .4byte 0x000004B6

	thumb_func_start sub_8069460
sub_8069460: @ 0x08069460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov r7, sl
	adds r7, #0xf0
	movs r6, #0xd8
	lsls r6, r6, #1
	add r6, sl
	mov r1, sl
	ldr r0, [r1]
	str r0, [r1, #0x58]
	ldr r0, [r1, #4]
	str r0, [r1, #0x5c]
	movs r0, #0x44
	bl VramMalloc
	adds r5, r0, #0
	mov r0, sl
	str r5, [r0, #0x48]
	str r5, [r7]
	movs r3, #0
	movs r4, #0
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	strb r3, [r7, #0x1a]
	adds r0, #8
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sb, r1
	ldr r0, _0806956C @ =0x0000107F
	str r0, [r7, #8]
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #8
	ldr r2, _08069570 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sl
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	strh r4, [r6]
	ldrh r0, [r7, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r7, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	movs r7, #0xc4
	lsls r7, r7, #1
	add r7, sl
	str r5, [r7]
	ldr r0, _08069574 @ =0x000004B7
	strh r0, [r7, #0xc]
	ldr r3, [sp, #4]
	strb r3, [r7, #0x1a]
	adds r0, #0x89
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	mov r1, sb
	str r1, [r7, #8]
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #8
	ldr r2, [sp]
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sl
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0xa
	mov r1, sl
	str r0, [r1, #0x34]
	str r4, [r1, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #6
	str r0, [r1, #0x3c]
	str r4, [r1, #0x40]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806956C: .4byte 0x0000107F
_08069570: .4byte gCamera
_08069574: .4byte 0x000004B7

	thumb_func_start sub_8069578
sub_8069578: @ 0x08069578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0xf0
	adds r0, r0, r5
	mov sb, r0
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, [r5, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r3, _080695E4 @ =0x000003FF
	adds r2, r3, #0
	ands r0, r2
	strh r0, [r1]
	mov r2, sb
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #8]
	mov r0, sb
	bl sub_80BF8F4
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r3, r3, r5
	mov sb, r3
	ldrb r0, [r5, #0x10]
	cmp r0, #0x64
	bne _080695D2
	b _08069780
_080695D2:
	cmp r0, #0x64
	ble _080695D8
	b _080697E8
_080695D8:
	cmp r0, #0
	beq _080695E8
	cmp r0, #0xa
	beq _080696A8
	b _080697E8
	.align 2, 0
_080695E4: .4byte 0x000003FF
_080695E8:
	ldr r0, [r5, #0x34]
	ldr r1, _08069690 @ =0xFFFD0000
	adds r1, r0, r1
	str r1, [sp]
	cmp r1, #0
	bge _080695F8
	ldr r2, _08069694 @ =0xFFFD0007
	adds r1, r0, r2
_080695F8:
	asrs r1, r1, #3
	str r1, [sp]
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bge _08069610
	adds r0, #7
_08069610:
	asrs r0, r0, #3
	mov sl, r0
	ldr r0, [r5]
	mov r8, r0
	ldr r7, [r5, #4]
	movs r6, #0
	ldr r3, _08069698 @ =gSineTable
	ldr r5, _0806969C @ =gCamera
_08069620:
	ldr r1, [sp]
	adds r4, r4, r1
	ldr r0, _080696A0 @ =0x0003FFFF
	ands r4, r0
	asrs r2, r4, #8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08069646
	ldr r1, _080696A4 @ =0x00003FFF
	adds r0, r0, r1
_08069646:
	asrs r1, r0, #0xe
	lsls r0, r2, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _0806965E
	ldr r2, _080696A4 @ =0x00003FFF
	adds r0, r0, r2
_0806965E:
	asrs r0, r0, #0xe
	add r8, r1
	adds r7, r7, r0
	mov r1, r8
	asrs r0, r1, #8
	ldr r1, [r5]
	subs r0, r0, r1
	mov r2, sb
	strh r0, [r2, #0x10]
	asrs r0, r7, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	mov r0, sb
	str r3, [sp, #0x14]
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0x14]
	cmp r6, #6
	bls _08069620
	b _080697E8
	.align 2, 0
_08069690: .4byte 0xFFFD0000
_08069694: .4byte 0xFFFD0007
_08069698: .4byte gSineTable
_0806969C: .4byte gCamera
_080696A0: .4byte 0x0003FFFF
_080696A4: .4byte 0x00003FFF
_080696A8:
	ldr r0, [r5, #0x34]
	ldr r3, _080697F8 @ =0xFFFD0000
	adds r3, r0, r3
	str r3, [sp]
	adds r1, r3, #0
	cmp r1, #0
	bge _080696BA
	ldr r2, _080697FC @ =0xFFFD0007
	adds r1, r0, r2
_080696BA:
	asrs r1, r1, #3
	str r1, [sp]
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bge _080696D2
	adds r0, #7
_080696D2:
	asrs r0, r0, #3
	mov sl, r0
	ldr r0, [r5]
	mov r8, r0
	ldr r7, [r5, #4]
	movs r6, #0
	adds r1, r5, #0
	adds r1, #0x68
	str r1, [sp, #0xc]
	adds r2, r5, #0
	adds r2, #0x6c
	str r2, [sp, #0x10]
	adds r3, r5, #0
	adds r3, #0xa8
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xac
	str r0, [sp, #8]
	ldr r1, _08069800 @ =0x00003FFF
	mov ip, r1
_080696FA:
	ldr r2, [sp]
	adds r4, r4, r2
	ldr r0, _08069804 @ =0x0003FFFF
	ands r4, r0
	asrs r2, r4, #8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	ldr r1, _08069808 @ =gSineTable
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08069720
	add r0, ip
_08069720:
	asrs r1, r0, #0xe
	lsls r0, r2, #1
	ldr r2, _08069808 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _08069738
	add r0, ip
_08069738:
	asrs r0, r0, #0xe
	add r8, r1
	adds r7, r7, r0
	lsls r1, r6, #3
	ldr r3, [sp, #0xc]
	adds r0, r3, r1
	mov r2, r8
	str r2, [r0]
	ldr r3, [sp, #0x10]
	adds r0, r3, r1
	str r7, [r0]
	ldr r0, [sp, #4]
	adds r3, r0, r1
	lsrs r0, r6, #1
	lsls r2, r0, #8
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [r3]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0806976A
	rsbs r0, r2, #0
	str r0, [r3]
_0806976A:
	ldr r2, [sp, #8]
	adds r1, r2, r1
	ldr r0, _0806980C @ =0xFFFFFC00
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _080696FA
	movs r0, #0x64
	strb r0, [r5, #0x10]
_08069780:
	movs r6, #0
	adds r3, r5, #0
	adds r3, #0x68
	str r3, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x6c
	str r0, [sp, #0x10]
	adds r1, r5, #0
	adds r1, #0xa8
	str r1, [sp, #4]
	adds r5, #0xac
	str r5, [sp, #8]
	ldr r4, _08069810 @ =gCamera
_0806979A:
	lsls r2, r6, #3
	ldr r0, [sp, #0xc]
	adds r3, r0, r2
	ldr r0, [sp, #4]
	adds r1, r0, r2
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	adds r0, r1, r2
	ldr r1, [r0]
	adds r1, #0x20
	str r1, [r0]
	ldr r0, [sp, #0x10]
	adds r2, r0, r2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, sb
	strh r0, [r2, #0x12]
	mov r0, sb
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _0806979A
_080697E8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080697F8: .4byte 0xFFFD0000
_080697FC: .4byte 0xFFFD0007
_08069800: .4byte 0x00003FFF
_08069804: .4byte 0x0003FFFF
_08069808: .4byte gSineTable
_0806980C: .4byte 0xFFFFFC00
_08069810: .4byte gCamera

	thumb_func_start sub_8069814
sub_8069814: @ 0x08069814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xf0
	adds r0, r0, r4
	mov r8, r0
	ldr r5, [r4, #0x50]
	ldrh r3, [r4, #0x2c]
	cmp r3, #0x64
	bne _0806982E
	b _08069A80
_0806982E:
	cmp r3, #0x64
	bgt _0806987E
	cmp r3, #0x14
	bne _08069838
	b _080699D8
_08069838:
	cmp r3, #0x14
	bgt _08069858
	cmp r3, #0xa
	beq _08069934
	cmp r3, #0xa
	bgt _0806984A
	cmp r3, #0
	beq _080698E2
	b _08069D0A
_0806984A:
	cmp r3, #0xb
	bne _08069850
	b _0806994E
_08069850:
	cmp r3, #0x13
	bne _08069856
	b _0806997A
_08069856:
	b _08069D0A
_08069858:
	cmp r3, #0x32
	bne _0806985E
	b _08069A32
_0806985E:
	cmp r3, #0x32
	bgt _08069870
	cmp r3, #0x1e
	bne _08069868
	b _080699FE
_08069868:
	cmp r3, #0x28
	bne _0806986E
	b _08069A20
_0806986E:
	b _08069D0A
_08069870:
	cmp r3, #0x3c
	bne _08069876
	b _08069A54
_08069876:
	cmp r3, #0x5a
	bne _0806987C
	b _08069A66
_0806987C:
	b _08069D0A
_0806987E:
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r3, r1
	bne _08069888
	b _08069BF4
_08069888:
	cmp r3, r1
	bgt _080698AC
	cmp r3, #0x78
	bne _08069892
	b _08069B58
_08069892:
	cmp r3, #0x78
	bgt _0806989E
	cmp r3, #0x6e
	bne _0806989C
	b _08069AB2
_0806989C:
	b _08069D0A
_0806989E:
	cmp r3, #0xc8
	bne _080698A4
	b _08069BB4
_080698A4:
	cmp r3, #0xd2
	bne _080698AA
	b _08069BDC
_080698AA:
	b _08069D0A
_080698AC:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r3, r0
	bne _080698B6
	b _08069C96
_080698B6:
	cmp r3, r0
	bgt _080698CE
	movs r2, #0x9b
	lsls r2, r2, #1
	cmp r3, r2
	bne _080698C4
	b _08069C88
_080698C4:
	subs r0, #0xb4
	cmp r3, r0
	bne _080698CC
	b _08069C6C
_080698CC:
	b _08069D0A
_080698CE:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r3, r0
	bne _080698D8
	b _08069CD4
_080698D8:
	adds r0, #0xa
	cmp r3, r0
	bne _080698E0
	b _08069CE6
_080698E0:
	b _08069D0A
_080698E2:
	ldr r2, _08069924 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	str r3, [sp, #4]
	ldr r2, _08069928 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _0806992C @ =gUnknown_030035C0
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08069930 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0xa
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	beq _08069956
	bl sub_807A2AC
	b _08069D0A
	.align 2, 0
_08069924: .4byte gDispCnt
_08069928: .4byte 0x040000D4
_0806992C: .4byte gUnknown_030035C0
_08069930: .4byte 0x85000010
_08069934:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	beq _08069956
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806994A
	movs r0, #0xb
	b _08069D08
_0806994A:
	movs r0, #0x13
	b _08069D08
_0806994E:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08069964
_08069956:
	ldr r0, _08069960 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08069DC6
	.align 2, 0
_08069960: .4byte gCurTask
_08069964:
	cmp r0, #2
	beq _0806996A
	b _08069D0A
_0806996A:
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069976
	b _08069D0A
_08069976:
	movs r0, #0x13
	b _08069D08
_0806997A:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #2
	beq _08069984
	b _08069D0A
_08069984:
	movs r2, #1
	movs r1, #0
	ldr r6, _080699D0 @ =gPlayers
	ldr r5, _080699D4 @ =0xFFFFF9EF
	movs r3, #0xbf
	lsls r3, r3, #1
_08069990:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r5
	cmp r0, r3
	bls _080699AC
	movs r2, #0
_080699AC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08069990
	cmp r2, #0
	bne _080699BE
	b _08069D0A
_080699BE:
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x14
	strh r0, [r4, #0x2c]
	movs r0, #0x32
	bl sub_80299D4
	b _08069D0A
	.align 2, 0
_080699D0: .4byte gPlayers
_080699D4: .4byte 0xFFFFF9EF
_080699D8:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080699E6
	b _08069D0A
_080699E6:
	bl sub_807A4A8
	movs r0, #0x97
	lsls r0, r0, #3
	mov r1, r8
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x1e
	b _08069D08
_080699FE:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A0C
	b _08069D0A
_08069A0C:
	movs r0, #0x97
	lsls r0, r0, #3
	mov r2, r8
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x28
	b _08069D08
_08069A20:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A2E
	b _08069D0A
_08069A2E:
	movs r0, #0x32
	b _08069D08
_08069A32:
	ldr r0, [r4, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r4, #0x3c]
	ldr r1, _08069A50 @ =0x00005FFF
	cmp r0, r1
	bgt _08069A44
	b _08069D0A
_08069A44:
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	b _08069D08
	.align 2, 0
_08069A50: .4byte 0x00005FFF
_08069A54:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A62
	b _08069D0A
_08069A62:
	movs r0, #0x5a
	b _08069D08
_08069A66:
	ldr r0, _08069A78 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08069A7C @ =sub_8068C38
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r4, #0xe]
	strh r0, [r4, #0x30]
	movs r0, #1
	b _08069D04
	.align 2, 0
_08069A78: .4byte gCurTask
_08069A7C: .4byte sub_8068C38
_08069A80:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069A90
	b _08069D0A
_08069A90:
	movs r0, #0
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08069AAC
	movs r0, #1
	strb r0, [r4, #0x12]
	strh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #1
	b _08069D08
_08069AAC:
	strh r0, [r4, #0x30]
	movs r0, #0x6e
	b _08069D08
_08069AB2:
	ldr r1, _08069AD8 @ =gSineTable
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08069AC4
	adds r0, #0x3f
_08069AC4:
	asrs r1, r0, #6
	str r1, [r4, #0x38]
	ldrb r0, [r4, #0xe]
	adds r3, r0, #0
	cmp r3, #0
	bne _08069ADC
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	b _08069AE0
	.align 2, 0
_08069AD8: .4byte gSineTable
_08069ADC:
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
_08069AE0:
	ldr r1, _08069B20 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x30]
	adds r0, #4
	movs r2, #0
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	ldr r1, _08069B24 @ =0x01FF0000
	cmp r0, r1
	bls _08069B00
	strh r2, [r4, #0x30]
	str r2, [r4, #0x38]
	str r2, [r4, #0x44]
	movs r0, #0x78
	strh r0, [r4, #0x2c]
_08069B00:
	ldrh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08069B0C
	b _08069D0A
_08069B0C:
	movs r2, #0
	lsls r0, r3, #0x18
	cmp r0, #0
	bne _08069B28
	ldr r0, [r4]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	ble _08069B32
	b _08069B36
	.align 2, 0
_08069B20: .4byte 0x0003FFFF
_08069B24: .4byte 0x01FF0000
_08069B28:
	ldr r0, [r4]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	bge _08069B32
	movs r2, #1
_08069B32:
	cmp r2, #0
	beq _08069B50
_08069B36:
	ldr r0, [r4]
	subs r3, r0, r1
	cmp r3, #0
	bge _08069B40
	subs r3, r1, r0
_08069B40:
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r3, r0
	bgt _08069B4C
	str r0, [r4, #0x40]
	b _08069D0A
_08069B4C:
	str r3, [r4, #0x40]
	b _08069D0A
_08069B50:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	b _08069D0A
_08069B58:
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	cmp r2, r1
	beq _08069B70
	ldr r0, [r4, #0x44]
	adds r0, #0x40
	str r0, [r4, #0x44]
	adds r0, r2, r0
	str r0, [r4, #0x3c]
	cmp r0, r1
	blt _08069B70
	str r1, [r4, #0x3c]
_08069B70:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069B8C
	ldr r0, [r4, #0x38]
	subs r0, #0x80
	str r0, [r4, #0x38]
	ldr r1, _08069B88 @ =0xFFFFF000
	cmp r0, r1
	bgt _08069B9E
	str r1, [r4, #0x38]
	b _08069B9E
	.align 2, 0
_08069B88: .4byte 0xFFFFF000
_08069B8C:
	ldr r0, [r4, #0x38]
	adds r0, #0x80
	str r0, [r4, #0x38]
	ldr r1, _08069BAC @ =0x00000FFF
	cmp r0, r1
	ble _08069B9E
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x38]
_08069B9E:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069BB0 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	b _08069D0A
	.align 2, 0
_08069BAC: .4byte 0x00000FFF
_08069BB0: .4byte 0x0003FFFF
_08069BB4:
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _08069BD8 @ =0x00000225
	bl sub_80BA57C
	movs r0, #0xd2
	b _08069D08
	.align 2, 0
_08069BD8: .4byte 0x00000225
_08069BDC:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069BEC
	b _08069D0A
_08069BEC:
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	strh r1, [r4, #0x2c]
	b _08069D0A
_08069BF4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069C38
	ldr r0, [r4, #0x38]
	adds r0, #8
	str r0, [r4, #0x38]
	ldr r1, _08069C2C @ =0x000003FF
	cmp r0, r1
	ble _08069C0C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x38]
_08069C0C:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069C30 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	ldr r1, _08069C34 @ =0x0002FFFF
	cmp r0, r1
	ble _08069D0A
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069C2C: .4byte 0x000003FF
_08069C30: .4byte 0x0003FFFF
_08069C34: .4byte 0x0002FFFF
_08069C38:
	ldr r0, [r4, #0x38]
	subs r0, #8
	str r0, [r4, #0x38]
	ldr r1, _08069C64 @ =0xFFFFFC00
	cmp r0, r1
	bgt _08069C46
	str r1, [r4, #0x38]
_08069C46:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069C68 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	bgt _08069D0A
	str r1, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069C64: .4byte 0xFFFFFC00
_08069C68: .4byte 0x0003FFFF
_08069C6C:
	ldr r0, [r4, #0x3c]
	ldr r3, _08069C84 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r4, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08069D0A
	str r1, [r4, #0x3c]
	strh r2, [r4, #0x2c]
	b _08069D0A
	.align 2, 0
_08069C84: .4byte 0xFFFFFE00
_08069C88:
	ldrb r0, [r4, #0xe]
	movs r1, #1
	eors r0, r1
	movs r1, #0
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x30]
	b _08069D02
_08069C96:
	ldr r0, [r4, #0x44]
	subs r0, #0x20
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	movs r0, #0xe0
	lsls r0, r0, #6
	cmp r1, r0
	bgt _08069D0A
	str r0, [r4, #0x3c]
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _08069CD0 @ =0x00000225
	bl sub_80BA57C
	movs r0, #0xff
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069CD0: .4byte 0x00000225
_08069CD4:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08069D0A
	movs r0, #0x82
	lsls r0, r0, #2
	b _08069D08
_08069CE6:
	ldr r0, [r4, #0x3c]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r4, #0x3c]
	ldr r1, _08069DD4 @ =0x00005FFF
	cmp r0, r1
	ble _08069D0A
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0
	strb r0, [r4, #0x12]
	strh r0, [r4, #0x30]
_08069D02:
	movs r0, #0x3c
_08069D04:
	strh r0, [r4, #0x2e]
	movs r0, #0x64
_08069D08:
	strh r0, [r4, #0x2c]
_08069D0A:
	ldr r0, [r4, #0x34]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldr r6, _08069DD8 @ =gSineTable
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r7, r1, r0
	lsls r0, r7, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [r4, #0x3c]
	muls r0, r2, r0
	cmp r0, #0
	bge _08069D2E
	ldr r3, _08069DDC @ =0x00003FFF
	adds r0, r0, r3
_08069D2E:
	asrs r3, r0, #0xe
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	cmp r0, #0
	bge _08069D42
	ldr r1, _08069DDC @ =0x00003FFF
	adds r0, r0, r1
_08069D42:
	asrs r5, r0, #0xe
	ldr r1, [r4]
	adds r1, r1, r3
	str r1, [r4, #0x58]
	ldr r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r4, #0x5c]
	asrs r1, r1, #8
	ldr r2, _08069DE0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x10]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldrh r0, [r4, #0x2c]
	cmp r0, #0x78
	bne _08069DC6
	ldr r5, _08069DE4 @ =0x000003FF
	adds r0, r5, #0
	adds r1, r0, #0
	ands r1, r7
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r5, [r0, r2]
	mov r3, ip
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldrb r0, [r4, #0xe]
	movs r2, #4
	cmp r0, #0
	bne _08069D92
	movs r2, #2
_08069D92:
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x16
	adds r0, r0, r2
	movs r5, #0
	ldrsh r2, [r0, r5]
	adds r0, r3, #0
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #6
	ldr r0, [r4, #0x5c]
	adds r0, r0, r1
	lsls r2, r2, #8
	subs r5, r0, r2
	ldr r0, _08069DE8 @ =0x0000A9FF
	cmp r5, r0
	ble _08069DC6
	movs r0, #0xc8
	strh r0, [r4, #0x2c]
_08069DC6:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069DD4: .4byte 0x00005FFF
_08069DD8: .4byte gSineTable
_08069DDC: .4byte 0x00003FFF
_08069DE0: .4byte gCamera
_08069DE4: .4byte 0x000003FF
_08069DE8: .4byte 0x0000A9FF

	thumb_func_start sub_8069DEC
sub_8069DEC: @ 0x08069DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldrh r0, [r5, #0x32]
	adds r3, r0, #1
	movs r0, #0
	mov r8, r0
	strh r3, [r5, #0x32]
	ldrh r1, [r5, #0x2c]
	cmp r1, #0x6f
	bne _08069E0C
	b _0806A114
_08069E0C:
	cmp r1, #0x6f
	bgt _08069E2A
	cmp r1, #0xa
	beq _08069E68
	cmp r1, #0xa
	bgt _08069E1E
	cmp r1, #0
	beq _08069E54
	b _08069E9A
_08069E1E:
	cmp r1, #0x64
	beq _08069EA8
	cmp r1, #0x6e
	bne _08069E28
	b _0806A010
_08069E28:
	b _08069E9A
_08069E2A:
	cmp r1, #0xc8
	bne _08069E30
	b _0806A480
_08069E30:
	cmp r1, #0xc8
	bgt _08069E42
	cmp r1, #0x70
	bne _08069E3A
	b _0806A218
_08069E3A:
	cmp r1, #0x78
	bne _08069E40
	b _0806A31C
_08069E40:
	b _08069E9A
_08069E42:
	cmp r1, #0xd2
	bne _08069E48
	b _0806A51C
_08069E48:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08069E52
	b _0806A570
_08069E52:
	b _08069E9A
_08069E54:
	ldrb r1, [r5, #0xd]
	movs r0, #0xd
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08069E64
	subs r0, r1, #1
	strb r0, [r5, #0xd]
	b _08069E9A
_08069E64:
	movs r0, #0xa
	b _08069E98
_08069E68:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bge _08069E76
	movs r0, #0x80
	lsls r0, r0, #1
	b _08069E78
_08069E76:
	ldr r0, _08069EA0 @ =0xFFFFFF00
_08069E78:
	str r0, [r5, #0x60]
	ldr r0, _08069EA4 @ =0xFFFFFA00
	str r0, [r5, #0x64]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	movs r0, #0xa
	strb r0, [r5, #0x10]
	movs r0, #0x64
_08069E98:
	strh r0, [r5, #0x2c]
_08069E9A:
	adds r7, r5, #0
	adds r7, #0xf0
	b _0806A590
	.align 2, 0
_08069EA0: .4byte 0xFFFFFF00
_08069EA4: .4byte 0xFFFFFA00
_08069EA8:
	ldr r1, [r5, #0x64]
	mov sb, r1
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r0, _08069F60 @ =0x000007FF
	cmp r1, r0
	ble _08069EBA
	adds r0, #1
	str r0, [r5, #0x64]
_08069EBA:
	ldr r1, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r1, r0
	str r6, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	ldr r0, [r5, #0x64]
	adds r7, r1, r0
	str r7, [r5, #0x5c]
	ldrh r1, [r5, #0x32]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08069F36
	ldr r3, _08069F64 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _08069F68 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08069F6C @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _08069F70 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _08069F74 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_08069F36:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08069F46
	ldr r0, _08069F78 @ =0x00000221
	bl sub_80BA57C
_08069F46:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _08069F88
	cmp r0, #0
	bge _08069F7C
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _08069F88
	mov r2, r8
	str r2, [r5, #0x60]
	b _08069F88
	.align 2, 0
_08069F60: .4byte 0x000007FF
_08069F64: .4byte gUnknown_03006868
_08069F68: .4byte 0x00196225
_08069F6C: .4byte 0x3C6EF35F
_08069F70: .4byte 0x000003FF
_08069F74: .4byte gSineTable
_08069F78: .4byte 0x00000221
_08069F7C:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _08069F88
	mov r4, r8
	str r4, [r5, #0x60]
_08069F88:
	adds r7, r5, #0
	adds r7, #0xf0
	mov r0, sb
	cmp r0, #0
	bge _08069FD8
	ldr r0, [r5, #0x64]
	cmp r0, #0
	blt _08069FD8
	adds r3, r7, #0
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	movs r0, #3
	strb r0, [r3, #0x1a]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	ldr r0, _0806A004 @ =0x0000207F
	str r0, [r3, #8]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r3, r5, r2
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	str r1, [r3, #8]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r3, r5, r4
	subs r0, #0x40
	strh r0, [r3, #0x14]
	str r1, [r3, #8]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r3, r5, r0
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r3, #8]
_08069FD8:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A008 @ =0x00009DFF
	cmp r1, r0
	bgt _08069FE2
	b _0806A590
_08069FE2:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _0806A00C @ =0xFFFFFC00
	str r0, [r5, #0x64]
	movs r0, #0x6e
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A004: .4byte 0x0000207F
_0806A008: .4byte 0x00009DFF
_0806A00C: .4byte 0xFFFFFC00
_0806A010:
	ldr r1, [r5, #0x64]
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r2, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r2, r0
	str r6, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	adds r7, r0, r1
	str r7, [r5, #0x5c]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0806A08E
	ldr r3, _0806A0B8 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0806A0BC @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806A0C0 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _0806A0C4 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806A0C8 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806A08E:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A09E
	ldr r0, _0806A0CC @ =0x00000221
	bl sub_80BA57C
_0806A09E:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0806A0DC
	cmp r0, #0
	bge _0806A0D0
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _0806A0DC
	mov r2, r8
	str r2, [r5, #0x60]
	b _0806A0DC
	.align 2, 0
_0806A0B8: .4byte gUnknown_03006868
_0806A0BC: .4byte 0x00196225
_0806A0C0: .4byte 0x3C6EF35F
_0806A0C4: .4byte 0x000003FF
_0806A0C8: .4byte gSineTable
_0806A0CC: .4byte 0x00000221
_0806A0D0:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _0806A0DC
	mov r4, r8
	str r4, [r5, #0x60]
_0806A0DC:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A10C @ =0x00009DFF
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r1, r0
	bgt _0806A0EA
	b _0806A590
_0806A0EA:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _0806A110 @ =0xFFFFFD00
	str r0, [r5, #0x64]
	movs r0, #0x6f
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A10C: .4byte 0x00009DFF
_0806A110: .4byte 0xFFFFFD00
_0806A114:
	ldr r1, [r5, #0x64]
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r2, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r2, r0
	str r6, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	adds r7, r0, r1
	str r7, [r5, #0x5c]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0806A192
	ldr r3, _0806A1BC @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0806A1C0 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806A1C4 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _0806A1C8 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806A1CC @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806A192:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A1A2
	ldr r0, _0806A1D0 @ =0x00000221
	bl sub_80BA57C
_0806A1A2:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0806A1E0
	cmp r0, #0
	bge _0806A1D4
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _0806A1E0
	mov r2, r8
	str r2, [r5, #0x60]
	b _0806A1E0
	.align 2, 0
_0806A1BC: .4byte gUnknown_03006868
_0806A1C0: .4byte 0x00196225
_0806A1C4: .4byte 0x3C6EF35F
_0806A1C8: .4byte 0x000003FF
_0806A1CC: .4byte gSineTable
_0806A1D0: .4byte 0x00000221
_0806A1D4:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _0806A1E0
	mov r4, r8
	str r4, [r5, #0x60]
_0806A1E0:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A210 @ =0x00009DFF
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r1, r0
	bgt _0806A1EE
	b _0806A590
_0806A1EE:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _0806A214 @ =0xFFFFFE00
	str r0, [r5, #0x64]
	movs r0, #0x70
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A210: .4byte 0x00009DFF
_0806A214: .4byte 0xFFFFFE00
_0806A218:
	ldr r1, [r5, #0x64]
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r2, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r2, r0
	str r6, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	adds r7, r0, r1
	str r7, [r5, #0x5c]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0806A296
	ldr r3, _0806A2C0 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0806A2C4 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806A2C8 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _0806A2CC @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806A2D0 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806A296:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A2A6
	ldr r0, _0806A2D4 @ =0x00000221
	bl sub_80BA57C
_0806A2A6:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0806A2E4
	cmp r0, #0
	bge _0806A2D8
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _0806A2E4
	mov r2, r8
	str r2, [r5, #0x60]
	b _0806A2E4
	.align 2, 0
_0806A2C0: .4byte gUnknown_03006868
_0806A2C4: .4byte 0x00196225
_0806A2C8: .4byte 0x3C6EF35F
_0806A2CC: .4byte 0x000003FF
_0806A2D0: .4byte gSineTable
_0806A2D4: .4byte 0x00000221
_0806A2D8:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _0806A2E4
	mov r4, r8
	str r4, [r5, #0x60]
_0806A2E4:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A318 @ =0x00009DFF
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r1, r0
	bgt _0806A2F2
	b _0806A590
_0806A2F2:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r5, #0x2e]
	movs r0, #0x78
	strh r0, [r5, #0x2c]
	strb r1, [r5, #0x13]
	b _0806A590
	.align 2, 0
_0806A318: .4byte 0x00009DFF
_0806A31C:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806A330
	movs r0, #0x14
	strh r0, [r5, #0x2e]
	movs r0, #0xc8
	strh r0, [r5, #0x2c]
_0806A330:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #0x3c
	ble _0806A348
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A348
	ldr r0, _0806A460 @ =0x00000221
	bl sub_80BA57C
_0806A348:
	ldrh r0, [r5, #0x32]
	movs r6, #3
	ands r6, r0
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r6, #0
	beq _0806A358
	b _0806A590
_0806A358:
	ldr r2, _0806A464 @ =gUnknown_03006868
	mov r8, r2
	ldr r0, [r2]
	ldr r4, _0806A468 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _0806A46C @ =0x3C6EF35F
	mov sl, r1
	adds r1, r0, r1
	str r1, [r2]
	adds r4, r1, #0
	ldr r2, _0806A470 @ =0x000003FF
	ands r4, r2
	ldr r0, _0806A474 @ =0x000001FF
	cmp r4, r0
	bhi _0806A37A
	adds r0, #1
	adds r4, r4, r0
_0806A37A:
	ldr r2, _0806A468 @ =0x00196225
	adds r0, r1, #0
	muls r0, r2, r0
	add r0, sl
	mov r1, r8
	str r0, [r1]
	movs r3, #0x1f
	ands r3, r0
	ldr r2, _0806A478 @ =gSineTable
	mov sb, r2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	ldr r1, [r5, #0x58]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x5c]
	adds r2, r2, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	str r4, [sp]
	movs r4, #0x1e
	str r4, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	ldr r4, [r5, #0x28]
	str r4, [sp, #0xc]
	bl sub_8079758
	ldrb r0, [r5, #0x13]
	adds r0, #1
	strb r0, [r5, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0806A3E8
	strb r6, [r5, #0x13]
_0806A3E8:
	ldrh r0, [r5, #0x32]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	beq _0806A3F4
	b _0806A590
_0806A3F4:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0806A468 @ =0x00196225
	muls r0, r2, r0
	add r0, sl
	adds r4, r0, #0
	ldr r1, _0806A470 @ =0x000003FF
	ands r4, r1
	muls r0, r2, r0
	add r0, sl
	mov r2, r8
	str r0, [r2]
	movs r1, #0x50
	bl __umodsi3
	adds r3, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r3, r0, r3
	ldr r1, [r5, #0x58]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r0, _0806A47C @ =gCamera
	ldr r2, [r0, #4]
	lsrs r3, r3, #0xe
	adds r3, #0x50
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	str r4, [sp]
	movs r4, #0x1e
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
	b _0806A590
	.align 2, 0
_0806A460: .4byte 0x00000221
_0806A464: .4byte gUnknown_03006868
_0806A468: .4byte 0x00196225
_0806A46C: .4byte 0x3C6EF35F
_0806A470: .4byte 0x000003FF
_0806A474: .4byte 0x000001FF
_0806A478: .4byte gSineTable
_0806A47C: .4byte gCamera
_0806A480:
	ldrh r1, [r5, #0x2e]
	movs r0, #1
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0806A4A0
	ldr r2, _0806A498 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806A49C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	b _0806A4AE
	.align 2, 0
_0806A498: .4byte gDispCnt
_0806A49C: .4byte 0x0000FBFF
_0806A4A0:
	ldr r0, _0806A50C @ =gDispCnt
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r0]
_0806A4AE:
	subs r0, r3, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r0, #0
	bne _0806A590
	movs r4, #0
	ldr r6, _0806A510 @ =0x000003FF
_0806A4C0:
	ldr r1, [r5, #0x58]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x5c]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r4, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0806A4C0
	ldr r0, _0806A514 @ =0x00000221
	bl sub_80BA57C
	ldr r2, _0806A50C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806A518 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r5, #0x2e]
	movs r0, #0xd2
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A50C: .4byte gDispCnt
_0806A510: .4byte 0x000003FF
_0806A514: .4byte 0x00000221
_0806A518: .4byte 0x0000FBFF
_0806A51C:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r0, #0
	bne _0806A590
	movs r4, #0
	ldr r6, _0806A56C @ =0x000003FF
_0806A530:
	ldr r1, [r5, #0x58]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x5c]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r4, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0806A530
	movs r0, #0xa
	strh r0, [r5, #0x2e]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A56C: .4byte 0x000003FF
_0806A570:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r0, #0
	bne _0806A590
	strh r0, [r5, #0x32]
	ldr r0, _0806A5CC @ =0x000003F2
	strh r0, [r5, #0x2c]
	ldr r0, _0806A5D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806A5D4 @ =sub_8068D00
	str r0, [r1, #8]
_0806A590:
	adds r3, r7, #0
	ldr r0, [r5, #0x58]
	asrs r0, r0, #8
	ldr r2, _0806A5D8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldr r1, [r5, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A5CC: .4byte 0x000003F2
_0806A5D0: .4byte gCurTask
_0806A5D4: .4byte sub_8068D00
_0806A5D8: .4byte gCamera

	thumb_func_start sub_806A5DC
sub_806A5DC: @ 0x0806A5DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xf0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _0806A694
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0806A694
	subs r1, #1
	strb r1, [r4, #0xc]
	ldr r0, _0806A610 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806A614
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0806A622
	movs r0, #0x33
	bl sub_80299D4
	b _0806A622
	.align 2, 0
_0806A610: .4byte gStageData
_0806A614:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0806A622
	movs r0, #0x33
	bl sub_80299D4
_0806A622:
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	movs r0, #0x7a
	strb r0, [r4, #0xd]
	ldr r0, _0806A67C @ =0x000004B9
	movs r1, #0
	movs r2, #0x7a
	movs r3, #1
	bl sub_8078DB0
	ldr r0, _0806A680 @ =0x000004BB
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _0806A684 @ =0x000004BA
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0xeb
	bl sub_80BA57C
	bl sub_807A468
	ldr r1, _0806A688 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806A694
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0806A68C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0806A694
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _0806A694
	.align 2, 0
_0806A67C: .4byte 0x000004B9
_0806A680: .4byte 0x000004BB
_0806A684: .4byte 0x000004BA
_0806A688: .4byte gStageData
_0806A68C:
	ldrb r1, [r4, #0xc]
	movs r0, #4
	bl sub_8027674
_0806A694:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806A69C
sub_0806A69C: @ 0x0806A69C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0806A6F8 @ =gStageData
	adds r7, r1, #0
	adds r7, #0x88
	ldr r1, [r7]
	ldrh r5, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0806A704
	movs r3, #0
	strb r3, [r6, #0xc]
	ldr r0, _0806A6FC @ =0x03000138
	adds r5, r5, r0
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r0, r4
	str r0, [r1, #4]
	ldr r2, [r6, #0x54]
	ldr r0, [r2, #4]
	orrs r0, r4
	str r0, [r2, #4]
	strh r3, [r6, #0x32]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x2e]
	adds r0, r5, #0
	bl sub_80213B0
	ldr r1, [r6, #0x54]
	adds r0, r5, #0
	bl sub_80213B0
	ldr r1, [r7]
	ldr r0, _0806A700 @ =sub_806A760
	str r0, [r1, #8]
	b _0806A720
	.align 2, 0
_0806A6F8: .4byte gStageData
_0806A6FC: .4byte 0x03000138
_0806A700: .4byte sub_806A760
_0806A704:
	cmp r1, #1
	blt _0806A720
	cmp r1, #4
	bgt _0806A720
	cmp r1, #3
	blt _0806A720
	ldrb r1, [r6, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806A720
	adds r0, r6, #0
	bl sub_806A5DC
_0806A720:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A728
sub_806A728: @ 0x0806A728
	push {r4, lr}
	ldr r0, _0806A75C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8069814
	adds r0, r4, #0
	bl sub_8069360
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A75C: .4byte gCurTask

	thumb_func_start sub_806A760
sub_806A760: @ 0x0806A760
	push {r4, lr}
	ldr r0, _0806A79C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8069DEC
	ldr r0, _0806A7A0 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806A794
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
_0806A794:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A79C: .4byte gCurTask
_0806A7A0: .4byte gDispCnt

	thumb_func_start sub_806A7A4
sub_806A7A4: @ 0x0806A7A4
	push {r4, lr}
	ldr r0, _0806A7E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A7E0: .4byte gCurTask

	thumb_func_start sub_806A7E4
sub_806A7E4: @ 0x0806A7E4
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x28]
	bl VramFree
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0806A802
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x48]
_0806A802:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0806A810
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x4c]
_0806A810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A818
sub_806A818: @ 0x0806A818
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r0, r3
	str r0, [r1, #4]
	ldr r2, [r4, #0x54]
	ldr r0, [r2, #4]
	orrs r0, r3
	str r0, [r2, #4]
	movs r0, #0
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	bl sub_80213B0
	ldr r1, [r4, #0x54]
	adds r0, r5, #0
	bl sub_80213B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A854
sub_806A854: @ 0x0806A854
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r3, r0
	adds r0, r3, #0
	adds r0, #0xe8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _0806A890 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0xec
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A890: .4byte gCamera

	thumb_func_start sub_806A894
sub_806A894: @ 0x0806A894
	bx lr
	.align 2, 0

	thumb_func_start sub_806A898
sub_806A898: @ 0x0806A898
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	ldr r3, _0806A8FC @ =gCamera
	ldr r2, [r3]
	subs r6, r1, r2
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r7, r1, r2
	ldr r0, [r0, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, _0806A900 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x40
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806A904 @ =gUnknown_03002C30
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sub_80BEBCC
	strh r5, [r4, #0x10]
	movs r0, #0x68
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A8FC: .4byte gCamera
_0806A900: .4byte 0x000003FF
_0806A904: .4byte gUnknown_03002C30

	thumb_func_start sub_806A908
sub_806A908: @ 0x0806A908
    movs r0, #0
	bx lr
	.align 2, 0
    
    @ Called on init of Boss 2
	thumb_func_start sub_806A90C
sub_806A90C: @ 0x0806A90C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _0806A988 @ =sub_806CE2C
	movs r1, #0x92
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806A98C @ =sub_806CEE4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r3, _0806A990 @ =gStageData
	adds r0, r3, #0
	adds r0, #0x88
	mov r1, r8
	str r1, [r0]
	movs r1, #0
	movs r0, #0
	strh r0, [r7, #0x28]
	lsls r4, r4, #8
	str r4, [r7, #8]
	lsls r5, r5, #8
	str r5, [r7, #0xc]
	str r6, [r7, #0x10]
	strb r1, [r7, #0x14]
	strb r1, [r7, #0x17]
	strb r1, [r7, #0x16]
	strh r0, [r7, #0x2a]
	strb r1, [r7, #0x15]
	ldr r4, _0806A994 @ =0x03000026
	adds r0, r2, r4
	strb r1, [r0]
	ldr r0, _0806A998 @ =0x03000027
	adds r2, r2, r0
	strb r1, [r2]
	ldr r0, _0806A99C @ =0x0005DA00
	str r0, [r7]
	movs r0, #0xdc
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x4c]
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _0806A9A0
	movs r0, #8
	b _0806A9A2
	.align 2, 0
_0806A988: .4byte sub_806CE2C
_0806A98C: .4byte sub_806CEE4
_0806A990: .4byte gStageData
_0806A994: .4byte 0x03000026
_0806A998: .4byte 0x03000027
_0806A99C: .4byte 0x0005DA00
_0806A9A0:
	movs r0, #6
_0806A9A2:
	strb r0, [r7, #0x1d]
	adds r1, r7, #0
	adds r1, #0x24
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	subs r1, #4
	movs r0, #3
	strb r0, [r1]
	movs r1, #0
	movs r0, #0xbe
	lsls r0, r0, #5
	strh r0, [r7, #0x2c]
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
	ldr r0, _0806AA24 @ =gPlayers
	str r0, [r7, #0x50]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #0x54]
	adds r0, r7, #0
	bl sub_806AA40
	ldr r2, _0806AA28 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp, #4]
	ldr r2, _0806AA2C @ =0x040000D4
	add r4, sp, #4
	str r4, [r2]
	ldr r0, _0806AA30 @ =gUnknown_030035C0
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806AA34 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r7, #0
	bl sub_806AAA4
	ldr r1, _0806AA38 @ =gUnknown_03006868
	ldr r0, _0806AA3C @ =gUnknown_03003574
	ldr r0, [r0]
	str r0, [r1]
	bl sub_807A4BC
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806AA24: .4byte gPlayers
_0806AA28: .4byte gDispCnt
_0806AA2C: .4byte 0x040000D4
_0806AA30: .4byte gUnknown_030035C0
_0806AA34: .4byte 0x85000010
_0806AA38: .4byte gUnknown_03006868
_0806AA3C: .4byte gUnknown_03003574

	thumb_func_start sub_806AA40
sub_806AA40: @ 0x0806AA40
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x23
	movs r4, #0
	strb r4, [r0]
	movs r1, #0
	movs r0, #0x78
	strh r0, [r6, #0x2e]
	strh r4, [r6, #0x30]
	strb r1, [r6, #0x1b]
	strb r1, [r6, #0x1c]
	ldr r0, _0806AA9C @ =0xFFFFFF00
	str r0, [r6, #0x40]
	str r4, [r6, #0x44]
	str r4, [r6, #0x38]
	str r4, [r6, #0x3c]
	strb r1, [r6, #0x1e]
	strb r1, [r6, #0x1f]
	adds r0, r6, #0
	adds r0, #0x21
	strb r1, [r0]
	strb r1, [r6, #0x18]
	strb r1, [r6, #0x1a]
	mov r0, sp
	strh r4, [r0]
	adds r1, r6, #0
	adds r1, #0xc0
	ldr r5, _0806AAA0 @ =0x01000002
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AA9C: .4byte 0xFFFFFF00
_0806AAA0: .4byte 0x01000002

	thumb_func_start sub_806AAA4
sub_806AAA4: @ 0x0806AAA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x84
	bl VramMalloc
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0x6c
	ldr r1, _0806ABC0 @ =0x06004040
	str r1, [r7, #0x6c]
	ldr r5, _0806ABC4 @ =gUnknown_080D5780
	ldrh r1, [r5]
	movs r2, #0
	mov sb, r2
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x28
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	movs r1, #0x88
	lsls r1, r1, #9
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r0, #0x20]
	bl sub_80BE09C
	adds r4, r7, #0
	adds r4, #0x94
	adds r1, r7, #0
	adds r1, #0x60
	mov r2, r8
	str r2, [r4]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #5
	add r8, r0
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r7, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r2, sb
	strb r2, [r4, #0x1f]
	ldr r0, _0806ABC8 @ =0x0000106A
	str r0, [r4, #8]
	mov r0, sl
	str r0, [r4, #0x20]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r1]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc4
	mov r1, r8
	str r1, [r0]
	movs r2, #0xe8
	lsls r2, r2, #4
	add r8, r2
	ldr r1, _0806ABCC @ =0x000004F9
	strh r1, [r0, #0xc]
	mov r1, sb
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7]
	asrs r1, r1, #8
	ldr r3, _0806ABD0 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r7, #4]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	mov r2, sl
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	mov r0, r8
	str r0, [r7, #0x34]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806ABC0: .4byte 0x06004040
_0806ABC4: .4byte gUnknown_080D5780
_0806ABC8: .4byte 0x0000106A
_0806ABCC: .4byte 0x000004F9
_0806ABD0: .4byte gCamera

	thumb_func_start sub_806ABD4
sub_806ABD4: @ 0x0806ABD4
	push {r4, r5, r6, lr}
	ldr r0, _0806ABF4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806ABF8
	adds r0, r2, #0
	bl TaskDestroy
	b _0806AC62
	.align 2, 0
_0806ABF4: .4byte gCurTask
_0806ABF8:
	cmp r0, #2
	bne _0806AC62
	movs r1, #0
	ldr r4, _0806AC68 @ =gPlayers
	ldr r3, _0806AC6C @ =0xFFFFFB87
	ldr r2, _0806AC70 @ =0x0000018F
_0806AC04:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r0, r2
	bhi _0806AC62
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0806AC04
	movs r0, #0x1a
	bl sub_80BA648
	movs r0, #0x32
	bl sub_80299D4
	ldr r4, [r6, #0x34]
	movs r5, #0x90
	lsls r5, r5, #2
	adds r4, r4, r5
	adds r0, r6, #0
	adds r0, #0x1b
	adds r1, r4, #0
	bl sub_806BD10
	adds r0, r6, #0
	adds r0, #0x1c
	adds r1, r4, #0
	bl sub_806BEC0
	adds r4, r4, r5
	str r4, [r6, #0x34]
	movs r0, #0xc0
	strb r0, [r6, #0x1e]
	ldr r0, _0806AC74 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806AC78 @ =sub_806AC7C
	str r0, [r1, #8]
_0806AC62:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AC68: .4byte gPlayers
_0806AC6C: .4byte 0xFFFFFB87
_0806AC70: .4byte 0x0000018F
_0806AC74: .4byte gCurTask
_0806AC78: .4byte sub_806AC7C

	thumb_func_start sub_806AC7C
sub_806AC7C: @ 0x0806AC7C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r2, _0806ACAC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x10]
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #2
	bne _0806ACF2
	movs r0, #1
	strb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	movs r2, #0
	ldr r7, _0806ACB0 @ =sub_806AD04
	ldr r6, _0806ACB4 @ =gPlayers
_0806ACA2:
	cmp r2, #0
	bne _0806ACBC
	ldr r0, _0806ACB8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806ACC6
	.align 2, 0
_0806ACAC: .4byte gCurTask
_0806ACB0: .4byte sub_806AD04
_0806ACB4: .4byte gPlayers
_0806ACB8: .4byte gStageData
_0806ACBC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806ACC6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	movs r3, #0
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #0
	bne _0806ACE0
	movs r3, #1
_0806ACE0:
	strb r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806ACA2
	mov r1, ip
	ldr r0, [r1]
	str r7, [r0, #8]
_0806ACF2:
	adds r0, r5, #0
	bl sub_806D07C
	adds r0, r5, #0
	bl sub_806BC50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806AD04
sub_806AD04: @ 0x0806AD04
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806ADC0 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, [r4]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_806B094
	adds r0, r4, #0
	bl sub_806CEE8
	ldr r1, _0806ADC4 @ =gSineTable
	ldrb r0, [r4, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x19
	str r2, [r4, #0x38]
	ldrb r0, [r4, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldrb r0, [r4, #0x1e]
	movs r5, #0
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl sub_806D07C
	adds r0, r4, #0
	bl sub_806BC50
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bge _0806AD76
	rsbs r0, r0, #0
_0806AD76:
	cmp r0, #1
	bgt _0806ADBA
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bhi _0806ADBA
	bl sub_807A4A8
	adds r0, r4, #0
	bl sub_806AA40
	ldr r0, _0806ADC8 @ =0x03000024
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0806ADCC @ =0x03000020
	adds r0, r6, r1
	strb r5, [r0]
	movs r0, #0x80
	str r0, [r4, #0x40]
	strh r5, [r4, #0x2c]
	strh r5, [r4, #0x2e]
	ldr r2, _0806ADD0 @ =0x03000094
	adds r1, r6, r2
	ldr r2, _0806ADD4 @ =gUnknown_080D5780
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	ldr r1, [r7]
	ldr r0, _0806ADD8 @ =sub_806ADDC
	str r0, [r1, #8]
_0806ADBA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806ADC0: .4byte gCurTask
_0806ADC4: .4byte gSineTable
_0806ADC8: .4byte 0x03000024
_0806ADCC: .4byte 0x03000020
_0806ADD0: .4byte 0x03000094
_0806ADD4: .4byte gUnknown_080D5780
_0806ADD8: .4byte sub_806ADDC

	thumb_func_start sub_806ADDC
sub_806ADDC: @ 0x0806ADDC
	push {r4, r5, lr}
	ldr r0, _0806AE04 @ =gCurTask
	ldr r1, [r0]
	ldrh r5, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0806AE0C
	movs r0, #0
	strh r0, [r4, #0x2e]
	ldr r0, _0806AE08 @ =sub_806AE3C
	str r0, [r1, #8]
	b _0806AE2E
	.align 2, 0
_0806AE04: .4byte gCurTask
_0806AE08: .4byte sub_806AE3C
_0806AE0C:
	adds r0, r4, #0
	bl sub_806D07C
	adds r0, r4, #0
	bl sub_806BC50
	cmp r0, #0
	bne _0806AE2E
	ldr r0, _0806AE34 @ =0x03000094
	adds r1, r5, r0
	ldr r2, _0806AE38 @ =gUnknown_080D5780
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_0806AE2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806AE34: .4byte 0x03000094
_0806AE38: .4byte gUnknown_080D5780

	thumb_func_start sub_806AE3C
sub_806AE3C: @ 0x0806AE3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806AEC0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, [r4]
	asrs r3, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #6]
	ldr r6, _0806AEC4 @ =0x03000058
	adds r0, r5, r6
	movs r6, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1b
	strb r3, [r0]
	ldr r3, [r4, #4]
	asrs r3, r3, #8
	adds r3, #0x26
	ldr r7, _0806AEC8 @ =0x03000059
	adds r4, r5, r7
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1b
	strb r3, [r4]
	ldr r3, _0806AECC @ =0x0300005A
	adds r4, r5, r3
	movs r3, #0x1c
	strb r3, [r4]
	adds r7, #2
	adds r4, r5, r7
	movs r3, #0xa
	strb r3, [r4]
	ldr r4, _0806AED0 @ =0x0300005C
	adds r3, r5, r4
	movs r4, #1
	strb r4, [r3]
	adds r7, #2
	adds r3, r5, r7
	strb r6, [r3]
	adds r7, #1
	adds r3, r5, r7
	strb r6, [r3]
	ldr r6, _0806AED4 @ =0x0300005F
	adds r3, r5, r6
	strb r4, [r3]
	ldrb r3, [r0]
	subs r7, #0x3c
	adds r5, r5, r7
	strb r3, [r5]
	movs r3, #0
	bl CreateEntity_Interactable028 @ NOTE(Jace)::What..?
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0806AED8 @ =sub_806AEDC
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AEC0: .4byte gCurTask
_0806AEC4: .4byte 0x03000058
_0806AEC8: .4byte 0x03000059
_0806AECC: .4byte 0x0300005A
_0806AED0: .4byte 0x0300005C
_0806AED4: .4byte 0x0300005F
_0806AED8: .4byte sub_806AEDC

	thumb_func_start sub_806AEDC
sub_806AEDC: @ 0x0806AEDC
	push {r4, r5, r6, lr}
	ldr r0, _0806AF54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0x30]
	cmp r0, #0
	beq _0806AEFA
	subs r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806AF0E
_0806AEFA:
	movs r0, #0xfa
	lsls r0, r0, #1
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #1
	str r1, [r5, #0x40]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #1
	str r0, [r5, #0x44]
_0806AF0E:
	ldr r0, [r5]
	ldr r1, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_806B094
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	bne _0806AF5C
	ldr r1, _0806AF58 @ =gSineTable
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	b _0806AF7E
	.align 2, 0
_0806AF54: .4byte gCurTask
_0806AF58: .4byte gSineTable
_0806AF5C:
	ldr r1, _0806AFA4 @ =gSineTable
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
_0806AF7E:
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	adds r3, r0, r2
	str r3, [r5, #0x38]
	ldrh r0, [r5, #0x30]
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AFD6
	cmp r2, #0
	bge _0806AFA8
	movs r2, #0x80
	lsls r2, r2, #2
	b _0806AFAE
	.align 2, 0
_0806AFA4: .4byte gSineTable
_0806AFA8:
	cmp r2, #0
	ble _0806AFB2
	ldr r2, _0806AFC0 @ =0xFFFFFE00
_0806AFAE:
	adds r0, r3, r2
	str r0, [r5, #0x38]
_0806AFB2:
	cmp r1, #0
	bge _0806AFC4
	ldr r0, [r5, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0806AFCE
	.align 2, 0
_0806AFC0: .4byte 0xFFFFFE00
_0806AFC4:
	cmp r1, #0
	ble _0806AFD0
	ldr r0, [r5, #0x3c]
	ldr r2, _0806B01C @ =0xFFFFFE00
	adds r0, r0, r2
_0806AFCE:
	str r0, [r5, #0x3c]
_0806AFD0:
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _0806AFE0
_0806AFD6:
	adds r0, r5, #0
	bl sub_806D01C
	ldr r0, _0806B020 @ =0x0000FFFF
	strh r0, [r5, #0x30]
_0806AFE0:
	adds r0, r5, #0
	bl sub_806CEE8
	ldrb r0, [r5, #0x1e]
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_806D07C
	adds r0, r5, #0
	bl sub_806BC50
	cmp r6, #0
	beq _0806B000
	adds r0, r5, #0
	bl sub_806D01C
_0806B000:
	adds r0, r5, #0
	bl sub_806B844
	cmp r0, #1
	bne _0806B02C
	ldr r0, _0806B024 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806B028 @ =sub_806C1C8
	str r0, [r1, #8]
	adds r1, r5, #0
	adds r1, #0x5f
	movs r0, #0xff
	b _0806B08C
	.align 2, 0
_0806B01C: .4byte 0xFFFFFE00
_0806B020: .4byte 0x0000FFFF
_0806B024: .4byte gCurTask
_0806B028: .4byte sub_806C1C8
_0806B02C:
	ldr r4, [r5]
	lsrs r0, r4, #0x10
	ldr r2, [r5, #4]
	asrs r3, r2, #8
	lsrs r2, r2, #0x10
	adds r1, r5, #0
	adds r1, #0x22
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r4, r4, #8
	adds r3, #0x26
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	subs r0, #0x10
	asrs r4, r4, #0x10
	cmp r0, r4
	bge _0806B08E
	adds r0, #0x20
	cmp r0, r4
	ble _0806B08E
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	subs r1, #8
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	bge _0806B08E
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r3
	ble _0806B08E
	adds r1, r5, #0
	adds r1, #0x5f
	movs r0, #2
_0806B08C:
	strb r0, [r1]
_0806B08E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_806B094
sub_806B094: @ 0x0806B094
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	ldr r2, _0806B0F8 @ =gSineTable
	ldrb r1, [r4, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	rsbs r0, r0, #0
	lsls r1, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r2
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r2, r0, #5
	ldr r1, [r4]
	adds r1, r1, r2
	lsls r2, r0, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r2, r3, #5
	ldr r0, [r4, #4]
	adds r0, r0, r2
	lsls r2, r3, #2
	adds r0, r0, r2
	lsls r3, r3, #1
	adds r0, r0, r3
	asrs r1, r1, #8
	str r1, [sp]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldrb r1, [r4, #0x1e]
	adds r0, r1, #0
	adds r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0806B0FC
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B144
	b _0806B138
	.align 2, 0
_0806B0F8: .4byte gSineTable
_0806B0FC:
	adds r0, r1, #0
	subs r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0806B112
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B23C
	b _0806B138
_0806B112:
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0806B128
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B2F4
	b _0806B138
_0806B128:
	cmp r0, #0xbf
	bls _0806B138
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0806B138:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806B144
sub_806B144: @ 0x0806B144
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0
	mov sb, r0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	adds r6, r7, #0
	adds r6, #0x1e
	str r6, [sp]
	ldr r2, _0806B1D4 @ =sub_805203C
	mov r8, r2
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4]
	subs r0, #8
	ldr r1, [r4, #4]
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r0, r0, #0x18
	lsls r1, r5, #0x18
	cmp r0, r1
	ble _0806B196
	adds r2, r5, #0
_0806B196:
	adds r4, r2, #0
	ldrb r0, [r7, #0x1e]
	cmp r0, #0x80
	bne _0806B1A2
	mov r0, sb
	strb r0, [r7, #0x1e]
_0806B1A2:
	ldrb r0, [r7, #0x1e]
	cmp r0, #0
	bne _0806B1AC
	movs r0, #0xa0
	strb r0, [r7, #0x1e]
_0806B1AC:
	movs r1, #1
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _0806B1D8
	adds r0, #4
	mov r2, sb
	strb r2, [r0]
	ldr r1, [r7, #0x40]
	rsbs r1, r1, #0
	str r1, [r7, #0x44]
	ldr r1, [r7, #0x38]
	rsbs r1, r1, #0
	str r1, [r7, #0x3c]
	adds r2, r0, #0
	b _0806B1EC
	.align 2, 0
_0806B1D4: .4byte sub_805203C
_0806B1D8:
	adds r2, r7, #0
	adds r2, #0x24
	cmp r1, #1
	bne _0806B1EC
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, [r7, #0x40]
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x38]
	str r0, [r7, #0x3c]
_0806B1EC:
	ldrb r0, [r7, #0x1d]
	cmp r0, #1
	beq _0806B1F8
	ldr r0, [r7, #0x44]
	adds r0, #2
	str r0, [r7, #0x44]
_0806B1F8:
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ble _0806B202
	movs r0, #0xff
	b _0806B204
_0806B202:
	movs r0, #1
_0806B204:
	strb r0, [r2]
	movs r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x40]
	movs r0, #3
	strb r0, [r3]
	mov r0, sb
	cmp r0, #0
	beq _0806B22E
	cmp r0, #0
	ble _0806B224
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7]
	adds r0, r0, r1
	b _0806B22C
_0806B224:
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7]
	subs r0, r0, r1
_0806B22C:
	str r0, [r7]
_0806B22E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806B23C
sub_806B23C: @ 0x0806B23C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	adds r2, r4, #0
	adds r2, #0x1e
	str r2, [sp]
	ldr r2, _0806B288 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _0806B268
	movs r0, #0xa0
	strb r0, [r4, #0x1e]
_0806B268:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bne _0806B28C
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	rsbs r0, r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	rsbs r0, r0, #0
	b _0806B29E
	.align 2, 0
_0806B288: .4byte sub_805217C
_0806B28C:
	cmp r1, #3
	bne _0806B2A0
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
_0806B29E:
	str r0, [r4, #0x38]
_0806B2A0:
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	beq _0806B2C0
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B2BA
	ldr r0, [r4, #0x40]
	subs r0, #2
	b _0806B2BE
_0806B2BA:
	ldr r0, [r4, #0x40]
	adds r0, #2
_0806B2BE:
	str r0, [r4, #0x40]
_0806B2C0:
	movs r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x3c]
	movs r0, #1
	strb r0, [r3]
	movs r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806B2EC
	cmp r0, #0
	ble _0806B2E2
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0806B2EA
_0806B2E2:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	subs r0, r0, r1
_0806B2EA:
	str r0, [r4, #4]
_0806B2EC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_806B2F4
sub_806B2F4: @ 0x0806B2F4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r3, #8
	rsbs r3, r3, #0
	adds r2, r4, #0
	adds r2, #0x1e
	str r2, [sp]
	ldr r2, _0806B33C @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _0806B320
	movs r0, #0x40
	strb r0, [r4, #0x1e]
_0806B320:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r5, r0, #0
	cmp r2, #0
	bne _0806B340
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x38]
	b _0806B354
	.align 2, 0
_0806B33C: .4byte sub_805203C
_0806B340:
	adds r1, r4, #0
	adds r1, #0x24
	cmp r2, #1
	bne _0806B356
	strb r2, [r1]
	ldr r0, [r4, #0x40]
	rsbs r0, r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x38]
	rsbs r0, r0, #0
_0806B354:
	str r0, [r4, #0x3c]
_0806B356:
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	beq _0806B362
	ldr r0, [r4, #0x44]
	adds r0, #2
	str r0, [r4, #0x44]
_0806B362:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ble _0806B36C
	movs r0, #1
	b _0806B36E
_0806B36C:
	movs r0, #0xff
_0806B36E:
	strb r0, [r1]
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
	movs r0, #2
	strb r0, [r5]
	movs r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806B39C
	cmp r0, #0
	ble _0806B392
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4]
	adds r0, r0, r1
	b _0806B39A
_0806B392:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4]
	subs r0, r0, r1
_0806B39A:
	str r0, [r4]
_0806B39C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_806B3A4
sub_806B3A4: @ 0x0806B3A4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	adds r2, r4, #0
	adds r2, #0x1e
	str r2, [sp]
	ldr r2, _0806B3E8 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r7, #1
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x80
	bne _0806B3D0
	strb r5, [r4, #0x1e]
_0806B3D0:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	bne _0806B3EC
	adds r0, #4
	strb r7, [r0]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	b _0806B402
	.align 2, 0
_0806B3E8: .4byte sub_805217C
_0806B3EC:
	cmp r1, #3
	bne _0806B404
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	rsbs r0, r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	rsbs r0, r0, #0
_0806B402:
	str r0, [r4, #0x38]
_0806B404:
	ldrb r0, [r4, #0x1d]
	adds r2, r0, #0
	cmp r2, #1
	beq _0806B426
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B420
	ldr r0, [r4, #0x40]
	adds r0, #2
	b _0806B424
_0806B420:
	ldr r0, [r4, #0x40]
	subs r0, #2
_0806B424:
	str r0, [r4, #0x40]
_0806B426:
	ldr r1, [r4, #0x40]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B430
	rsbs r0, r1, #0
_0806B430:
	cmp r0, #0
	bgt _0806B454
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806B452
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B44E
	adds r0, r1, #2
	b _0806B450
_0806B44E:
	subs r0, r1, #2
_0806B450:
	str r0, [r4, #0x40]
_0806B452:
	movs r5, #1
_0806B454:
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x44]
	strb r0, [r6]
	adds r0, r7, #0
	cmp r0, #0
	beq _0806B47A
	cmp r0, #0
	ble _0806B470
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0806B478
_0806B470:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	subs r0, r0, r1
_0806B478:
	str r0, [r4, #4]
_0806B47A:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_806B484
sub_806B484: @ 0x0806B484
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r6, #5
	movs r4, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0806B498
	movs r6, #7
	subs r0, #1
	strb r0, [r2, #0x14]
_0806B498:
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4A2
	rsbs r0, r1, #0
_0806B4A2:
	ldr r7, _0806B4C0 @ =0xFFFFFE0C
	adds r0, r0, r7
	ldr r5, _0806B4C4 @ =0x0000012B
	cmp r0, r5
	bls _0806B4BC
	ldr r3, [r2, #0x3c]
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B4B6
	rsbs r0, r3, #0
_0806B4B6:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B4C8
_0806B4BC:
	movs r4, #2
	b _0806B50C
	.align 2, 0
_0806B4C0: .4byte 0xFFFFFE0C
_0806B4C4: .4byte 0x0000012B
_0806B4C8:
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4D0
	rsbs r0, r1, #0
_0806B4D0:
	ldr r7, _0806B4EC @ =0xFFFFFCE0
	adds r0, r0, r7
	cmp r0, r5
	bls _0806B4E6
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B4E0
	rsbs r0, r3, #0
_0806B4E0:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B4F0
_0806B4E6:
	movs r4, #3
	b _0806B50C
	.align 2, 0
_0806B4EC: .4byte 0xFFFFFCE0
_0806B4F0:
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4F8
	rsbs r0, r1, #0
_0806B4F8:
	ldr r5, _0806B524 @ =0x0000044B
	cmp r0, r5
	bgt _0806B50A
	adds r0, r3, #0
	cmp r0, #0
	bge _0806B506
	rsbs r0, r0, #0
_0806B506:
	cmp r0, r5
	ble _0806B50C
_0806B50A:
	movs r4, #4
_0806B50C:
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B534
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806B528
	adds r1, r4, #1
	b _0806B58C
	.align 2, 0
_0806B524: .4byte 0x0000044B
_0806B528:
	adds r0, r1, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B534:
	cmp r0, #1
	bne _0806B54C
	cmp r1, #0x7f
	bgt _0806B540
	adds r1, r4, #1
	b _0806B58C
_0806B540:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B54C:
	cmp r0, #2
	bne _0806B570
	ldr r3, [r2, #0x3c]
	movs r5, #0x80
	rsbs r5, r5, #0
	cmp r3, r5
	ble _0806B55E
	adds r1, r4, #1
	b _0806B58C
_0806B55E:
	ldr r0, _0806B56C @ =0xFFFFFF00
	cmp r3, r0
	ble _0806B58A
	cmp r1, r5
	bgt _0806B58A
	adds r1, r4, #2
	b _0806B58C
	.align 2, 0
_0806B56C: .4byte 0xFFFFFF00
_0806B570:
	cmp r0, #3
	bne _0806B594
	ldr r0, [r2, #0x3c]
	cmp r0, #0x7f
	bgt _0806B57E
	adds r1, r4, #1
	b _0806B58C
_0806B57E:
	cmp r0, #0xff
	bgt _0806B58A
	cmp r1, #0x7f
	ble _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B58A:
	adds r1, r4, #3
_0806B58C:
	lsls r1, r6
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	strh r0, [r2, #0x2c]
_0806B594:
	ldrh r0, [r2, #0x2c]
	ldr r1, _0806B5A4 @ =0x00003FF0
	cmp r0, r1
	bls _0806B59E
	strh r1, [r2, #0x2c]
_0806B59E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5A4: .4byte 0x00003FF0

	thumb_func_start sub_806B5A8
sub_806B5A8: @ 0x0806B5A8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r6, #5
	movs r4, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0806B5BC
	movs r6, #7
	subs r0, #1
	strb r0, [r2, #0x14]
_0806B5BC:
	ldr r3, [r2, #0x38]
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B5C6
	rsbs r0, r3, #0
_0806B5C6:
	ldr r7, _0806B5E4 @ =0xFFFFFE0C
	adds r0, r0, r7
	ldr r5, _0806B5E8 @ =0x0000012B
	cmp r0, r5
	bls _0806B5E0
	ldr r1, [r2, #0x3c]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B5DA
	rsbs r0, r1, #0
_0806B5DA:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B5EC
_0806B5E0:
	movs r4, #2
	b _0806B630
	.align 2, 0
_0806B5E4: .4byte 0xFFFFFE0C
_0806B5E8: .4byte 0x0000012B
_0806B5EC:
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B5F4
	rsbs r0, r3, #0
_0806B5F4:
	ldr r7, _0806B610 @ =0xFFFFFCE0
	adds r0, r0, r7
	cmp r0, r5
	bls _0806B60A
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B604
	rsbs r0, r1, #0
_0806B604:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B614
_0806B60A:
	movs r4, #3
	b _0806B630
	.align 2, 0
_0806B610: .4byte 0xFFFFFCE0
_0806B614:
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B61C
	rsbs r0, r3, #0
_0806B61C:
	ldr r5, _0806B644 @ =0x0000044B
	cmp r0, r5
	bgt _0806B62E
	adds r0, r1, #0
	cmp r0, #0
	bge _0806B62A
	rsbs r0, r0, #0
_0806B62A:
	cmp r0, r5
	ble _0806B630
_0806B62E:
	movs r4, #4
_0806B630:
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B654
	cmp r3, #0x7f
	bgt _0806B648
	adds r0, r4, #1
	b _0806B6A8
	.align 2, 0
_0806B644: .4byte 0x0000044B
_0806B648:
	adds r0, r3, #0
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B654:
	cmp r0, #1
	bne _0806B670
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r3, r0
	ble _0806B664
	adds r0, r4, #1
	b _0806B6A8
_0806B664:
	adds r0, r3, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B670:
	cmp r0, #2
	bne _0806B688
	ldr r0, [r2, #0x3c]
	cmp r0, #0x7f
	bgt _0806B67E
	adds r0, r4, #1
	b _0806B6A8
_0806B67E:
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B688:
	cmp r0, #3
	bne _0806B6B0
	ldr r1, [r2, #0x3c]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806B69A
	adds r0, r4, #1
	b _0806B6A8
_0806B69A:
	adds r0, r1, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B6A6:
	adds r0, r4, #3
_0806B6A8:
	lsls r0, r6
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
	strh r0, [r2, #0x2c]
_0806B6B0:
	ldrh r1, [r2, #0x2c]
	ldr r0, _0806B6C4 @ =0x00003FF0
	cmp r1, r0
	bls _0806B6BC
	movs r0, #0
	strh r0, [r2, #0x2c]
_0806B6BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B6C4: .4byte 0x00003FF0

	thumb_func_start sub_806B6C8
sub_806B6C8: @ 0x0806B6C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x94
	movs r0, #0
	mov ip, r0
	str r0, [sp]
	mov r0, sp
	mov r1, ip
	strb r1, [r0, #8]
	mov r0, ip
	str r0, [sp, #4]
	mov r0, sp
	strb r1, [r0, #9]
	adds r4, r5, #0
	adds r4, #0xb8
	ldrb r0, [r4]
	adds r0, #0x11
	strb r0, [r4]
	movs r0, #0xb9
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r0, #0x29
	mov r1, r8
	strb r0, [r1]
	adds r7, r5, #0
	adds r7, #0xba
	ldrb r0, [r7]
	adds r0, #0x11
	strb r0, [r7]
	adds r6, r5, #0
	adds r6, #0xbb
	ldrb r0, [r6]
	adds r0, #0x29
	strb r0, [r6]
	str r3, [sp, #0x1c]
	movs r0, #0x10
	ldrsh r1, [r3, r0]
	ldr r2, _0806B784 @ =gCamera
	ldr r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r0, #0x12
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	mov r0, sp
	mov r1, ip
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	bl sub_806CAA4
	mov ip, r0
	ldrb r0, [r4]
	subs r0, #0x11
	strb r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #0x29
	strb r0, [r1]
	ldrb r0, [r7]
	subs r0, #0x11
	strb r0, [r7]
	ldrb r0, [r6]
	subs r0, #0x29
	strb r0, [r6]
	mov r0, sp
	ldrb r0, [r0, #9]
	strb r0, [r5, #0x15]
	mov r0, sp
	ldrb r0, [r0, #0xa]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r0, sp
	ldrb r1, [r0, #0xb]
	adds r0, r5, #0
	adds r0, #0x27
	strb r1, [r0]
	mov r0, ip
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B784: .4byte gCamera

	thumb_func_start sub_806B788
sub_806B788: @ 0x0806B788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r2, _0806B7F0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r0, [r7, #0x2e]
	mov ip, r0
	mov r8, r2
	mov r1, ip
	cmp r1, #0
	bne _0806B7D8
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r3, _0806B7F4 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	adds r4, r0, #0
	adds r4, #0xa
	mov r0, ip
	adds r0, #1
	strh r0, [r7, #0x2e]
	ldr r2, [r3]
	adds r2, r2, r4
	str r2, [sp]
	ldr r0, [r3, #0x14]
	adds r1, r0, #0
	subs r1, #0x32
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r0, #0x1b
	str r0, [sp, #0xc]
	ldr r1, _0806B7F8 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
_0806B7D8:
	ldrb r0, [r7, #0x1c]
	cmp r0, #4
	bne _0806B836
	movs r2, #0
	ldr r4, _0806B7FC @ =sub_806CEB8
	ldr r3, _0806B800 @ =gPlayers
_0806B7E4:
	cmp r2, #0
	bne _0806B808
	ldr r0, _0806B804 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806B812
	.align 2, 0
_0806B7F0: .4byte gCurTask
_0806B7F4: .4byte gCamera
_0806B7F8: .4byte sub_807A37C
_0806B7FC: .4byte sub_806CEB8
_0806B800: .4byte gPlayers
_0806B804: .4byte gStageData
_0806B808:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806B812:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r1, r6, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806B7E4
	mov r1, r8
	ldr r0, [r1]
	str r4, [r0, #8]
_0806B836:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806B844
sub_806B844: @ 0x0806B844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r6, #0x90
	lsls r6, r6, #3
	movs r1, #0x1c
	mov sb, r1
	movs r2, #0
	str r2, [sp, #4]
	movs r4, #0
	mov r1, r8
	adds r1, #0x25
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806B876
	strb r2, [r1]
	mov r7, r8
	adds r7, #0x23
	b _0806B8BC
_0806B876:
	mov r0, r8
	adds r0, #0x94
	ldrh r1, [r0, #0x10]
	str r0, [sp, #8]
	cmp r1, #0xf0
	bls _0806B884
	b _0806BC3E
_0806B884:
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	cmp r0, #0xa0
	ble _0806B88E
	b _0806BC3E
_0806B88E:
	cmp r0, #0
	bge _0806B894
	b _0806BC3E
_0806B894:
	mov r0, r8
	adds r0, #0x23
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0
	bne _0806B8B6
	mov r2, r8
	ldrb r0, [r2, #0x1d]
	cmp r0, #0
	beq _0806B8B6
	mov r0, r8
	bl sub_806B6C8
	cmp r0, #1
	bne _0806B8B6
	movs r4, #1
_0806B8B6:
	cmp r4, #0
	bne _0806B8BC
	b _0806BA3C
_0806B8BC:
	movs r0, #0x3c
	mov r1, r8
	strb r0, [r1, #0x14]
	ldrb r4, [r1, #0x1e]
	ldrb r5, [r1, #0x1f]
	mov r0, r8
	bl sub_806AA40
	mov r2, r8
	strb r4, [r2, #0x1e]
	strb r5, [r2, #0x1f]
	mov r0, r8
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	bne _0806B904
	adds r0, #6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0806B8F4
	mov r1, r8
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	str r6, [r2, #0x40]
	b _0806B974
_0806B8F4:
	mov r0, r8
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	rsbs r0, r6, #0
	mov r1, r8
	str r0, [r1, #0x40]
	b _0806B974
_0806B904:
	cmp r1, #1
	bne _0806B932
	mov r0, r8
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B924
	mov r0, r8
	adds r0, #0x24
	strb r1, [r0]
	rsbs r0, r6, #0
	mov r2, r8
	str r0, [r2, #0x40]
	b _0806B974
_0806B924:
	mov r1, r8
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	str r6, [r0, #0x40]
	b _0806B974
_0806B932:
	cmp r1, #3
	bne _0806B946
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0806B958
	b _0806B968
_0806B946:
	cmp r1, #2
	bne _0806B974
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B968
_0806B958:
	mov r0, r8
	adds r0, #0x24
	movs r1, #1
	strb r1, [r0]
	rsbs r0, r6, #0
	mov r1, r8
	str r0, [r1, #0x44]
	b _0806B974
_0806B968:
	mov r1, r8
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	mov r2, r8
	str r6, [r2, #0x44]
_0806B974:
	movs r0, #0x8f
	bl sub_80BA57C
	bl sub_807A468
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	subs r1, r0, #1
	mov r2, r8
	strb r1, [r2, #0x1d]
	ldr r2, _0806B9A8 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0806B9B6
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0806B9AC
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0806B9B6
	mov r0, r8
	ldrb r1, [r0, #0x1d]
	movs r0, #3
	bl sub_8027674
	b _0806B9B6
	.align 2, 0
_0806B9A8: .4byte gStageData
_0806B9AC:
	mov r2, r8
	ldrb r1, [r2, #0x1d]
	movs r0, #4
	bl sub_8027674
_0806B9B6:
	ldr r0, _0806B9D0 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806B9D4
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	cmp r0, #4
	bne _0806B9E2
	movs r0, #0x33
	bl sub_80299D4
	b _0806B9E2
	.align 2, 0
_0806B9D0: .4byte gStageData
_0806B9D4:
	mov r2, r8
	ldrb r0, [r2, #0x1d]
	cmp r0, #3
	bne _0806B9E2
	movs r0, #0x33
	bl sub_80299D4
_0806B9E2:
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	bne _0806B9F4
	ldr r0, _0806B9F0 @ =0x0000FFFF
	strh r0, [r1, #0x30]
	b _0806B9FA
	.align 2, 0
_0806B9F0: .4byte 0x0000FFFF
_0806B9F4:
	movs r0, #0x3c
	mov r2, r8
	strh r0, [r2, #0x30]
_0806B9FA:
	ldr r2, _0806BA30 @ =gUnknown_080D5780
	ldrh r1, [r2, #0x18]
	mov r0, r8
	adds r0, #0xa0
	strh r1, [r0]
	ldrb r0, [r2, #0x1a]
	mov r1, r8
	adds r1, #0xae
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x7a
	strb r0, [r7]
	ldr r0, _0806BA34 @ =0x000004BE
	movs r1, #0
	movs r2, #0x7a
	movs r3, #1
	bl sub_8078DB0
	ldr r0, _0806BA38 @ =0x000004BF
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	b _0806BBFA
	.align 2, 0
_0806BA30: .4byte gUnknown_080D5780
_0806BA34: .4byte 0x000004BE
_0806BA38: .4byte 0x000004BF
_0806BA3C:
	mov r0, r8
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806BA48
	b _0806BBFA
_0806BA48:
	movs r0, #0
	str r0, [sp]
_0806BA4C:
	ldr r1, [sp]
	cmp r1, #0
	bne _0806BA5C
	ldr r0, _0806BA58 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806BA66
	.align 2, 0
_0806BA58: .4byte gStageData
_0806BA5C:
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806BA66:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806BABC @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	mov r0, sl
	bl sub_802C080
	cmp r0, #0
	beq _0806BA82
	b _0806BBEA
_0806BA82:
	mov r2, sl
	ldr r4, [r2, #0x10]
	asrs r5, r4, #8
	mov r3, sl
	adds r3, #0xe0
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	ldr r2, [r2, #0x14]
	asrs r6, r2, #8
	adds r1, #0x31
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r6, r6, r0
	mov r1, r8
	ldr r0, [r1]
	asrs r7, r0, #8
	subs r1, r5, r7
	mov ip, r0
	cmp r1, #0
	blt _0806BAC0
	cmp r1, sb
	blt _0806BAC6
	b _0806BAE2
	.align 2, 0
_0806BABC: .4byte gPlayers
_0806BAC0:
	subs r0, r7, r5
	cmp r0, sb
	bge _0806BAE2
_0806BAC6:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BAD8
	cmp r1, sb
	blt _0806BADE
	b _0806BAE2
_0806BAD8:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BAE2
_0806BADE:
	movs r0, #1
	str r0, [sp, #4]
_0806BAE2:
	asrs r5, r4, #8
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	asrs r6, r2, #8
	adds r1, #0x33
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r6, r6, r0
	mov r1, ip
	asrs r0, r1, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0806BB0C
	cmp r1, sb
	blt _0806BB12
	b _0806BB2E
_0806BB0C:
	subs r0, r0, r5
	cmp r0, sb
	bge _0806BB2E
_0806BB12:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BB24
	cmp r1, sb
	blt _0806BB2A
	b _0806BB2E
_0806BB24:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BB2E
_0806BB2A:
	movs r0, #1
	str r0, [sp, #4]
_0806BB2E:
	asrs r5, r4, #8
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r5, r1
	asrs r6, r2, #8
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	mov r1, ip
	asrs r0, r1, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0806BB5A
	cmp r1, sb
	blt _0806BB60
	b _0806BB7C
_0806BB5A:
	subs r0, r0, r5
	cmp r0, sb
	bge _0806BB7C
_0806BB60:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BB72
	cmp r1, sb
	blt _0806BB78
	b _0806BB7C
_0806BB72:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BB7C
_0806BB78:
	movs r0, #1
	str r0, [sp, #4]
_0806BB7C:
	asrs r5, r4, #8
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r5, r1
	asrs r6, r2, #8
	adds r0, #0x33
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	mov r1, ip
	asrs r0, r1, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0806BBA8
	cmp r1, sb
	blt _0806BBAE
	b _0806BBCA
_0806BBA8:
	subs r0, r0, r5
	cmp r0, sb
	bge _0806BBCA
_0806BBAE:
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BBC0
	cmp r1, sb
	blt _0806BBC6
	b _0806BBCA
_0806BBC0:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BBCA
_0806BBC6:
	movs r0, #1
	str r0, [sp, #4]
_0806BBCA:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0806BBE6
	mov r0, sl
	bl sub_8014550
	ldr r1, _0806BC1C @ =gUnknown_080D5780
	ldrh r0, [r1, #0x10]
	ldr r2, [sp, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_0806BBE6:
	movs r0, #0
	str r0, [sp, #4]
_0806BBEA:
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #1
	bhi _0806BBFA
	b _0806BA4C
_0806BBFA:
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	bne _0806BC3E
	ldr r1, _0806BC20 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806BC34
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0806BC2C
	ldr r0, _0806BC24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806BC28 @ =sub_806C12C
	str r0, [r1, #8]
	b _0806BC3E
	.align 2, 0
_0806BC1C: .4byte gUnknown_080D5780
_0806BC20: .4byte gStageData
_0806BC24: .4byte gCurTask
_0806BC28: .4byte sub_806C12C
_0806BC2C:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_0806BC34:
	mov r0, r8
	bl sub_806CA28
	movs r0, #1
	b _0806BC40
_0806BC3E:
	movs r0, #0
_0806BC40:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_806BC50
sub_806BC50: @ 0x0806BC50
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x23
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0806BC66
	subs r0, r2, #1
	strb r0, [r1]
_0806BC66:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _0806BC94 @ =gCamera
	ldr r1, [r2]
	subs r5, r0, r1
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r6, r0, r1
	adds r4, r3, #0
	adds r4, #0x94
	adds r2, r3, #0
	adds r2, #0x60
	adds r0, r3, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806BC98
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	b _0806BC9E
	.align 2, 0
_0806BC94: .4byte gCamera
_0806BC98:
	ldr r0, [r4, #8]
	ldr r1, _0806BD04 @ =0xFFFBFFFF
	ands r0, r1
_0806BC9E:
	str r0, [r4, #8]
	strh r5, [r4, #0x10]
	strh r6, [r4, #0x12]
	ldrh r0, [r3, #0x2c]
	lsrs r0, r0, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r2, #8]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_80BF8F4
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r3, _0806BD08 @ =gCamera
	ldr r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x12
	ldrsh r2, [r4, r1]
	ldr r1, [r3, #4]
	adds r1, r1, r2
	lsls r1, r1, #8
	bl sub_8004D68
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r5, #0
	bne _0806BCFA
	ldr r2, _0806BD0C @ =gUnknown_080D5780
	ldrb r1, [r2, #0xa]
	ldrb r0, [r4, #0x1a]
	cmp r0, r1
	beq _0806BCFA
	ldrh r0, [r2, #8]
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0806BCFA:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806BD04: .4byte 0xFFFBFFFF
_0806BD08: .4byte gCamera
_0806BD0C: .4byte gUnknown_080D5780

	thumb_func_start sub_806BD10
sub_806BD10: @ 0x0806BD10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0806BDB8 @ =sub_806BDD0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806BDBC @ =sub_806D154
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	str r5, [r6]
	movs r0, #0xe0
	lsls r0, r0, #3
	str r0, [r6, #8]
	ldr r0, _0806BDC0 @ =0xFFFFCE00
	str r0, [r6, #0xc]
	ldr r5, _0806BDC4 @ =gCamera
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0806BDC8 @ =0x03000010
	adds r4, r4, r0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	ldr r0, _0806BDCC @ =0x0000037F
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, [r5, #0x18]
	ldr r0, [r5]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r5, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806BDB8: .4byte sub_806BDD0
_0806BDBC: .4byte sub_806D154
_0806BDC0: .4byte 0xFFFFCE00
_0806BDC4: .4byte gCamera
_0806BDC8: .4byte 0x03000010
_0806BDCC: .4byte 0x0000037F

	thumb_func_start sub_806BDD0
sub_806BDD0: @ 0x0806BDD0
	push {r4, lr}
	ldr r0, _0806BDF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0806BE06
	ldr r0, [r4, #0xc]
	ldr r1, _0806BDFC @ =0xFFFFE700
	cmp r0, r1
	bge _0806BE00
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _0806BE06
	.align 2, 0
_0806BDF8: .4byte gCurTask
_0806BDFC: .4byte 0xFFFFE700
_0806BE00:
	str r1, [r4, #0xc]
	movs r0, #2
	strb r0, [r2]
_0806BE06:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r3, _0806BE50 @ =gCamera
	ldr r2, [r3, #0x18]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806BE4A
	ldr r0, _0806BE54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806BE58 @ =sub_806BE5C
	str r0, [r1, #8]
_0806BE4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BE50: .4byte gCamera
_0806BE54: .4byte gCurTask
_0806BE58: .4byte sub_806BE5C

	thumb_func_start sub_806BE5C
sub_806BE5C: @ 0x0806BE5C
	push {r4, r5, lr}
	ldr r5, _0806BEB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0806BEB8 @ =0x03000010
	adds r0, r0, r1
	ldr r3, _0806BEBC @ =gCamera
	ldr r2, [r3, #0x18]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	cmn r1, r0
	bhs _0806BEAE
	ldr r0, [r5]
	bl TaskDestroy
_0806BEAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BEB4: .4byte gCurTask
_0806BEB8: .4byte 0x03000010
_0806BEBC: .4byte gCamera

	thumb_func_start sub_806BEC0
sub_806BEC0: @ 0x0806BEC0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0806BF5C @ =sub_806BF78
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806BF60 @ =sub_806D168
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	str r6, [r5]
	ldr r0, _0806BF64 @ =0xFFFFF800
	str r0, [r5, #8]
	ldr r0, _0806BF68 @ =0xFFFFCE00
	str r0, [r5, #0xc]
	ldr r0, _0806BF6C @ =0x03000010
	adds r4, r4, r0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r6, #0
	movs r3, #0
	ldr r0, _0806BF70 @ =0x0000037F
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r2, _0806BF74 @ =gCamera
	ldr r1, [r2, #0x18]
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF5C: .4byte sub_806BF78
_0806BF60: .4byte sub_806D168
_0806BF64: .4byte 0xFFFFF800
_0806BF68: .4byte 0xFFFFCE00
_0806BF6C: .4byte 0x03000010
_0806BF70: .4byte 0x0000037F
_0806BF74: .4byte gCamera

	thumb_func_start sub_806BF78
sub_806BF78: @ 0x0806BF78
	push {r4, lr}
	ldr r0, _0806BFA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0806BFAE
	ldr r0, [r4, #0xc]
	ldr r1, _0806BFA4 @ =0xFFFFE700
	cmp r0, r1
	bge _0806BFA8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _0806BFAE
	.align 2, 0
_0806BFA0: .4byte gCurTask
_0806BFA4: .4byte 0xFFFFE700
_0806BFA8:
	str r1, [r4, #0xc]
	movs r0, #2
	strb r0, [r2]
_0806BFAE:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r3, _0806BFF8 @ =gCamera
	ldr r2, [r3, #0x1c]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806BFF2
	ldr r0, _0806BFFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C000 @ =sub_806C004
	str r0, [r1, #8]
_0806BFF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BFF8: .4byte gCamera
_0806BFFC: .4byte gCurTask
_0806C000: .4byte sub_806C004

	thumb_func_start sub_806C004
sub_806C004: @ 0x0806C004
	push {r4, r5, lr}
	ldr r5, _0806C064 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x10
	adds r0, r0, r1
	ldr r3, _0806C068 @ =gCamera
	ldr r2, [r3, #0x1c]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	bl sub_806D17C
	cmp r0, #1
	bne _0806C05C
	ldr r0, [r4]
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
_0806C05C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C064: .4byte gCurTask
_0806C068: .4byte gCamera

	thumb_func_start sub_806C06C
sub_806C06C: @ 0x0806C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r6, sb
	adds r6, #0x10
	movs r4, #0
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r2, _0806C0A0 @ =gCamera
	ldr r0, [r2]
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0x12
	ldrsh r1, [r6, r0]
	ldr r0, [r2, #4]
	adds r7, r1, r0
	movs r5, #0
_0806C094:
	cmp r5, #0
	bne _0806C0A8
	ldr r0, _0806C0A4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806C0B2
	.align 2, 0
_0806C0A0: .4byte gCamera
_0806C0A4: .4byte gStageData
_0806C0A8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806C0B2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806C0E0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r5, #1
	cmp r0, #0
	bne _0806C116
	str r0, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	cmp r0, #0
	beq _0806C116
	b _0806C102
	.align 2, 0
_0806C0E0: .4byte gPlayers
_0806C0E4:
	mov r1, sb
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	cmp r0, #4
	bne _0806C0F8
	ldr r0, [r4, #0x10]
	ldr r1, _0806C0F4 @ =0xFFFFFF00
	b _0806C0FE
	.align 2, 0
_0806C0F4: .4byte 0xFFFFFF00
_0806C0F8:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_0806C0FE:
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0806C102:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	cmp r0, #0
	bne _0806C0E4
_0806C116:
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806C094
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806C12C
sub_806C12C: @ 0x0806C12C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _0806C1B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806C1BC @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r6, #0x28
	str r6, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806C1C0 @ =gUnknown_03002C30
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sub_80BEBCC
	ldr r0, _0806C1C4 @ =0x0300006C
	adds r5, r5, r0
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BE09C
	adds r0, r5, #0
	bl sub_80BE46C
	adds r0, r4, #0
	bl sub_806BC50
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C1B8: .4byte gCurTask
_0806C1BC: .4byte gCamera
_0806C1C0: .4byte gUnknown_03002C30
_0806C1C4: .4byte 0x0300006C

	thumb_func_start sub_806C1C8
sub_806C1C8: @ 0x0806C1C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _0806C2DC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _0806C2E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806C2E4 @ =gUnknown_03002C30
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sub_80BEBCC
	ldr r0, _0806C2E8 @ =0x0300006C
	adds r4, r4, r0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	movs r1, #0
	ldr r3, _0806C2EC @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C240:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C240
	adds r0, r6, #0
	bl sub_806CFD4
	adds r4, r0, #0
	cmp r4, #1
	bne _0806C2C0
	ldr r2, _0806C2E0 @ =gCamera
	ldr r0, [r2]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r6]
	movs r1, #0
	str r1, [r6, #0x44]
	str r1, [r6, #0x40]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x38]
	str r1, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x24
	strb r4, [r0]
	movs r3, #0
	strh r1, [r6, #0x2a]
	strb r3, [r6, #0x17]
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	strb r4, [r6, #0x16]
	adds r2, r6, #0
	adds r2, #0x94
	ldr r0, _0806C2F0 @ =gUnknown_080D5780
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, _0806C2DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C2F4 @ =sub_806C2F8
	str r0, [r1, #8]
_0806C2C0:
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r6, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C2DC: .4byte gCurTask
_0806C2E0: .4byte gCamera
_0806C2E4: .4byte gUnknown_03002C30
_0806C2E8: .4byte 0x0300006C
_0806C2EC: .4byte gPlayers
_0806C2F0: .4byte gUnknown_080D5780
_0806C2F4: .4byte sub_806C2F8

	thumb_func_start sub_806C2F8
sub_806C2F8: @ 0x0806C2F8
	push {r4, lr}
	ldr r0, _0806C364 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0
	ldr r3, _0806C368 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C30E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C30E
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0806C350
	adds r0, r4, #0
	adds r0, #0xc4
	adds r1, r4, #0
	adds r1, #0x48
	adds r2, r4, #0
	adds r2, #0x16
	bl sub_8078920
	movs r0, #0
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
_0806C350:
	ldrb r0, [r4, #0x19]
	cmp r0, #5
	bls _0806C35E
	ldr r0, _0806C364 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C36C @ =sub_806C370
	str r0, [r1, #8]
_0806C35E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C364: .4byte gCurTask
_0806C368: .4byte gPlayers
_0806C36C: .4byte sub_806C370

	thumb_func_start sub_806C370
sub_806C370: @ 0x0806C370
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _0806C45C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _0806C460 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r1, #0
	ldr r7, _0806C464 @ =gUnknown_03002C30
	ldr r4, _0806C468 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C3A8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C3A8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x18]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x1c]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x18]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sub_80BEBCC
	adds r4, r6, #0
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	ldrh r0, [r6, #0x2c]
	subs r0, #0xe0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806C46C @ =0x00003FF0
	cmp r0, r1
	bls _0806C430
	strh r1, [r6, #0x2c]
_0806C430:
	adds r0, r6, #0
	bl sub_806C9C4
	ldr r0, [sp, #0x14]
	cmp r0, #0xa
	ble _0806C442
	adds r0, r6, #0
	bl sub_806C5D4
_0806C442:
	adds r0, r6, #0
	bl sub_806C6FC
	cmp r0, #1
	bne _0806C4DE
	ldr r4, [r6, #0x3c]
	cmp r4, #0
	beq _0806C474
	ldr r0, _0806C45C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C470 @ =sub_806C4F8
	b _0806C4DC
	.align 2, 0
_0806C45C: .4byte gCurTask
_0806C460: .4byte gCamera
_0806C464: .4byte gUnknown_03002C30
_0806C468: .4byte gPlayers
_0806C46C: .4byte 0x00003FF0
_0806C470: .4byte sub_806C4F8
_0806C474:
	ldr r3, _0806C4E8 @ =gSineTable
	ldrb r1, [r6, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	rsbs r2, r2, #0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r1, r2, #5
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r0, r2
	str r2, [sp, #0x20]
	lsls r1, r3, #5
	ldr r0, [r6, #4]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0x24]
	asrs r1, r2, #8
	str r1, [sp, #0x20]
	adds r2, r3, #0
	asrs r0, r2, #8
	str r4, [sp]
	ldr r2, _0806C4EC @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r0
	str r1, [r6, #4]
	strh r4, [r6, #0x2a]
	ldr r0, _0806C4F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C4F4 @ =sub_806C7B0
_0806C4DC:
	str r0, [r1, #8]
_0806C4DE:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C4E8: .4byte gSineTable
_0806C4EC: .4byte sub_805217C
_0806C4F0: .4byte gCurTask
_0806C4F4: .4byte sub_806C7B0

	thumb_func_start sub_806C4F8
sub_806C4F8: @ 0x0806C4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0806C5BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r1, #0
	ldr r7, _0806C5C0 @ =gCamera
	ldr r0, _0806C5C4 @ =gUnknown_03002C30
	mov ip, r0
	ldr r5, _0806C5C8 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C516:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C516
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r7]
	subs r1, r1, r0
	adds r3, r1, #0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r7, #4]
	subs r0, r0, r2
	adds r4, r0, #0
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, ip
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sub_80BEBCC
	adds r4, r6, #0
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	ldrh r0, [r6, #0x2c]
	subs r0, #0xe0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806C5CC @ =0x00003FF0
	cmp r0, r1
	bls _0806C59C
	strh r1, [r6, #0x2c]
_0806C59C:
	adds r0, r6, #0
	bl sub_806C9C4
	adds r0, r6, #0
	bl sub_806CF70
	cmp r0, #1
	bne _0806C5B4
	ldr r0, _0806C5BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C5D0 @ =sub_806C370
	str r0, [r1, #8]
_0806C5B4:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C5BC: .4byte gCurTask
_0806C5C0: .4byte gCamera
_0806C5C4: .4byte gUnknown_03002C30
_0806C5C8: .4byte gPlayers
_0806C5CC: .4byte 0x00003FF0
_0806C5D0: .4byte sub_806C370

	thumb_func_start sub_806C5D4
sub_806C5D4: @ 0x0806C5D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	movs r0, #0
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, _0806C6A0 @ =gSineTable
	ldrb r1, [r7, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	rsbs r2, r2, #0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r1, r2, #5
	ldr r0, [r7]
	adds r0, r0, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r0, r2
	str r2, [sp, #8]
	lsls r1, r3, #5
	ldr r0, [r7, #4]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0xc]
	adds r1, r2, #0
	asrs r6, r1, #8
	str r6, [sp, #8]
	adds r0, r3, #0
	asrs r0, r0, #8
	str r0, [sp, #0x10]
	movs r3, #8
	rsbs r3, r3, #0
	mov r1, sb
	str r1, [sp]
	ldr r4, _0806C6A4 @ =sub_805203C
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	movs r2, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov sb, r5
	mov r0, r8
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	movs r2, #0
	movs r3, #8
	bl sub_8052394
	ldr r3, [r7]
	asrs r2, r3, #8
	adds r1, r2, #0
	subs r1, #0x1e
	ldr r0, _0806C6A8 @ =gCamera
	ldr r0, [r0]
	cmp r1, r0
	bge _0806C6AC
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bge _0806C680
	rsbs r0, r0, #0
_0806C680:
	str r0, [r7, #0x38]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r0, r3, r0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	b _0806C6E0
	.align 2, 0
_0806C6A0: .4byte gSineTable
_0806C6A4: .4byte sub_805203C
_0806C6A8: .4byte gCamera
_0806C6AC:
	adds r1, r2, #0
	adds r1, #0x1e
	adds r0, #0xf0
	cmp r1, r0
	ble _0806C6E0
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bge _0806C6BE
	rsbs r0, r0, #0
_0806C6BE:
	rsbs r0, r0, #0
	str r0, [r7, #0x38]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	adds r0, r3, r0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
_0806C6E0:
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806C6FC
sub_806C6FC: @ 0x0806C6FC
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	movs r6, #0
	ldr r4, [r0, #4]
	adds r3, r4, #0
	asrs r3, r3, #8
	asrs r0, r4, #8
	ldr r5, _0806C770 @ =gCamera
	ldr r1, [r5, #4]
	subs r0, r0, r1
	cmp r0, #0x14
	ble _0806C722
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x30
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0806C722:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0806C778
	lsls r0, r0, #8
	adds r0, r4, r0
	mov r1, ip
	str r0, [r1, #4]
	adds r1, #0x24
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0806C774 @ =gUnknown_080D57C0
	mov r4, ip
	ldrh r0, [r4, #0x2a]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #8
	lsls r0, r0, #9
	subs r1, r1, r0
	str r1, [r4, #0x3c]
	str r2, [r4, #0x44]
	ldrh r0, [r4, #0x2a]
	cmp r0, #3
	bhi _0806C75C
	adds r0, #1
	strh r0, [r4, #0x2a]
_0806C75C:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	movs r0, #1
	b _0806C7A8
	.align 2, 0
_0806C770: .4byte gCamera
_0806C774: .4byte gUnknown_080D57C0
_0806C778:
	mov r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	mov r2, ip
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _0806C79C
	str r1, [r2, #0x3c]
_0806C79C:
	mov r4, ip
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0
_0806C7A8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_806C7B0
sub_806C7B0: @ 0x0806C7B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0806C8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _0806C8A4 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r1, #0
	ldr r7, _0806C8A8 @ =gUnknown_03002C30
	ldr r4, _0806C8AC @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C7E4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C7E4
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sub_80BEBCC
	adds r4, r6, #0
	adds r4, #0x6c
	movs r7, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	strb r7, [r6, #0x16]
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0806C898
	strh r0, [r6, #0x2a]
	strb r7, [r6, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r6, #0
	adds r1, #0x48
	adds r2, r6, #0
	adds r2, #0x16
	bl sub_80789EC
	ldr r2, _0806C8B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806C8B4 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806C8A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C8B8 @ =sub_806C8BC
	str r0, [r1, #8]
_0806C898:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C8A0: .4byte gCurTask
_0806C8A4: .4byte gCamera
_0806C8A8: .4byte gUnknown_03002C30
_0806C8AC: .4byte gPlayers
_0806C8B0: .4byte gDispCnt
_0806C8B4: .4byte 0x0000FBFF
_0806C8B8: .4byte sub_806C8BC

	thumb_func_start sub_806C8BC
sub_806C8BC: @ 0x0806C8BC
	push {r4, r5, lr}
	ldr r0, _0806C944 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, _0806C948 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r5, #0x48]
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r1, #0
	ldr r3, _0806C94C @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C8EC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C8EC
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0806C932
	ldrh r0, [r5, #0x2a]
	cmp r0, #1
	bhi _0806C932
	adds r0, #1
	movs r4, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r1, #0x48
	adds r2, r5, #0
	adds r2, #0x16
	bl sub_80789EC
	strb r4, [r5, #0x18]
_0806C932:
	ldrb r0, [r5, #0x16]
	cmp r0, #1
	bhi _0806C950
	adds r0, r5, #0
	adds r0, #0xc4
	bl UpdateSpriteAnimation
	b _0806C95E
	.align 2, 0
_0806C944: .4byte gCurTask
_0806C948: .4byte gCamera
_0806C94C: .4byte gPlayers
_0806C950:
	ldr r0, _0806C964 @ =0x00000221
	bl sub_80BA57C
	ldr r0, _0806C968 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C96C @ =sub_806C970
	str r0, [r1, #8]
_0806C95E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C964: .4byte 0x00000221
_0806C968: .4byte gCurTask
_0806C96C: .4byte sub_806C970

	thumb_func_start sub_806C970
sub_806C970: @ 0x0806C970
	push {r4, r5, r6, lr}
	ldr r2, _0806C9B8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r3, #0
	adds r5, r2, #0
	ldr r6, _0806C9BC @ =sub_806B788
	ldr r4, _0806C9C0 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C98A:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0806C98A
	movs r0, #0
	strh r0, [r1, #0x2e]
	movs r0, #3
	strb r0, [r1, #0x1b]
	strb r0, [r1, #0x1c]
	ldr r0, [r5]
	str r6, [r0, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C9B8: .4byte gCurTask
_0806C9BC: .4byte sub_806B788
_0806C9C0: .4byte gPlayers

	thumb_func_start sub_806C9C4
sub_806C9C4: @ 0x0806C9C4
	push {lr}
	adds r3, r0, #0
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r2, _0806CA18 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r3, #0x48]
	lsls r0, r0, #8
	str r0, [r3, #0x4c]
	ldrh r0, [r3, #0x2e]
	adds r0, #1
	strh r0, [r3, #0x2e]
	ldr r2, _0806CA1C @ =gUnknown_080D57C5
	ldrb r1, [r3, #0x17]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _0806CA24
	movs r0, #0
	strh r0, [r3, #0x2e]
	ldrb r0, [r3, #0x17]
	adds r0, #1
	strb r0, [r3, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0806CA20
	adds r0, r3, #0
	adds r0, #0x48
	adds r1, r3, #0
	adds r1, #0x17
	bl sub_80781C0
	b _0806CA24
	.align 2, 0
_0806CA18: .4byte gCamera
_0806CA1C: .4byte gUnknown_080D57C5
_0806CA20:
	movs r0, #3
	strb r0, [r3, #0x17]
_0806CA24:
	pop {r0}
	bx r0

	thumb_func_start sub_806CA28
sub_806CA28: @ 0x0806CA28
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x2e]
	movs r5, #0
	ldr r6, _0806CA48 @ =gPlayers
_0806CA38:
	cmp r5, #0
	beq _0806CA4C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0806CA50
	.align 2, 0
_0806CA48: .4byte gPlayers
_0806CA4C:
	ldr r0, _0806CA9C @ =gStageData
	ldrb r1, [r0, #6]
_0806CA50:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806CA78
	adds r0, r4, #0
	bl Player_8005380
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
_0806CA78:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806CA38
	adds r2, r7, #0
	adds r2, #0x94
	ldr r0, _0806CAA0 @ =gUnknown_080D5780
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA9C: .4byte gStageData
_0806CAA0: .4byte gUnknown_080D5780

	thumb_func_start sub_806CAA4
sub_806CAA4: @ 0x0806CAA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	asrs r7, r0, #8
	ldr r0, [r5, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r5, #0x1c]
	mov r8, r1
	lsls r0, r7, #8
	lsls r1, r6, #8
	bl sub_8004D68
	movs r0, #0
	mov sl, r0
_0806CADC:
	mov r1, sl
	cmp r1, #0
	bne _0806CAEC
	ldr r0, _0806CAE8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806CAF6
	.align 2, 0
_0806CAE8: .4byte gStageData
_0806CAEC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806CAF6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806CB60 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0806CB12
	b _0806CC8C
_0806CB12:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0806CB2E
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0806CB2E
	movs r0, #1
	str r0, [sp, #8]
_0806CB2E:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0806CB3A
	b _0806CC8C
_0806CB3A:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CB64
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806CB5C
	b _0806CC8C
_0806CB5C:
	b _0806CBE6
	.align 2, 0
_0806CB60: .4byte gPlayers
_0806CB64:
	str r4, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CBC6
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CB8A
	mov r1, sb
	strb r1, [r5, #0xa]
	b _0806CB8E
_0806CB8A:
	movs r0, #0xff
	strb r0, [r5, #0xa]
_0806CB8E:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CB9A
	movs r0, #1
	b _0806CB9C
_0806CB9A:
	movs r0, #0xff
_0806CB9C:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r0, sl
	cmp r0, #0
	bne _0806CBB4
	ldr r0, _0806CBB0 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CBBE
	.align 2, 0
_0806CBB0: .4byte gStageData
_0806CBB4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CBBE:
	strb r0, [r5, #9]
	movs r1, #1
	str r1, [sp, #8]
	b _0806CC8C
_0806CBC6:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CC4E
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC04
_0806CBE6:
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0806CC8C
_0806CC04:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CC10
	mov r0, sb
	b _0806CC12
_0806CC10:
	movs r0, #0xff
_0806CC12:
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CC20
	movs r0, #1
	b _0806CC22
_0806CC20:
	movs r0, #0xff
_0806CC22:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r1, sl
	cmp r1, #0
	bne _0806CC3C
	ldr r0, _0806CC38 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CC46
	.align 2, 0
_0806CC38: .4byte gStageData
_0806CC3C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CC46:
	strb r0, [r5, #9]
	movs r0, #1
	str r0, [sp, #8]
	b _0806CC8C
_0806CC4E:
	str r4, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CC8C
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC8C
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0806CC8C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0806CC9C
	b _0806CADC
_0806CC9C:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806CCB0
sub_806CCB0: @ 0x0806CCB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CD1C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806CDB0
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r1, r1, r0
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	ldr r1, _0806CD20 @ =gSineTable
	lsrs r2, r0, #0x10
	asrs r0, r0, #0xf
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0806CD24
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0806CD10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0806CD10:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0806CD40
	b _0806CD3A
	.align 2, 0
_0806CD1C: .4byte gCurTask
_0806CD20: .4byte gSineTable
_0806CD24:
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CD32
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0806CD32:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CD40
_0806CD3A:
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
_0806CD40:
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0806CD4A
	rsbs r0, r0, #0
_0806CD4A:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0806CD64
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0806CD5E
	strh r1, [r4, #0x1c]
	b _0806CD64
_0806CD5E:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
_0806CD64:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0806CD6E
	rsbs r0, r0, #0
_0806CD6E:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0806CD88
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0806CD82
	strh r1, [r4, #0x18]
	b _0806CD88
_0806CD82:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
_0806CD88:
	ldr r0, _0806CDA0 @ =gSineTable
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0806CDA4
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0806CDA8
	.align 2, 0
_0806CDA0: .4byte gSineTable
_0806CDA4:
	movs r0, #0x80
	lsls r0, r0, #2
_0806CDA8:
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_800DB30
_0806CDB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CDB8
sub_0806CDB8: @ 0x0806CDB8
	push {r4, r5, lr}
	ldr r1, _0806CDF8 @ =gStageData
	adds r5, r1, #0
	adds r5, #0x88
	ldr r1, [r5]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0806CE04
	ldr r0, _0806CDFC @ =0x0300005F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3, #0x1d]
	adds r0, r3, #0
	bl sub_806CA28
	ldr r1, [r5]
	ldr r0, _0806CE00 @ =sub_806C1C8
	str r0, [r1, #8]
	b _0806CE22
	.align 2, 0
_0806CDF8: .4byte gStageData
_0806CDFC: .4byte 0x0300005F
_0806CE00: .4byte sub_806C1C8
_0806CE04:
	cmp r1, #1
	blt _0806CE22
	cmp r1, #4
	bgt _0806CE22
	cmp r1, #3
	blt _0806CE22
	ldrb r1, [r3, #0x1d]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806CE22
	ldr r0, _0806CE28 @ =0x03000025
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_0806CE22:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE28: .4byte 0x03000025

	thumb_func_start sub_806CE2C
sub_806CE2C: @ 0x0806CE2C
	push {r4, lr}
	ldr r4, _0806CE4C @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806CE50
	adds r0, r2, #0
	bl TaskDestroy
	b _0806CE6A
	.align 2, 0
_0806CE4C: .4byte gCurTask
_0806CE50:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CE64
	ldr r1, [r4]
	ldr r0, _0806CE60 @ =sub_806CE74
	b _0806CE68
	.align 2, 0
_0806CE60: .4byte sub_806CE74
_0806CE64:
	ldr r1, [r4]
	ldr r0, _0806CE70 @ =sub_806ABD4
_0806CE68:
	str r0, [r1, #8]
_0806CE6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE70: .4byte sub_806ABD4

	thumb_func_start sub_806CE74
sub_806CE74: @ 0x0806CE74
	push {r4, lr}
	ldr r4, _0806CE94 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806CE98
	adds r0, r2, #0
	bl TaskDestroy
	b _0806CEAC
	.align 2, 0
_0806CE94: .4byte gCurTask
_0806CE98:
	cmp r0, #2
	bne _0806CEAC
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CEAC
	ldr r1, [r4]
	ldr r0, _0806CEB4 @ =sub_806ABD4
	str r0, [r1, #8]
_0806CEAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEB4: .4byte sub_806ABD4

	thumb_func_start sub_806CEB8
sub_806CEB8: @ 0x0806CEB8
	push {r4, lr}
	ldr r0, _0806CEDC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0806CEE0 @ =0x03000094
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, [r4, #0x10]
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEDC: .4byte gCurTask
_0806CEE0: .4byte 0x03000094

	thumb_func_start sub_806CEE4
sub_806CEE4: @ 0x0806CEE4
	bx lr
	.align 2, 0

	thumb_func_start sub_806CEE8
sub_806CEE8: @ 0x0806CEE8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806CEFC
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _0806CF24
	b _0806CF12
_0806CEFC:
	cmp r0, #0
	bne _0806CF08
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _0806CF12
	b _0806CF24
_0806CF08:
	cmp r0, #2
	bne _0806CF1A
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	ble _0806CF24
_0806CF12:
	adds r0, r1, #0
	bl sub_806B5A8
	b _0806CF32
_0806CF1A:
	cmp r0, #3
	bne _0806CF32
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	ble _0806CF2C
_0806CF24:
	adds r0, r1, #0
	bl sub_806B484
	b _0806CF32
_0806CF2C:
	adds r0, r1, #0
	bl sub_806B5A8
_0806CF32:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806CF38
sub_806CF38: @ 0x0806CF38
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	bl sub_806B6C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x94
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x48]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x4c]
	str r0, [sp, #0x14]
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	str r0, [sp]
	mov r0, sp
	strb r2, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806CF70
sub_806CF70: @ 0x0806CF70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r1, [r4, #4]
	adds r3, r1, #0
	asrs r3, r3, #8
	asrs r1, r1, #8
	ldr r5, _0806CFC8 @ =gCamera
	ldr r0, [r5, #4]
	subs r1, r1, r0
	cmp r1, #0xa
	ble _0806CF94
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x30
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0806CF94:
	cmp r3, #0xa
	ble _0806CF9E
	adds r0, r4, #0
	bl sub_806C5D4
_0806CF9E:
	lsls r0, r6, #0x18
	cmp r0, #0
	blt _0806CFCC
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	ldr r2, [r4, #0x3c]
	adds r2, r2, r1
	str r2, [r4, #0x3c]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r4, #4]
	movs r0, #0
	b _0806CFCE
	.align 2, 0
_0806CFC8: .4byte gCamera
_0806CFCC:
	movs r0, #1
_0806CFCE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_806CFD4
sub_806CFD4: @ 0x0806CFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, _0806D000 @ =gCamera
	ldr r1, [r1, #4]
	subs r3, r0, r1
	lsls r3, r3, #8
	ldr r0, _0806D004 @ =0xFFFF8800
	cmp r3, r0
	ble _0806CFF2
	ldr r5, _0806D008 @ =0xFFFFFC00
	adds r3, r3, r5
	cmp r3, r0
	bge _0806D00C
_0806CFF2:
	adds r3, r0, #0
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #1
	b _0806D014
	.align 2, 0
_0806D000: .4byte gCamera
_0806D004: .4byte 0xFFFF8800
_0806D008: .4byte 0xFFFFFC00
_0806D00C:
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #0
_0806D014:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806D01C
sub_806D01C: @ 0x0806D01C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806D048 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0806D04C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806D050 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D058
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D054 @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D048: .4byte gUnknown_03006868
_0806D04C: .4byte 0x00196225
_0806D050: .4byte 0x3C6EF35F
_0806D054: .4byte 0xFFFFF900
_0806D058:
	adds r0, r3, #0
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D06C @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D06C: .4byte 0xFFFFF900
_0806D070:
	ldr r0, _0806D078 @ =0xFFFFFF00
_0806D072:
	str r0, [r3, #0x40]
	pop {r0}
	bx r0
	.align 2, 0
_0806D078: .4byte 0xFFFFFF00

	thumb_func_start sub_806D07C
sub_806D07C: @ 0x0806D07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D0E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D0E4 @ =gUnknown_03002C30
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sub_80BEBCC
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D0E0: .4byte gCamera
_0806D0E4: .4byte gUnknown_03002C30

	thumb_func_start sub_806D0E8
sub_806D0E8: @ 0x0806D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D14C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D150 @ =gUnknown_03002C30
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sub_80BEBCC
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D14C: .4byte gCamera
_0806D150: .4byte gUnknown_03002C30

	thumb_func_start sub_806D154
sub_806D154: @ 0x0806D154
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806D168
sub_806D168: @ 0x0806D168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806D17C
sub_806D17C: @ 0x0806D17C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _0806D18C @ =0xFFFFBA00
	cmp r1, r0
	bgt _0806D190
	movs r0, #1
	b _0806D198
	.align 2, 0
_0806D18C: .4byte 0xFFFFBA00
_0806D190:
	ldr r3, _0806D19C @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
	movs r0, #0
_0806D198:
	pop {r1}
	bx r1
	.align 2, 0
_0806D19C: .4byte 0xFFFFFF00

    @ Called on init of Boss 3
	thumb_func_start sub_806D1A0
sub_806D1A0: @ 0x0806D1A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806D1F8 @ =sub_806E910
	movs r1, #0xdc
	lsls r1, r1, #3
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806D1FC @ =sub_806EA14
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r1, _0806D200 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x88
	str r7, [r0]
	lsls r4, r4, #8
	str r4, [r6]
	ldr r0, _0806D204 @ =0xFFFF3800
	str r0, [r6, #4]
	ldr r0, _0806D208 @ =gPlayers
	str r0, [r6, #0x40]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r6, #0x44]
	movs r0, #0
	str r0, [r6, #8]
	str r0, [r6, #0xc]
	str r5, [r6, #0x2c]
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0806D210
	ldr r0, _0806D20C @ =0x03000030
	adds r1, r2, r0
	movs r0, #8
	b _0806D216
	.align 2, 0
_0806D1F8: .4byte sub_806E910
_0806D1FC: .4byte sub_806EA14
_0806D200: .4byte gStageData
_0806D204: .4byte 0xFFFF3800
_0806D208: .4byte gPlayers
_0806D20C: .4byte 0x03000030
_0806D210:
	ldr r3, _0806D264 @ =0x03000030
	adds r1, r2, r3
	movs r0, #6
_0806D216:
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #7
	str r0, [r6, #0x10]
	movs r2, #0
	movs r1, #0
	strh r1, [r6, #0x32]
	adds r3, r6, #0
	adds r3, #0x27
	movs r0, #1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x28
	strb r2, [r0]
	str r1, [r6, #0x18]
	str r1, [r6, #0x1c]
	strh r1, [r6, #0x20]
	subs r0, #4
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r0, #0x7c
	bl VramMalloc
	str r0, [r6, #0x38]
	movs r0, #0x74
	bl VramMalloc
	str r0, [r6, #0x3c]
	adds r0, r6, #0
	bl sub_806D404
	bl sub_807A4BC
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806D264: .4byte 0x03000030

	thumb_func_start sub_806D268
sub_806D268: @ 0x0806D268
	push {r4, r5, lr}
	ldr r0, _0806D288 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806D28C
	adds r0, r2, #0
	bl TaskDestroy
	b _0806D2E0
	.align 2, 0
_0806D288: .4byte gCurTask
_0806D28C:
	adds r0, r4, #0
	bl sub_806D6C4
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0806D2E0
	movs r1, #0
	ldr r5, _0806D2E8 @ =gPlayers
	ldr r3, _0806D2EC @ =0xFFFFFB1F
	movs r2, #0xb3
	lsls r2, r2, #1
_0806D2A4:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r0, r2
	bhi _0806D2E0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0806D2A4
	movs r0, #0x32
	bl sub_80299D4
	movs r0, #0
	strh r0, [r4, #0x34]
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r0, _0806D2F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D2F4 @ =sub_806E99C
	str r0, [r1, #8]
_0806D2E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D2E8: .4byte gPlayers
_0806D2EC: .4byte 0xFFFFFB1F
_0806D2F0: .4byte gCurTask
_0806D2F4: .4byte sub_806E99C

	thumb_func_start sub_806D2F8
sub_806D2F8: @ 0x0806D2F8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806D354 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_806E330
	adds r0, r5, #0
	bl sub_806DB78
	adds r0, r5, #0
	movs r1, #0
	bl sub_806D840
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_806D840
	adds r4, r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _0806D336
	adds r0, r5, #0
	bl sub_806DA20
_0806D336:
	ldr r1, _0806D358 @ =0x03000030
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806D378
	ldr r1, _0806D35C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806D36C
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0806D364
	ldr r1, [r7]
	ldr r0, _0806D360 @ =sub_806E9C0
	b _0806D376
	.align 2, 0
_0806D354: .4byte gCurTask
_0806D358: .4byte 0x03000030
_0806D35C: .4byte gStageData
_0806D360: .4byte sub_806E9C0
_0806D364:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_0806D36C:
	adds r0, r5, #0
	bl sub_806EAA0
	ldr r1, [r7]
	ldr r0, _0806D384 @ =sub_806E9F0
_0806D376:
	str r0, [r1, #8]
_0806D378:
	adds r0, r5, #0
	bl sub_806D6C4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D384: .4byte sub_806E9F0

	thumb_func_start sub_806D388
sub_806D388: @ 0x0806D388
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _0806D3A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x40]
	ldrh r4, [r5, #0x34]
	cmp r4, #0
	beq _0806D3AC
	cmp r4, #1
	beq _0806D3E8
	b _0806D3FC
	.align 2, 0
_0806D3A8: .4byte gCurTask
_0806D3AC:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0806D3B8
	bl VramFree
	str r4, [r5, #0x38]
_0806D3B8:
	ldr r0, [r5]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, _0806D3E0 @ =gCamera
	ldr r1, [r0, #0x14]
	adds r0, r1, #0
	subs r0, #0x32
	str r0, [sp, #4]
	ldr r0, [r5]
	asrs r0, r0, #8
	str r0, [sp, #8]
	subs r1, #0x25
	str r1, [sp, #0xc]
	ldr r1, _0806D3E4 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _0806D3FA
	.align 2, 0
_0806D3E0: .4byte gCamera
_0806D3E4: .4byte sub_807A37C
_0806D3E8:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _0806D3FC
	ldr r0, [r5, #0x2c]
	strb r1, [r0]
	movs r0, #0x64
_0806D3FA:
	strh r0, [r5, #0x34]
_0806D3FC:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_806D404
sub_806D404: @ 0x0806D404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x38]
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sb, r1
	movs r3, #0x80
	lsls r3, r3, #5
	mov sl, r3
_0806D422:
	lsls r4, r7, #3
	subs r2, r4, r7
	lsls r2, r2, #3
	adds r3, r2, #0
	adds r3, #0x48
	adds r3, r6, r3
	adds r5, r3, #0
	adds r5, #8
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldr r1, [r6]
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldr r1, [r6, #4]
	str r1, [r0]
	mov r0, r8
	str r0, [r3, #8]
	ldr r0, _0806D55C @ =gUnknown_080D57CC
	adds r4, r4, r0
	ldrb r0, [r4, #3]
	adds r0, #2
	lsls r0, r0, #6
	strh r0, [r5, #0x14]
	ldrh r0, [r4]
	strh r0, [r5, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r5, #0x1a]
	mov r1, sb
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r3, #0
	strb r3, [r5, #0x1f]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	mov r0, sl
	str r0, [r5, #8]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806D486
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #8]
_0806D486:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0806D496
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
_0806D496:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r4, #6]
	lsls r0, r0, #5
	add r8, r0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bls _0806D422
	ldr r3, [r6, #0x3c]
	mov r8, r3
	movs r7, #0
	movs r4, #0
	movs r0, #0x8f
	lsls r0, r0, #3
	mov sb, r0
	adds r1, r6, #0
	add r1, sb
	mov sl, r1
_0806D4C0:
	lsls r2, r7, #3
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r0, r6, r3
	adds r0, r0, r2
	str r4, [r0]
	adds r1, r6, r2
	adds r3, #4
	adds r0, r1, r3
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	movs r3, #1
	strb r3, [r0]
	movs r3, #0x84
	lsls r3, r3, #3
	adds r0, r6, r3
	adds r0, r0, r2
	str r4, [r0]
	adds r3, #4
	adds r0, r1, r3
	strb r4, [r0]
	ldr r0, _0806D560 @ =0x00000425
	adds r1, r1, r0
	movs r3, #1
	strb r3, [r1]
	subs r2, r2, r7
	lsls r2, r2, #3
	mov r0, sb
	adds r1, r2, r0
	adds r1, r6, r1
	adds r5, r1, #0
	adds r5, #8
	mov r3, sl
	adds r0, r3, r2
	str r4, [r0]
	ldr r3, _0806D564 @ =0x0000047C
	adds r0, r6, r3
	adds r0, r0, r2
	str r4, [r0]
	mov r0, r8
	str r0, [r1, #8]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	subs r0, #0x7b
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa0
	add r8, r1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _0806D4C0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D55C: .4byte gUnknown_080D57CC
_0806D560: .4byte 0x00000425
_0806D564: .4byte 0x0000047C

	thumb_func_start sub_806D568
sub_806D568: @ 0x0806D568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r1, [r0]
	str r1, [r0, #0x48]
	ldr r0, [r0, #4]
	mov r2, ip
	str r0, [r2, #0x4c]
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r3, [r0]
	movs r7, #0xb8
	add r7, ip
	mov sb, r7
	ldr r2, _0806D6B8 @ =0xFFFFDB00
	adds r0, r1, r2
	str r0, [r7]
	movs r7, #0xbc
	add r7, ip
	mov sl, r7
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r3, r2
	str r0, [r7]
	movs r7, #0xf0
	add r7, ip
	mov r8, r7
	movs r2, #0x94
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r7]
	mov r6, ip
	adds r6, #0xf4
	str r0, [r6]
	movs r4, #0x94
	lsls r4, r4, #1
	add r4, ip
	mov r7, sb
	ldr r0, [r7]
	str r0, [r4]
	movs r5, #0x96
	lsls r5, r5, #1
	add r5, ip
	mov r1, sl
	ldr r0, [r1]
	mov r2, ip
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	movs r2, #0xb0
	lsls r2, r2, #1
	add r2, ip
	mov r7, r8
	ldr r0, [r7]
	str r0, [r2]
	movs r3, #0xb2
	lsls r3, r3, #1
	add r3, ip
	ldr r0, [r6]
	mov r7, ip
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r4]
	str r0, [r1]
	movs r1, #0xce
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r5]
	str r0, [r1]
	movs r1, #0xe8
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r2]
	str r0, [r1]
	movs r1, #0xea
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r3]
	str r0, [r1]
	ldr r1, [r7, #0x10]
	ldr r2, _0806D6BC @ =0xFFFFE400
	adds r0, r1, r2
	cmp r0, #0
	bge _0806D62A
	ldr r7, _0806D6C0 @ =0xFFFFE403
	adds r0, r1, r7
_0806D62A:
	asrs r0, r0, #2
	adds r5, r0, #1
	mov r1, sl
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r3, r0, r2
	movs r4, #0
	mov r7, r8
	str r7, [sp]
	str r6, [sp, #4]
	movs r0, #0x48
	add r0, ip
	mov r8, r0
	movs r1, #0x4c
	add r1, ip
	mov sl, r1
	mov ip, r8
	mov r7, sb
	mov r6, sl
_0806D652:
	adds r1, r4, #0
	adds r1, #8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, ip
	adds r2, r1, r0
	ldr r1, [r7]
	str r1, [r2]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r3, r5
	cmp r4, #3
	bls _0806D652
	ldr r2, [sp, #4]
	ldr r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #4
	adds r3, r0, r7
	movs r4, #0
	mov ip, r8
	ldr r7, [sp]
	mov r6, sl
_0806D686:
	adds r1, r4, #0
	adds r1, #0xc
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, ip
	adds r2, r1, r0
	ldr r1, [r7]
	str r1, [r2]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r3, r5
	cmp r4, #3
	bls _0806D686
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D6B8: .4byte 0xFFFFDB00
_0806D6BC: .4byte 0xFFFFE400
_0806D6C0: .4byte 0xFFFFE403

	thumb_func_start sub_806D6C4
sub_806D6C4: @ 0x0806D6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D736
	movs r4, #0
	movs r0, #0x48
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	ldr r6, _0806D804 @ =gCamera
_0806D6EA:
	lsls r2, r4, #3
	subs r2, r2, r4
	lsls r2, r2, #3
	adds r0, r2, r7
	adds r5, r0, #0
	adds r5, #0x50
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	cmp r4, #1
	beq _0806D720
	cmp r4, #1
	blt _0806D726
	cmp r4, #7
	bgt _0806D726
	cmp r4, #6
	blt _0806D726
_0806D720:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0806D726:
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0806D6EA
_0806D736:
	movs r4, #0
_0806D738:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r1, r0, #3
	movs r2, #0x8f
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r6, r0, r1
	ldr r0, [r6]
	cmp r0, #0
	beq _0806D760
	adds r0, r1, r7
	movs r1, #0x90
	lsls r1, r1, #3
	adds r5, r0, r1
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0806D760
	str r0, [r6]
_0806D760:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xa
	bls _0806D738
	movs r4, #0
	movs r2, #0x8f
	lsls r2, r2, #3
	adds r2, r2, r7
	mov sl, r2
_0806D774:
	movs r3, #0
	lsls r0, r4, #3
	mov r8, r0
	adds r4, #1
	mov sb, r4
_0806D77E:
	movs r0, #0x58
	muls r0, r3, r0
	mov r2, r8
	adds r1, r2, r0
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r6, r0, r1
	ldr r2, [r6]
	cmp r2, #0
	beq _0806D7DE
	adds r4, r7, r1
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r7, r0
	adds r5, r0, #0
	adds r5, #8
	asrs r0, r2, #8
	ldr r2, _0806D804 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	movs r0, #0xc0
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	str r3, [sp]
	bl DisplaySprite
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	ldr r3, [sp]
	cmp r0, #0
	bne _0806D7DE
	str r0, [r6]
_0806D7DE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0806D77E
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xa
	bls _0806D774
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D804: .4byte gCamera

	thumb_func_start sub_806D808
sub_806D808: @ 0x0806D808
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r0, #0
	adds r2, #0x88
	cmp r1, #1
	beq _0806D82C
	cmp r1, #1
	bgt _0806D820
	cmp r1, #0
	beq _0806D82A
	b _0806D832
_0806D820:
	cmp r1, #2
	beq _0806D82C
	cmp r1, #3
	beq _0806D82C
	b _0806D832
_0806D82A:
	movs r1, #0
_0806D82C:
	ldr r0, _0806D83C @ =0x000004C6
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_0806D832:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r0}
	bx r0
	.align 2, 0
_0806D83C: .4byte 0x000004C6

	thumb_func_start sub_806D840
sub_806D840: @ 0x0806D840
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0
	mov sl, r0
	lsrs r1, r1, #0x16
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0x50
	ldr r4, [r6, #0x48]
	ldr r5, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D87C
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	beq _0806D880
_0806D87C:
	movs r0, #0
	b _0806DA0E
_0806D880:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806D95C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8004D68
	mov r0, r8
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	beq _0806D8CC
	ldr r3, _0806D954 @ =gStageData
	ldrb r0, [r3, #3]
	cmp r0, #5
	bne _0806D8DA
	ldr r0, [r6, #0x40]
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	beq _0806D8C6
	ldr r0, [r6, #0x44]
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	bne _0806D8DA
_0806D8C6:
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _0806D8DA
_0806D8CC:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _0806D8DA
	movs r1, #1
	mov sl, r1
_0806D8DA:
	asrs r4, r4, #8
	asrs r5, r5, #8
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _0806D96C
	movs r0, #1
	mov sl, r0
	mov r1, r8
	str r1, [sp]
	str r0, [sp, #4]
	movs r2, #0
	mov sb, r2
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020874
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0806D942
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r1, _0806D958 @ =0x0000B0FF
	cmp r0, r1
	ble _0806D93C
	movs r0, #0xb1
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #0x14]
_0806D93C:
	mov r1, sb
	mov r0, r8
	strh r1, [r0, #0x1a]
_0806D942:
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _0806D96C
	mov r0, r8
	bl sub_80044CC
	b _0806D96C
	.align 2, 0
_0806D954: .4byte gStageData
_0806D958: .4byte 0x0000B0FF
_0806D95C:
	asrs r1, r4, #8
	asrs r2, r5, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_0806D96C:
	movs r5, #0
_0806D96E:
	movs r4, #0
_0806D970:
	lsls r1, r5, #3
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r1, r0
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0806D9B6
	adds r0, r6, r1
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #0x90
	lsls r1, r1, #3
	adds r7, r0, r1
	asrs r1, r2, #8
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	movs r2, #0xc0
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _0806D9B6
	movs r5, #0xb
	movs r4, #2
_0806D9B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0806D970
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xa
	bls _0806D96E
	movs r5, #0
_0806D9CC:
	cmp r5, #1
	beq _0806DA02
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #3
	adds r0, r2, r6
	adds r7, r0, #0
	adds r7, #0x50
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _0806DA02
	movs r5, #0x10
_0806DA02:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _0806D9CC
	mov r0, sl
_0806DA0E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806DA20
sub_806DA20: @ 0x0806DA20
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r1, [r2]
	cmp r1, #0
	beq _0806DACC
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0806DACC
	subs r1, #1
	strb r1, [r2]
	ldr r0, _0806DA54 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806DA58
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0806DA66
	movs r0, #0x33
	bl sub_80299D4
	b _0806DA66
	.align 2, 0
_0806DA54: .4byte gStageData
_0806DA58:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0806DA66
	movs r0, #0x33
	bl sub_80299D4
_0806DA66:
	movs r0, #0xeb
	bl sub_80BA57C
	bl sub_807A468
	adds r0, r4, #0
	movs r1, #2
	bl sub_806D808
	ldr r0, _0806DAB8 @ =0x000004C7
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x99
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x7a
	strh r0, [r4, #0x32]
	ldr r1, _0806DABC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806DACC
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0806DAC0
	adds r1, r4, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806DACC
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _0806DACC
	.align 2, 0
_0806DAB8: .4byte 0x000004C7
_0806DABC: .4byte gStageData
_0806DAC0:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #4
	bl sub_8027674
_0806DACC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DAD4
sub_0806DAD4: @ 0x0806DAD4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0806DB1C @ =gStageData
	adds r1, r2, #0
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r5, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldrb r1, [r0, #2]
	movs r3, #0x7f
	ands r3, r1
	ldrb r4, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r4, r0
	mov ip, r2
	cmp r3, #1
	beq _0806DB24
	cmp r3, #1
	blt _0806DB64
	cmp r3, #4
	bgt _0806DB64
	cmp r3, #3
	blt _0806DB64
	ldr r1, _0806DB20 @ =0x03000030
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806DB64
	adds r0, r6, #0
	bl sub_806DA20
	b _0806DB64
	.align 2, 0
_0806DB1C: .4byte gStageData
_0806DB20: .4byte 0x03000030
_0806DB24:
	ldr r0, _0806DB6C @ =0x03000030
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r6, #0x34]
	strh r3, [r6, #0x36]
	strh r0, [r6, #0x20]
	movs r3, #0
	ldr r7, _0806DB70 @ =sub_806E9F0
	ldr r1, _0806DB74 @ =0x03000040
	adds r5, r5, r1
	movs r6, #0x80
	lsls r6, r6, #0x14
	movs r4, #0
_0806DB40:
	lsls r2, r3, #2
	adds r2, r5, r2
	ldr r1, [r2]
	ldr r0, [r1, #4]
	orrs r0, r6
	str r0, [r1, #4]
	strh r4, [r1, #0x1c]
	ldr r0, [r2]
	strh r4, [r0, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0806DB40
	mov r0, ip
	adds r0, #0x88
	ldr r0, [r0]
	str r7, [r0, #8]
_0806DB64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB6C: .4byte 0x03000030
_0806DB70: .4byte sub_806E9F0
_0806DB74: .4byte 0x03000040

	thumb_func_start sub_806DB78
sub_806DB78: @ 0x0806DB78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r1, [r4, #0x20]
	cmp r1, #0xa
	beq _0806DBC0
	cmp r1, #0xa
	bgt _0806DB90
	cmp r1, #0
	beq _0806DBA0
	b _0806DD28
_0806DB90:
	cmp r1, #0x64
	beq _0806DC30
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DB9E
	b _0806DD24
_0806DB9E:
	b _0806DD28
_0806DBA0:
	movs r2, #0
	movs r0, #0x8f
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r3, #0x64
_0806DBAA:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _0806DBAA
	b _0806DD28
_0806DBC0:
	movs r2, #0
	movs r3, #4
	movs r1, #0x24
	adds r1, r1, r4
	mov ip, r1
	movs r5, #0x25
	adds r5, r5, r4
	mov r8, r5
	movs r5, #0x8f
	lsls r5, r5, #3
	adds r6, r4, r5
	movs r7, #0xff
_0806DBD8:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r6, r0
	str r3, [r1]
	adds r0, r0, r5
	adds r0, r4, r0
	adds r1, r0, #0
	adds r1, #8
	ldrb r0, [r1, #0x1b]
	orrs r0, r7
	strb r0, [r1, #0x1b]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r3, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r2, #0xa
	bls _0806DBD8
	ldr r0, [r4]
	ldr r7, _0806DC2C @ =0xFFFFDB00
	adds r1, r0, r7
	str r1, [r4, #0x18]
	movs r1, #0x94
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	movs r0, #0
	mov r2, ip
	strb r0, [r2]
	mov r5, r8
	strb r0, [r5]
	movs r0, #4
	strh r0, [r4, #0x22]
	movs r0, #0x8a
	lsls r0, r0, #2
	bl sub_80BA57C
	movs r0, #0x64
	b _0806DD26
	.align 2, 0
_0806DC2C: .4byte 0xFFFFDB00
_0806DC30:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0806DC4A
	ldr r7, _0806DD10 @ =0xFFFFFD00
	adds r0, r0, r7
	str r0, [r4, #0x18]
	asrs r0, r0, #8
	ldr r1, _0806DD14 @ =gCamera
	ldr r1, [r1, #0x18]
	cmp r0, r1
	bgt _0806DC4A
	movs r0, #0
	str r0, [r4, #0x18]
_0806DC4A:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0806DC66
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	asrs r0, r0, #8
	ldr r1, _0806DD14 @ =gCamera
	ldr r1, [r1, #0x1c]
	cmp r0, r1
	blt _0806DC66
	movs r0, #0
	str r0, [r4, #0x1c]
_0806DC66:
	ldrh r0, [r4, #0x22]
	subs r0, #1
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DCF6
	adds r6, r4, #0
	adds r6, #0x24
	ldrb r2, [r6]
	lsls r5, r2, #3
	subs r0, r5, r2
	lsls r0, r0, #3
	movs r3, #0x8f
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1]
	adds r0, r0, r3
	adds r0, r4, r0
	adds r1, r0, #0
	adds r1, #8
	subs r2, #2
	adds r3, r2, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0806DCBC
	movs r7, #0xf2
	lsls r7, r7, #2
	adds r0, r4, r7
	adds r0, r0, r5
	str r1, [r0]
	adds r1, r4, r5
	ldrb r2, [r6]
	adds r7, #4
	adds r0, r1, r7
	strb r2, [r0]
	ldr r0, _0806DD18 @ =0x000003CD
	adds r1, r1, r0
	movs r0, #0x14
	strb r0, [r1]
_0806DCBC:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0806DCDE
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r4, r2
	adds r0, r0, r5
	str r1, [r0]
	adds r1, r4, r5
	ldrb r2, [r6]
	ldr r5, _0806DD1C @ =0x00000424
	adds r0, r1, r5
	strb r2, [r0]
	ldr r7, _0806DD20 @ =0x00000425
	adds r1, r1, r7
	movs r0, #0x14
	strb r0, [r1]
_0806DCDE:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bls _0806DCF2
	movs r0, #0
	strb r0, [r6]
_0806DCF2:
	movs r0, #4
	strh r0, [r4, #0x22]
_0806DCF6:
	movs r0, #0x8a
	lsls r0, r0, #2
	bl sub_80BA5F4
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0806DD28
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0806DD28
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0806DD26
	.align 2, 0
_0806DD10: .4byte 0xFFFFFD00
_0806DD14: .4byte gCamera
_0806DD18: .4byte 0x000003CD
_0806DD1C: .4byte 0x00000424
_0806DD20: .4byte 0x00000425
_0806DD24:
	movs r0, #0
_0806DD26:
	strh r0, [r4, #0x20]
_0806DD28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806DD34
sub_806DD34: @ 0x0806DD34
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r1, [r4, #0x34]
	cmp r1, #0x6e
	beq _0806DE34
	cmp r1, #0x6e
	bgt _0806DD58
	cmp r1, #0xa
	beq _0806DD8A
	cmp r1, #0xa
	bgt _0806DD52
	cmp r1, #0
	beq _0806DD76
	b _0806DEC2
_0806DD52:
	cmp r1, #0x64
	beq _0806DE18
	b _0806DEC2
_0806DD58:
	cmp r1, #0xd2
	bne _0806DD5E
	b _0806DE82
_0806DD5E:
	cmp r1, #0xd2
	bgt _0806DD6A
	cmp r1, #0xc8
	bne _0806DD68
	b _0806DE64
_0806DD68:
	b _0806DEC2
_0806DD6A:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DD74
	b _0806DEA2
_0806DD74:
	b _0806DEC2
_0806DD76:
	movs r0, #1
	strh r0, [r4, #0x36]
	movs r0, #0xa
	strh r0, [r4, #0x34]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	b _0806DEC2
_0806DD8A:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806DE04 @ =0x000003FF
	cmp r0, r1
	ble _0806DD9C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806DD9C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806DE08 @ =0x00007FFF
	cmp r0, r1
	ble _0806DDB8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806DDB8:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806DE0C @ =0x0000B4FF
	cmp r1, r0
	ble _0806DDD6
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806DDD6:
	cmp r3, #1
	bne _0806DEC2
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _0806DE10 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0x64
	strh r0, [r4, #0x34]
	ldr r0, _0806DE14 @ =0x00000227
	bl sub_80BA57C
	b _0806DEC2
	.align 2, 0
_0806DE04: .4byte 0x000003FF
_0806DE08: .4byte 0x00007FFF
_0806DE0C: .4byte 0x0000B4FF
_0806DE10: .4byte 0xFFFFFE00
_0806DE14: .4byte 0x00000227
_0806DE18:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806DE52
	ldr r0, _0806DE30 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x6e
	b _0806DE50
	.align 2, 0
_0806DE30: .4byte 0xFFFFFE40
_0806DE34:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806DE60 @ =0x000047FF
	cmp r1, r0
	ble _0806DE52
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xc8
_0806DE50:
	strh r0, [r4, #0x34]
_0806DE52:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4, #4]
	b _0806DEC2
	.align 2, 0
_0806DE60: .4byte 0x000047FF
_0806DE64:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DEC2
	adds r0, r4, #0
	movs r1, #1
	bl sub_806D808
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xd2
	strh r0, [r4, #0x34]
	b _0806DEC2
_0806DE82:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DEC2
	adds r0, r4, #0
	movs r1, #0
	bl sub_806D808
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806DEC2
_0806DEA2:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0806DEC2
	movs r0, #1
	strh r0, [r4, #0x36]
	strh r1, [r4, #0x34]
	bl sub_807A4A8
	ldr r0, _0806DED0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806DED4 @ =sub_806D2F8
	str r0, [r1, #8]
_0806DEC2:
	adds r0, r4, #0
	bl sub_806D568
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806DED0: .4byte gCurTask
_0806DED4: .4byte sub_806D2F8

	thumb_func_start sub_806DED8
sub_806DED8: @ 0x0806DED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r0, #0
	add r0, sp, #0x10
	ldr r1, _0806DF14 @ =gUnknown_080D5870
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
	ldrh r1, [r4, #0x34]
	cmp r1, #0x6e
	bne _0806DEFA
	b _0806E138
_0806DEFA:
	cmp r1, #0x6e
	bgt _0806DF24
	cmp r1, #0xa
	beq _0806DF7C
	cmp r1, #0xa
	bgt _0806DF18
	cmp r1, #0
	beq _0806DF48
	movs r0, #0x80
	adds r0, r0, r4
	mov r8, r0
	b _0806DFAC
	.align 2, 0
_0806DF14: .4byte gUnknown_080D5870
_0806DF18:
	cmp r1, #0x64
	beq _0806DFBC
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	b _0806DFAC
_0806DF24:
	cmp r1, #0xd2
	bne _0806DF2A
	b _0806E274
_0806DF2A:
	cmp r1, #0xd2
	bgt _0806DF3C
	cmp r1, #0xc8
	bne _0806DF34
	b _0806E1FC
_0806DF34:
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	b _0806DFAC
_0806DF3C:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DF46
	b _0806E2D0
_0806DF46:
	b _0806DFA6
_0806DF48:
	ldrh r1, [r4, #0x32]
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	cmp r0, #0
	beq _0806DF68
	subs r0, r1, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	beq _0806DF68
	b _0806E2F2
_0806DF68:
	movs r0, #0xa
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	movs r1, #3
	bl sub_806D808
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	b _0806DFAC
_0806DF7C:
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x26
	strb r1, [r2]
	str r0, [r4, #8]
	ldrb r0, [r2]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0xc]
	ldr r0, _0806DFB4 @ =0xFFFFFC00
	str r0, [r4, #0x14]
	ldr r0, _0806DFB8 @ =0x00000221
	bl sub_80BA57C
	movs r0, #0x64
	strh r0, [r4, #0x34]
_0806DFA6:
	movs r3, #0x80
	adds r3, r3, r4
	mov r8, r3
_0806DFAC:
	adds r7, r4, #0
	adds r7, #0x84
	b _0806E2F2
	.align 2, 0
_0806DFB4: .4byte 0xFFFFFC00
_0806DFB8: .4byte 0x00000221
_0806DFBC:
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806E014 @ =0x000007FF
	cmp r0, r1
	ble _0806DFD4
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0xc]
_0806DFD4:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	adds r0, #0x20
	str r0, [r4, #0x14]
	movs r3, #2
	movs r5, #0x80
	movs r0, #0x4c
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x84
	adds r6, r4, #0
	adds r6, #0x48
_0806DFFA:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0806E018
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #3
	adds r1, r6, r1
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1]
	adds r5, #0x80
	b _0806E026
	.align 2, 0
_0806E014: .4byte 0x000007FF
_0806E018:
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #3
	adds r1, r6, r1
	ldr r0, [r1]
	subs r0, r0, r5
	str r0, [r1]
_0806E026:
	subs r2, r2, r3
	lsls r2, r2, #3
	add r2, ip
	ldr r0, [r2]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0806DFFA
	ldrh r1, [r4, #0x36]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806E0AE
	ldr r3, _0806E100 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0806E104 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806E108 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r5, _0806E10C @ =0x000003FF
	ands r5, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806E110 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r0, r0, #6
	ldr r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r5, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0806E0AE:
	ldrh r1, [r4, #0x36]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806E0BE
	ldr r0, _0806E114 @ =0x00000221
	bl sub_80BA57C
_0806E0BE:
	ldr r0, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	ldr r1, _0806E118 @ =0x0000B4FF
	cmp r0, r1
	bgt _0806E0CE
	b _0806E2F2
_0806E0CE:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0806E11C
	movs r0, #0xb4
	strh r0, [r4, #0x36]
	movs r0, #0x6e
	strh r0, [r4, #0x34]
	b _0806E12A
	.align 2, 0
_0806E100: .4byte gUnknown_03006868
_0806E104: .4byte 0x00196225
_0806E108: .4byte 0x3C6EF35F
_0806E10C: .4byte 0x000003FF
_0806E110: .4byte gSineTable
_0806E114: .4byte 0x00000221
_0806E118: .4byte 0x0000B4FF
_0806E11C:
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0xc]
_0806E12A:
	ldr r0, _0806E134 @ =0x00000227
	bl sub_80BA57C
	b _0806E2F2
	.align 2, 0
_0806E134: .4byte 0x00000227
_0806E138:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E14C
	movs r0, #0x19
	strh r0, [r4, #0x36]
	movs r0, #0xc8
	strh r0, [r4, #0x34]
_0806E14C:
	ldrh r1, [r4, #0x36]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806E1C0
	ldr r3, _0806E1E0 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0806E1E4 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806E1E8 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r5, _0806E1EC @ =0x000003FF
	ands r5, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x50
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806E1F0 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r3, r0, r3
	ldr r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r0, _0806E1F4 @ =gCamera
	ldr r2, [r0, #4]
	lsrs r3, r3, #0xe
	adds r3, #0x50
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0806E1C0:
	ldrh r1, [r4, #0x36]
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	beq _0806E1D6
	b _0806E2F2
_0806E1D6:
	ldr r0, _0806E1F8 @ =0x00000221
	bl sub_80BA57C
	b _0806E2F2
	.align 2, 0
_0806E1E0: .4byte gUnknown_03006868
_0806E1E4: .4byte 0x00196225
_0806E1E8: .4byte 0x3C6EF35F
_0806E1EC: .4byte 0x000003FF
_0806E1F0: .4byte gSineTable
_0806E1F4: .4byte gCamera
_0806E1F8: .4byte 0x00000221
_0806E1FC:
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	mov sl, r2
	movs r3, #0x80
	adds r3, r3, r4
	mov r8, r3
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	bne _0806E2F2
	movs r5, #0
	ldr r0, _0806E26C @ =0x000003FF
	mov sb, r0
_0806E226:
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r6, #0
	str r6, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r5, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	bls _0806E226
	ldr r0, _0806E270 @ =0x00000221
	bl sub_80BA57C
	mov r1, sl
	strb r6, [r1]
	movs r0, #0xa
	strh r0, [r4, #0x36]
	movs r0, #0xd2
	strh r0, [r4, #0x34]
	b _0806E2F2
	.align 2, 0
_0806E26C: .4byte 0x000003FF
_0806E270: .4byte 0x00000221
_0806E274:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	bne _0806E2F2
	movs r5, #0
	ldr r6, _0806E2CC @ =0x000003FF
_0806E28E:
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r5, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	bls _0806E28E
	movs r0, #0xa
	strh r0, [r4, #0x36]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806E2F2
	.align 2, 0
_0806E2CC: .4byte 0x000003FF
_0806E2D0:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	adds r3, r3, r4
	mov r8, r3
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	bne _0806E2F2
	strh r0, [r4, #0x34]
	ldr r0, _0806E328 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E32C @ =sub_806D388
	str r0, [r1, #8]
_0806E2F2:
	ldr r1, [r4]
	str r1, [r4, #0x48]
	ldr r0, [r4, #4]
	str r0, [r4, #0x4c]
	mov r5, r8
	str r1, [r5]
	ldr r0, [r4, #0x4c]
	str r0, [r7]
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x44]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E328: .4byte gCurTask
_0806E32C: .4byte sub_806D388

	thumb_func_start sub_806E330
sub_806E330: @ 0x0806E330
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	ldr r0, _0806E360 @ =0x00000203
	cmp r2, r0
	bne _0806E340
	b _0806E700
_0806E340:
	cmp r2, r0
	bgt _0806E3A6
	subs r0, #0xd7
	cmp r2, r0
	bne _0806E34C
	b _0806E4DC
_0806E34C:
	cmp r2, r0
	bgt _0806E370
	cmp r2, #0x64
	beq _0806E436
	cmp r2, #0x64
	bgt _0806E364
	cmp r2, #0
	beq _0806E420
	b _0806E8DC
	.align 2, 0
_0806E360: .4byte 0x00000203
_0806E364:
	cmp r2, #0x6e
	beq _0806E444
	cmp r2, #0xc8
	bne _0806E36E
	b _0806E47C
_0806E36E:
	b _0806E8DC
_0806E370:
	movs r1, #0xcd
	lsls r1, r1, #1
	cmp r2, r1
	bne _0806E37A
	b _0806E5EA
_0806E37A:
	cmp r2, r1
	bgt _0806E392
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r2, r0
	bne _0806E388
	b _0806E592
_0806E388:
	adds r0, #0x5a
	cmp r2, r0
	bne _0806E390
	b _0806E5D8
_0806E390:
	b _0806E8DC
_0806E392:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r2, r0
	bne _0806E39C
	b _0806E668
_0806E39C:
	adds r0, #0xa
	cmp r2, r0
	bne _0806E3A4
	b _0806E67A
_0806E3A4:
	b _0806E8DC
_0806E3A6:
	movs r1, #0x9b
	lsls r1, r1, #2
	cmp r2, r1
	bne _0806E3B0
	b _0806E7AE
_0806E3B0:
	cmp r2, r1
	bgt _0806E3E4
	ldr r3, _0806E3CC @ =0x00000212
	cmp r2, r3
	bne _0806E3BC
	b _0806E750
_0806E3BC:
	cmp r2, r3
	bgt _0806E3D0
	movs r0, #0x82
	lsls r0, r0, #2
	cmp r2, r0
	bne _0806E3CA
	b _0806E728
_0806E3CA:
	b _0806E8DC
	.align 2, 0
_0806E3CC: .4byte 0x00000212
_0806E3D0:
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r2, r0
	bne _0806E3DA
	b _0806E764
_0806E3DA:
	adds r0, #0xa
	cmp r2, r0
	bne _0806E3E2
	b _0806E790
_0806E3E2:
	b _0806E8DC
_0806E3E4:
	movs r3, #0xa0
	lsls r3, r3, #2
	cmp r2, r3
	bne _0806E3EE
	b _0806E884
_0806E3EE:
	cmp r2, r3
	bgt _0806E408
	ldr r0, _0806E404 @ =0x00000271
	cmp r2, r0
	bne _0806E3FA
	b _0806E840
_0806E3FA:
	adds r0, #5
	cmp r2, r0
	bne _0806E402
	b _0806E860
_0806E402:
	b _0806E8DC
	.align 2, 0
_0806E404: .4byte 0x00000271
_0806E408:
	ldr r0, _0806E41C @ =0x0000028A
	cmp r2, r0
	bne _0806E410
	b _0806E89C
_0806E410:
	adds r0, #0xa
	cmp r2, r0
	bne _0806E418
	b _0806E8AC
_0806E418:
	b _0806E8DC
	.align 2, 0
_0806E41C: .4byte 0x0000028A
_0806E420:
	movs r0, #0
	movs r1, #1
	strh r1, [r4, #0x36]
	movs r1, #0x64
	strh r1, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x31
	strb r0, [r1]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	b _0806E8DC
_0806E436:
	ldr r0, _0806E440 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x6e
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E440: .4byte 0xFFFFFE40
_0806E444:
	ldr r0, [r4, #0x14]
	adds r2, r0, #0
	adds r2, #0x10
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, _0806E474 @ =0x00007FFF
	cmp r0, r1
	ble _0806E46A
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	rsbs r0, r2, #0
	str r0, [r4, #0xc]
	ldr r0, _0806E478 @ =0xFFFFFE80
	str r0, [r4, #0x14]
	movs r0, #0xc8
	strh r0, [r4, #0x34]
_0806E46A:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	b _0806E8D8
	.align 2, 0
_0806E474: .4byte 0x00007FFF
_0806E478: .4byte 0xFFFFFE80
_0806E47C:
	ldr r1, [r4, #0xc]
	subs r1, #0x20
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0806E490
	movs r0, #0
	str r0, [r4, #4]
_0806E490:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806E4A2
	str r1, [r4, #0x10]
_0806E4A2:
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806E4AA
	b _0806E8DC
_0806E4AA:
	ldr r0, [r4, #0x10]
	cmp r0, r1
	ble _0806E4B2
	b _0806E8DC
_0806E4B2:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r3, r4, r0
	movs r2, #0
	ldr r1, _0806E4D8 @ =0x000004C4
	strh r1, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r3, r4, r5
	strh r1, [r3, #0xc]
	strb r0, [r3, #0x1a]
	str r2, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	adds r0, #0xf0
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E4D8: .4byte 0x000004C4
_0806E4DC:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806E4EA
	b _0806E8DC
_0806E4EA:
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0806E510
	ldr r1, _0806E50C @ =gUnknown_080D584C
	subs r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0806E520
	.align 2, 0
_0806E50C: .4byte gUnknown_080D584C
_0806E510:
	ldr r1, _0806E544 @ =gUnknown_080D584C
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
_0806E520:
	str r0, [r4, #8]
	ldr r2, _0806E548 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0806E54C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806E550 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r0, #0
	ldr r1, _0806E554 @ =0x00002710
	bl __umodsi3
	adds r2, r0, #0
	ldr r0, _0806E558 @ =0x000003E7
	cmp r2, r0
	bhi _0806E55C
	movs r0, #0x3c
	b _0806E580
	.align 2, 0
_0806E544: .4byte gUnknown_080D584C
_0806E548: .4byte gUnknown_03006868
_0806E54C: .4byte 0x00196225
_0806E550: .4byte 0x3C6EF35F
_0806E554: .4byte 0x00002710
_0806E558: .4byte 0x000003E7
_0806E55C:
	ldr r0, _0806E568 @ =0x00000F9F
	cmp r2, r0
	bhi _0806E56C
	movs r0, #0xb4
	b _0806E580
	.align 2, 0
_0806E568: .4byte 0x00000F9F
_0806E56C:
	ldr r0, _0806E578 @ =0x00001F3F
	cmp r2, r0
	bhi _0806E57C
	movs r0, #0xf0
	b _0806E580
	.align 2, 0
_0806E578: .4byte 0x00001F3F
_0806E57C:
	movs r0, #0x96
	lsls r0, r0, #1
_0806E580:
	strh r0, [r4, #0x36]
	ldrb r0, [r5]
	movs r1, #1
	eors r0, r1
	strb r0, [r5]
	movs r0, #0x9b
	lsls r0, r0, #1
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E592:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	adds r1, r0, r2
	str r1, [r4]
	cmp r2, #0
	bge _0806E5A8
	movs r0, #0xa4
	lsls r0, r0, #0xb
	cmp r1, r0
	bgt _0806E5B6
	b _0806E5B0
_0806E5A8:
	ldr r0, _0806E5D4 @ =0x000607FF
	cmp r1, r0
	ble _0806E5B6
	adds r0, #1
_0806E5B0:
	str r0, [r4]
	rsbs r0, r2, #0
	str r0, [r4, #8]
_0806E5B6:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806E5C6
	b _0806E8DC
_0806E5C6:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xc8
	lsls r0, r0, #1
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E5D4: .4byte 0x000607FF
_0806E5D8:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806E5E6
	b _0806E8DC
_0806E5E6:
	strh r1, [r4, #0x34]
	b _0806E8DC
_0806E5EA:
	movs r5, #0
	ldr r0, _0806E600 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806E604
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0806E610
	b _0806E60E
	.align 2, 0
_0806E600: .4byte gStageData
_0806E604:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0806E610
_0806E60E:
	movs r5, #1
_0806E610:
	ldr r2, _0806E638 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0806E63C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806E640 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #1
	ldr r1, _0806E644 @ =0x00002710
	adds r0, r2, #0
	bl __umodsi3
	adds r2, r0, #0
	cmp r5, #0
	beq _0806E64C
	ldr r0, _0806E648 @ =0x0000176F
	cmp r2, r0
	bls _0806E652
	b _0806E660
	.align 2, 0
_0806E638: .4byte gUnknown_03006868
_0806E63C: .4byte 0x00196225
_0806E640: .4byte 0x3C6EF35F
_0806E644: .4byte 0x00002710
_0806E648: .4byte 0x0000176F
_0806E64C:
	ldr r0, _0806E65C @ =0x00001F3F
	cmp r2, r0
	bhi _0806E660
_0806E652:
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E65C: .4byte 0x00001F3F
_0806E660:
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E668:
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	subs r0, #2
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E67A:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806E6EC @ =0x000003FF
	cmp r0, r1
	ble _0806E68C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806E68C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806E6F0 @ =0x00007FFF
	cmp r0, r1
	ble _0806E6A8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806E6A8:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r2, r5
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806E6F4 @ =0x0000B4FF
	cmp r1, r0
	ble _0806E6C6
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806E6C6:
	cmp r3, #1
	beq _0806E6CC
	b _0806E8DC
_0806E6CC:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _0806E6F8 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	ldr r0, _0806E6FC @ =0x00000203
	strh r0, [r4, #0x34]
	b _0806E81E
	.align 2, 0
_0806E6EC: .4byte 0x000003FF
_0806E6F0: .4byte 0x00007FFF
_0806E6F4: .4byte 0x0000B4FF
_0806E6F8: .4byte 0xFFFFFE00
_0806E6FC: .4byte 0x00000203
_0806E700:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806E71A
	ldr r0, _0806E724 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x82
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
_0806E71A:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	b _0806E8D8
	.align 2, 0
_0806E724: .4byte 0xFFFFFE40
_0806E728:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806E74C @ =0x000047FF
	cmp r1, r0
	ble _0806E744
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	strh r3, [r4, #0x34]
_0806E744:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	b _0806E8D8
	.align 2, 0
_0806E74C: .4byte 0x000047FF
_0806E750:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806E75E
	b _0806E8DC
_0806E75E:
	movs r0, #0x64
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E764:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r3, r4, r0
	movs r1, #0
	ldr r0, _0806E788 @ =0x000004C4
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r3, r4, r2
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	ldr r0, _0806E78C @ =0x00000262
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E788: .4byte 0x000004C4
_0806E78C: .4byte 0x00000262
_0806E790:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806E7A0
	b _0806E8DC
_0806E7A0:
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	strh r1, [r4, #0x34]
	b _0806E8DC
_0806E7AE:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806E828 @ =0x000003FF
	cmp r0, r1
	ble _0806E7C0
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806E7C0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806E82C @ =0x00007FFF
	cmp r0, r1
	ble _0806E7DC
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806E7DC:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r2, r5
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806E830 @ =0x0000B8FF
	cmp r1, r0
	ble _0806E7FA
	movs r0, #0xb1
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806E7FA:
	cmp r3, #1
	bne _0806E8DC
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	ldr r0, _0806E834 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	ldr r0, _0806E838 @ =0x00000271
	strh r0, [r4, #0x34]
	movs r0, #0xa
	strh r0, [r4, #0x20]
_0806E81E:
	ldr r0, _0806E83C @ =0x00000227
	bl sub_80BA57C
	b _0806E8DC
	.align 2, 0
_0806E828: .4byte 0x000003FF
_0806E82C: .4byte 0x00007FFF
_0806E830: .4byte 0x0000B8FF
_0806E834: .4byte 0xFFFFFE00
_0806E838: .4byte 0x00000271
_0806E83C: .4byte 0x00000227
_0806E840:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806E8D2
	ldr r0, _0806E858 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	ldr r0, _0806E85C @ =0x00000276
	b _0806E8D0
	.align 2, 0
_0806E858: .4byte 0xFFFFFE40
_0806E85C: .4byte 0x00000276
_0806E860:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806E880 @ =0x000047FF
	cmp r1, r0
	ble _0806E8D2
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	strh r3, [r4, #0x34]
	b _0806E8D2
	.align 2, 0
_0806E880: .4byte 0x000047FF
_0806E884:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E8DC
	ldr r0, _0806E898 @ =0x0000028A
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E898: .4byte 0x0000028A
_0806E89C:
	ldr r0, _0806E8A8 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E8A8: .4byte 0xFFFFFE40
_0806E8AC:
	ldr r0, [r4, #0x14]
	adds r2, r0, #0
	adds r2, #0x10
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, _0806E908 @ =0x00007FFF
	cmp r0, r1
	ble _0806E8D2
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	rsbs r0, r2, #0
	str r0, [r4, #0xc]
	ldr r0, _0806E90C @ =0xFFFFFE80
	str r0, [r4, #0x14]
	movs r0, #0xc8
_0806E8D0:
	strh r0, [r4, #0x34]
_0806E8D2:
	ldr r1, [r4, #0x10]
	movs r0, #0xb1
	lsls r0, r0, #8
_0806E8D8:
	subs r0, r0, r1
	str r0, [r4, #4]
_0806E8DC:
	ldrh r1, [r4, #0x32]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0806E8F8
	subs r0, r1, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E8F8
	adds r0, r4, #0
	movs r1, #0
	bl sub_806D808
_0806E8F8:
	adds r0, r4, #0
	bl sub_806D568
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E908: .4byte 0x00007FFF
_0806E90C: .4byte 0xFFFFFE80

	thumb_func_start sub_806E910
sub_806E910: @ 0x0806E910
	push {r4, r5, lr}
	ldr r4, _0806E930 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806E938
	ldr r1, [r4]
	ldr r0, _0806E934 @ =sub_806E950
	b _0806E93C
	.align 2, 0
_0806E930: .4byte gCurTask
_0806E934: .4byte sub_806E950
_0806E938:
	ldr r1, [r4]
	ldr r0, _0806E94C @ =sub_806D268
_0806E93C:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_806D6C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E94C: .4byte sub_806D268

	thumb_func_start sub_806E950
sub_806E950: @ 0x0806E950
	push {r4, r5, lr}
	ldr r5, _0806E970 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806E974
	adds r0, r2, #0
	bl TaskDestroy
	b _0806E992
	.align 2, 0
_0806E970: .4byte gCurTask
_0806E974:
	adds r0, r4, #0
	bl sub_806D6C4
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0806E992
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806E992
	ldr r1, [r5]
	ldr r0, _0806E998 @ =sub_806D268
	str r0, [r1, #8]
_0806E992:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E998: .4byte sub_806D268

	thumb_func_start sub_806E99C
sub_806E99C: @ 0x0806E99C
	push {r4, lr}
	ldr r0, _0806E9BC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_806DD34
	adds r0, r4, #0
	bl sub_806D6C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E9BC: .4byte gCurTask

	thumb_func_start sub_806E9C0
sub_806E9C0: @ 0x0806E9C0
	push {lr}
	ldr r0, _0806E9EC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_806D6C4
	pop {r0}
	bx r0
	.align 2, 0
_0806E9EC: .4byte gCurTask

	thumb_func_start sub_806E9F0
sub_806E9F0: @ 0x0806E9F0
	push {r4, lr}
	ldr r0, _0806EA10 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_806DED8
	adds r0, r4, #0
	bl sub_806D6C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EA10: .4byte gCurTask

	thumb_func_start sub_806EA14
sub_806EA14: @ 0x0806EA14
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0806EA2C
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x38]
_0806EA2C:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0806EA3A
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x3c]
_0806EA3A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_806EA40
sub_806EA40: @ 0x0806EA40
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r3, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r3, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	ldr r0, _0806EA6C @ =0x0000B4FF
	cmp r1, r0
	ble _0806EA62
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r3
	str r1, [r2, #4]
	movs r4, #1
_0806EA62:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EA6C: .4byte 0x0000B4FF

	thumb_func_start sub_806EA70
sub_806EA70: @ 0x0806EA70
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r3, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r3, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	ldr r0, _0806EA9C @ =0x0000B8FF
	cmp r1, r0
	ble _0806EA92
	movs r0, #0xb1
	lsls r0, r0, #8
	subs r1, r0, r3
	str r1, [r2, #4]
	movs r4, #1
_0806EA92:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EA9C: .4byte 0x0000B8FF

	thumb_func_start sub_806EAA0
sub_806EAA0: @ 0x0806EAA0
	push {r4, r5, r6, lr}
	movs r2, #0
	strh r2, [r0, #0x34]
	movs r1, #1
	strh r1, [r0, #0x36]
	strh r2, [r0, #0x20]
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0x40
	movs r6, #0x80
	lsls r6, r6, #0x14
	movs r4, #0
_0806EAB8:
	lsls r2, r3, #2
	adds r2, r5, r2
	ldr r1, [r2]
	ldr r0, [r1, #4]
	orrs r0, r6
	str r0, [r1, #4]
	strh r4, [r1, #0x1c]
	ldr r0, [r2]
	strh r4, [r0, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0806EAB8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

    @ Called on init of Boss 4
	thumb_func_start sub_806EADC
sub_806EADC: @ 0x0806EADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r2, #0
	ldr r0, _0806EC2C @ =sub_8071614
	movs r1, #0xc4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806EC30 @ =sub_8071694
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldr r0, _0806EC34 @ =gStageData
	adds r0, #0x88
	ldr r1, [sp, #4]
	str r1, [r0]
	ldrh r7, [r1, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r7, r5
	movs r0, #0xba
	lsls r0, r0, #0xb
	str r0, [r5]
	lsls r4, r4, #8
	str r4, [r5, #4]
	movs r6, #0
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strh r1, [r5, #0x2c]
	strb r6, [r5, #0x18]
	mov r0, sb
	str r0, [r5, #0x14]
	strb r6, [r5, #0x19]
	ldr r2, _0806EC38 @ =gPlayers
	str r2, [r5, #0x40]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r5, #0x44]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r5, #0x20]
	strb r6, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #0x2e]
	strh r1, [r5, #0x30]
	strb r6, [r5, #0x1b]
	movs r0, #1
	mov sb, r0
	mov r1, sb
	strb r1, [r5, #0x12]
	strb r6, [r5, #0x13]
	strb r1, [r5, #0x1c]
	strb r6, [r5, #0x1d]
	mov r0, r8
	strh r0, [r5, #0x1e]
	ldr r1, _0806EC3C @ =0x03000032
	adds r0, r7, r1
	strb r6, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_8071904
	movs r0, #0x64
	bl VramMalloc
	adds r4, r0, #0
	str r4, [r5, #0x38]
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r5, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r0, _0806EC40 @ =0x03000070
	adds r1, r7, r0
	str r4, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	ldr r0, _0806EC44 @ =0x000004C9
	strh r0, [r1, #0xc]
	mov r0, sb
	strb r0, [r1, #0x1a]
	mov r0, r8
	strh r0, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	mov r0, r8
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r0, _0806EC48 @ =0x03000048
	adds r1, r7, r0
	str r4, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	ldr r0, _0806EC4C @ =0x000004CA
	strh r0, [r1, #0xc]
	strb r6, [r1, #0x1a]
	mov r0, r8
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sl
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	mov r0, r8
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	mov r0, sb
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl sub_08070138
	adds r0, r5, #0
	bl sub_080719B4
	mov r1, r8
	str r1, [r5, #0x34]
	bl sub_807A4BC
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806EC2C: .4byte sub_8071614
_0806EC30: .4byte sub_8071694
_0806EC34: .4byte gStageData
_0806EC38: .4byte gPlayers
_0806EC3C: .4byte 0x03000032
_0806EC40: .4byte 0x03000070
_0806EC44: .4byte 0x000004C9
_0806EC48: .4byte 0x03000048
_0806EC4C: .4byte 0x000004CA

	thumb_func_start sub_806EC50
sub_806EC50: @ 0x0806EC50
	push {r4, r5, lr}
	ldr r0, _0806EC70 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806EC74
	adds r0, r2, #0
	bl TaskDestroy
	b _0806ECE2
	.align 2, 0
_0806EC70: .4byte gCurTask
_0806EC74:
	ldr r0, [r4, #0x40]
	bl sub_0806F5F0
	ldr r0, [r4, #0x44]
	bl sub_0806F5F0
	adds r0, r4, #0
	bl sub_8070208
	adds r0, r4, #0
	bl sub_0806FA0C
	ldr r0, _0806ECE8 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _0806ECEC @ =gPlayers
	adds r3, r0, r2
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	ldr r2, [r3, #0x10]
	asrs r1, r2, #8
	ldr r0, _0806ECF0 @ =0x0000053D
	cmp r1, r0
	bgt _0806ECC8
	ldr r0, [r5, #0x10]
	cmp r0, r2
	ble _0806ECC8
	ldr r0, _0806ECF4 @ =0x00053E00
	str r0, [r3, #0x10]
_0806ECC8:
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0806ECE2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806ECE2
	ldr r0, _0806ECF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806ECFC @ =sub_806ED00
	str r0, [r1, #8]
_0806ECE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806ECE8: .4byte gStageData
_0806ECEC: .4byte gPlayers
_0806ECF0: .4byte 0x0000053D
_0806ECF4: .4byte 0x00053E00
_0806ECF8: .4byte gCurTask
_0806ECFC: .4byte sub_806ED00

	thumb_func_start sub_806ED00
sub_806ED00: @ 0x0806ED00
	push {r4, r5, r6, lr}
	ldr r0, _0806ED20 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806ED24
	adds r0, r2, #0
	bl TaskDestroy
	b _0806EDC0
	.align 2, 0
_0806ED20: .4byte gCurTask
_0806ED24:
	ldr r0, [r4, #0x40]
	bl sub_0806F5F0
	ldr r0, [r4, #0x44]
	bl sub_0806F5F0
	adds r0, r4, #0
	bl sub_8070208
	adds r0, r4, #0
	bl sub_0806FA0C
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0806EDC0
	movs r1, #0
	ldr r2, _0806EDC8 @ =gPlayers
	adds r6, r2, #0
	ldr r5, _0806EDCC @ =0xFFFFFAF0
	ldr r3, _0806EDD0 @ =0x0000019F
_0806ED4E:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r5
	cmp r0, r3
	bhi _0806EDC0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0806ED4E
	ldr r0, _0806EDD4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	ldr r2, [r3, #0x10]
	asrs r1, r2, #8
	ldr r0, _0806EDD8 @ =0x0000053D
	cmp r1, r0
	bgt _0806EDAE
	ldr r0, [r5, #0x10]
	cmp r0, r2
	ble _0806EDAE
	ldr r0, _0806EDDC @ =0x00053E00
	str r0, [r3, #0x10]
_0806EDAE:
	movs r0, #0x32
	bl sub_80299D4
	movs r0, #1
	strb r0, [r4, #0x13]
	ldr r0, _0806EDE0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806EDE4 @ =sub_806EDE8
	str r0, [r1, #8]
_0806EDC0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806EDC8: .4byte gPlayers
_0806EDCC: .4byte 0xFFFFFAF0
_0806EDD0: .4byte 0x0000019F
_0806EDD4: .4byte gStageData
_0806EDD8: .4byte 0x0000053D
_0806EDDC: .4byte 0x00053E00
_0806EDE0: .4byte gCurTask
_0806EDE4: .4byte sub_806EDE8

	thumb_func_start sub_806EDE8
sub_806EDE8: @ 0x0806EDE8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806EE1C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x40]
	bl sub_0806F5F0
	ldr r0, [r4, #0x44]
	bl sub_0806F5F0
	ldrh r1, [r4, #0x2c]
	cmp r1, #0xf0
	beq _0806EE58
	cmp r1, #0xf0
	bgt _0806EE20
	cmp r1, #0x3c
	beq _0806EE30
	b _0806EEA0
	.align 2, 0
_0806EE1C: .4byte gCurTask
_0806EE20:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	beq _0806EE70
	adds r0, #0x64
	cmp r1, r0
	beq _0806EE7A
	b _0806EEA0
_0806EE30:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8071968
	ldr r0, _0806EE54 @ =0x0000022E
	bl sub_80BA57C
	adds r0, r4, #0
	movs r1, #1
	bl sub_806FAFC
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0806F2B8
	b _0806EEA0
	.align 2, 0
_0806EE54: .4byte 0x0000022E
_0806EE58:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8071968
	ldr r1, _0806EE6C @ =0x030000D0
	adds r0, r5, r1
	bl UpdateSpriteAnimation
	b _0806EEA0
	.align 2, 0
_0806EE6C: .4byte 0x030000D0
_0806EE70:
	adds r0, r4, #0
	movs r1, #2
	bl sub_806FAFC
	b _0806EEA0
_0806EE7A:
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0x12]
	strb r6, [r4, #0x13]
	adds r0, r4, #0
	movs r1, #0
	bl sub_806FAFC
	adds r0, r4, #0
	movs r1, #1
	bl sub_8071904
	bl sub_807A4A8
	ldr r1, [r7]
	ldr r0, _0806EEB4 @ =sub_806EEB8
	str r0, [r1, #8]
_0806EEA0:
	adds r0, r4, #0
	bl sub_8070208
	adds r0, r4, #0
	bl sub_0806FA0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EEB4: .4byte sub_806EEB8

	thumb_func_start sub_806EEB8
sub_806EEB8: @ 0x0806EEB8
	push {r4, r5, lr}
	ldr r4, _0806EEEC @ =gCurTask
	ldr r3, [r4]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	ldr r0, [r5]
	asrs r1, r0, #8
	ldr r0, _0806EEF0 @ =0x00000677
	cmp r1, r0
	ble _0806EF20
	ldr r2, _0806EEF4 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0806EF06
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _0806EEFC
	ldr r0, _0806EEF8 @ =sub_8071664
	str r0, [r3, #8]
	b _0806EF12
	.align 2, 0
_0806EEEC: .4byte gCurTask
_0806EEF0: .4byte 0x00000677
_0806EEF4: .4byte gStageData
_0806EEF8: .4byte sub_8071664
_0806EEFC:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	bl sub_8027674
_0806EF06:
	adds r0, r5, #0
	bl sub_80719C8
	ldr r1, [r4]
	ldr r0, _0806EF1C @ =sub_806F3A0
	str r0, [r1, #8]
_0806EF12:
	adds r0, r5, #0
	bl sub_0806FA0C
	b _0806EFDA
	.align 2, 0
_0806EF1C: .4byte sub_806F3A0
_0806EF20:
	ldr r0, [r5, #0x40]
	bl sub_0806F5F0
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r5, #0x44]
	bl sub_0806F5F0
	adds r4, r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _0806EF5A
	ldr r1, _0806EF50 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806EF54
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0806EF5A
	adds r0, r5, #0
	bl sub_8071410
	b _0806EF5A
	.align 2, 0
_0806EF50: .4byte gStageData
_0806EF54:
	adds r0, r5, #0
	bl sub_8071410
_0806EF5A:
	ldrb r1, [r5, #0x19]
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0806EF68
	subs r0, r1, #1
	strb r0, [r5, #0x19]
_0806EF68:
	adds r0, r5, #0
	bl sub_0806EFE8
	adds r0, r5, #0
	bl sub_8070208
	ldrh r0, [r5, #0x20]
	subs r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806EFD4
	ldr r1, [r5]
	ldr r0, _0806EF8C @ =0x00062FFF
	cmp r1, r0
	ble _0806EF90
	movs r2, #3
	b _0806EFAA
	.align 2, 0
_0806EF8C: .4byte 0x00062FFF
_0806EF90:
	ldr r0, _0806EF9C @ =0x000611FF
	cmp r1, r0
	ble _0806EFA0
	movs r2, #2
	b _0806EFAA
	.align 2, 0
_0806EF9C: .4byte 0x000611FF
_0806EFA0:
	ldr r0, _0806EFE0 @ =0x0005D5FF
	movs r2, #0
	cmp r1, r0
	ble _0806EFAA
	movs r2, #1
_0806EFAA:
	ldr r1, _0806EFE4 @ =gUnknown_080D5880
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
	ldrb r0, [r5, #0x1b]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	movs r1, #0
	bl sub_806FB38
	adds r0, r5, #0
	movs r1, #1
	bl sub_806FB38
	adds r0, r5, #0
	movs r1, #2
	bl sub_806FB38
_0806EFD4:
	adds r0, r5, #0
	bl sub_0806FA0C
_0806EFDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806EFE0: .4byte 0x0005D5FF
_0806EFE4: .4byte gUnknown_080D5880

	thumb_func_start sub_0806EFE8
sub_0806EFE8: @ 0x0806EFE8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r5, #0x10]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0806F02E
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806F02E
	ldr r1, [r5]
	asrs r1, r1, #8
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	asrs r2, r2, #8
	subs r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r6, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #8
	movs r3, #0
	bl sub_8079758
_0806F02E:
	ldrh r0, [r5, #0x10]
	cmp r0, #4
	beq _0806F064
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	bne _0806F04C
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _0806F048 @ =0x00000617
	cmp r0, r1
	ble _0806F064
	movs r0, #0x33
	b _0806F058
	.align 2, 0
_0806F048: .4byte 0x00000617
_0806F04C:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _0806F078 @ =0x00000617
	cmp r0, r1
	bgt _0806F064
	movs r0, #0x32
_0806F058:
	bl sub_80299D4
	ldrb r0, [r5, #0x1d]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0x1d]
_0806F064:
	ldr r6, [r5]
	ldrh r0, [r5, #0x10]
	cmp r0, #4
	bls _0806F06E
	b _0806F270
_0806F06E:
	lsls r0, r0, #2
	ldr r1, _0806F07C @ =_0806F080
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F078: .4byte 0x00000617
_0806F07C: .4byte _0806F080
_0806F080: @ jump table
	.4byte _0806F270 @ case 0
	.4byte _0806F094 @ case 1
	.4byte _0806F0D0 @ case 2
	.4byte _0806F146 @ case 3
	.4byte _0806F1BC @ case 4
_0806F094:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5]
	asrs r0, r0, #8
	movs r1, #0xaa
	lsls r1, r1, #3
	cmp r0, r1
	ble _0806F0A8
	b _0806F270
_0806F0A8:
	movs r0, #0xaa
	lsls r0, r0, #0xb
	str r0, [r5]
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _0806F0B6
	b _0806F270
_0806F0B6:
	movs r0, #0x65
	strh r0, [r5, #0x24]
	movs r0, #1
	strb r0, [r5, #0x13]
	ldrh r0, [r5, #0x10]
	cmp r0, #4
	bne _0806F0C6
	b _0806F270
_0806F0C6:
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #0
	strb r0, [r5, #0x1a]
	b _0806F1B2
_0806F0D0:
	ldr r0, [r5]
	ldr r2, [r5, #8]
	adds r1, r0, r2
	str r1, [r5]
	ldr r0, _0806F114 @ =gStageData
	ldrb r0, [r0, #1]
	movs r3, #0xc0
	lsls r3, r3, #5
	cmp r0, #0
	bne _0806F0E8
	movs r3, #0x80
	lsls r3, r3, #5
_0806F0E8:
	ldr r0, [r5, #0xc]
	adds r0, r0, r2
	str r0, [r5, #0xc]
	cmp r0, r3
	bge _0806F0F4
	b _0806F270
_0806F0F4:
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	bne _0806F0FC
	b _0806F270
_0806F0FC:
	movs r3, #0
	movs r2, #0
	strh r2, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	cmp r0, #1
	beq _0806F12A
	cmp r0, #1
	bgt _0806F118
	cmp r0, #0
	beq _0806F122
	b _0806F270
	.align 2, 0
_0806F114: .4byte gStageData
_0806F118:
	cmp r0, #2
	beq _0806F130
	cmp r0, #4
	beq _0806F13A
	b _0806F270
_0806F122:
	strb r3, [r5, #0x1a]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	b _0806F270
_0806F12A:
	movs r0, #8
	rsbs r0, r0, #0
	b _0806F140
_0806F130:
	movs r0, #0x80
	str r0, [r5, #8]
	str r2, [r5, #0xc]
	asrs r1, r1, #8
	b _0806F1A0
_0806F13A:
	strb r3, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #4
_0806F140:
	str r0, [r5, #8]
	str r2, [r5, #0xc]
	b _0806F270
_0806F146:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r2, r0, r1
	str r2, [r5]
	ldr r0, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r1, _0806F17C @ =0x00001FFF
	cmp r0, r1
	bgt _0806F15C
	b _0806F270
_0806F15C:
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	bne _0806F164
	b _0806F270
_0806F164:
	movs r3, #0
	movs r1, #0
	strh r1, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	cmp r0, #1
	beq _0806F192
	cmp r0, #1
	bgt _0806F180
	cmp r0, #0
	beq _0806F18A
	b _0806F270
	.align 2, 0
_0806F17C: .4byte 0x00001FFF
_0806F180:
	cmp r0, #2
	beq _0806F198
	cmp r0, #4
	beq _0806F1B0
	b _0806F270
_0806F18A:
	strb r3, [r5, #0x1a]
	str r1, [r5, #8]
	str r1, [r5, #0xc]
	b _0806F270
_0806F192:
	movs r0, #8
	rsbs r0, r0, #0
	b _0806F1B6
_0806F198:
	movs r0, #0x80
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	asrs r1, r2, #8
_0806F1A0:
	ldr r0, _0806F1AC @ =0x0000066F
	cmp r1, r0
	ble _0806F270
	movs r0, #3
	strh r0, [r5, #0x10]
	b _0806F270
	.align 2, 0
_0806F1AC: .4byte 0x0000066F
_0806F1B0:
	strb r3, [r5, #0x1a]
_0806F1B2:
	movs r0, #0x80
	lsls r0, r0, #4
_0806F1B6:
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	b _0806F270
_0806F1BC:
	ldr r0, [r5]
	ldr r2, [r5, #8]
	adds r1, r0, r2
	str r1, [r5]
	ldrb r3, [r5, #0x1a]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0806F1DE
	asrs r1, r1, #8
	movs r0, #0xaa
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0806F1F4
	movs r0, #0xaa
	lsls r0, r0, #0xb
	b _0806F1EA
_0806F1DE:
	asrs r1, r1, #8
	ldr r0, _0806F228 @ =0x0000064F
	cmp r1, r0
	ble _0806F1F4
	movs r0, #0xca
	lsls r0, r0, #0xb
_0806F1EA:
	str r0, [r5]
	rsbs r0, r2, #0
	str r0, [r5, #8]
	adds r0, r3, #1
	strb r0, [r5, #0x1a]
_0806F1F4:
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	cmp r0, #0xa
	bne _0806F270
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _0806F22C @ =0x000005CF
	cmp r0, r1
	ble _0806F270
	movs r0, #0xba
	lsls r0, r0, #0xb
	str r0, [r5]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _0806F254
	movs r2, #0
	movs r1, #0
	strh r1, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	cmp r0, #1
	beq _0806F240
	cmp r0, #1
	bgt _0806F230
	cmp r0, #0
	beq _0806F23A
	b _0806F254
	.align 2, 0
_0806F228: .4byte 0x0000064F
_0806F22C: .4byte 0x000005CF
_0806F230:
	cmp r0, #2
	beq _0806F246
	cmp r0, #4
	beq _0806F24A
	b _0806F254
_0806F23A:
	strb r2, [r5, #0x1a]
	str r1, [r5, #8]
	b _0806F252
_0806F240:
	movs r0, #8
	rsbs r0, r0, #0
	b _0806F250
_0806F246:
	movs r0, #0x80
	b _0806F250
_0806F24A:
	strb r2, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #4
_0806F250:
	str r0, [r5, #8]
_0806F252:
	str r1, [r5, #0xc]
_0806F254:
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_0806F2B8
	strb r4, [r5, #0x12]
	adds r0, r5, #0
	movs r1, #1
	bl sub_806FAFC
	ldr r0, _0806F2B4 @ =0x0000022E
	bl sub_80BA57C
_0806F270:
	ldr r0, [r5]
	subs r6, r0, r6
	ldr r2, [r5, #0x40]
	ldr r0, [r2, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806F290
	adds r1, r5, #0
	adds r1, #0x70
	ldr r0, [r2, #0x6c]
	cmp r0, r1
	bne _0806F290
	ldr r0, [r2, #0x10]
	adds r0, r0, r6
	str r0, [r2, #0x10]
_0806F290:
	ldr r2, [r5, #0x44]
	ldr r0, [r2, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806F2AC
	adds r1, r5, #0
	adds r1, #0x70
	ldr r0, [r2, #0x6c]
	cmp r0, r1
	bne _0806F2AC
	ldr r0, [r2, #0x10]
	adds r0, r0, r6
	str r0, [r2, #0x10]
_0806F2AC:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806F2B4: .4byte 0x0000022E

	thumb_func_start sub_0806F2B8
sub_0806F2B8: @ 0x0806F2B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	ldr r0, _0806F2C8 @ =0x00062FFF
	cmp r1, r0
	ble _0806F2CC
	movs r4, #3
	b _0806F2E6
	.align 2, 0
_0806F2C8: .4byte 0x00062FFF
_0806F2CC:
	ldr r0, _0806F2D8 @ =0x000611FF
	cmp r1, r0
	ble _0806F2DC
	movs r4, #2
	b _0806F2E6
	.align 2, 0
_0806F2D8: .4byte 0x000611FF
_0806F2DC:
	ldr r0, _0806F310 @ =0x0005D5FF
	movs r4, #0
	cmp r1, r0
	ble _0806F2E6
	movs r4, #1
_0806F2E6:
	movs r6, #0
	ldr r2, _0806F314 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0806F318 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806F31C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, #1
	beq _0806F332
	cmp r4, #1
	bgt _0806F320
	cmp r4, #0
	beq _0806F32A
	b _0806F358
	.align 2, 0
_0806F310: .4byte 0x0005D5FF
_0806F314: .4byte gUnknown_03006868
_0806F318: .4byte 0x00196225
_0806F31C: .4byte 0x3C6EF35F
_0806F320:
	cmp r4, #2
	beq _0806F342
	cmp r4, #3
	beq _0806F352
	b _0806F358
_0806F32A:
	movs r6, #1
	cmp r0, #0x1d
	bhi _0806F358
	b _0806F356
_0806F332:
	movs r6, #2
	cmp r0, #0x27
	bls _0806F358
	movs r6, #1
	cmp r0, #0x45
	bhi _0806F358
	movs r6, #0
	b _0806F358
_0806F342:
	movs r6, #2
	cmp r0, #0x31
	bls _0806F358
	movs r6, #1
	cmp r0, #0x59
	bhi _0806F358
	movs r6, #0
	b _0806F358
_0806F352:
	cmp r0, #0x31
	bhi _0806F358
_0806F356:
	movs r6, #2
_0806F358:
	strb r6, [r5, #0x18]
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _0806F364
	movs r0, #1
	strb r0, [r5, #0x18]
_0806F364:
	ldrb r0, [r5, #0x18]
	cmp r0, #1
	beq _0806F382
	cmp r0, #1
	bgt _0806F374
	cmp r0, #0
	beq _0806F37A
	b _0806F396
_0806F374:
	cmp r0, #2
	beq _0806F390
	b _0806F396
_0806F37A:
	adds r0, r5, #0
	bl sub_08071720
	b _0806F396
_0806F382:
	adds r0, r5, #0
	bl sub_08071764
	adds r0, r5, #0
	bl sub_0806FE98
	b _0806F396
_0806F390:
	adds r0, r5, #0
	bl sub_080717A8
_0806F396:
	movs r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_806F3A0
sub_806F3A0: @ 0x0806F3A0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _0806F3D0 @ =gCurTask
	ldr r5, [r0]
	ldrh r6, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldr r0, _0806F3D4 @ =gStageData
	ldr r3, [r0, #0x1c]
	ldrh r2, [r4, #0x2c]
	cmp r2, #0x64
	beq _0806F42C
	cmp r2, #0x64
	bgt _0806F3D8
	cmp r2, #0
	beq _0806F3E8
	cmp r2, #0xa
	beq _0806F3F4
	b _0806F540
	.align 2, 0
_0806F3D0: .4byte gCurTask
_0806F3D4: .4byte gStageData
_0806F3D8:
	cmp r2, #0xc8
	beq _0806F498
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r2, r0
	bne _0806F3E6
	b _0806F52C
_0806F3E6:
	b _0806F540
_0806F3E8:
	str r2, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0x20]
	movs r0, #0xa
	strh r0, [r4, #0x2c]
	b _0806F540
_0806F3F4:
	ldr r0, [r4, #8]
	adds r0, #0x20
	str r0, [r4, #8]
	ldr r1, _0806F424 @ =0x000003FF
	cmp r0, r1
	ble _0806F406
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #8]
_0806F406:
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #4]
	asrs r1, r1, #8
	ldr r0, _0806F428 @ =gCamera
	ldr r0, [r0, #0x14]
	adds r0, #0x50
	cmp r1, r0
	bgt _0806F41C
	b _0806F540
_0806F41C:
	movs r0, #0x64
	strh r0, [r4, #0x2c]
	b _0806F540
	.align 2, 0
_0806F424: .4byte 0x000003FF
_0806F428: .4byte gCamera
_0806F42C:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0806F43A
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x38]
_0806F43A:
	ldr r0, _0806F48C @ =0x030000C8
	adds r5, r6, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0806F44C
	bl VramFree
	movs r0, #0
	str r0, [r5]
_0806F44C:
	ldr r0, _0806F490 @ =0x030000CC
	adds r5, r6, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0806F45E
	bl VramFree
	movs r0, #0
	str r0, [r5]
_0806F45E:
	movs r0, #0x9e
	bl VramMalloc
	str r0, [r4, #0x34]
	ldr r0, _0806F494 @ =0x00000221
	bl sub_80BA57C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #8
	movs r2, #0
	bl sub_805256C
	movs r0, #0xb4
	strh r0, [r4, #0x20]
	movs r0, #0xc8
	strh r0, [r4, #0x2c]
	b _0806F540
	.align 2, 0
_0806F48C: .4byte 0x030000C8
_0806F490: .4byte 0x030000CC
_0806F494: .4byte 0x00000221
_0806F498:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0806F4F4
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0806F4B8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x20
	movs r1, #0x1f
	ands r3, r1
	lsls r1, r3, #1
	subs r0, r0, r1
	b _0806F4C6
_0806F4B8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x20
	movs r1, #0x1f
	ands r3, r1
	lsls r1, r3, #1
	adds r0, r0, r1
_0806F4C6:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0806F520 @ =gCamera
	ldr r2, [r0, #0x14]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0xa0
	lsls r3, r3, #3
	movs r0, #0xc0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	subs r0, #0x1e
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806F4F4:
	ldr r0, _0806F524 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806F506
	ldr r0, _0806F528 @ =0x00000221
	bl sub_80BA57C
_0806F506:
	ldrh r0, [r4, #0x20]
	subs r0, #1
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806F540
	movs r0, #0x3c
	strh r0, [r4, #0x20]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x2c]
	b _0806F540
	.align 2, 0
_0806F520: .4byte gCamera
_0806F524: .4byte gStageData
_0806F528: .4byte 0x00000221
_0806F52C:
	ldrh r0, [r4, #0x20]
	subs r0, #1
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0806F540
	ldr r0, _0806F568 @ =sub_806F56C
	str r0, [r5, #8]
	strh r1, [r4, #0x2c]
_0806F540:
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x44]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8070208
	adds r0, r4, #0
	bl sub_0806FA0C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806F568: .4byte sub_806F56C

	thumb_func_start sub_806F56C
sub_806F56C: @ 0x0806F56C
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _0806F58C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	ldrh r5, [r4, #0x2c]
	cmp r5, #0
	beq _0806F590
	cmp r5, #1
	beq _0806F5D4
	b _0806F5E8
	.align 2, 0
_0806F58C: .4byte gCurTask
_0806F590:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0806F59C
	bl VramFree
	str r5, [r4, #0x34]
_0806F59C:
	ldr r0, [r4, #4]
	ldr r1, _0806F5CC @ =0xFFFFD800
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r4]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #0x20
	str r0, [sp, #0xc]
	ldr r1, _0806F5D0 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _0806F5E6
	.align 2, 0
_0806F5CC: .4byte 0xFFFFD800
_0806F5D0: .4byte sub_807A37C
_0806F5D4:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _0806F5E8
	ldr r0, [r4, #0x14]
	strb r1, [r0]
	movs r0, #0x64
_0806F5E6:
	strh r0, [r4, #0x2c]
_0806F5E8:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F5F0
sub_0806F5F0: @ 0x0806F5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r0, _0806F714 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0806F718 @ =0x030000D0
	adds r1, r1, r5
	mov r8, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0806F61E
	b _0806F8F0
_0806F61E:
	ldr r2, _0806F71C @ =0x03000098
	adds r0, r5, r2
	ldr r2, [r0]
	ldr r1, _0806F720 @ =0x0300009C
	adds r0, r5, r1
	ldr r1, [r0]
	ldrh r0, [r6, #0x22]
	cmp r0, #0
	bne _0806F63E
	movs r0, #0x19
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806F63E
	adds r0, r2, #0
	bl sub_8004D68
_0806F63E:
	ldr r2, _0806F724 @ =gPlayers
	ldr r0, _0806F728 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0806F680
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0806F6B0
_0806F680:
	adds r0, r6, #0
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _0806F72C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x10]
	adds r0, r6, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x12]
	mov r0, r8
	bl sub_807A1DC
	cmp r0, #1
	bne _0806F6B0
	movs r0, #1
	mov sb, r0
_0806F6B0:
	adds r1, r6, #0
	adds r1, #0x94
	movs r3, #0
	movs r0, #0xe2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xcb
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x97
	strb r3, [r0]
	adds r5, r6, #0
	adds r5, #0x70
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, [r6, #4]
	asrs r2, r2, #8
	str r3, [sp]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r3, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r3
	cmp r2, #0
	beq _0806F770
	ldrh r0, [r6, #0x30]
	cmp r0, #1
	bne _0806F748
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	bne _0806F748
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806F730
	ldr r0, [r4, #0x6c]
	cmp r0, r5
	bne _0806F730
	adds r0, r4, #0
	bl sub_8014550
	b _0806F7FC
	.align 2, 0
_0806F714: .4byte gCurTask
_0806F718: .4byte 0x030000D0
_0806F71C: .4byte 0x03000098
_0806F720: .4byte 0x0300009C
_0806F724: .4byte gPlayers
_0806F728: .4byte gStageData
_0806F72C: .4byte gCamera
_0806F730:
	adds r0, r4, #0
	bl Player_800E67C
	ldr r1, _0806F744 @ =0xFFFFFD00
	adds r0, r1, #0
	ldrh r2, [r4, #0x1a]
	adds r0, r0, r2
	strh r0, [r4, #0x1a]
	b _0806F7FC
	.align 2, 0
_0806F744: .4byte 0xFFFFFD00
_0806F748:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	adds r1, r3, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, _0806F76C @ =0xFFFFFF00
	ands r0, r1
	subs r0, #1
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	subs r0, #1
	str r0, [r2, #0x34]
	b _0806F7FC
	.align 2, 0
_0806F76C: .4byte 0xFFFFFF00
_0806F770:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0806F7B4
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0806F798
	strh r2, [r4, #0x18]
_0806F798:
	strh r2, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806F7B4
	ldr r0, [r4, #0x10]
	ldr r2, _0806F858 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0806F7B4:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0806F7FC
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0806F7DC
	movs r0, #0
	strh r0, [r4, #0x18]
_0806F7DC:
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806F7FC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0806F7FC:
	ldrh r0, [r6, #0x24]
	cmp r0, #0
	bne _0806F808
	ldrh r0, [r6, #0x12]
	cmp r0, #0
	beq _0806F8F0
_0806F808:
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	beq _0806F8E8
	adds r0, r6, #0
	adds r0, #0x98
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r0, #4
	ldr r2, [r0]
	asrs r2, r2, #8
	movs r5, #0
	str r5, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r3, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r3
	cmp r2, #0
	beq _0806F85C
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	adds r1, r3, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, _0806F858 @ =0xFFFFFF00
	ands r0, r1
	subs r0, #1
	str r0, [r4, #0x14]
	strh r5, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x34]
	b _0806F8E8
	.align 2, 0
_0806F858: .4byte 0xFFFFFF00
_0806F85C:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0806F8A0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0806F884
	strh r2, [r4, #0x18]
_0806F884:
	strh r2, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806F8A0
	ldr r0, [r4, #0x10]
	ldr r2, _0806F8EC @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0806F8A0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0806F8E8
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0806F8C8
	movs r0, #0
	strh r0, [r4, #0x18]
_0806F8C8:
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806F8E8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0806F8E8:
	movs r0, #0
	b _0806F9FC
	.align 2, 0
_0806F8EC: .4byte 0xFFFFFF00
_0806F8F0:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0806F8FC
	b _0806F9FA
_0806F8FC:
	ldr r0, _0806F968 @ =gStageData
	ldrb r0, [r0, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0806F9FA
	ldrh r0, [r6, #0x22]
	cmp r0, #0
	bne _0806F9FA
	adds r7, r6, #0
	adds r7, #0x98
	ldr r1, [r7]
	asrs r1, r1, #8
	adds r5, r6, #0
	adds r5, #0x9c
	ldr r2, [r5]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #0
	beq _0806F9E8
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806F9B6
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	strh r1, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bge _0806F95A
	rsbs r2, r2, #0
_0806F95A:
	ldr r0, _0806F96C @ =0x0000017F
	cmp r2, r0
	bgt _0806F97A
	cmp r1, #0
	bgt _0806F974
	ldr r0, _0806F970 @ =0x0000FE80
	b _0806F978
	.align 2, 0
_0806F968: .4byte gStageData
_0806F96C: .4byte 0x0000017F
_0806F970: .4byte 0x0000FE80
_0806F974:
	movs r0, #0xc0
	lsls r0, r0, #1
_0806F978:
	strh r0, [r4, #0x18]
_0806F97A:
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0806F984
	rsbs r1, r1, #0
_0806F984:
	ldr r0, _0806F998 @ =0x0000017F
	cmp r1, r0
	bgt _0806F9A6
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0806F9A0
	ldr r0, _0806F99C @ =0x0000FE80
	b _0806F9A4
	.align 2, 0
_0806F998: .4byte 0x0000017F
_0806F99C: .4byte 0x0000FE80
_0806F9A0:
	movs r0, #0xc0
	lsls r0, r0, #1
_0806F9A4:
	strh r0, [r4, #0x1a]
_0806F9A6:
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	b _0806F9CE
_0806F9B6:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x1c]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
_0806F9CE:
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xd4
	bne _0806F9E2
	adds r0, r4, #0
	bl sub_800DB30
_0806F9E2:
	movs r2, #1
	mov sb, r2
	b _0806F9FA
_0806F9E8:
	ldr r1, [r7]
	asrs r1, r1, #8
	ldr r2, [r5]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_8020CE0
_0806F9FA:
	mov r0, sb
_0806F9FC:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FA0C
sub_0806FA0C: @ 0x0806FA0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _0806FAB8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	ldr r4, [r0, #4]
	asrs r4, r4, #8
	ldr r0, [r2, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r7, r8
	adds r7, #0x48
	strh r6, [r7, #0x10]
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7, #8]
	ldr r5, _0806FABC @ =0xFFFFFBFF
	ands r0, r5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sb, r1
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x28
	strh r6, [r7, #0x10]
	strh r4, [r7, #0x12]
	ldr r0, [r7, #8]
	ands r0, r5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #8]
	mov r1, sb
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	bl sub_08070370
	mov r0, r8
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806FAEA
	movs r4, #0
	mov r5, r8
	adds r5, #0x40
	ldr r0, _0806FAC0 @ =0x00065EFF
	mov r8, r0
	movs r7, #0
_0806FAA2:
	movs r6, #0
	lsls r1, r4, #2
	adds r0, r5, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	cmp r0, r8
	ble _0806FAC8
	ldr r0, _0806FAC4 @ =0x00065F00
	str r0, [r2, #0x10]
	movs r6, #1
	b _0806FAD6
	.align 2, 0
_0806FAB8: .4byte gCamera
_0806FABC: .4byte 0xFFFFFBFF
_0806FAC0: .4byte 0x00065EFF
_0806FAC4: .4byte 0x00065F00
_0806FAC8:
	ldr r3, _0806FAF8 @ =0x00054100
	cmp r0, r3
	bgt _0806FAD2
	str r3, [r2, #0x10]
	movs r6, #1
_0806FAD2:
	cmp r6, #0
	beq _0806FAE0
_0806FAD6:
	adds r0, r5, r1
	ldr r1, [r0]
	strh r7, [r1, #0x18]
	ldr r0, [r0]
	strh r7, [r0, #0x1c]
_0806FAE0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0806FAA2
_0806FAEA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FAF8: .4byte 0x00054100

	thumb_func_start sub_806FAFC
sub_806FAFC: @ 0x0806FAFC
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	beq _0806FB16
	cmp r1, #1
	bgt _0806FB12
	cmp r1, #0
	beq _0806FB16
	b _0806FB22
_0806FB12:
	cmp r1, #2
	bne _0806FB22
_0806FB16:
	adds r0, r2, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, #0x28
	strb r1, [r0]
	strh r1, [r2, #0x30]
_0806FB22:
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #0x28
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806FB38
sub_806FB38: @ 0x0806FB38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0806FBA4 @ =sub_806FC2C
	movs r2, #0x8c
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #4
	adds r5, r1, r0
	str r4, [r3]
	ldr r2, [r4, #0x40]
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #6
	ldr r7, _0806FBA8 @ =0xFFFFFF00
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r3, #0x34]
	ldr r1, [r2, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	ble _0806FB82
	movs r1, #0x34
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	strh r0, [r3, #0x34]
_0806FB82:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r3, #0x36]
	movs r2, #0x34
	ldrsh r0, [r3, r2]
	cmp r0, #0
	blt _0806FBB0
	ldrb r1, [r4, #0x1b]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806FBC4
	ldr r0, [r4]
	ldr r7, _0806FBAC @ =0xFFFFF000
	adds r0, r0, r7
	b _0806FBC6
	.align 2, 0
_0806FBA4: .4byte sub_806FC2C
_0806FBA8: .4byte 0xFFFFFF00
_0806FBAC: .4byte 0xFFFFF000
_0806FBB0:
	ldrb r1, [r4, #0x1b]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806FBC4
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	b _0806FBC6
_0806FBC4:
	ldr r0, [r4]
_0806FBC6:
	str r0, [r3, #0x2c]
	ldr r0, [r4, #4]
	ldr r2, _0806FC24 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r3, #0x30]
	adds r0, r3, #0
	adds r0, #0x38
	movs r2, #0
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x39
	movs r0, #0x18
	strb r0, [r1]
	lsls r1, r6, #9
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r5]
	movs r1, #0
	ldr r0, _0806FC28 @ =0x0000049F
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	subs r0, #0x1f
	strh r0, [r5, #0x14]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r1, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r7, #0x34
	ldrsh r0, [r3, r7]
	cmp r0, #0
	blt _0806FC1C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_0806FC1C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FC24: .4byte 0xFFFFF800
_0806FC28: .4byte 0x0000049F

	thumb_func_start sub_806FC2C
sub_806FC2C: @ 0x0806FC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0806FC8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r6, [r0]
	ldr r2, _0806FC90 @ =0x03000004
	adds r5, r1, r2
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	bne _0806FC72
	ldrh r0, [r5, #0xc]
	ldr r1, _0806FC94 @ =0x0000053A
	cmp r0, r1
	beq _0806FC7A
	movs r0, #0
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	ldr r0, _0806FC98 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x8a
	bl sub_80BA57C
_0806FC72:
	ldrh r1, [r5, #0xc]
	ldr r0, _0806FC94 @ =0x0000053A
	cmp r1, r0
	bne _0806FC9C
_0806FC7A:
	mov r1, r8
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806FCBA
	b _0806FCD8
	.align 2, 0
_0806FC8C: .4byte gCurTask
_0806FC90: .4byte 0x03000004
_0806FC94: .4byte 0x0000053A
_0806FC98: .4byte 0x0000FFFF
_0806FC9C:
	mov r1, r8
	ldrh r0, [r1, #0x36]
	adds r0, #0x18
	strh r0, [r1, #0x36]
	movs r2, #0x34
	ldrsh r1, [r1, r2]
	mov r2, r8
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #0x30]
_0806FCBA:
	mov r1, r8
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r1, #0x30]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	str r2, [sp, #0xc]
	asrs r3, r0, #0x10
	ldr r0, _0806FCE4 @ =gCamera
	ldr r0, [r0, #0x14]
	adds r0, #0x20
	cmp r3, r0
	ble _0806FCEC
_0806FCD8:
	ldr r0, _0806FCE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806FE84
	.align 2, 0
_0806FCE4: .4byte gCamera
_0806FCE8: .4byte gCurTask
_0806FCEC:
	mov r4, r8
	adds r4, #0x38
	ldrb r2, [r4]
	cmp r2, #0
	bne _0806FD36
	ldrh r1, [r5, #0xc]
	ldr r0, _0806FE28 @ =0x0000053A
	cmp r1, r0
	beq _0806FD36
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r2, [sp]
	ldr r0, _0806FE2C @ =sub_805217C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _0806FD36
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #3
	strh r0, [r2, #0x36]
	movs r0, #1
	strb r0, [r4]
_0806FD36:
	movs r1, #0
	mov sb, r1
	adds r6, #0x40
	str r6, [sp, #0x10]
_0806FD3E:
	mov r2, sb
	lsls r0, r2, #2
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0806FE4E
	ldrh r0, [r5, #0xc]
	ldr r2, _0806FE28 @ =0x0000053A
	cmp r0, r2
	beq _0806FE4E
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	ldr r3, _0806FE30 @ =gCamera
	ldr r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	ldr r1, [r3, #4]
	adds r1, r1, r2
	lsls r1, r1, #8
	bl sub_8004D68
	ldr r2, _0806FE34 @ =gPlayers
	ldr r0, _0806FE38 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0806FDB6
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0806FDC4
_0806FDB6:
	adds r0, r5, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _0806FDC4
	movs r2, #1
	str r2, [sp, #8]
_0806FDC4:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #0
	beq _0806FDEC
	ldr r0, [r4, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806FDF2
_0806FDEC:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0806FE40
_0806FDF2:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806FE0E
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806FE0E
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_0806FE0E:
	movs r0, #0
	ldr r1, _0806FE28 @ =0x0000053A
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	ldr r0, _0806FE3C @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x8a
	bl sub_80BA57C
	b _0806FE4E
	.align 2, 0
_0806FE28: .4byte 0x0000053A
_0806FE2C: .4byte sub_805217C
_0806FE30: .4byte gCamera
_0806FE34: .4byte gPlayers
_0806FE38: .4byte gStageData
_0806FE3C: .4byte 0x0000FFFF
_0806FE40:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
_0806FE4E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi _0806FE5E
	b _0806FD3E
_0806FE5E:
	mov r2, r8
	ldr r0, [r2, #0x2c]
	asrs r0, r0, #8
	ldr r2, _0806FE94 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	mov r1, r8
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806FE84:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FE94: .4byte gCamera

	thumb_func_start sub_0806FE98
sub_0806FE98: @ 0x0806FE98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r0, _0806FF1C @ =sub_806FFCC
	movs r1, #0x9b
	lsls r1, r1, #2
	movs r2, #0x8c
	lsls r2, r2, #6
	movs r3, #0
	str r3, [sp]
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #0xc]
	ldr r0, _0806FF20 @ =0x03000268
	adds r1, r2, r0
	movs r0, #0x96
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r0, [r1, #4]
	ldr r7, _0806FF24 @ =0xFFFFD800
	adds r7, r0, r7
	str r7, [sp, #8]
	movs r5, #0
	ldr r0, _0806FF28 @ =0x03000148
	adds r0, r0, r2
	mov sl, r0
	ldr r1, _0806FF2C @ =0x0300014C
	adds r1, r1, r2
	mov sb, r1
_0806FEEC:
	lsls r1, r5, #3
	mov r2, sl
	adds r0, r2, r1
	ldr r3, [sp, #4]
	str r3, [r0]
	add r1, sb
	ldr r7, [sp, #8]
	str r7, [r1]
	lsls r1, r5, #2
	ldr r2, [sp, #0xc]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r0, r2, r3
	adds r3, r0, r1
	adds r0, r5, #0
	subs r0, #0x10
	lsls r2, r0, #4
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806FF30
	adds r0, r2, #0
	subs r0, #0x10
	b _0806FF34
	.align 2, 0
_0806FF1C: .4byte sub_806FFCC
_0806FF20: .4byte 0x03000268
_0806FF24: .4byte 0xFFFFD800
_0806FF28: .4byte 0x03000148
_0806FF2C: .4byte 0x0300014C
_0806FF30:
	adds r0, r2, #0
	adds r0, #0x10
_0806FF34:
	movs r7, #0
	mov ip, r7
	movs r6, #0
	strh r0, [r3]
	ldr r0, [sp, #0xc]
	ldr r3, _0806FFC0 @ =0x0000020A
	adds r2, r0, r3
	adds r2, r2, r1
	movs r0, #2
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	ldr r7, _0806FFC4 @ =0xFFFFFE00
	adds r1, r7, #0
	subs r1, r1, r0
	movs r0, #1
	ands r0, r5
	lsls r0, r0, #6
	subs r1, r1, r0
	strh r1, [r2]
	movs r4, #7
	ands r4, r5
	adds r2, r4, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	ldr r1, [sp, #0xc]
	adds r3, r1, r0
	lsls r1, r2, #5
	mov r7, r8
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _0806FFC8 @ =0x000004D4
	strh r0, [r3, #0xc]
	strb r4, [r3, #0x1a]
	cmp r2, #5
	bls _0806FF88
	subs r0, r4, #6
	strb r0, [r3, #0x1a]
_0806FF88:
	strh r6, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r0, ip
	strb r0, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0806FEEC
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FFC0: .4byte 0x0000020A
_0806FFC4: .4byte 0xFFFFFE00
_0806FFC8: .4byte 0x000004D4

	thumb_func_start sub_806FFCC
sub_806FFCC: @ 0x0806FFCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _08070004 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08070008 @ =0x03000148
	adds r6, r0, r1
	adds r1, #0xc0
	adds r4, r0, r1
	adds r1, #0x60
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0807000C
	ldr r0, [r2]
	bl TaskDestroy
	b _08070126
	.align 2, 0
_08070004: .4byte gCurTask
_08070008: .4byte 0x03000148
_0807000C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0807001E
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0807001E
	b _08070126
_0807001E:
	movs r7, #0
	ldr r2, _08070134 @ =gCamera
	mov r8, r2
_08070024:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #8
	mov r1, sb
	adds r5, r1, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	adds r4, #2
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r4, #2
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08070024
	cmp r7, #0xf
	bhi _080700CE
	ldr r2, _08070134 @ =gCamera
_0807007C:
	movs r1, #7
	ands r1, r7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	adds r4, #2
	ldrh r0, [r4]
	adds r0, #8
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r4, #2
	adds r0, r5, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp]
	cmp r7, #0xf
	bls _0807007C
_080700CE:
	cmp r7, #0x17
	bhi _08070126
	ldr r2, _08070134 @ =gCamera
_080700D4:
	movs r1, #7
	ands r1, r7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	adds r4, #2
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r4, #2
	adds r0, r5, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp]
	cmp r7, #0x17
	bls _080700D4
_08070126:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070134: .4byte gCamera

	thumb_func_start sub_08070138
sub_08070138: @ 0x08070138
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	movs r0, #0x40
	bl VramMalloc
	adds r3, r4, #0
	adds r3, #0xc8
	str r0, [r3]
	movs r0, #0
	mov sb, r0
	movs r5, #0
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #1
	strh r0, [r4, #0x26]
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, _080701F4 @ =0xFFFFE800
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0xa4
	ldr r0, _080701F8 @ =0xFFFFE400
	str r0, [r2]
	adds r6, r4, #0
	adds r6, #0x98
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r6]
	movs r1, #0x9c
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r4, #4]
	ldr r1, [r2]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0xd0
	adds r4, #0xf8
	ldr r1, [r3]
	str r1, [r0]
	ldr r1, _080701FC @ =0x000004CB
	strh r1, [r0, #0xc]
	mov r1, sb
	strb r1, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	ldr r1, _08070200 @ =0x0000103E
	str r1, [r0, #8]
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _08070204 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	mov r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	strh r5, [r4]
	ldrh r1, [r0, #0x10]
	strh r1, [r4, #6]
	ldrh r1, [r0, #0x12]
	strh r1, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080701F4: .4byte 0xFFFFE800
_080701F8: .4byte 0xFFFFE400
_080701FC: .4byte 0x000004CB
_08070200: .4byte 0x0000103E
_08070204: .4byte gCamera

	thumb_func_start sub_8070208
sub_8070208: @ 0x08070208
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	cmp r0, #0x78
	beq _08070284
	cmp r0, #0x78
	bgt _0807022E
	cmp r0, #0x64
	beq _0807024A
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0x64
	bgt _08070224
	b _08070350
_08070224:
	cmp r0, #0x65
	beq _08070252
	cmp r0, #0x6e
	beq _08070262
	b _08070350
_0807022E:
	cmp r0, #0xd2
	beq _080702DE
	cmp r0, #0xd2
	bgt _08070240
	cmp r0, #0x82
	beq _0807029C
	cmp r0, #0xc8
	beq _080702CC
	b _0807034C
_08070240:
	cmp r0, #0xdc
	beq _080702F4
	cmp r0, #0xe6
	beq _0807031C
	b _0807034C
_0807024A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_806FAFC
_08070252:
	adds r0, r4, #0
	movs r1, #2
	bl sub_8071968
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x6e
	b _0807034A
_08070262:
	ldrh r0, [r4, #0x26]
	subs r0, #1
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _08070350
	adds r0, r4, #0
	movs r1, #0
	bl sub_8071968
	strh r6, [r4, #0x22]
	movs r0, #0x78
	strh r0, [r4, #0x24]
	bl sub_807A468
	b _08070350
_08070284:
	ldrh r0, [r4, #0x22]
	adds r0, #0x10
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0xff
	bls _08070350
	movs r0, #0x82
	strh r0, [r4, #0x24]
	b _08070350
_0807029C:
	ldrh r1, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080702AC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x22]
_080702AC:
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r0]
	ldr r2, _080702C8 @ =0xFFFFF800
	adds r5, r0, #0
	cmp r1, r2
	blt _08070350
	movs r0, #0
	strh r0, [r4, #0x24]
	b _08070350
	.align 2, 0
_080702C8: .4byte 0xFFFFF800
_080702CC:
	movs r0, #0x3c
	strh r0, [r4, #0x26]
	movs r0, #0xd2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_806FAFC
	b _0807034C
_080702DE:
	ldrh r0, [r4, #0x26]
	subs r0, #1
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0
	bne _08070350
	movs r0, #0xdc
	strh r0, [r4, #0x24]
	b _08070350
_080702F4:
	ldrh r0, [r4, #0x22]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, [r1]
	ldr r2, _08070314 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08070318 @ =0xFFFFE800
	adds r5, r1, #0
	cmp r0, r2
	bgt _08070350
	movs r0, #0xe6
	strh r0, [r4, #0x24]
	b _08070350
	.align 2, 0
_08070314: .4byte 0xFFFFFF00
_08070318: .4byte 0xFFFFE800
_0807031C:
	ldrh r0, [r4, #0x22]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r6, #0
	bne _08070350
	adds r0, r4, #0
	movs r1, #0
	bl sub_806FAFC
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _08070346
	movs r0, #1
	strh r0, [r4, #0x10]
	subs r0, #9
	str r0, [r4, #8]
	str r6, [r4, #0xc]
_08070346:
	movs r0, #0
	strb r0, [r4, #0x13]
_0807034A:
	strh r0, [r4, #0x24]
_0807034C:
	adds r5, r4, #0
	adds r5, #0xa0
_08070350:
	adds r2, r4, #0
	adds r2, #0x98
	ldr r0, [r4]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r1, r4, #0
	adds r1, #0xa4
	ldr r0, [r4, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070370
sub_08070370: @ 0x08070370
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xd0
	adds r5, r3, #0
	adds r5, #0xf8
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _080703CC @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrh r1, [r4, #0xc]
	ldr r0, _080703D0 @ =0x000004CB
	cmp r1, r0
	bne _080703BA
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _080703BA
	ldrh r0, [r3, #0x22]
	strh r0, [r5]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_080703BA:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080703CC: .4byte gCamera
_080703D0: .4byte 0x000004CB

	thumb_func_start sub_80703D4
sub_80703D4: @ 0x080703D4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08070400 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _080703F8
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _08070404
_080703F8:
	adds r0, r2, #0
	bl TaskDestroy
	b _08070448
	.align 2, 0
_08070400: .4byte gCurTask
_08070404:
	adds r0, r4, #0
	bl sub_8071034
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _08070442
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_08070442:
	ldr r0, [r6]
	bl sub_080711C8
_08070448:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08070450
sub_08070450: @ 0x08070450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r7, [r0]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r5, [r0]
	cmp r6, #1
	beq _08070568
	cmp r6, #1
	bgt _08070476
	cmp r6, #0
	beq _0807047E
	b _08070782
_08070476:
	cmp r6, #2
	bne _0807047C
	b _080706BC
_0807047C:
	b _08070782
_0807047E:
	strh r6, [r7, #0x28]
	movs r0, #0xa8
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	mov r2, sb
	str r0, [r2]
	adds r4, r7, #0
	adds r4, #0xac
	str r4, [sp]
	ldr r0, [r7, #4]
	ldr r1, _08070558 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r3, r7, r2
	movs r4, #0x96
	lsls r4, r4, #1
	adds r2, r7, r4
	str r5, [r3]
	ldr r0, _0807055C @ =0x000004CF
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r4, #0
	strb r4, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #4]
	ldr r0, _08070560 @ =0x0000103F
	str r0, [r3, #8]
	mov r4, sb
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _08070564 @ =gCamera
	mov sl, r1
	ldr r1, [r1]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp]
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r4, sl
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	strh r6, [r2]
	ldrh r0, [r3, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r3, r7, r1
	str r5, [r3]
	movs r0, #0x9a
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	movs r2, #0
	strb r2, [r3, #0x1a]
	subs r0, #0x10
	strh r0, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r4, #0x10
	strb r4, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r0, [r3, #0x20]
	ldr r0, [sp, #4]
	str r0, [r3, #8]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	mov r2, sl
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp]
	b _08070696
	.align 2, 0
_08070558: .4byte 0xFFFFE000
_0807055C: .4byte 0x000004CF
_08070560: .4byte 0x0000103F
_08070564: .4byte gCamera
_08070568:
	adds r0, r7, #0
	adds r0, #0xa8
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r1, [sp, #8]
	str r0, [r1]
	adds r2, r7, #0
	adds r2, #0xac
	str r2, [sp, #0xc]
	ldr r0, [r7, #4]
	ldr r4, _080706A8 @ =0xFFFFE000
	adds r0, r0, r4
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r3, r7, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r2, r7, r1
	str r5, [r3]
	ldr r0, _080706AC @ =0x000004D1
	strh r0, [r3, #0xc]
	movs r0, #4
	strb r0, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	movs r4, #0
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r1, [sp, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r4, _080706B0 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	movs r4, #0
	strh r4, [r2]
	ldrh r0, [r3, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r2, #0x80
	lsls r2, r2, #4
	adds r5, r5, r2
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r3, r7, r4
	str r5, [r3]
	ldr r0, _080706B4 @ =0x000004D2
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	movs r2, #0
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r4, #0x10
	strb r4, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r3, #8]
	ldr r4, [sp, #8]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r2, _080706B0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add r5, r8
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r3, r7, r0
	str r5, [r3]
	ldr r0, _080706B8 @ =0x000004D3
	strh r0, [r3, #0xc]
	movs r1, #0
	strb r1, [r3, #0x1a]
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r3, #0x14]
	movs r4, #0
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r3, #8]
	ldr r1, [sp, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r2, _080706B0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp, #0xc]
_08070696:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	b _08070782
	.align 2, 0
_080706A8: .4byte 0xFFFFE000
_080706AC: .4byte 0x000004D1
_080706B0: .4byte gCamera
_080706B4: .4byte 0x000004D2
_080706B8: .4byte 0x000004D3
_080706BC:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r3, r7, r0
	adds r1, r7, #0
	adds r1, #0xa8
	movs r2, #0xfa
	lsls r2, r2, #9
	str r2, [r1]
	adds r2, r7, #0
	adds r2, #0xac
	movs r4, #0
	str r4, [r2]
	str r5, [r3]
	ldr r0, _08070794 @ =0x000004CC
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r4, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r3, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r4, _08070798 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r5, r5, r0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r3, r7, r1
	adds r1, r7, #0
	adds r1, #0xb8
	movs r2, #0xfa
	lsls r2, r2, #9
	str r2, [r1]
	adds r2, r7, #0
	adds r2, #0xbc
	movs r0, #0
	str r0, [r2]
	str r5, [r3]
	ldr r0, _0807079C @ =0x000004CE
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	movs r0, #0
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
_08070782:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070794: .4byte 0x000004CC
_08070798: .4byte gCamera
_0807079C: .4byte 0x000004CE

	thumb_func_start sub_80707A0
sub_80707A0: @ 0x080707A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r2, [r6, #0x40]
	mov sl, r2
	ldrh r1, [r5, #6]
	movs r2, #0x96
	lsls r2, r2, #1
	cmp r1, r2
	bne _080707CA
	b _080708EC
_080707CA:
	cmp r1, r2
	bgt _080707EA
	cmp r1, #0x64
	beq _08070874
	cmp r1, #0x64
	bgt _080707E0
	cmp r1, #0
	beq _08070822
	cmp r1, #0xa
	beq _0807082A
	b _08070AAC
_080707E0:
	cmp r1, #0xc8
	beq _08070898
	cmp r1, #0xd2
	beq _080708AE
	b _08070AAC
_080707EA:
	movs r2, #0xd2
	lsls r2, r2, #1
	cmp r1, r2
	bne _080707F4
	b _080709FC
_080707F4:
	cmp r1, r2
	bgt _0807080C
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070802
	b _080709B0
_08070802:
	adds r0, #0xa
	cmp r1, r0
	bne _0807080A
	b _080709D0
_0807080A:
	b _08070AAC
_0807080C:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070816
	b _08070A54
_08070816:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08070820
	b _08070AA4
_08070820:
	b _08070AAC
_08070822:
	movs r0, #0x3c
	strh r0, [r5, #8]
	movs r0, #0xa
	b _08070AAA
_0807082A:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08070838
	b _08070AAC
_08070838:
	mov r3, sb
	strh r3, [r5, #0xa]
	adds r1, r6, #0
	adds r1, #0xa8
	ldr r0, [r6]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r6, #4]
	ldr r2, _08070868 @ =0xFFFFE400
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb0
	mov r3, sb
	str r3, [r0]
	adds r1, #8
	ldr r0, _0807086C @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0x64
	strh r0, [r5, #6]
	ldr r0, _08070870 @ =0x0000022A
	bl sub_80BA57C
	b _08070AAC
	.align 2, 0
_08070868: .4byte 0xFFFFE400
_0807086C: .4byte 0xFFFFFC00
_08070870: .4byte 0x0000022A
_08070874:
	adds r2, r6, #0
	adds r2, #0xac
	adds r1, r6, #0
	adds r1, #0xb4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	movs r1, #0x28
	rsbs r1, r1, #0
	cmp r0, r1
	blt _08070890
	b _08070AAC
_08070890:
	movs r0, #0xb4
	strh r0, [r5, #8]
	movs r0, #0xc8
	b _08070AAA
_08070898:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080708A6
	b _08070AB2
_080708A6:
	movs r0, #0xa
	strh r0, [r5, #8]
	movs r0, #0xd2
	b _08070AAA
_080708AE:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080708BC
	b _08070AAC
_080708BC:
	ldr r0, _080708E8 @ =0x000004CC
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r1, r6, #0
	adds r1, #0xa8
	adds r0, r6, #0
	adds r0, #0xb8
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1]
	adds r1, #8
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1]
	strh r2, [r5, #6]
	b _08070AAC
	.align 2, 0
_080708E8: .4byte 0x000004CC
_080708EC:
	adds r7, r6, #0
	adds r7, #0xac
	adds r1, r6, #0
	adds r1, #0xb4
	ldr r0, [r7]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r7]
	asrs r0, r0, #8
	movs r1, #0xa8
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	mov r2, sb
	str r2, [sp]
	ldr r2, _08070998 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	blt _0807092C
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r1, _0807099C @ =gCamera
	ldr r1, [r1, #0x14]
	cmp r0, r1
	bgt _0807092C
	b _08070AAC
_0807092C:
	lsls r1, r2, #8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	movs r2, #0
	ldr r0, _080709A0 @ =0x000004CD
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r4, r6, r3
	adds r1, r6, #0
	adds r1, #0xb8
	mov r3, r8
	ldr r0, [r3]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r7]
	ldr r3, _080709A4 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _080709A8 @ =0x00000506
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
	ldr r0, _080709AC @ =0x0000022B
	bl sub_80BA57C
	movs r0, #0x22
	strh r0, [r5, #8]
	movs r0, #0xc8
	lsls r0, r0, #1
	b _08070AAA
	.align 2, 0
_08070998: .4byte sub_805217C
_0807099C: .4byte gCamera
_080709A0: .4byte 0x000004CD
_080709A4: .4byte 0xFFFFF600
_080709A8: .4byte 0x00000506
_080709AC: .4byte 0x0000022B
_080709B0:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070AAC
	adds r1, r6, #0
	adds r1, #0xa8
	movs r0, #0xfa
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #8]
	movs r0, #0xcd
	lsls r0, r0, #1
	b _08070AAA
_080709D0:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070AAC
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, _080709F8 @ =0x0000050B
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x64
	strh r0, [r5, #8]
	strh r2, [r5, #6]
	b _08070AAC
	.align 2, 0
_080709F8: .4byte 0x0000050B
_080709FC:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070AAC
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, _08070A50 @ =0x0000050A
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0xb8
	ldr r1, [r6]
	ldr r0, [r0]
	adds r2, r6, #0
	adds r2, #0xb0
	subs r0, r1, r0
	cmp r0, #0
	bge _08070A2E
	adds r0, #0x3f
_08070A2E:
	asrs r0, r0, #6
	str r0, [r2]
	adds r1, r6, #0
	adds r1, #0xac
	adds r0, r6, #0
	adds r0, #0xbc
	ldr r0, [r0]
	str r0, [r1]
	mov r2, sb
	strh r2, [r5, #0xa]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r5, #6]
	movs r0, #0x74
	bl sub_80BA57C
	b _08070AAC
	.align 2, 0
_08070A50: .4byte 0x0000050A
_08070A54:
	ldr r1, _08070AA0 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	cmp r0, #0
	bge _08070A6C
	adds r0, #0x3f
_08070A6C:
	asrs r1, r0, #6
	adds r2, r6, #0
	adds r2, #0xbc
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	subs r0, r0, r1
	str r0, [r2]
	subs r2, #4
	adds r1, r6, #0
	adds r1, #0xb0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r0, [r5, #0xa]
	adds r0, #8
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08070AAC
	movs r0, #0xfa
	lsls r0, r0, #2
	b _08070AAA
	.align 2, 0
_08070AA0: .4byte gSineTable
_08070AA4:
	mov r0, sb
	strh r0, [r5, #4]
	ldr r0, _08070ACC @ =0x000003F2
_08070AAA:
	strh r0, [r5, #6]
_08070AAC:
	mov r1, sb
	cmp r1, #0
	beq _08070AF8
_08070AB2:
	mov r3, sl
	ldr r2, [r3, #0x10]
	asrs r1, r2, #8
	movs r0, #0xa8
	lsls r0, r0, #3
	cmp r1, r0
	bgt _08070AD0
	adds r1, r6, #0
	adds r1, #0xb8
	movs r0, #0xa8
	lsls r0, r0, #0xb
	str r0, [r1]
	b _08070AEE
	.align 2, 0
_08070ACC: .4byte 0x000003F2
_08070AD0:
	ldr r0, _08070AE4 @ =0x0000063F
	cmp r1, r0
	ble _08070AE8
	adds r1, r6, #0
	adds r1, #0xb8
	movs r0, #0xc8
	lsls r0, r0, #0xb
	str r0, [r1]
	b _08070AEE
	.align 2, 0
_08070AE4: .4byte 0x0000063F
_08070AE8:
	adds r0, r6, #0
	adds r0, #0xb8
	str r2, [r0]
_08070AEE:
	adds r1, r6, #0
	adds r1, #0xbc
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r1]
_08070AF8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08070B08
sub_08070B08: @ 0x08070B08
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r5, #6]
	cmp r1, #0xe6
	bne _08070B18
	b _08070D38
_08070B18:
	cmp r1, #0xe6
	bgt _08070B46
	cmp r1, #0x64
	beq _08070BBC
	cmp r1, #0x64
	bgt _08070B2E
	cmp r1, #0
	beq _08070B8C
	cmp r1, #0xa
	beq _08070B96
	b _08071028
_08070B2E:
	cmp r1, #0xd2
	bne _08070B34
	b _08070C74
_08070B34:
	cmp r1, #0xd2
	bgt _08070B3E
	cmp r1, #0xc8
	beq _08070BF4
	b _08071028
_08070B3E:
	cmp r1, #0xdc
	bne _08070B44
	b _08070CD8
_08070B44:
	b _08071028
_08070B46:
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070B50
	b _08070F0C
_08070B50:
	cmp r1, r0
	bgt _08070B66
	subs r0, #0x64
	cmp r1, r0
	bne _08070B5C
	b _08070D80
_08070B5C:
	adds r0, #0x32
	cmp r1, r0
	bne _08070B64
	b _08070E20
_08070B64:
	b _08071028
_08070B66:
	movs r2, #0xfa
	lsls r2, r2, #2
	cmp r1, r2
	bne _08070B70
	b _08071020
_08070B70:
	cmp r1, r2
	bgt _08070B80
	movs r0, #0xcd
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070B7E
	b _08070F58
_08070B7E:
	b _08071028
_08070B80:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08070B8A
	b _08071010
_08070B8A:
	b _08071028
_08070B8C:
	movs r0, #0x3c
	strh r0, [r5, #8]
	strh r1, [r4, #0x28]
	movs r0, #0xa
	b _08071026
_08070B96:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08070BA6
	b _08071028
_08070BA6:
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r0, _08070BB8 @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0x64
	b _08071026
	.align 2, 0
_08070BB8: .4byte 0xFFFFFC00
_08070BBC:
	adds r2, r4, #0
	adds r2, #0xac
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r2]
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, [r4, #4]
	ldr r2, _08070BE8 @ =0xFFFFB000
	adds r0, r0, r2
	cmp r1, r0
	ble _08070BD8
	b _08071028
_08070BD8:
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, _08070BEC @ =0xFFFFFF00
	str r0, [r1]
	ldr r0, _08070BF0 @ =0xFFFFFD00
	str r0, [r3]
	movs r0, #0xc8
	b _08071026
	.align 2, 0
_08070BE8: .4byte 0xFFFFB000
_08070BEC: .4byte 0xFFFFFF00
_08070BF0: .4byte 0xFFFFFD00
_08070BF4:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r0, [r2]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r3]
	adds r1, #0x20
	str r1, [r3]
	adds r2, #4
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070C64 @ =0x0000ADFF
	cmp r0, r1
	ble _08070C4A
	movs r0, #0xae
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, _08070C68 @ =0xFFFFFF00
	str r0, [r6]
	ldr r0, _08070C6C @ =0xFFFFFD00
	str r0, [r3]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl sub_80BA57C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
	movs r0, #0xd2
	strh r0, [r5, #6]
_08070C4A:
	ldrh r1, [r4, #0x28]
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	bne _08070C56
	b _08071028
_08070C56:
	subs r0, r1, #2
	ldr r2, _08070C70 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	b _08071028
	.align 2, 0
_08070C64: .4byte 0x0000ADFF
_08070C68: .4byte 0xFFFFFF00
_08070C6C: .4byte 0xFFFFFD00
_08070C70: .4byte 0x000003FF
_08070C74:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r0, [r2]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r3]
	adds r1, #0x20
	str r1, [r3]
	adds r2, #4
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070CCC @ =0x0000ADFF
	cmp r0, r1
	bgt _08070C9E
	b _08071028
_08070C9E:
	movs r0, #0xae
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, _08070CD0 @ =0xFFFFFF00
	str r0, [r6]
	ldr r0, _08070CD4 @ =0xFFFFFE00
	str r0, [r3]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl sub_80BA57C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
	movs r0, #0xdc
	b _08071026
	.align 2, 0
_08070CCC: .4byte 0x0000ADFF
_08070CD0: .4byte 0xFFFFFF00
_08070CD4: .4byte 0xFFFFFE00
_08070CD8:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r0, [r2]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r3]
	adds r1, #0x20
	str r1, [r3]
	adds r2, #4
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070D34 @ =0x0000ADFF
	cmp r0, r1
	bgt _08070D02
	b _08071028
_08070D02:
	movs r0, #0xae
	lsls r0, r0, #8
	str r0, [r2]
	movs r0, #0
	str r0, [r6]
	str r0, [r3]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl sub_80BA57C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x80
	movs r2, #0
	bl sub_805256C
	movs r0, #0x3c
	strh r0, [r5, #8]
	movs r0, #0xe6
	b _08071026
	.align 2, 0
_08070D34: .4byte 0x0000ADFF
_08070D38:
	ldrh r0, [r5, #8]
	subs r0, #1
	movs r1, #0
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08070D4A
	b _08071028
_08070D4A:
	strh r0, [r5, #0xa]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x28]
	ldrh r1, [r4, #0x20]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08070D6C
	movs r0, #0x96
	lsls r0, r0, #1
	b _08070D70
_08070D6C:
	movs r0, #0xaf
	lsls r0, r0, #1
_08070D70:
	strh r0, [r5, #6]
	ldr r0, _08070D7C @ =0x0000022D
	bl sub_80BA57C
	b _08071028
	.align 2, 0
_08070D7C: .4byte 0x0000022D
_08070D80:
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r1, _08070DB8 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _08070D96
	adds r2, #0x3f
_08070D96:
	asrs r2, r2, #6
	str r2, [r3]
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r6, r1, #0
	adds r3, r0, #0
	cmp r2, #0
	beq _08070DBC
	cmp r2, #1
	beq _08070DD8
	b _08070DF0
	.align 2, 0
_08070DB8: .4byte gSineTable
_08070DBC:
	ldrh r0, [r4, #0x28]
	subs r0, #4
	ldr r2, _08070DD4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070DF0
	movs r0, #1
	b _08070DEE
	.align 2, 0
_08070DD4: .4byte 0x000003FF
_08070DD8:
	ldrh r0, [r4, #0x28]
	adds r0, #4
	ldr r2, _08070E18 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xe0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070DF0
	movs r0, #2
_08070DEE:
	strb r0, [r3]
_08070DF0:
	ldrh r0, [r5, #0xa]
	adds r0, #8
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	ldr r1, _08070E1C @ =0x01FF0000
	cmp r0, r1
	bls _08070ED2
	movs r0, #0
	strh r0, [r5, #0xa]
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08070EB6
	b _08070ECC
	.align 2, 0
_08070E18: .4byte 0x000003FF
_08070E1C: .4byte 0x01FF0000
_08070E20:
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r1, _08070E58 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _08070E36
	adds r2, #0x3f
_08070E36:
	asrs r2, r2, #6
	str r2, [r3]
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r6, r1, #0
	adds r3, r0, #0
	cmp r2, #0
	beq _08070E5C
	cmp r2, #1
	beq _08070E78
	b _08070E90
	.align 2, 0
_08070E58: .4byte gSineTable
_08070E5C:
	ldrh r0, [r4, #0x28]
	subs r0, #8
	ldr r2, _08070E74 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070E90
	movs r0, #1
	b _08070E8E
	.align 2, 0
_08070E74: .4byte 0x000003FF
_08070E78:
	ldrh r0, [r4, #0x28]
	adds r0, #8
	ldr r2, _08070EC4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xe0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070E90
	movs r0, #2
_08070E8E:
	strb r0, [r3]
_08070E90:
	ldrh r0, [r5, #0xa]
	adds r0, #0x10
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	ldr r1, _08070EC8 @ =0x01FF0000
	cmp r0, r1
	bls _08070ED2
	movs r0, #0
	strh r0, [r5, #0xa]
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08070ECC
_08070EB6:
	movs r0, #0x3c
	strh r0, [r5, #8]
	movs r0, #0xc8
	lsls r0, r0, #1
	strh r0, [r5, #6]
	b _08070ED2
	.align 2, 0
_08070EC4: .4byte 0x000003FF
_08070EC8: .4byte 0x01FF0000
_08070ECC:
	ldr r0, _08070F08 @ =0x0000022D
	bl sub_80BA57C
_08070ED2:
	ldrh r0, [r5, #0xa]
	movs r3, #0x7f
	ands r3, r0
	cmp r3, #0
	beq _08070EDE
	b _08071028
_08070EDE:
	ldr r1, [r6]
	asrs r1, r1, #8
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	subs r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #8
	movs r3, #0
	bl sub_8079758
	b _08071028
	.align 2, 0
_08070F08: .4byte 0x0000022D
_08070F0C:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08070F1C
	b _08071028
_08070F1C:
	strh r0, [r5, #0xa]
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	ldr r1, _08070F54 @ =0xFFFFF800
	adds r0, r0, r1
	ldr r1, [r4]
	adds r2, r4, #0
	adds r2, #0xb0
	subs r0, r1, r0
	cmp r0, #0
	bge _08070F3E
	adds r0, #0x3f
_08070F3E:
	asrs r0, r0, #6
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0xbc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xcd
	lsls r0, r0, #1
	b _08071026
	.align 2, 0
_08070F54: .4byte 0xFFFFF800
_08070F58:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070FA8 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	cmp r0, #0
	bge _08070F80
	adds r0, #0x3f
_08070F80:
	asrs r1, r0, #6
	adds r2, r4, #0
	adds r2, #0xac
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	subs r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	cmp r0, #1
	beq _08070FD4
	cmp r0, #1
	bgt _08070FAC
	cmp r0, #0
	beq _08070FB4
	ldrh r2, [r5, #0xa]
	b _08070FF6
	.align 2, 0
_08070FA8: .4byte gSineTable
_08070FAC:
	cmp r0, #2
	beq _08070FE0
	ldrh r2, [r5, #0xa]
	b _08070FF6
_08070FB4:
	ldrh r0, [r4, #0x28]
	subs r0, #0x10
	ldr r2, _08070FD0 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #2
	ldrh r2, [r5, #0xa]
	cmp r0, r1
	bne _08070FF6
	movs r0, #2
	b _08070FF4
	.align 2, 0
_08070FD0: .4byte 0x000003FF
_08070FD4:
	ldrh r0, [r5, #0xa]
	adds r2, r0, #0
	cmp r2, #0xff
	bls _08070FF6
	movs r0, #2
	b _08070FF4
_08070FE0:
	ldrh r0, [r4, #0x28]
	adds r0, #0x10
	ldr r2, _0807100C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	ldrh r2, [r5, #0xa]
	cmp r0, #0
	bne _08070FF6
	movs r0, #0xa
_08070FF4:
	strb r0, [r3]
_08070FF6:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08071028
	movs r0, #0xfa
	lsls r0, r0, #2
	b _08071026
	.align 2, 0
_0807100C: .4byte 0x000003FF
_08071010:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08071028
	strh r2, [r5, #6]
	b _08071028
_08071020:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _08071030 @ =0x000003F2
_08071026:
	strh r0, [r5, #6]
_08071028:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071030: .4byte 0x000003F2

	thumb_func_start sub_8071034
sub_8071034: @ 0x08071034
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r6, #0
	ldr r0, _08071068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r4, #0x82
	lsls r4, r4, #1
	add r4, ip
	ldrh r1, [r3, #6]
	cmp r1, #0xc8
	bne _08071054
	b _08071160
_08071054:
	cmp r1, #0xc8
	bgt _08071072
	cmp r1, #0xa
	beq _080710A8
	cmp r1, #0xa
	bgt _0807106C
	cmp r1, #0
	beq _08071094
	b _080711A6
	.align 2, 0
_08071068: .4byte gCurTask
_0807106C:
	cmp r1, #0x64
	beq _080710C8
	b _080711A6
_08071072:
	movs r2, #0x96
	lsls r2, r2, #1
	cmp r1, r2
	bne _0807107C
	b _08071184
_0807107C:
	cmp r1, r2
	bgt _08071088
	cmp r1, #0xd2
	bne _08071086
	b _08071174
_08071086:
	b _080711A6
_08071088:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08071092
	b _080711A0
_08071092:
	b _080711A6
_08071094:
	strh r6, [r3, #8]
	strh r6, [r3, #0xa]
	ldr r0, _080710A4 @ =0xFFFFE000
	str r0, [r3, #0xc]
	movs r0, #0x18
	strh r0, [r3, #0x10]
	movs r0, #0xa
	b _080711A4
	.align 2, 0
_080710A4: .4byte 0xFFFFE000
_080710A8:
	ldr r0, [r3, #0xc]
	ldr r1, _080710C0 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r3, #0xc]
	ldr r1, _080710C4 @ =0xFFFF9C00
	cmp r0, r1
	ble _080710B8
	b _080711A6
_080710B8:
	str r1, [r3, #0xc]
	movs r0, #0x64
	b _080711A4
	.align 2, 0
_080710C0: .4byte 0xFFFFF800
_080710C4: .4byte 0xFFFF9C00
_080710C8:
	ldr r1, _08071120 @ =gSineTable
	ldrh r2, [r3, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r5, #0x10
	ldrsh r0, [r3, r5]
	muls r1, r0, r1
	cmp r1, #0
	bge _080710E0
	adds r1, #0x3f
_080710E0:
	asrs r6, r1, #6
	adds r0, r2, #0
	subs r0, #0x20
	ldr r2, _08071124 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3, #0xa]
	cmp r0, #0
	bne _08071102
	ldrh r0, [r3, #0x10]
	subs r0, #8
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08071102
	movs r0, #0xc8
	strh r0, [r3, #6]
_08071102:
	ldr r5, _08071128 @ =0x000004D1
	strh r5, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1a]
	ldrh r2, [r3, #0xa]
	adds r0, r2, #0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bhi _0807112C
	movs r0, #1
	strb r0, [r4, #0x1a]
	b _080711A6
	.align 2, 0
_08071120: .4byte gSineTable
_08071124: .4byte 0x000003FF
_08071128: .4byte 0x000004D1
_0807112C:
	ldr r1, _08071144 @ =0xFFFFFEBF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0xbf
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08071148
	strh r5, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	b _080711A6
	.align 2, 0
_08071144: .4byte 0xFFFFFEBF
_08071148:
	ldr r1, _0807115C @ =0xFFFFFD40
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bhi _080711A6
	strh r5, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	b _080711A6
	.align 2, 0
_0807115C: .4byte 0xFFFFFD40
_08071160:
	movs r1, #0
	ldr r0, _08071170 @ =0x000004D1
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0x3c
	strh r0, [r3, #8]
	movs r0, #0xd2
	b _080711A4
	.align 2, 0
_08071170: .4byte 0x000004D1
_08071174:
	ldrh r0, [r3, #8]
	subs r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080711A6
	strh r2, [r3, #6]
	b _080711A6
_08071184:
	ldr r0, [r3, #0xc]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r3, #0xc]
	ldr r1, _0807119C @ =0xFFFFE000
	cmp r0, r1
	blt _080711A6
	str r1, [r3, #0xc]
	movs r0, #0xfa
	lsls r0, r0, #2
	b _080711A4
	.align 2, 0
_0807119C: .4byte 0xFFFFE000
_080711A0:
	strh r6, [r3, #4]
	ldr r0, _080711C4 @ =0x000003F2
_080711A4:
	strh r0, [r3, #6]
_080711A6:
	mov r1, ip
	adds r1, #0xa8
	mov r5, ip
	ldr r0, [r5]
	str r0, [r1]
	mov r2, ip
	adds r2, #0xac
	ldr r0, [r5, #4]
	ldr r1, [r3, #0xc]
	adds r0, r0, r1
	adds r0, r0, r6
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080711C4: .4byte 0x000003F2

	thumb_func_start sub_080711C8
sub_080711C8: @ 0x080711C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	movs r7, #0x82
	lsls r7, r7, #1
	add r7, r8
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	bne _080711EA
	b _08071308
_080711EA:
	cmp r0, #1
	bgt _080711F4
	cmp r0, #0
	beq _080711FC
	b _080713FC
_080711F4:
	cmp r0, #2
	bne _080711FA
	b _080713A4
_080711FA:
	b _080713FC
_080711FC:
	mov r5, r8
	adds r5, #0xa8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _080712F4 @ =gCamera
	mov sl, r1
	ldr r1, [r1]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r3, sl
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	mov r1, r8
	ldrh r0, [r1, #0x28]
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_80BF8F4
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r2, r8
	ldr r1, [r2, #4]
	ldr r3, _080712F8 @ =0xFFFFE000
	adds r0, r1, r3
	ldr r4, [r4]
	cmp r4, r0
	bne _08071250
	b _080713FC
_08071250:
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	ldr r0, [r2]
	mov sb, r0
	ldr r2, _080712FC @ =0xFFFFC800
	adds r2, r2, r1
	mov r8, r2
	ldr r0, [r5]
	mov r3, sb
	subs r6, r0, r3
	subs r5, r4, r2
	lsls r0, r5, #8
	asrs r0, r0, #0x10
	lsls r1, r6, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r2, r1, r0
	adds r0, r2, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	asrs r2, r0, #3
	ldr r1, _08071300 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712AA
	ldr r3, _08071304 @ =0x00003FFF
	adds r0, r0, r3
_080712AA:
	asrs r6, r0, #0xe
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712BE
	ldr r2, _08071304 @ =0x00003FFF
	adds r0, r0, r2
_080712BE:
	asrs r5, r0, #0xe
	movs r4, #0
	mov r2, sl
_080712C4:
	mov r3, sb
	asrs r0, r3, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	add sb, r6
	add r8, r5
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	cmp r4, #7
	bls _080712C4
	b _080713FC
	.align 2, 0
_080712F4: .4byte gCamera
_080712F8: .4byte 0xFFFFE000
_080712FC: .4byte 0xFFFFC800
_08071300: .4byte gSineTable
_08071304: .4byte 0x00003FFF
_08071308:
	movs r2, #0xa8
	add r2, r8
	mov sb, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r5, _080713A0 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, [r4]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r1, r4, r3
	mov r2, r8
	ldr r0, [r2, #4]
	subs r6, r0, r1
	adds r0, r6, #0
	movs r1, #5
	bl __divsi3
	adds r6, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r2, r4, r3
	movs r4, #0
_08071354:
	cmp r4, #1
	bhi _08071372
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	adds r0, r7, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r2, [sp]
_08071372:
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	asrs r0, r2, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	adds r2, r2, r6
	cmp r4, #4
	bls _08071354
	b _080713FC
	.align 2, 0
_080713A0: .4byte gCamera
_080713A4:
	mov r0, r8
	adds r0, #0xa8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r4, _0807140C @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xac
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	mov r0, r8
	adds r0, #0xb8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xbc
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080713FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807140C: .4byte gCamera

	thumb_func_start sub_8071410
sub_8071410: @ 0x08071410
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x19
	ldrsb r5, [r4, r5]
	cmp r5, #0
	bne _080714B6
	ldr r0, _08071440 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0806F2B8
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071448
	ldr r0, _08071444 @ =0x0000022E
	b _0807144A
	.align 2, 0
_08071440: .4byte 0x000004D5
_08071444: .4byte 0x0000022E
_08071448:
	ldr r0, _08071480 @ =0x00000229
_0807144A:
	bl sub_80BA57C
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _0807146C
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _08071484 @ =0x0000066F
	cmp r0, r1
	ble _0807146C
	movs r0, #3
	strh r0, [r4, #0x10]
_0807146C:
	ldr r0, _08071488 @ =gStageData
	ldrb r1, [r0, #1]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807148C
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _08071492
	.align 2, 0
_08071480: .4byte 0x00000229
_08071484: .4byte 0x0000066F
_08071488: .4byte gStageData
_0807148C:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_08071492:
	adds r0, r0, r1
	ldr r1, _080714BC @ =0x000677FF
	cmp r0, r1
	ble _080714A2
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_080714A2:
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _080714B6
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _080714B6
	ldrb r1, [r4, #0x18]
	movs r0, #3
	bl sub_8027674
_080714B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080714BC: .4byte 0x000677FF

	thumb_func_start sub_080714C0
sub_080714C0: @ 0x080714C0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0807158A
	ldr r0, _080714F8 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0807150A
	cmp r0, #1
	bgt _080714FC
	cmp r0, #0
	beq _08071502
	b _0807151E
	.align 2, 0
_080714F8: .4byte 0x000004D5
_080714FC:
	cmp r0, #2
	beq _08071518
	b _0807151E
_08071502:
	adds r0, r4, #0
	bl sub_08071720
	b _0807151E
_0807150A:
	adds r0, r4, #0
	bl sub_08071764
	adds r0, r4, #0
	bl sub_0806FE98
	b _0807151E
_08071518:
	adds r0, r4, #0
	bl sub_080717A8
_0807151E:
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071534
	ldr r0, _08071530 @ =0x0000022E
	b _08071536
	.align 2, 0
_08071530: .4byte 0x0000022E
_08071534:
	ldr r0, _08071568 @ =0x00000229
_08071536:
	bl sub_80BA57C
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _08071558
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _0807156C @ =0x0000066F
	cmp r0, r1
	ble _08071558
	movs r0, #3
	strh r0, [r4, #0x10]
_08071558:
	ldr r0, _08071570 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08071574
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0807157A
	.align 2, 0
_08071568: .4byte 0x00000229
_0807156C: .4byte 0x0000066F
_08071570: .4byte gStageData
_08071574:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_0807157A:
	adds r0, r0, r1
	ldr r1, _08071590 @ =0x000677FF
	cmp r0, r1
	ble _0807158A
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_0807158A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071590: .4byte 0x000677FF

	thumb_func_start sub_08071594
sub_08071594: @ 0x08071594
	push {r4, r5, r6, lr}
	ldr r1, _080715C0 @ =gStageData
	adds r6, r1, #0
	adds r6, #0x88
	ldr r1, [r6]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldrb r1, [r0, #2]
	movs r2, #0x7f
	ands r2, r1
	ldrb r1, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r2, #1
	beq _080715C4
	cmp r2, #3
	beq _08071604
	b _0807160E
	.align 2, 0
_080715C0: .4byte gStageData
_080715C4:
	lsls r0, r1, #8
	str r0, [r5]
	movs r2, #0
	strb r2, [r5, #0x1c]
	ldr r1, [r5, #0x40]
	ldr r0, [r1, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r0, r4
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r1, #4]
	strh r2, [r1, #0x1c]
	ldr r0, [r5, #0x40]
	strh r2, [r0, #0x18]
	ldr r1, [r5, #0x44]
	ldr r0, [r1, #4]
	orrs r0, r4
	ands r0, r3
	str r0, [r1, #4]
	strh r2, [r1, #0x1c]
	ldr r0, [r5, #0x44]
	strh r2, [r0, #0x18]
	strh r2, [r5, #0x2c]
	ldr r1, [r6]
	ldr r0, _08071600 @ =sub_806F3A0
	str r0, [r1, #8]
	b _0807160E
	.align 2, 0
_08071600: .4byte sub_806F3A0
_08071604:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_080714C0
_0807160E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8071614
sub_8071614: @ 0x08071614
	push {r4, r5, lr}
	ldr r4, _08071634 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x14]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08071638
	adds r0, r2, #0
	bl TaskDestroy
	b _08071658
	.align 2, 0
_08071634: .4byte gCurTask
_08071638:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807164C
	ldr r1, [r4]
	ldr r0, _08071648 @ =sub_806EC50
	b _08071650
	.align 2, 0
_08071648: .4byte sub_806EC50
_0807164C:
	ldr r1, [r4]
	ldr r0, _08071660 @ =sub_806ED00
_08071650:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_0806FA0C
_08071658:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071660: .4byte sub_806ED00

	thumb_func_start sub_8071664
sub_8071664: @ 0x08071664
	push {lr}
	ldr r0, _08071690 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_0806FA0C
	pop {r0}
	bx r0
	.align 2, 0
_08071690: .4byte gCurTask

	thumb_func_start sub_8071694
sub_8071694: @ 0x08071694
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _080716A8
	bl VramFree
_080716A8:
	ldr r1, _080716D4 @ =0x030000C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080716B6
	bl VramFree
_080716B6:
	ldr r1, _080716D8 @ =0x030000CC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080716C4
	bl VramFree
_080716C4:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _080716CE
	bl VramFree
_080716CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080716D4: .4byte 0x030000C8
_080716D8: .4byte 0x030000CC

	thumb_func_start sub_80716DC
sub_80716DC: @ 0x080716DC
	push {r4, lr}
	adds r4, r0, #0
	strb r1, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _08071700
	cmp r0, #1
	bgt _080716F2
	cmp r0, #0
	beq _080716F8
	b _08071714
_080716F2:
	cmp r0, #2
	beq _0807170E
	b _08071714
_080716F8:
	adds r0, r4, #0
	bl sub_08071720
	b _08071714
_08071700:
	adds r0, r4, #0
	bl sub_08071764
	adds r0, r4, #0
	bl sub_0806FE98
	b _08071714
_0807170E:
	adds r0, r4, #0
	bl sub_080717A8
_08071714:
	movs r0, #1
	strb r0, [r4, #0x13]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071720
sub_08071720: @ 0x08071720
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807175C @ =sub_80717EC
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _08071760 @ =sub_80718DC
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #0
	bl sub_08070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807175C: .4byte sub_80717EC
_08071760: .4byte sub_80718DC

	thumb_func_start sub_08071764
sub_08071764: @ 0x08071764
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080717A0 @ =sub_80703D4
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080717A4 @ =sub_80718DC
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	bl sub_08070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080717A0: .4byte sub_80703D4
_080717A4: .4byte sub_80718DC

	thumb_func_start sub_080717A8
sub_080717A8: @ 0x080717A8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080717E4 @ =sub_8071864
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080717E8 @ =sub_80718DC
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #2
	bl sub_08070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080717E4: .4byte sub_8071864
_080717E8: .4byte sub_80718DC

	thumb_func_start sub_80717EC
sub_80717EC: @ 0x080717EC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08071818 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08071810
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0807181C
_08071810:
	adds r0, r2, #0
	bl TaskDestroy
	b _0807185C
	.align 2, 0
_08071818: .4byte gCurTask
_0807181C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08070B08
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r0, [r6]
	bl sub_080711C8
_0807185C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8071864
sub_8071864: @ 0x08071864
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08071890 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08071888
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _08071894
_08071888:
	adds r0, r2, #0
	bl TaskDestroy
	b _080718D4
	.align 2, 0
_08071890: .4byte gCurTask
_08071894:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80707A0
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r0, [r6]
	bl sub_080711C8
_080718D4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80718DC
sub_80718DC: @ 0x080718DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	beq _080718F2
	movs r0, #0
	b _080718F4
_080718F2:
	movs r0, #0xc8
_080718F4:
	strh r0, [r1, #0x24]
	pop {r0}
	bx r0
	.align 2, 0
_080718FC:
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8071904
sub_8071904: @ 0x08071904
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2, #0x10]
	cmp r0, r1
	beq _08071962
	movs r4, #0
	movs r3, #0
	strh r1, [r2, #0x10]
	ldrh r0, [r2, #0x10]
	cmp r0, #1
	beq _08071938
	cmp r0, #1
	bgt _08071928
	cmp r0, #0
	beq _08071932
	b _08071962
_08071928:
	cmp r0, #2
	beq _0807193E
	cmp r0, #4
	beq _08071958
	b _08071962
_08071932:
	strb r4, [r2, #0x1a]
	str r3, [r2, #8]
	b _08071960
_08071938:
	movs r0, #8
	rsbs r0, r0, #0
	b _0807195E
_0807193E:
	movs r0, #0x80
	str r0, [r2, #8]
	str r3, [r2, #0xc]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, _08071954 @ =0x0000066F
	cmp r0, r1
	ble _08071962
	movs r0, #3
	strh r0, [r2, #0x10]
	b _08071962
	.align 2, 0
_08071954: .4byte 0x0000066F
_08071958:
	strb r4, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #4
_0807195E:
	str r0, [r2, #8]
_08071960:
	str r3, [r2, #0xc]
_08071962:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8071968
sub_8071968: @ 0x08071968
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r0, #0
	adds r2, #0xd0
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r2, #8]
	cmp r1, #1
	beq _080719A0
	cmp r1, #1
	bgt _08071986
	cmp r1, #0
	beq _0807198C
	b _080719A6
_08071986:
	cmp r1, #2
	beq _080719A0
	b _080719A6
_0807198C:
	movs r1, #0
	ldr r0, _0807199C @ =0x000004CB
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0x3e
	orrs r0, r3
	str r0, [r2, #8]
	b _080719A6
	.align 2, 0
_0807199C: .4byte 0x000004CB
_080719A0:
	ldr r0, _080719B0 @ =0x000004CB
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_080719A6:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r0}
	bx r0
	.align 2, 0
_080719B0: .4byte 0x000004CB

	thumb_func_start sub_080719B4
sub_080719B4: @ 0x080719B4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x54
	bl VramMalloc
	adds r4, #0xcc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80719C8
sub_80719C8: @ 0x080719C8
	push {r4, r5, lr}
	movs r3, #0
	strb r3, [r0, #0x1c]
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #0x14
	orrs r1, r5
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r1, r4
	str r1, [r2, #4]
	strh r3, [r2, #0x1c]
	ldr r1, [r0, #0x40]
	strh r3, [r1, #0x18]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r5
	ands r1, r4
	str r1, [r2, #4]
	strh r3, [r2, #0x1c]
	ldr r1, [r0, #0x44]
	strh r3, [r1, #0x18]
	strh r3, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071A00:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

    @ Called on init of Boss 5
	thumb_func_start sub_8071A08
sub_8071A08: @ 0x08071A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _08071A60 @ =sub_8073330
	movs r1, #0xee
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08071A64 @ =sub_8073460
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r1, _08071A68 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x88
	ldr r2, [sp, #4]
	str r2, [r0]
	adds r4, #4
	lsls r4, r4, #8
	str r4, [r7]
	lsls r6, r6, #8
	str r6, [r7, #4]
	movs r0, #0
	strh r0, [r7, #0x10]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	strh r0, [r7, #0x18]
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08071A6C
	movs r0, #8
	b _08071A6E
	.align 2, 0
_08071A60: .4byte sub_8073330
_08071A64: .4byte sub_8073460
_08071A68: .4byte gStageData
_08071A6C:
	movs r0, #6
_08071A6E:
	strb r0, [r7, #0x12]
	mov r0, r8
	str r0, [r7, #0xc]
	movs r1, #0
	strb r1, [r7, #0x13]
	movs r0, #4
	strb r0, [r7, #0x1a]
	strb r1, [r7, #0x1b]
	strh r1, [r7, #0x26]
	ldr r0, _08071D40 @ =0x0000049C
	strh r0, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x2c
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, _08071D44 @ =gPlayers
	str r2, [r0]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r3, r7, r0
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r3]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _08071D48 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xf6
	bl VramMalloc
	str r0, [r7, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x3a]
	movs r4, #0
	adds r3, r7, #0
	adds r3, #0x90
	adds r6, r7, #0
	adds r6, #0xb8
	mov sb, r4
_08071AE8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xe0
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08071D4C @ =0x000004DA
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	mov r0, sb
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	mov r1, sb
	str r1, [r2, #8]
	ldr r1, [r7]
	asrs r1, r1, #8
	ldr r0, _08071D50 @ =gCamera
	mov r8, r0
	ldr r0, [r0]
	subs r0, r1, r0
	strh r0, [r2, #0x10]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, r8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r5, r2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #1
	bls _08071AE8
	str r5, [r3]
	movs r4, #0
	movs r0, #0x9b
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	str r4, [r3, #8]
	ldr r0, [r7]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [r6]
	ldr r0, _08071D54 @ =0x000004D9
	strh r0, [r6, #0xc]
	movs r1, #1
	mov sb, r1
	mov r2, sb
	strb r2, [r6, #0x1a]
	subs r0, #0x19
	strh r0, [r6, #0x14]
	strh r4, [r6, #0xe]
	strh r4, [r6, #0x16]
	ldrb r0, [r6, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r6, #0x1b]
	movs r2, #0x10
	strb r2, [r6, #0x1c]
	movs r0, #0
	strb r0, [r6, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r6, #0x20]
	str r4, [r6, #8]
	ldr r0, [r7]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r5, #0x20
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08071D58 @ =0x000004D7
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	subs r0, #0x97
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r5, r5, r1
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08071D5C @ =0x000004DC
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	subs r0, #0xdc
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	ldr r1, _08071D60 @ =0x000004DB
	mov r8, r1
	mov r0, r8
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	mov r1, r8
	strh r1, [r2, #0xc]
	mov r0, sb
	strb r0, [r2, #0x1a]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r5, #0x40
	str r5, [r7, #0x1c]
	movs r0, #0xad
	lsls r0, r0, #3
	strh r0, [r7, #0x24]
	movs r1, #0
	strb r1, [r7, #0x1a]
	ldr r4, _08071D64 @ =gUnknown_080D5888
	adds r5, r4, #2
_08071CFA:
	ldrb r0, [r7, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	bl sub_8072E50
	ldrb r0, [r7, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	ldrh r1, [r7, #0x24]
	adds r0, r0, r1
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0x1a]
	adds r0, #1
	strb r0, [r7, #0x1a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08071CFA
	bl sub_807A4BC
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08071D40: .4byte 0x0000049C
_08071D44: .4byte gPlayers
_08071D48: .4byte gStageData
_08071D4C: .4byte 0x000004DA
_08071D50: .4byte gCamera
_08071D54: .4byte 0x000004D9
_08071D58: .4byte 0x000004D7
_08071D5C: .4byte 0x000004DC
_08071D60: .4byte 0x000004DB
_08071D64: .4byte gUnknown_080D5888

	thumb_func_start sub_8071D68
sub_8071D68: @ 0x08071D68
	push {r4, r5, lr}
	ldr r0, _08071D88 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08071D8C
	adds r0, r2, #0
	bl TaskDestroy
	b _08071DDE
	.align 2, 0
_08071D88: .4byte gCurTask
_08071D8C:
	adds r0, r4, #0
	bl sub_80728B4
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08071DDE
	movs r1, #0
	ldr r5, _08071DE4 @ =gPlayers
	ldr r3, _08071DE8 @ =0xFFFFFB7F
	movs r2, #0x93
	lsls r2, r2, #1
_08071DA4:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r0, r2
	bhi _08071DDE
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08071DA4
	movs r0, #0x32
	bl sub_80299D4
	ldr r0, _08071DEC @ =gCamera
	ldr r0, [r0, #0x14]
	str r0, [r4, #0x28]
	ldr r0, _08071DF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071DF4 @ =sub_8071DF8
	str r0, [r1, #8]
_08071DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071DE4: .4byte gPlayers
_08071DE8: .4byte 0xFFFFFB7F
_08071DEC: .4byte gCamera
_08071DF0: .4byte gCurTask
_08071DF4: .4byte sub_8071DF8

	thumb_func_start sub_8071DF8
sub_8071DF8: @ 0x08071DF8
	push {r4, r5, r6, lr}
	ldr r6, _08071E24 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, _08071E28 @ =0x03000164
	adds r1, r2, r0
	ldrh r0, [r4, #0x14]
	adds r0, #1
	movs r5, #0
	movs r3, #0
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	cmp r0, #0x78
	beq _08071E40
	cmp r0, #0x78
	bgt _08071E2C
	cmp r0, #0x3c
	beq _08071E32
	b _08071E74
	.align 2, 0
_08071E24: .4byte gCurTask
_08071E28: .4byte 0x03000164
_08071E2C:
	cmp r0, #0xb4
	beq _08071E4C
	b _08071E74
_08071E32:
	ldr r0, _08071E3C @ =0x000004DC
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	b _08071E74
	.align 2, 0
_08071E3C: .4byte 0x000004DC
_08071E40:
	ldr r0, _08071E48 @ =0x000004DC
	strh r0, [r1, #0xc]
	strb r5, [r1, #0x1a]
	b _08071E74
	.align 2, 0
_08071E48: .4byte 0x000004DC
_08071E4C:
	strh r3, [r4, #0x14]
	ldr r1, _08071E88 @ =gUnknown_080D58CC
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	strh r3, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x32]
	strh r3, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r1, _08071E8C @ =0x0300002C
	adds r0, r2, r1
	strb r5, [r0]
	bl sub_807A4A8
	ldr r1, [r6]
	ldr r0, _08071E90 @ =sub_8071E94
	str r0, [r1, #8]
_08071E74:
	adds r0, r4, #0
	bl sub_8073570
	adds r0, r4, #0
	bl sub_80728B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071E88: .4byte gUnknown_080D58CC
_08071E8C: .4byte 0x0300002C
_08071E90: .4byte sub_8071E94

	thumb_func_start sub_8071E94
sub_8071E94: @ 0x08071E94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08071F08 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _08071F0C @ =0x0300013C
	adds r7, r5, r0
	ldr r1, _08071F10 @ =0x03000164
	adds r1, r1, r5
	mov r8, r1
	ldrh r0, [r4, #0x14]
	adds r0, #1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8072B80
	ldr r1, _08071F14 @ =0x03000130
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_8073480
	ldr r1, _08071F18 @ =0x03000134
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_8073480
	ldrb r0, [r4, #0x13]
	movs r6, #0x13
	ldrsb r6, [r4, r6]
	cmp r6, #0
	beq _08071F1C
	subs r0, #1
	strb r0, [r4, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08071EFA
	mov r1, sb
	mov r0, r8
	strb r1, [r0, #0x1a]
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #0x1b]
_08071EFA:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08071FEA
	subs r0, #1
	strh r0, [r4, #0x16]
	b _08071FEA
	.align 2, 0
_08071F08: .4byte gCurTask
_08071F0C: .4byte 0x0300013C
_08071F10: .4byte 0x03000164
_08071F14: .4byte 0x03000130
_08071F18: .4byte 0x03000134
_08071F1C:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08071F32
	subs r0, #1
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_80725FC
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _08071FE4
_08071F32:
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	beq _08071F54
	cmp r0, #1
	bgt _08071F42
	cmp r0, #0
	beq _08071F4C
	b _08071FE0
_08071F42:
	cmp r0, #2
	beq _08071FC8
	cmp r0, #3
	beq _08071FD0
	b _08071FE0
_08071F4C:
	movs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #1
	b _08071FDE
_08071F54:
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	movs r0, #2
	strb r0, [r7, #0x1a]
	strh r6, [r4, #0x26]
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #4]
	ldr r1, _08071FB4 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0
	ldr r0, _08071FB8 @ =0x03000088
	adds r0, r0, r5
	mov ip, r0
	ldr r1, _08071FBC @ =0x0300008C
	adds r1, r1, r5
	mov r8, r1
	ldr r0, _08071FC0 @ =0x03000048
	adds r6, r5, r0
	ldr r1, _08071FC4 @ =0x0300004C
	adds r5, r5, r1
_08071F88:
	lsls r1, r3, #3
	adds r2, r6, r1
	ldr r0, [r4, #0x40]
	str r0, [r2]
	adds r1, r5, r1
	ldr r0, [r4, #0x44]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08071F88
	movs r0, #0
	mov r1, ip
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r0, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x32]
	b _08071FE0
	.align 2, 0
_08071FB4: .4byte 0xFFFFE800
_08071FB8: .4byte 0x03000088
_08071FBC: .4byte 0x0300008C
_08071FC0: .4byte 0x03000048
_08071FC4: .4byte 0x0300004C
_08071FC8:
	movs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #3
	b _08071FDE
_08071FD0:
	ldr r0, _08072008 @ =gUnknown_080D58CC
	ldrb r1, [r4, #0x12]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r4, #0x16]
	mov r0, sb
_08071FDE:
	strb r0, [r7, #0x1a]
_08071FE0:
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08071FE4:
	adds r0, r4, #0
	bl sub_80735C4
_08071FEA:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _08072040
	ldr r1, _0807200C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08072020
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08072018
	ldr r0, _08072010 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072014 @ =sub_8073420
	b _0807202C
	.align 2, 0
_08072008: .4byte gUnknown_080D58CC
_0807200C: .4byte gStageData
_08072010: .4byte gCurTask
_08072014: .4byte sub_8073420
_08072018:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08072020:
	adds r0, r4, #0
	bl sub_8072D04
	ldr r0, _08072038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807203C @ =sub_80733CC
_0807202C:
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80728B4
	b _080720CA
	.align 2, 0
_08072038: .4byte gCurTask
_0807203C: .4byte sub_80733CC
_08072040:
	ldr r0, _08072080 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08072084 @ =gPlayers
	adds r3, r0, r1
	ldr r2, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r2
	cmp r0, #0
	bne _080720B2
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, _08072088 @ =gCamera
	ldr r5, [r1, #0x14]
	cmp r0, r5
	ble _080720B2
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08072090
	ldr r1, _0807208C @ =sub_8008E38
	adds r0, r3, #0
	bl SetPlayerCallback
	b _080720B2
	.align 2, 0
_08072080: .4byte gStageData
_08072084: .4byte gPlayers
_08072088: .4byte gCamera
_0807208C: .4byte sub_8008E38
_08072090:
	ldr r2, [r3]
	ldr r1, _080720D8 @ =sub_8008E38
	cmp r2, r1
	beq _080720B2
	ldr r0, _080720DC @ =sub_800913C
	cmp r2, r0
	beq _080720B2
	ldr r0, _080720E0 @ =sub_800DF9C
	cmp r2, r0
	beq _080720B2
	adds r0, r5, #0
	subs r0, #8
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	adds r0, r3, #0
	bl SetPlayerCallback
_080720B2:
	adds r0, r4, #0
	bl sub_8072558
	adds r0, r4, #0
	bl sub_8073608
	adds r0, r4, #0
	bl sub_8073570
	adds r0, r4, #0
	bl sub_80728B4
_080720CA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080720D8: .4byte sub_8008E38
_080720DC: .4byte sub_800913C
_080720E0: .4byte sub_800DF9C

	thumb_func_start sub_80720E4
sub_80720E4: @ 0x080720E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08072128 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r2, _0807212C @ =0x0300013C
	adds r2, r2, r0
	mov r8, r2
	ldr r4, _08072130 @ =0x03000164
	adds r4, r4, r0
	mov sl, r4
	ldrh r0, [r5, #0x14]
	adds r0, #1
	movs r6, #0
	mov sb, r6
	strh r0, [r5, #0x14]
	ldrh r6, [r5, #0x30]
	cmp r6, #0x14
	bne _0807211A
	b _08072294
_0807211A:
	cmp r6, #0x14
	bgt _08072134
	cmp r6, #0
	beq _08072142
	cmp r6, #0xa
	beq _0807217C
	b _08072424
	.align 2, 0
_08072128: .4byte gCurTask
_0807212C: .4byte 0x0300013C
_08072130: .4byte 0x03000164
_08072134:
	cmp r6, #0x32
	bne _0807213A
	b _0807234C
_0807213A:
	cmp r6, #0x64
	bne _08072140
	b _0807236C
_08072140:
	b _08072424
_08072142:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	asrs r1, r1, #8
	ldr r0, _0807215C @ =0x00000514
	cmp r1, r0
	ble _08072160
	movs r0, #0xff
	lsls r0, r0, #8
	b _08072164
	.align 2, 0
_0807215C: .4byte 0x00000514
_08072160:
	movs r0, #0x80
	lsls r0, r0, #1
_08072164:
	strh r0, [r5, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	ldr r1, _08072178 @ =gCamera
	ldr r0, [r5, #0x28]
	str r0, [r1, #0x14]
	movs r0, #0xa
	strh r0, [r5, #0x30]
	b _08072424
	.align 2, 0
_08072178: .4byte gCamera
_0807217C:
	ldrh r0, [r5, #0xa]
	adds r0, #0x40
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _08072190
	strh r1, [r5, #0xa]
_08072190:
	movs r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, [r5]
	adds r2, r0, r1
	str r2, [r5]
	movs r4, #0xa
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r6, #8
	ldrsh r0, [r5, r6]
	cmp r0, #0
	beq _080721D0
	cmp r0, #0
	bge _080721C4
	asrs r1, r2, #8
	ldr r0, _080721C0 @ =0x00000514
	cmp r1, r0
	bgt _080721D0
	mov r0, sb
	strh r0, [r5, #8]
	b _080721D0
	.align 2, 0
_080721C0: .4byte 0x00000514
_080721C4:
	asrs r1, r2, #8
	ldr r0, _08072278 @ =0x00000513
	cmp r1, r0
	ble _080721D0
	mov r1, sb
	strh r1, [r5, #8]
_080721D0:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, _0807227C @ =0x00000596
	cmp r0, r1
	ble _080721F8
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	movs r0, #0x14
	strh r0, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl sub_805256C
_080721F8:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072268
	ldr r3, _08072280 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _08072284 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08072288 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _0807228C @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r4, r0, #0
	ldr r1, _08072290 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r4, r0
	lsrs r2, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	lsrs r0, r0, #6
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r7, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_08072268:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08072274
	b _08072424
_08072274:
	b _08072360
	.align 2, 0
_08072278: .4byte 0x00000513
_0807227C: .4byte 0x00000596
_08072280: .4byte gUnknown_03006868
_08072284: .4byte 0x00196225
_08072288: .4byte 0x3C6EF35F
_0807228C: .4byte 0x000003FF
_08072290: .4byte gSineTable
_08072294:
	ldrh r0, [r5, #0xa]
	adds r0, #0x20
	strh r0, [r5, #0xa]
	movs r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r4, #0xa
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #3
	cmp r0, r1
	ble _080722C0
	movs r0, #0x3c
	strh r0, [r5, #0x32]
	movs r0, #0x32
	strh r0, [r5, #0x30]
_080722C0:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807232A
	ldr r3, _08072338 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0807233C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08072340 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _08072344 @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r4, #0x1f
	ands r4, r0
	ldr r1, _08072348 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	lsrs r2, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	lsrs r0, r0, #6
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r7, [sp]
	str r6, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807232A:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08072424
	b _08072360
	.align 2, 0
_08072338: .4byte gUnknown_03006868
_0807233C: .4byte 0x00196225
_08072340: .4byte 0x3C6EF35F
_08072344: .4byte 0x000003FF
_08072348: .4byte gSineTable
_0807234C:
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072424
	movs r0, #0xb4
	strh r0, [r5, #0x32]
	movs r0, #0x64
	strh r0, [r5, #0x30]
_08072360:
	ldr r0, _08072368 @ =0x00000221
	bl sub_80BA57C
	b _08072424
	.align 2, 0
_08072368: .4byte 0x00000221
_0807236C:
	ldrh r1, [r5, #0x32]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080723F6
	ldr r4, _080724B8 @ =gUnknown_03006868
	ldr r0, [r4]
	ldr r3, _080724BC @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _080724C0 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r0, #0xff
	ands r0, r1
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r7, r0, r6
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #0x30
	bl __umodsi3
	adds r4, r0, #0
	movs r0, #3
	adds r3, r4, #0
	ands r3, r0
	lsls r3, r3, #8
	ldr r2, _080724C4 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r0, r7, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	lsrs r1, r1, #0xe
	ldr r4, _080724C8 @ =0x00000514
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsrs r2, r2, #0xe
	ldr r6, _080724CC @ =0x00000604
	adds r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r3, r0
	str r7, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	mov r6, sb
	str r6, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_080723F6:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08072406
	ldr r0, _080724D0 @ =0x00000221
	bl sub_80BA57C
_08072406:
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08072424
	strh r0, [r5, #0x14]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x30]
	ldr r0, _080724D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080724D8 @ =sub_80724E4
	str r0, [r1, #8]
_08072424:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r4, _080724DC @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	mov r0, r8
	bl DisplaySprite
	mov r6, r8
	ldr r0, [r6, #8]
	ldr r1, _080724E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #8]
	mov r0, r8
	bl DisplaySprite
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _08072488
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, sl
	strh r0, [r2, #0x12]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_08072488:
	movs r4, #0x98
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r5, r6
	ldr r1, [r0]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080724B8: .4byte gUnknown_03006868
_080724BC: .4byte 0x00196225
_080724C0: .4byte 0x3C6EF35F
_080724C4: .4byte gSineTable
_080724C8: .4byte 0x00000514
_080724CC: .4byte 0x00000604
_080724D0: .4byte 0x00000221
_080724D4: .4byte gCurTask
_080724D8: .4byte sub_80724E4
_080724DC: .4byte gCamera
_080724E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80724E4
sub_80724E4: @ 0x080724E4
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08072508 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _0807250C @ =0x03000130
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4, #0x14]
	cmp r1, #0
	beq _08072510
	cmp r1, #1
	beq _0807253C
	b _08072550
	.align 2, 0
_08072508: .4byte gCurTask
_0807250C: .4byte 0x03000130
_08072510:
	ldr r0, [r4]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [sp, #0xc]
	ldr r1, _08072538 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _0807254E
	.align 2, 0
_08072538: .4byte sub_807A37C
_0807253C:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _08072550
	ldr r0, [r4, #0xc]
	strb r1, [r0]
	movs r0, #0x64
_0807254E:
	strh r0, [r4, #0x14]
_08072550:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8072558
sub_8072558: @ 0x08072558
	push {lr}
	mov ip, r0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x1b]
	ldr r1, [r1, #4]
	ldr r0, _080725F0 @ =0x00036100
	cmp r1, r0
	bgt _080725EC
	movs r0, #1
	mov r2, ip
	strb r0, [r2, #0x1b]
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #0x14]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	adds r0, r0, r2
	str r0, [r1, #0x14]
	mov r1, ip
	ldr r0, [r1, #4]
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r1, #0x24]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #0x24]
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	beq _080725CA
	ldr r0, _080725F4 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_080725CA:
	ldr r3, _080725F8 @ =gCamera
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #4]
	mov r2, ip
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	subs r2, #0xb4
	str r2, [r3, #0x10]
	adds r0, #0x14
	str r0, [r3, #0x14]
	movs r0, #0
	bl sub_802B6D0
_080725EC:
	pop {r0}
	bx r0
	.align 2, 0
_080725F0: .4byte 0x00036100
_080725F4: .4byte gStageData
_080725F8: .4byte gCamera

	thumb_func_start sub_80725FC
sub_80725FC: @ 0x080725FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	beq _08072618
	b _0807289E
_08072618:
	ldrh r5, [r4, #0x30]
	cmp r5, #0x64
	beq _0807270C
	cmp r5, #0x64
	bgt _0807262C
	cmp r5, #0
	beq _0807264E
	cmp r5, #0xa
	beq _08072676
	b _0807271A
_0807262C:
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r5, r1
	bne _08072636
	b _0807275C
_08072636:
	cmp r5, r1
	bgt _08072642
	cmp r5, #0xc8
	bne _08072640
	b _08072748
_08072640:
	b _0807271A
_08072642:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r5, r0
	bne _0807264C
	b _08072788
_0807264C:
	b _0807271A
_0807264E:
	movs r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0xa
	strh r0, [r4, #0x30]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x88
	str r5, [r2]
	adds r1, r4, #0
	adds r1, #0x8c
	adds r0, #0x18
	str r0, [r1]
	strh r5, [r4, #0x26]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	adds r6, r2, #0
	b _080727BA
_08072676:
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072690
	movs r0, #0x8c
	lsls r0, r0, #2
	bl sub_80BA57C
	strh r5, [r4, #0x32]
	movs r0, #0x64
	strh r0, [r4, #0x30]
_08072690:
	movs r2, #0x10
	ldrsh r1, [r4, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	asrs r5, r0, #8
	ldr r1, [r4, #4]
	asrs r0, r1, #8
	adds r2, r0, #0
	subs r2, #0x18
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r3, [r0]
	ldr r7, _080726F8 @ =0xFFFFE800
	adds r1, r1, r7
	ldr r0, [r3, #0x14]
	adds r6, r4, #0
	adds r6, #0x88
	cmp r0, r1
	blt _080726BA
	b _080727BA
_080726BA:
	asrs r0, r0, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4, #0x3c]
	ldr r0, _080726FC @ =0xFFFFFF00
	adds r1, r1, r0
	ldr r2, _08072700 @ =0x000003FF
	adds r5, r2, #0
	ands r1, r5
	ldrh r0, [r4, #0x26]
	movs r2, #0xa
	bl sub_80B1064
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08072704
	ldrh r0, [r4, #0x26]
	adds r0, #4
	ands r0, r5
	b _080727B8
	.align 2, 0
_080726F8: .4byte 0xFFFFE800
_080726FC: .4byte 0xFFFFFF00
_08072700: .4byte 0x000003FF
_08072704:
	ldrh r0, [r4, #0x26]
	subs r0, #4
	ands r0, r5
	b _080727B8
_0807270C:
	ldrh r1, [r4, #0x32]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08072720
	subs r0, r1, #1
	strh r0, [r4, #0x32]
_0807271A:
	adds r6, r4, #0
	adds r6, #0x88
	b _080727BA
_08072720:
	adds r2, r4, #0
	adds r2, #0x88
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _08072744 @ =0x00008BFF
	adds r6, r2, #0
	cmp r1, r0
	ble _080727BA
	movs r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0xc8
	strh r0, [r4, #0x30]
	b _080727BA
	.align 2, 0
_08072744: .4byte 0x00008BFF
_08072748:
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	adds r6, r4, #0
	adds r6, #0x88
	cmp r0, #0
	bne _080727BA
	strh r1, [r4, #0x30]
	b _080727BA
_0807275C:
	adds r0, r4, #0
	adds r0, #0x88
	adds r3, r4, #0
	adds r3, #0x8c
	ldr r1, [r0]
	ldr r2, [r3]
	subs r1, r1, r2
	str r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bgt _080727BA
	movs r0, #0
	str r0, [r6]
	str r0, [r3]
	movs r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x30]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	b _080727BA
_08072788:
	ldrh r1, [r4, #0x26]
	adds r2, r1, #0
	adds r6, r4, #0
	adds r6, #0x88
	cmp r2, #0
	beq _080727BA
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _080727A2
	adds r0, r1, #0
	adds r0, #8
	b _080727A6
_080727A2:
	adds r0, r1, #0
	subs r0, #8
_080727A6:
	strh r0, [r4, #0x26]
	ldrh r1, [r4, #0x26]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r4, #0
	adds r6, #0x88
	cmp r1, r0
	bls _080727BA
	movs r0, #0
_080727B8:
	strh r0, [r4, #0x26]
_080727BA:
	ldr r3, [r6]
	cmp r3, #0
	beq _08072884
	movs r7, #0x10
	ldrsh r0, [r4, r7]
	ldr r1, [r4]
	adds r5, r1, r0
	ldr r0, [r4, #4]
	ldr r1, _08072878 @ =0xFFFFE800
	adds r2, r0, r1
	adds r0, r3, #0
	cmp r0, #0
	bge _080727D6
	adds r0, #7
_080727D6:
	asrs r0, r0, #3
	mov r8, r0
	ldr r0, _0807287C @ =gSineTable
	ldrh r3, [r4, #0x3c]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r3, r7
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r7, #0
	ldrsh r1, [r1, r7]
	mov r7, r8
	muls r7, r1, r7
	adds r1, r7, #0
	mov sl, r0
	cmp r1, #0
	bge _080727FC
	ldr r0, _08072880 @ =0x00003FFF
	adds r1, r1, r0
_080727FC:
	asrs r1, r1, #0xe
	mov sb, r1
	lsls r0, r3, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08072816
	ldr r7, _08072880 @ =0x00003FFF
	adds r0, r0, r7
_08072816:
	asrs r0, r0, #0xe
	mov r8, r0
	movs r3, #0
	movs r0, #0x48
	adds r0, r0, r4
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x4c
	str r1, [sp]
_08072828:
	lsls r1, r3, #3
	mov r7, ip
	adds r0, r7, r1
	str r5, [r0]
	ldr r0, [sp]
	adds r1, r0, r1
	str r2, [r1]
	add r5, sb
	add r2, r8
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08072828
	ldrh r1, [r4, #0x3c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [r6]
	muls r0, r2, r0
	cmp r0, #0
	bge _08072860
	ldr r7, _08072880 @ =0x00003FFF
	adds r0, r0, r7
_08072860:
	asrs r5, r0, #0xe
	lsls r0, r1, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08072874
	ldr r2, _08072880 @ =0x00003FFF
	adds r0, r0, r2
_08072874:
	asrs r2, r0, #0xe
	b _08072888
	.align 2, 0
_08072878: .4byte 0xFFFFE800
_0807287C: .4byte gSineTable
_08072880: .4byte 0x00003FFF
_08072884:
	movs r5, #0
	movs r2, #0
_08072888:
	movs r3, #0x10
	ldrsh r1, [r4, r3]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, r0, r5
	str r0, [r4, #0x40]
	ldr r7, _080728B0 @ =0xFFFFE800
	adds r1, r2, r7
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0807289E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080728B0: .4byte 0xFFFFE800

	thumb_func_start sub_80728B4
sub_80728B4: @ 0x080728B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r0, r6, r0
	str r0, [sp, #8]
	movs r1, #0xda
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #0xc]
	adds r4, r6, #0
	adds r4, #0xe0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r7, _08072B68 @ =gCamera
	ldr r1, [r7]
	subs r0, r0, r1
	subs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	adds r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	beq _0807293C
	b _08072A72
_0807293C:
	adds r4, r6, #0
	adds r4, #0x90
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
	movs r0, #0x48
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x4c
	adds r1, r1, r6
	mov r8, r1
_0807296A:
	lsls r2, r5, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0807296A
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A04
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_080729DE:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080729DE
_08072A04:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A72
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08072A4C:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08072A4C
_08072A72:
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r4, _08072B68 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x12]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r1, sb
	ldr r0, [r1, #8]
	movs r7, #0x80
	lsls r7, r7, #3
	orrs r0, r7
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r5, _08072B7C @ =0xFFFFFBFF
	ands r0, r5
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08072AEC
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl DisplaySprite
_08072AEC:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r1, [sp, #8]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	subs r0, #0x5c
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	movs r5, #0
_08072B40:
	ldr r0, [sp, #0xc]
	bl DisplaySprite
	ldr r1, [sp, #0xc]
	ldrh r0, [r1, #0x10]
	adds r0, #8
	strh r0, [r1, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x16
	bls _08072B40
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072B68: .4byte gCamera
_08072B6C: .4byte gCurTask
_08072B70: .4byte 0x03000090
_08072B74: .4byte 0x030000B8
_08072B78: .4byte 0x03000048
_08072B7C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8072B80
sub_8072B80: @ 0x08072B80
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r5, [r0]
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r3, r2, r4
	ldr r4, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r4, r6
	cmp r4, #0
	beq _08072BA0
	b _08072CFA
_08072BA0:
	ldrh r1, [r2, #0x34]
	cmp r1, #0x64
	beq _08072C50
	cmp r1, #0x64
	bgt _08072BBE
	cmp r1, #0xa
	beq _08072C1C
	cmp r1, #0xa
	bgt _08072BB8
	cmp r1, #0
	beq _08072BDA
	b _08072CFA
_08072BB8:
	cmp r1, #0x14
	beq _08072BEE
	b _08072CFA
_08072BBE:
	cmp r1, #0xc8
	bne _08072BC4
	b _08072CD0
_08072BC4:
	cmp r1, #0xc8
	bgt _08072BCE
	cmp r1, #0x96
	beq _08072C8C
	b _08072CFA
_08072BCE:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08072BD8
	b _08072CE0
_08072BD8:
	b _08072CFA
_08072BDA:
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #0x3c
	strh r0, [r2, #0x36]
	movs r0, #0x14
	strh r0, [r2, #0x34]
	b _08072CFA
_08072BEE:
	ldrh r0, [r2, #0x36]
	subs r0, #1
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08072BFC
	b _08072CFA
_08072BFC:
	adds r3, r2, #0
	adds r3, #0xe0
	ldr r0, _08072C18 @ =0x000004DA
	strh r0, [r3, #0xc]
	movs r1, #1
	strb r1, [r3, #0x1a]
	movs r4, #0x84
	lsls r4, r4, #1
	adds r3, r2, r4
	strh r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #0x1a]
	strh r1, [r2, #0x36]
	b _08072CDA
	.align 2, 0
_08072C18: .4byte 0x000004DA
_08072C1C:
	ldrh r0, [r2, #0x36]
	subs r0, #1
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072CFA
	ldr r0, [r2, #4]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	bge _08072C36
	rsbs r0, r0, #0
_08072C36:
	cmp r0, #0x64
	ble _08072C3E
	movs r0, #0x96
	b _08072C40
_08072C3E:
	movs r0, #0x64
_08072C40:
	strh r0, [r2, #0x34]
	ldr r0, _08072C4C @ =0x0000022F
	bl sub_80BA57C
	b _08072CFA
	.align 2, 0
_08072C4C: .4byte 0x0000022F
_08072C50:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072C88 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	subs r0, #0x80
	str r0, [r2, #4]
	ldrh r0, [r2, #0x3e]
	adds r0, #0x10
	strh r0, [r2, #0x3e]
	lsls r0, r0, #0x10
	movs r1, #0xaa
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072CFA
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #1
	b _08072CD8
	.align 2, 0
_08072C88: .4byte 0x000003FF
_08072C8C:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072CC8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	ldr r1, _08072CCC @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r2, #0x3e]
	adds r0, #0x10
	strh r0, [r2, #0x3e]
	lsls r0, r0, #0x10
	movs r1, #0xaa
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072CFA
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #1
	b _08072CD8
	.align 2, 0
_08072CC8: .4byte 0x000003FF
_08072CCC: .4byte 0xFFFFFF00
_08072CD0:
	ldrb r0, [r3, #0x1a]
	cmp r0, #0
	bne _08072CFA
	movs r0, #0x1e
_08072CD8:
	strh r0, [r2, #0x36]
_08072CDA:
	movs r0, #0xa
	strh r0, [r2, #0x34]
	b _08072CFA
_08072CE0:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072D00 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	subs r0, #0x80
	str r0, [r2, #4]
_08072CFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072D00: .4byte 0x000003FF

	thumb_func_start sub_8072D04
sub_8072D04: @ 0x08072D04
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r6, #0x14]
	movs r5, #0
	ldr r7, _08072D9C @ =Player_800E67C
_08072D14:
	lsls r1, r5, #2
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x1c]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	adds r1, r7, #0
	bl SetPlayerCallback
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #4]
	ldr r0, _08072DA0 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08072D76
	adds r0, r4, #0
	bl _call_via_r7
_08072D76:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08072D14
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072D9C: .4byte Player_800E67C
_08072DA0: .4byte 0xFFFFFEFF

	thumb_func_start sub_8072DA4
sub_8072DA4: @ 0x08072DA4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08072E48
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08072DC0
	subs r0, #1
	strb r0, [r4, #0x12]
_08072DC0:
	ldr r0, _08072DD8 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08072DDC
	ldrb r0, [r4, #0x12]
	cmp r0, #4
	bne _08072DE8
	movs r0, #0x33
	bl sub_80299D4
	b _08072DE8
	.align 2, 0
_08072DD8: .4byte gStageData
_08072DDC:
	ldrb r0, [r4, #0x12]
	cmp r0, #3
	bne _08072DE8
	movs r0, #0x33
	bl sub_80299D4
_08072DE8:
	movs r0, #0xeb
	bl sub_80BA57C
	bl sub_807A468
	movs r0, #0x7a
	strb r0, [r4, #0x13]
	movs r0, #2
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r0, _08072E34 @ =0x000004DD
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _08072E38 @ =0x000004DE
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r1, _08072E3C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08072E48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08072E40
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08072E48
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _08072E48
	.align 2, 0
_08072E34: .4byte 0x000004DD
_08072E38: .4byte 0x000004DE
_08072E3C: .4byte gStageData
_08072E40:
	ldrb r1, [r4, #0x12]
	movs r0, #4
	bl sub_8027674
_08072E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8072E50
sub_8072E50: @ 0x08072E50
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _08072EE4 @ =sub_8072EF0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08072EE8 @ =0x03000018
	adds r0, r0, r2
	mov r2, r8
	str r2, [r1]
	lsls r4, r4, #8
	str r4, [r1, #4]
	lsls r5, r5, #8
	str r5, [r1, #8]
	movs r3, #0
	strh r6, [r1, #0xc]
	strh r6, [r1, #0xe]
	strb r3, [r1, #0x10]
	strb r3, [r1, #0x11]
	strb r3, [r1, #0x13]
	movs r2, #0x98
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2]
	str r2, [r1, #0x40]
	movs r2, #0x9a
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2]
	str r2, [r1, #0x44]
	mov r2, r8
	ldr r1, [r2, #0x20]
	str r1, [r0]
	ldr r1, _08072EEC @ =0x000004DF
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072EE4: .4byte sub_8072EF0
_08072EE8: .4byte 0x03000018
_08072EEC: .4byte 0x000004DF

	thumb_func_start sub_8072EF0
sub_8072EF0: @ 0x08072EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08072F88 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov sb, r0
	ldr r2, _08072F8C @ =0x03000018
	adds r2, r2, r1
	mov r8, r2
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08072F22
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r5, #8]
_08072F22:
	movs r6, #0
	ldr r0, _08072F90 @ =0x03000040
	adds r0, r0, r1
	mov sl, r0
	movs r7, #1
_08072F2C:
	lsls r0, r6, #2
	add r0, sl
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08072FAA
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldr r2, [r5, #8]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08072F98
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _08072F94 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r6
	bne _08072FAA
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08072F7A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08072FAA
_08072F7A:
	adds r0, r7, #0
	lsls r0, r6
	ldrb r1, [r5, #0x10]
	orrs r0, r1
	strb r0, [r5, #0x10]
	strb r7, [r5, #0x11]
	b _08072FAA
	.align 2, 0
_08072F88: .4byte gCurTask
_08072F8C: .4byte 0x03000018
_08072F90: .4byte 0x03000040
_08072F94: .4byte gStageData
_08072F98:
	ldr r0, _08072FD8 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r6
	bne _08072FAA
	adds r1, r7, #0
	lsls r1, r6
	ldrb r0, [r5, #0x10]
	bics r0, r1
	strb r0, [r5, #0x10]
_08072FAA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08072F2C
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	ldr r1, _08072FDC @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072FE4
	ldr r0, _08072FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08073026
	.align 2, 0
_08072FD8: .4byte gStageData
_08072FDC: .4byte gCamera
_08072FE0: .4byte gCurTask
_08072FE4:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08072FF0
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	bne _08072FF8
_08072FF0:
	mov r1, sb
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	bne _08073020
_08072FF8:
	ldr r1, [r5, #0x40]
	mov r0, r8
	bl sub_80213B0
	ldr r1, [r5, #0x44]
	mov r0, r8
	bl sub_80213B0
	movs r0, #0
	strb r0, [r5, #0x11]
	ldr r0, _08073038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807303C @ =sub_8073040
	str r0, [r1, #8]
	mov r2, sb
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	bne _08073020
	movs r0, #1
	strb r0, [r5, #0x13]
_08073020:
	adds r0, r5, #0
	bl sub_8073258
_08073026:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073038: .4byte gCurTask
_0807303C: .4byte sub_8073040

	thumb_func_start sub_8073040
sub_8073040: @ 0x08073040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08073160 @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r0, [r4]
	mov ip, r0
	movs r2, #0x9e
	lsls r2, r2, #1
	add r2, ip
	mov r8, r2
	ldr r3, _08073164 @ =0x03000018
	adds r3, r3, r7
	mov sb, r3
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08073078
	ldr r0, [r4, #8]
	movs r6, #0x80
	lsls r6, r6, #0xa
	adds r0, r0, r6
	str r0, [r4, #8]
_08073078:
	ldrh r0, [r4, #0xe]
	adds r0, #0x20
	strh r0, [r4, #0xe]
	movs r0, #0xe
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _08073092
	b _08073196
_08073092:
	mov r2, ip
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0807309E
	b _08073196
_0807309E:
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _08073196
	ldr r2, [r4, #4]
	asrs r1, r2, #8
	ldr r3, _08073168 @ =0x0300003C
	adds r0, r7, r3
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r3, r1, r5
	mov r6, ip
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xb0
	lsls r1, r1, #1
	add r1, ip
	movs r6, #0
	ldrsb r6, [r1, r6]
	adds r1, r0, r6
	mov sl, r2
	cmp r3, r1
	bgt _080730E6
	ldr r2, _0807316C @ =0x0300003E
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _080730FA
	cmp r3, r1
	blt _08073196
_080730E6:
	movs r0, #0xb1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r3
	blt _08073196
_080730FA:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	mov r1, sb
	adds r1, #0x25
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	mov r6, ip
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r3, r1
	bgt _08073132
	mov r0, sb
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _08073144
	cmp r3, r1
	blt _08073196
_08073132:
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	blt _08073196
_08073144:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	mov r2, ip
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	cmp sl, r0
	bge _08073174
	ldr r0, _08073170 @ =0x0000FE80
	b _08073178
	.align 2, 0
_08073160: .4byte gCurTask
_08073164: .4byte 0x03000018
_08073168: .4byte 0x0300003C
_0807316C: .4byte 0x0300003E
_08073170: .4byte 0x0000FE80
_08073174:
	movs r0, #0xc0
	lsls r0, r0, #1
_08073178:
	strh r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0x12]
	ldr r6, _080731BC @ =gCurTask
	ldr r1, [r6]
	ldr r0, _080731C0 @ =sub_80731DC
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073196
	mov r0, ip
	bl sub_8072DA4
_08073196:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r1, _080731C4 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080731C8
	ldr r0, _080731BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080731CE
	.align 2, 0
_080731BC: .4byte gCurTask
_080731C0: .4byte sub_80731DC
_080731C4: .4byte gCamera
_080731C8:
	adds r0, r4, #0
	bl sub_8073258
_080731CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80731DC
sub_80731DC: @ 0x080731DC
	push {r4, lr}
	ldr r4, _0807323C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080731FC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2, #8]
_080731FC:
	ldrh r0, [r2, #0xe]
	adds r0, #0x20
	strh r0, [r2, #0xe]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	ldrb r1, [r2, #0x12]
	subs r3, r1, #1
	strb r3, [r2, #0x12]
	asrs r0, r0, #8
	ldr r1, _08073240 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08073244
	ldr r0, [r4]
	bl TaskDestroy
	b _08073252
	.align 2, 0
_0807323C: .4byte gCurTask
_08073240: .4byte gCamera
_08073244:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08073252
	adds r0, r2, #0
	bl sub_8073258
_08073252:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8073258
sub_8073258: @ 0x08073258
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x18
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _08073290
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, _08073284 @ =gCamera
	ldr r1, [r2]
	subs r3, r0, r1
	strh r3, [r5, #0x10]
	ldr r0, _08073288 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807328C
	adds r0, r3, #1
	b _0807329A
	.align 2, 0
_08073284: .4byte gCamera
_08073288: .4byte gStageData
_0807328C:
	subs r0, r3, #1
	b _0807329A
_08073290:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, _080732C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
_0807329A:
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080732B8
	ldr r0, _080732C8 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080732BE
_080732B8:
	adds r0, r5, #0
	bl DisplaySprite
_080732BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080732C4: .4byte gCamera
_080732C8: .4byte gStageData

	thumb_func_start sub_80732CC
sub_80732CC: @ 0x080732CC
	push {r4, lr}
	ldr r1, _08073304 @ =gStageData
	adds r4, r1, #0
	adds r4, #0x88
	ldr r1, [r4]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0807330C
	movs r0, #0
	strb r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_8072D04
	ldr r1, [r4]
	ldr r0, _08073308 @ =sub_80733CC
	str r0, [r1, #8]
	b _08073328
	.align 2, 0
_08073304: .4byte gStageData
_08073308: .4byte sub_80733CC
_0807330C:
	cmp r1, #1
	blt _08073328
	cmp r1, #4
	bgt _08073328
	cmp r1, #3
	blt _08073328
	ldrb r1, [r3, #0x12]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08073328
	adds r0, r3, #0
	bl sub_8072DA4
_08073328:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8073330
sub_8073330: @ 0x08073330
	push {r4, r5, lr}
	ldr r4, _08073350 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08073354
	adds r0, r2, #0
	bl TaskDestroy
	b _08073374
	.align 2, 0
_08073350: .4byte gCurTask
_08073354:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08073368
	ldr r1, [r4]
	ldr r0, _08073364 @ =sub_8073380
	b _0807336C
	.align 2, 0
_08073364: .4byte sub_8073380
_08073368:
	ldr r1, [r4]
	ldr r0, _0807337C @ =sub_8071D68
_0807336C:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_80728B4
_08073374:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807337C: .4byte sub_8071D68

	thumb_func_start sub_8073380
sub_8073380: @ 0x08073380
	push {r4, r5, lr}
	ldr r5, _080733A0 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080733A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080733C2
	.align 2, 0
_080733A0: .4byte gCurTask
_080733A4:
	adds r0, r4, #0
	bl sub_80728B4
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080733C2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080733C2
	ldr r1, [r5]
	ldr r0, _080733C8 @ =sub_8071D68
	str r0, [r1, #8]
_080733C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080733C8: .4byte sub_8071D68

	thumb_func_start sub_80733CC
sub_80733CC: @ 0x080733CC
	push {r4, lr}
	ldr r0, _08073410 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r2, [r0, #0x30]
	movs r1, #1
	strh r1, [r0, #0x32]
	strh r2, [r0, #0x14]
	ldr r1, _08073414 @ =sub_80720E4
	str r1, [r4, #8]
	ldr r2, _08073418 @ =0x03000130
	adds r1, r3, r2
	ldr r2, [r1]
	ldr r1, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r1, r4
	str r1, [r2, #4]
	ldr r1, _0807341C @ =0x03000134
	adds r3, r3, r1
	ldr r2, [r3]
	ldr r1, [r2, #4]
	orrs r1, r4
	str r1, [r2, #4]
	bl sub_80728B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073410: .4byte gCurTask
_08073414: .4byte sub_80720E4
_08073418: .4byte 0x03000130
_0807341C: .4byte 0x03000134

	thumb_func_start sub_8073420
sub_8073420: @ 0x08073420
	push {r4, lr}
	ldr r0, _08073454 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08073458 @ =0x03000130
	adds r1, r2, r3
	ldr r3, [r1]
	ldr r1, [r3, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r1, r4
	str r1, [r3, #4]
	ldr r1, _0807345C @ =0x03000134
	adds r2, r2, r1
	ldr r2, [r2]
	ldr r1, [r2, #4]
	orrs r1, r4
	str r1, [r2, #4]
	bl sub_80728B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073454: .4byte gCurTask
_08073458: .4byte 0x03000130
_0807345C: .4byte 0x03000134

	thumb_func_start sub_8073460
sub_8073460: @ 0x08073460
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08073478
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x20]
_08073478:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8073480
sub_8073480: @ 0x08073480
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _080734E2
	adds r3, r4, #0
	adds r3, #0xe0
	ldr r1, [r4]
	asrs r1, r1, #8
	subs r1, #0x78
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r1, #0x78
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r3, r4, r1
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r1, [r4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
_080734E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80734EC
sub_80734EC: @ 0x080734EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _08073564 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x90
	adds r6, r5, r0
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _08073556
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08073568 @ =0x030000B8
	adds r6, r5, r1
	movs r4, #0
	ldr r0, _0807356C @ =0x03000048
	adds r0, r0, r5
	mov r8, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08073532:
	lsls r2, r4, #3
	mov r1, r8
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08073532
_08073556:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073564: .4byte gCurTask
_08073568: .4byte 0x030000B8
_0807356C: .4byte 0x03000048

	thumb_func_start sub_8073570
sub_8073570: @ 0x08073570
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r0, _080735BC @ =gCamera
	ldr r0, [r0, #4]
	cmp r1, r0
	ble _080735B4
	ldr r4, _080735C0 @ =gUnknown_080D5888
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r5, #0
	bl sub_8072E50
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x24]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080735B4
	movs r0, #0
	strb r0, [r5, #0x1a]
_080735B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080735BC: .4byte gCamera
_080735C0: .4byte gUnknown_080D5888

	thumb_func_start sub_80735C4
sub_80735C4: @ 0x080735C4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080735FC
	ldrb r0, [r3, #0x12]
	movs r1, #9
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r3, #0x18]
	adds r0, r0, r2
	strh r0, [r3, #0x18]
	ldr r2, _08073600 @ =gSineTable
	ldr r1, _08073604 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3, #0x10]
_080735FC:
	pop {r0}
	bx r0
	.align 2, 0
_08073600: .4byte gSineTable
_08073604: .4byte 0x000003FF

	thumb_func_start sub_8073608
sub_8073608: @ 0x08073608
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	asrs r2, r0, #8
	ldr r0, _08073620 @ =0x00000513
	cmp r2, r0
	ble _08073628
	ldr r1, _08073624 @ =gCamera
	adds r0, r2, #0
	subs r0, #0xa0
	b _0807362E
	.align 2, 0
_08073620: .4byte 0x00000513
_08073624: .4byte gCamera
_08073628:
	ldr r1, _0807363C @ =gCamera
	adds r0, r2, #0
	subs r0, #0xb4
_0807362E:
	str r0, [r1, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r0, #0x14
	str r0, [r1, #0x14]
	pop {r0}
	bx r0
	.align 2, 0
_0807363C: .4byte gCamera

    @ Called on init of Boss 6
	thumb_func_start sub_8073640
sub_8073640: @ 0x08073640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _080736B0 @ =sub_8074C54
	movs r1, #0xb6
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _080736B4 @ =sub_8074CC4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r2, _080736B8 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x88
	ldr r1, [sp, #4]
	str r1, [r0]
	adds r6, #4
	lsls r4, r6, #8
	mov r0, sl
	str r4, [r0]
	lsls r5, r5, #8
	movs r1, #0xb6
	lsls r1, r1, #8
	adds r5, r5, r1
	str r5, [r0, #4]
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r4, _080736BC @ =0x03000044
	adds r0, r3, r4
	strh r1, [r0]
	ldr r5, _080736C0 @ =0x0300004A
	adds r0, r3, r5
	strh r1, [r0]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _080736C8
	ldr r0, _080736C4 @ =0x0300003D
	adds r1, r3, r0
	movs r0, #8
	b _080736CE
	.align 2, 0
_080736B0: .4byte sub_8074C54
_080736B4: .4byte sub_8074CC4
_080736B8: .4byte gStageData
_080736BC: .4byte 0x03000044
_080736C0: .4byte 0x0300004A
_080736C4: .4byte 0x0300003D
_080736C8:
	ldr r4, _08073900 @ =0x0300003D
	adds r1, r3, r4
	movs r0, #6
_080736CE:
	strb r0, [r1]
	mov r5, sl
	str r7, [r5, #0x30]
	movs r3, #0
	movs r1, #0
	strh r1, [r5, #0x3e]
	mov r0, sl
	adds r0, #0x58
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0x12
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r2, _08073904 @ =gPlayers
	str r2, [r5, #0x68]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r5, #0x6c]
	mov r0, sl
	adds r0, #0x3c
	strb r3, [r0]
	adds r0, #4
	strb r3, [r0]
	movs r2, #0
	mov r6, sl
	adds r6, #0x70
	mov r7, sl
	adds r7, #0x98
	mov r4, sl
	adds r4, #0xc0
	movs r0, #0xe8
	add r0, sl
	mov sb, r0
	mov r3, sl
	adds r3, #0x10
_0807372A:
	lsls r0, r2, #2
	adds r0, r3, r0
	mov r5, sl
	ldr r1, [r5, #0xc]
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0807372A
	movs r0, #0x74
	bl VramMalloc
	str r0, [r5, #0x4c]
	movs r0, #0x14
	bl VramMalloc
	str r0, [r5, #0x50]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #0x54]
	movs r0, #0x6c
	bl VramMalloc
	adds r5, r0, #0
	mov r0, sl
	str r5, [r0, #0x70]
	movs r1, #0
	mov r8, r1
	movs r0, #0x9c
	lsls r0, r0, #3
	strh r0, [r6, #0xc]
	mov r0, r8
	strb r0, [r6, #0x1a]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r1, [r6, #0xe]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r1, #0x10
	strb r1, [r6, #0x1c]
	mov r0, r8
	strb r0, [r6, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r6, #0x20]
	movs r0, #0
	str r0, [r6, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0x80
	lsls r1, r1, #4
	adds r5, r5, r1
	str r5, [r7]
	ldr r0, _08073908 @ =0x000004E3
	strh r0, [r7, #0xc]
	mov r0, r8
	strb r0, [r7, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r1, #0
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r1, r8
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	movs r0, #0x20
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r6, #0x80
	lsls r6, r6, #2
	adds r5, r5, r6
	str r5, [r4]
	ldr r0, _0807390C @ =0x000004E1
	strh r0, [r4, #0xc]
	mov r1, r8
	strb r1, [r4, #0x1a]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r0, r8
	strb r0, [r4, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r4, #0x20]
	movs r0, #0
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r5, r6
	mov r1, sb
	str r5, [r1]
	ldr r0, _08073910 @ =0x000004E2
	strh r0, [r1, #0xc]
	mov r4, r8
	strb r4, [r1, #0x1a]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r4, #0x10
	strb r4, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r1, #0x20]
	movs r0, #0
	str r0, [r1, #8]
	mov r0, sb
	bl UpdateSpriteAnimation
	adds r5, #0x80
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, sl
	str r5, [r1]
	ldr r7, _08073914 @ =0x000004E5
	strh r7, [r1, #0xc]
	mov r4, r8
	strb r4, [r1, #0x1a]
	movs r0, #0xd0
	lsls r0, r0, #2
	mov sb, r0
	mov r4, sb
	strh r4, [r1, #0x14]
	movs r0, #0
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r4, #0x10
	strb r4, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r1, #0x20]
	movs r0, #0
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r6, #0x80
	lsls r6, r6, #1
	adds r5, r5, r6
	movs r1, #0x9c
	lsls r1, r1, #1
	add r1, sl
	str r5, [r1]
	strh r7, [r1, #0xc]
	mov r4, r8
	strb r4, [r1, #0x1a]
	mov r5, sb
	strh r5, [r1, #0x14]
	movs r0, #0
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r4, #0x10
	strb r4, [r1, #0x1c]
	mov r5, r8
	strb r5, [r1, #0x1f]
	str r0, [r1, #0x20]
	movs r0, #0
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, sl
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	movs r1, #0
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0]
	movs r0, #0xab
	lsls r0, r0, #3
	ldr r5, _08073918 @ =0x00000125
	adds r1, r5, #0
	mov r2, sl
	movs r3, #0
	bl sub_80747F4
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r1, r5, #0
	mov r2, sl
	movs r3, #1
	bl sub_80747F4
	bl sub_807A4BC
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08073900: .4byte 0x0300003D
_08073904: .4byte gPlayers
_08073908: .4byte 0x000004E3
_0807390C: .4byte 0x000004E1
_08073910: .4byte 0x000004E2
_08073914: .4byte 0x000004E5
_08073918: .4byte 0x00000125

	thumb_func_start sub_807391C
sub_807391C: @ 0x0807391C
	push {r4, r5, lr}
	ldr r2, _0807396C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08073970 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08073974 @ =gPlayers
	adds r1, r0, r1
	ldr r0, [r1, #0x10]
	asrs r3, r0, #8
	ldr r4, _08073978 @ =gCamera
	ldr r0, [r4, #0x18]
	adds r0, #0x30
	cmp r3, r0
	ble _08073952
	ldr r0, [r4, #0x1c]
	subs r0, #0x30
	cmp r3, r0
	blt _0807395A
_08073952:
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	movs r0, #0
	strh r0, [r1, #0x18]
_0807395A:
	ldr r0, [r5, #0x30]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0807397C
	ldr r0, [r2]
	bl TaskDestroy
	b _0807399C
	.align 2, 0
_0807396C: .4byte gCurTask
_08073970: .4byte gStageData
_08073974: .4byte gPlayers
_08073978: .4byte gCamera
_0807397C:
	adds r0, r5, #0
	bl sub_8074148
	ldr r0, [r5, #0x30]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0807399C
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807399C
	ldr r0, _080739A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080739A8 @ =sub_80739AC
	str r0, [r1, #8]
_0807399C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080739A4: .4byte gCurTask
_080739A8: .4byte sub_80739AC

	thumb_func_start sub_80739AC
sub_80739AC: @ 0x080739AC
	push {r4, r5, lr}
	ldr r2, _080739FC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08073A00 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08073A04 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r3, _08073A08 @ =gCamera
	ldr r0, [r3, #0x18]
	adds r0, #0x30
	cmp r1, r0
	ble _080739E2
	ldr r0, [r3, #0x1c]
	subs r0, #0x30
	cmp r1, r0
	blt _080739EA
_080739E2:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_080739EA:
	ldr r0, [r5, #0x30]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08073A0C
	ldr r0, [r2]
	bl TaskDestroy
	b _08073A30
	.align 2, 0
_080739FC: .4byte gCurTask
_08073A00: .4byte gStageData
_08073A04: .4byte gPlayers
_08073A08: .4byte gCamera
_08073A0C:
	adds r0, r5, #0
	bl sub_8074148
	ldr r0, [r5, #0x30]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08073A30
	ldr r1, [r4, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08073A30
	bl sub_8079FFC
	ldr r0, _08073A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073A3C @ =sub_8073A40
	str r0, [r1, #8]
_08073A30:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08073A38: .4byte gCurTask
_08073A3C: .4byte sub_8073A40

	thumb_func_start sub_8073A40
sub_8073A40: @ 0x08073A40
	push {r4, r5, lr}
	ldr r0, _08073AB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, _08073ABC @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08073AC0 @ =gPlayers
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r2, _08073AC4 @ =gCamera
	ldr r0, [r2, #0x18]
	adds r0, #0x30
	cmp r1, r0
	ble _08073A8C
	ldr r0, [r2, #0x1c]
	subs r0, #0x30
	cmp r1, r0
	blt _08073A94
_08073A8C:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_08073A94:
	adds r0, r3, #0
	bl sub_8074148
	ldr r0, [r4, #0x14]
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	ble _08073AB2
	ldr r0, [r5, #0x14]
	cmp r0, r1
	ble _08073AB2
	ldr r0, _08073AB8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073AC8 @ =sub_8073ACC
	str r0, [r1, #8]
_08073AB2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08073AB8: .4byte gCurTask
_08073ABC: .4byte gStageData
_08073AC0: .4byte gPlayers
_08073AC4: .4byte gCamera
_08073AC8: .4byte sub_8073ACC

	thumb_func_start sub_8073ACC
sub_8073ACC: @ 0x08073ACC
	push {r4, r5, lr}
	ldr r0, _08073B48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08073B4C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08073B50 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r2, _08073B54 @ =gCamera
	ldr r0, [r2, #0x18]
	adds r0, #0x30
	cmp r1, r0
	ble _08073B02
	ldr r0, [r2, #0x1c]
	subs r0, #0x30
	cmp r1, r0
	blt _08073B0A
_08073B02:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_08073B0A:
	adds r0, r5, #0
	bl sub_8074148
	ldr r1, [r4, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08073B40
	ldr r1, _08073B54 @ =gCamera
	movs r2, #0xb8
	str r2, [r1, #0x10]
	adds r2, #0xa0
	str r2, [r1, #0x14]
	ldr r0, [r1, #0x18]
	subs r0, #0x10
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x1c]
	adds r0, #0x10
	str r0, [r1, #0x1c]
	str r2, [r5, #0x64]
	movs r0, #0x32
	bl sub_80299D4
	ldr r0, _08073B48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073B58 @ =sub_8073B5C
	str r0, [r1, #8]
_08073B40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08073B48: .4byte gCurTask
_08073B4C: .4byte gStageData
_08073B50: .4byte gPlayers
_08073B54: .4byte gCamera
_08073B58: .4byte sub_8073B5C

	thumb_func_start sub_8073B5C
sub_8073B5C: @ 0x08073B5C
	push {r4, r5, r6, lr}
	ldr r5, _08073B8C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _08073B90 @ =0x03000110
	adds r3, r1, r0
	subs r0, #0xcc
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	movs r4, #0
	strh r0, [r2]
	ldrh r0, [r2]
	cmp r0, #0x78
	beq _08073BA8
	cmp r0, #0x78
	bgt _08073B94
	cmp r0, #0x3c
	beq _08073B9A
	b _08073BCA
	.align 2, 0
_08073B8C: .4byte gCurTask
_08073B90: .4byte 0x03000110
_08073B94:
	cmp r0, #0xb4
	beq _08073BB4
	b _08073BCA
_08073B9A:
	ldr r0, _08073BA4 @ =0x000004E5
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	b _08073BCA
	.align 2, 0
_08073BA4: .4byte 0x000004E5
_08073BA8:
	ldr r0, _08073BB0 @ =0x000004E5
	strh r0, [r3, #0xc]
	strb r4, [r3, #0x1a]
	b _08073BCA
	.align 2, 0
_08073BB0: .4byte 0x000004E5
_08073BB4:
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08073BD8 @ =0x03000040
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_807A4A8
	ldr r1, [r5]
	ldr r0, _08073BDC @ =sub_8073BE0
	str r0, [r1, #8]
_08073BCA:
	adds r0, r6, #0
	bl sub_8074148
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08073BD8: .4byte 0x03000040
_08073BDC: .4byte sub_8073BE0

	thumb_func_start sub_8073BE0
sub_8073BE0: @ 0x08073BE0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08073C30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08073C34 @ =0x03000110
	adds r2, r1, r0
	ldr r3, _08073C38 @ =0x03000044
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08073C18
	subs r0, r1, #1
	strh r0, [r5, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08073C18
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08073C18:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08073C3C
	subs r0, r1, #1
	strh r0, [r7]
	adds r6, r5, #0
	adds r6, #0x48
	b _08073C4C
	.align 2, 0
_08073C30: .4byte gCurTask
_08073C34: .4byte 0x03000110
_08073C38: .4byte 0x03000044
_08073C3C:
	adds r0, r5, #0
	adds r0, #0x48
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08073C56
	subs r0, r1, #1
	strh r0, [r6]
_08073C4C:
	ldrh r0, [r6]
	adds r4, r5, #0
	adds r4, #0x3d
	cmp r0, #0
	bne _08073C76
_08073C56:
	adds r0, r5, #0
	bl sub_8074328
	movs r0, #0x14
	strh r0, [r7]
	ldr r1, _08073CA0 @ =gUnknown_080D58E0
	adds r4, r5, #0
	adds r4, #0x3d
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, _08073CA4 @ =0x00000231
	bl sub_80BA57C
_08073C76:
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	cmp r0, #0x95
	bgt _08073C84
	adds r0, r5, #0
	bl sub_80740CC
_08073C84:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08073CCA
	ldr r1, _08073CA8 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08073CBC
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08073CB4
	ldr r0, _08073CAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073CB0 @ =sub_8074C94
	b _08073CC8
	.align 2, 0
_08073CA0: .4byte gUnknown_080D58E0
_08073CA4: .4byte 0x00000231
_08073CA8: .4byte gStageData
_08073CAC: .4byte gCurTask
_08073CB0: .4byte sub_8074C94
_08073CB4:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08073CBC:
	adds r0, r5, #0
	bl sub_8074E4C
	ldr r0, _08073CDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073CE0 @ =sub_8073CE4
_08073CC8:
	str r0, [r1, #8]
_08073CCA:
	adds r0, r5, #0
	bl sub_8074CF0
	adds r0, r5, #0
	bl sub_8074148
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073CDC: .4byte gCurTask
_08073CE0: .4byte sub_8073CE4

	thumb_func_start sub_8073CE4
sub_8073CE4: @ 0x08073CE4
	push {r4, r5, lr}
	ldr r5, _08073D80 @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	ldr r1, _08073D84 @ =0x0300003C
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r4, r0
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	subs r1, #1
	movs r2, #7
	ands r1, r2
	lsls r1, r1, #2
	adds r1, r4, r1
	movs r2, #0x10
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r4, #8]
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	ldr r0, _08073D88 @ =0x03000044
	adds r3, r3, r0
	movs r0, #0xb4
	strh r0, [r3]
	ldr r1, _08073D8C @ =gCamera
	ldr r0, [r4, #0x64]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x34]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r4, #0x38]
	strh r1, [r0]
	ldr r0, _08073D90 @ =0x00000221
	bl sub_80BA57C
	ldr r1, [r5]
	ldr r0, _08073D94 @ =sub_8073D98
	str r0, [r1, #8]
	ldr r1, [r4, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8074148
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08073D80: .4byte gCurTask
_08073D84: .4byte 0x0300003C
_08073D88: .4byte 0x03000044
_08073D8C: .4byte gCamera
_08073D90: .4byte 0x00000221
_08073D94: .4byte sub_8073D98

	thumb_func_start sub_8073D98
sub_8073D98: @ 0x08073D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08073DE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0xa]
	adds r0, #0x20
	strh r0, [r5, #0xa]
	movs r1, #8
	ldrsh r0, [r5, r1]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r0, #0xa
	ldrsh r2, [r5, r0]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	movs r2, #0xaf
	lsls r2, r2, #0xb
	cmp r1, r2
	bgt _08073DE4
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08073DE4
	str r2, [r5]
	b _08073DFC
	.align 2, 0
_08073DE0: .4byte gCurTask
_08073DE4:
	ldr r1, [r5]
	ldr r0, _08073E48 @ =0x000621FF
	cmp r1, r0
	ble _08073E00
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08073E00
	ldr r0, _08073E4C @ =0x00062200
	str r0, [r5]
	movs r2, #8
	ldrsh r0, [r5, r2]
_08073DFC:
	rsbs r0, r0, #0
	strh r0, [r5, #8]
_08073E00:
	ldr r0, [r5]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r5, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r5, #0
	adds r2, #0x44
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	movs r6, #1
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _08073E24
	movs r6, #0
_08073E24:
	cmp r6, #3
	bhi _08073EBE
	adds r7, r5, #0
	adds r7, #0x5c
	ldr r0, _08073E50 @ =gSineTable
	mov sb, r0
_08073E30:
	lsls r1, r6, #1
	adds r3, r7, r1
	ldrh r2, [r3]
	movs r0, #1
	ands r0, r6
	adds r4, r1, #0
	cmp r0, #0
	beq _08073E54
	adds r1, r2, #0
	subs r1, #0x3e
	b _08073E58
	.align 2, 0
_08073E48: .4byte 0x000621FF
_08073E4C: .4byte 0x00062200
_08073E50: .4byte gSineTable
_08073E54:
	adds r1, r2, #0
	adds r1, #0x3e
_08073E58:
	ldr r0, _08073F0C @ =0x000003FF
	ands r1, r0
	strh r1, [r3]
	adds r0, r7, r4
	ldrh r4, [r0]
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r3, r0, #2
	adds r3, r3, r0
	asrs r3, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #0xc
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x4c]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08073E30
_08073EBE:
	ldr r4, [sp, #0x10]
	ldrh r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08073ED0
	ldr r0, _08073F10 @ =0x00000221
	bl sub_80BA57C
_08073ED0:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08073EE8
	mov r2, r8
	lsls r1, r2, #0x10
	movs r0, #0xe6
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08073F1C
_08073EE8:
	ldr r0, [r5, #0x70]
	bl VramFree
	movs r0, #0
	str r0, [r5, #0x70]
	ldr r0, _08073F10 @ =0x00000221
	bl sub_80BA57C
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	ldr r0, _08073F14 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073F18 @ =sub_8073F4C
	str r0, [r1, #8]
	b _08073F3C
	.align 2, 0
_08073F0C: .4byte 0x000003FF
_08073F10: .4byte 0x00000221
_08073F14: .4byte gCurTask
_08073F18: .4byte sub_8073F4C
_08073F1C:
	ldr r1, [r5, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r5, #0
	bl sub_8074CF0
	adds r0, r5, #0
	bl sub_8074148
_08073F3C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8073F4C
sub_8073F4C: @ 0x08073F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _08074028 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x44
	adds r6, r1, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _08074040
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bne _08073F8C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #8
	movs r2, #0
	bl sub_805256C
	ldr r0, _0807402C @ =0x00000221
	bl sub_80BA57C
_08073F8C:
	ldrh r1, [r6]
	cmp r1, #0xef
	bhi _08074044
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074014
	ldr r3, _08074030 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _08074034 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08074038 @ =0x3C6EF35F
	adds r0, r0, r1
	movs r4, #0xff
	ands r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r4, r4, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	movs r1, #3
	adds r3, r0, #0
	ands r3, r1
	lsls r3, r3, #8
	ldr r5, _0807403C @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r0, r1
	lsls r2, r4, #1
	adds r2, r2, r5
	movs r5, #0
	ldrsh r2, [r2, r5]
	muls r2, r0, r2
	lsrs r1, r1, #0xe
	movs r0, #0xba
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsrs r2, r2, #0xe
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r3, r0
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r7, #0x4c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_08074014:
	ldrh r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08074044
	ldr r0, _0807402C @ =0x00000221
	bl sub_80BA57C
	b _08074044
	.align 2, 0
_08074028: .4byte gCurTask
_0807402C: .4byte 0x00000221
_08074030: .4byte gUnknown_03006868
_08074034: .4byte 0x00196225
_08074038: .4byte 0x3C6EF35F
_0807403C: .4byte gSineTable
_08074040:
	ldr r0, _0807404C @ =sub_8074050
	str r0, [r2, #8]
_08074044:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807404C: .4byte sub_8074050

	thumb_func_start sub_8074050
sub_8074050: @ 0x08074050
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08074074 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r3, [r2, #0x68]
	adds r0, #0x44
	adds r4, r1, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08074078
	cmp r0, #1
	beq _080740A4
	b _080740C2
	.align 2, 0
_08074074: .4byte gCurTask
_08074078:
	ldr r0, [r2]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r2]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	str r0, [sp, #0xc]
	ldr r1, _080740A0 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _080740C0
	.align 2, 0
_080740A0: .4byte sub_807A37C
_080740A4:
	ldr r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _080740C2
	ldr r0, [r2, #0x30]
	strb r1, [r0]
	ldr r0, [r2, #0x34]
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, [r2, #0x38]
	strh r1, [r0]
	movs r0, #0x64
_080740C0:
	strh r0, [r4]
_080740C2:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80740CC
sub_80740CC: @ 0x080740CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r5, [r2]
	cmp r5, #0
	bne _0807410C
	bl sub_8074D1C
	adds r1, r4, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	ldr r2, _08074104 @ =gSineTable
	ldr r1, _08074108 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0xc]
	strh r5, [r4, #0xe]
	b _0807413C
	.align 2, 0
_08074104: .4byte gSineTable
_08074108: .4byte 0x000003FF
_0807410C:
	ldr r3, _08074144 @ =gSineTable
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #6
	strh r1, [r4, #0xe]
	ldrh r2, [r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4, #0xe]
_0807413C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074144: .4byte gSineTable

	thumb_func_start sub_8074148
sub_8074148: @ 0x08074148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov r7, sl
	adds r7, #0x70
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	str r0, [sp]
	mov r2, sl
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r5, _08074310 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r6, #0xe
	ldrsh r1, [r2, r6]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x50
	mov r0, sl
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r3, sl
	movs r6, #0xe
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x88
	lsls r7, r7, #1
	add r7, sl
	mov r0, sl
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r3, sl
	movs r6, #0xe
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sl
	adds r0, #0x5a
	ldr r1, _08074314 @ =0xFFFFFF00
	adds r4, r1, #0
	ldrh r0, [r0]
	adds r4, r4, r0
	ldr r2, _08074318 @ =0x000003FF
	adds r0, r2, #0
	ands r4, r0
	ldr r2, _0807431C @ =gSineTable
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov ip, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov r8, r3
	mov r0, sl
	adds r0, #0x46
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r3, [r0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1b
	mov r7, sl
	adds r7, #0x98
	mov r1, sl
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r0, [r5]
	subs r2, r2, r0
	strh r2, [r7, #0x10]
	movs r6, #0xe
	ldrsh r0, [r1, r6]
	ldr r1, [r1, #4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r0, [r5, #4]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r3, r0
	asrs r0, r0, #0xe
	subs r2, r2, r0
	strh r2, [r7, #0x10]
	mov r0, ip
	muls r0, r3, r0
	asrs r0, r0, #0xe
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	ldr r2, _08074320 @ =gUnknown_03002C24
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #8]
	ldrh r0, [r7, #0x10]
	mov r1, sb
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl sub_80BF8F4
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x50
	ldr r2, [sp]
	lsls r2, r2, #2
	str r2, [sp, #4]
	add r2, sl
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	mov r6, sl
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x12
	ldrsh r1, [r2, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7, #8]
	ldr r1, _08074324 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074310: .4byte gCamera
_08074314: .4byte 0xFFFFFF00
_08074318: .4byte 0x000003FF
_0807431C: .4byte gSineTable
_08074320: .4byte gUnknown_03002C24
_08074324: .4byte 0xFFFFFBFF

	thumb_func_start sub_8074328
sub_8074328: @ 0x08074328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08074414 @ =sub_807442C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r2, _08074418 @ =0x0300001C
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x5a
	ldr r5, _0807441C @ =0xFFFFFF00
	adds r4, r5, #0
	ldrh r1, [r1]
	adds r4, r4, r1
	ldr r7, _08074420 @ =0x000003FF
	adds r1, r7, #0
	ands r4, r1
	ldr r2, _08074424 @ =gSineTable
	lsls r1, r4, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r5, [r1, r7]
	mov sl, r5
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r7, [r1, r2]
	mov r8, r7
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	movs r5, #0x41
	subs r5, r5, r1
	str r6, [r3]
	movs r7, #0xc
	ldrsh r2, [r6, r7]
	ldr r1, [r6]
	adds r1, r1, r2
	mov r7, r8
	asrs r2, r7, #1
	adds r1, r1, r2
	str r1, [r3, #4]
	movs r1, #0xe
	ldrsh r2, [r6, r1]
	ldr r1, [r6, #4]
	adds r1, r1, r2
	mov r7, sl
	asrs r2, r7, #1
	adds r1, r1, r2
	str r1, [r3, #8]
	mov r1, r8
	muls r1, r5, r1
	asrs r1, r1, #8
	movs r2, #0
	strh r1, [r3, #0xc]
	mov r1, sl
	muls r1, r5, r1
	asrs r1, r1, #8
	strh r1, [r3, #0xe]
	str r5, [r3, #0x10]
	strh r4, [r3, #0x14]
	movs r1, #0xc
	strb r1, [r3, #0x18]
	strb r2, [r3, #0x19]
	strb r2, [r3, #0x1a]
	strb r2, [r3, #0x1b]
	ldr r1, [r6, #0x68]
	str r1, [r3, #0x44]
	ldr r1, [r6, #0x6c]
	str r1, [r3, #0x48]
	ldr r1, [r6, #0x50]
	str r1, [r0]
	ldr r1, _08074428 @ =0x000004E4
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	subs r1, #0xe4
	strh r1, [r0, #0x14]
	mov r1, sb
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074414: .4byte sub_807442C
_08074418: .4byte 0x0300001C
_0807441C: .4byte 0xFFFFFF00
_08074420: .4byte 0x000003FF
_08074424: .4byte gSineTable
_08074428: .4byte 0x000004E4

	thumb_func_start sub_807442C
sub_807442C: @ 0x0807442C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r3, #0
	ldr r0, _080744B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r6, [r4]
	adds r0, #0x1c
	adds r7, r1, r0
	movs r1, #0x70
	adds r1, r1, r6
	mov r8, r1
	ldrb r1, [r4, #0x18]
	movs r0, #0x18
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08074488
	subs r0, r1, #1
	strb r0, [r4, #0x18]
	ldr r1, [r4, #0x10]
	subs r1, #4
	str r1, [r4, #0x10]
	ldr r2, _080744BC @ =gSineTable
	ldrh r0, [r4, #0x14]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0xe]
_08074488:
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	ldr r1, [r4, #4]
	adds r1, r1, r0
	str r1, [r4, #4]
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r2
	str r0, [r4, #8]
	ldr r2, _080744C0 @ =0x00054400
	cmp r1, r2
	bgt _080744C4
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080744C4
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	str r2, [r4, #4]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	b _080744E2
	.align 2, 0
_080744B8: .4byte gCurTask
_080744BC: .4byte gSineTable
_080744C0: .4byte 0x00054400
_080744C4:
	ldr r1, [r4, #4]
	ldr r0, _0807452C @ =0x00065BFF
	cmp r1, r0
	ble _080744E8
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _080744E8
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, _08074530 @ =0x00065C00
	str r0, [r4, #4]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
_080744E2:
	rsbs r0, r0, #0
	strh r0, [r4, #0xc]
	movs r3, #1
_080744E8:
	ldr r0, [r4, #8]
	movs r1, #0xb8
	lsls r1, r1, #8
	cmp r0, r1
	bgt _08074510
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08074510
	cmp r3, #0
	bne _08074504
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
_08074504:
	str r1, [r4, #8]
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	movs r3, #1
_08074510:
	cmp r3, #0
	beq _0807451A
	ldr r0, _08074534 @ =0x00000232
	bl sub_80BA57C
_0807451A:
	ldr r1, [r4, #8]
	ldr r0, _08074538 @ =0x00015FFF
	cmp r1, r0
	ble _08074540
	ldr r0, _0807453C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074668
	.align 2, 0
_0807452C: .4byte 0x00065BFF
_08074530: .4byte 0x00065C00
_08074534: .4byte 0x00000232
_08074538: .4byte 0x00015FFF
_0807453C: .4byte gCurTask
_08074540:
	ldrb r0, [r4, #0x19]
	cmp r0, #9
	bhi _08074550
	adds r5, r6, #0
	adds r5, #0x3d
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807456C
_08074550:
	movs r0, #0x1e
	strb r0, [r4, #0x1b]
	ldr r0, _08074564 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074568 @ =sub_8074DC4
	str r0, [r1, #8]
	bl _call_via_r0
	b _08074668
	.align 2, 0
_08074564: .4byte gCurTask
_08074568: .4byte sub_8074DC4
_0807456C:
	ldr r1, [r4, #0x44]
	adds r0, r4, #0
	bl sub_807467C
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	bl sub_807467C
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _08074662
	movs r1, #0x3e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08074662
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074662
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x24
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	movs r5, #0xc
	ldrsh r1, [r6, r5]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x24
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _080745CC
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080745DE
	cmp r2, r1
	blt _08074662
_080745CC:
	mov r0, r8
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08074662
_080745DE:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r3, r2
	bgt _0807461C
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r2
	bge _0807462E
	cmp r3, r2
	blt _08074662
_0807461C:
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	blt _08074662
_0807462E:
	adds r0, r6, #0
	bl sub_8074AF0
	ldr r2, _0807464C @ =0x0000FE80
	strh r2, [r4, #0xe]
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	ldr r1, [r6]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	cmp r0, r1
	bge _08074650
	strh r2, [r4, #0xc]
	b _08074656
	.align 2, 0
_0807464C: .4byte 0x0000FE80
_08074650:
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
_08074656:
	movs r0, #0x1e
	strb r0, [r4, #0x1b]
	ldr r0, _08074674 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074678 @ =sub_8074DC4
	str r0, [r1, #8]
_08074662:
	adds r0, r4, #0
	bl sub_8074E18
_08074668:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074674: .4byte gCurTask
_08074678: .4byte sub_8074DC4

	thumb_func_start sub_807467C
sub_807467C: @ 0x0807467C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4]
	mov r8, r0
	adds r7, r4, #0
	adds r7, #0x1c
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807469C
	subs r0, #1
	strb r0, [r4, #0x1b]
	b _080747E6
_0807469C:
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	beq _080746A8
	b _080747E6
_080746A8:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #8]
	asrs r2, r2, #8
	str r6, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #0
	bne _080746C0
	b _080747D4
_080746C0:
	ldr r0, [r6, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080746CC
	b _080747D4
_080746CC:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0xf7
	bne _080746D6
	b _080747D4
_080746D6:
	movs r0, #0xa
	strb r0, [r4, #0x1b]
	movs r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #0x14]
	adds r1, r5, #0
	movs r2, #0xa
	bl sub_80B1064
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08074734
	ldrh r1, [r4, #0x14]
	subs r0, r1, r5
	cmp r0, #0
	blt _08074724
	subs r1, r1, r0
	ldr r0, _08074720 @ =0x000003FF
	b _0807472A
	.align 2, 0
_08074720: .4byte 0x000003FF
_08074724:
	subs r0, r5, r1
	subs r0, r1, r0
	ldr r1, _08074730 @ =0x000003FF
_0807472A:
	ands r0, r1
	strh r0, [r4, #0x14]
	b _08074750
	.align 2, 0
_08074730: .4byte 0x000003FF
_08074734:
	ldrh r1, [r4, #0x14]
	subs r0, r1, r5
	cmp r0, #0
	blt _08074748
	adds r1, r1, r0
	ldr r0, _08074744 @ =0x000003FF
	b _0807474C
	.align 2, 0
_08074744: .4byte 0x000003FF
_08074748:
	ldr r0, _080747C4 @ =0x000003FF
	adds r1, r5, #0
_0807474C:
	ands r1, r0
	strh r1, [r4, #0x14]
_08074750:
	ldr r2, _080747C8 @ =gSineTable
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x10]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #0xe]
	ldrh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x1a]
	mov r1, r8
	ldr r0, [r1, #0x54]
	str r0, [r7]
	ldr r0, _080747CC @ =0x000004E4
	strh r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0xd4
	bne _080747BC
	adds r0, r6, #0
	bl sub_800DB30
_080747BC:
	ldr r0, _080747D0 @ =0x00000233
	bl sub_80BA57C
	b _080747E6
	.align 2, 0
_080747C4: .4byte 0x000003FF
_080747C8: .4byte gSineTable
_080747CC: .4byte 0x000004E4
_080747D0: .4byte 0x00000233
_080747D4:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #8]
	asrs r2, r2, #8
	str r6, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_080747E6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80747F4
sub_80747F4: @ 0x080747F4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	lsls r3, r3, #0x18
	mov sb, r3
	mov r0, sb
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _080748B8 @ =sub_80748D0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080748BC @ =sub_8074D7C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r1, _080748C0 @ =0x03000028
	adds r4, r3, r1
	str r5, [r2]
	lsls r6, r6, #8
	str r6, [r2, #0xc]
	mov r0, r8
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r1, #0
	mov r8, r1
	movs r6, #0
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x16]
	ldr r1, _080748C4 @ =0x03000020
	adds r0, r3, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r2, #0x24]
	strh r6, [r2, #0x26]
	ldr r0, [r5, #0x68]
	str r0, [r2, #0x18]
	ldr r0, [r5, #0x6c]
	str r0, [r2, #0x1c]
	mov r0, sb
	lsls r0, r0, #2
	mov sb, r0
	adds r5, #0x34
	add r5, sb
	ldr r1, _080748C8 @ =0x03000024
	adds r3, r3, r1
	str r3, [r5]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	ldr r0, _080748CC @ =0x000003A9
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r1, r8
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080748B8: .4byte sub_80748D0
_080748BC: .4byte sub_8074D7C
_080748C0: .4byte 0x03000028
_080748C4: .4byte 0x03000020
_080748C8: .4byte 0x03000024
_080748CC: .4byte 0x000003A9

	thumb_func_start sub_80748D0
sub_80748D0: @ 0x080748D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08074960 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r2, [r7]
	adds r1, #0x28
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _08074964 @ =0x03000020
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r1, [r7, #0x24]
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08074910
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08074910
	movs r0, #0
	strh r0, [r7, #0x24]
_08074910:
	movs r5, #0
	movs r2, #0x18
	adds r2, r2, r7
	mov sl, r2
	movs r0, #0x20
	adds r0, r0, r7
	mov r8, r0
	mov r6, r8
	movs r1, #1
	mov sb, r1
_08074924:
	lsls r0, r5, #2
	add r0, sl
	ldr r4, [r0]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, [r7, #0x10]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08074968
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sb
	lsls r0, r5
	ldrb r1, [r6]
	orrs r0, r1
	b _08074970
	.align 2, 0
_08074960: .4byte gCurTask
_08074964: .4byte 0x03000020
_08074968:
	mov r1, sb
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
_08074970:
	strb r0, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074924
	ldrh r2, [r7, #0x24]
	subs r0, r2, #2
	lsls r0, r0, #0x10
	ldr r1, _080749C4 @ =0x03E50000
	cmp r0, r1
	bhi _0807498C
	subs r0, r2, #1
	strh r0, [r7, #0x24]
_0807498C:
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080749AE
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080749A0
	b _08074AA8
_080749A0:
	ldrh r0, [r7, #0x24]
	cmp r0, #0
	bne _080749AE
	cmp r3, r2
	bne _080749AE
	movs r0, #0x3c
	strh r0, [r7, #0x26]
_080749AE:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08074AA8
	subs r1, r3, r2
	cmp r1, #0
	blt _080749CC
	ldr r0, _080749C8 @ =0x00005FFF
	cmp r1, r0
	ble _080749D6
	b _08074ADA
	.align 2, 0
_080749C4: .4byte 0x03E50000
_080749C8: .4byte 0x00005FFF
_080749CC:
	subs r1, r2, r3
	ldr r0, _080749E8 @ =0x00005FFF
	cmp r1, r0
	ble _080749D6
	b _08074ADA
_080749D6:
	ldrh r1, [r7, #0x24]
	cmp r1, #1
	beq _08074A36
	cmp r1, #1
	bgt _080749EC
	cmp r1, #0
	beq _080749F6
	b _08074ADA
	.align 2, 0
_080749E8: .4byte 0x00005FFF
_080749EC:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _08074A6C
	b _08074ADA
_080749F6:
	ldrh r1, [r7, #0x26]
	movs r2, #0x26
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08074A04
	subs r0, r1, #1
	b _08074AD8
_08074A04:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, sl
	mov r2, r8
	movs r6, #1
_08074A14:
	lsls r0, r5, #2
	adds r0, r3, r0
	ldr r4, [r0]
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A2A
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A2A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A14
	b _08074ADA
_08074A36:
	ldr r1, _08074A68 @ =0xFFFFFA00
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, r8
	movs r6, #1
	mov r2, sl
_08074A44:
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A5A
	lsls r0, r5, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A5A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A44
	b _08074ADA
	.align 2, 0
_08074A68: .4byte 0xFFFFFA00
_08074A6C:
	cmp r3, r2
	bgt _08074A74
	str r2, [r7, #0x10]
	b _08074ADA
_08074A74:
	ldr r1, _08074AA4 @ =0xFFFFFA00
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, r8
	movs r6, #1
	mov r2, sl
_08074A82:
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A98
	lsls r0, r5, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A98:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A82
	b _08074ADA
	.align 2, 0
_08074AA4: .4byte 0xFFFFFA00
_08074AA8:
	adds r0, r3, #0
	adds r1, r2, #0
	cmp r0, r1
	beq _08074AD6
	cmp r0, r1
	ble _08074AC8
	ldr r2, _08074AC4 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r7, #0x10]
	cmp r0, r1
	bgt _08074AD6
	str r1, [r7, #0x10]
	b _08074AD6
	.align 2, 0
_08074AC4: .4byte 0xFFFFFA00
_08074AC8:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r7, #0x10]
	cmp r0, r2
	blt _08074AD6
	str r2, [r7, #0x10]
_08074AD6:
	movs r0, #0
_08074AD8:
	strh r0, [r7, #0x26]
_08074ADA:
	adds r0, r7, #0
	bl sub_8074D90
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8074AF0
sub_8074AF0: @ 0x08074AF0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r6, r4, r0
	movs r1, #0x3e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08074B98
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08074B12
	subs r0, r1, #1
	strb r0, [r5]
_08074B12:
	ldr r0, _08074B28 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08074B2C
	ldrb r0, [r5]
	cmp r0, #4
	bne _08074B38
	movs r0, #0x33
	bl sub_80299D4
	b _08074B38
	.align 2, 0
_08074B28: .4byte gStageData
_08074B2C:
	ldrb r0, [r5]
	cmp r0, #3
	bne _08074B38
	movs r0, #0x33
	bl sub_80299D4
_08074B38:
	movs r0, #0xeb
	bl sub_80BA57C
	bl sub_807A468
	movs r0, #0xb4
	strh r0, [r4, #0x3e]
	movs r0, #2
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r0, _08074B84 @ =0x000004E6
	movs r1, #0
	movs r2, #0xb4
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _08074B88 @ =0x000004E7
	movs r1, #0
	movs r2, #0xb4
	movs r3, #0
	bl sub_8078DB0
	ldr r1, _08074B8C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08074B98
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08074B90
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074B98
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _08074B98
	.align 2, 0
_08074B84: .4byte 0x000004E6
_08074B88: .4byte 0x000004E7
_08074B8C: .4byte gStageData
_08074B90:
	ldrb r1, [r5]
	movs r0, #4
	bl sub_8027674
_08074B98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074BA0
sub_08074BA0: @ 0x08074BA0
	push {r4, r5, lr}
	ldr r1, _08074C10 @ =gStageData
	adds r5, r1, #0
	adds r5, #0x88
	ldr r1, [r5]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _08074C28
	ldr r1, _08074C14 @ =0x0300003D
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08074C18 @ =0x03000044
	adds r2, r3, r0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r2, _08074C1C @ =0x0300005C
	adds r0, r3, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	ldr r1, _08074C20 @ =0x03000060
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r1, [r0]
	ldr r1, [r4, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _08074C24 @ =sub_8073CE4
	str r0, [r1, #8]
	b _08074C48
	.align 2, 0
_08074C10: .4byte gStageData
_08074C14: .4byte 0x0300003D
_08074C18: .4byte 0x03000044
_08074C1C: .4byte 0x0300005C
_08074C20: .4byte 0x03000060
_08074C24: .4byte sub_8073CE4
_08074C28:
	cmp r1, #1
	blt _08074C48
	cmp r1, #4
	bgt _08074C48
	cmp r1, #3
	blt _08074C48
	ldr r1, _08074C50 @ =0x0300003D
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08074C48
	adds r0, r4, #0
	bl sub_8074AF0
_08074C48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074C50: .4byte 0x0300003D

	thumb_func_start sub_8074C54
sub_8074C54: @ 0x08074C54
	push {r4, r5, lr}
	ldr r4, _08074C74 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08074C7C
	ldr r1, [r4]
	ldr r0, _08074C78 @ =sub_807391C
	b _08074C80
	.align 2, 0
_08074C74: .4byte gCurTask
_08074C78: .4byte sub_807391C
_08074C7C:
	ldr r1, [r4]
	ldr r0, _08074C90 @ =sub_8073ACC
_08074C80:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8074148
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074C90: .4byte sub_8073ACC

	thumb_func_start sub_8074C94
sub_8074C94: @ 0x08074C94
	push {lr}
	ldr r0, _08074CC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x68]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x6c]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_8074148
	pop {r0}
	bx r0
	.align 2, 0
_08074CC0: .4byte gCurTask

	thumb_func_start sub_8074CC4
sub_8074CC4: @ 0x08074CC4
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _08074CD8
	bl VramFree
_08074CD8:
	ldr r0, [r4, #0x4c]
	bl VramFree
	ldr r0, [r4, #0x50]
	bl VramFree
	ldr r0, [r4, #0x54]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8074CF0
sub_8074CF0: @ 0x08074CF0
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x3c
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldr r0, [r2, #0xc]
	str r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _08074D18
	movs r0, #0
	strb r0, [r3]
_08074D18:
	pop {r0}
	bx r0

	thumb_func_start sub_8074D1C
sub_8074D1C: @ 0x08074D1C
	adds r2, r0, #0
	adds r2, #0x58
	ldrh r1, [r2]
	adds r1, #7
	strh r1, [r2]
	ldr r3, _08074D3C @ =gSineTable
	ldr r2, _08074D40 @ =0x000003FF
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	asrs r1, r1, #7
	adds r0, #0x5a
	strh r1, [r0]
	bx lr
	.align 2, 0
_08074D3C: .4byte gSineTable
_08074D40: .4byte 0x000003FF

	thumb_func_start sub_8074D44
sub_8074D44: @ 0x08074D44
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0x70
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08074D72
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	ldr r1, [r4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
_08074D72:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8074D7C
sub_8074D7C: @ 0x08074D7C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8074D90
sub_8074D90: @ 0x08074D90
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x28
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08074DC0 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074DC0: .4byte gCamera

	thumb_func_start sub_8074DC4
sub_8074DC4: @ 0x08074DC4
	push {lr}
	ldr r3, _08074E00 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #0xe]
	adds r0, #0x18
	strh r0, [r2, #0xe]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	ldrb r0, [r2, #0x1b]
	subs r1, r0, #1
	strb r1, [r2, #0x1b]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08074E04
	ldr r0, [r3]
	bl TaskDestroy
	b _08074E12
	.align 2, 0
_08074E00: .4byte gCurTask
_08074E04:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08074E12
	adds r0, r2, #0
	bl sub_8074E18
_08074E12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8074E18
sub_8074E18: @ 0x08074E18
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x1c
	ldr r1, [r0, #4]
	asrs r1, r1, #8
	ldr r3, _08074E48 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #8]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074E48: .4byte gCamera

	thumb_func_start sub_8074E4C
sub_8074E4C: @ 0x08074E4C
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r3, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r3, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	bx lr
	.align 2, 0
    
    @ Called on init of Boss 7
	thumb_func_start sub_8074E88
sub_8074E88: @ 0x08074E88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08074F14 @ =sub_80776C8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08074F18 @ =sub_8077850
	str r1, [sp]
	movs r1, #0xd8
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldr r2, _08074F1C @ =gStageData
	adds r0, r2, #0
	adds r0, #0x88
	ldr r1, [sp, #4]
	str r1, [r0]
	movs r0, #0x81
	lsls r0, r0, #0xb
	str r0, [r7]
	ldr r0, _08074F20 @ =0x00024900
	str r0, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r1, #0
	strh r0, [r7, #0x32]
	str r0, [r7, #0x3c]
	str r0, [r7, #0x44]
	strh r0, [r7, #0x30]
	ldr r5, _08074F24 @ =0x03000022
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #1
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #1
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #1
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #1
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #1
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #1
	adds r0, r3, r5
	strb r1, [r0]
	adds r5, #0xac
	adds r0, r3, r5
	strb r1, [r0]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08074F2C
	ldr r0, _08074F28 @ =0x03000021
	adds r1, r3, r0
	movs r0, #8
	b _08074F32
	.align 2, 0
_08074F14: .4byte sub_80776C8
_08074F18: .4byte sub_8077850
_08074F1C: .4byte gStageData
_08074F20: .4byte 0x00024900
_08074F24: .4byte 0x03000022
_08074F28: .4byte 0x03000021
_08074F2C:
	ldr r5, _08075054 @ =0x03000021
	adds r1, r3, r5
	movs r0, #6
_08074F32:
	strb r0, [r1]
	str r4, [r7, #0x1c]
	ldr r2, _08075058 @ =gPlayers
	str r2, [r7, #0x50]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r7, #0x54]
	movs r0, #0
	mov sl, r0
	movs r5, #0
	strh r5, [r7, #0x34]
	strh r5, [r7, #0x36]
	str r5, [r7, #8]
	str r5, [r7, #0xc]
	adds r0, r7, #0
	bl sub_8077918
	movs r0, #0x74
	bl VramMalloc
	str r0, [r7, #0x48]
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r7, #0x4c]
	movs r0, #0x41
	bl VramMalloc
	adds r4, r0, #0
	adds r1, r7, #0
	adds r1, #0x58
	str r4, [r7, #0x58]
	movs r0, #0x9d
	lsls r0, r0, #3
	strh r0, [r1, #0xc]
	mov r0, sl
	strb r0, [r1, #0x1a]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r0, sb
	strb r0, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r1, #0x20]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r1, #0x90
	lsls r1, r1, #3
	adds r4, r4, r1
	adds r1, r7, #0
	adds r1, #0x80
	str r4, [r1]
	ldr r0, _0807505C @ =0x000004EB
	strh r0, [r1, #0xc]
	mov r0, sl
	strb r0, [r1, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sb
	strb r0, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	mov r0, r8
	str r0, [r1, #0x20]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r1, #0x90
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r7, #0
	adds r1, #0xa8
	str r4, [r1]
	ldr r0, _08075060 @ =0x000004E9
	strh r0, [r1, #0xc]
	mov r0, sl
	strb r0, [r1, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r5, sb
	strb r5, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	mov r5, r8
	str r5, [r1, #0x20]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl sub_8076A54
	adds r1, r7, #0
	adds r1, #0xd0
	str r0, [r1]
	adds r0, r7, #0
	bl sub_8076550
	bl sub_807A4BC
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08075054: .4byte 0x03000021
_08075058: .4byte gPlayers
_0807505C: .4byte 0x000004EB
_08075060: .4byte 0x000004E9

	thumb_func_start sub_8075064
sub_8075064: @ 0x08075064
	push {r4, r5, r6, r7, lr}
	ldr r0, _080750C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r5, #0
_08075074:
	lsls r0, r5, #2
	adds r1, r7, #0
	adds r1, #0x50
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r2, [r4, #4]
	ldr r0, _080750C8 @ =0x08000100
	ands r0, r2
	cmp r0, #0
	bne _080750D4
	ldr r1, [r4, #0x14]
	ldr r0, _080750CC @ =0x0000D6FF
	cmp r1, r0
	ble _080750EC
	movs r0, #0x80
	lsls r0, r0, #0x14
	orrs r0, r2
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080750A8
	adds r0, r4, #0
	bl sub_8016F28
_080750A8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080750BA
	ldr r0, _080750D0 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #4]
_080750BA:
	adds r0, r4, #0
	bl Player_800E67C
	b _080750EC
	.align 2, 0
_080750C4: .4byte gCurTask
_080750C8: .4byte 0x08000100
_080750CC: .4byte 0x0000D6FF
_080750D0: .4byte 0xFEFFFFFF
_080750D4:
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r2
	cmp r0, #0
	beq _080750EC
	ldr r1, [r4, #0x14]
	ldr r0, _080751B4 @ =0x0000D6FF
	cmp r1, r0
	bgt _080750EC
	ldr r0, _080751B8 @ =0xF7FFFFFF
	ands r2, r0
	str r2, [r4, #4]
_080750EC:
	ldr r1, [r4, #0x10]
	ldr r0, _080751BC @ =0x0004A5FF
	cmp r1, r0
	ble _080750FE
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_080750FE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08075074
	ldr r3, _080751C0 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _080751C4 @ =gPlayers
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	ldr r1, [r4, #0x14]
	ldr r0, _080751C8 @ =0x000225FF
	cmp r1, r0
	ble _080751F0
	ldr r1, _080751CC @ =gCamera
	movs r0, #0xdc
	lsls r0, r0, #1
	str r0, [r1, #0x10]
	movs r0, #0xb6
	lsls r0, r0, #2
	str r0, [r1, #0x14]
	movs r6, #0
	strh r6, [r7, #0x30]
	ldrb r0, [r3, #3]
	cmp r0, #5
	beq _080751E4
	movs r0, #0x34
	bl sub_80299D4
	ldr r0, _080751D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080751D4 @ =sub_8075204
	str r0, [r1, #8]
	ldr r1, [r5, #0x14]
	ldr r0, _080751D8 @ =0x000289FF
	cmp r1, r0
	ble _080751F0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _080751F0
	strh r6, [r5, #0x1c]
	strh r6, [r5, #0x1a]
	strh r6, [r5, #0x18]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x27
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xe
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _080751DC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r1, _080751E0 @ =Player_8005380
	adds r0, r5, #0
	bl SetPlayerCallback
	b _080751F0
	.align 2, 0
_080751B4: .4byte 0x0000D6FF
_080751B8: .4byte 0xF7FFFFFF
_080751BC: .4byte 0x0004A5FF
_080751C0: .4byte gStageData
_080751C4: .4byte gPlayers
_080751C8: .4byte 0x000225FF
_080751CC: .4byte gCamera
_080751D0: .4byte gCurTask
_080751D4: .4byte sub_8075204
_080751D8: .4byte 0x000289FF
_080751DC: .4byte 0xFFFFFEFF
_080751E0: .4byte Player_8005380
_080751E4:
	bl sub_8079FFC
	ldr r0, _080751FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08075200 @ =sub_80777AC
	str r0, [r1, #8]
_080751F0:
	adds r0, r7, #0
	bl sub_8076328
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080751FC: .4byte gCurTask
_08075200: .4byte sub_80777AC

	thumb_func_start sub_8075204
sub_8075204: @ 0x08075204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08075244 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, _08075248 @ =0x030000D0
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldrh r0, [r4, #0x30]
	adds r2, r0, #1
	strh r2, [r4, #0x30]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075250
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	bne _08075250
	ldr r0, _0807524C @ =gDispCnt
	ldrh r2, [r0]
	orrs r1, r2
	b _08075258
	.align 2, 0
_08075244: .4byte gCurTask
_08075248: .4byte 0x030000D0
_0807524C: .4byte gDispCnt
_08075250:
	ldr r0, _0807526C @ =gDispCnt
	ldrh r2, [r0]
	ldr r1, _08075270 @ =0x0000FEFF
	ands r1, r2
_08075258:
	strh r1, [r0]
	adds r3, r0, #0
	ldrh r0, [r4, #0x30]
	cmp r0, #0x43
	beq _08075294
	cmp r0, #0x43
	bgt _08075274
	cmp r0, #0x1e
	beq _0807527A
	b _080752CA
	.align 2, 0
_0807526C: .4byte gDispCnt
_08075270: .4byte 0x0000FEFF
_08075274:
	cmp r0, #0x7f
	beq _0807529E
	b _080752CA
_0807527A:
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	ldr r2, _08075290 @ =0xF7FFFFFF
	ands r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	ands r0, r2
	str r0, [r1, #4]
	b _080752CA
	.align 2, 0
_08075290: .4byte 0xF7FFFFFF
_08075294:
	adds r0, r4, #0
	movs r1, #4
	bl sub_8077954
	b _080752CA
_0807529E:
	adds r1, r5, #0
	adds r1, #0xb1
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	strh r2, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8077954
	bl sub_807A4A8
	ldr r0, _08075314 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08075318 @ =sub_8075324
	str r0, [r1, #8]
_080752CA:
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0x50
	movs r7, #0x80
	lsls r7, r7, #0x14
	mov ip, r7
	movs r3, #0
	ldr r0, _0807531C @ =0x0004A5FF
	mov r8, r0
	ldr r6, _08075320 @ =0x0004A600
_080752DE:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	ldr r0, [r1, #4]
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _080752FA
	ldr r0, [r1, #0x10]
	cmp r0, r8
	ble _080752FA
	str r6, [r1, #0x10]
	strh r3, [r1, #0x18]
	strh r3, [r1, #0x1c]
_080752FA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _080752DE
	adds r0, r4, #0
	bl sub_8076328
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075314: .4byte gCurTask
_08075318: .4byte sub_8075324
_0807531C: .4byte 0x0004A5FF
_08075320: .4byte 0x0004A600

	thumb_func_start sub_8075324
sub_8075324: @ 0x08075324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r7, _080753C8 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, _080753CC @ =0x03000080
	adds r0, r0, r4
	mov sl, r0
	ldr r1, _080753D0 @ =0x03000058
	adds r1, r4, r1
	str r1, [sp]
	ldr r2, _080753D4 @ =0x030000A8
	adds r2, r4, r2
	str r2, [sp, #4]
	mov r3, r8
	ldr r6, [r3, #0x50]
	ldrh r0, [r3, #0x30]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #0x30]
	ldr r1, _080753D8 @ =0x03000026
	adds r0, r4, r1
	strb r5, [r0]
	mov r0, r8
	bl sub_80778D0
	mov r2, r8
	ldr r1, [r2, #0x50]
	mov r0, r8
	bl sub_8077874
	mov r3, r8
	ldr r1, [r3, #0x54]
	mov r0, r8
	bl sub_8077874
	mov r0, r8
	bl sub_8076420
	ldr r0, _080753DC @ =0x03000027
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08075404
	strb r5, [r1]
	ldr r1, _080753E0 @ =0x0300002B
	adds r0, r4, r1
	strb r5, [r0]
	movs r0, #1
	mov r2, r8
	strh r0, [r2, #0x2c]
	ldr r1, [r7]
	ldr r0, _080753E4 @ =sub_8075674
	str r0, [r1, #8]
	ldr r1, _080753E8 @ =gStageData
	ldrb r0, [r1, #3]
	ldr r3, _080753EC @ =0x03000021
	adds r3, r4, r3
	str r3, [sp, #8]
	cmp r0, #5
	beq _080753B0
	b _080755FC
_080753B0:
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _080753F0
	movs r0, #3
	movs r1, #0
	bl sub_8027674
	ldr r0, _080753EC @ =0x03000021
	adds r0, r4, r0
	str r0, [sp, #8]
	b _080755FC
	.align 2, 0
_080753C8: .4byte gCurTask
_080753CC: .4byte 0x03000080
_080753D0: .4byte 0x03000058
_080753D4: .4byte 0x030000A8
_080753D8: .4byte 0x03000026
_080753DC: .4byte 0x03000027
_080753E0: .4byte 0x0300002B
_080753E4: .4byte sub_8075674
_080753E8: .4byte gStageData
_080753EC: .4byte 0x03000021
_080753F0:
	movs r0, #4
	movs r1, #0
	bl sub_8027674
	ldr r1, _08075400 @ =0x03000021
	adds r1, r4, r1
	str r1, [sp, #8]
	b _080755FC
	.align 2, 0
_08075400: .4byte 0x03000021
_08075404:
	ldr r3, _0807544C @ =0x03000024
	adds r2, r4, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _08075420
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	ldr r1, _08075450 @ =0x03000021
	adds r1, r4, r1
	str r1, [sp, #8]
	cmp r0, #0
	beq _08075420
	b _080755FC
_08075420:
	ldr r1, _08075454 @ =gUnknown_080D5940
	ldr r3, _08075450 @ =0x03000021
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	movs r2, #0
	ldr r1, _08075458 @ =0x03000023
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08075464
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	b _08075472
	.align 2, 0
_0807544C: .4byte 0x03000024
_08075450: .4byte 0x03000021
_08075454: .4byte gUnknown_080D5940
_08075458: .4byte 0x03000023
_0807545C:
	movs r0, #1
	mov r2, sb
	strb r0, [r2]
	b _08075516
_08075464:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08075472
	movs r2, #1
_08075472:
	mov r1, r8
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	mov sb, r1
	mov r3, r8
	adds r3, #0x21
	str r3, [sp, #8]
	cmp r2, #0
	beq _08075516
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r1, #0x14]
	adds r0, r0, r1
	ldr r1, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807549A
	rsbs r0, r1, #0
_0807549A:
	asrs r1, r0, #8
	movs r2, #0
	ldr r3, _080754F4 @ =gUnknown_080D5978
	adds r4, r3, #0
_080754A2:
	lsls r5, r2, #3
	adds r0, r5, r4
	ldrh r0, [r0]
	cmp r1, r0
	bgt _0807550C
	ldr r6, _080754F8 @ =gUnknown_03006868
	ldr r0, [r6]
	ldr r7, _080754FC @ =0x00196225
	muls r0, r7, r0
	ldr r2, _08075500 @ =0x3C6EF35F
	adds r4, r0, r2
	str r4, [r6]
	adds r0, r4, #0
	ldr r1, _08075504 @ =0x00002710
	str r3, [sp, #0xc]
	bl __umodsi3
	ldr r3, [sp, #0xc]
	adds r1, r3, #2
	adds r1, r5, r1
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08075516
	adds r0, r4, #0
	muls r0, r7, r0
	ldr r3, _08075500 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r6]
	ldr r1, _08075504 @ =0x00002710
	bl __umodsi3
	ldr r2, _08075508 @ =gUnknown_080D597C
	adds r1, r5, r2
	ldrh r1, [r1]
	cmp r0, r1
	bls _0807545C
	movs r0, #2
	mov r3, sb
	strb r0, [r3]
	b _08075516
	.align 2, 0
_080754F4: .4byte gUnknown_080D5978
_080754F8: .4byte gUnknown_03006868
_080754FC: .4byte 0x00196225
_08075500: .4byte 0x3C6EF35F
_08075504: .4byte 0x00002710
_08075508: .4byte gUnknown_080D597C
_0807550C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080754A2
_08075516:
	mov r0, sb
	ldrb r1, [r0]
	cmp r1, #1
	beq _08075528
	cmp r1, #1
	ble _080755FC
	cmp r1, #2
	beq _08075548
	b _080755FC
_08075528:
	mov r2, r8
	adds r2, #0x2b
	movs r0, #0
	strb r0, [r2]
	mov r2, r8
	strh r1, [r2, #0x2c]
	ldr r0, _08075540 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08075544 @ =sub_8075C40
	str r0, [r1, #8]
	b _080755FC
	.align 2, 0
_08075540: .4byte gCurTask
_08075544: .4byte sub_8075C40
_08075548:
	mov r1, r8
	adds r1, #0x29
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _080755A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080755A8 @ =sub_8075DA4
	str r0, [r1, #8]
	mov r1, r8
	adds r1, #0x23
	ldrb r0, [r1]
	cmp r0, #0
	beq _080755BC
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080755AC @ =gUnknown_080D5904
	ldrh r0, [r1, #8]
	mov r3, sl
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r3, #0x1a]
	ldr r0, _080755B0 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, _080755B4 @ =gUnknown_080D58F4
	ldrh r0, [r1, #8]
	ldr r2, [sp]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1b]
	ldr r1, _080755B8 @ =gUnknown_080D592C
	ldrh r0, [r1, #8]
	ldr r3, [sp, #4]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	strb r0, [r3, #0x1b]
	b _080755FC
	.align 2, 0
_080755A4: .4byte gCurTask
_080755A8: .4byte sub_8075DA4
_080755AC: .4byte gUnknown_080D5904
_080755B0: .4byte 0x0000FFFF
_080755B4: .4byte gUnknown_080D58F4
_080755B8: .4byte gUnknown_080D592C
_080755BC:
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08075628 @ =gUnknown_080D5904
	ldrh r0, [r1, #0xc]
	mov r2, sl
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	ldr r0, _0807562C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, _08075630 @ =gUnknown_080D58F4
	ldrh r0, [r1, #0xc]
	ldr r3, [sp]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	strb r0, [r3, #0x1b]
	ldr r1, _08075634 @ =gUnknown_080D592C
	ldrh r0, [r1, #0xc]
	ldr r2, [sp, #4]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1b]
_080755FC:
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08075654
	ldr r0, _08075638 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _0807563C
	mov r0, r8
	adds r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08075654
	mov r0, r8
	ldr r1, [r0, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	movs r0, #1
	bl sub_8027674
	b _08075646
	.align 2, 0
_08075628: .4byte gUnknown_080D5904
_0807562C: .4byte 0x0000FFFF
_08075630: .4byte gUnknown_080D58F4
_08075634: .4byte gUnknown_080D592C
_08075638: .4byte gStageData
_0807563C:
	mov r0, r8
	adds r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08075654
_08075646:
	mov r0, r8
	bl sub_8077A28
	ldr r0, _0807566C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08075670 @ =sub_8075EE8
	str r0, [r1, #8]
_08075654:
	mov r0, r8
	bl sub_8076328
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807566C: .4byte gCurTask
_08075670: .4byte sub_8075EE8

	thumb_func_start sub_8075674
sub_8075674: @ 0x08075674
	push {r4, r5, r6, lr}
	ldr r0, _080756B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xa8
	adds r6, r4, r0
	ldrh r0, [r5, #0x30]
	adds r0, #1
	strh r0, [r5, #0x30]
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_8077874
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	bl sub_8077874
	ldr r0, _080756B8 @ =0x0300002B
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0x1e
	bls _080756A8
	b _080759A0
_080756A8:
	lsls r0, r0, #2
	ldr r1, _080756BC @ =_080756C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080756B4: .4byte gCurTask
_080756B8: .4byte 0x0300002B
_080756BC: .4byte _080756C0
_080756C0: @ jump table
	.4byte _0807573C @ case 0
	.4byte _080759A0 @ case 1
	.4byte _080759A0 @ case 2
	.4byte _080759A0 @ case 3
	.4byte _080759A0 @ case 4
	.4byte _080759A0 @ case 5
	.4byte _080759A0 @ case 6
	.4byte _080759A0 @ case 7
	.4byte _080759A0 @ case 8
	.4byte _080759A0 @ case 9
	.4byte _0807579E @ case 10
	.4byte _08075890 @ case 11
	.4byte _080759A0 @ case 12
	.4byte _080759A0 @ case 13
	.4byte _080759A0 @ case 14
	.4byte _080759A0 @ case 15
	.4byte _080759A0 @ case 16
	.4byte _080759A0 @ case 17
	.4byte _080759A0 @ case 18
	.4byte _080759A0 @ case 19
	.4byte _080758F8 @ case 20
	.4byte _080759A0 @ case 21
	.4byte _080759A0 @ case 22
	.4byte _080759A0 @ case 23
	.4byte _080759A0 @ case 24
	.4byte _080759A0 @ case 25
	.4byte _080759A0 @ case 26
	.4byte _080759A0 @ case 27
	.4byte _080759A0 @ case 28
	.4byte _080759A0 @ case 29
	.4byte _08075944 @ case 30
_0807573C:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #3
	strb r0, [r1]
	ldr r1, _08075768 @ =gUnknown_080D592C
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r6, #0x1a]
	ldr r0, _0807576C @ =0x0000FFFF
	strh r0, [r6, #0x18]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075770
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x32]
	b _08075780
	.align 2, 0
_08075768: .4byte gUnknown_080D592C
_0807576C: .4byte 0x0000FFFF
_08075770:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0x32]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #8]
_08075780:
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #1
	bl sub_8077A04
	movs r0, #0x8d
	lsls r0, r0, #2
	bl sub_80BA57C
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xa
	strb r0, [r1]
	b _080759A0
_0807579E:
	movs r0, #0x32
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _080757C4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xb2
	lsls r1, r1, #2
	cmp r0, r1
	ble _080757D0
	b _080757D6
_080757C4:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, _08075828 @ =0x000001C7
	cmp r0, r1
	bgt _080757D0
	movs r2, #1
_080757D0:
	cmp r2, #0
	bne _080757D6
	b _080759A0
_080757D6:
	ldr r0, _0807582C @ =0x000004EE
	movs r1, #0
	movs r2, #0x3a
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _08075830 @ =0x000004EF
	movs r1, #0
	movs r2, #0x3a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0
	strh r0, [r5, #0x32]
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xb
	strb r0, [r1]
	ldr r1, _08075834 @ =gUnknown_080D592C
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r6, #0x1a]
	ldr r0, _08075838 @ =0x0000FFFF
	strh r0, [r6, #0x18]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807583C
	adds r0, r5, #0
	movs r1, #8
	bl sub_8077954
	b _0807584C
	.align 2, 0
_08075828: .4byte 0x000001C7
_0807582C: .4byte 0x000004EE
_08075830: .4byte 0x000004EF
_08075834: .4byte gUnknown_080D592C
_08075838: .4byte 0x0000FFFF
_0807583C:
	ldr r0, [r6, #8]
	ldr r1, _08075870 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r5, #0
	movs r1, #5
	bl sub_8077954
_0807584C:
	adds r1, r5, #0
	adds r1, #0x21
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807585A
	subs r0, #1
	strb r0, [r1]
_0807585A:
	ldr r0, _08075874 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08075878
	ldrb r0, [r1]
	cmp r0, #4
	bne _08075884
	movs r0, #0x35
	bl sub_80299D4
	b _08075884
	.align 2, 0
_08075870: .4byte 0xFFFFF7FF
_08075874: .4byte gStageData
_08075878:
	ldrb r0, [r1]
	cmp r0, #3
	bne _08075884
	movs r0, #0x35
	bl sub_80299D4
_08075884:
	movs r0, #0xeb
	bl sub_80BA57C
	bl sub_807A468
	b _080759A0
_08075890:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _080758B6
	ldrh r0, [r5, #0x32]
	subs r0, #0x40
	strh r0, [r5, #0x32]
	movs r0, #0x32
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	cmp r0, #0
	bge _080758CE
	str r2, [r5, #0x3c]
	b _080758D2
_080758B6:
	ldrh r0, [r5, #0x32]
	adds r0, #0x40
	strh r0, [r5, #0x32]
	movs r0, #0x32
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	cmp r0, #0
	ble _080758CE
	str r2, [r5, #0x3c]
	movs r2, #1
_080758CE:
	cmp r2, #0
	beq _080759A0
_080758D2:
	movs r0, #0
	strh r0, [r5, #0x32]
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0x14
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080758EE
	adds r0, r5, #0
	movs r1, #1
	bl sub_8077954
	b _080759A0
_080758EE:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8077954
	b _080759A0
_080758F8:
	adds r4, r5, #0
	adds r4, #0xd0
	ldr r0, [r4]
	bl sub_8077174
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080759A0
	ldr r0, _08075940 @ =0x00000235
	bl sub_80BA57C
	ldr r0, [r4]
	adds r1, r5, #0
	adds r1, #0x23
	ldrb r2, [r1]
	movs r1, #1
	eors r1, r2
	ldr r2, [r5]
	ldr r3, [r5, #0x14]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #4
	bl sub_8077238
	ldr r0, [r4]
	movs r1, #3
	bl sub_8077A14
	movs r0, #0x3c
	strh r0, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0x1e
	strb r0, [r1]
	b _080759A0
	.align 2, 0
_08075940: .4byte 0x00000235
_08075944:
	adds r4, r5, #0
	adds r4, #0xd0
	ldr r0, [r4]
	bl sub_8077174
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080759A0
	ldr r0, [r4]
	movs r1, #0
	bl sub_8077A04
	adds r0, r5, #0
	adds r0, #0x2b
	movs r4, #0
	strb r4, [r0]
	adds r0, r5, #0
	bl sub_8077918
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075998
	cmp r0, #4
	bhi _08075998
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2a
	strb r4, [r0]
	ldr r0, _08075990 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08075994 @ =sub_80759B4
	b _0807599E
	.align 2, 0
_08075990: .4byte gCurTask
_08075994: .4byte sub_80759B4
_08075998:
	ldr r0, _080759AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080759B0 @ =sub_8075324
_0807599E:
	str r0, [r1, #8]
_080759A0:
	adds r0, r5, #0
	bl sub_8076328
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080759AC: .4byte gCurTask
_080759B0: .4byte sub_8075324

	thumb_func_start sub_80759B4
sub_80759B4: @ 0x080759B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08075A40 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _08075A44 @ =0x03000080
	adds r4, r5, r0
	ldr r1, _08075A48 @ =0x03000058
	adds r6, r5, r1
	ldr r2, _08075A4C @ =0x030000A8
	adds r3, r5, r2
	mov r1, r8
	ldrh r0, [r1, #0x30]
	adds r0, #1
	strh r0, [r1, #0x30]
	subs r2, #0x82
	adds r0, r5, r2
	movs r1, #4
	mov sb, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, r8
	ldr r1, [r0, #0x50]
	str r3, [sp]
	bl sub_8077874
	mov r2, r8
	ldr r1, [r2, #0x54]
	mov r0, r8
	bl sub_8077874
	ldr r0, _08075A50 @ =0x0300002A
	adds r7, r5, r0
	ldrb r0, [r7]
	ldr r3, [sp]
	cmp r0, #0
	bne _08075A90
	ldr r1, _08075A54 @ =0x03000029
	adds r0, r5, r1
	movs r3, #1
	strb r3, [r0]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	ldr r2, _08075A58 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _08075A5C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08075A60 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	ands r0, r3
	ldr r2, _08075A64 @ =0x03000022
	adds r1, r5, r2
	strb r0, [r1]
	cmp r0, #0
	beq _08075A6C
	ldr r0, _08075A68 @ =0xFFFFFC00
	mov r1, r8
	str r0, [r1, #8]
	b _08075A74
	.align 2, 0
_08075A40: .4byte gCurTask
_08075A44: .4byte 0x03000080
_08075A48: .4byte 0x03000058
_08075A4C: .4byte 0x030000A8
_08075A50: .4byte 0x0300002A
_08075A54: .4byte 0x03000029
_08075A58: .4byte gUnknown_03006868
_08075A5C: .4byte 0x00196225
_08075A60: .4byte 0x3C6EF35F
_08075A64: .4byte 0x03000022
_08075A68: .4byte 0xFFFFFC00
_08075A6C:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r2, r8
	str r0, [r2, #8]
_08075A74:
	mov r0, r8
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08075A80
	b _08075C0E
_08075A80:
	mov r1, r8
	ldr r0, [r1, #8]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r2, r8
	str r0, [r2, #8]
	b _08075C0E
_08075A90:
	mov r0, r8
	str r3, [sp]
	bl sub_80778D0
	ldr r0, _08075B10 @ =0x03000029
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	movs r1, #0xff
	mov ip, r1
	lsls r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #0
	beq _08075AB0
	b _08075C0E
_08075AB0:
	ldrb r1, [r7]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08075B7C
	movs r0, #0xc
	strb r0, [r2]
	ldr r2, _08075B14 @ =0x03000023
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08075B28
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08075B18 @ =gUnknown_080D5904
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	ldr r0, _08075B1C @ =0x0000FFFF
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1b]
	mov r1, ip
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldr r1, _08075B20 @ =gUnknown_080D58F4
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0x1b]
	mov r2, ip
	orrs r0, r2
	strb r0, [r6, #0x1b]
	ldr r1, _08075B24 @ =gUnknown_080D592C
	ldrh r0, [r1, #8]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	ldrb r0, [r3, #0x1b]
	b _08075BEA
	.align 2, 0
_08075B10: .4byte 0x03000029
_08075B14: .4byte 0x03000023
_08075B18: .4byte gUnknown_080D5904
_08075B1C: .4byte 0x0000FFFF
_08075B20: .4byte gUnknown_080D58F4
_08075B24: .4byte gUnknown_080D592C
_08075B28:
	strb r7, [r1]
	ldr r1, _08075B6C @ =gUnknown_080D5904
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r4, #0x1a]
	ldr r0, _08075B70 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1b]
	mov r1, ip
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldr r1, _08075B74 @ =gUnknown_080D58F4
	ldrh r0, [r1, #0xc]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r6, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0x1b]
	mov r2, ip
	orrs r0, r2
	strb r0, [r6, #0x1b]
	ldr r1, _08075B78 @ =gUnknown_080D592C
	ldrh r0, [r1, #0xc]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	ldrb r0, [r3, #0x1b]
	b _08075BEA
	.align 2, 0
_08075B6C: .4byte gUnknown_080D5904
_08075B70: .4byte 0x0000FFFF
_08075B74: .4byte gUnknown_080D58F4
_08075B78: .4byte gUnknown_080D592C
_08075B7C:
	mov r0, sb
	strb r0, [r2]
	ldr r1, _08075C24 @ =gUnknown_080D5904
	ldr r0, _08075C28 @ =0x03000023
	adds r2, r5, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _08075C2C @ =0x0000FFFF
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1b]
	mov r1, ip
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldr r1, _08075C30 @ =gUnknown_080D58F4
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r6, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0x1b]
	mov r1, ip
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldr r1, _08075C34 @ =gUnknown_080D592C
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	ldrb r0, [r3, #0x1b]
	mov r2, ip
_08075BEA:
	orrs r0, r2
	strb r0, [r3, #0x1b]
	mov r1, r8
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _08075C0E
	mov r0, r8
	bl sub_8077918
	ldr r0, _08075C38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08075C3C @ =sub_8075324
	str r0, [r1, #8]
_08075C0E:
	mov r0, r8
	bl sub_8076328
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075C24: .4byte gUnknown_080D5904
_08075C28: .4byte 0x03000023
_08075C2C: .4byte 0x0000FFFF
_08075C30: .4byte gUnknown_080D58F4
_08075C34: .4byte gUnknown_080D592C
_08075C38: .4byte gCurTask
_08075C3C: .4byte sub_8075324

	thumb_func_start sub_8075C40
sub_8075C40: @ 0x08075C40
	push {r4, r5, r6, r7, lr}
	ldr r6, _08075C78 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_8077874
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_8077874
	ldr r0, _08075C7C @ =0x0300002B
	adds r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0xa
	beq _08075CD0
	cmp r0, #0xa
	bgt _08075C80
	cmp r0, #0
	beq _08075C8A
	b _08075D8E
	.align 2, 0
_08075C78: .4byte gCurTask
_08075C7C: .4byte 0x0300002B
_08075C80:
	cmp r0, #0x14
	beq _08075D22
	cmp r0, #0x1e
	beq _08075D6C
	b _08075D8E
_08075C8A:
	ldr r2, _08075CA4 @ =0x03000026
	adds r1, r5, r2
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08075CA8 @ =0x03000023
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075CAC
	movs r0, #0xc0
	lsls r0, r0, #3
	b _08075CB0
	.align 2, 0
_08075CA4: .4byte 0x03000026
_08075CA8: .4byte 0x03000023
_08075CAC:
	movs r0, #0xfa
	lsls r0, r0, #8
_08075CB0:
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #1
	bl sub_8077A04
	movs r0, #0x8d
	lsls r0, r0, #2
	bl sub_80BA57C
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xa
	strb r0, [r1]
	b _08075D8E
_08075CD0:
	movs r2, #0
	ldr r1, _08075CF4 @ =0x03000023
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075CF8
	ldrh r0, [r4, #0x32]
	subs r0, #0x40
	strh r0, [r4, #0x32]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	cmp r0, #0
	bge _08075D10
	str r2, [r4, #0x3c]
	b _08075D14
	.align 2, 0
_08075CF4: .4byte 0x03000023
_08075CF8:
	ldrh r0, [r4, #0x32]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	cmp r0, #0
	ble _08075D10
	str r2, [r4, #0x3c]
	movs r2, #1
_08075D10:
	cmp r2, #0
	beq _08075D8E
_08075D14:
	movs r0, #0
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0x14
	strb r0, [r1]
	b _08075D8E
_08075D22:
	ldr r1, _08075D60 @ =0x030000D0
	adds r6, r5, r1
	ldr r0, [r6]
	bl sub_8077174
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08075D8E
	ldr r0, _08075D64 @ =0x00000235
	bl sub_80BA57C
	ldr r0, [r6]
	ldr r2, _08075D68 @ =0x03000023
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r1, #1
	eors r1, r2
	ldr r2, [r4]
	ldr r3, [r4, #0x14]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #4
	bl sub_8077238
	ldr r0, [r6]
	movs r1, #3
	bl sub_8077A14
	movs r0, #0x1e
	strb r0, [r7]
	b _08075D8E
	.align 2, 0
_08075D60: .4byte 0x030000D0
_08075D64: .4byte 0x00000235
_08075D68: .4byte 0x03000023
_08075D6C:
	ldr r0, _08075D9C @ =0x030000D0
	adds r5, r5, r0
	ldr r0, [r5]
	bl sub_8077174
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08075D8E
	movs r0, #0
	strb r0, [r7]
	ldr r1, [r6]
	ldr r0, _08075DA0 @ =sub_8075324
	str r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #0
	bl sub_8077A04
_08075D8E:
	adds r0, r4, #0
	bl sub_8076328
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075D9C: .4byte 0x030000D0
_08075DA0: .4byte sub_8075324

	thumb_func_start sub_8075DA4
sub_8075DA4: @ 0x08075DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08075EA8 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08075EAC @ =0x03000080
	adds r6, r5, r1
	adds r0, #0x58
	adds r7, r5, r0
	adds r1, #0x28
	adds r1, r1, r5
	mov r8, r1
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	ldr r0, _08075EB0 @ =0x03000026
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_8077874
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_8077874
	ldr r0, _08075EB4 @ =0x03000029
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075E96
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08075EB8 @ =sub_8075324
	str r0, [r1, #8]
	ldr r1, _08075EBC @ =gUnknown_080D5904
	ldr r0, _08075EC0 @ =0x03000023
	adds r2, r5, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r6, #0x1a]
	ldr r0, _08075EC4 @ =0x0000FFFF
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0x1b]
	orrs r0, r3
	strb r0, [r6, #0x1b]
	ldr r1, _08075EC8 @ =gUnknown_080D58F4
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r7, #0x18]
	ldrb r0, [r7, #0x1b]
	orrs r0, r3
	strb r0, [r7, #0x1b]
	ldr r1, _08075ECC @ =gUnknown_080D592C
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strb r0, [r6, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0x1b]
	orrs r0, r3
	strb r0, [r6, #0x1b]
	ldr r2, _08075ED0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _08075ED4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08075ED8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08075EDC @ =0x00002710
	bl __umodsi3
	ldr r1, _08075EE0 @ =0x00000BB7
	cmp r0, r1
	bhi _08075E96
	ldr r6, _08075EE4 @ =0x03000022
	adds r2, r5, r6
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldr r0, [r4, #8]
	rsbs r0, r0, #0
	str r0, [r4, #8]
_08075E96:
	adds r0, r4, #0
	bl sub_8076328
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075EA8: .4byte gCurTask
_08075EAC: .4byte 0x03000080
_08075EB0: .4byte 0x03000026
_08075EB4: .4byte 0x03000029
_08075EB8: .4byte sub_8075324
_08075EBC: .4byte gUnknown_080D5904
_08075EC0: .4byte 0x03000023
_08075EC4: .4byte 0x0000FFFF
_08075EC8: .4byte gUnknown_080D58F4
_08075ECC: .4byte gUnknown_080D592C
_08075ED0: .4byte gUnknown_03006868
_08075ED4: .4byte 0x00196225
_08075ED8: .4byte 0x3C6EF35F
_08075EDC: .4byte 0x00002710
_08075EE0: .4byte 0x00000BB7
_08075EE4: .4byte 0x03000022

	thumb_func_start sub_8075EE8
sub_8075EE8: @ 0x08075EE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08075F28 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08075F2C @ =0x03000080
	adds r5, r1, r2
	ldr r7, _08075F30 @ =0x03000058
	adds r6, r1, r7
	adds r0, #0xa8
	adds r0, r0, r1
	mov sb, r0
	subs r7, #0x2d
	adds r2, r1, r7
	ldrb r0, [r2]
	cmp r0, #0x64
	beq _0807600A
	cmp r0, #0x64
	ble _08075F1E
	b _08076020
_08075F1E:
	cmp r0, #0
	beq _08075F34
	cmp r0, #0xa
	beq _08075FD8
	b _08076020
	.align 2, 0
_08075F28: .4byte gCurTask
_08075F2C: .4byte 0x03000080
_08075F30: .4byte 0x03000058
_08075F34:
	movs r0, #0xc
	strh r0, [r4, #0x2c]
	movs r0, #0xa
	strb r0, [r2]
	movs r2, #0
	ldr r0, _08075FC0 @ =0x03000023
	adds r0, r0, r1
	mov r8, r0
	ldr r7, _08075FC4 @ =0x03000050
	adds r3, r1, r7
	movs r0, #0x80
	lsls r0, r0, #0x14
	mov ip, r0
_08075F4E:
	lsls r0, r2, #2
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, [r1, #4]
	mov r7, ip
	orrs r0, r7
	str r0, [r1, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08075F4E
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076020
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08075FC8 @ =gUnknown_080D5904
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	ldr r0, _08075FCC @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, _08075FD0 @ =gUnknown_080D58F4
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	strb r0, [r6, #0x1b]
	ldr r1, _08075FD4 @ =gUnknown_080D592C
	ldrh r0, [r1, #8]
	mov r2, sb
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1b]
	b _08076020
	.align 2, 0
_08075FC0: .4byte 0x03000023
_08075FC4: .4byte 0x03000050
_08075FC8: .4byte gUnknown_080D5904
_08075FCC: .4byte 0x0000FFFF
_08075FD0: .4byte gUnknown_080D58F4
_08075FD4: .4byte gUnknown_080D592C
_08075FD8:
	ldrh r0, [r4, #0x2c]
	subs r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08076020
	movs r0, #0x64
	strb r0, [r2]
	ldr r7, _08075FFC @ =0x03000023
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076000
	adds r0, r4, #0
	movs r1, #9
	bl sub_8077954
	b _08076020
	.align 2, 0
_08075FFC: .4byte 0x03000023
_08076000:
	adds r0, r4, #0
	movs r1, #6
	bl sub_8077954
	b _08076020
_0807600A:
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xb4
	strh r0, [r4, #0x30]
	ldr r0, _08076048 @ =0x00000221
	bl sub_80BA57C
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0807604C @ =sub_8076050
	str r0, [r1, #8]
_08076020:
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8076328
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076048: .4byte 0x00000221
_0807604C: .4byte sub_8076050

	thumb_func_start sub_8076050
sub_8076050: @ 0x08076050
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _0807607C @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x2b
	adds r2, r3, r0
	ldrb r1, [r2]
	cmp r1, #0xa
	beq _08076096
	cmp r1, #0xa
	bgt _08076080
	cmp r1, #0
	beq _08076088
	b _080761FA
	.align 2, 0
_0807607C: .4byte gCurTask
_08076080:
	cmp r1, #0xc8
	bne _08076086
	b _080761E4
_08076086:
	b _080761FA
_08076088:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r6, #0x32]
	strh r1, [r6, #0x2c]
	movs r0, #0xa
	strb r0, [r2]
	b _080761FA
_08076096:
	ldrh r0, [r6, #0x32]
	adds r0, #0x40
	strh r0, [r6, #0x32]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x44]
	adds r2, r2, r0
	str r2, [r6, #0x44]
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	ldr r0, [r6]
	ldr r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	adds r0, r0, r2
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r4, #0
	mov r8, r4
	ldr r0, _080760E8 @ =0x03000034
	adds r0, r0, r3
	mov sl, r0
_080760CC:
	mov r3, r8
	lsls r1, r3, #1
	mov r4, sl
	adds r3, r4, r1
	ldrh r2, [r3]
	movs r0, #1
	mov r4, r8
	ands r0, r4
	adds r4, r1, #0
	cmp r0, #0
	beq _080760EC
	adds r1, r2, #0
	subs r1, #0x40
	b _080760F0
	.align 2, 0
_080760E8: .4byte 0x03000034
_080760EC:
	adds r1, r2, #0
	adds r1, #0x40
_080760F0:
	ldr r0, _08076178 @ =0x000003FF
	ands r1, r0
	strh r1, [r3]
	mov r1, sl
	adds r0, r1, r4
	ldrh r4, [r0]
	mov sb, r4
	lsls r0, r4, #1
	ldr r3, _0807617C @ =gSineTable
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r2, r0, #2
	adds r2, r2, r0
	asrs r2, r2, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	ldr r1, _0807617C @ =gSineTable
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #0xc
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov ip, r5
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, r3, #0
	ldrh r1, [r6, #0x2c]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08076180
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _080761AA
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	ldr r0, [r6, #0x48]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	b _080761AA
	.align 2, 0
_08076178: .4byte 0x000003FF
_0807617C: .4byte gSineTable
_08076180:
	mov r3, r8
	ands r3, r2
	cmp r3, #0
	bne _080761AA
	mov r4, ip
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r6, #0x48]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
_080761AA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _080760CC
	ldrh r1, [r6, #0x2c]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080761C8
	ldr r0, _080761E0 @ =0x00000221
	bl sub_80BA57C
_080761C8:
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r0, r1
	ble _080761FA
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0xc8
	strb r0, [r1]
	b _080761FA
	.align 2, 0
_080761E0: .4byte 0x00000221
_080761E4:
	movs r0, #0
	strb r0, [r2]
	strh r0, [r6, #0x2c]
	movs r0, #0x78
	strh r0, [r6, #0x30]
	ldr r0, _08076210 @ =0x00000221
	bl sub_80BA57C
	ldr r1, [r4]
	ldr r0, _08076214 @ =sub_8076218
	str r0, [r1, #8]
_080761FA:
	adds r0, r6, #0
	bl sub_8076328
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076210: .4byte 0x00000221
_08076214: .4byte sub_8076218

	thumb_func_start sub_8076218
sub_8076218: @ 0x08076218
	push {r4, r5, r6, lr}
	ldr r2, _08076248 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldr r4, _0807624C @ =0x030000D0
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldrh r1, [r3, #0x30]
	movs r0, #2
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08076258
	ldr r0, _08076250 @ =gDispCnt
	ldrh r2, [r0]
	ldr r1, _08076254 @ =0x0000FEFF
	ands r1, r2
	b _08076264
	.align 2, 0
_08076248: .4byte gCurTask
_0807624C: .4byte 0x030000D0
_08076250: .4byte gDispCnt
_08076254: .4byte 0x0000FEFF
_08076258:
	ldr r0, _080762A4 @ =gDispCnt
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r4, #0
	orrs r1, r2
_08076264:
	strh r1, [r0]
	adds r4, r0, #0
	ldrh r0, [r3, #0x30]
	subs r0, #1
	strh r0, [r3, #0x30]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0807629C
	ldrh r1, [r4]
	ldr r0, _080762A8 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r4]
	ldr r1, _080762AC @ =gCamera
	movs r0, #0xf5
	lsls r0, r0, #2
	str r0, [r1, #0x14]
	adds r0, r5, #0
	adds r0, #0xb2
	movs r1, #1
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x28
	strb r1, [r0]
	strh r2, [r3, #0x30]
	ldr r1, [r6]
	ldr r0, _080762B0 @ =sub_80762B4
	str r0, [r1, #8]
_0807629C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080762A4: .4byte gDispCnt
_080762A8: .4byte 0x0000FEFF
_080762AC: .4byte gCamera
_080762B0: .4byte sub_80762B4

	thumb_func_start sub_80762B4
sub_80762B4: @ 0x080762B4
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _080762D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x50]
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _080762D8
	cmp r0, #1
	beq _0807630C
	b _08076320
	.align 2, 0
_080762D4: .4byte gCurTask
_080762D8:
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, _08076300 @ =0x000003AE
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, _08076304 @ =0x000003B6
	str r0, [sp, #0xc]
	ldr r1, _08076308 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _0807631E
	.align 2, 0
_08076300: .4byte 0x000003AE
_08076304: .4byte 0x000003B6
_08076308: .4byte sub_807A37C
_0807630C:
	ldr r1, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _08076320
	ldr r0, [r4, #0x1c]
	strb r1, [r0]
	movs r0, #0x64
_0807631E:
	strh r0, [r4, #0x30]
_08076320:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8076328
sub_8076328: @ 0x08076328
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	mov r7, r8
	adds r7, #0x58
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r1, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	asrs r1, r0, #0x10
	ldr r2, _0807636C @ =0xFFFFFCA0
	adds r0, r1, r2
	cmp r0, #0
	bge _0807635A
	adds r2, #0xf
	adds r0, r1, r2
_0807635A:
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08076370
	movs r1, #0
	b _08076376
	.align 2, 0
_0807636C: .4byte 0xFFFFFCA0
_08076370:
	cmp r0, #0x14
	ble _08076376
	movs r1, #0x14
_08076376:
	adds r2, r3, #0
	adds r2, #0xc8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x16
	adds r1, r3, #4
	adds r1, r1, r0
	ldr r4, [r2]
	ldr r0, [r1]
	adds r4, r4, r0
	lsls r4, r4, #8
	ldr r6, _0807641C @ =gCamera
	ldr r0, [r6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x10]
	mov r0, r8
	ldr r1, [r0, #0x3c]
	asrs r1, r1, #8
	asrs r4, r4, #0x10
	adds r1, r4, r1
	ldr r0, [r6, #4]
	subs r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r1, r8
	ldr r0, [r1, #0x3c]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #8
	str r0, [r1, #4]
	mov r7, r8
	adds r7, #0x80
	ldr r0, [r6]
	subs r0, r5, r0
	strh r0, [r7, #0x10]
	ldr r1, [r1, #0x3c]
	asrs r1, r1, #8
	adds r1, r4, r1
	ldr r0, [r6, #4]
	subs r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x28
	ldr r0, [r6]
	subs r5, r5, r0
	strh r5, [r7, #0x10]
	ldr r0, [r6, #4]
	subs r4, r4, r0
	mov r1, r8
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	adds r4, r4, r0
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807641C: .4byte gCamera

	thumb_func_start sub_8076420
sub_8076420: @ 0x08076420
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0xa8
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08076440
	b _08076542
_08076440:
	ldr r4, _08076508 @ =gStageData
	ldrb r0, [r4, #6]
	lsls r0, r0, #2
	adds r2, r5, #0
	adds r2, #0x50
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _08076542
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	ldr r3, _0807650C @ =gCamera
	ldr r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x12
	ldrsh r2, [r7, r1]
	ldr r1, [r3, #4]
	adds r1, r1, r2
	lsls r1, r1, #8
	bl sub_8004D68
	ldr r2, _08076510 @ =gPlayers
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080764B6
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _080764C4
_080764B6:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _080764C4
	movs r0, #1
	mov r8, r0
_080764C4:
	movs r6, #0
_080764C6:
	lsls r0, r6, #2
	add r0, sb
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807652A
	ldr r1, [r7, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807652A
	ldr r1, [r5]
	ldr r0, [r5, #0x14]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r5, #4]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _08076514
	movs r1, #1
	mov r8, r1
	adds r0, r4, #0
	bl sub_80044CC
	b _0807652A
	.align 2, 0
_08076508: .4byte gStageData
_0807650C: .4byte gCamera
_08076510: .4byte gPlayers
_08076514:
	ldr r1, [r5]
	ldr r0, [r5, #0x14]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r5, #4]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_0807652A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080764C6
	mov r0, r8
	cmp r0, #1
	bne _08076542
	adds r0, r5, #0
	adds r0, #0x27
	mov r1, r8
	strb r1, [r0]
_08076542:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8076550
sub_8076550: @ 0x08076550
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0807660C @ =sub_8076618
	movs r2, #0x88
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r7, [r5, #0x48]
	movs r3, #0
	mov r8, r3
	adds r0, #0x40
	adds r6, r1, r0
	adds r4, r7, #0
	adds r4, #0x50
	subs r0, #0x3c
	adds r2, r1, r0
	movs r1, #1
	mov ip, r1
_0807658A:
	adds r0, r5, r3
	mov r1, r8
	strb r1, [r0]
	lsls r0, r3, #2
	adds r1, r6, r0
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r2, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807658A
	movs r3, #0
	adds r4, r5, #0
	adds r4, #0x18
	ldr r6, _08076610 @ =gUnknown_080D59EC
	adds r0, r6, #2
	mov ip, r0
_080765B8:
	lsls r1, r3, #2
	adds r2, r5, r1
	adds r0, r1, r6
	ldrh r0, [r0]
	strh r0, [r2, #8]
	add r1, ip
	ldrh r0, [r1]
	strh r0, [r2, #0xa]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080765B8
	ldr r0, [r7, #0x4c]
	str r0, [r5, #0x18]
	movs r2, #0
	movs r1, #0
	ldr r0, _08076614 @ =0x000003C2
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807660C: .4byte sub_8076618
_08076610: .4byte gUnknown_080D59EC
_08076614: .4byte 0x000003C2

	thumb_func_start sub_8076618
sub_8076618: @ 0x08076618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08076690 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	mov sb, r0
	ldr r0, [r0, #0x48]
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	adds r1, #0x18
	adds r1, r2, r1
	str r1, [sp, #4]
	movs r2, #0
	mov sl, r2
_08076648:
	mov r3, sl
	lsls r1, r3, #2
	mov r0, sb
	adds r0, #0x40
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08076694 @ =gPlayers
	adds r0, r0, r1
	mov r8, r0
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0807667A
	b _08076942
_0807667A:
	mov r0, sb
	add r0, sl
	ldrb r1, [r0]
	str r0, [sp, #8]
	cmp r1, #0
	beq _08076698
	cmp r1, #0xa
	bne _0807668C
	b _080768F0
_0807668C:
	b _08076934
	.align 2, 0
_08076690: .4byte gCurTask
_08076694: .4byte gPlayers
_08076698:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	beq _080766A8
	b _08076934
_080766A8:
	ldr r0, [r4, #0x14]
	asrs r3, r0, #8
	ldr r1, _080766D0 @ =0x000001B7
	adds r6, r0, #0
	cmp r3, r1
	bgt _080766B6
	b _08076934
_080766B6:
	ldr r0, [r4, #0x10]
	asrs r2, r0, #8
	ldr r1, _080766D4 @ =0x00000407
	adds r5, r0, #0
	cmp r2, r1
	bgt _080766DC
	ldr r0, _080766D8 @ =0x00000247
	movs r7, #1
	cmp r3, r0
	bgt _080766E6
	movs r7, #0
	b _080766E6
	.align 2, 0
_080766D0: .4byte 0x000001B7
_080766D4: .4byte 0x00000407
_080766D8: .4byte 0x00000247
_080766DC:
	ldr r0, _080766F8 @ =0x00000247
	movs r7, #3
	cmp r3, r0
	bgt _080766E6
	movs r7, #2
_080766E6:
	movs r2, #0
	cmp r7, #1
	beq _0807672C
	cmp r7, #1
	bgt _080766FC
	cmp r7, #0
	beq _08076706
	b _080767B0
	.align 2, 0
_080766F8: .4byte 0x00000247
_080766FC:
	cmp r7, #2
	beq _0807675C
	cmp r7, #3
	beq _0807678C
	b _080767B0
_08076706:
	asrs r1, r5, #8
	movs r0, #0xd8
	lsls r0, r0, #2
	cmp r1, r0
	bgt _080767B0
	asrs r1, r6, #8
	ldr r0, _08076728 @ =0x00000247
	cmp r1, r0
	bgt _080767B0
	movs r0, #0xd8
	lsls r0, r0, #0xa
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	b _0807674C
	.align 2, 0
_08076728: .4byte 0x00000247
_0807672C:
	asrs r1, r5, #8
	movs r0, #0xd8
	lsls r0, r0, #2
	cmp r1, r0
	bgt _080767B0
	asrs r1, r6, #8
	movs r0, #0x92
	lsls r0, r0, #2
	cmp r1, r0
	ble _080767B0
	movs r0, #0xd8
	lsls r0, r0, #0xa
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	ldr r0, _08076758 @ =0xFFFEFFFF
	ands r1, r0
_0807674C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	b _080767B6
	.align 2, 0
_08076758: .4byte 0xFFFEFFFF
_0807675C:
	asrs r1, r5, #8
	ldr r0, _08076780 @ =0x000004AE
	cmp r1, r0
	ble _080767B0
	asrs r1, r6, #8
	ldr r0, _08076784 @ =0x00000247
	cmp r1, r0
	bgt _080767B0
	ldr r0, _08076788 @ =0x0004AF00
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #4]
	b _080767B6
	.align 2, 0
_08076780: .4byte 0x000004AE
_08076784: .4byte 0x00000247
_08076788: .4byte 0x0004AF00
_0807678C:
	asrs r1, r5, #8
	ldr r0, _080767EC @ =0x000004AE
	cmp r1, r0
	ble _080767B0
	asrs r1, r6, #8
	movs r0, #0x92
	lsls r0, r0, #2
	cmp r1, r0
	ble _080767B0
	ldr r0, _080767F0 @ =0x0004AF00
	str r0, [r4, #0x10]
	ldr r1, _080767F4 @ =0xFFFEFFFF
	mov r0, ip
	ands r1, r0
	movs r0, #1
	orrs r0, r1
	str r0, [r4, #4]
	movs r2, #1
_080767B0:
	cmp r2, #0
	bne _080767B6
	b _08076934
_080767B6:
	movs r2, #0
	movs r0, #0xa
	ldr r1, [sp, #8]
	strb r0, [r1]
	mov r3, sl
	lsls r1, r3, #1
	mov r0, sb
	adds r0, #4
	adds r0, r0, r1
	movs r1, #4
	strh r1, [r0]
	strh r2, [r4, #0x1a]
	ldr r1, [r4, #0x14]
	movs r0, #0x92
	lsls r0, r0, #0xa
	subs r1, r0, r1
	adds r2, r1, #0
	cmp r1, #0
	bge _080767DE
	rsbs r2, r1, #0
_080767DE:
	ldr r0, _080767F8 @ =0x00001FFF
	cmp r2, r0
	ble _08076804
	cmp r1, #0
	bge _08076800
	ldr r1, _080767FC @ =0xFFFFE000
	b _08076804
	.align 2, 0
_080767EC: .4byte 0x000004AE
_080767F0: .4byte 0x0004AF00
_080767F4: .4byte 0xFFFEFFFF
_080767F8: .4byte 0x00001FFF
_080767FC: .4byte 0xFFFFE000
_08076800:
	movs r1, #0x80
	lsls r1, r1, #6
_08076804:
	movs r2, #0x92
	lsls r2, r2, #0xa
	adds r0, r1, r2
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	cmp r7, #1
	bhi _0807683C
	ldr r1, [sp]
	adds r1, #0xb4
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r0, r0, r3
	b _08076858
_0807683C:
	ldr r1, [sp]
	adds r1, #0xb4
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, _080768E4 @ =0x000004AF
	subs r0, r0, r1
_08076858:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080768B6
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Player_8005528
	ldrh r0, [r4, #0x18]
	mov r1, r8
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #0x1a]
	strh r0, [r1, #0x1a]
	ldrh r0, [r4, #0x1c]
	strh r0, [r1, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r2, [r1, #4]
	ldr r0, _080768E8 @ =0xFFFEFFFF
	ands r2, r0
	str r2, [r1, #4]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	orrs r2, r0
	mov r3, r8
	str r2, [r3, #4]
	mov r0, r8
	bl Player_8005528
_080768B6:
	ldr r1, _080768EC @ =0xFFFFFDFE
	adds r0, r1, #0
	ldrh r2, [r4, #0x34]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08076934
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r2]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl Player_8005528
	b _08076934
	.align 2, 0
_080768E4: .4byte 0x000004AF
_080768E8: .4byte 0xFFFEFFFF
_080768EC: .4byte 0xFFFFFDFE
_080768F0:
	mov r2, sl
	lsls r0, r2, #1
	mov r1, sb
	adds r1, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08076934
	ldr r3, [sp, #8]
	strb r2, [r3]
	mov r0, sb
	ldr r1, [r0, #0x48]
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807691E
	ldr r0, [r4, #4]
	b _0807692E
_0807691E:
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076934
	ldr r0, [r4, #4]
	ldr r1, _080769B4 @ =0xFFFEFFFF
	ands r0, r1
_0807692E:
	ldr r1, _080769B8 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08076934:
	mov r1, sb
	ldr r0, [r1, #0x48]
	adds r0, #0x2e
	add r0, sl
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	strb r1, [r0]
_08076942:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _08076952
	b _08076648
_08076952:
	mov r3, sb
	ldr r4, [r3, #0x40]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	movs r1, #0xe1
	lsls r1, r1, #2
	cmp r0, r1
	ble _08076976
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08076976
	ldr r0, _080769BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08076976:
	movs r7, #0
	ldr r4, _080769C0 @ =gCamera
_0807697A:
	lsls r1, r7, #2
	add r1, sb
	ldr r2, [r4]
	ldrh r0, [r1, #8]
	subs r0, r0, r2
	ldr r2, [sp, #4]
	strh r0, [r2, #0x10]
	ldr r2, [r4, #4]
	ldrh r0, [r1, #0xa]
	subs r0, r0, r2
	ldr r3, [sp, #4]
	strh r0, [r3, #0x12]
	ldr r0, [sp, #4]
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0807697A
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080769B4: .4byte 0xFFFEFFFF
_080769B8: .4byte 0xF7FFFFFF
_080769BC: .4byte gCurTask
_080769C0: .4byte gCamera

	thumb_func_start sub_80769C4
sub_80769C4: @ 0x080769C4
	push {r4, r5, r6, r7, lr}
	ldr r1, _08076A14 @ =gStageData
	adds r7, r1, #0
	adds r7, #0x88
	ldr r1, [r7]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	ldrb r1, [r0, #2]
	movs r4, #0x7f
	ands r4, r1
	adds r1, r4, #0
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r4, #1
	bne _08076A28
	ldr r0, _08076A18 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08076A1C @ =0x030000D4
	adds r5, r3, r1
	ldrb r1, [r5]
	cmp r1, #0
	bne _08076A46
	lsls r0, r2, #8
	str r0, [r6, #0x14]
	ldr r2, _08076A20 @ =0x0300002B
	adds r0, r3, r2
	strb r1, [r0]
	movs r0, #1
	strh r4, [r6, #0x2c]
	strb r0, [r5]
	ldr r1, [r7]
	ldr r0, _08076A24 @ =sub_8075EE8
	str r0, [r1, #8]
	b _08076A46
	.align 2, 0
_08076A14: .4byte gStageData
_08076A18: .4byte 0x03000021
_08076A1C: .4byte 0x030000D4
_08076A20: .4byte 0x0300002B
_08076A24: .4byte sub_8075EE8
_08076A28:
	cmp r1, #1
	blt _08076A46
	cmp r1, #4
	bgt _08076A46
	cmp r1, #3
	blt _08076A46
	ldr r1, _08076A4C @ =0x03000026
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08076A46
	ldr r2, _08076A50 @ =0x03000027
	adds r1, r3, r2
	movs r0, #1
	strb r0, [r1]
_08076A46:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076A4C: .4byte 0x03000026
_08076A50: .4byte 0x03000027

	thumb_func_start sub_8076A54
sub_8076A54: @ 0x08076A54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08076B3C @ =sub_8076B58
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r3, _08076B40 @ =sub_80779EC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _08076B44 @ =0x030000FC
	adds r0, r3, r1
	str r6, [r0]
	ldr r0, _08076B48 @ =0x030000C4
	adds r2, r3, r0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r2]
	str r1, [r2, #4]
	movs r0, #0
	str r0, [r4]
	movs r2, #0
	ldr r1, _08076B4C @ =0x03000004
	adds r7, r3, r1
	movs r5, #0
	ldr r0, _08076B50 @ =0x03000058
	adds r3, r3, r0
_08076A9E:
	lsls r1, r2, #2
	adds r0, r7, r1
	str r5, [r0]
	adds r1, r3, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x14
	bls _08076A9E
	adds r1, r4, #0
	adds r1, #0xf4
	ldr r0, [r6, #0x50]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r6, #0x54]
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	movs r5, #0
	str r5, [r0]
	adds r0, #4
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	subs r1, #0x44
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb5
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #9
	str r5, [r0]
	subs r0, #8
	strb r5, [r0]
	adds r0, #4
	str r5, [r0]
	adds r4, #0xcc
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _08076B54 @ =0x000004EA
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	adds r0, #0xd6
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08076B3C: .4byte sub_8076B58
_08076B40: .4byte sub_80779EC
_08076B44: .4byte 0x030000FC
_08076B48: .4byte 0x030000C4
_08076B4C: .4byte 0x03000004
_08076B50: .4byte 0x03000058
_08076B54: .4byte 0x000004EA

	thumb_func_start sub_8076B58
sub_8076B58: @ 0x08076B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08076CB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xcc
	adds r0, r3, r0
	str r0, [sp]
	ldr r1, _08076CB4 @ =0x030000B3
	adds r2, r3, r1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08076CB8 @ =0x030000FC
	adds r0, r3, r2
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076C50
	ldr r1, _08076CBC @ =0x030000B1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076C50
	movs r2, #0
	mov sb, r2
	ldr r0, _08076CC0 @ =0x030000F4
	adds r0, r0, r3
	mov r8, r0
	movs r1, #5
	rsbs r1, r1, #0
	mov sl, r1
_08076BAC:
	mov r2, sb
	lsls r0, r2, #2
	add r0, r8
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08076C42
	movs r2, #0
	ldr r0, [r5, #0x14]
	asrs r1, r0, #8
	movs r0, #0xb2
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08076BD2
	ldr r0, _08076CC4 @ =0x000001C7
	cmp r1, r0
	bgt _08076BD4
_08076BD2:
	movs r2, #1
_08076BD4:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _08076BEC
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08076BEE
_08076BEC:
	movs r2, #0
_08076BEE:
	cmp r2, #0
	beq _08076C42
	mov r2, r8
	ldr r1, [r2]
	ldr r0, [r1, #4]
	movs r6, #0xc0
	lsls r6, r6, #0x10
	ands r0, r6
	cmp r0, #0
	beq _08076C16
	adds r0, r1, #0
	bl sub_8016F28
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x2c
	ldrb r0, [r1]
	mov r2, sl
	ands r0, r2
	strb r0, [r1]
_08076C16:
	adds r4, r7, #0
	adds r4, #0xf8
	ldr r1, [r4]
	ldr r0, [r1, #4]
	ands r0, r6
	cmp r0, #0
	beq _08076C3C
	adds r0, r1, #0
	bl sub_8016F28
	ldr r0, [r4]
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r3, sl
	ands r1, r3
	strb r1, [r0]
	ldr r0, [r4]
	bl Player_8005380
_08076C3C:
	adds r0, r5, #0
	bl sub_80213F0
_08076C42:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _08076BAC
_08076C50:
	adds r0, r7, #0
	adds r0, #0xb2
	ldrb r6, [r0]
	cmp r6, #0
	beq _08076D0C
	movs r5, #0
	adds r7, #0xf4
	mov r8, r7
_08076C60:
	lsls r0, r5, #2
	add r0, r8
	ldr r4, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08076CC8 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_80213B0
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _08076CCC @ =Player_800E67C
	bl SetPlayerCallback
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	ldr r1, _08076CD0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, _08076CD4 @ =0x000369FF
	cmp r1, r0
	ble _08076CDC
	adds r0, r1, #0
	ldr r1, _08076CD8 @ =0x0004A500
	cmp r0, r1
	ble _08076CDE
	adds r0, r1, #0
	b _08076CDE
	.align 2, 0
_08076CB0: .4byte gCurTask
_08076CB4: .4byte 0x030000B3
_08076CB8: .4byte 0x030000FC
_08076CBC: .4byte 0x030000B1
_08076CC0: .4byte 0x030000F4
_08076CC4: .4byte 0x000001C7
_08076CC8: .4byte 0xFFFEFFFF
_08076CCC: .4byte Player_800E67C
_08076CD0: .4byte 0xFFFFFEFF
_08076CD4: .4byte 0x000369FF
_08076CD8: .4byte 0x0004A500
_08076CDC:
	ldr r0, _08076D00 @ =0x00036A00
_08076CDE:
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08076C60
	ldr r0, _08076D04 @ =0x00000236
	bl sub_80BA57C
	ldr r0, _08076D08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08076DB6
	.align 2, 0
_08076D00: .4byte 0x00036A00
_08076D04: .4byte 0x00000236
_08076D08: .4byte gCurTask
_08076D0C:
	adds r0, r7, #0
	bl sub_8076DD4
	ldr r4, _08076DC8 @ =gStageData
	ldrb r1, [r4, #6]
	adds r0, r7, #0
	bl sub_80772F0
	ldrb r0, [r4, #3]
	cmp r0, #5
	beq _08076D42
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08076DCC @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	bl sub_80772F0
_08076D42:
	str r6, [r7, #4]
	str r6, [r7, #0x54]
	adds r0, r7, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08076D62
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08076DB6
_08076D62:
	adds r6, r7, #0
	adds r6, #0xcc
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, _08076DD0 @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r0, #0xc8
	adds r0, r0, r7
	mov r8, r0
	adds r7, #4
_08076D84:
	strh r4, [r6, #0x10]
	lsls r1, r5, #2
	adds r1, r7, r1
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, _08076DD0 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	cmp r5, #0x14
	bls _08076D84
_08076DB6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076DC8: .4byte gStageData
_08076DCC: .4byte gPlayers
_08076DD0: .4byte gCamera

	thumb_func_start sub_8076DD4
sub_8076DD4: @ 0x08076DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	movs r2, #0
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _08076DF0
	movs r0, #0
	str r0, [sp]
	b _08076E0A
_08076DF0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x14
	bhi _08076E0A
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08076DF0
	str r2, [sp]
_08076E0A:
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x12
	bls _08076E2E
	movs r3, #0
	mov r1, ip
	adds r1, #4
	movs r2, #0
_08076E1C:
	lsls r0, r3, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _08076E1C
	b _0807715C
_08076E2E:
	mov r2, ip
	adds r2, #0xbc
	ldr r1, [sp]
	lsls r3, r1, #2
	mov r1, ip
	adds r1, #4
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [r2]
	mov r0, ip
	adds r0, #0xb5
	ldrb r4, [r0]
	movs r5, #0x58
	add r5, ip
	mov sb, r5
	str r1, [sp, #0x14]
	str r2, [sp, #0xc]
	mov r8, r3
	adds r6, r0, #0
	movs r7, #0xc0
	add r7, ip
	mov sl, r7
	adds r0, #2
	str r0, [sp, #4]
	adds r1, #0xb4
	str r1, [sp, #8]
	ldr r2, [sp]
	subs r2, #1
	str r2, [sp, #0x10]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp, #0x18]
	cmp r4, #0
	beq _08076EBC
	movs r3, #1
	movs r5, #0
	mov ip, r6
	ldr r7, [sp, #0x14]
	mov r4, sb
_08076E7C:
	mov r0, sl
	ldr r2, [r0]
	cmp r2, #0
	bge _08076E94
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _08076EB8
	b _08076EA2
_08076E94:
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	ble _08076EB8
_08076EA2:
	adds r1, r4, r1
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0]
	adds r5, r5, r0
	cmp r3, #0
	bne _08076E7C
_08076EB8:
	movs r0, #0
	strb r0, [r6]
_08076EBC:
	mov r2, sb
	add r2, r8
	ldr r1, [r2]
	mov r3, sl
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r2]
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08076F0C
	ldr r0, [r3]
	cmp r0, #0
	bge _08076EF8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	bge _08076F0C
	movs r0, #0
	strb r0, [r1]
	b _08076F0C
_08076EF8:
	ldr r5, [sp, #4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	ble _08076F0C
	movs r0, #0
	strb r0, [r5]
_08076F0C:
	ldr r4, [sp, #8]
	ldrb r1, [r4]
	cmp r1, #0
	beq _08076F72
	ldr r7, [sp, #0xc]
	ldr r0, [r7]
	cmp r0, #0
	bge _08076F44
	ldr r0, [sp, #0x14]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	blt _08076F9C
	mov r2, sb
	add r2, r8
	ldr r0, [r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _08076F9C
_08076F44:
	cmp r0, #0
	beq _08076F9C
	ldr r0, [sp, #0x14]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bge _08076F9C
	mov r2, sb
	add r2, r8
	ldr r0, [r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	mov r2, sl
	ldr r0, [r2]
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _08076F9C
_08076F72:
	ldr r5, [sp, #0xc]
	ldr r0, [r5]
	cmp r0, #0
	bge _08076F86
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	cmp r0, #0
	blt _08076F9C
	b _08076F94
_08076F86:
	cmp r0, #0
	beq _08076F9C
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	cmp r0, #0
	bge _08076F9C
_08076F94:
	mov r0, sb
	add r0, r8
	str r1, [r0]
	str r1, [r2]
_08076F9C:
	ldr r4, [sp, #0x14]
	add r4, r8
	ldr r7, [sp, #0xc]
	ldr r0, [r7]
	ldr r1, [r4]
	subs r0, r0, r1
	str r0, [r7]
	mov r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bge _08077088
	ldr r3, [sp]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	adds r6, r5, #0
	cmp r5, #0
	bge _08076FD2
	rsbs r6, r5, #0
_08076FD2:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r4, r3, #0
	cmp r2, #0
	beq _0807701A
	ldr r7, _08077080 @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_08076FE8:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08076FFE
	ldr r1, _08077084 @ =0x00003FFF
	adds r0, r0, r1
_08076FFE:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	bne _08076FE8
_0807701A:
	movs r0, #0x14
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r4, r3, #0
	cmp r2, #0x13
	bls _08077040
	b _0807715C
_08077040:
	ldr r7, _08077080 @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_0807704A:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08077060
	ldr r1, _08077084 @ =0x00003FFF
	adds r0, r0, r1
_08077060:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x13
	bls _0807704A
	b _0807715C
	.align 2, 0
_08077080: .4byte gSineTable
_08077084: .4byte 0x00003FFF
_08077088:
	ldr r3, [sp]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r7, #0
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	adds r6, r5, #0
	cmp r5, #0
	bge _080770AA
	rsbs r6, r5, #0
_080770AA:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	subs r0, r7, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	beq _080770F6
	ldr r7, _0807716C @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_080770C4:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _080770DA
	ldr r1, _08077170 @ =0x00003FFF
	adds r0, r0, r1
_080770DA:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	bne _080770C4
_080770F6:
	movs r0, #0x14
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	subs r4, r4, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r2, #0x13
	bhi _0807715C
	ldr r7, _0807716C @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_0807712A:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08077140
	ldr r1, _08077170 @ =0x00003FFF
	adds r0, r0, r1
_08077140:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x13
	bls _0807712A
_0807715C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807716C: .4byte gSineTable
_08077170: .4byte 0x00003FFF

	thumb_func_start sub_8077174
sub_8077174: @ 0x08077174
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0
	mov sb, r1
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	movs r3, #0
	movs r4, #0
	movs r5, #0
	ldr r2, _080771DC @ =0x03000004
	adds r7, r1, r2
	adds r0, r2, #0
	adds r0, r0, r1
	mov r8, r0
	adds r2, #0x54
	adds r1, r1, r2
_0807719E:
	lsls r2, r3, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080771AE
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080771AE:
	adds r0, r1, r2
	ldr r0, [r0]
	mov r6, ip
	adds r6, #0x58
	cmp r0, #0
	bne _080771C0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080771C0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _0807719E
	cmp r4, #0x15
	bne _080771E0
	mov r1, ip
	adds r1, #0xb7
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov sb, r0
	b _0807722A
	.align 2, 0
_080771DC: .4byte 0x03000004
_080771E0:
	cmp r5, #0x15
	bne _0807722A
	movs r1, #0
	movs r3, #0
	movs r4, #0
	mov r5, r8
_080771EC:
	lsls r0, r3, #2
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #0
	bge _080771F8
	rsbs r0, r0, #0
_080771F8:
	cmp r0, r1
	ble _08077206
	ldr r1, [r2]
	cmp r1, #0
	bge _08077204
	rsbs r1, r1, #0
_08077204:
	adds r4, r3, #0
_08077206:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _080771EC
	lsls r1, r4, #2
	mov r2, r8
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _08077222
	adds r1, r6, r1
	movs r0, #0x20
	b _08077228
_08077222:
	adds r1, r6, r1
	movs r0, #0x20
	rsbs r0, r0, #0
_08077228:
	str r0, [r1]
_0807722A:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8077238
sub_8077238: @ 0x08077238
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	asrs r2, r2, #8
	ldr r1, _08077274 @ =0xFFFFFCA0
	adds r0, r2, r1
	cmp r0, #0
	bge _08077262
	adds r1, #0xf
	adds r0, r2, r1
_08077262:
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08077278
	movs r4, #0
	b _0807727E
	.align 2, 0
_08077274: .4byte 0xFFFFFCA0
_08077278:
	cmp r0, #0x14
	ble _0807727E
	movs r4, #0x14
_0807727E:
	movs r1, #0
	lsls r2, r4, #0x18
	mov r3, ip
	adds r3, #0x58
	movs r0, #0xc0
	add r0, ip
	mov r8, r0
	movs r0, #0xb7
	add ip, r0
	asrs r6, r2, #0x18
	adds r5, r3, #0
	movs r7, #0
_08077296:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, r6
	beq _080772A4
	lsls r0, r1, #2
	adds r0, r5, r0
	str r7, [r0]
_080772A4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08077296
	mov r1, sl
	cmp r1, #0
	beq _080772CA
	asrs r0, r2, #0x16
	adds r0, r3, r0
	mov r1, sb
	adds r1, #1
	str r1, [r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	mov r2, r8
	str r0, [r2]
	b _080772DC
_080772CA:
	asrs r0, r2, #0x16
	adds r0, r3, r0
	mov r2, sb
	rsbs r1, r2, #0
	adds r1, #1
	str r1, [r0]
	movs r0, #0x80
	mov r1, r8
	str r0, [r1]
_080772DC:
	mov r2, ip
	strb r4, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80772F0
sub_80772F0: @ 0x080772F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0xcc
	adds r0, r0, r6
	mov r8, r0
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf4
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r7, r0, #0
	subs r7, #0xa0
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r3, _0807734C @ =0xFFFFFCA0
	adds r0, r1, r3
	cmp r0, #0
	bge _08077338
	ldr r2, _08077350 @ =0xFFFFFCAF
	adds r0, r1, r2
_08077338:
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	str r3, [sp, #8]
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08077354
	movs r0, #0
	str r0, [sp, #8]
	b _0807735C
	.align 2, 0
_0807734C: .4byte 0xFFFFFCA0
_08077350: .4byte 0xFFFFFCAF
_08077354:
	cmp r0, #0x14
	ble _0807735C
	movs r1, #0x14
	str r1, [sp, #8]
_0807735C:
	ldr r2, [sp, #8]
	lsls r3, r2, #0x18
	asrs r5, r3, #0x18
	lsls r0, r5, #4
	adds r7, r7, r0
	adds r0, r6, #0
	adds r0, #0xc8
	lsls r1, r5, #2
	adds r2, r6, #4
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	str r0, [sp, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	mov sb, r3
	mov sl, r2
	cmp r0, #0
	beq _080773C6
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080773C6
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _080773C6
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _080773B4
	ldr r0, [r4, #0x14]
	ldr r3, _080773B0 @ =0xFFFFFC00
	adds r0, r0, r3
	b _080773BC
	.align 2, 0
_080773B0: .4byte 0xFFFFFC00
_080773B4:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
_080773BC:
	adds r1, r6, #0
	adds r1, #0xbc
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080773C6:
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080773D0
	rsbs r1, r1, #0
_080773D0:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _080773DC
	movs r3, #1
	str r3, [sp, #0xc]
_080773DC:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0807742C
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0x14]
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r3, r2, #0
	ands r3, r1
	cmp r3, #0
	beq _08077412
	ldr r0, [r4, #4]
	ands r0, r1
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0807742C
_08077412:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807742C
	ldr r1, [r4, #0x14]
	ldr r7, _08077480 @ =0xFFFFFF00
	adds r1, r1, r7
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	subs r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807742C:
	ldr r0, _08077484 @ =gStageData
	ldr r1, [sp, #4]
	ldrb r0, [r0, #6]
	cmp r1, r0
	beq _08077438
	b _080776B8
_08077438:
	adds r0, r6, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080774CC
	adds r0, r6, #0
	adds r0, #0xb7
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0
	beq _080774E0
	movs r3, #0
	ldr r2, [r4, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080774E0
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080774E0
	adds r0, r6, #0
	adds r0, #0xfc
	ldr r1, [r0]
	adds r1, #0x23
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _08077488
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	rsbs r0, r2, #0
	lsrs r3, r0, #0x1f
	b _08077494
	.align 2, 0
_08077480: .4byte 0xFFFFFF00
_08077484: .4byte gStageData
_08077488:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	bne _08077494
	movs r3, #1
_08077494:
	movs r2, #0
	ldrsb r2, [r7, r2]
	subs r0, r2, #3
	mov r7, sb
	asrs r1, r7, #0x18
	cmp r0, r1
	bgt _080774E0
	adds r0, r2, #3
	cmp r0, r1
	blt _080774E0
	cmp r3, #0
	beq _080774E0
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080774E0
	ldr r1, _080774C8 @ =sub_80068EC
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _080774E0
	.align 2, 0
_080774C8: .4byte sub_80068EC
_080774CC:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080774E0
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080774E0
	movs r0, #1
	str r0, [sp, #0x10]
_080774E0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _080774E8
	b _08077646
_080774E8:
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r3, sb
	asrs r1, r3, #0x18
	adds r7, r0, #0
	cmp r2, r1
	bne _0807756E
	cmp r2, #0
	bne _08077500
	b _08077640
_08077500:
	cmp r2, #0x14
	bne _08077506
	b _08077640
_08077506:
	lsls r2, r2, #2
	subs r0, #0x5c
	adds r3, r0, r2
	ldr r0, [r3]
	cmp r0, #0
	bge _08077514
	rsbs r0, r0, #0
_08077514:
	cmp r0, #0x80
	ble _0807751A
	b _08077640
_0807751A:
	add r2, sl
	ldr r1, [r2]
	cmp r1, #0
	bge _08077524
	rsbs r1, r1, #0
_08077524:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0807752E
	b _08077640
_0807752E:
	ldr r0, [r2]
	cmp r0, #0
	beq _0807753E
	adds r0, r6, #0
	adds r0, #0xc0
	ldr r0, [r0]
	rsbs r0, r0, #0
	b _0807763E
_0807753E:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807755C
	ldr r0, _08077558 @ =0xFFFFFC00
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0x80
	str r0, [r1]
	b _08077640
	.align 2, 0
_08077558: .4byte 0xFFFFFC00
_0807755C:
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r1]
	b _08077640
_0807756E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0807758E
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	cmp r1, #0
	bge _08077586
	rsbs r1, r1, #0
_08077586:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _08077594
_0807758E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08077640
_08077594:
	mov r1, sb
	asrs r0, r1, #0x18
	cmp r0, #0
	beq _08077640
	cmp r0, #0x14
	beq _08077640
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x58
	movs r2, #0xc0
	adds r2, r2, r6
	mov r8, r2
	adds r6, #0xb5
	mov ip, r6
	adds r5, r0, #0
	adds r2, r3, #0
	movs r6, #0
_080775B6:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, r5
	beq _080775C4
	lsls r0, r1, #2
	adds r0, r2, r0
	str r6, [r0]
_080775C4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _080775B6
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _080775EC
	mov r2, sb
	asrs r1, r2, #0x16
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	cmp r2, #0
	bge _080775E6
	rsbs r2, r2, #0
_080775E6:
	ldr r0, _08077600 @ =0x00000DFF
	cmp r2, r0
	ble _08077608
_080775EC:
	mov r1, sb
	asrs r0, r1, #0x16
	adds r2, r3, r0
	ldr r1, _08077604 @ =gUnknown_080D5998
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #1
	str r0, [r2]
	b _08077610
	.align 2, 0
_08077600: .4byte 0x00000DFF
_08077604: .4byte gUnknown_080D5998
_08077608:
	adds r1, r3, r1
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
_08077610:
	mov r2, sp
	ldrb r0, [r2, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08077638
	mov r1, sb
	asrs r0, r1, #0x16
	adds r0, r3, r0
	ldr r1, [r0]
	rsbs r1, r1, #0
	str r1, [r0]
	movs r0, #0x80
	mov r2, r8
	str r0, [r2]
	b _08077640
_08077638:
	movs r0, #0x80
	rsbs r0, r0, #0
	mov r3, r8
_0807763E:
	str r0, [r3]
_08077640:
	mov r0, sp
	ldrb r0, [r0, #8]
	b _080776B6
_08077646:
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _080776B4
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _080776B4
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x58
	adds r5, r7, #0
	adds r2, r3, #0
	movs r6, #0
_08077672:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08077684
	lsls r0, r1, #2
	adds r0, r2, r0
	str r6, [r0]
_08077684:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08077672
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r0, #0
	bne _080776B4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080776B0
	movs r0, #0x20
	rsbs r0, r0, #0
	b _080776B2
_080776B0:
	movs r0, #0x20
_080776B2:
	str r0, [r2]
_080776B4:
	movs r0, #0xff
_080776B6:
	strb r0, [r7]
_080776B8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80776C8
sub_80776C8: @ 0x080776C8
	push {r4, r5, lr}
	ldr r4, _080776E8 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080776EC
	adds r0, r2, #0
	bl TaskDestroy
	b _0807770C
	.align 2, 0
_080776E8: .4byte gCurTask
_080776EC:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08077700
	ldr r1, [r4]
	ldr r0, _080776FC @ =sub_8077718
	b _08077704
	.align 2, 0
_080776FC: .4byte sub_8077718
_08077700:
	ldr r1, [r4]
	ldr r0, _08077714 @ =sub_8077764
_08077704:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8076328
_0807770C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08077714: .4byte sub_8077764

	thumb_func_start sub_8077718
sub_8077718: @ 0x08077718
	push {r4, r5, lr}
	ldr r5, _08077738 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0807773C
	adds r0, r2, #0
	bl TaskDestroy
	b _0807775A
	.align 2, 0
_08077738: .4byte gCurTask
_0807773C:
	adds r0, r4, #0
	bl sub_8076328
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0807775A
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807775A
	ldr r1, [r5]
	ldr r0, _08077760 @ =sub_8077764
	str r0, [r1, #8]
_0807775A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08077760: .4byte sub_8077764

	thumb_func_start sub_8077764
sub_8077764: @ 0x08077764
	push {r4, r5, lr}
	ldr r5, _08077784 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08077788
	adds r0, r2, #0
	bl TaskDestroy
	b _080777A0
	.align 2, 0
_08077784: .4byte gCurTask
_08077788:
	adds r0, r4, #0
	bl sub_8076328
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080777A0
	movs r0, #0
	strh r0, [r4, #0x30]
	ldr r1, [r5]
	ldr r0, _080777A8 @ =sub_8075064
	str r0, [r1, #8]
_080777A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080777A8: .4byte sub_8075064

	thumb_func_start sub_80777AC
sub_80777AC: @ 0x080777AC
	push {r4, lr}
	ldr r0, _08077808 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080777FC
	movs r1, #0
	ldr r3, _0807780C @ =gPlayers
	ldr r2, _08077810 @ =0x000001C1
_080777CA:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	cmp r0, r2
	ble _08077802
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080777CA
	movs r0, #0x34
	bl sub_80299D4
	ldr r0, _08077808 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08077814 @ =sub_8075204
	str r0, [r1, #8]
_080777FC:
	adds r0, r4, #0
	bl sub_8076328
_08077802:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08077808: .4byte gCurTask
_0807780C: .4byte gPlayers
_08077810: .4byte 0x000001C1
_08077814: .4byte sub_8075204

	thumb_func_start sub_8077818
sub_8077818: @ 0x08077818
	bx lr
	.align 2, 0

	thumb_func_start sub_807781C
sub_807781C: @ 0x0807781C
	bx lr
	.align 2, 0

	thumb_func_start sub_8077820
sub_8077820: @ 0x08077820
	push {lr}
	ldr r0, _0807784C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x50]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x54]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_8076328
	pop {r0}
	bx r0
	.align 2, 0
_0807784C: .4byte gCurTask

	thumb_func_start sub_8077850
sub_8077850: @ 0x08077850
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x48]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	ldr r0, [r4, #0x58]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8077874
sub_8077874: @ 0x08077874
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0x58
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _080778C0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080778A0
	cmp r1, #8
	beq _080778A0
	cmp r1, #0x10
	bne _080778C0
_080778A0:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080778C0
	ldr r1, [r4]
	ldr r0, [r4, #0x14]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
_080778C0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080778C8:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_80778D0
sub_80778D0: @ 0x080778D0
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x22
	ldrb r0, [r3]
	cmp r0, #0
	beq _080778F4
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r1, _080778F0 @ =0xFFFF7400
	cmp r0, r1
	bge _0807790E
	movs r0, #0
	b _08077906
	.align 2, 0
_080778F0: .4byte 0xFFFF7400
_080778F4:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r1, #0x8c
	lsls r1, r1, #8
	cmp r0, r1
	ble _0807790E
	movs r0, #1
_08077906:
	strb r0, [r3]
	ldr r0, [r2, #8]
	rsbs r0, r0, #0
	str r0, [r2, #8]
_0807790E:
	movs r0, #0
	str r0, [r2, #0x18]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8077918
sub_8077918: @ 0x08077918
	push {lr}
	adds r2, r0, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807793C
	ldr r0, _08077938 @ =gUnknown_080D5954
	adds r1, r2, #0
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	rsbs r0, r0, #0
	b _0807794A
	.align 2, 0
_08077938: .4byte gUnknown_080D5954
_0807793C:
	ldr r0, _08077950 @ =gUnknown_080D5954
	adds r1, r2, #0
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0807794A:
	str r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08077950: .4byte gUnknown_080D5954

	thumb_func_start sub_8077954
sub_8077954: @ 0x08077954
	lsls r1, r1, #0x18
	adds r0, #0x80
	ldr r2, _08077970 @ =gUnknown_080D5904
	lsrs r1, r1, #0x16
	adds r1, r1, r2
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrh r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldr r1, _08077974 @ =0x0000FFFF
	strh r1, [r0, #0x18]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0
_08077970: .4byte gUnknown_080D5904
_08077974: .4byte 0x0000FFFF

	thumb_func_start sub_8077978
sub_8077978: @ 0x08077978
	bx lr
	.align 2, 0
_0807797C:
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8077984
sub_8077984: @ 0x08077984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0xcc
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, _080779E8 @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r0, #0xc8
	adds r0, r0, r7
	mov r8, r0
_080779AA:
	strh r4, [r6, #0x10]
	lsls r0, r5, #2
	adds r1, r7, #4
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, _080779E8 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r5, #0x14
	bls _080779AA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080779E8: .4byte gCamera

	thumb_func_start sub_80779EC
sub_80779EC: @ 0x080779EC
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08077A00 @ =0x030000CC
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08077A00: .4byte 0x030000CC

	thumb_func_start sub_8077A04
sub_8077A04: @ 0x08077A04
	ldrh r0, [r0, #6]
	ldr r2, _08077A10 @ =0x030000B6
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08077A10: .4byte 0x030000B6

	thumb_func_start sub_8077A14
sub_8077A14: @ 0x08077A14
	ldrh r0, [r0, #6]
	ldr r2, _08077A20 @ =0x030000B8
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08077A20: .4byte 0x030000B8
_08077A24:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8077A28
sub_8077A28: @ 0x08077A28
	adds r2, r0, #0
	adds r2, #0x2b
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	movs r1, #1
	strh r1, [r0, #0x2c]
	adds r0, #0xd4
	strb r2, [r0]
	bx lr

	thumb_func_start sub_8077A3C
sub_8077A3C: @ 0x08077A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #8]
	adds r4, r1, #0
	adds r5, r2, #0
	str r3, [sp, #0xc]
	movs r3, #1
	add r0, sp, #4
	strb r3, [r0]
	ldr r0, _08077A98 @ =sub_8077C08
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08077A9C @ =sub_8078A64
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [sp, #8]
	str r0, [r6, #0x20]
	cmp r0, #0
	beq _08077AA0
	add r0, sp, #8
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r6, #8]
	adds r0, #0x12
	str r0, [r6, #0xc]
	b _08077AA4
	.align 2, 0
_08077A98: .4byte sub_8077C08
_08077A9C: .4byte sub_8078A64
_08077AA0:
	str r4, [r6, #8]
	str r5, [r6, #0xc]
_08077AA4:
	ldr r2, _08077BF8 @ =gUnknown_03006868
	ldr r0, [r2]
	ldr r5, _08077BFC @ =0x00196225
	muls r0, r5, r0
	ldr r4, _08077C00 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x7f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x3b
	bhi _08077AC0
	movs r3, #0xff
_08077AC0:
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0]
	lsls r0, r3, #0x18
	adds r2, r6, #0
	adds r2, #0x54
	str r2, [sp, #0x10]
	adds r7, r6, #4
	str r7, [sp, #0x14]
	add r3, sp, #4
	adds r1, r6, #0
	adds r1, #0x10
	str r1, [sp, #0x18]
	ldr r2, _08077BF8 @ =gUnknown_03006868
	mov ip, r2
	mov sl, r5
	mov sb, r4
	movs r7, #0x1f
	mov r8, r7
	asrs r5, r0, #0x18
	adds r4, r6, #0
	adds r4, #0x18
_08077AEC:
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldr r0, [sp, #0x18]
	adds r1, r0, r1
	mov r2, ip
	ldr r0, [r2]
	mov r2, sl
	muls r2, r0, r2
	add r2, sb
	mov r7, ip
	str r2, [r7]
	lsrs r0, r2, #8
	mov r7, r8
	ands r0, r7
	muls r0, r5, r0
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r4, r1
	mov r0, sl
	muls r0, r2, r0
	add r0, sb
	mov r2, ip
	str r0, [r2]
	lsrs r0, r0, #8
	ands r0, r7
	muls r0, r5, r0
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldr r7, [sp, #0x18]
	adds r1, r7, r1
	ldr r0, [r1]
	lsls r0, r0, #8
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1]
	lsls r0, r0, #8
	str r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08077AEC
	ldr r0, [sp, #0x3c]
	str r0, [r6]
	ldr r0, _08077BF8 @ =gUnknown_03006868
	ldr r1, [r0]
	ldr r0, _08077BFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077C00 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _08077BF8 @ =gUnknown_03006868
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #3
	ands r0, r1
	add r2, sp, #4
	movs r1, #0
	strb r1, [r2]
	adds r4, r2, #0
	ldr r1, _08077C04 @ =gUnknown_080D59FC
	lsls r0, r0, #3
	adds r7, r0, r1
	adds r1, #4
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
_08077B80:
	ldrb r0, [r4]
	ldr r1, [sp, #0x10]
	cmp r0, #0
	beq _08077B8C
	adds r1, r6, #0
	adds r1, #0x24
_08077B8C:
	ldr r2, [sp, #0xc]
	str r2, [r1]
	mov r2, r8
	ldr r0, [r2]
	lsls r0, r0, #5
	ldr r2, [sp, #0xc]
	adds r2, r2, r0
	str r2, [sp, #0xc]
	ldrh r0, [r7]
	strh r0, [r1, #0xc]
	ldrb r0, [r7, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sb
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08077B80
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077BF8: .4byte gUnknown_03006868
_08077BFC: .4byte 0x00196225
_08077C00: .4byte 0x3C6EF35F
_08077C04: .4byte gUnknown_080D59FC

	thumb_func_start sub_8077C08
sub_8077C08: @ 0x08077C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r6, #1
	add r0, sp, #4
	strb r6, [r0]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08077C58 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _08077C60
	ldr r2, _08077C5C @ =0x03000020
	adds r0, r1, r2
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	movs r2, #0x10
	ldrsh r4, [r0, r2]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	adds r5, r0, #0
	adds r5, #0x20
	b _08077C6E
	.align 2, 0
_08077C58: .4byte gCurTask
_08077C5C: .4byte 0x03000020
_08077C60:
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r4, [r0]
	ldr r0, [r2, #0xc]
	ldr r5, [r0]
	asrs r4, r4, #8
	asrs r5, r5, #8
_08077C6E:
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x54
	str r0, [sp, #0x10]
	movs r1, #4
	add r1, r8
	mov sb, r1
	add r7, sp, #4
	mov r2, sp
	strh r4, [r2, #0xc]
	ldr r0, _08077C90 @ =gUnknown_03006868
	mov sl, r0
_08077C8A:
	ldr r4, [sp, #0x10]
	b _08077D02
	.align 2, 0
_08077C90: .4byte gUnknown_03006868
_08077C94:
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08077D34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077D38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrb r1, [r7]
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sp
	ldrh r2, [r2, #0xc]
	adds r0, r2, r0
	strh r0, [r4, #0x10]
	ldrb r1, [r7]
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r5, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r6, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r6, #0
	bne _08077CE6
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08077CE6:
	ldrb r0, [r7]
	add r0, sb
	strb r6, [r0]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08077D0C
	cmp r0, #0
	beq _08077C8A
	mov r4, r8
	adds r4, #0x24
_08077D02:
	ldrb r0, [r7]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077C94
_08077D0C:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08077D22
	mov r2, r8
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08077D3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08077D22:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077D34: .4byte 0x00196225
_08077D38: .4byte 0x3C6EF35F
_08077D3C: .4byte gCurTask

	thumb_func_start sub_8077D40
sub_8077D40: @ 0x08077D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	strb r0, [r7, #8]
	movs r0, #1
	str r0, [r7]
	ldr r2, _08077E60 @ =gUnknown_03006868
	ldr r0, [r2]
	ldr r4, _08077E64 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _08077E68 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x7f
	ands r0, r1
	movs r1, #1
	cmp r0, #0x3b
	bhi _08077D72
	movs r1, #0xff
_08077D72:
	movs r6, #0
	adds r0, r7, #0
	adds r0, #0x14
	str r0, [sp]
	lsls r1, r1, #0x18
	str r1, [sp, #0xc]
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	adds r0, #0x10
	str r0, [sp, #8]
	adds r1, #0x10
	str r1, [sp, #0x10]
	mov sl, r2
	mov sb, r4
	mov r8, r3
	movs r2, #0x1f
	mov ip, r2
	ldr r3, [sp, #0xc]
	asrs r5, r3, #0x18
_08077D9A:
	lsls r3, r6, #2
	ldr r0, [sp]
	adds r4, r0, r3
	mov r1, sl
	ldr r0, [r1]
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	lsrs r0, r1, #8
	mov r2, ip
	ands r0, r2
	muls r0, r5, r0
	str r0, [r4]
	ldr r0, [sp, #4]
	adds r2, r0, r3
	mov r0, sb
	muls r0, r1, r0
	add r0, r8
	mov r1, sl
	str r0, [r1]
	lsrs r0, r0, #8
	mov r1, ip
	ands r0, r1
	muls r0, r5, r0
	str r0, [r2]
	ldr r0, [r4]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r2]
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, [sp, #8]
	adds r1, r0, r3
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, [sp, #0x10]
	adds r3, r1, r3
	ldr r0, [r2]
	str r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08077D9A
	ldr r5, _08077E60 @ =gUnknown_03006868
	ldr r0, [r5]
	ldr r6, _08077E64 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r4, _08077E68 @ =0x3C6EF35F
	adds r2, r2, r4
	lsrs r0, r2, #8
	movs r1, #0xf
	ands r0, r1
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x18
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r5]
	lsrs r0, r0, #8
	movs r1, #0x3f
	ands r0, r1
	rsbs r0, r0, #0
	lsls r3, r3, #5
	str r3, [r7, #0x34]
	lsls r0, r0, #5
	str r0, [r7, #0x38]
	movs r6, #0
	mov r8, r5
	ldr r5, _08077E6C @ =gUnknown_080D5A44
	movs r0, #0
	mov sb, r0
	movs r4, #0
_08077E32:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08077E64 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08077E68 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #8
	movs r0, #3
	ands r2, r0
	cmp r2, #2
	bls _08077E4C
	movs r2, #2
_08077E4C:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bne _08077E70
	adds r3, r7, #0
	adds r3, #0xd4
	cmp r6, #0
	beq _08077E78
	subs r3, #0x30
	b _08077E78
	.align 2, 0
_08077E60: .4byte gUnknown_03006868
_08077E64: .4byte 0x00196225
_08077E68: .4byte 0x3C6EF35F
_08077E6C: .4byte gUnknown_080D5A44
_08077E70:
	adds r3, r7, #0
	adds r3, #0xa4
	cmp r6, #0
	bne _08077ECA
_08077E78:
	ldr r0, [r7, #0x3c]
	str r0, [r3]
	lsls r2, r2, #3
	adds r0, r5, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	adds r2, r2, r5
	ldrh r0, [r2]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r0, sb
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08077E32
_08077ECA:
	movs r6, #0
	ldr r1, _08077F04 @ =gUnknown_03006868
	mov r8, r1
	ldr r5, _08077F08 @ =gUnknown_080D5A14
	movs r2, #0
	mov sb, r2
	movs r4, #0
_08077ED8:
	mov r3, r8
	ldr r1, [r3]
	ldr r0, _08077F0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077F10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r2, r0, #8
	movs r0, #7
	ands r2, r0
	cmp r2, #5
	bls _08077EF2
	movs r2, #5
_08077EF2:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bne _08077F14
	adds r3, r7, #0
	adds r3, #0x74
	cmp r6, #0
	beq _08077F1C
	subs r3, #0x30
	b _08077F1C
	.align 2, 0
_08077F04: .4byte gUnknown_03006868
_08077F08: .4byte gUnknown_080D5A14
_08077F0C: .4byte 0x00196225
_08077F10: .4byte 0x3C6EF35F
_08077F14:
	adds r3, r7, #0
	adds r3, #0x44
	cmp r6, #0
	bne _08077F70
_08077F1C:
	ldr r0, [r7, #0x3c]
	str r0, [r3]
	lsls r2, r2, #3
	adds r0, r5, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	adds r2, r2, r5
	ldrh r0, [r2]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r2, sb
	strb r2, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #1
	strb r0, [r7, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08077ED8
_08077F70:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8077F80
sub_8077F80: @ 0x08077F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0]
	movs r7, #0
	ldr r0, _08077FC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08077FD0
	ldr r2, _08077FCC @ =0x03000040
	adds r0, r1, r2
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r1, [r0, #0x14]
	movs r2, #0x10
	ldrsh r1, [r1, r2]
	str r1, [sp, #8]
	ldr r0, [r0, #0x14]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	adds r0, #0x20
	add r1, sp, #8
	b _08077FE8
	.align 2, 0
_08077FC8: .4byte gCurTask
_08077FCC: .4byte 0x03000040
_08077FD0:
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	add r1, sp, #8
	str r0, [r1, #4]
	ldr r0, [sp, #8]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
_08077FE8:
	str r0, [r1, #4]
	adds r5, r1, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8078A78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8078070
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08078050
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r6, r5, #0
	adds r3, r1, #0
	adds r5, r4, #0
	adds r5, #0x2c
_08078010:
	ldrb r2, [r3]
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r6, #4]
	adds r0, r0, r1
	cmp r0, #0xb3
	ble _08078028
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08078028:
	adds r0, r2, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08078010
	ldr r1, [r4]
	cmp r1, #0
	bne _08078062
	cmp r7, #2
	bne _08078062
	ldr r0, [r4, #4]
	strb r1, [r0]
	ldr r0, _0807804C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08078062
	.align 2, 0
_0807804C: .4byte gCurTask
_08078050:
	ldr r1, [r4]
	cmp r1, #0
	bne _08078062
	ldr r0, [r4, #4]
	strb r1, [r0]
	ldr r0, _0807806C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08078062:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807806C: .4byte gCurTask

	thumb_func_start sub_8078070
sub_8078070: @ 0x08078070
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
_08078078:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _0807808A
	adds r4, r5, #0
	adds r4, #0xd4
	cmp r7, #0
	beq _0807808E
	subs r4, #0x30
	b _0807808E
_0807808A:
	adds r4, r5, #0
	adds r4, #0xa4
_0807808E:
	ldr r2, _080780EC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080780F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080780F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	cmp r0, #1
	bne _080780D2
	ldr r1, [r6]
	lsls r2, r7, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	str r0, [r5]
	adds r0, r4, #0
	bl DisplaySprite
_080780D2:
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0807812A
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _080780F8
	adds r4, r5, #0
	adds r4, #0x74
	cmp r7, #0
	beq _080780FC
	subs r4, #0x30
	b _080780FC
	.align 2, 0
_080780EC: .4byte gUnknown_03006868
_080780F0: .4byte 0x00196225
_080780F4: .4byte 0x3C6EF35F
_080780F8:
	adds r4, r5, #0
	adds r4, #0x44
_080780FC:
	ldr r1, [r6]
	lsls r2, r7, #2
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0807812A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08078078
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807813C
sub_807813C: @ 0x0807813C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r3, [r4, #0xc]
	adds r0, r0, r3
	str r0, [r4, #0x20]
	asrs r0, r0, #8
	ldr r1, _08078160 @ =gCamera
	ldr r2, [r1]
	adds r5, r0, r2
	ldr r0, [r1, #0x1c]
	adds r7, r1, #0
	cmp r5, r0
	ble _08078164
	movs r0, #0xff
	b _0807816C
	.align 2, 0
_08078160: .4byte gCamera
_08078164:
	ldr r0, [r7, #0x18]
	cmp r5, r0
	bge _08078172
	movs r0, #1
_0807816C:
	strb r0, [r4, #5]
	rsbs r0, r3, #0
	str r0, [r4, #0xc]
_08078172:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldr r2, [r7]
	adds r1, r1, r2
	asrs r0, r0, #8
	ldr r2, [r7, #4]
	adds r0, r0, r2
	adds r6, r0, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _080781A4 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080781A8
	movs r0, #0xff
	b _080781B0
	.align 2, 0
_080781A4: .4byte sub_805217C
_080781A8:
	ldr r0, [r7, #0x10]
	cmp r6, r0
	bge _080781B8
	movs r0, #1
_080781B0:
	strb r0, [r4, #6]
	ldr r0, [r4, #0x10]
	rsbs r0, r0, #0
	str r0, [r4, #0x10]
_080781B8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80781C0
sub_80781C0: @ 0x080781C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08078360 @ =sub_8078C3C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078364 @ =sub_8078C28
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	mov sl, r0
	str r5, [r0]
	ldr r2, _08078368 @ =gUnknown_03006868
	ldr r0, [r2]
	ldr r6, _0807836C @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08078370 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	mov r8, r1
	ands r0, r1
	movs r3, #0
	mov r1, sl
	strb r0, [r1, #5]
	ldr r0, [r2]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #5
	ands r0, r1
	mov r1, sl
	strb r0, [r1, #6]
	strh r3, [r1, #8]
	str r3, [r1, #0x20]
	mov r3, r8
	strb r3, [r1, #4]
	str r4, [r1, #0x10]
	adds r0, r4, #4
	str r0, [r1, #0x14]
	ldr r0, [r4]
	str r0, [r1, #0x18]
	ldr r0, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r1, _08078374 @ =gCamera
	ldr r0, [r1]
	mov r3, sl
	strh r0, [r3, #0xa]
	ldr r0, [r1, #4]
	strh r0, [r3, #0xc]
	movs r7, #0
	ldr r4, _08078378 @ =0x03000024
	add r4, sb
	adds r3, r2, #0
	ldr r0, _08078378 @ =0x03000024
	add r0, sb
	str r0, [sp, #0xc]
_0807824E:
	lsls r2, r7, #3
	adds r2, r4, r2
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, _0807837C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807824E
	movs r7, #0
	movs r3, #0x28
	add r3, sl
	mov r8, r3
	movs r0, #0x3c
	add r0, sl
	mov sb, r0
	movs r1, #0x40
	add r1, sl
	mov ip, r1
	mov r3, sl
	adds r3, #0x60
	str r3, [sp, #8]
	mov r0, sl
	adds r0, #0x54
	str r0, [sp, #4]
	mov r4, r8
	ldr r3, _08078368 @ =gUnknown_03006868
	ldr r6, _0807836C @ =0x00196225
	ldr r5, _08078370 @ =0x3C6EF35F
_0807829A:
	lsls r2, r7, #3
	adds r2, r4, r2
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, _0807837C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807829A
	movs r7, #0
	mov r6, sb
	ldr r5, [sp, #0xc]
	mov r4, ip
	mov r3, r8
_080782C8:
	lsls r1, r7, #3
	adds r2, r6, r1
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080782C8
	movs r7, #0
	ldr r5, _08078368 @ =gUnknown_03006868
	ldr r3, _0807836C @ =0x00196225
	mov r8, r3
	ldr r6, _08078370 @ =0x3C6EF35F
_080782EE:
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r4, r0, r3
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r6
	str r2, [r5]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	adds r0, #5
	lsls r0, r0, #7
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, [sp, #4]
	adds r4, r1, r3
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	adds r2, r2, r6
	str r2, [r5]
	lsrs r0, r2, #8
	movs r1, #5
	ands r0, r1
	lsls r3, r0, #4
	str r3, [r4]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807833A
	rsbs r0, r3, #0
	str r0, [r4]
_0807833A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080782EE
	movs r0, #0x90
	bl sub_80BA57C
	mov r0, sl
	bl sub_8078380
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078360: .4byte sub_8078C3C
_08078364: .4byte sub_8078C28
_08078368: .4byte gUnknown_03006868
_0807836C: .4byte 0x00196225
_08078370: .4byte 0x3C6EF35F
_08078374: .4byte gCamera
_08078378: .4byte 0x03000024
_0807837C: .4byte 0xFFFFF000

	thumb_func_start sub_8078380
sub_8078380: @ 0x08078380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r5, _08078460 @ =gUnknown_080D5A44
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r5, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _08078464 @ =gUnknown_080D5A14
	mov r8, r0
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r4, r0
	bl VramMalloc
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0x6c
	str r7, [r6, #0x6c]
	lsls r4, r4, #5
	adds r7, r7, r4
	ldrb r1, [r6, #5]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrh r1, [r1]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #5]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r1, #0
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldrb r0, [r6, #6]
	cmp r0, #7
	beq _08078452
	adds r0, r6, #0
	adds r0, #0x94
	str r7, [r0]
	ldrb r1, [r6, #6]
	lsls r1, r1, #3
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #6]
	lsls r1, r1, #3
	add r1, r8
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	orrs r1, r5
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	mov r1, sb
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
_08078452:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078460: .4byte gUnknown_080D5A44
_08078464: .4byte gUnknown_080D5A14

	thumb_func_start sub_8078468
sub_8078468: @ 0x08078468
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	mov r7, ip
	adds r7, #0x40
	ldr r3, _080784A8 @ =0x0000B3FF
	mov sb, r3
_08078480:
	lsls r2, r6, #3
	adds r0, r7, r2
	mov r3, ip
	ldr r1, [r3, #0x1c]
	ldr r0, [r0]
	adds r1, r1, r0
	adds r5, r2, #0
	cmp r1, sb
	bgt _080784D8
	lsls r0, r6, #2
	mov r1, ip
	adds r1, #0x54
	adds r3, r1, r0
	ldr r2, [r3]
	adds r4, r0, #0
	cmp r2, #0
	ble _080784AC
	adds r0, r2, #0
	adds r0, #0x10
	b _080784B0
	.align 2, 0
_080784A8: .4byte 0x0000B3FF
_080784AC:
	adds r0, r2, #0
	subs r0, #0x10
_080784B0:
	str r0, [r3]
	mov r2, ip
	adds r2, #0x3c
	adds r2, r2, r5
	adds r1, r1, r4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, ip
	adds r0, #0x60
	adds r0, r0, r4
	ldr r1, [r0]
	adds r1, #0x40
	str r1, [r0]
	adds r2, r7, r5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _080784E2
_080784D8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080784E2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08078480
	mov r0, r8
	cmp r0, #3
	beq _080784F6
	movs r0, #0
	b _080784F8
_080784F6:
	movs r0, #1
_080784F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078504
sub_8078504: @ 0x08078504
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x6c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r8, r0
	movs r7, #0
_0807851A:
	ldr r1, [r5, #0x10]
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x24
	adds r6, r0, r2
	ldr r0, [r1]
	ldr r1, [r6]
	adds r0, r0, r1
	asrs r3, r0, #8
	strh r3, [r4, #0x10]
	ldr r1, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x28
	adds r2, r0, r2
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	cmp r7, #0
	beq _08078554
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r3, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #0x12]
_08078554:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807851A
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078570
sub_8078570: @ 0x08078570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r7, sp
_0807857E:
	ldrb r0, [r4, #6]
	cmp r0, #7
	beq _08078636
	adds r5, r4, #0
	adds r5, #0x94
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r6, [r4, #0x18]
	adds r3, r0, #0
	cmp r1, r6
	beq _080785E4
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	beq _080785E4
	ldr r2, _080785E0 @ =gCamera
	ldr r0, [r2]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r7]
	ldr r0, [r2, #4]
	ldrh r1, [r4, #0xc]
	subs r0, r0, r1
	strh r0, [r7, #2]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, r6, r1
	mov r0, r8
	lsls r3, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #8
	strh r1, [r5, #0x10]
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	adds r2, r4, #0
	adds r2, #0x40
	adds r1, r2, r3
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	b _080785FE
	.align 2, 0
_080785E0: .4byte gCamera
_080785E4:
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	adds r3, r2, #0
	adds r2, r4, #0
	adds r2, #0x40
_080785FE:
	ldr r0, [r4, #0x14]
	adds r1, r2, r3
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r1, r0, #8
	strh r1, [r5, #0x12]
	mov r2, r8
	cmp r2, #0
	beq _08078630
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x12]
_08078630:
	adds r0, r5, #0
	bl DisplaySprite
_08078636:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #2
	bls _0807857E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078650
sub_8078650: @ 0x08078650
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08078694 @ =gSineTable
	asrs r0, r0, #7
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	str r1, [r3, #0x14]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	str r0, [r3, #0x1c]
	ldr r1, [r3, #0x18]
	ldr r2, _08078698 @ =0xFFFFFC00
	adds r1, r1, r2
	str r1, [r3, #0x18]
	ldr r0, [r3, #0x20]
	adds r0, r0, r2
	str r0, [r3, #0x20]
	ldr r0, _0807869C @ =0xFFFFC400
	cmp r1, r0
	blt _080786A0
	movs r0, #0
	b _080786B0
	.align 2, 0
_08078694: .4byte gSineTable
_08078698: .4byte 0xFFFFFC00
_0807869C: .4byte 0xFFFFC400
_080786A0:
	ldr r1, [r3, #0x24]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	str r0, [r3, #0x18]
	str r0, [r3, #0x20]
	str r0, [r3, #0x10]
	movs r0, #1
_080786B0:
	pop {r1}
	bx r1

	thumb_func_start sub_80786B4
sub_80786B4: @ 0x080786B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r0, _08078754 @ =sub_8078764
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078758 @ =sub_8078D18
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, [r6]
	str r0, [r5, #4]
	ldr r0, [r6, #4]
	str r0, [r5, #0xc]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	str r0, [r5, #0x10]
	mov r0, r8
	str r0, [r5, #0x14]
	mov r1, sb
	str r1, [r5, #0x18]
	mov r0, sl
	str r0, [r5]
	ldr r6, _0807875C @ =gUnknown_080D5A44
	ldr r0, [r6, #0xc]
	bl VramMalloc
	ldr r1, _08078760 @ =0x0300001C
	adds r4, r4, r1
	str r0, [r4]
	ldrh r0, [r6, #8]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	str r1, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078754: .4byte sub_8078764
_08078758: .4byte sub_8078D18
_0807875C: .4byte gUnknown_080D5A44
_08078760: .4byte 0x0300001C

	thumb_func_start sub_8078764
sub_8078764: @ 0x08078764
	push {r4, r5, r6, r7, lr}
	ldr r7, _080787D0 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ldr r1, [r6, #0xc]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2e]
	ldr r0, _080787D4 @ =0x0300001C
	adds r5, r5, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2e]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	cmp r4, #0
	bne _080787CA
	ldr r0, [r6]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
_080787CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080787D0: .4byte gCurTask
_080787D4: .4byte 0x0300001C

	thumb_func_start sub_80787D8
sub_80787D8: @ 0x080787D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r7, #0
	ldr r0, _08078878 @ =gUnknown_080D5A64
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _0807887C @ =gSineTable
	mov sb, r0
_080787F4:
	mov r1, ip
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, sl
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r5, r0, #3
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #0xc]
	lsls r0, r7, #3
	mov r3, r8
	adds r3, #0x28
	adds r3, r3, r0
	mov r1, ip
	str r1, [r3]
	mov r4, r8
	adds r4, #0x24
	adds r4, r4, r0
	str r1, [r4]
	asrs r2, r2, #6
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #8
	adds r6, r0, r1
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r5, r5, #6
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r5, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r1, [r6]
	lsrs r0, r1, #6
	cmp r0, #0x10
	blo _08078880
	movs r0, #1
	b _08078892
	.align 2, 0
_08078878: .4byte gUnknown_080D5A64
_0807887C: .4byte gSineTable
_08078880:
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r6]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080787F4
	movs r0, #0
_08078892:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80788A4
sub_80788A4: @ 0x080788A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0]
	ldr r0, _080788FC @ =sub_8077F80
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08078900 @ =sub_8078A68
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [sp, #8]
	str r0, [r5, #0x40]
	str r4, [r5, #0x3c]
	cmp r0, #0
	beq _08078904
	add r0, sp, #8
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r5, #0xc]
	adds r0, #0x12
	str r0, [r5, #0x10]
	b _08078908
	.align 2, 0
_080788FC: .4byte sub_8077F80
_08078900: .4byte sub_8078A68
_08078904:
	str r6, [r5, #0xc]
	str r7, [r5, #0x10]
_08078908:
	movs r0, #0
	strb r0, [r5, #9]
	ldr r0, [sp, #0x20]
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8077D40
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078920
sub_8078920: @ 0x08078920
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08078968 @ =sub_8078C90
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0807896C @ =sub_8078C8C
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	str r4, [r0, #8]
	adds r4, #4
	str r4, [r0, #0xc]
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #6]
	strb r2, [r0, #4]
	str r6, [r0, #0x24]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078968: .4byte sub_8078C90
_0807896C: .4byte sub_8078C8C

	thumb_func_start sub_8078970
sub_8078970: @ 0x08078970
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080789E0 @ =sub_8078AC4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080789E4 @ =sub_8078AC0
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strh r2, [r0, #8]
	str r2, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	strb r4, [r0, #4]
	str r6, [r0]
	ldr r1, [r5]
	str r1, [r0, #0x20]
	ldr r1, [r5, #4]
	str r1, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #0xc]
	ldr r1, _080789E8 @ =0xFFFFFC00
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	mov r1, r8
	str r1, [r0, #0x28]
	mov r1, sb
	str r1, [r0, #0x2c]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080789E0: .4byte sub_8078AC4
_080789E4: .4byte sub_8078AC0
_080789E8: .4byte 0xFFFFFC00

	thumb_func_start sub_80789EC
sub_80789EC: @ 0x080789EC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08078A58 @ =sub_8078D34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078A5C @ =sub_8078D30
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r5, [r0]
	str r4, [r0, #0x18]
	adds r4, #4
	str r4, [r0, #0x1c]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #6]
	strb r2, [r0, #4]
	str r6, [r0, #0x64]
	movs r2, #0
	ldr r0, _08078A60 @ =0x03000024
	adds r6, r3, r0
	movs r4, #0
	adds r0, #4
	adds r5, r3, r0
	subs r0, #0x20
	adds r3, r3, r0
_08078A34:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	lsls r0, r2, #1
	adds r0, r3, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08078A34
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078A58: .4byte sub_8078D34
_08078A5C: .4byte sub_8078D30
_08078A60: .4byte 0x03000024

	thumb_func_start sub_8078A64
sub_8078A64: @ 0x08078A64
	bx lr
	.align 2, 0

	thumb_func_start sub_8078A68
sub_8078A68: @ 0x08078A68
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0, #4]
	movs r0, #0
	strb r0, [r1]
	bx lr

	thumb_func_start sub_8078A78
sub_8078A78: @ 0x08078A78
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r4, #0
	mov r6, ip
	adds r6, #0x2c
	ldr r5, [r1, #4]
_08078A84:
	lsls r1, r4, #2
	adds r3, r6, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r0, r5, r0
	cmp r0, #0xb3
	bgt _08078AAE
	mov r2, ip
	adds r2, #0x24
	adds r2, r2, r1
	ldr r0, [r2]
	mov r7, ip
	ldr r1, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r7, #0x38]
	adds r1, #0x20
	str r1, [r7, #0x38]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
_08078AAE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08078A84
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078AC0
sub_8078AC0: @ 0x08078AC0
	bx lr
	.align 2, 0

	thumb_func_start sub_8078AC4
sub_8078AC4: @ 0x08078AC4
	push {r4, r5, lr}
	ldr r5, _08078AF4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8078B74
	adds r0, r4, #0
	bl sub_807813C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08078AEC
	ldr r0, [r5]
	bl TaskDestroy
_08078AEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078AF4: .4byte gCurTask

	thumb_func_start sub_8078AF8
sub_8078AF8: @ 0x08078AF8
	push {r4, lr}
	ldr r4, _08078B1C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_8078BAC
	cmp r0, #1
	bne _08078B14
	ldr r1, [r4]
	ldr r0, _08078B20 @ =sub_8078B24
	str r0, [r1, #8]
_08078B14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08078B1C: .4byte gCurTask
_08078B20: .4byte sub_8078B24

	thumb_func_start sub_8078B24
sub_8078B24: @ 0x08078B24
	push {lr}
	ldr r2, _08078B48 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	cmp r0, #0xb3
	bls _08078B44
	ldr r1, [r1]
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08078B4C @ =sub_8078B50
	str r0, [r1, #8]
_08078B44:
	pop {r0}
	bx r0
	.align 2, 0
_08078B48: .4byte gCurTask
_08078B4C: .4byte sub_8078B50

	thumb_func_start sub_8078B50
sub_8078B50: @ 0x08078B50
	push {lr}
	ldr r2, _08078B70 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08078B70: .4byte gCurTask

	thumb_func_start sub_8078B74
sub_8078B74: @ 0x08078B74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x28]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08078BA4
	movs r5, #0
	cmp r5, r0
	bhs _08078BA4
_08078B86:
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #4]
	cmp r5, r0
	blo _08078B86
_08078BA4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078BAC
sub_8078BAC: @ 0x08078BAC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r2, #0
	ldr r0, [r5, #0x28]
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	ldr r3, _08078C14 @ =gCamera
	ldr r3, [r3, #4]
	adds r0, r0, r3
	str r4, [sp]
	ldr r3, _08078C18 @ =sub_805217C
	str r3, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08078BF2
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #0xff
	strb r0, [r5, #6]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_08078BF2:
	movs r0, #6
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x18]
	subs r1, r1, r0
	str r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	adds r2, r2, r1
	str r2, [r5, #0x10]
	ldr r0, [r5, #0x24]
	adds r0, r0, r2
	str r0, [r5, #0x24]
	cmp r2, #0
	beq _08078C1C
	movs r0, #0
	b _08078C1E
	.align 2, 0
_08078C14: .4byte gCamera
_08078C18: .4byte sub_805217C
_08078C1C:
	movs r0, #1
_08078C1E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8078C28
sub_8078C28: @ 0x08078C28
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8078C3C
sub_8078C3C: @ 0x08078C3C
	push {r4, r5, lr}
	ldr r5, _08078C88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _08078C58
	adds r0, r4, #0
	bl sub_8078504
	strb r0, [r4, #4]
_08078C58:
	adds r0, r4, #0
	bl sub_8078570
	adds r0, r4, #0
	bl sub_8078468
	cmp r0, #1
	bne _08078C82
	ldr r0, [r4]
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #0xc8
	bls _08078C7C
	movs r0, #0
	strb r0, [r1]
_08078C7C:
	ldr r0, [r5]
	bl TaskDestroy
_08078C82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078C88: .4byte gCurTask

	thumb_func_start sub_8078C8C
sub_8078C8C: @ 0x08078C8C
	bx lr
	.align 2, 0

	thumb_func_start sub_8078C90
sub_8078C90: @ 0x08078C90
	push {r4, r5, lr}
	ldr r5, _08078CB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8078650
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08078CB8
	ldr r0, [r5]
	bl TaskDestroy
	b _08078CBE
	.align 2, 0
_08078CB4: .4byte gCurTask
_08078CB8:
	adds r0, r4, #0
	bl sub_8078CC4
_08078CBE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8078CC4
sub_8078CC4: @ 0x08078CC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8078D18
sub_8078D18: @ 0x08078D18
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8078D2C
sub_8078D2C: @ 0x08078D2C
	bx lr
	.align 2, 0

	thumb_func_start sub_8078D30
sub_8078D30: @ 0x08078D30
	bx lr
	.align 2, 0

	thumb_func_start sub_8078D34
sub_8078D34: @ 0x08078D34
	push {r4, r5, lr}
	ldr r5, _08078D68 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8078D6C
	adds r0, r4, #0
	bl sub_80787D8
	cmp r0, #1
	bne _08078D60
	ldr r0, [r4]
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
_08078D60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078D68: .4byte gCurTask

	thumb_func_start sub_8078D6C
sub_8078D6C: @ 0x08078D6C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_08078D72:
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x18]
	lsls r3, r5, #3
	adds r2, r4, #0
	adds r2, #0x24
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08078D72
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8078DB0
sub_8078DB0: @ 0x08078DB0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08078E2C @ =sub_807A514
	movs r2, #0xf0
	lsls r2, r2, #8
	movs r4, #0
	str r4, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	movs r2, #0
	strh r5, [r0, #0x28]
	ldr r3, _08078E30 @ =0x0300002A
	adds r1, r1, r3
	strb r6, [r1]
	str r4, [r0]
	strh r4, [r0, #0x14]
	mov r1, r8
	strh r1, [r0, #0xc]
	mov r3, sb
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0xa
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xc
	str r1, [r0, #8]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078E2C: .4byte sub_807A514
_08078E30: .4byte 0x0300002A

	thumb_func_start sub_8078E34
sub_8078E34: @ 0x08078E34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	ldr r0, _08078E98 @ =sub_807990C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078E9C @ =sub_807A500
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0
	mov r2, sl
	strh r0, [r2]
	ldr r6, _08078EA0 @ =0x030000C4
	adds r0, r1, r6
	str r4, [r0]
	movs r3, #0
	ldr r0, _08078EA4 @ =0x03000004
	adds r5, r1, r0
	ldr r2, _08078EA8 @ =0x0300001C
	adds r6, r1, r2
	adds r0, #0x50
	adds r7, r1, r0
	adds r2, #0x70
	adds r2, r2, r1
	mov r8, r2
_08078E80:
	movs r2, #0
	adds r0, r3, #1
	mov ip, r0
	lsls r4, r3, #3
_08078E88:
	cmp r3, #2
	beq _08078EAC
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r1, r5, r1
	add r0, sb
	ldr r0, [r0]
	b _08078EB8
	.align 2, 0
_08078E98: .4byte sub_807990C
_08078E9C: .4byte sub_807A500
_08078EA0: .4byte 0x030000C4
_08078EA4: .4byte 0x03000004
_08078EA8: .4byte 0x0300001C
_08078EAC:
	lsls r0, r2, #2
	adds r1, r0, #0
	adds r1, #0x10
	adds r1, r5, r1
	add r0, sb
	ldr r0, [r0, #8]
_08078EB8:
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08078E88
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08078E80
	movs r0, #0x58
	bl VramMalloc
	mov r2, sl
	str r0, [r2, #0x1c]
	movs r4, #0
	movs r5, #0
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	adds r1, #0x38
	strh r1, [r6, #0xc]
	movs r1, #4
	strb r1, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r1, #0xff
	strb r1, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	strb r4, [r6, #0x1f]
	mov r2, sb
	ldr r1, [r2]
	strh r1, [r6, #0x10]
	ldr r1, [r2, #4]
	strh r1, [r6, #0x12]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r6, #8]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	mov r1, sl
	str r0, [r1, #0x54]
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	subs r1, #9
	strh r1, [r7, #0xc]
	strb r4, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	movs r1, #9
	strb r1, [r7, #0x1f]
	mov r6, sb
	ldr r1, [r6]
	strh r1, [r7, #0x10]
	ldr r1, [r6, #4]
	strh r1, [r7, #0x12]
	str r2, [r7, #8]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r6, r8
	str r0, [r6]
	strh r1, [r6, #0x14]
	ldr r0, _08078F70 @ =0x00000506
	strh r0, [r6, #0xc]
	strb r4, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	strb r3, [r6, #0x1c]
	strb r4, [r6, #0x1f]
	mov r1, sb
	ldr r0, [r1]
	strh r0, [r6, #0x10]
	ldr r0, [r1, #4]
	strh r0, [r6, #0x12]
	str r2, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078F70: .4byte 0x00000506

	thumb_func_start sub_8078F74
sub_8078F74: @ 0x08078F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x14]
	mov sl, r2
	mov sb, r3
	ldr r0, [sp, #0x40]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #8
	ldr r2, _08079014 @ =0xFFFF0000
	adds r1, r1, r2
	lsrs r7, r1, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	bge _08078F9E
	b _08079180
_08078F9E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	ldr r3, _08079018 @ =gSineTable
	adds r0, r0, r3
	str r0, [sp, #0x1c]
_08078FAC:
	asrs r0, r1, #0xe
	ldr r4, [sp, #0x14]
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r1, _0807901C @ =0x040000D4
	adds r0, r5, #0
	adds r0, #0x10
	str r0, [r1]
	add r0, sp, #8
	str r0, [r1, #4]
	ldr r0, _08079020 @ =0x84000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08079024
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	ldr r3, _08079018 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	ldr r4, [sp, #0x1c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	muls r0, r2, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	str r1, [sp, #0xc]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	muls r0, r3, r0
	asrs r0, r0, #6
	adds r1, r1, r0
	add r0, sp, #0xc
	str r1, [r0, #4]
	b _08079036
	.align 2, 0
_08079014: .4byte 0xFFFF0000
_08079018: .4byte gSineTable
_0807901C: .4byte 0x040000D4
_08079020: .4byte 0x84000001
_08079024:
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	lsls r0, r0, #8
	add r1, sp, #0xc
	str r0, [r1, #4]
_08079036:
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08079058
	mov r3, sb
	movs r4, #2
	ldrsh r0, [r3, r4]
	lsls r2, r7, #0x10
	mov r8, r2
	mov r3, sl
	ldr r4, [r3]
	ldr r6, [r3, #4]
	cmp r0, r1
	beq _080790A0
_08079058:
	mov r4, sb
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0xc]
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r0, [sp, #0x10]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x10]
	movs r3, #0
	lsls r7, r7, #0x10
	mov r8, r7
	mov r7, sl
	ldr r4, [r7]
	ldr r6, [r7, #4]
_0807907E:
	lsls r0, r3, #1
	mov r2, sp
	adds r2, r2, r0
	adds r2, #8
	add r0, sb
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807907E
_080790A0:
	ldr r0, [sp, #0xc]
	adds r0, r4, r0
	str r0, [sp, #0xc]
	add r2, sp, #0xc
	ldr r0, [r2, #4]
	adds r0, r6, r0
	str r0, [r2, #4]
	ldrh r0, [r5, #0xa]
	ldr r1, [sp, #0x18]
	adds r4, r1, r0
	ldr r3, _0807911C @ =0x000003FF
	adds r0, r3, #0
	ands r4, r0
	strh r4, [r5, #0x2c]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080790D4
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	str r4, [sp]
	ldr r7, [sp, #0x44]
	str r7, [sp, #4]
	add r3, sp, #8
	bl sub_8078F74
_080790D4:
	ldr r1, [sp, #0x44]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _08079120 @ =gCamera
	ldr r1, [r2]
	lsls r1, r1, #8
	ldr r0, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r5, #8]
	mov r2, r8
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x44]
	ldrb r3, [r3]
	adds r0, r0, r3
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079128
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r4, r7
	lsls r0, r0, #1
	ldr r1, _08079124 @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r5, #0x10]
	adds r3, r1, #0
	b _0807913E
	.align 2, 0
_0807911C: .4byte 0x000003FF
_08079120: .4byte gCamera
_08079124: .4byte gSineTable
_08079128:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	ldr r3, _08079160 @ =gSineTable
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	asrs r0, r0, #4
	strh r0, [r5, #0x10]
_0807913E:
	lsls r2, r4, #0x10
	mov r1, r8
	asrs r0, r1, #0x10
	ldr r4, [sp, #0x44]
	ldrb r4, [r4]
	adds r0, r0, r4
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08079164
	lsrs r0, r2, #0xf
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	b _08079170
	.align 2, 0
_08079160: .4byte gSineTable
_08079164:
	lsrs r0, r2, #0xf
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	asrs r0, r0, #4
_08079170:
	strh r0, [r5, #0x12]
	ldr r0, _08079190 @ =0xFFFF0000
	add r0, r8
	lsrs r7, r0, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	blt _08079180
	b _08078FAC
_08079180:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079190: .4byte 0xFFFF0000

	thumb_func_start sub_8079194
sub_8079194: @ 0x08079194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r4, r1, #0
	str r3, [sp, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, _080793B4 @ =gUnknown_080D5AE4
	add r0, sp, #0x10
	movs r2, #4
	bl memcpy
	add r1, sp, #0x20
	movs r0, #4
	strh r0, [r1]
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080791D0
	b _08079454
_080791D0:
	asrs r0, r0, #0xe
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r6, [r5, #0xc]
	ldr r7, [r5, #8]
	ldrh r0, [r5, #0x12]
	adds r0, #0x40
	movs r2, #0
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r6, r6, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	adds r7, r7, r0
	asrs r0, r7, #8
	asrs r1, r6, #8
	str r2, [sp]
	ldr r2, _080793B8 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	adds r2, r0, #0
	cmp r2, #0
	bge _0807922A
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0807922A
	lsls r1, r0, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	lsls r0, r1, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #8
	adds r7, r7, r0
_0807922A:
	ldr r0, _080793BC @ =gCamera
	ldr r1, [r0]
	asrs r4, r6, #8
	cmp r1, r4
	ble _0807923C
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _0807924C
_0807923C:
	adds r0, r1, #0
	adds r0, #0xf0
	cmp r0, r4
	bge _08079254
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079254
_0807924C:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x10]
_08079254:
	str r6, [r5, #0xc]
	str r7, [r5, #8]
	ldr r0, _080793C0 @ =gStageData
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xd
	ldr r0, [r0, #0x1c]
	adds r3, r0, r1
	movs r0, #0x1f
	ands r3, r0
	mov sb, r2
	cmp r3, #0
	bne _0807928A
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	movs r3, #0
	bl sub_8079758
_0807928A:
	ldr r1, _080793BC @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	subs r6, r6, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	subs r7, r7, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080792AC
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_8079194
_080792AC:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080792BA
	ldrh r0, [r5, #0x2c]
	mov r2, sp
	strh r0, [r2, #0x20]
_080792BA:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080792C2
	b _08079444
_080792C2:
	ldr r3, [r5, #0x18]
	mov ip, r3
	ldr r1, [r3]
	movs r0, #4
	ands r1, r0
	ldr r3, [r4, #8]
	cmp r1, #0
	beq _080792DE
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080792DE
	b _08079444
_080792DE:
	ldr r2, _080793C4 @ =0xFFFFCFFF
	ands r2, r3
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	mov r8, r1
	mov r1, ip
	ldr r0, [r1]
	ands r0, r3
	lsrs r0, r0, #0x16
	mov r3, r8
	adds r1, r3, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080793C8 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	mov r3, ip
	ldr r0, [r3]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080793E2
	mov r0, sp
	ldrh r0, [r0, #0x20]
	mov r8, r0
	mov r1, sp
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08079350
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080793E2
	ldr r0, _080793CC @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080793E2
_08079350:
	ldr r4, [r5, #0x14]
	ldr r1, [r4, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r3, _080793D0 @ =gUnknown_03002C24
	ldrb r2, [r3]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	add r3, sp, #0x14
	mov r0, r8
	strh r0, [r3]
	add r0, sp, #0x10
	ldrh r0, [r0]
	strh r0, [r3, #2]
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	asrs r0, r6, #8
	strh r0, [r3, #6]
	asrs r0, r7, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080793D8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080793D4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _08079422
	.align 2, 0
_080793B4: .4byte gUnknown_080D5AE4
_080793B8: .4byte sub_805217C
_080793BC: .4byte gCamera
_080793C0: .4byte gStageData
_080793C4: .4byte 0xFFFFCFFF
_080793C8: .4byte 0x003FE000
_080793CC: .4byte gDispCnt
_080793D0: .4byte gUnknown_03002C24
_080793D4: .4byte gEmptyTask
_080793D8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl sub_80BF8F4
	b _08079422
_080793E2:
	ldr r1, [r5, #0x14]
	asrs r0, r6, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	asrs r0, r7, #8
	strh r0, [r1, #0x12]
	ldr r3, [r5, #0x14]
	ldr r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807940C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_0807940C:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079422
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_08079422:
	mov r1, sl
	cmp r1, #0
	beq _08079444
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807943E
	adds r0, r2, #0
	bl sub_80BE46C
	b _08079444
_0807943E:
	adds r0, r2, #0
	bl DisplaySprite
_08079444:
	ldr r0, _08079464 @ =0xFFFF0000
	add r0, sb
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08079454
	b _080791D0
_08079454:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079464: .4byte 0xFFFF0000

	thumb_func_start sub_8079468
sub_8079468: @ 0x08079468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r4, r1, #0
	str r3, [sp, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, _080796A0 @ =gUnknown_080D5AE4
	add r0, sp, #0x10
	movs r2, #4
	bl memcpy
	add r1, sp, #0x20
	movs r0, #4
	strh r0, [r1]
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080794A4
	b _08079744
_080794A4:
	asrs r0, r0, #0xe
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r6, [r5, #0xc]
	ldr r7, [r5, #8]
	ldrh r2, [r5, #0x12]
	adds r1, r2, #0
	adds r1, #0x40
	movs r3, #0
	strh r1, [r5, #0x12]
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	adds r6, r6, r0
	movs r4, #0x12
	ldrsh r0, [r5, r4]
	adds r7, r7, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080796A4 @ =0xFFFFFC00
	cmp r1, r0
	bge _080794D8
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r2, r1
	strh r0, [r5, #0x12]
_080794D8:
	asrs r0, r7, #8
	asrs r1, r6, #8
	str r3, [sp]
	ldr r2, _080796A8 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	adds r2, r0, #0
	cmp r2, #0
	bge _08079512
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079512
	lsls r1, r0, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	lsls r0, r1, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #8
	adds r7, r7, r0
_08079512:
	ldr r0, _080796AC @ =gCamera
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x10
	asrs r4, r6, #8
	cmp r0, r4
	ble _08079528
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _08079538
_08079528:
	adds r0, r1, #0
	adds r0, #0xe0
	cmp r0, r4
	bge _08079540
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079540
_08079538:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x10]
_08079540:
	str r6, [r5, #0xc]
	str r7, [r5, #8]
	ldr r0, _080796B0 @ =gStageData
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xd
	ldr r0, [r0, #0x1c]
	adds r3, r0, r1
	movs r0, #0x1f
	ands r3, r0
	mov sb, r2
	cmp r3, #0
	bne _08079576
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	movs r0, #6
	movs r3, #0
	bl sub_8079758
_08079576:
	ldr r1, _080796AC @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	subs r6, r6, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	subs r7, r7, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08079598
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_8079194
_08079598:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080795A6
	ldrh r0, [r5, #0x2c]
	mov r2, sp
	strh r0, [r2, #0x20]
_080795A6:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080795AE
	b _08079734
_080795AE:
	ldr r3, [r5, #0x18]
	mov ip, r3
	ldr r1, [r3]
	movs r0, #4
	ands r1, r0
	ldr r3, [r4, #8]
	cmp r1, #0
	beq _080795CA
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080795CA
	b _08079734
_080795CA:
	ldr r2, _080796B4 @ =0xFFFFCFFF
	ands r2, r3
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	mov r8, r1
	mov r1, ip
	ldr r0, [r1]
	ands r0, r3
	lsrs r0, r0, #0x16
	mov r3, r8
	adds r1, r3, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080796B8 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	mov r3, ip
	ldr r0, [r3]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080796D2
	mov r4, sp
	ldrh r4, [r4, #0x20]
	mov r8, r4
	mov r1, sp
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0807963C
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080796D2
	ldr r0, _080796BC @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080796D2
_0807963C:
	ldr r4, [r5, #0x14]
	ldr r1, [r4, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r3, _080796C0 @ =gUnknown_03002C24
	ldrb r2, [r3]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	add r3, sp, #0x14
	mov r4, r8
	strh r4, [r3]
	add r0, sp, #0x10
	ldrh r0, [r0]
	strh r0, [r3, #2]
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	asrs r0, r6, #8
	strh r0, [r3, #6]
	asrs r0, r7, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080796C8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080796C4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _08079712
	.align 2, 0
_080796A0: .4byte gUnknown_080D5AE4
_080796A4: .4byte 0xFFFFFC00
_080796A8: .4byte sub_805217C
_080796AC: .4byte gCamera
_080796B0: .4byte gStageData
_080796B4: .4byte 0xFFFFCFFF
_080796B8: .4byte 0x003FE000
_080796BC: .4byte gDispCnt
_080796C0: .4byte gUnknown_03002C24
_080796C4: .4byte gEmptyTask
_080796C8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl sub_80BF8F4
	b _08079712
_080796D2:
	ldr r1, [r5, #0x14]
	asrs r0, r6, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	asrs r0, r7, #8
	strh r0, [r1, #0x12]
	ldr r3, [r5, #0x14]
	ldr r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080796FC
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_080796FC:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079712
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_08079712:
	mov r0, sl
	cmp r0, #0
	beq _08079734
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807972E
	adds r0, r2, #0
	bl sub_80BE46C
	b _08079734
_0807972E:
	adds r0, r2, #0
	bl DisplaySprite
_08079734:
	ldr r0, _08079754 @ =0xFFFF0000
	add r0, sb
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08079744
	b _080794A4
_08079744:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079754: .4byte 0xFFFF0000

	thumb_func_start sub_8079758
sub_8079758: @ 0x08079758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r6, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r3, [sp, #0x38]
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0807980C @ =sub_807989C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08079810 @ =sub_807A4E4
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _08079814 @ =0x03000010
	adds r7, r1, r2
	strb r5, [r0, #0xe]
	ldr r2, _08079818 @ =gSineTable
	ldr r1, _0807981C @ =0x000003FF
	ands r1, r6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, sb
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	mov r0, r8
	strh r0, [r3, #0xc]
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq _08079824
	movs r0, #0
	strb r0, [r3, #0xf]
	ldr r1, _08079820 @ =gUnknown_080D5A6C
	mov r3, sl
	lsls r2, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [sp, #0x3c]
	adds r0, r5, r0
	adds r4, r2, #0
	b _0807983E
	.align 2, 0
_0807980C: .4byte sub_807989C
_08079810: .4byte sub_807A4E4
_08079814: .4byte 0x03000010
_08079818: .4byte gSineTable
_0807981C: .4byte 0x000003FF
_08079820: .4byte gUnknown_080D5A6C
_08079824:
	movs r0, #1
	mov r1, sb
	strb r0, [r1, #0xf]
	ldr r1, _08079898 @ =gUnknown_080D5A6C
	mov r2, sl
	lsls r4, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramMalloc
_0807983E:
	str r0, [r7]
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r1, _08079898 @ =gUnknown_080D5A6C
	mov r5, sl
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r7, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	mov r2, sb
	str r0, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	str r0, [r2, #4]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08079898: .4byte gUnknown_080D5A6C

	thumb_func_start sub_807989C
sub_807989C: @ 0x0807989C
	push {r4, lr}
	ldr r0, _080798BC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	bne _080798C0
	adds r0, r2, #0
	bl TaskDestroy
	b _08079900
	.align 2, 0
_080798BC: .4byte gCurTask
_080798C0:
	subs r0, #1
	strb r0, [r3, #0xe]
	ldrh r0, [r3, #0xc]
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0xa]
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _08079908 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08079900:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08079908: .4byte gCamera

	thumb_func_start sub_807990C
sub_807990C: @ 0x0807990C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079980 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #4
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079984 @ =gCamera
	ldr r0, _08079988 @ =0x03000008
	adds r7, r1, r0
_0807992E:
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	mov r1, ip
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r2, r7, r2
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0807992E
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x96
	bhi _08079968
	b _08079A84
_08079968:
	movs r0, #0
	strh r0, [r6]
	ldr r0, _0807998C @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	bls _08079976
	b _08079A7C
_08079976:
	lsls r0, r0, #2
	ldr r1, _08079990 @ =_08079994
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08079980: .4byte gCurTask
_08079984: .4byte gCamera
_08079988: .4byte 0x03000008
_0807998C: .4byte gStageData
_08079990: .4byte _08079994
_08079994: @ jump table
	.4byte _08079A7C @ case 0
	.4byte _080799B8 @ case 1
	.4byte _08079A7C @ case 2
	.4byte _080799D8 @ case 3
	.4byte _08079A40 @ case 4
	.4byte _08079A04 @ case 5
	.4byte _08079A7C @ case 6
	.4byte _08079A7C @ case 7
	.4byte _08079A7C @ case 8
_080799B8:
	adds r4, r6, #0
	adds r4, #0x8c
	movs r1, #0
	ldr r0, _080799D0 @ =0x0000050A
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080799D4 @ =sub_8079C60
	b _08079A82
	.align 2, 0
_080799D0: .4byte 0x0000050A
_080799D4: .4byte sub_8079C60
_080799D8:
	adds r4, r6, #0
	adds r4, #0x8c
	movs r1, #0
	ldr r0, _080799FC @ =0x00000517
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079A00 @ =sub_8079B8C
	b _08079A82
	.align 2, 0
_080799FC: .4byte 0x00000517
_08079A00: .4byte sub_8079B8C
_08079A04:
	adds r4, r6, #0
	adds r4, #0x1c
	movs r2, #0
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	adds r0, #0x40
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079A38 @ =0x0000050A
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079A3C @ =sub_8079D40
	b _08079A82
	.align 2, 0
_08079A38: .4byte 0x0000050A
_08079A3C: .4byte sub_8079D40
_08079A40:
	adds r4, r6, #0
	adds r4, #0x1c
	movs r2, #0
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	adds r0, #0x40
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079A74 @ =0x0000050A
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079A78 @ =sub_8079DFC
	b _08079A82
	.align 2, 0
_08079A74: .4byte 0x0000050A
_08079A78: .4byte sub_8079DFC
_08079A7C:
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079AB0 @ =sub_8079AB4
_08079A82:
	str r0, [r1, #8]
_08079A84:
	movs r5, #0
_08079A86:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079A86
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079AB0: .4byte sub_8079AB4

	thumb_func_start sub_8079AB4
sub_8079AB4: @ 0x08079AB4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08079B7C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov ip, r2
	ldr r7, _08079B80 @ =gCamera
_08079AC8:
	adds r3, r6, #0
	adds r3, #8
	cmp r5, #2
	beq _08079ADA
	lsls r1, r5, #3
	adds r1, r3, r1
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
_08079ADA:
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r6, #4
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079AC8
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x32
	bls _08079B52
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079B84 @ =0x0000050A
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _08079B88 @ =sub_8079EDC
	str r0, [r1, #8]
_08079B52:
	movs r5, #0
_08079B54:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079B54
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079B7C: .4byte gCurTask
_08079B80: .4byte gCamera
_08079B84: .4byte 0x0000050A
_08079B88: .4byte sub_8079EDC

	thumb_func_start sub_8079B8C
sub_8079B8C: @ 0x08079B8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079C4C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079C50 @ =gCamera
	ldr r0, _08079C54 @ =0x03000004
	adds r7, r1, r0
_08079BAE:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079BAE
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8c
	bls _08079C20
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	ldr r1, _08079C58 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079C5C @ =sub_8079EDC
	str r0, [r1, #8]
_08079C20:
	movs r5, #0
_08079C22:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079C22
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079C4C: .4byte gCurTask
_08079C50: .4byte gCamera
_08079C54: .4byte 0x03000004
_08079C58: .4byte 0xFFFFFBFF
_08079C5C: .4byte sub_8079EDC

	thumb_func_start sub_8079C60
sub_8079C60: @ 0x08079C60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079D2C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079D30 @ =gCamera
	ldr r0, _08079D34 @ =0x03000004
	adds r7, r1, r0
_08079C82:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079C82
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x64
	bls _08079D00
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079D38 @ =0x0000050A
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079D3C @ =sub_8079EDC
	str r0, [r1, #8]
_08079D00:
	movs r5, #0
_08079D02:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079D02
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079D2C: .4byte gCurTask
_08079D30: .4byte gCamera
_08079D34: .4byte 0x03000004
_08079D38: .4byte 0x0000050A
_08079D3C: .4byte sub_8079EDC

	thumb_func_start sub_8079D40
sub_8079D40: @ 0x08079D40
	push {r4, r5, r6, r7, lr}
	ldr r0, _08079DB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079DB8 @ =gCamera
	ldr r0, _08079DBC @ =0x03000004
	adds r7, r1, r0
_08079D5C:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079D5C
	ldrh r0, [r6]
	adds r2, r0, #1
	strh r2, [r6]
	lsls r1, r2, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08079DC0
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _08079DAA
	bl _call_via_r0
_08079DAA:
	ldr r0, _08079DB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079DF0
	.align 2, 0
_08079DB4: .4byte gCurTask
_08079DB8: .4byte gCamera
_08079DBC: .4byte 0x03000004
_08079DC0:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa0
	bne _08079DCE
	ldr r0, _08079DF8 @ =0x0000027E
	bl sub_80BA57C
_08079DCE:
	movs r5, #0
_08079DD0:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079DD0
_08079DF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079DF8: .4byte 0x0000027E

	thumb_func_start sub_8079DFC
sub_8079DFC: @ 0x08079DFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079EC8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079ECC @ =gCamera
	ldr r0, _08079ED0 @ =0x03000004
	adds r7, r1, r0
_08079E1E:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079E1E
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08079E9C
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079ED4 @ =0x0000050A
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079ED8 @ =sub_8079EDC
	str r0, [r1, #8]
_08079E9C:
	movs r5, #0
_08079E9E:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079E9E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079EC8: .4byte gCurTask
_08079ECC: .4byte gCamera
_08079ED0: .4byte 0x03000004
_08079ED4: .4byte 0x0000050A
_08079ED8: .4byte sub_8079EDC

	thumb_func_start sub_8079EDC
sub_8079EDC: @ 0x08079EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #1
	mov r8, r0
	ldr r0, _08079F5C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldrh r0, [r6]
	cmp r0, #0
	bne _08079F08
	ldr r0, _08079F60 @ =0x0000027E
	bl sub_80BA57C
	mov r1, r8
	strh r1, [r6]
_08079F08:
	movs r5, #0
	ldr r2, _08079F64 @ =0x03000004
	adds r2, r4, r2
	str r2, [sp]
	ldr r0, _08079F68 @ =gCamera
	mov sb, r0
	ldr r1, _08079F6C @ =0x03000008
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08079F70 @ =gStageData
	mov ip, r2
	mov r7, sb
_08079F20:
	lsls r2, r5, #3
	ldr r1, [sp]
	adds r0, r1, r2
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	ldr r0, [r7]
	subs r3, r1, r0
	strh r3, [r4, #0x10]
	add r2, sl
	ldr r0, [r2]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r2, ip
	ldrb r0, [r2, #9]
	cmp r0, #1
	bne _08079F78
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08079F74 @ =0x0000013F
	cmp r0, r1
	bgt _08079F96
	movs r2, #0
	mov r8, r2
	b _08079F96
	.align 2, 0
_08079F5C: .4byte gCurTask
_08079F60: .4byte 0x0000027E
_08079F64: .4byte 0x03000004
_08079F68: .4byte gCamera
_08079F6C: .4byte 0x03000008
_08079F70: .4byte gStageData
_08079F74: .4byte 0x0000013F
_08079F78:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	mov r2, sb
	ldr r0, [r2]
	adds r1, r1, r0
	mov r2, ip
	ldrb r0, [r2, #9]
	lsls r0, r0, #1
	ldr r2, _08079FC0 @ =gUnknown_080D5AE8
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	bge _08079F96
	movs r0, #0
	mov r8, r0
_08079F96:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079F20
	mov r1, r8
	cmp r1, #0
	beq _08079FC8
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _08079FB4
	bl _call_via_r0
_08079FB4:
	ldr r0, _08079FC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079FEA
	.align 2, 0
_08079FC0: .4byte gUnknown_080D5AE8
_08079FC4: .4byte gCurTask
_08079FC8:
	movs r5, #0
_08079FCA:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079FCA
_08079FEA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8079FFC
sub_8079FFC: @ 0x08079FFC
	push {r4, lr}
	ldr r2, _0807A060 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0807A06C
	movs r0, #0xb7
	adds r0, r0, r2
	mov ip, r0
	ldrb r3, [r0]
	cmp r3, #0
	bne _0807A054
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0807A064 @ =gPlayers
	adds r4, r0, r1
	adds r0, r2, #0
	adds r0, #0xb6
	strb r3, [r0]
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	ldr r1, _0807A068 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #4
	ldrsh r1, [r1, r2]
	bl sub_8027620
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A054
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl Player_8005380
_0807A054:
	ldr r0, _0807A060 @ =gStageData
	adds r0, #0xb6
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0807A06E
	.align 2, 0
_0807A060: .4byte gStageData
_0807A064: .4byte gPlayers
_0807A068: .4byte gCamera
_0807A06C:
	movs r0, #0
_0807A06E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_807A074
sub_807A074: @ 0x0807A074
	push {r4, r5, lr}
	movs r5, #0
	ldr r2, _0807A08C @ =gStageData
	ldrb r0, [r2, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0807A090
	movs r0, #0
	b _0807A0E0
	.align 2, 0
_0807A08C: .4byte gStageData
_0807A090:
	ldrb r1, [r2, #6]
	cmp r1, #0
	bne _0807A0C4
	adds r4, r2, #0
	adds r4, #0xb6
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807A0AE
	cmp r0, #1
	beq _0807A0B8
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	b _0807A0DE
_0807A0AE:
	bl sub_8027658
	movs r0, #2
	strb r0, [r4]
	b _0807A0DE
_0807A0B8:
	movs r5, #1
	strb r1, [r4]
	adds r0, r2, #0
	adds r0, #0xb7
	strb r1, [r0]
	b _0807A0DE
_0807A0C4:
	adds r3, r2, #0
	adds r3, #0xb6
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807A0DE
	movs r5, #1
	movs r1, #0
	strb r1, [r3]
	adds r0, r2, #0
	adds r0, #0xb7
	strb r1, [r0]
	bl sub_8027658
_0807A0DE:
	adds r0, r5, #0
_0807A0E0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807A0E8
sub_0807A0E8: @ 0x0807A0E8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _0807A104 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	bhi _0807A1D8
	lsls r0, r0, #2
	ldr r1, _0807A108 @ =_0807A10C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807A104: .4byte gStageData
_0807A108: .4byte _0807A10C
_0807A10C: @ jump table
	.4byte _0807A130 @ case 0
	.4byte _0807A146 @ case 1
	.4byte _0807A15C @ case 2
	.4byte _0807A168 @ case 3
	.4byte _0807A17E @ case 4
	.4byte _0807A18A @ case 5
	.4byte _0807A1A0 @ case 6
	.4byte _0807A1AC @ case 7
	.4byte _0807A1CE @ case 8
_0807A130:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_0806A69C
	b _0807A1D8
_0807A146:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_0806CDB8
	b _0807A1D8
_0807A15C:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_0806DAD4
	b _0807A1D8
_0807A168:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08071594
	b _0807A1D8
_0807A17E:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_80732CC
	b _0807A1D8
_0807A18A:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08074BA0
	b _0807A1D8
_0807A1A0:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_80769C4
	b _0807A1D8
_0807A1AC:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807A1C2
_0807A1B6:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08067EA0
	b _0807A1D8
_0807A1C2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_0807F4F0
	b _0807A1D8
_0807A1CE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08085588
_0807A1D8:
	pop {r0}
	bx r0

	thumb_func_start sub_807A1DC
sub_807A1DC: @ 0x0807A1DC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r0, #0
	mov ip, r0
	ldr r0, _0807A29C @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r1, _0807A2A0 @ =0x03000020
	adds r6, r4, r1
	ldr r0, [r3, #0x20]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0807A294
	ldr r0, [r6, #0x28]
	cmp r0, r1
	beq _0807A294
	movs r5, #0x10
	ldrsh r1, [r3, r5]
	adds r0, r3, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r2, r1, r5
	movs r7, #0x10
	ldrsh r1, [r6, r7]
	ldr r7, _0807A2A4 @ =0x0300004C
	adds r0, r4, r7
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	cmp r2, r1
	bgt _0807A236
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0807A248
	cmp r2, r1
	blt _0807A294
_0807A236:
	ldr r5, _0807A2A8 @ =0x0300004E
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0807A294
_0807A248:
	movs r7, #0x12
	ldrsh r0, [r3, r7]
	adds r1, r3, #0
	adds r1, #0x25
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	movs r1, #0x12
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0807A27E
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0807A290
	cmp r2, r1
	blt _0807A294
_0807A27E:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0807A294
_0807A290:
	movs r5, #1
	mov ip, r5
_0807A294:
	mov r0, ip
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807A29C: .4byte gStageData
_0807A2A0: .4byte 0x03000020
_0807A2A4: .4byte 0x0300004C
_0807A2A8: .4byte 0x0300004E

	thumb_func_start sub_807A2AC
sub_807A2AC: @ 0x0807A2AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0807A358 @ =gUnknown_080D5AF6
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r0, _0807A35C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807A370
	ldr r5, _0807A360 @ =gPlayers
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807A370
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	bne _0807A370
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807A330
	ldr r6, _0807A364 @ =gCamera
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r6]
	adds r3, r0, r1
	ldr r0, [r4, #0x10]
	asrs r2, r0, #8
	cmp r3, r2
	bgt _0807A330
	mov r0, sp
	movs r7, #4
	ldrsh r0, [r0, r7]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _0807A330
	mov r0, sp
	movs r2, #2
	ldrsh r1, [r0, r2]
	ldr r0, [r6, #4]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r2, r0, #8
	cmp r3, r2
	bgt _0807A330
	mov r0, sp
	movs r6, #6
	ldrsh r0, [r0, r6]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0807A370
_0807A330:
	ldr r0, _0807A368 @ =0xFFFFFEFF
	mov r7, ip
	ands r0, r7
	str r0, [r4, #4]
	ldr r1, _0807A36C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x27
	strb r1, [r0]
	movs r0, #1
	b _0807A372
	.align 2, 0
_0807A358: .4byte gUnknown_080D5AF6
_0807A35C: .4byte gStageData
_0807A360: .4byte gPlayers
_0807A364: .4byte gCamera
_0807A368: .4byte 0xFFFFFEFF
_0807A36C: .4byte Player_8005380
_0807A370:
	movs r0, #0
_0807A372:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807A37C
sub_807A37C: @ 0x0807A37C
	push {r4, lr}
	ldr r1, _0807A3A0 @ =gCamera
	ldr r0, [r1, #0x1c]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x1c]
	movs r3, #0
	ldr r4, _0807A3A4 @ =gPlayers
_0807A38E:
	cmp r3, #0
	beq _0807A3A8
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0807A3AC
	.align 2, 0
_0807A3A0: .4byte gCamera
_0807A3A4: .4byte gPlayers
_0807A3A8:
	ldr r0, _0807A3D0 @ =gStageData
	ldrb r1, [r0, #6]
_0807A3AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r4
	ldr r0, [r2, #4]
	ldr r1, _0807A3D4 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807A38E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807A3D0: .4byte gStageData
_0807A3D4: .4byte 0xF7FFFFFF

	thumb_func_start sub_807A3D8
sub_807A3D8: @ 0x0807A3D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	ldr r6, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r3, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807A400
	movs r0, #0
	b _0807A45A
_0807A400:
	movs r4, #0
	cmp r3, r8
	bhs _0807A458
	mov r0, sb
	ldr r1, [r0]
_0807A40A:
	ldr r2, [r1, #0x14]
	ldrh r0, [r2, #0xc]
	cmp r0, r7
	bne _0807A424
	ldrb r0, [r2, #0x1a]
	cmp r0, r5
	bne _0807A424
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807A442
_0807A424:
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0807A444
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r1, #2]
	str r6, [sp]
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_807A3D8
	adds r3, r0, #0
	cmp r3, #0
	beq _0807A444
	b _0807A45A
_0807A442:
	adds r3, r1, #0
_0807A444:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r8
	bhs _0807A458
	lsls r0, r4, #2
	add r0, sb
	ldr r1, [r0]
	cmp r3, #0
	beq _0807A40A
_0807A458:
	adds r0, r3, #0
_0807A45A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_807A468
sub_807A468: @ 0x0807A468
	push {lr}
	ldr r2, _0807A48C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0807A490 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807A494 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A498
	movs r0, #0x9f
	lsls r0, r0, #2
	bl sub_80BA57C
	b _0807A49E
	.align 2, 0
_0807A48C: .4byte gUnknown_03006868
_0807A490: .4byte 0x00196225
_0807A494: .4byte 0x3C6EF35F
_0807A498:
	ldr r0, _0807A4A4 @ =0x0000027D
	bl sub_80BA57C
_0807A49E:
	pop {r0}
	bx r0
	.align 2, 0
_0807A4A4: .4byte 0x0000027D

	thumb_func_start sub_807A4A8
sub_807A4A8: @ 0x0807A4A8
	ldr r0, _0807A4B8 @ =gStageData
	adds r2, r0, #0
	adds r2, #0xb6
	movs r1, #0
	strb r1, [r2]
	adds r0, #0xb7
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807A4B8: .4byte gStageData

	thumb_func_start sub_807A4BC
sub_807A4BC: @ 0x0807A4BC
	push {lr}
	ldr r1, _0807A4DC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0807A4D8
	ldrb r0, [r1, #9]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0807A4E0 @ =gUnknown_03006868
	str r1, [r0]
_0807A4D8:
	pop {r0}
	bx r0
	.align 2, 0
_0807A4DC: .4byte gStageData
_0807A4E0: .4byte gUnknown_03006868

	thumb_func_start sub_807A4E4
sub_807A4E4: @ 0x0807A4E4
	push {lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _0807A4FA
	ldr r0, [r1, #0x10]
	bl VramFree
_0807A4FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807A500
sub_807A500: @ 0x0807A500
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_807A514
sub_807A514: @ 0x0807A514
	push {lr}
	ldr r0, _0807A538 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrh r0, [r1, #0x28]
	subs r0, #1
	strh r0, [r1, #0x28]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807A53C
	adds r0, r3, #0
	bl TaskDestroy
	b _0807A56C
	.align 2, 0
_0807A538: .4byte gCurTask
_0807A53C:
	ldr r3, _0807A554 @ =0x0300002A
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807A55C
	adds r0, r1, #0
	bl sub_80BE09C
	ldr r0, _0807A558 @ =gFlags
	ldr r1, [r0]
	movs r2, #1
	b _0807A568
	.align 2, 0
_0807A554: .4byte 0x0300002A
_0807A558: .4byte gFlags
_0807A55C:
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r0, _0807A570 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
_0807A568:
	orrs r1, r2
	str r1, [r0]
_0807A56C:
	pop {r0}
	bx r0
	.align 2, 0
_0807A570: .4byte gFlags

	thumb_func_start sub_807A574
sub_807A574: @ 0x0807A574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	adds r5, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0807A6A4 @ =sub_807A784
	movs r1, #0x86
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r0, #0x60
	adds r0, r0, r7
	mov ip, r0
	ldr r1, _0807A6A8 @ =gUnknown_080D5B00
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r1, _0807A6AC @ =0x03000024
	adds r1, r7, r1
	str r1, [sp, #4]
	strb r4, [r1]
	ldr r2, _0807A6B0 @ =0x03000025
	adds r0, r7, r2
	strb r5, [r0]
	ldr r3, _0807A6B4 @ =0x03000026
	adds r0, r7, r3
	mov r1, sl
	strb r1, [r0]
	mov r3, r8
	ldr r2, [r3, #8]
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r1, r2, r1
	cmp r0, #0
	beq _0807A5F0
	ldr r0, _0807A6B8 @ =0xFFFFFC00
	adds r1, r2, r0
_0807A5F0:
	str r1, [r6, #4]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r2, _0807A6BC @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r6, #8]
	mov r3, r8
	adds r3, #0x20
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, #0x20
	strh r0, [r6, #0x14]
	mov r0, sb
	strh r0, [r6, #0x16]
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1a]
	mov r0, sl
	adds r0, #0x24
	add r0, r8
	str r0, [r6, #0x1c]
	mov r0, r8
	adds r0, #0x31
	str r0, [r6, #0x20]
	ldr r0, _0807A6C0 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _0807A6C4 @ =gPlayers
	adds r0, r0, r2
	str r0, [r6, #0x2c]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r6, #0x30]
	mov r1, r8
	ldr r0, [r1, #0x44]
	lsrs r0, r0, #0xa
	movs r1, #1
	ands r0, r1
	ldr r2, _0807A6C8 @ =0x03000027
	adds r1, r7, r2
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r3, _0807A6CC @ =0x03000028
	adds r0, r7, r3
	strb r1, [r0]
	mov r0, r8
	str r0, [r6, #0x34]
	mov r2, sb
	mov r1, ip
	strh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	mov r3, r8
	ldr r1, [r3, #4]
	adds r0, r6, #0
	bl sub_807A6D4
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	cmp r0, #8
	beq _0807A694
	ldr r0, _0807A6D0 @ =0x0000020F
	bl sub_80BA57C
_0807A694:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A6A4: .4byte sub_807A784
_0807A6A8: .4byte gUnknown_080D5B00
_0807A6AC: .4byte 0x03000024
_0807A6B0: .4byte 0x03000025
_0807A6B4: .4byte 0x03000026
_0807A6B8: .4byte 0xFFFFFC00
_0807A6BC: .4byte 0xFFFFF800
_0807A6C0: .4byte gStageData
_0807A6C4: .4byte gPlayers
_0807A6C8: .4byte 0x03000027
_0807A6CC: .4byte 0x03000028
_0807A6D0: .4byte 0x0000020F

	thumb_func_start sub_807A6D4
sub_807A6D4: @ 0x0807A6D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r3, r7, #0
	adds r3, #0x38
	str r6, [r7, #0x38]
	movs r2, #0
	movs r1, #0
	ldr r0, _0807A77C @ =0x00000512
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	subs r0, #0x92
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	movs r4, #0
	movs r0, #0
	mov sb, r0
	movs r5, #0
	ldr r0, _0807A780 @ =0x000004F9
	mov r8, r0
_0807A724:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x6c
	adds r3, r7, r0
	str r6, [r3]
	mov r0, r8
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r0, sb
	strb r0, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	strh r5, [r3, #0x10]
	strh r5, [r3, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0807A724
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A77C: .4byte 0x00000512
_0807A780: .4byte 0x000004F9

	thumb_func_start sub_807A784
sub_807A784: @ 0x0807A784
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r2, _0807A7C0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x38
	adds r0, r0, r1
	mov r8, r0
	movs r7, #0
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _0807A7C4
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0807A7C4
	ldr r0, [r6, #0x1c]
	strb r7, [r0]
	ldr r0, [r2]
	bl TaskDestroy
	b _0807A83E
	.align 2, 0
_0807A7C0: .4byte gCurTask
_0807A7C4:
	ldr r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	orrs r7, r0
	ldr r5, [r6, #4]
	lsls r5, r5, #8
	ldr r4, [r6, #8]
	lsls r4, r4, #8
	asrs r5, r5, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r6, #0x2c]
	str r0, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020CE0
	orrs r7, r0
	ldr r0, [r6, #0x30]
	str r0, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020CE0
	orrs r7, r0
	adds r0, r6, #0
	movs r1, #1
	bl sub_807B664
	orrs r7, r0
	cmp r7, #0
	beq _0807A830
	movs r0, #0
	strh r0, [r6, #0x1a]
	ldr r0, _0807A828 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807A82C @ =sub_807B5E4
	str r0, [r1, #8]
	adds r0, r6, #0
	bl sub_807A8B4
	movs r0, #0x90
	bl sub_80BA57C
	b _0807A83E
	.align 2, 0
_0807A828: .4byte gCurTask
_0807A82C: .4byte sub_807B5E4
_0807A830:
	ldr r0, [r6, #4]
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl sub_807A84C
_0807A83E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807A84C
sub_807A84C: @ 0x0807A84C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x38
	adds r6, r2, #0
	adds r6, #0x60
	ldr r5, [r2, #4]
	asrs r5, r5, #8
	ldr r1, _0807A8AC @ =gCamera
	ldr r0, [r1]
	subs r5, r5, r0
	strh r5, [r4, #0x10]
	ldr r0, [r2, #8]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r2, [r4, #8]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r2, r0
	ldr r3, _0807A8B0 @ =gUnknown_03002C24
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #8]
	strh r5, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807A8AC: .4byte gCamera
_0807A8B0: .4byte gUnknown_03002C24

	thumb_func_start sub_807A8B4
sub_807A8B4: @ 0x0807A8B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	ldrh r3, [r0, #0x1a]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	add r1, sp, #4
	ldr r0, _0807A96C @ =gUnknown_080D5B78
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	cmp r5, #3
	bls _0807A8E0
	movs r5, #3
_0807A8E0:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	ldr r2, _0807A970 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r6, r8
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0807A95C
	cmp r4, #0xc
	bgt _0807A95C
	lsls r1, r5, #2
	adds r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x6c
	adds r6, r6, r0
	mov r2, r8
	adds r2, #0x60
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldr r4, [r0]
	ldr r3, _0807A974 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r4, r1
	asrs r1, r1, #0x16
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r0, #0
	muls r1, r4, r1
	asrs r1, r1, #0x16
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r6, #0x12]
_0807A95C:
	mov r6, r8
	movs r7, #0x1a
	ldrsh r0, [r6, r7]
	cmp r0, #0x14
	bgt _0807A978
	movs r0, #0
	b _0807A986
	.align 2, 0
_0807A96C: .4byte gUnknown_080D5B78
_0807A970: .4byte gCamera
_0807A974: .4byte gSineTable
_0807A978:
	mov r1, r8
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	asrs r0, r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0807A986:
	adds r7, r0, #0
	adds r5, #1
	mov sb, r5
	cmp r7, sb
	bge _0807A9EE
	ldr r6, _0807AA00 @ =gCamera
	mov sl, r6
_0807A994:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #0x6c
	mov r1, r8
	adds r6, r1, r0
	mov r2, sl
	ldr r0, [r2]
	ldrh r5, [r6, #0x10]
	adds r5, r5, r0
	ldr r0, [r2, #4]
	ldrh r4, [r6, #0x12]
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r1, #0x2c]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020CE0
	mov r1, r8
	ldr r0, [r1, #0x30]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, sb
	blt _0807A994
_0807A9EE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807AA00: .4byte gCamera

	thumb_func_start sub_807AA04
sub_807AA04: @ 0x0807AA04
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AA74 @ =gUnknown_080D5B00
	adds r4, r0, r1
	adds r0, r3, #0
	adds r0, #0x60
	movs r5, #0
	strh r5, [r0]
	ldr r1, _0807AA78 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	movs r6, #0
	ldrsh r2, [r0, r6]
	movs r6, #0x14
	ldrsh r0, [r3, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	ldrh r2, [r3, #0x16]
	adds r0, r0, r2
	strh r0, [r3, #0x16]
	movs r6, #0xc0
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0x14
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r6, [r3, #0x18]
	adds r0, r0, r6
	strh r0, [r3, #0x18]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	ldr r1, [r3, #8]
	adds r1, r1, r0
	str r1, [r3, #8]
	ldr r0, _0807AA7C @ =gCamera
	ldr r0, [r0, #0x10]
	lsls r0, r0, #8
	cmp r1, r0
	bge _0807AA6A
	strh r5, [r3, #0x18]
	ldr r0, [r4, #4]
	str r0, [r3]
_0807AA6A:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807AA74: .4byte gUnknown_080D5B00
_0807AA78: .4byte gSineTable
_0807AA7C: .4byte gCamera

	thumb_func_start sub_807AA80
sub_807AA80: @ 0x0807AA80
	push {r4, r5, lr}
	sub sp, #0x28
	mov ip, r0
	mov r1, sp
	ldr r0, _0807AB00 @ =gUnknown_080D5B88
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r0, ip
	adds r0, #0x60
	movs r3, #0x80
	lsls r3, r3, #2
	strh r3, [r0]
	subs r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #2
	mov r4, sp
	adds r2, r4, r0
	ldr r0, _0807AB04 @ =gCamera
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	mov r5, ip
	str r0, [r5, #4]
	ldr r1, _0807AB08 @ =gSineTable
	lsls r0, r3, #1
	adds r0, r1, r0
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0x14
	ldrsh r0, [r5, r4]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	ldrh r5, [r5, #0x16]
	adds r0, r0, r5
	mov r2, ip
	strh r0, [r2, #0x16]
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r4, #0x14
	ldrsh r0, [r2, r4]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r5, [r2, #0x18]
	adds r0, r0, r5
	strh r0, [r2, #0x18]
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r0, #0
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807AB00: .4byte gUnknown_080D5B88
_0807AB04: .4byte gCamera
_0807AB08: .4byte gSineTable

	thumb_func_start sub_807AB0C
sub_807AB0C: @ 0x0807AB0C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r2, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AB7C @ =gUnknown_080D5B00
	adds r4, r0, r1
	mov r1, sp
	ldr r0, _0807AB80 @ =gUnknown_080D5BB0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldrh r0, [r2, #0x18]
	subs r0, #0x40
	strh r0, [r2, #0x18]
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	ldr r1, [r2, #8]
	adds r1, r1, r0
	str r1, [r2, #8]
	ldr r0, _0807AB84 @ =gCamera
	ldr r0, [r0, #0x10]
	lsls r0, r0, #8
	cmp r1, r0
	bge _0807ABAE
	adds r3, r2, #0
	adds r3, #0x60
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AB88
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r2, #4]
	subs r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r3]
	subs r0, #0x50
	b _0807ABA0
	.align 2, 0
_0807AB7C: .4byte gUnknown_080D5B00
_0807AB80: .4byte gUnknown_080D5BB0
_0807AB84: .4byte gCamera
_0807AB88:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r3]
	adds r0, #0x50
_0807ABA0:
	strh r0, [r3]
	movs r0, #0
	str r0, [r2, #8]
	strh r0, [r2, #0x18]
	strh r0, [r2, #0x16]
	ldr r0, [r4, #4]
	str r0, [r2]
_0807ABAE:
	movs r0, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_807ABB8
sub_807ABB8: @ 0x0807ABB8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807ABDC
	ldrh r2, [r4, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x12
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r4, #0x16]
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	b _0807ABF2
_0807ABDC:
	ldrh r2, [r4, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x12
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r4, #0x16]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
_0807ABF2:
	ldrh r1, [r4, #0x18]
	adds r1, #0x20
	lsls r0, r2, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #4]
	adds r2, r2, r0
	str r2, [r4, #4]
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r2, r4, #0
	adds r2, #0x60
	ldr r1, _0807AC40 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r3, _0807AC44 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807AC40: .4byte 0xFFFFFF00
_0807AC44: .4byte 0x000003FF

	thumb_func_start sub_807AC48
sub_807AC48: @ 0x0807AC48
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AC74 @ =gUnknown_080D5B00
	adds r3, r0, r1
	movs r7, #0
	ldrh r2, [r4, #0x18]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0807AC78 @ =0xFFFFFD00
	cmp r1, r0
	ble _0807AC7C
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x27
	b _0807AC94
	.align 2, 0
_0807AC74: .4byte gUnknown_080D5B00
_0807AC78: .4byte 0xFFFFFD00
_0807AC7C:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0807AC8E
	ldrh r0, [r4, #0x16]
	adds r0, #0x50
	b _0807AC92
_0807AC8E:
	ldrh r0, [r4, #0x16]
	subs r0, #0x50
_0807AC92:
	strh r0, [r4, #0x16]
_0807AC94:
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r2, r0, r1
	str r2, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807ACC4
	ldr r1, _0807ACC0 @ =gCamera
	ldr r0, [r1, #0x1c]
	adds r0, #0x14
	lsls r0, r0, #8
	adds r6, r1, #0
	cmp r2, r0
	ble _0807ACD4
	b _0807ACD8
	.align 2, 0
_0807ACC0: .4byte gCamera
_0807ACC4:
	ldr r1, _0807AD14 @ =gCamera
	ldr r0, [r1, #0x18]
	subs r0, #0x14
	lsls r0, r0, #8
	adds r6, r1, #0
	cmp r2, r0
	bge _0807ACD4
	movs r7, #1
_0807ACD4:
	cmp r7, #0
	beq _0807AD4E
_0807ACD8:
	ldr r0, [r3, #4]
	str r0, [r4]
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r2, [r6, #0x14]
	subs r2, #0x28
	adds r3, r4, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	movs r1, #0x46
	muls r0, r1, r0
	subs r2, r2, r0
	lsls r2, r2, #8
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	cmp r1, #1
	bne _0807AD20
	ldrb r0, [r3]
	ands r1, r0
	cmp r1, #0
	beq _0807AD18
	ldrb r0, [r3]
	lsls r0, r0, #8
	adds r0, r2, r0
	b _0807AD1E
	.align 2, 0
_0807AD14: .4byte gCamera
_0807AD18:
	ldrb r0, [r3]
	lsls r0, r0, #8
	subs r0, r2, r0
_0807AD1E:
	str r0, [r4, #8]
_0807AD20:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807AD3A
	ldr r0, [r6, #0x1c]
	adds r0, #0x14
	lsls r0, r0, #8
	ldrb r2, [r3]
	lsls r2, r2, #2
	movs r1, #0x32
	subs r1, r1, r2
	lsls r1, r1, #0xa
	adds r0, r0, r1
	b _0807AD4C
_0807AD3A:
	ldr r0, [r6, #0x18]
	subs r0, #0x14
	lsls r0, r0, #8
	ldrb r2, [r3]
	lsls r2, r2, #2
	movs r1, #0x32
	subs r1, r1, r2
	lsls r1, r1, #0xa
	subs r0, r0, r1
_0807AD4C:
	str r0, [r4, #4]
_0807AD4E:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r2, r4, #0
	adds r2, #0x60
	ldr r1, _0807AD80 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r3, _0807AD84 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807AD80: .4byte 0xFFFFFF00
_0807AD84: .4byte 0x000003FF

	thumb_func_start sub_807AD88
sub_807AD88: @ 0x0807AD88
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, _0807ADC4 @ =gUnknown_080D5BD8
	mov r0, sp
	movs r2, #0x14
	bl memcpy
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807ADCC
	ldr r0, _0807ADC8 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x28
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	cmp r1, r0
	blt _0807ADDA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	rsbs r0, r0, #0
	b _0807ADF0
	.align 2, 0
_0807ADC4: .4byte gUnknown_080D5BD8
_0807ADC8: .4byte gCamera
_0807ADCC:
	ldr r0, _0807ADE0 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x28
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	cmp r1, r0
	ble _0807ADE4
_0807ADDA:
	movs r5, #1
	b _0807ADF2
	.align 2, 0
_0807ADE0: .4byte gCamera
_0807ADE4:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
_0807ADF0:
	strh r0, [r4, #0x16]
_0807ADF2:
	movs r0, #0x16
	ldrsh r2, [r4, r0]
	adds r2, r1, r2
	str r2, [r4, #4]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r2, r4, #0
	adds r2, #0x60
	ldr r3, _0807AE34 @ =0xFFFFFF00
	adds r0, r0, r3
	ldr r3, _0807AE38 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807AE34: .4byte 0xFFFFFF00
_0807AE38: .4byte 0x000003FF

	thumb_func_start sub_807AE3C
sub_807AE3C: @ 0x0807AE3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AE80 @ =gUnknown_080D5B00
	adds r7, r0, r1
	movs r6, #0
	ldr r3, _0807AE84 @ =gCamera
	ldr r1, [r3, #0x14]
	subs r1, #0xa0
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4, #8]
	mov ip, r3
	cmp r0, r1
	bgt _0807AE88
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0807AEFA
	movs r6, #1
	b _0807AF30
	.align 2, 0
_0807AE80: .4byte gUnknown_080D5B00
_0807AE84: .4byte gCamera
_0807AE88:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #0x1a]
	cmp r0, #0
	bne _0807AEBC
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AEA0
	movs r0, #0xd0
	b _0807AEA2
_0807AEA0:
	ldr r0, _0807AF28 @ =0x0000FF30
_0807AEA2:
	strh r0, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #6
	subs r0, r0, r1
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r5, _0807AF2C @ =0xFFFFFD00
	adds r0, r5, #0
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r5, r2, #0
_0807AEBC:
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	adds r0, #0x20
	strh r0, [r4, #0x18]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r3, [r4, #8]
	adds r3, r3, r0
	str r3, [r4, #8]
	mov r2, ip
	ldr r1, [r2, #0x14]
	subs r1, #0xa0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	cmp r3, r1
	bge _0807AEF4
	movs r0, #0
	strh r0, [r4, #0x1a]
_0807AEF4:
	movs r0, #0
	cmp r0, #0
	beq _0807AF7C
_0807AEFA:
	cmp r6, #0
	bne _0807AF30
	ldr r0, [r7, #4]
	str r0, [r4]
	strh r6, [r4, #0x1a]
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #4]
	ldr r2, [r2, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	adds r3, r1, #0
	b _0807AF56
	.align 2, 0
_0807AF28: .4byte 0x0000FF30
_0807AF2C: .4byte 0xFFFFFD00
_0807AF30:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AF44
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0x40
	b _0807AF4C
_0807AF44:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x40
_0807AF4C:
	ldr r3, _0807AF74 @ =0x000003FF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	adds r3, r0, #0
_0807AF56:
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r0, _0807AF78 @ =gCamera
	ldr r1, [r0, #0x14]
	subs r1, #0xa0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r4, #8]
	b _0807AF9C
	.align 2, 0
_0807AF74: .4byte 0x000003FF
_0807AF78: .4byte gCamera
_0807AF7C:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	adds r3, r1, #0
_0807AF9C:
	ldr r5, _0807AFB4 @ =0xFFFFFF00
	adds r0, r5, #0
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r2, _0807AFB8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807AFB4: .4byte 0xFFFFFF00
_0807AFB8: .4byte 0x000003FF

	thumb_func_start sub_807AFBC
sub_807AFBC: @ 0x0807AFBC
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r4, #0
	ldrh r0, [r0, #0x1a]
	adds r0, #1
	mov r1, ip
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bne _0807AFD6
	movs r4, #1
	b _0807B038
_0807AFD6:
	mov r3, ip
	movs r5, #0x1a
	ldrsh r2, [r3, r5]
	mov r0, ip
	adds r0, #0x28
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	cmp r2, r0
	blt _0807B038
	mov r0, ip
	adds r0, #0x60
	ldr r6, _0807B058 @ =0xFFFFFF00
	adds r1, r6, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0807B05C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0807B060 @ =gSineTable
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r5, ip
	movs r6, #0x14
	ldrsh r0, [r5, r6]
	adds r0, #0x40
	muls r0, r2, r0
	asrs r0, r0, #0x10
	ldrh r2, [r5, #0x16]
	adds r0, r0, r2
	strh r0, [r5, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r6, #0x14
	ldrsh r0, [r5, r6]
	adds r0, #0x40
	muls r0, r1, r0
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	strh r0, [r5, #0x18]
_0807B038:
	mov r2, ip
	movs r3, #0x16
	ldrsh r1, [r2, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r5, #0x18
	ldrsh r1, [r2, r5]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B058: .4byte 0xFFFFFF00
_0807B05C: .4byte 0x000003FF
_0807B060: .4byte gSineTable

	thumb_func_start sub_807B064
sub_807B064: @ 0x0807B064
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B0B0 @ =gUnknown_080D5B00
	adds r2, r0, r1
	ldr r0, _0807B0B4 @ =gCamera
	ldr r0, [r0, #0x14]
	subs r0, #0x96
	lsls r1, r0, #8
	ldr r3, [r4, #8]
	cmp r3, r1
	ble _0807B0BC
	movs r0, #0
	strh r0, [r4, #0x16]
	ldr r0, _0807B0B8 @ =0x0000FC20
	strh r0, [r4, #0x18]
	ldr r2, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	adds r1, r3, r1
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r1, r4, #0
	adds r1, #0x60
	b _0807B0E6
	.align 2, 0
_0807B0B0: .4byte gUnknown_080D5B00
_0807B0B4: .4byte gCamera
_0807B0B8: .4byte 0x0000FC20
_0807B0BC:
	ldr r0, [r2, #4]
	str r0, [r4]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B0DE
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0x88
	lsls r0, r0, #2
	b _0807B0E6
_0807B0DE:
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0xf8
	lsls r0, r0, #2
_0807B0E6:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r1, _0807B104 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r2]
	adds r0, r0, r3
	ldr r3, _0807B108 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807B104: .4byte 0xFFFFFF00
_0807B108: .4byte 0x000003FF

	thumb_func_start sub_807B10C
sub_807B10C: @ 0x0807B10C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r3, #0
	adds r6, #0x60
	ldr r1, _0807B180 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r6]
	adds r4, r0, r2
	ldr r1, _0807B184 @ =0x000003FF
	adds r0, r1, #0
	ands r4, r0
	ldr r2, _0807B188 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x40
	muls r0, r1, r0
	lsls r0, r0, #6
	lsrs r5, r0, #0x10
	strh r5, [r3, #0x16]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r3, #0x18]
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #4]
	adds r2, r0, r1
	str r2, [r3, #4]
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r3, #8]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _0807B190
	ldr r0, _0807B18C @ =gCamera
	ldr r0, [r0, #0x18]
	lsls r0, r0, #8
	cmp r2, r0
	bge _0807B190
	str r0, [r3, #4]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r2, r6, #0
	b _0807B1C8
	.align 2, 0
_0807B180: .4byte 0xFFFFFF00
_0807B184: .4byte 0x000003FF
_0807B188: .4byte gSineTable
_0807B18C: .4byte gCamera
_0807B190:
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _0807B1B4
	ldr r0, _0807B1B0 @ =gCamera
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #8
	ldr r1, [r3, #4]
	cmp r1, r0
	ble _0807B1B4
	str r0, [r3, #4]
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r2, r3, #0
	adds r2, #0x60
	b _0807B1C8
	.align 2, 0
_0807B1B0: .4byte gCamera
_0807B1B4:
	adds r1, r3, #0
	adds r1, #0x60
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_0807B1C8:
	ldr r1, _0807B1DC @ =0xFFFFFF00
	adds r0, r4, r1
	ldr r3, _0807B1E0 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B1DC: .4byte 0xFFFFFF00
_0807B1E0: .4byte 0x000003FF

	thumb_func_start sub_807B1E4
sub_807B1E4: @ 0x0807B1E4
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B20C @ =gUnknown_080D5B00
	adds r5, r0, r1
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B210
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0xc0
	b _0807B218
	.align 2, 0
_0807B20C: .4byte gUnknown_080D5B00
_0807B210:
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0xc0
_0807B218:
	ldr r4, _0807B278 @ =0x000003FF
	adds r2, r4, #0
	ands r1, r2
	strh r1, [r0]
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807B238
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3, #8]
	movs r0, #1
	strh r0, [r3, #0x1a]
_0807B238:
	ldr r0, [r3, #0x20]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B26E
	ldr r0, [r5, #4]
	str r0, [r3]
	movs r0, #0x5a
	strh r0, [r3, #0x1a]
	ldr r2, [r3, #0x2c]
	ldr r0, [r3, #8]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r3, #4]
	ldr r2, [r2, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	ldr r1, _0807B27C @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r2, _0807B278 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
_0807B26E:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807B278: .4byte 0x000003FF
_0807B27C: .4byte 0xFFFFFF00

	thumb_func_start sub_807B280
sub_807B280: @ 0x0807B280
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x60
	ldr r2, _0807B358 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r7, r0, r1
	ldr r4, _0807B35C @ =0x000003FF
	adds r0, r4, #0
	ands r7, r0
	ldr r1, _0807B360 @ =gUnknown_080D5BEC
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	movs r0, #0
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r0, #6
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	ldrh r0, [r6, #0x1a]
	subs r0, #1
	strh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807B2CA
	movs r2, #1
	mov r8, r2
_0807B2CA:
	ldr r5, _0807B364 @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r4, #0x26
	adds r4, r4, r6
	mov ip, r4
	ldrb r0, [r4]
	lsls r0, r0, #1
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	add r0, sp
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r6, #0
	adds r4, #0x28
	ldrb r0, [r4]
	lsls r0, r0, #2
	subs r0, #0x10
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r1, [r6, #0x16]
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	lsls r0, r7, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	add r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r4]
	lsls r0, r0, #2
	subs r0, #0x10
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r4, [r6, #0x18]
	adds r0, r0, r4
	strh r0, [r6, #0x18]
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	mov r0, r8
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807B358: .4byte 0xFFFFFF00
_0807B35C: .4byte 0x000003FF
_0807B360: .4byte gUnknown_080D5BEC
_0807B364: .4byte gSineTable

	thumb_func_start sub_807B368
sub_807B368: @ 0x0807B368
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B3B0 @ =gUnknown_080D5B00
	adds r4, r0, r1
	mov r1, ip
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0xf
	bgt _0807B3F4
	cmp r0, #0
	bne _0807B3DE
	mov r0, ip
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x20
	mov r3, ip
	strh r0, [r3, #0x14]
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B3B4
	ldr r0, [r3, #4]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r0, r5
	str r0, [r3, #4]
	b _0807B3BE
	.align 2, 0
_0807B3B0: .4byte gUnknown_080D5B00
_0807B3B4:
	mov r6, ip
	ldr r0, [r6, #4]
	ldr r1, _0807B40C @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r6, #4]
_0807B3BE:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r2, #8]
	mov r0, ip
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xaa
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_0807B3DE:
	mov r5, ip
	movs r6, #0x16
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
_0807B3F4:
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B414
	mov r0, ip
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0x10
	ldr r3, _0807B410 @ =0x000003FF
	adds r2, r3, #0
	b _0807B420
	.align 2, 0
_0807B40C: .4byte 0xFFFFFC00
_0807B410: .4byte 0x000003FF
_0807B414:
	mov r0, ip
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x10
	ldr r5, _0807B48C @ =0x000003FF
	adds r2, r5, #0
_0807B420:
	ands r1, r2
	strh r1, [r0]
	ldr r6, _0807B490 @ =0xFFFFFF00
	adds r1, r6, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0807B48C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0807B494 @ =gSineTable
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r5, ip
	movs r6, #0x14
	ldrsh r0, [r5, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xb
	strh r0, [r5, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xb
	strh r0, [r5, #0x18]
	movs r3, #0x16
	ldrsh r1, [r5, r3]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r6, #0x18
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B484
	ldr r0, [r4, #4]
	str r0, [r5]
	movs r0, #0x2d
	strh r0, [r5, #0x1a]
_0807B484:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B48C: .4byte 0x000003FF
_0807B490: .4byte 0xFFFFFF00
_0807B494: .4byte gSineTable

	thumb_func_start sub_807B498
sub_807B498: @ 0x0807B498
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x60
	ldr r2, _0807B4D0 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r6, [r1]
	adds r4, r0, r6
	ldr r0, _0807B4D4 @ =0x000003FF
	adds r2, r0, #0
	ands r4, r2
	movs r5, #0
	ldrh r0, [r3, #0x1a]
	subs r0, #1
	strh r0, [r3, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807B4BE
	movs r5, #1
_0807B4BE:
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B4D8
	ldrh r0, [r1]
	adds r0, #8
	b _0807B4DC
	.align 2, 0
_0807B4D0: .4byte 0xFFFFFF00
_0807B4D4: .4byte 0x000003FF
_0807B4D8:
	ldrh r0, [r1]
	subs r0, #8
_0807B4DC:
	ands r0, r2
	strh r0, [r1]
	ldr r2, _0807B528 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r6, #0x14
	ldrsh r0, [r3, r6]
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r3, #0x16]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r6, #0x14
	ldrsh r0, [r3, r6]
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r3, #0x18]
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r3, #8]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B528: .4byte gSineTable

	thumb_func_start sub_807B52C
sub_807B52C: @ 0x0807B52C
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r1, #0x60
	ldr r3, _0807B590 @ =0xFFFFFF00
	adds r2, r3, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	ldr r5, _0807B594 @ =0x000003FF
	adds r1, r5, #0
	ands r2, r1
	ldr r4, _0807B598 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, r3
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r5, #0
	ldrsh r3, [r1, r5]
	movs r5, #0x14
	ldrsh r1, [r0, r5]
	muls r1, r3, r1
	asrs r1, r1, #0xe
	ldrh r3, [r0, #0x16]
	adds r1, r1, r3
	strh r1, [r0, #0x16]
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r2, [r2, r5]
	movs r3, #0x14
	ldrsh r1, [r0, r3]
	muls r1, r2, r1
	asrs r1, r1, #0xe
	ldrh r5, [r0, #0x18]
	adds r1, r1, r5
	strh r1, [r0, #0x18]
	movs r1, #0x16
	ldrsh r2, [r0, r1]
	ldr r1, [r0, #4]
	adds r1, r1, r2
	str r1, [r0, #4]
	movs r3, #0x18
	ldrsh r2, [r0, r3]
	ldr r1, [r0, #8]
	adds r1, r1, r2
	str r1, [r0, #8]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807B590: .4byte 0xFFFFFF00
_0807B594: .4byte 0x000003FF
_0807B598: .4byte gSineTable

	thumb_func_start sub_807B59C
sub_807B59C: @ 0x0807B59C
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B5DC @ =gUnknown_080D5B00
	adds r4, r0, r1
	adds r1, r3, #0
	adds r1, #0x60
	movs r0, #0
	strh r0, [r1]
	ldrh r1, [r3, #0x18]
	subs r1, #0x20
	strh r1, [r3, #0x18]
	movs r0, #0x18
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #8]
	adds r0, r0, r2
	str r0, [r3, #8]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0807B5E0 @ =0xFFFFFC00
	cmp r1, r0
	bge _0807B5D4
	ldr r0, [r4, #4]
	str r0, [r3]
_0807B5D4:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807B5DC: .4byte gUnknown_080D5B00
_0807B5E0: .4byte 0xFFFFFC00

	thumb_func_start sub_807B5E4
sub_807B5E4: @ 0x0807B5E4
	push {r4, lr}
	ldr r2, _0807B614 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0807B618
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0807B618
	ldr r0, [r4, #0x1c]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	bl TaskDestroy
	b _0807B65E
	.align 2, 0
_0807B614: .4byte gCurTask
_0807B618:
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_807B664
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0807B658
	ldr r1, [r4, #0x1c]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0807B654 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807B65E
	.align 2, 0
_0807B654: .4byte gCurTask
_0807B658:
	adds r0, r4, #0
	bl sub_807A8B4
_0807B65E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_807B664
sub_807B664: @ 0x0807B664
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	ldr r0, [r4, #8]
	adds r0, #0xa
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _0807B6C0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _0807B6B4
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, _0807B6C4 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #8]
	cmp r6, #0
	beq _0807B6B2
	movs r0, #0x80
	lsls r0, r0, #2
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
_0807B6B2:
	movs r5, #1
_0807B6B4:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B6C0: .4byte sub_805217C
_0807B6C4: .4byte 0xFFFFFF00

@ void* unk
	thumb_func_start sub_807B6C8
sub_807B6C8: @ 0x0807B6C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807B704 @ =sub_8081904
	movs r1, #0xd6
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0807B708 @ =sub_80817E0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	mov ip, r2
	ldr r2, _0807B70C @ =gStageData
	adds r1, r2, #0
	adds r1, #0x88
	str r0, [r1]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0807B710
	movs r0, #8
	b _0807B712
	.align 2, 0
_0807B704: .4byte sub_8081904
_0807B708: .4byte sub_80817E0
_0807B70C: .4byte gStageData
_0807B710:
	movs r0, #6
_0807B712:
	mov r1, ip
	strb r0, [r1]
	mov r0, ip
	str r4, [r0, #4]
	movs r3, #0
	movs r0, #1
	mov r1, ip
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r0, [r1, #8]
	strh r3, [r1, #0xc]
	ldr r2, _0807B7E8 @ =gPlayers
	str r2, [r1, #0x20]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x24]
	movs r0, #0x94
	lsls r0, r0, #2
	add r0, ip
	str r3, [r0]
	movs r0, #0x8a
	lsls r0, r0, #2
	add r0, ip
	str r3, [r0]
	movs r1, #0
	ldr r5, _0807B7EC @ =gDispCnt
	ldr r6, _0807B7F0 @ =gUnknown_03003C10
	ldr r7, _0807B7F4 @ =gUnknown_030035C0
	ldr r0, _0807B7F8 @ =gUnknown_03006230
	mov r8, r0
	ldr r4, _0807B7FC @ =gUnknown_03003590
	mov r2, ip
	adds r2, #0x7c
_0807B768:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807B768
	movs r0, #0
	mov r1, ip
	str r0, [r1, #0x18]
	movs r1, #0
	movs r2, #0xb2
	lsls r2, r2, #2
	add r2, ip
	movs r3, #0
_0807B78C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _0807B78C
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, ip
	movs r2, #0
	str r2, [r0]
	movs r0, #0xa8
	lsls r0, r0, #2
	add r0, ip
	str r2, [r0]
	ldrh r1, [r5]
	ldr r0, _0807B800 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r5]
	movs r1, #0
	strh r2, [r6]
	strh r2, [r6, #2]
	ldr r0, _0807B804 @ =0x00009B0E
	strh r0, [r7]
	mov r0, r8
	strb r1, [r0]
	strb r1, [r4]
	strb r1, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	movs r0, #0x20
	strb r0, [r4, #3]
	mov r0, ip
	bl sub_807C074
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B7E8: .4byte gPlayers
_0807B7EC: .4byte gDispCnt
_0807B7F0: .4byte gUnknown_03003C10
_0807B7F4: .4byte gUnknown_030035C0
_0807B7F8: .4byte gUnknown_03006230
_0807B7FC: .4byte gUnknown_03003590
_0807B800: .4byte 0x0000FEFF
_0807B804: .4byte 0x00009B0E

	thumb_func_start sub_807B808
sub_807B808: @ 0x0807B808
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0807B854 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4, #0x20]
	ldr r6, [r4, #0x24]
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	mov r1, sp
	mov r0, sp
	movs r2, #0
	mov r8, r2
	movs r7, #0
	strh r7, [r0, #2]
	strh r7, [r1]
	ldrh r1, [r4, #0xc]
	cmp r1, #0x64
	beq _0807B8B0
	cmp r1, #0x64
	bgt _0807B858
	cmp r1, #0
	beq _0807B874
	cmp r1, #0xa
	beq _0807B896
	b _0807B9A8
	.align 2, 0
_0807B854: .4byte gCurTask
_0807B858:
	cmp r1, #0xc8
	bne _0807B85E
	b _0807B95E
_0807B85E:
	cmp r1, #0xc8
	bgt _0807B868
	cmp r1, #0x6e
	beq _0807B94C
	b _0807B9A8
_0807B868:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807B872
	b _0807B99C
_0807B872:
	b _0807B9A8
_0807B874:
	movs r0, #0xc
	bl sub_807FB7C
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xa
	bl sub_807FB7C
	movs r0, #0xb
	bl sub_807FB7C
	movs r0, #5
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807B9A8
_0807B896:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807B8A4
	b _0807B9A8
_0807B8A4:
	movs r0, #0x36
	bl sub_80299D4
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807B9A8
_0807B8B0:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807B8C4 @ =0x0000068C
	cmp r0, r1
	ble _0807B8CC
	ldr r0, _0807B8C8 @ =0x00068D00
	str r0, [r5, #0x10]
	strh r7, [r5, #0x1c]
	strh r7, [r5, #0x18]
	b _0807B8D2
	.align 2, 0
_0807B8C4: .4byte 0x0000068C
_0807B8C8: .4byte 0x00068D00
_0807B8CC:
	mov r1, sp
	movs r0, #0x10
	strh r0, [r1]
_0807B8D2:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807B8E8 @ =0x00000664
	cmp r0, r1
	ble _0807B8F0
	ldr r0, _0807B8EC @ =0x00066500
	str r0, [r6, #0x10]
	movs r0, #0
	strh r0, [r6, #0x1c]
	strh r0, [r6, #0x18]
	b _0807B8FC
	.align 2, 0
_0807B8E8: .4byte 0x00000664
_0807B8EC: .4byte 0x00066500
_0807B8F0:
	mov r2, sp
	mov r0, sp
	ldrh r1, [r0, #2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #2]
_0807B8FC:
	ldrh r1, [r5, #0x1e]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r5, #0x20]
	ldrh r1, [r6, #0x1e]
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r6, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r6, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807B948 @ =0x0000068C
	cmp r0, r1
	ble _0807B9A8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xb2
	ble _0807B9A8
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r1, #0x28
	cmp r0, r1
	ble _0807B9A8
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xb2
	ble _0807B9A8
	movs r0, #0x1e
	strh r0, [r4, #8]
	movs r0, #0x6e
	strh r0, [r4, #0xc]
	b _0807B9A8
	.align 2, 0
_0807B948: .4byte 0x0000068C
_0807B94C:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807B9A8
	movs r0, #0xc8
	strh r0, [r4, #0xc]
	b _0807B9A8
_0807B95E:
	ldr r1, _0807B994 @ =gCamera
	movs r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r4, #0
	bl sub_807BCCC
	adds r0, r4, #0
	bl sub_807BEF0
	adds r0, r4, #0
	bl sub_807D6C4
	adds r0, r4, #0
	bl sub_807CBC8
	mov r0, r8
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x12]
	movs r0, #1
	strh r0, [r4, #8]
	strh r7, [r4, #0xc]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _0807B998 @ =sub_807B9B8
	str r0, [r1, #8]
	b _0807B9A8
	.align 2, 0
_0807B994: .4byte gCamera
_0807B998: .4byte sub_807B9B8
_0807B99C:
	strh r7, [r5, #0x1c]
	strh r7, [r5, #0x18]
	strh r7, [r6, #0x1c]
	strh r7, [r6, #0x18]
	bl sub_807A4A8
_0807B9A8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807B9B8
sub_807B9B8: @ 0x0807B9B8
	push {r4, lr}
	sub sp, #4
	ldr r3, _0807B9E8 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldrh r0, [r4, #0xc]
	cmp r0, #0x14
	bne _0807B9D0
	b _0807BAD0
_0807B9D0:
	cmp r0, #0x14
	bgt _0807B9F6
	cmp r0, #0xa
	beq _0807BA80
	cmp r0, #0xa
	bgt _0807B9EC
	cmp r0, #0
	beq _0807BA26
	cmp r0, #1
	beq _0807BA30
	b _0807BBD4
	.align 2, 0
_0807B9E8: .4byte gCurTask
_0807B9EC:
	cmp r0, #0xb
	beq _0807BAAA
	cmp r0, #0xc
	beq _0807BA94
	b _0807BBD4
_0807B9F6:
	cmp r0, #0x1f
	bne _0807B9FC
	b _0807BB64
_0807B9FC:
	cmp r0, #0x1f
	bgt _0807BA0C
	cmp r0, #0x15
	beq _0807BAE2
	cmp r0, #0x1e
	bne _0807BA0A
	b _0807BB30
_0807BA0A:
	b _0807BBD4
_0807BA0C:
	cmp r0, #0x64
	bne _0807BA12
	b _0807BBB0
_0807BA12:
	cmp r0, #0x64
	bgt _0807BA1E
	cmp r0, #0x20
	bne _0807BA1C
	b _0807BB8E
_0807BA1C:
	b _0807BBD4
_0807BA1E:
	cmp r0, #0xc8
	bne _0807BA24
	b _0807BBC2
_0807BA24:
	b _0807BBD4
_0807BA26:
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BA30:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807BA3E
	b _0807BBD4
_0807BA3E:
	ldr r0, _0807BA78 @ =0x00000237
	bl sub_80BA57C
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	ldr r2, _0807BA7C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd3
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl sub_805256C
	movs r0, #0xd2
	bl sub_807FB7C
	b _0807BBD4
	.align 2, 0
_0807BA78: .4byte 0x00000237
_0807BA7C: .4byte gDispCnt
_0807BA80:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807BA8E
	b _0807BBD4
_0807BA8E:
	movs r0, #0xc
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BA94:
	ldr r1, _0807BACC @ =0x03000120
	adds r0, r2, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r0, #0xb7
	bgt _0807BAAA
	movs r0, #0xdc
	bl sub_807FB7C
	movs r0, #0xb
	strh r0, [r4, #0xc]
_0807BAAA:
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	subs r1, #0x80
	str r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r1, r0
	ble _0807BAC0
	b _0807BBD4
_0807BAC0:
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #0x14
	strh r0, [r4, #0xc]
	b _0807BBD4
	.align 2, 0
_0807BACC: .4byte 0x03000120
_0807BAD0:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0x15
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BAE2:
	ldr r0, _0807BB1C @ =0x03000144
	adds r1, r2, r0
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0807BB20 @ =0x0300016C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r3, _0807BB24 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2]
	ldr r1, [r1]
	ldr r0, _0807BB28 @ =0x000613FF
	cmp r1, r0
	ble _0807BBD4
	movs r0, #0x1e
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	ldr r0, _0807BB2C @ =0x00000237
	bl sub_80BA648
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8081A74
	b _0807BBD4
	.align 2, 0
_0807BB1C: .4byte 0x03000144
_0807BB20: .4byte 0x0300016C
_0807BB24: .4byte 0xFFFFFF00
_0807BB28: .4byte 0x000613FF
_0807BB2C: .4byte 0x00000237
_0807BB30:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0x24
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8081A74
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_8081AD4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_8081AD4
	b _0807BBD4
_0807BB64:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0x24
	strh r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_8081AD4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_8081AD4
	b _0807BBD4
_0807BB8E:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0xfa
	bl sub_807FB7C
	movs r0, #0x14
	bl sub_807FB7C
	movs r0, #0x1e
	strh r0, [r4, #8]
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BBB0:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0xc8
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BBC2:
	movs r2, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	strb r2, [r4, #1]
	ldr r1, [r3]
	ldr r0, _0807BC00 @ =sub_807BC04
	str r0, [r1, #8]
_0807BBD4:
	adds r0, r4, #0
	bl sub_807BD88
	adds r0, r4, #0
	bl sub_807BFEC
	adds r0, r4, #0
	bl sub_807DB60
	adds r0, r4, #0
	bl sub_807D81C
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807BC00: .4byte sub_807BC04

	thumb_func_start sub_807BC04
sub_807BC04: @ 0x0807BC04
	push {r4, r5, lr}
	ldr r0, _0807BC84 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _0807BC88 @ =gUnknown_08E2ED00
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_807ED8C
	adds r0, r4, #0
	bl sub_807BD88
	adds r0, r4, #0
	bl sub_807DB60
	adds r0, r4, #0
	bl sub_807D81C
	adds r0, r4, #0
	bl sub_807BFEC
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, _0807BC8C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0807BC90 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xd9
	ble _0807BCBA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BC98
	movs r0, #0xa0
	bl sub_807FB7C
	ldr r1, _0807BC94 @ =sub_8008E38
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0807BCBA
	.align 2, 0
_0807BC84: .4byte gCurTask
_0807BC88: .4byte gUnknown_08E2ED00
_0807BC8C: .4byte gStageData
_0807BC90: .4byte gPlayers
_0807BC94: .4byte sub_8008E38
_0807BC98:
	ldr r1, [r4]
	ldr r5, _0807BCC0 @ =sub_8008E38
	cmp r1, r5
	beq _0807BCBA
	ldr r0, _0807BCC4 @ =sub_800913C
	cmp r1, r0
	beq _0807BCBA
	ldr r0, _0807BCC8 @ =sub_800DF9C
	cmp r1, r0
	beq _0807BCBA
	movs r0, #0xa0
	bl sub_807FB7C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
_0807BCBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807BCC0: .4byte sub_8008E38
_0807BCC4: .4byte sub_800913C
_0807BCC8: .4byte sub_800DF9C

	thumb_func_start sub_807BCCC
sub_807BCCC: @ 0x0807BCCC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov ip, r0
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	movs r4, #0
	str r4, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	str r4, [r1]
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0
	mov r8, r1
	movs r1, #1
	strh r1, [r2]
	movs r1, #0x97
	lsls r1, r1, #1
	add r1, ip
	strh r4, [r1]
	movs r2, #0x8e
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0xcf
	lsls r1, r1, #0xb
	str r1, [r2]
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0xb0
	lsls r3, r3, #9
	str r3, [r1]
	ldr r6, _0807BD70 @ =gUnknown_03003C10
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r5, _0807BD74 @ =gCamera
	ldr r2, [r5]
	subs r1, r1, r2
	movs r2, #0x80
	subs r1, r2, r1
	strh r1, [r6]
	asrs r3, r3, #8
	ldr r1, [r5, #4]
	subs r3, r3, r1
	subs r2, r2, r3
	strh r2, [r6, #2]
	ldr r1, _0807BD78 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0807BD7C @ =0x0600D800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0807BD80 @ =0x000001D3
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _0807BD84 @ =0x00000212
	add r1, ip
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl sub_80BD384
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807BD70: .4byte gUnknown_03003C10
_0807BD74: .4byte gCamera
_0807BD78: .4byte 0x0600C000
_0807BD7C: .4byte 0x0600D800
_0807BD80: .4byte 0x000001D3
_0807BD84: .4byte 0x00000212

	thumb_func_start sub_807BD88
sub_807BD88: @ 0x0807BD88
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r3, #0x97
	lsls r3, r3, #1
	add r3, ip
	ldrh r0, [r3]
	cmp r0, #0xa
	beq _0807BDA2
	cmp r0, #0xa
	ble _0807BE1A
	cmp r0, #0x14
	beq _0807BDFC
	b _0807BE1A
_0807BDA2:
	movs r5, #0x8e
	lsls r5, r5, #1
	add r5, ip
	movs r4, #0x92
	lsls r4, r4, #1
	add r4, ip
	ldr r2, _0807BDF8 @ =gUnknown_080D5C80
	movs r3, #0x96
	lsls r3, r3, #1
	add r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r5]
	movs r5, #0x90
	lsls r5, r5, #1
	add r5, ip
	movs r4, #0x94
	lsls r4, r4, #1
	add r4, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r0, [r3]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	b _0807BE18
	.align 2, 0
_0807BDF8: .4byte gUnknown_080D5C80
_0807BDFC:
	movs r2, #0x90
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0807BE4C @ =0x00015FFF
	cmp r0, r1
	ble _0807BE1A
	movs r0, #0
_0807BE18:
	strh r0, [r3]
_0807BE1A:
	ldr r4, _0807BE50 @ =gUnknown_03003C10
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r3, _0807BE54 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	movs r2, #0x80
	subs r0, r2, r0
	strh r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	subs r2, r2, r0
	strh r2, [r4, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807BE4C: .4byte 0x00015FFF
_0807BE50: .4byte gUnknown_03003C10
_0807BE54: .4byte gCamera

	thumb_func_start sub_807BE58
sub_807BE58: @ 0x0807BE58
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #1
	beq _0807BEA4
	cmp r3, #1
	bgt _0807BE6E
	cmp r3, #0
	beq _0807BE74
	b _0807BEE8
_0807BE6E:
	cmp r3, #0xa
	beq _0807BECC
	b _0807BEE8
_0807BE74:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r3, [r0]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0xa
	b _0807BEE6
_0807BEA4:
	movs r4, #0x97
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	subs r4, #0xe
	adds r1, r2, r4
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	b _0807BEE8
_0807BECC:
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #0x80
	str r0, [r1]
	adds r0, #0xac
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0x14
_0807BEE6:
	strh r0, [r1]
_0807BEE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807BEF0
sub_807BEF0: @ 0x0807BEF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, sl
	mov r8, r0
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	ldr r1, _0807BFDC @ =0xFFFFB800
	adds r0, r0, r1
	mov r1, sb
	str r0, [r1]
	movs r7, #0x94
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	movs r6, #0
	movs r5, #0
	ldr r0, _0807BFE0 @ =0x000004F2
	strh r0, [r7, #0xc]
	strb r6, [r7, #0x1a]
	adds r0, #0x8e
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #8]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r4, _0807BFE4 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0x8a
	lsls r7, r7, #2
	add r7, sl
	movs r0, #8
	bl VramMalloc
	str r0, [r7]
	ldr r0, _0807BFE8 @ =0x000004F3
	strh r0, [r7, #0xc]
	strb r6, [r7, #0x1a]
	adds r0, #0x8d
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #8]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807BFDC: .4byte 0xFFFFB800
_0807BFE0: .4byte 0x000004F2
_0807BFE4: .4byte gCamera
_0807BFE8: .4byte 0x000004F3

	thumb_func_start sub_807BFEC
sub_807BFEC: @ 0x0807BFEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r5, #0x98
	lsls r5, r5, #1
	add r5, r8
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	str r0, [r5]
	movs r6, #0x9a
	lsls r6, r6, #1
	add r6, r8
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	ldr r1, _0807C06C @ =0xFFFFB800
	adds r0, r0, r1
	str r0, [r6]
	movs r7, #0x8a
	lsls r7, r7, #2
	add r7, r8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r4, _0807C070 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x94
	lsls r7, r7, #2
	add r7, r8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C06C: .4byte 0xFFFFB800
_0807C070: .4byte gCamera

	thumb_func_start sub_807C074
sub_807C074: @ 0x0807C074
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x15
	bl VramMalloc
	mov sl, r0
	movs r6, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
	ldr r2, _0807C140 @ =gCamera
	mov r8, r2
_0807C094:
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r4, r3, #3
	adds r4, #0x7c
	adds r4, r5, r4
	mov r0, sl
	str r0, [r4]
	ldr r0, _0807C144 @ =0x000003BF
	strh r0, [r4, #0xc]
	mov r2, sb
	strb r2, [r4, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #1
	strh r0, [r1, #0x3c]
	strh r7, [r1, #0x3e]
	adds r0, r5, #0
	adds r0, #0x34
	adds r0, r0, r3
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	adds r0, r0, r3
	str r7, [r0]
	adds r1, r5, #0
	adds r1, #0x2c
	adds r1, r1, r3
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	subs r0, r0, r6
	ldr r2, _0807C148 @ =0x0000061F
	adds r0, r0, r2
	lsls r0, r0, #8
	str r0, [r1]
	adds r2, r5, #0
	adds r2, #0x30
	adds r2, r2, r3
	movs r0, #0xcc
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, [r1]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r4, #0x27
	ldrb r0, [r4]
	adds r0, #0x20
	strb r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0807C094
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C140: .4byte gCamera
_0807C144: .4byte 0x000003BF
_0807C148: .4byte 0x0000061F

	thumb_func_start sub_807C14C
sub_807C14C: @ 0x0807C14C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
_0807C15C:
	ldrb r0, [r6]
	mov r1, r8
	lsls r1, r1, #2
	mov ip, r1
	adds r1, r6, #0
	adds r1, #0x38
	cmp r0, #0
	bne _0807C18E
	mov r0, ip
	add r0, r8
	lsls r0, r0, #2
	adds r3, r6, r0
	ldrh r2, [r3, #0x3e]
	cmp r2, #0x64
	beq _0807C17E
	cmp r2, #0x6e
	bne _0807C18E
_0807C17E:
	adds r2, r6, #0
	adds r2, #0x38
	adds r1, r2, r0
	ldr r0, _0807C1C0 @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0xc8
	strh r0, [r3, #0x3e]
	adds r1, r2, #0
_0807C18E:
	mov r0, ip
	add r0, r8
	lsls r0, r0, #2
	adds r2, r6, #0
	adds r2, #0x30
	adds r4, r2, r0
	ldr r7, [r4]
	adds r5, r1, r0
	ldr r1, [r5]
	adds r1, r7, r1
	str r1, [r4]
	subs r7, r7, r1
	adds r3, r6, r0
	ldrh r0, [r3, #0x3e]
	mov sb, r2
	cmp r0, #0x64
	beq _0807C1C4
	cmp r0, #0x64
	ble _0807C208
	cmp r0, #0x6e
	beq _0807C1DC
	cmp r0, #0xc8
	beq _0807C1F8
	b _0807C208
	.align 2, 0
_0807C1C0: .4byte 0xFFFFFC00
_0807C1C4:
	ldr r0, _0807C1D8 @ =0x0000F3FF
	cmp r1, r0
	ble _0807C208
	adds r0, #1
	str r0, [r4]
	movs r0, #0x78
	strh r0, [r3, #0x3c]
	movs r0, #0x6e
	b _0807C206
	.align 2, 0
_0807C1D8: .4byte 0x0000F3FF
_0807C1DC:
	ldrh r0, [r3, #0x3c]
	subs r0, #1
	strh r0, [r3, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C208
	ldr r0, [r5]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5]
	movs r0, #0xc8
	b _0807C206
_0807C1F8:
	movs r0, #0xcc
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0807C208
	str r0, [r4]
	movs r0, #0
	str r0, [r5]
_0807C206:
	strh r0, [r3, #0x3e]
_0807C208:
	mov r2, ip
	add r2, r8
	lsls r0, r2, #3
	adds r0, #0x7c
	adds r0, r6, r0
	lsls r2, r2, #2
	adds r1, r6, #0
	adds r1, #0x2c
	adds r1, r1, r2
	ldr r1, [r1]
	add r2, sb
	ldr r2, [r2]
	str r7, [sp]
	movs r3, #0
	bl sub_807C374
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _0807C15C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807C244
sub_807C244: @ 0x0807C244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov sl, r0
	ldr r0, _0807C2BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r6, #0
	movs r5, #0
_0807C26E:
	lsls r0, r5, #2
	ldr r1, [sp, #8]
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807C356
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C2CC
	ldr r0, [r4, #0x6c]
	cmp r0, sb
	bne _0807C2CC
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0807C2C0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r2, sl
	subs r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #1
	lsls r0, r5
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	b _0807C2CC
	.align 2, 0
_0807C2BC: .4byte gCurTask
_0807C2C0:
	ldr r0, [r4, #0x14]
	mov r1, sl
	subs r0, r0, r1
	ldr r2, _0807C31C @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x14]
_0807C2CC:
	ldr r1, [r4, #0x10]
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0807C2DA
	mov r2, r8
	subs r0, r2, r1
_0807C2DA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C356
	ldr r1, [r4, #0x14]
	subs r0, r1, r7
	cmp r0, #0
	bge _0807C2EA
	subs r0, r7, r1
_0807C2EA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C356
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0807C320
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0807C33C
	.align 2, 0
_0807C31C: .4byte 0xFFFFFE00
_0807C320:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807C33C
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807C33C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0807C356
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_0807C356:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0807C26E
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807C374
sub_807C374: @ 0x0807C374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov sl, r0
	ldr r0, _0807C434 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r6, #0
	movs r5, #0
_0807C39E:
	lsls r0, r5, #2
	ldr r1, [sp, #8]
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807C46E
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C3DC
	ldr r0, [r4, #0x6c]
	cmp r0, sb
	bne _0807C3DC
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	mov r2, sl
	cmp r2, #0
	beq _0807C3DC
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	subs r0, r0, r2
	str r0, [r4, #0x14]
_0807C3DC:
	ldr r1, [r4, #0x10]
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0807C3EA
	mov r2, r8
	subs r0, r2, r1
_0807C3EA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C46E
	ldr r1, [r4, #0x14]
	subs r0, r1, r7
	cmp r0, #0
	bge _0807C3FA
	subs r0, r7, r1
_0807C3FA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C46E
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0807C438
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #1
	lsls r0, r5
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	b _0807C454
	.align 2, 0
_0807C434: .4byte gCurTask
_0807C438:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807C454
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807C454:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0807C46E
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_0807C46E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0807C39E
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807C48C
sub_807C48C: @ 0x0807C48C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0807C514 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_0807C49E:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0807C504
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0807C4C8
	cmp r1, #8
	beq _0807C4C8
	cmp r1, #0x10
	bne _0807C504
_0807C4C8:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C504
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _0807C504
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Player_8005380
_0807C504:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0807C49E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C514: .4byte gCurTask

	thumb_func_start sub_807C518
sub_807C518: @ 0x0807C518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #3
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r0, r0, r5
	mov r8, r0
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r6, r5, r0
	movs r7, #0
_0807C540:
	lsls r0, r7, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807C5BA
	adds r0, r6, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r1, r8
	ldr r2, [r1, #4]
	adds r0, r2, r0
	ldr r1, [r4, #0x14]
	adds r3, r2, #0
	cmp r1, r0
	ble _0807C5BA
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C5A8
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807C594
	adds r0, #0x28
	cmp r1, r0
	beq _0807C594
	adds r0, #0x28
	cmp r1, r0
	beq _0807C594
	adds r0, #0x28
	cmp r1, r0
	bne _0807C5BA
_0807C594:
	mov r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	asrs r2, r3, #8
	str r4, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	b _0807C5BA
_0807C5A8:
	mov r0, r8
	ldr r1, [r0]
	asrs r1, r1, #8
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
_0807C5BA:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0807C540
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807C5D0
sub_807C5D0: @ 0x0807C5D0
	push {r4, r5, r6, lr}
	ldr r0, _0807C66C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
_0807C5E0:
	lsls r0, r6, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0807C600
	cmp r1, #8
	beq _0807C600
	cmp r1, #0x10
	bne _0807C65C
_0807C600:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _0807C65C
	ldr r2, [r4, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0807C65C
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807C65C
	adds r0, #0x28
	cmp r1, r0
	beq _0807C65C
	adds r0, #0x28
	cmp r1, r0
	beq _0807C65C
	adds r0, #0x28
	cmp r1, r0
	beq _0807C65C
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #4]
	str r3, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Player_8005380
_0807C65C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0807C5E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807C66C: .4byte gCurTask

	thumb_func_start sub_807C670
sub_807C670: @ 0x0807C670
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r1, _0807C6AC @ =gUnknown_080D5CA0
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r2, _0807C6B0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0807C6B4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807C6B8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r0, #0
	ldr r1, _0807C6BC @ =0x00002710
	bl __umodsi3
	adds r2, r0, #0
	ldr r0, _0807C6C0 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807C6C4
	ldrb r0, [r4]
	cmp r0, #4
	bhi _0807C6CC
	b _0807C6E4
	.align 2, 0
_0807C6AC: .4byte gUnknown_080D5CA0
_0807C6B0: .4byte gUnknown_03006868
_0807C6B4: .4byte 0x00196225
_0807C6B8: .4byte 0x3C6EF35F
_0807C6BC: .4byte 0x00002710
_0807C6C0: .4byte gStageData
_0807C6C4:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0807C6CC
	movs r5, #1
_0807C6CC:
	cmp r5, #0
	bne _0807C6E4
	ldrb r0, [r4, #0x12]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #1]
	ldrb r0, [r4, #0x12]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x12]
	b _0807C718
_0807C6E4:
	ldr r0, _0807C6F0 @ =0x000009C3
	cmp r2, r0
	bhi _0807C6F4
	movs r0, #1
	b _0807C716
	.align 2, 0
_0807C6F0: .4byte 0x000009C3
_0807C6F4:
	ldr r0, _0807C700 @ =0x00001387
	cmp r2, r0
	bhi _0807C704
	movs r0, #2
	b _0807C716
	.align 2, 0
_0807C700: .4byte 0x00001387
_0807C704:
	ldr r0, _0807C710 @ =0x00001D4B
	cmp r2, r0
	bhi _0807C714
	movs r0, #3
	b _0807C716
	.align 2, 0
_0807C710: .4byte 0x00001D4B
_0807C714:
	movs r0, #4
_0807C716:
	strb r0, [r4, #1]
_0807C718:
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_807C728
sub_807C728: @ 0x0807C728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r2, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _0807C7EC
	cmp r1, #0xa
	bgt _0807C746
	cmp r1, #0
	beq _0807C752
	b _0807C892
_0807C746:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807C750
	b _0807C86C
_0807C750:
	b _0807C892
_0807C752:
	movs r3, #0
	ldr r0, _0807C7DC @ =gUnknown_03006868
	mov sl, r0
	movs r1, #0xca
	lsls r1, r1, #1
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r7, r4, r2
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r6, r4, r0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r5, r4, r1
	adds r2, #0x90
	mov sb, r2
	mov r8, r3
_0807C778:
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r0, r4, r1
	add r0, sb
	mov r2, r8
	strh r2, [r0]
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r7]
	str r0, [r2]
	adds r1, r6, r1
	ldr r0, [r5]
	ldr r2, _0807C7E0 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0807C778
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0807C7E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807C7E8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	strb r0, [r4, #2]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	strh r1, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_807DB00
	b _0807C892
	.align 2, 0
_0807C7DC: .4byte gUnknown_03006868
_0807C7E0: .4byte 0xFFFFE000
_0807C7E4: .4byte 0x00196225
_0807C7E8: .4byte 0x3C6EF35F
_0807C7EC:
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0807C800
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C808
	b _0807C80C
_0807C800:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _0807C808
	movs r2, #1
_0807C808:
	cmp r2, #0
	beq _0807C842
_0807C80C:
	movs r3, #0
	movs r6, #0xd6
	lsls r6, r6, #1
	movs r5, #0xd4
	lsls r5, r5, #1
	movs r2, #0xef
_0807C818:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #1
	bne _0807C82C
	adds r0, r1, r5
	strh r2, [r0]
_0807C82C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0807C818
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807C892
_0807C842:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C892
	adds r0, r4, #0
	bl sub_807CD4C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807C866
	adds r0, r4, #0
	bl sub_807CDF0
	movs r0, #0x3c
	strh r0, [r4, #8]
	b _0807C892
_0807C866:
	movs r0, #1
	strh r0, [r4, #8]
	b _0807C892
_0807C86C:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C892
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807C892:
	adds r0, r4, #0
	bl sub_807CFAC
	adds r0, r4, #0
	bl sub_807CCA8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807C8AC
sub_807C8AC: @ 0x0807C8AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0x64
	beq _0807C960
	cmp r1, #0x64
	bgt _0807C8CE
	cmp r1, #0xa
	beq _0807C90C
	cmp r1, #0xa
	bgt _0807C8C8
	cmp r1, #0
	beq _0807C8EA
	b _0807C9B8
_0807C8C8:
	cmp r1, #0x14
	beq _0807C91E
	b _0807C9B8
_0807C8CE:
	movs r5, #0xfa
	lsls r5, r5, #1
	cmp r1, r5
	beq _0807C988
	cmp r1, r5
	bgt _0807C8E0
	cmp r1, #0xc8
	beq _0807C97A
	b _0807C9B8
_0807C8E0:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807C99E
	b _0807C9B8
_0807C8EA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_807DB00
	movs r0, #0xf0
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C90C:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C9B8
	movs r0, #0x14
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C91E:
	ldr r2, _0807C950 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0807C954 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807C958 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0807C95C @ =0x00002710
	bl __umodsi3
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #3]
	movs r0, #1
	strb r0, [r4, #2]
	ldrb r2, [r4, #3]
	adds r0, r4, #0
	movs r1, #1
	bl sub_807D8B4
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807C9B8
	.align 2, 0
_0807C950: .4byte gUnknown_03006868
_0807C954: .4byte 0x00196225
_0807C958: .4byte 0x3C6EF35F
_0807C95C: .4byte 0x00002710
_0807C960:
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807C9B8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc8
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C97A:
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl sub_807D8B4
	strh r5, [r4, #0xc]
	b _0807C9B8
_0807C988:
	adds r0, r4, #0
	movs r1, #1
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807C9B8
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C99E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807C9B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807C9C0
sub_807C9C0: @ 0x0807C9C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _0807CA00
	cmp r1, #0xa
	bgt _0807C9D4
	cmp r1, #0
	beq _0807C9DE
	b _0807CA30
_0807C9D4:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807CA16
	b _0807CA30
_0807C9DE:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_807DB00
	movs r0, #0
	movs r1, #1
	strh r1, [r4, #8]
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807CA30
_0807CA00:
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CA30
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807CA30
_0807CA16:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807CA30:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807CA38
sub_807CA38: @ 0x0807CA38
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0x6e
	beq _0807CB00
	cmp r1, #0x6e
	bgt _0807CA5A
	cmp r1, #0xa
	beq _0807CA9A
	cmp r1, #0xa
	bgt _0807CA54
	cmp r1, #0
	beq _0807CA78
	b _0807CB70
_0807CA54:
	cmp r1, #0x64
	beq _0807CAAA
	b _0807CB70
_0807CA5A:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807CB42
	cmp r1, r0
	bgt _0807CA6E
	subs r0, #0xa
	cmp r1, r0
	beq _0807CB32
	b _0807CB70
_0807CA6E:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807CB56
	b _0807CB70
_0807CA78:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_807DB00
	movs r0, #0
	movs r1, #1
	strh r1, [r4, #8]
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807CB70
_0807CA9A:
	adds r0, r4, #0
	movs r1, #2
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CB70
	b _0807CB1C
_0807CAAA:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807CABA
	movs r0, #0x6e
	strh r0, [r4, #0xc]
_0807CABA:
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0xa
	bne _0807CB70
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0807CAE4
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807CADC @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	cmp r0, #0x77
	bgt _0807CAE0
	movs r0, #0
	b _0807CAE2
	.align 2, 0
_0807CADC: .4byte gCamera
_0807CAE0:
	movs r0, #1
_0807CAE2:
	strb r0, [r4, #2]
_0807CAE4:
	ldr r0, _0807CAFC @ =gUnknown_080D5C78
	ldrb r1, [r4, #2]
	lsls r1, r1, #2
	ldrb r2, [r4, #0xe]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_807DA34
	b _0807CB70
	.align 2, 0
_0807CAFC: .4byte gUnknown_080D5C78
_0807CB00:
	adds r0, r4, #0
	movs r1, #2
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CB70
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0807CB26
_0807CB1C:
	movs r0, #0x1e
	strh r0, [r4, #8]
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807CB70
_0807CB26:
	movs r0, #0xff
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #8]
	b _0807CB70
_0807CB32:
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CB70
	b _0807CB4E
_0807CB42:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807CB70
_0807CB4E:
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807CB70
_0807CB56:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807CB70:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807CB78
sub_807CB78: @ 0x0807CB78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0807CB90
	cmp r0, #0xa
	ble _0807CBC2
	cmp r0, #0x14
	beq _0807CBC2
	cmp r0, #0x64
	beq _0807CBB6
	b _0807CBC2
_0807CB90:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807CBC2
	movs r0, #0x14
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xa
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xa
	bl sub_807DB00
	b _0807CBC2
_0807CBB6:
	movs r2, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	strb r2, [r4, #1]
_0807CBC2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_807CBC8
sub_807CBC8: @ 0x0807CBC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x74
	bl VramMalloc
	str r0, [r5, #0x18]
	str r0, [sp]
	movs r6, #0
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov r8, r1
	ldr r2, _0807CCA4 @ =gCamera
	mov sb, r2
_0807CBEE:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r3, #0xb2
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r5, r0
	ldr r7, [sp]
	str r7, [r0]
	movs r1, #0x9e
	lsls r1, r1, #3
	strh r1, [r0, #0xc]
	mov r1, sl
	strb r1, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	mov r2, r8
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, sl
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	lsls r4, r6, #3
	subs r4, r4, r6
	lsls r4, r4, #2
	movs r7, #0xca
	lsls r7, r7, #1
	adds r2, r5, r7
	adds r2, r2, r4
	movs r1, #0xcf
	lsls r1, r1, #0xb
	str r1, [r2]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r3, r5, r1
	adds r3, r3, r4
	movs r1, #0xb0
	lsls r1, r1, #9
	str r1, [r3]
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r7, sb
	ldr r2, [r7]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl UpdateSpriteAnimation
	adds r1, r5, r4
	movs r2, #0xd6
	lsls r2, r2, #1
	adds r0, r1, r2
	mov r3, r8
	strh r3, [r0]
	movs r7, #0xd7
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r0, #1
	strh r0, [r1]
	ldr r0, [sp]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0807CBEE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CCA4: .4byte gCamera

	thumb_func_start sub_807CCA8
sub_807CCA8: @ 0x0807CCA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	ldr r0, _0807CD28 @ =gCamera
	mov r8, r0
_0807CCB6:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r2, r0, #2
	adds r3, r6, r2
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD38
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r4, #0xb2
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r5, r6, r0
	subs r1, #0x18
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r4, r8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r2, #0xd7
	lsls r2, r2, #1
	adds r4, r3, r2
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0807CD2C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CD20
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807CD20:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0807CD38
	.align 2, 0
_0807CD28: .4byte gCamera
_0807CD2C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807CD38:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807CCB6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807CD4C
sub_807CD4C: @ 0x0807CD4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD7E
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD7E
	movs r3, #0xf2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD7E
	movs r0, #0
	b _0807CDE6
_0807CD7A:
	movs r7, #1
	b _0807CDE4
_0807CD7E:
	movs r5, #0
	ldr r6, _0807CDEC @ =0x000017FF
_0807CD82:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r3, r0, #2
	adds r0, r4, r3
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CDDA
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r0, r0, r3
	subs r2, #0x78
	adds r1, r4, r2
	ldr r2, [r0]
	ldr r0, [r1]
	subs r2, r2, r0
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r0, r0, r3
	ldr r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r1, r3
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bls _0807CD7A
_0807CDDA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0807CD82
_0807CDE4:
	adds r0, r7, #0
_0807CDE6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807CDEC: .4byte 0x000017FF

	thumb_func_start sub_807CDF0
sub_807CDF0: @ 0x0807CDF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	mov ip, r0
_0807CDFC:
	mov r2, ip
	lsls r1, r2, #3
	subs r0, r1, r2
	lsls r6, r0, #2
	adds r2, r5, r6
	movs r7, #0xd6
	lsls r7, r7, #1
	adds r3, r2, r7
	ldrh r4, [r3]
	adds r7, r1, #0
	cmp r4, #0
	beq _0807CE16
	b _0807CF86
_0807CE16:
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r4, [r0]
	movs r3, #0xd7
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r5, r0
	adds r1, r1, r6
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1]
	subs r3, #0x16
	adds r1, r5, r3
	adds r1, r1, r6
	adds r2, #4
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, _0807CE78 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r1]
	ldr r2, _0807CE7C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0807CE80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807CE84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0807CE88 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r0, r0, #0x17
	cmp r0, #7
	bhi _0807CEE4
	lsls r0, r0, #2
	ldr r1, _0807CE8C @ =_0807CE90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807CE78: .4byte 0xFFFFE000
_0807CE7C: .4byte gUnknown_03006868
_0807CE80: .4byte 0x00196225
_0807CE84: .4byte 0x3C6EF35F
_0807CE88: .4byte 0x000003FF
_0807CE8C: .4byte _0807CE90
_0807CE90: @ jump table
	.4byte _0807CEB0 @ case 0
	.4byte _0807CEC2 @ case 1
	.4byte _0807CED0 @ case 2
	.4byte _0807CEB0 @ case 3
	.4byte _0807CEB0 @ case 4
	.4byte _0807CEC2 @ case 5
	.4byte _0807CED0 @ case 6
	.4byte _0807CEB0 @ case 7
_0807CEB0:
	mov r3, ip
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xd5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r2, [r0]
	b _0807CEE4
_0807CEC2:
	mov r3, ip
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r2, #0
	subs r1, #0x80
	b _0807CEDC
_0807CED0:
	mov r3, ip
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r2, #0
	adds r1, #0x80
_0807CEDC:
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r1, [r0]
_0807CEE4:
	mov r3, ip
	subs r0, r7, r3
	lsls r2, r0, #2
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r6, r0, r2
	ldr r1, _0807CFA0 @ =gUnknown_080D5C50
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r6]
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r4, r0, r2
	ldr r7, _0807CFA4 @ =gSineTable
	mov r8, r7
	adds r0, r5, r2
	movs r7, #0xd5
	lsls r7, r7, #1
	adds r3, r0, r7
	ldrh r0, [r3]
	subs r7, #0xaa
	adds r0, r0, r7
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807CF2A
	ldr r1, _0807CFA8 @ =0x00003FFF
	adds r0, r0, r1
_0807CF2A:
	asrs r0, r0, #0xe
	str r0, [r4]
	movs r7, #0xd0
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r2, r0, r2
	ldrh r0, [r3]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r6]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807CF4C
	ldr r7, _0807CFA8 @ =0x00003FFF
	adds r0, r0, r7
_0807CF4C:
	asrs r0, r0, #0xe
	str r0, [r2]
	mov r1, ip
	lsls r0, r1, #2
	add r0, ip
	lsls r0, r0, #3
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	movs r4, #0
	movs r1, #0x9e
	lsls r1, r1, #3
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_80BA57C
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0807CF82
	strb r4, [r5, #0x10]
_0807CF82:
	movs r3, #3
	mov ip, r3
_0807CF86:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #2
	bhi _0807CF96
	b _0807CDFC
_0807CF96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CFA0: .4byte gUnknown_080D5C50
_0807CFA4: .4byte gSineTable
_0807CFA8: .4byte 0x00003FFF

	thumb_func_start sub_807CFAC
sub_807CFAC: @ 0x0807CFAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #4]
_0807CFBE:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r7, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #3
	ldr r3, [sp, #4]
	subs r0, r1, r3
	lsls r4, r0, #2
	adds r5, r7, r4
	mov r8, r5
	movs r3, #0xd6
	lsls r3, r3, #1
	add r3, r8
	ldrh r5, [r3]
	str r1, [sp, #0x14]
	cmp r5, #1
	beq _0807D002
	ldr r6, [sp, #4]
	adds r6, #1
	cmp r5, #1
	bgt _0807CFF4
	b _0807D286
_0807CFF4:
	cmp r5, #0x64
	bne _0807CFFA
	b _0807D1F6
_0807CFFA:
	cmp r5, #0x6e
	bne _0807D000
	b _0807D270
_0807D000:
	b _0807D286
_0807D002:
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r0, r0, r4
	mov sl, r0
	ldr r3, [r0]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r6, r0, r4
	ldr r0, [r6]
	mov sb, r0
	adds r1, #8
	adds r0, r7, r1
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, r3, r0
	mov r2, sl
	str r0, [r2]
	adds r1, #4
	adds r0, r7, r1
	adds r0, r0, r4
	ldr r1, [r6]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	str r3, [sp, #0x18]
	bl sub_807D41C
	mov r2, sl
	ldr r0, [r2]
	ldr r3, [sp, #0x18]
	subs r3, r3, r0
	ldr r1, [r6]
	mov r0, sb
	subs r0, r0, r1
	mov sb, r0
	ldr r0, [sp, #0x10]
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	movs r2, #0xca
	lsls r2, r2, #1
	adds r1, r4, r2
	adds r1, r7, r1
	adds r0, r7, #0
	str r3, [sp, #0x18]
	bl sub_807D37C
	movs r0, #0xd7
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r3, [sp, #0x18]
	cmp r0, #0
	bne _0807D13C
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r6]
	mov r0, sb
	str r0, [sp]
	ldr r0, [sp, #0x10]
	bl sub_807C244
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r4, [r7, #0x20]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D0EE
	ldr r1, [sp, #8]
	ands r5, r1
	cmp r5, #0
	beq _0807D0CC
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r0, #0x20
	bgt _0807D0EE
	adds r0, r4, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0807D0EE
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807D0EE
	adds r0, r4, #0
	bl sub_80213F0
	b _0807D0EE
_0807D0CC:
	ldr r0, [r4, #0x14]
	ldr r3, [sp, #0xc]
	cmp r0, r3
	ble _0807D0EE
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807D0EE
	mov r5, sl
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r6]
	asrs r2, r2, #8
	str r4, [sp]
	ldr r0, [sp, #0x10]
	movs r3, #0
	bl sub_8020CE0
_0807D0EE:
	ldr r4, [r7, #0x24]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D13C
	movs r0, #2
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	bne _0807D13C
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	ble _0807D13C
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807D13C
	ldr r3, [sp, #0x14]
	ldr r5, [sp, #4]
	subs r2, r3, r5
	lsls r2, r2, #2
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r2, r2, #8
	str r4, [sp]
	ldr r0, [sp, #0x10]
	movs r3, #0
	bl sub_8020CE0
_0807D13C:
	ldr r5, [sp, #0x14]
	ldr r1, [sp, #4]
	subs r0, r5, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0807D1B2
	adds r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	beq _0807D1B2
	cmp r0, #0xf0
	bne _0807D1B2
	movs r0, #1
	ldr r5, [sp, #8]
	ands r0, r5
	cmp r0, #0
	beq _0807D182
	ldr r4, [r7, #0x20]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D182
	adds r0, r4, #0
	bl sub_80213F0
_0807D182:
	movs r0, #2
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	beq _0807D19E
	ldr r4, [r7, #0x24]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D19E
	adds r0, r4, #0
	bl sub_80213F0
_0807D19E:
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r5, #0xd6
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #0x64
	strh r1, [r0]
_0807D1B2:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0807D1DA
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #4]
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r6, r2, #0
	adds r6, #1
	cmp r0, #0
	bne _0807D286
	movs r0, #1
	strh r0, [r1]
	b _0807D286
_0807D1DA:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #4]
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r0, r0, r3
	mov r5, sp
	ldrh r5, [r5, #8]
	strh r5, [r0]
	adds r6, r2, #0
	adds r6, #1
	b _0807D286
_0807D1F6:
	movs r1, #0xd4
	lsls r1, r1, #1
	add r1, r8
	movs r4, #0
	movs r2, #0
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0x6e
	strh r0, [r3]
	movs r0, #0xd7
	lsls r0, r0, #1
	add r0, r8
	strh r2, [r0]
	ldr r0, _0807D268 @ =0x00000239
	bl sub_80BA57C
	ldr r0, _0807D26C @ =0x000004F6
	ldr r1, [sp, #0x10]
	strh r0, [r1, #0xc]
	strb r4, [r1, #0x1a]
	movs r2, #0
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x20
	movs r3, #0x20
	mov r8, r3
	movs r5, #0x21
	rsbs r5, r5, #0
	mov sb, r5
	movs r3, #0
_0807D232:
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	beq _0807D256
	ldr r0, [r4, #0x6c]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bne _0807D256
	mov r0, sb
	ands r1, r0
	str r1, [r4, #4]
	str r3, [r4, #0x6c]
_0807D256:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #1
	bls _0807D232
	b _0807D286
	.align 2, 0
_0807D268: .4byte 0x00000239
_0807D26C: .4byte 0x000004F6
_0807D270:
	movs r1, #0xd4
	lsls r1, r1, #1
	add r1, r8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807D286
	strh r0, [r3]
_0807D286:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #2
	bhi _0807D292
	b _0807CFBE
_0807D292:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807D2A4
sub_807D2A4: @ 0x0807D2A4
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	ldrh r2, [r3, #0x16]
	cmp r1, #1
	beq _0807D2E2
	cmp r1, #1
	bgt _0807D2BE
	cmp r1, #0
	beq _0807D2C8
	b _0807D328
_0807D2BE:
	cmp r0, #2
	beq _0807D2F4
	cmp r0, #3
	beq _0807D308
	b _0807D328
_0807D2C8:
	ldr r0, _0807D2D8 @ =0x000002FF
	cmp r2, r0
	bls _0807D2DC
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
	.align 2, 0
_0807D2D8: .4byte 0x000002FF
_0807D2DC:
	movs r4, #0x80
	lsls r4, r4, #3
	b _0807D320
_0807D2E2:
	cmp r2, #0xff
	bls _0807D2EE
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
_0807D2EE:
	movs r4, #0x80
	lsls r4, r4, #3
	b _0807D320
_0807D2F4:
	ldr r0, _0807D304 @ =0x000001FF
	cmp r2, r0
	bls _0807D31C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
	.align 2, 0
_0807D304: .4byte 0x000001FF
_0807D308:
	ldr r0, _0807D318 @ =0x000002FF
	cmp r2, r0
	bls _0807D31C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
	.align 2, 0
_0807D318: .4byte 0x000002FF
_0807D31C:
	movs r4, #0x80
	lsls r4, r4, #2
_0807D320:
	adds r0, r4, #0
_0807D322:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0807D328:
	ldr r0, _0807D370 @ =0x000003FF
	ands r2, r0
	strh r2, [r3, #0x16]
	ldr r2, _0807D374 @ =gSineTable
	ldrh r0, [r3, #0x16]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, [r3, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D34C
	ldr r4, _0807D378 @ =0x00003FFF
	adds r0, r0, r4
_0807D34C:
	asrs r0, r0, #0xe
	str r0, [r3, #8]
	ldrh r0, [r3, #0x16]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D364
	ldr r4, _0807D378 @ =0x00003FFF
	adds r0, r0, r4
_0807D364:
	asrs r0, r0, #0xe
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807D370: .4byte 0x000003FF
_0807D374: .4byte gSineTable
_0807D378: .4byte 0x00003FFF

	thumb_func_start sub_807D37C
sub_807D37C: @ 0x0807D37C
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r5, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r2, _0807D400 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bgt _0807D3B4
	ldrh r1, [r4, #0x16]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bls _0807D3B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D2A4
	movs r5, #1
_0807D3B4:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbf
	ble _0807D3D8
	ldrh r1, [r4, #0x16]
	ldr r0, _0807D404 @ =0x000001FF
	cmp r1, r0
	bhi _0807D3D8
	cmp r5, #0
	bne _0807D40C
	adds r0, r4, #0
	movs r1, #1
	bl sub_807D2A4
	movs r5, #2
_0807D3D8:
	cmp r5, #0
	bne _0807D40C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	bgt _0807D3F6
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0807D3F6
	ldr r0, _0807D408 @ =0x00000103
	cmp r1, r0
	ble _0807D414
_0807D3F6:
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r5, #3
	b _0807D414
	.align 2, 0
_0807D400: .4byte gCamera
_0807D404: .4byte 0x000001FF
_0807D408: .4byte 0x00000103
_0807D40C:
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_80BA57C
_0807D414:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_807D41C
sub_807D41C: @ 0x0807D41C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r7, #0
	ldr r1, _0807D458 @ =gUnknown_080D5CA4
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r1, [sp, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #4]
	adds r5, r3, r0
	adds r0, r1, #0
	add r0, sp
	ldrb r0, [r0]
	b _0807D5DC
	.align 2, 0
_0807D458: .4byte gUnknown_080D5CA4
_0807D45C:
	ldr r0, [sp, #8]
	cmp sb, r0
	bne _0807D464
	b _0807D5D4
_0807D464:
	mov r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #4]
	adds r4, r3, r0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _0807D47E
	b _0807D5D4
_0807D47E:
	ldr r1, [r5]
	ldr r0, [r4]
	subs r1, r1, r0
	mov ip, r1
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	subs r6, r1, r0
	mov r1, ip
	mov r0, ip
	muls r0, r1, r0
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D4A6
	b _0807D5D4
_0807D4A6:
	ldr r1, [r5]
	ldr r0, [r4]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	ldr r2, [r4, #4]
	subs r0, r0, r2
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	strh r0, [r5, #0x16]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, _0807D604 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5]
	ldr r1, [r4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov ip, r0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r6, r0, #1
	ldr r7, _0807D608 @ =gSineTable
	ldrh r3, [r5, #0x16]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0xb
	mov r8, r2
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D50C
	adds r0, #0x3f
_0807D50C:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D522
	adds r0, #0x3f
_0807D522:
	asrs r1, r0, #6
	mov r3, ip
	adds r0, r3, r2
	str r0, [r5]
	adds r0, r6, r1
	str r0, [r5, #4]
	ldrh r3, [r5, #0x16]
	mov r1, sl
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [r5, #0x10]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807D548
	ldr r1, _0807D60C @ =0x00003FFF
	adds r0, r0, r1
_0807D548:
	asrs r0, r0, #0xe
	str r0, [r5, #8]
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807D55E
	ldr r1, _0807D60C @ =0x00003FFF
	adds r0, r0, r1
_0807D55E:
	asrs r0, r0, #0xe
	str r0, [r5, #0xc]
	ldrh r3, [r4, #0x16]
	mov r2, sl
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _0807D57C
	adds r0, #0x3f
_0807D57C:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D592
	adds r0, #0x3f
_0807D592:
	asrs r1, r0, #6
	mov r3, ip
	adds r0, r3, r2
	str r0, [r4]
	adds r0, r6, r1
	str r0, [r4, #4]
	ldrh r2, [r4, #0x16]
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, [r4, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D5B8
	ldr r3, _0807D60C @ =0x00003FFF
	adds r0, r0, r3
_0807D5B8:
	asrs r0, r0, #0xe
	str r0, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D5CE
	ldr r3, _0807D60C @ =0x00003FFF
	adds r0, r0, r3
_0807D5CE:
	asrs r0, r0, #0xe
	str r0, [r4, #0xc]
	movs r7, #1
_0807D5D4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0807D5DC:
	mov sb, r0
	cmp r0, #2
	bhi _0807D5E4
	b _0807D45C
_0807D5E4:
	cmp r7, #0
	beq _0807D5F0
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_80BA57C
_0807D5F0:
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D604: .4byte 0x000003FF
_0807D608: .4byte gSineTable
_0807D60C: .4byte 0x00003FFF

	thumb_func_start sub_807D610
sub_807D610: @ 0x0807D610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	movs r7, #0
	movs r2, #0
	movs r1, #0xca
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r3, #0xd5
	lsls r3, r3, #1
	mov r8, r3
	movs r6, #0x80
	mov ip, r6
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
_0807D640:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #2
	ldr r6, [sp]
	adds r1, r6, r3
	movs r6, #0xd6
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807D6A4
	mov r0, sb
	cmp r0, #0
	bne _0807D680
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, r5
	bgt _0807D6A4
	mov r3, r8
	adds r0, r1, r3
	ldrh r0, [r0]
	subs r6, #0xac
	cmp r0, r6
	bls _0807D6A4
	ldr r1, _0807D67C @ =0x000002FF
	cmp r0, r1
	bhi _0807D6A4
	mov r7, ip
	orrs r7, r2
	b _0807D6A2
	.align 2, 0
_0807D67C: .4byte 0x000002FF
_0807D680:
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, r5
	blt _0807D6A4
	add r1, r8
	ldr r3, _0807D6C0 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bls _0807D6A4
	mov r6, ip
	orrs r2, r6
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
_0807D6A2:
	movs r2, #3
_0807D6A4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0807D640
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D6C0: .4byte 0xFFFFFF00

	thumb_func_start sub_807D6C4
sub_807D6C4: @ 0x0807D6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r5, #0xa2
	lsls r5, r5, #1
	add r5, sl
	ldr r0, _0807D804 @ =0x0005C400
	str r0, [r5]
	movs r6, #0xa4
	lsls r6, r6, #1
	add r6, sl
	movs r4, #0x98
	lsls r4, r4, #8
	str r4, [r6]
	mov r0, sl
	movs r1, #0
	movs r2, #0
	bl sub_807DB00
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	ldr r0, _0807D808 @ =0x00072C00
	mov r1, sb
	str r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	mov r8, r0
	str r4, [r0]
	mov r0, sl
	movs r1, #1
	movs r2, #0
	bl sub_807DB00
	movs r7, #0x9e
	lsls r7, r7, #2
	add r7, sl
	movs r2, #0xd0
	lsls r2, r2, #2
	add r2, sl
	movs r0, #0x40
	str r2, [sp]
	bl VramMalloc
	str r0, [r7]
	ldr r1, _0807D80C @ =0x000004F1
	strh r1, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	adds r1, #0xf
	strh r1, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	ldr r0, _0807D810 @ =0x0000106A
	str r0, [r7, #8]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r5, _0807D814 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	ldr r2, [sp]
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r2, #2]
	strh r4, [r2, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xa8
	lsls r7, r7, #2
	add r7, sl
	movs r2, #0xd3
	lsls r2, r2, #2
	add r2, sl
	movs r0, #0x40
	str r2, [sp]
	bl VramMalloc
	str r0, [r7]
	ldr r1, _0807D80C @ =0x000004F1
	strh r1, [r7, #0xc]
	movs r0, #6
	strb r0, [r7, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r1, #0
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	ldr r0, _0807D818 @ =0x0000106B
	str r0, [r7, #8]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	ldr r2, [sp]
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	strh r4, [r2, #2]
	strh r4, [r2, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D804: .4byte 0x0005C400
_0807D808: .4byte 0x00072C00
_0807D80C: .4byte 0x000004F1
_0807D810: .4byte 0x0000106A
_0807D814: .4byte gCamera
_0807D818: .4byte 0x0000106B

	thumb_func_start sub_807D81C
sub_807D81C: @ 0x0807D81C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r5, r6, r0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	ldr r4, _0807D8B0 @ =gCamera
	ldr r0, [r4]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	adds r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	strh r2, [r3, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r3, #8]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_80BF8F4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r5, r6, r0
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	ldr r0, [r4]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	adds r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	strh r2, [r3, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r3, #8]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_80BF8F4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807D8B0: .4byte gCamera

	thumb_func_start sub_807D8B4
sub_807D8B4: @ 0x0807D8B4
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	cmp r0, #1
	beq _0807D910
	cmp r0, #1
	bgt _0807D8D2
	cmp r0, #0
	beq _0807D8DC
	b _0807D9AC
_0807D8D2:
	cmp r4, #0xa
	beq _0807D978
	cmp r4, #0x14
	beq _0807D998
	b _0807D9AC
_0807D8DC:
	cmp r1, #1
	bhi _0807D8F8
	movs r0, #0x80
	movs r4, #0xaf
	lsls r4, r4, #1
	adds r2, r3, r4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0xc1
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807D9AA
_0807D8F8:
	movs r0, #0x80
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r2, r3, r4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807D9AA
_0807D910:
	cmp r1, #1
	beq _0807D93A
	cmp r1, #1
	bgt _0807D91E
	cmp r1, #0
	beq _0807D928
	b _0807D9AC
_0807D91E:
	cmp r2, #2
	beq _0807D94C
	cmp r2, #3
	beq _0807D962
	b _0807D9AC
_0807D928:
	movs r2, #0xaf
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r0, #0x80
	strb r0, [r1]
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r1, r3, r4
	b _0807D95C
_0807D93A:
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0x80
	strb r0, [r1]
	movs r2, #0xc3
	lsls r2, r2, #1
	adds r1, r3, r2
	b _0807D972
_0807D94C:
	movs r4, #0xaf
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0x81
	strb r0, [r1]
	movs r0, #0xc3
	lsls r0, r0, #1
	adds r1, r3, r0
_0807D95C:
	movs r0, #0x82
	strb r0, [r1]
	b _0807D9AC
_0807D962:
	movs r2, #0xaf
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r0, #0x81
	strb r0, [r1]
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r1, r3, r4
_0807D972:
	movs r0, #0x83
	strb r0, [r1]
	b _0807D9AC
_0807D978:
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	movs r2, #0xc3
	lsls r2, r2, #1
	adds r1, r3, r2
	strb r0, [r1]
	movs r4, #0xad
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0x14
	strh r0, [r1]
	subs r2, #4
	b _0807D9A8
_0807D998:
	movs r4, #0xad
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	movs r2, #0xc1
	lsls r2, r2, #1
_0807D9A8:
	adds r1, r3, r2
_0807D9AA:
	strh r0, [r1]
_0807D9AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807D9B4
sub_807D9B4: @ 0x0807D9B4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r3, #0
	cmp r1, #1
	beq _0807D9F2
	cmp r1, #1
	bgt _0807D9CE
	cmp r1, #0
	beq _0807D9D4
	b _0807DA2A
_0807D9CE:
	cmp r0, #2
	beq _0807DA10
	b _0807DA2A
_0807D9D4:
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807DA2A
	movs r4, #0xc1
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _0807DA2A
	b _0807DA28
_0807D9F2:
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807DA2A
	movs r4, #0xc1
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _0807DA2A
	b _0807DA28
_0807DA10:
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0x6e
	bne _0807DA2A
	movs r4, #0xc1
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #0x6e
	bne _0807DA2A
_0807DA28:
	movs r3, #1
_0807DA2A:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807DA34
sub_807DA34: @ 0x0807DA34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r7, r1, #0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r6, r2, r0
	ldr r4, [r2, #0x20]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0807DAE4 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0807DAE8 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r5, sp
	ldr r0, [sp, #4]
	ands r0, r3
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sub_80B1608
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r6, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	str r0, [r6, #0xc]
	ldr r2, [r4, #0x10]
	ldr r0, [r6]
	subs r2, r2, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r6, #4]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0x24]
	asrs r0, r0, #4
	str r0, [r6, #0x1c]
	movs r0, #0
	str r0, [r6, #0x20]
	movs r0, #0xa
	strh r0, [r6, #0x14]
	movs r0, #0xc8
	strh r0, [r6, #0x16]
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, r8
	cmp r7, #0
	beq _0807DAEC
	movs r0, #0x98
	lsls r0, r0, #3
	b _0807DAF0
	.align 2, 0
_0807DAE4: .4byte 0xFFFF0000
_0807DAE8: .4byte 0x0000FFFF
_0807DAEC:
	movs r0, #0xa0
	lsls r0, r0, #3
_0807DAF0:
	strh r0, [r1, #0x14]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807DB00
sub_807DB00: @ 0x0807DB00
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r3, r3, r1
	lsls r3, r3, #3
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r0, r4
	adds r1, r1, r3
	movs r4, #0
	str r4, [r1]
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r0, r5
	adds r1, r1, r3
	str r4, [r1]
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0xac
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0
	movs r5, #1
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	strh r4, [r0]
	movs r0, #0xae
	lsls r0, r0, #1
	add r0, ip
	strb r2, [r0]
	ldr r0, _0807DB58 @ =0x0000015D
	add r0, ip
	strb r3, [r0]
	ldr r0, _0807DB5C @ =0x00000157
	add r0, ip
	strb r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807DB58: .4byte 0x0000015D
_0807DB5C: .4byte 0x00000157

	thumb_func_start sub_807DB60
sub_807DB60: @ 0x0807DB60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	str r0, [sp, #4]
_0807DB72:
	movs r2, #0
	mov r1, r8
	strb r2, [r1, #0x11]
	ldr r3, [sp, #4]
	lsls r5, r3, #2
	adds r0, r5, r3
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r6, r2, r0
	ldr r4, _0807DBEC @ =gUnknown_08E2ED18
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	mov r0, r8
	adds r1, r3, #0
	bl _call_via_r2
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0807DBF0 @ =sub_807E214
	str r5, [sp, #0x10]
	cmp r1, r0
	bne _0807DBC2
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	beq _0807DBC2
	mov r3, r8
	ldr r0, [r3, #0x20]
	ldr r1, [r0]
	ldr r0, _0807DBF4 @ =sub_8081A3C
	cmp r1, r0
	beq _0807DBC2
	movs r0, #0
	strb r0, [r6, #0x1b]
_0807DBC2:
	ldrb r0, [r6, #0x13]
	ldr r1, [sp, #4]
	lsls r1, r1, #1
	str r1, [sp, #0xc]
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _0807DC92
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807DC92
	ldrb r0, [r3, #0x11]
	cmp r0, #0
	beq _0807DBF8
	mov r0, r8
	ldr r1, [sp, #4]
	bl sub_807C518
	b _0807DC92
	.align 2, 0
_0807DBEC: .4byte gUnknown_08E2ED18
_0807DBF0: .4byte sub_807E214
_0807DBF4: .4byte sub_8081A3C
_0807DBF8:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #3
	mov r3, r8
	adds r7, r0, r3
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r1, [r6]
	mov sl, r1
	ldr r6, [r6, #4]
	ldr r0, _0807DC70 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r0, r2
	movs r3, #0
	mov sb, r3
_0807DC20:
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807DC84
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807DC74
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	bne _0807DC84
_0807DC5C:
	str r4, [sp]
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #8
	asrs r2, r6, #8
	movs r3, #0
	bl sub_8020CE0
	b _0807DC84
	.align 2, 0
_0807DC70: .4byte gCurTask
_0807DC74:
	str r4, [sp]
	adds r0, r7, #0
	mov r3, sl
	asrs r1, r3, #8
	asrs r2, r6, #8
	movs r3, #0
	bl sub_8020CE0
_0807DC84:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _0807DC20
_0807DC92:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #3
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r0, r3
	add r0, r8
	ldr r3, [sp, #0xc]
	adds r1, r3, r2
	lsls r1, r1, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r1, r1, r2
	add r1, r8
	movs r2, #0
	ldr r3, [sp, #4]
	bl sub_807F334
	ldr r3, [sp, #8]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #1
	bhi _0807DCC6
	b _0807DB72
_0807DCC6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807DCD8
sub_807DCD8: @ 0x0807DCD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r4, r2, r0
	movs r3, #0
	mov r8, r3
	ldrh r0, [r4, #0x16]
	cmp r0, #0xa
	beq _0807DD3C
	cmp r0, #0xa
	bgt _0807DD06
	cmp r0, #0
	beq _0807DD0C
	b _0807DE14
_0807DD06:
	cmp r0, #0x14
	beq _0807DE04
	b _0807DE14
_0807DD0C:
	cmp r7, #0
	bne _0807DD1A
	ldr r0, [r4]
	movs r6, #0xc8
	lsls r6, r6, #6
	adds r1, r0, r6
	b _0807DD20
_0807DD1A:
	ldr r0, [r4]
	ldr r3, _0807DD38 @ =0xFFFFCE00
	adds r1, r0, r3
_0807DD20:
	adds r0, r2, #0
	adds r2, r7, #0
	bl sub_807D610
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0807DE14
	strb r3, [r4, #0x19]
	movs r0, #0xa
	b _0807DE12
	.align 2, 0
_0807DD38: .4byte 0xFFFFCE00
_0807DD3C:
	ldrb r0, [r4, #0x19]
	movs r3, #0x7f
	ands r3, r0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r1, r0, #2
	adds r0, r2, r1
	movs r6, #0xd6
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807DD62
	mov r0, r8
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x14
	b _0807DE12
_0807DD62:
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _0807DD7E
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r0, r5
	adds r1, #0xb0
	b _0807DD88
_0807DD7E:
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r0, r0, r5
	ldr r1, _0807DE00 @ =0xFFFFFE00
_0807DD88:
	str r1, [r0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r6, r1, r0
	str r6, [r4, #4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	movs r0, #0xca
	lsls r0, r0, #1
	mov ip, r0
	adds r0, r2, r0
	adds r0, r0, r5
	ldr r1, [r4]
	ldr r0, [r0]
	subs r3, r1, r0
	adds r0, r3, #0
	cmp r3, #0
	bge _0807DDB0
	rsbs r0, r3, #0
_0807DDB0:
	asrs r3, r0, #8
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r0, [r0]
	subs r1, r6, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807DDC6
	rsbs r0, r1, #0
_0807DDC6:
	asrs r1, r0, #8
	cmp r3, #0xf
	bgt _0807DDE4
	cmp r1, #0x1f
	bgt _0807DDE4
	mov r3, ip
	adds r0, r5, r3
	adds r0, r2, r0
	adds r1, r7, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_807D2A4
	movs r6, #1
	mov r8, r6
_0807DDE4:
	mov r0, r8
	cmp r0, #0
	beq _0807DE14
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_80BA57C
	movs r0, #0
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x14
	b _0807DE12
	.align 2, 0
_0807DE00: .4byte 0xFFFFFE00
_0807DE04:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807DE14
_0807DE12:
	strh r0, [r4, #0x16]
_0807DE14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807DE20
sub_807DE20: @ 0x0807DE20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	mov sb, r0
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sb
	adds r5, r7, r0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sb
	adds r0, r0, r7
	mov r8, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r7, r0
	movs r4, #0
	mov sl, r4
	ldrh r6, [r5, #0x16]
	cmp r6, #0x78
	bne _0807DE66
	b _0807E0D2
_0807DE66:
	cmp r6, #0x78
	bgt _0807DE96
	cmp r6, #0x14
	beq _0807DF50
	cmp r6, #0x14
	bgt _0807DE7C
	cmp r6, #0
	beq _0807DEDC
	cmp r6, #0xa
	beq _0807DEEC
	b _0807E200
_0807DE7C:
	cmp r6, #0x64
	bne _0807DE82
	b _0807DFEE
_0807DE82:
	cmp r6, #0x64
	bgt _0807DE8E
	cmp r6, #0x1e
	bne _0807DE8C
	b _0807DFDC
_0807DE8C:
	b _0807E200
_0807DE8E:
	cmp r6, #0x6e
	bne _0807DE94
	b _0807E0B0
_0807DE94:
	b _0807E200
_0807DE96:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DEA0
	b _0807E19C
_0807DEA0:
	cmp r6, r0
	bgt _0807DEC2
	cmp r6, #0xd2
	bne _0807DEAA
	b _0807E170
_0807DEAA:
	cmp r6, #0xd2
	bgt _0807DEB6
	cmp r6, #0xc8
	bne _0807DEB4
	b _0807E124
_0807DEB4:
	b _0807E200
_0807DEB6:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DEC0
	b _0807E182
_0807DEC0:
	b _0807E200
_0807DEC2:
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DECC
	b _0807E200
_0807DECC:
	cmp r6, r0
	ble _0807DED2
	b _0807E200
_0807DED2:
	subs r0, #0x1e
	cmp r6, r0
	bne _0807DEDA
	b _0807E1D0
_0807DEDA:
	b _0807E200
_0807DEDC:
	ldr r0, _0807DEE8 @ =0xFFFFFE00
	str r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	movs r0, #0xa
	b _0807E1FE
	.align 2, 0
_0807DEE8: .4byte 0xFFFFFE00
_0807DEEC:
	cmp r3, #0
	bne _0807DF00
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807DF16
	adds r0, r1, #0
	adds r0, #0x10
	b _0807DF0E
_0807DF00:
	ldrh r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807DF16
	adds r0, r1, #0
	subs r0, #0x10
_0807DF0E:
	ldr r4, _0807DF3C @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
_0807DF16:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r4, _0807DF40 @ =0xFFFFC000
	adds r2, r0, r4
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r0, r2
	ble _0807DF30
	b _0807E200
_0807DF30:
	cmp r3, #0
	bne _0807DF44
	movs r0, #0x80
	lsls r0, r0, #2
	b _0807DF46
	.align 2, 0
_0807DF3C: .4byte 0x000003FF
_0807DF40: .4byte 0xFFFFC000
_0807DF44:
	ldr r0, _0807DF4C @ =0xFFFFFE00
_0807DF46:
	str r0, [r5, #8]
	movs r0, #0x14
	b _0807E1FE
	.align 2, 0
_0807DF4C: .4byte 0xFFFFFE00
_0807DF50:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r2, r0, r1
	str r2, [r5]
	cmp r3, #0
	bne _0807DF78
	cmp r1, #0
	blt _0807DF70
	ldr r0, _0807DF6C @ =0x000667FF
	cmp r2, r0
	ble _0807DF9A
	adds r0, #1
	b _0807DF94
	.align 2, 0
_0807DF6C: .4byte 0x000667FF
_0807DF70:
	ldr r0, _0807DF74 @ =0x00061400
	b _0807DF90
	.align 2, 0
_0807DF74: .4byte 0x00061400
_0807DF78:
	cmp r1, #0
	blt _0807DF8C
	ldr r0, _0807DF88 @ =0x0006DBFF
	cmp r2, r0
	ble _0807DF9A
	adds r0, #1
	b _0807DF94
	.align 2, 0
_0807DF88: .4byte 0x0006DBFF
_0807DF8C:
	movs r0, #0xd1
	lsls r0, r0, #0xb
_0807DF90:
	cmp r2, r0
	bgt _0807DF9A
_0807DF94:
	str r0, [r5]
	rsbs r0, r1, #0
	str r0, [r5, #8]
_0807DF9A:
	ldrb r2, [r5, #0x1a]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0807DFA6
	b _0807E200
_0807DFA6:
	movs r1, #0x7f
	ands r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r5]
	subs r2, r1, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _0807DFC4
	rsbs r0, r2, #0
_0807DFC4:
	asrs r2, r0, #8
	cmp r2, #1
	ble _0807DFCC
	b _0807E200
_0807DFCC:
	str r1, [r5]
	movs r0, #0x1e
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [r5, #0xc]
	b _0807E200
_0807DFDC:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DFEA
	b _0807E200
_0807DFEA:
	movs r0, #0x64
	b _0807E1FE
_0807DFEE:
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r0, r4, r0
	str r0, [r5, #4]
	subs r4, r4, r0
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldr r1, [r5]
	ldr r2, [r5, #4]
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_807C244
	movs r0, #1
	strb r0, [r7, #0x11]
	ldrb r0, [r5, #0x1a]
	movs r1, #0x7f
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r2, r0, #2
	adds r0, r7, #0
	adds r0, #0x38
	adds r3, r0, r2
	ldr r0, [r3]
	cmp r0, #0
	bgt _0807E064
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r7, r0
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807E048
	rsbs r0, r1, #0
_0807E048:
	asrs r1, r0, #8
	cmp r1, #0x13
	bgt _0807E064
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	add r0, sb
	ldr r0, [r0]
	str r0, [r3]
	adds r0, r7, r2
	strh r6, [r0, #0x3e]
	ldr r0, _0807E094 @ =0x0000023A
	bl sub_80BA57C
_0807E064:
	ldr r1, [r5, #4]
	ldr r0, _0807E098 @ =0x0000F3FF
	cmp r1, r0
	bgt _0807E06E
	b _0807E200
_0807E06E:
	ldr r0, _0807E09C @ =0xFFFFFE80
	str r0, [r5, #0xc]
	ldr r2, _0807E0A0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0807E0A4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _0807E0A8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	movs r1, #3
	ands r0, r1
	ldr r1, _0807E0AC @ =gUnknown_080D5C70
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x14]
	movs r0, #0x6e
	b _0807E1FE
	.align 2, 0
_0807E094: .4byte 0x0000023A
_0807E098: .4byte 0x0000F3FF
_0807E09C: .4byte 0xFFFFFE80
_0807E0A0: .4byte gUnknown_03006868
_0807E0A4: .4byte 0x00196225
_0807E0A8: .4byte 0x3C6EF35F
_0807E0AC: .4byte gUnknown_080D5C70
_0807E0B0:
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E0C8
	b _0807E200
_0807E0C8:
	movs r0, #0x78
	strh r0, [r5, #0x16]
	movs r0, #1
	strb r0, [r5, #0x13]
	b _0807E200
_0807E0D2:
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r0, r4, r0
	str r0, [r5, #4]
	subs r4, r4, r0
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldr r1, [r5]
	ldr r2, [r5, #4]
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_807C244
	movs r0, #1
	strb r0, [r7, #0x11]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, _0807E120 @ =0xFFFFC000
	adds r2, r0, r1
	ldr r3, [r5, #4]
	cmp r3, r2
	ble _0807E10C
	b _0807E200
_0807E10C:
	ldr r1, [r5]
	mov r0, r8
	adds r2, r3, #0
	bl sub_807C48C
	mov r3, sl
	strb r3, [r5, #0x13]
	movs r0, #0xc8
	b _0807E1FE
	.align 2, 0
_0807E120: .4byte 0xFFFFC000
_0807E124:
	cmp r3, #0
	bne _0807E144
	ldrh r0, [r2]
	subs r0, #0x10
	ldr r4, _0807E140 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0807E15C
	b _0807E162
	.align 2, 0
_0807E140: .4byte 0x000003FF
_0807E144:
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r3, _0807E16C @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0807E15C
	movs r4, #1
	mov sl, r4
_0807E15C:
	mov r0, sl
	cmp r0, #0
	beq _0807E200
_0807E162:
	movs r0, #0x1e
	strh r0, [r5, #0x14]
	movs r0, #0xd2
	b _0807E1FE
	.align 2, 0
_0807E16C: .4byte 0x000003FF
_0807E170:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E200
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807E1FE
_0807E182:
	cmp r3, #0
	bne _0807E190
	ldr r0, _0807E18C @ =0xFFFFFE00
	b _0807E194
	.align 2, 0
_0807E18C: .4byte 0xFFFFFE00
_0807E190:
	movs r0, #0x80
	lsls r0, r0, #2
_0807E194:
	str r0, [r5, #8]
	movs r0, #0x9b
	lsls r0, r0, #1
	b _0807E1FE
_0807E19C:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r5]
	cmp r3, #0
	bne _0807E1BC
	ldr r0, _0807E1B8 @ =0x00061400
	cmp r1, r0
	bgt _0807E200
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0807E1FE
	.align 2, 0
_0807E1B8: .4byte 0x00061400
_0807E1BC:
	ldr r0, _0807E1CC @ =0x0006DBFF
	cmp r1, r0
	ble _0807E200
	adds r0, #1
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0807E1FE
	.align 2, 0
_0807E1CC: .4byte 0x0006DBFF
_0807E1D0:
	cmp r3, #0
	bne _0807E1E4
	ldrh r0, [r2]
	subs r0, #0x10
	ldr r3, _0807E1E0 @ =0x000003FF
	adds r1, r3, #0
	b _0807E1EC
	.align 2, 0
_0807E1E0: .4byte 0x000003FF
_0807E1E4:
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r4, _0807E210 @ =0x000003FF
	adds r1, r4, #0
_0807E1EC:
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0807E200
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #0xaf
	lsls r0, r0, #1
_0807E1FE:
	strh r0, [r5, #0x16]
_0807E200:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E210: .4byte 0x000003FF

	thumb_func_start sub_807E214
sub_807E214: @ 0x0807E214
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r4, r2, r0
	movs r7, #0
	ldrh r1, [r4, #0x16]
	cmp r1, #0xc8
	bne _0807E23C
	b _0807E3E0
_0807E23C:
	cmp r1, #0xc8
	bgt _0807E254
	cmp r1, #0xa
	beq _0807E292
	cmp r1, #0xa
	bgt _0807E24E
	cmp r1, #0
	beq _0807E282
	b _0807E53A
_0807E24E:
	cmp r1, #0x64
	beq _0807E31E
	b _0807E53A
_0807E254:
	movs r2, #0x9b
	lsls r2, r2, #1
	cmp r1, r2
	bne _0807E25E
	b _0807E424
_0807E25E:
	cmp r1, r2
	bgt _0807E26E
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E26C
	b _0807E414
_0807E26C:
	b _0807E53A
_0807E26E:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E278
	b _0807E484
_0807E278:
	adds r0, #0xb4
	cmp r1, r0
	bne _0807E280
	b _0807E508
_0807E280:
	b _0807E53A
_0807E282:
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	strb r7, [r4, #0x1b]
	str r7, [r4, #0x1c]
	movs r0, #0x79
	strh r0, [r4, #0x14]
	movs r0, #0xa
	b _0807E538
_0807E292:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	cmp r1, #0
	bge _0807E2AC
	ldr r0, _0807E2A8 @ =0xFFFFFE00
	cmp r1, r0
	bgt _0807E2B6
	b _0807E2B4
	.align 2, 0
_0807E2A8: .4byte 0xFFFFFE00
_0807E2AC:
	ldr r0, _0807E2D4 @ =0x000001FF
	cmp r1, r0
	ble _0807E2B6
	adds r0, #1
_0807E2B4:
	str r0, [r4, #0xc]
_0807E2B6:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r7, r1, r0
	str r7, [r4, #4]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E2EC
	cmp r6, #0
	bne _0807E2D8
	movs r0, #0x80
	lsls r0, r0, #3
	b _0807E2DA
	.align 2, 0
_0807E2D4: .4byte 0x000001FF
_0807E2D8:
	ldr r0, _0807E2E8 @ =0xFFFFFC00
_0807E2DA:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x64
	strh r0, [r4, #0x16]
	strb r1, [r4, #0x13]
	b _0807E53A
	.align 2, 0
_0807E2E8: .4byte 0xFFFFFC00
_0807E2EC:
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E2FE
	b _0807E53A
_0807E2FE:
	mov r2, r8
	ldr r5, [r2, #0x20]
	ldr r0, [r5, #0x14]
	ldr r1, _0807E314 @ =0xFFFFF000
	adds r0, r0, r1
	cmp r7, r0
	ble _0807E318
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r4, #0x1c]
	b _0807E53A
	.align 2, 0
_0807E314: .4byte 0xFFFFF000
_0807E318:
	movs r0, #0x40
	str r0, [r4, #0x1c]
	b _0807E53A
_0807E31E:
	ldr r3, [r4]
	ldr r0, [r4, #8]
	adds r1, r3, r0
	str r1, [r4]
	cmp r6, #0
	bne _0807E338
	ldr r0, _0807E334 @ =0x000667FF
	cmp r1, r0
	ble _0807E344
	adds r0, #1
	b _0807E340
	.align 2, 0
_0807E334: .4byte 0x000667FF
_0807E338:
	movs r0, #0xd1
	lsls r0, r0, #0xb
	cmp r1, r0
	bgt _0807E344
_0807E340:
	str r0, [r4]
	movs r7, #1
_0807E344:
	ldr r1, [r4]
	subs r3, r3, r1
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r0, r2
	add r0, r8
	ldr r2, [r4, #4]
	movs r5, #0
	str r5, [sp]
	bl sub_807C244
	cmp r7, #0
	bne _0807E366
	b _0807E53A
_0807E366:
	movs r0, #0xc8
	strh r0, [r4, #0x16]
	cmp r6, #0
	bne _0807E370
	b _0807E53A
_0807E370:
	bl sub_807C5D0
	str r5, [sp, #0x28]
	add r0, sp, #0x2c
	movs r1, #0xf0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sp
	adds r1, #0x2e
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	mov r0, r8
	ldr r5, [r0, #0x20]
	adds r0, r5, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0807E3D4
	movs r6, #0x8e
	lsls r6, r6, #1
	add r6, r8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	str r0, [sp, #4]
	add r0, sp, #8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0807E3D4
	movs r0, #1
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	bl sub_807FB7C
	adds r0, r5, #0
	bl sub_8081A10
	ldr r0, [r6]
	str r0, [r5, #0x10]
	ldr r0, [r4, #4]
	str r0, [r5, #0x14]
_0807E3D4:
	ldr r0, _0807E3DC @ =0x0000023B
	bl sub_80BA57C
	b _0807E53A
	.align 2, 0
_0807E3DC: .4byte 0x0000023B
_0807E3E0:
	cmp r6, #0
	bne _0807E3E6
	b _0807E53A
_0807E3E6:
	adds r1, r4, #0
	subs r1, #0x28
	ldrh r0, [r1, #0x16]
	cmp r0, #0xc8
	beq _0807E3F2
	b _0807E53A
_0807E3F2:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807E3FE
	movs r0, #0x96
	lsls r0, r0, #1
	b _0807E402
_0807E3FE:
	movs r0, #0xfa
	lsls r0, r0, #1
_0807E402:
	strh r0, [r4, #0x16]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #8]
	rsbs r0, r0, #0
	str r0, [r4, #8]
	ldr r0, [r1, #8]
	rsbs r0, r0, #0
	str r0, [r1, #8]
	b _0807E53A
_0807E414:
	ldr r0, _0807E420 @ =0xFFFFF800
	str r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1b]
	strh r2, [r4, #0x16]
	b _0807E53A
	.align 2, 0
_0807E420: .4byte 0xFFFFF800
_0807E424:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r4, #4]
	adds r0, #0x80
	str r0, [r4, #0xc]
	cmp r6, #0
	beq _0807E440
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807E440
	mov r2, r8
	ldr r5, [r2, #0x20]
	str r1, [r5, #0x14]
_0807E440:
	ldr r1, [r4, #4]
	ldr r0, _0807E480 @ =0x0000AFFF
	cmp r1, r0
	ble _0807E53A
	ldr r0, [r4, #0xc]
	cmp r0, #0
	blt _0807E53A
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #0x1e
	strh r0, [r4, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	cmp r6, #0
	beq _0807E53A
	adds r0, #0xfc
	bl sub_80BA57C
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl sub_805256C
	b _0807E53A
	.align 2, 0
_0807E480: .4byte 0x0000AFFF
_0807E484:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E53A
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807E49A
	subs r0, #1
	strb r0, [r4, #0x1b]
_0807E49A:
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	bhi _0807E4FA
	cmp r6, #0
	beq _0807E4EE
	mov r1, r8
	ldr r5, [r1, #0x20]
	cmp r0, #0
	beq _0807E4EE
	adds r6, r5, #0
	adds r6, #0x4a
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bgt _0807E4C4
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0807E4E8
_0807E4C4:
	adds r0, r5, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	str r7, [r5, #0x6c]
	ldr r1, _0807E4E4 @ =sub_8008CD0
	adds r0, r5, #0
	bl SetPlayerCallback
	movs r0, #0x78
	strh r0, [r6]
	b _0807E4EE
	.align 2, 0
_0807E4E4: .4byte sub_8008CD0
_0807E4E8:
	adds r0, r5, #0
	bl sub_8014550
_0807E4EE:
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	movs r0, #1
	strb r0, [r4, #0x13]
	b _0807E53A
_0807E4FA:
	ldr r0, _0807E504 @ =0xFFFFF600
	str r0, [r4, #0xc]
	strh r2, [r4, #0x16]
	b _0807E53A
	.align 2, 0
_0807E504: .4byte 0xFFFFF600
_0807E508:
	ldr r1, [r4]
	ldr r0, [r4, #8]
	adds r1, r1, r0
	str r1, [r4]
	cmp r6, #0
	bne _0807E524
	ldr r0, _0807E520 @ =0x00061400
	cmp r1, r0
	bgt _0807E530
	str r0, [r4]
	b _0807E534
	.align 2, 0
_0807E520: .4byte 0x00061400
_0807E524:
	ldr r0, _0807E548 @ =0x0006DBFF
	cmp r1, r0
	ble _0807E530
	adds r0, #1
	str r0, [r4]
	movs r7, #1
_0807E530:
	cmp r7, #0
	beq _0807E53A
_0807E534:
	movs r0, #0xfa
	lsls r0, r0, #2
_0807E538:
	strh r0, [r4, #0x16]
_0807E53A:
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E548: .4byte 0x0006DBFF

	thumb_func_start sub_807E54C
sub_807E54C: @ 0x0807E54C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r3, r7, r0
	movs r4, #0
	ldrh r2, [r5, #0x16]
	cmp r2, #0xc8
	bne _0807E57C
	b _0807E78C
_0807E57C:
	cmp r2, #0xc8
	bgt _0807E59C
	cmp r2, #0x14
	bne _0807E586
	b _0807E6B2
_0807E586:
	cmp r2, #0x14
	bgt _0807E594
	cmp r2, #0
	beq _0807E5C8
	cmp r2, #0xa
	beq _0807E66C
	b _0807E98C
_0807E594:
	cmp r2, #0x64
	bne _0807E59A
	b _0807E6C8
_0807E59A:
	b _0807E98C
_0807E59C:
	cmp r2, #0xe6
	bne _0807E5A2
	b _0807E854
_0807E5A2:
	cmp r2, #0xe6
	bgt _0807E5B4
	cmp r2, #0xd2
	bne _0807E5AC
	b _0807E7AC
_0807E5AC:
	cmp r2, #0xdc
	bne _0807E5B2
	b _0807E83C
_0807E5B2:
	b _0807E98C
_0807E5B4:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	bne _0807E5BE
	b _0807E8B4
_0807E5BE:
	adds r0, #0xa
	cmp r2, r0
	bne _0807E5C6
	b _0807E940
_0807E5C6:
	b _0807E98C
_0807E5C8:
	cmp r6, #0
	beq _0807E5D2
	cmp r6, #1
	beq _0807E5E0
	b _0807E5F0
_0807E5D2:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _0807E5DC @ =gUnknown_080D5C08
	b _0807E5E8
	.align 2, 0
_0807E5DC: .4byte gUnknown_080D5C08
_0807E5E0:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _0807E600 @ =gUnknown_080D5C20
_0807E5E8:
	ldrh r1, [r0, #4]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #6]
	strb r0, [r2, #0x1a]
_0807E5F0:
	cmp r6, #0
	bne _0807E604
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r1, r2, #0
	b _0807E60E
	.align 2, 0
_0807E600: .4byte gUnknown_080D5C20
_0807E604:
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r3, #0xd8
	lsls r3, r3, #3
	adds r1, r3, #0
_0807E60E:
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0807E664 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x60
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _0807E668 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0807E664 @ =0xFFFF0000
	mov r4, sp
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sub_80B1608
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x16]
	b _0807E98C
	.align 2, 0
_0807E664: .4byte 0xFFFF0000
_0807E668: .4byte 0x0000FFFF
_0807E66C:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0807E68C
	strb r4, [r5, #0x13]
	strh r2, [r5, #0x14]
	movs r0, #0x14
	strh r0, [r5, #0x16]
_0807E68C:
	cmp r6, #0
	bne _0807E6A0
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E69C
	b _0807E98C
_0807E69C:
	adds r0, r1, #0
	b _0807E982
_0807E6A0:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807E6AC
	b _0807E98C
_0807E6AC:
	adds r0, r1, #0
	subs r0, #0x10
	b _0807E984
_0807E6B2:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E6C0
	b _0807E98C
_0807E6C0:
	strh r4, [r5, #0x14]
	movs r0, #0x64
	strh r0, [r5, #0x16]
	b _0807E98C
_0807E6C8:
	cmp r6, #0
	bne _0807E71C
	ldr r4, _0807E718 @ =gSineTable
	ldrh r3, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E6EA
	adds r0, #0x3f
_0807E6EA:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E700
	adds r0, #0x3f
_0807E700:
	asrs r1, r0, #6
	movs r3, #0xc6
	lsls r3, r3, #0xb
	adds r0, r2, r3
	str r0, [r5]
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r5, #4]
	ldrh r0, [r5, #0x10]
	subs r0, #0x10
	b _0807E766
	.align 2, 0
_0807E718: .4byte gSineTable
_0807E71C:
	ldr r4, _0807E780 @ =gSineTable
	ldrh r3, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E73A
	adds r0, #0x3f
_0807E73A:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E750
	adds r0, #0x3f
_0807E750:
	asrs r1, r0, #6
	movs r3, #0xd8
	lsls r3, r3, #0xb
	adds r0, r2, r3
	str r0, [r5]
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r5, #4]
	ldrh r0, [r5, #0x10]
	adds r0, #0x10
_0807E766:
	ldr r3, _0807E784 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r5, #0x10]
	ldrh r0, [r5, #0x14]
	adds r0, #0x10
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	ldr r1, _0807E788 @ =0x07FF0000
	cmp r0, r1
	bgt _0807E77E
	b _0807E98C
_0807E77E:
	b _0807E8AE
	.align 2, 0
_0807E780: .4byte gSineTable
_0807E784: .4byte 0x000003FF
_0807E788: .4byte 0x07FF0000
_0807E78C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E79A
	b _0807E98C
_0807E79A:
	ldr r0, _0807E7A8 @ =0x0000023D
	bl sub_80BA57C
	movs r0, #0xd2
	strh r0, [r5, #0x16]
	b _0807E98C
	.align 2, 0
_0807E7A8: .4byte 0x0000023D
_0807E7AC:
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x24]
	cmp r1, r0
	bge _0807E7E0
	ldr r2, [r5, #0x1c]
	adds r0, r1, r2
	str r0, [r5, #0x20]
	ldr r0, [r5, #8]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E7C4
	adds r0, #0xff
_0807E7C4:
	asrs r0, r0, #8
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	ldr r0, [r5, #0xc]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E7D6
	adds r0, #0xff
_0807E7D6:
	asrs r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _0807E7E2
_0807E7E0:
	movs r4, #1
_0807E7E2:
	ldrh r2, [r3, #2]
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldr r0, _0807E7FC @ =0x000001FF
	cmp r1, r0
	bgt _0807E800
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	adds r0, #0x10
	strh r0, [r3, #4]
	b _0807E804
	.align 2, 0
_0807E7FC: .4byte 0x000001FF
_0807E800:
	movs r0, #2
	orrs r4, r0
_0807E804:
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E82C
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r7, r0
	adds r1, r3, #0
	movs r2, #2
	adds r3, r6, #0
	bl sub_807F334
	movs r0, #1
	strb r0, [r5, #0x13]
_0807E82C:
	cmp r4, #3
	beq _0807E832
	b _0807E98C
_0807E832:
	movs r0, #0xa
	strh r0, [r5, #0x14]
	movs r0, #0xdc
	strh r0, [r5, #0x16]
	b _0807E98C
_0807E83C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E84A
	b _0807E98C
_0807E84A:
	movs r0, #0xe6
	strh r0, [r5, #0x16]
	movs r0, #0
	strb r0, [r5, #0x13]
	b _0807E98C
_0807E854:
	ldr r1, [r5, #0x20]
	cmp r1, #0
	ble _0807E888
	ldr r0, [r5, #0x1c]
	subs r1, r1, r0
	str r1, [r5, #0x20]
	rsbs r2, r0, #0
	ldr r0, [r5, #8]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E86C
	adds r0, #0xff
_0807E86C:
	asrs r0, r0, #8
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	ldr r0, [r5, #0xc]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E87E
	adds r0, #0xff
_0807E87E:
	asrs r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _0807E88A
_0807E888:
	movs r4, #1
_0807E88A:
	ldrh r2, [r3, #2]
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E8A6
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	subs r0, #0x10
	strh r0, [r3, #4]
	b _0807E8AA
_0807E8A6:
	movs r0, #2
	orrs r4, r0
_0807E8AA:
	cmp r4, #3
	bne _0807E98C
_0807E8AE:
	movs r0, #0x6e
	strh r0, [r5, #0x16]
	b _0807E98C
_0807E8B4:
	cmp r6, #0
	bne _0807E8C8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _0807E8C4 @ =0x00000614
	adds r1, r2, #0
	b _0807E8D0
	.align 2, 0
_0807E8C4: .4byte 0x00000614
_0807E8C8:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r3, _0807E90C @ =0x000006DC
	adds r1, r3, #0
_0807E8D0:
	subs r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x98
	subs r1, r1, r0
	mov r4, sp
	movs r0, #0
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	mov r0, sp
	movs r1, #8
	bl sub_80B1608
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _0807E910
	cmp r6, #1
	beq _0807E920
	b _0807E930
	.align 2, 0
_0807E90C: .4byte 0x000006DC
_0807E910:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _0807E91C @ =gUnknown_080D5C08
	b _0807E928
	.align 2, 0
_0807E91C: .4byte gUnknown_080D5C08
_0807E920:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _0807E93C @ =gUnknown_080D5C20
_0807E928:
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #0xe]
	strb r0, [r2, #0x1a]
_0807E930:
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #0x9b
	lsls r0, r0, #1
	strh r0, [r5, #0x16]
	b _0807E98C
	.align 2, 0
_0807E93C: .4byte gUnknown_080D5C20
_0807E940:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r2, r1, r0
	str r2, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r6, #0
	bne _0807E970
	ldr r0, _0807E96C @ =0x00061400
	cmp r2, r0
	bgt _0807E960
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x16]
_0807E960:
	ldrh r0, [r3]
	cmp r0, #0
	beq _0807E98C
	subs r0, #0x10
	b _0807E984
	.align 2, 0
_0807E96C: .4byte 0x00061400
_0807E970:
	ldr r0, _0807E994 @ =0x0006DBFF
	cmp r2, r0
	ble _0807E97C
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x16]
_0807E97C:
	ldrh r0, [r3]
	cmp r0, #0
	beq _0807E98C
_0807E982:
	adds r0, #0x10
_0807E984:
	ldr r2, _0807E998 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
_0807E98C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E994: .4byte 0x0006DBFF
_0807E998: .4byte 0x000003FF

	thumb_func_start sub_807E99C
sub_807E99C: @ 0x0807E99C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r4, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r3, r4, r0
	ldrh r0, [r5, #0x16]
	cmp r0, #0x1f
	bls _0807E9CA
	b _0807EBAC
_0807E9CA:
	lsls r0, r0, #2
	ldr r1, _0807E9D4 @ =_0807E9D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807E9D4: .4byte _0807E9D8
_0807E9D8: @ jump table
	.4byte _0807EA58 @ case 0
	.4byte _0807EBAC @ case 1
	.4byte _0807EBAC @ case 2
	.4byte _0807EBAC @ case 3
	.4byte _0807EBAC @ case 4
	.4byte _0807EBAC @ case 5
	.4byte _0807EBAC @ case 6
	.4byte _0807EBAC @ case 7
	.4byte _0807EBAC @ case 8
	.4byte _0807EBAC @ case 9
	.4byte _0807EADC @ case 10
	.4byte _0807EBAC @ case 11
	.4byte _0807EBAC @ case 12
	.4byte _0807EBAC @ case 13
	.4byte _0807EBAC @ case 14
	.4byte _0807EBAC @ case 15
	.4byte _0807EBAC @ case 16
	.4byte _0807EBAC @ case 17
	.4byte _0807EBAC @ case 18
	.4byte _0807EBAC @ case 19
	.4byte _0807EB1E @ case 20
	.4byte _0807EBAC @ case 21
	.4byte _0807EBAC @ case 22
	.4byte _0807EBAC @ case 23
	.4byte _0807EBAC @ case 24
	.4byte _0807EBAC @ case 25
	.4byte _0807EBAC @ case 26
	.4byte _0807EBAC @ case 27
	.4byte _0807EBAC @ case 28
	.4byte _0807EBAC @ case 29
	.4byte _0807EB3A @ case 30
	.4byte _0807EB6C @ case 31
_0807EA58:
	cmp r2, #0
	bne _0807EA6E
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0x20
	b _0807EA7E
_0807EA6E:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #0x20
_0807EA7E:
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0807EAD4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _0807EAD8 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0807EAD4 @ =0xFFFF0000
	mov r4, sp
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sub_80B1608
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	movs r0, #0xa
	b _0807EBAA
	.align 2, 0
_0807EAD4: .4byte 0xFFFF0000
_0807EAD8: .4byte 0x0000FFFF
_0807EADC:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r3, r1, r0
	str r3, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r2, #0
	bne _0807EB08
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, _0807EB04 @ =0xFFFFE000
	adds r0, r0, r2
	cmp r0, r3
	bgt _0807EBAC
	movs r0, #0x14
	b _0807EBAA
	.align 2, 0
_0807EB04: .4byte 0xFFFFE000
_0807EB08:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	cmp r0, r3
	blt _0807EBAC
	movs r0, #0x14
	b _0807EBAA
_0807EB1E:
	cmp r2, #0
	beq _0807EBAC
	adds r1, r5, #0
	subs r1, #0x28
	ldrh r0, [r5, #0x16]
	cmp r0, #0x14
	bne _0807EBAC
	ldrh r0, [r1, #0x16]
	cmp r0, #0x14
	bne _0807EBAC
	movs r0, #0x1e
	strh r0, [r5, #0x16]
	strh r0, [r1, #0x16]
	b _0807EBAC
_0807EB3A:
	cmp r2, #0
	beq _0807EB44
	cmp r2, #1
	beq _0807EB54
	b _0807EB64
_0807EB44:
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, _0807EB50 @ =gUnknown_080D5C08
	b _0807EB5C
	.align 2, 0
_0807EB50: .4byte gUnknown_080D5C08
_0807EB54:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r2, r4, r1
	ldr r0, _0807EB68 @ =gUnknown_080D5C20
_0807EB5C:
	ldrh r1, [r0, #0x10]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #0x12]
	strb r0, [r2, #0x1a]
_0807EB64:
	movs r0, #0x1f
	b _0807EBAA
	.align 2, 0
_0807EB68: .4byte gUnknown_080D5C20
_0807EB6C:
	cmp r2, #0
	bne _0807EB94
	ldrh r0, [r3]
	subs r0, #8
	ldr r2, _0807EB90 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0807EBAC
	movs r0, #0x64
	strh r0, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807EBAC
	.align 2, 0
_0807EB90: .4byte 0x000003FF
_0807EB94:
	ldrh r0, [r3]
	adds r0, #8
	ldr r2, _0807EBB4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0807EBAC
	movs r0, #0x64
_0807EBAA:
	strh r0, [r5, #0x16]
_0807EBAC:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807EBB4: .4byte 0x000003FF

	thumb_func_start sub_807EBB8
sub_807EBB8: @ 0x0807EBB8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r7, r0
	ldrh r0, [r5, #0x16]
	cmp r0, #0xa
	beq _0807EC98
	cmp r0, #0xa
	bgt _0807EBEE
	cmp r0, #0
	beq _0807EBF4
	b _0807ECEE
_0807EBEE:
	cmp r0, #0x14
	beq _0807ECBC
	b _0807ECEE
_0807EBF4:
	cmp r6, #0
	bne _0807EC08
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r3, _0807EC04 @ =0x00000614
	adds r1, r3, #0
	b _0807EC10
	.align 2, 0
_0807EC04: .4byte 0x00000614
_0807EC08:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _0807EC64 @ =0x000006DC
	adds r1, r2, #0
_0807EC10:
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0807EC68 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x98
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _0807EC6C @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0807EC68 @ =0xFFFF0000
	mov r4, sp
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sub_80B1608
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _0807EC70
	cmp r6, #1
	beq _0807EC80
	b _0807EC90
	.align 2, 0
_0807EC64: .4byte 0x000006DC
_0807EC68: .4byte 0xFFFF0000
_0807EC6C: .4byte 0x0000FFFF
_0807EC70:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _0807EC7C @ =gUnknown_080D5C08
	b _0807EC88
	.align 2, 0
_0807EC7C: .4byte gUnknown_080D5C08
_0807EC80:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _0807EC94 @ =gUnknown_080D5C20
_0807EC88:
	ldrh r1, [r0, #0x14]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #0x16]
	strb r0, [r2, #0x1a]
_0807EC90:
	movs r0, #0xa
	b _0807ECEC
	.align 2, 0
_0807EC94: .4byte gUnknown_080D5C20
_0807EC98:
	cmp r6, #0
	bne _0807ECA2
	ldrh r0, [r2]
	adds r0, #8
	b _0807ECA6
_0807ECA2:
	ldrh r0, [r2]
	subs r0, #8
_0807ECA6:
	ldr r3, _0807ECB8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0807ECEE
	movs r0, #0x14
	b _0807ECEC
	.align 2, 0
_0807ECB8: .4byte 0x000003FF
_0807ECBC:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r2, r1, r0
	str r2, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r6, #0
	bne _0807ECE4
	ldr r0, _0807ECE0 @ =0x00061400
	cmp r2, r0
	bgt _0807ECEE
	movs r0, #0x1e
	strh r0, [r5, #0x16]
	movs r0, #0x64
	strh r0, [r7, #0xc]
	b _0807ECEE
	.align 2, 0
_0807ECE0: .4byte 0x00061400
_0807ECE4:
	ldr r0, _0807ECF8 @ =0x0006DBFF
	cmp r2, r0
	ble _0807ECEE
	movs r0, #0x1e
_0807ECEC:
	strh r0, [r5, #0x16]
_0807ECEE:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807ECF8: .4byte 0x0006DBFF

	thumb_func_start sub_807ECFC
sub_807ECFC: @ 0x0807ECFC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r6, r0
	ldrh r1, [r4, #0x16]
	cmp r1, #0
	beq _0807ED20
	cmp r1, #0xa
	beq _0807ED30
	b _0807ED84
_0807ED20:
	str r1, [r4, #8]
	ldr r0, _0807ED2C @ =0xFFFFFD00
	str r0, [r4, #0xc]
	strh r1, [r4, #0x14]
	movs r0, #0xa
	b _0807ED82
	.align 2, 0
_0807ED2C: .4byte 0xFFFFFD00
_0807ED30:
	ldr r1, [r4]
	ldr r0, [r4, #8]
	adds r3, r1, r0
	str r3, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r2, r1, r0
	str r2, [r4, #4]
	adds r0, #0x40
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x14]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807ED72
	lsls r1, r3, #8
	asrs r1, r1, #0x10
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807ED72:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0x96
	lsls r1, r1, #9
	cmp r0, r1
	ble _0807ED84
	movs r0, #0xfa
	lsls r0, r0, #2
_0807ED82:
	strh r0, [r4, #0x16]
_0807ED84:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_807ED8C
sub_807ED8C: @ 0x0807ED8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldrh r1, [r5, #0x16]
	cmp r1, #0x6e
	bne _0807ED9E
	b _0807F200
_0807ED9E:
	cmp r1, #0x6e
	bgt _0807EDB6
	cmp r1, #1
	beq _0807EDFE
	cmp r1, #1
	bgt _0807EDB0
	cmp r1, #0
	beq _0807EDDA
	b _0807F200
_0807EDB0:
	cmp r1, #0x64
	beq _0807EE64
	b _0807F200
_0807EDB6:
	cmp r1, #0xd2
	bne _0807EDBC
	b _0807F010
_0807EDBC:
	cmp r1, #0xd2
	bgt _0807EDC8
	cmp r1, #0xc8
	bne _0807EDC6
	b _0807EF44
_0807EDC6:
	b _0807F200
_0807EDC8:
	cmp r1, #0xdc
	bne _0807EDCE
	b _0807F064
_0807EDCE:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807EDD8
	b _0807F1A0
_0807EDD8:
	b _0807F200
_0807EDDA:
	ldrb r0, [r5, #1]
	cmp r0, #4
	ble _0807EDE2
	b _0807F200
_0807EDE2:
	cmp r0, #1
	bge _0807EDE8
	b _0807F200
_0807EDE8:
	adds r0, r5, #0
	bl sub_807F228
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807EDF6
	b _0807F200
_0807EDF6:
	adds r0, r5, #0
	bl sub_807F434
	b _0807F200
_0807EDFE:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0807EE0E
	b _0807F200
_0807EE0E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_807BE58
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807EE34
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0807EE30 @ =gUnknown_080D5C38
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strh r4, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807EE30: .4byte gUnknown_080D5C38
_0807EE34:
	ldr r1, _0807EE48 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0807EE58
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0807EE4C
	movs r0, #0x6e
	strh r0, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807EE48: .4byte gStageData
_0807EE4C:
	adds r0, r1, #0
	adds r0, #0xae
	ldrh r1, [r0]
	movs r0, #1
	bl sub_8027674
_0807EE58:
	adds r0, r5, #0
	bl sub_8081C08
	movs r0, #0x64
	strh r0, [r5, #0x16]
	b _0807F200
_0807EE64:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807EE72
	b _0807F200
_0807EE72:
	movs r3, #0
	ldr r4, _0807EEA8 @ =gPlayers
_0807EE76:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r4
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807EEAC
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0807EEA0
	cmp r1, #0xc
	bne _0807EEAC
_0807EEA0:
	movs r0, #4
	strh r0, [r5, #0x14]
	b _0807F200
	.align 2, 0
_0807EEA8: .4byte gPlayers
_0807EEAC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807EE76
	ldr r1, _0807EEE8 @ =gStageData
	movs r0, #4
	strb r0, [r1, #4]
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_807BE58
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd3
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl sub_805256C
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807EEEC
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _0807EEEE
	.align 2, 0
_0807EEE8: .4byte gStageData
_0807EEEC:
	movs r1, #0
_0807EEEE:
	ldr r0, _0807EF38 @ =gUnknown_080D5C48
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	movs r0, #5
	strb r0, [r5, #1]
	adds r0, r5, #0
	movs r2, #0xb
	bl sub_807DB00
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xb
	bl sub_807DB00
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r1, _0807EF3C @ =gUnknown_080D5C38
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	ldr r0, _0807EF40 @ =0x00000221
	bl sub_80BA57C
	movs r0, #0x96
	bl sub_807FB7C
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xc8
	strh r0, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807EF38: .4byte gUnknown_080D5C48
_0807EF3C: .4byte gUnknown_080D5C38
_0807EF40: .4byte 0x00000221
_0807EF44:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807EFC4
	ldr r3, _0807EFF8 @ =gUnknown_03006868
	ldr r0, [r3]
	ldr r2, _0807EFFC @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0807F000 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _0807F004 @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r2, r0, #0
	ldr r1, _0807F008 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	lsrs r4, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	lsrs r6, r0, #6
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0]
	adds r1, r1, r4
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r2, [r0]
	adds r2, r2, r6
	asrs r2, r2, #8
	subs r2, #0x30
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	str r7, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807EFC4:
	ldrh r0, [r5, #0x14]
	adds r0, #1
	strh r0, [r5, #0x14]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0807EFD8
	ldr r0, _0807F00C @ =0x00000221
	bl sub_80BA57C
_0807EFD8:
	movs r3, #0x97
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807EFE6
	b _0807F200
_0807EFE6:
	movs r0, #0xd2
	strh r0, [r5, #0x16]
	movs r0, #0x3c
	strh r0, [r5, #0x14]
	movs r0, #0xa
	bl sub_807FB7C
	b _0807F200
	.align 2, 0
_0807EFF8: .4byte gUnknown_03006868
_0807EFFC: .4byte 0x00196225
_0807F000: .4byte 0x3C6EF35F
_0807F004: .4byte 0x000003FF
_0807F008: .4byte gSineTable
_0807F00C: .4byte 0x00000221
_0807F010:
	movs r1, #0
	ldr r3, _0807F058 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0807F018:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807F018
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807F040
	b _0807F200
_0807F040:
	movs r0, #0xb4
	strh r0, [r5, #0x14]
	movs r0, #0xdc
	strh r0, [r5, #0x16]
	ldr r0, _0807F05C @ =0x00000221
	bl sub_80BA57C
	ldr r1, _0807F060 @ =gUnknown_03001CF0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #6]
	b _0807F200
	.align 2, 0
_0807F058: .4byte gPlayers
_0807F05C: .4byte 0x00000221
_0807F060: .4byte gUnknown_03001CF0
_0807F064:
	movs r1, #0
	ldr r3, _0807F14C @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0807F06C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807F06C
	ldrh r1, [r5, #0x14]
	movs r4, #1
	mov r8, r4
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0807F120
	ldr r4, _0807F150 @ =gUnknown_03006868
	ldr r0, [r4]
	ldr r3, _0807F154 @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _0807F158 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r0, #0xff
	ands r0, r1
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r7, r0, r6
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #0x30
	bl __umodsi3
	adds r2, r0, #0
	movs r0, #3
	adds r3, r2, #0
	ands r3, r0
	lsls r3, r3, #8
	ldr r1, _0807F15C @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	lsrs r4, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	lsrs r6, r0, #6
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r1, [r0]
	adds r1, r1, r4
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r2, [r0]
	adds r2, r2, r6
	asrs r2, r2, #8
	subs r2, #0x60
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r6, #0
	orrs r3, r0
	str r7, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807F120:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0807F130
	ldr r0, _0807F160 @ =0x00000221
	bl sub_80BA57C
_0807F130:
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	ldrh r3, [r5, #0x14]
	cmp r0, #0x3c
	bne _0807F16C
	ldr r1, _0807F164 @ =gBldRegs
	movs r2, #0
	ldr r0, _0807F168 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	b _0807F184
	.align 2, 0
_0807F14C: .4byte gPlayers
_0807F150: .4byte gUnknown_03006868
_0807F154: .4byte 0x00196225
_0807F158: .4byte 0x3C6EF35F
_0807F15C: .4byte gSineTable
_0807F160: .4byte 0x00000221
_0807F164: .4byte gBldRegs
_0807F168: .4byte 0x00003FBF
_0807F16C:
	cmp r0, #0x3b
	bgt _0807F184
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0807F184
	ldr r1, _0807F19C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0x10
	beq _0807F184
	adds r0, #1
	strh r0, [r1, #4]
_0807F184:
	subs r0, r3, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807F200
	movs r0, #0x3c
	strh r0, [r5, #0x14]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807F19C: .4byte gBldRegs
_0807F1A0:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0807F200
	movs r0, #1
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	ldr r0, _0807F20C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807F1F8
	ldr r4, _0807F210 @ =gPlayers
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r2, r4, r3
	ldr r0, [r2]
	ldr r1, _0807F214 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2]
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r4, r6
	ldr r1, _0807F218 @ =Player_8005380
	bl SetPlayerCallback
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r4, #0x10]
	str r0, [r1]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r4, #0x14]
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	ldr r3, _0807F21C @ =0x00000177
	adds r1, r4, r3
	strb r0, [r1]
_0807F1F8:
	ldr r0, _0807F220 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807F224 @ =sub_807F568
	str r0, [r1, #8]
_0807F200:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F20C: .4byte gStageData
_0807F210: .4byte gPlayers
_0807F214: .4byte 0xFFFFFEFF
_0807F218: .4byte Player_8005380
_0807F21C: .4byte 0x00000177
_0807F220: .4byte gCurTask
_0807F224: .4byte sub_807F568

	thumb_func_start sub_807F228
sub_807F228: @ 0x0807F228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	movs r0, #0
	mov sl, r0
	movs r0, #0x94
	lsls r0, r0, #2
	add r0, sb
	mov r8, r0
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #1
	add r1, sb
	ldr r1, [r1]
	bl sub_8004D68
	ldr r2, _0807F2FC @ =gPlayers
	ldr r0, _0807F300 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0807F298
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0807F2A6
_0807F298:
	mov r0, r8
	bl sub_807A1DC
	cmp r0, #1
	bne _0807F2A6
	movs r0, #1
	mov sl, r0
_0807F2A6:
	movs r7, #0
_0807F2A8:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	lsls r0, r0, #4
	ldr r1, _0807F2FC @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807F316
	mov r0, r8
	ldr r1, [r0, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807F316
	movs r6, #0x98
	lsls r6, r6, #1
	add r6, sb
	ldr r1, [r6]
	asrs r1, r1, #8
	movs r5, #0x9a
	lsls r5, r5, #1
	add r5, sb
	ldr r2, [r5]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _0807F304
	movs r0, #1
	mov sl, r0
	adds r0, r4, #0
	bl sub_80044CC
	b _0807F316
	.align 2, 0
_0807F2FC: .4byte gPlayers
_0807F300: .4byte gStageData
_0807F304:
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, [r5]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_8020CE0
_0807F316:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0807F2A8
	mov r0, sl
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807F334
sub_807F334: @ 0x0807F334
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r2, #1
	beq _0807F382
	cmp r2, #1
	ble _0807F34E
	cmp r2, #2
	beq _0807F3B6
_0807F34E:
	cmp r3, #0
	bne _0807F366
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xed
	strb r0, [r1]
	adds r1, #1
	movs r0, #8
	b _0807F378
_0807F366:
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xf8
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xed
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xd
_0807F378:
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	b _0807F42C
_0807F382:
	cmp r3, #0
	bne _0807F39A
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xe2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x13
	b _0807F3AC
_0807F39A:
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xed
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
_0807F3AC:
	strb r0, [r1]
	adds r1, #1
	movs r0, #8
	strb r0, [r1]
	b _0807F42C
_0807F3B6:
	cmp r3, #0
	bne _0807F3D2
	mov r4, ip
	adds r4, #0x24
	movs r0, #0xe2
	strb r0, [r4]
	mov r3, ip
	adds r3, #0x25
	movs r0, #0xf3
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x26
	movs r0, #0x13
	b _0807F3E8
_0807F3D2:
	mov r4, ip
	adds r4, #0x24
	movs r0, #0xed
	strb r0, [r4]
	mov r3, ip
	adds r3, #0x25
	movs r0, #0xf3
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x26
	movs r0, #0x1e
_0807F3E8:
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x27
	movs r0, #8
	strb r0, [r1]
	adds r5, r1, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r7, #2
	ldrsh r0, [r6, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r4]
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r4, #4
	ldrsh r0, [r6, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r3]
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r7, #2
	ldrsh r0, [r6, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r2]
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r2, #4
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r5]
_0807F42C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807F434
sub_807F434: @ 0x0807F434
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x78
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_807BE58
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r1, _0807F494 @ =gUnknown_080D5C38
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0807F498 @ =0x000004F4
	movs r1, #0x14
	ldrsh r2, [r4, r1]
	movs r1, #0
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _0807F49C @ =0x000004F5
	movs r1, #0x14
	ldrsh r2, [r4, r1]
	movs r1, #0
	movs r3, #0
	bl sub_8078DB0
	ldrb r0, [r4]
	subs r1, r0, #1
	strb r1, [r4]
	movs r0, #1
	strh r0, [r4, #0x16]
	ldr r0, _0807F4A0 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807F4A4
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0807F4B2
	movs r0, #0x37
	bl sub_80299D4
	b _0807F4B2
	.align 2, 0
_0807F494: .4byte gUnknown_080D5C38
_0807F498: .4byte 0x000004F4
_0807F49C: .4byte 0x000004F5
_0807F4A0: .4byte gStageData
_0807F4A4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0807F4B2
	movs r0, #0x37
	bl sub_80299D4
_0807F4B2:
	movs r0, #0xeb
	bl sub_80BA57C
	bl sub_807A468
	ldr r1, _0807F4DC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0807F4E8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0807F4E0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807F4E8
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _0807F4E8
	.align 2, 0
_0807F4DC: .4byte gStageData
_0807F4E0:
	ldrb r1, [r4]
	movs r0, #4
	bl sub_8027674
_0807F4E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807F4F0
sub_0807F4F0: @ 0x0807F4F0
	push {r4, r5, lr}
	ldr r5, _0807F538 @ =gStageData
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	adds r0, r2, #0
	cmp r1, #1
	bne _0807F544
	movs r0, #0
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0xae
	strh r2, [r0]
	movs r0, #0x3c
	strh r0, [r3, #0x14]
	ldr r0, _0807F53C @ =0x03000228
	adds r2, r4, r0
	ldr r1, _0807F540 @ =gUnknown_080D5C38
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0x64
	strh r0, [r3, #0x16]
	b _0807F560
	.align 2, 0
_0807F538: .4byte gStageData
_0807F53C: .4byte 0x03000228
_0807F540: .4byte gUnknown_080D5C38
_0807F544:
	cmp r1, #1
	blt _0807F560
	cmp r1, #4
	bgt _0807F560
	cmp r1, #3
	blt _0807F560
	ldrb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0807F560
	adds r0, r3, #0
	bl sub_807F434
_0807F560:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807F568
sub_807F568: @ 0x0807F568
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0807F61C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0807F620 @ =gStageData
	adds r0, #0xac
	movs r1, #0
	strh r1, [r0]
	adds r0, r7, #0
	bl sub_807C14C
	movs r4, #0
	ldr r5, _0807F624 @ =gCamera
_0807F58C:
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r0, r3, #3
	adds r0, #0x7c
	adds r0, r7, r0
	lsls r3, r3, #2
	adds r1, r7, #0
	adds r1, #0x2c
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r5]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x30
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r5, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0807F58C
	ldrh r1, [r7, #0xc]
	ldr r0, _0807F628 @ =0x00000406
	cmp r1, r0
	beq _0807F5F0
	movs r1, #0
	ldr r3, _0807F62C @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0807F5D6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807F5D6
_0807F5F0:
	ldrh r1, [r7, #0xc]
	ldr r2, _0807F630 @ =0x000007DA
	cmp r1, r2
	bne _0807F5FA
	b _0807F904
_0807F5FA:
	cmp r1, r2
	bgt _0807F684
	ldr r4, _0807F634 @ =0x000003E9
	cmp r1, r4
	bne _0807F606
	b _0807F80C
_0807F606:
	cmp r1, r4
	bgt _0807F64A
	cmp r1, #0xa
	bne _0807F610
	b _0807F7BC
_0807F610:
	cmp r1, #0xa
	bgt _0807F638
	cmp r1, #0
	beq _0807F700
	b _0807FB6C
	.align 2, 0
_0807F61C: .4byte gCurTask
_0807F620: .4byte gStageData
_0807F624: .4byte gCamera
_0807F628: .4byte 0x00000406
_0807F62C: .4byte gPlayers
_0807F630: .4byte 0x000007DA
_0807F634: .4byte 0x000003E9
_0807F638:
	cmp r1, #0x64
	bne _0807F63E
	b _0807F7C2
_0807F63E:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807F648
	b _0807F7DA
_0807F648:
	b _0807FB6C
_0807F64A:
	ldr r0, _0807F66C @ =0x00000406
	mov r8, r0
	cmp r1, r8
	bne _0807F654
	b _0807FB6C
_0807F654:
	cmp r1, r8
	bgt _0807F670
	subs r0, #0x14
	cmp r1, r0
	bne _0807F660
	b _0807F834
_0807F660:
	adds r0, #0xa
	cmp r1, r0
	bne _0807F668
	b _0807F84A
_0807F668:
	b _0807FB6C
	.align 2, 0
_0807F66C: .4byte 0x00000406
_0807F670:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _0807F67A
	b _0807F898
_0807F67A:
	adds r0, #1
	cmp r1, r0
	bne _0807F682
	b _0807F8DC
_0807F682:
	b _0807FB6C
_0807F684:
	ldr r4, _0807F6A8 @ =0x00000802
	cmp r1, r4
	bne _0807F68C
	b _0807FAA0
_0807F68C:
	cmp r1, r4
	bgt _0807F6CC
	ldr r5, _0807F6AC @ =0x000007EE
	cmp r1, r5
	bne _0807F698
	b _0807F994
_0807F698:
	cmp r1, r5
	bgt _0807F6B4
	ldr r0, _0807F6B0 @ =0x000007E4
	cmp r1, r0
	bne _0807F6A4
	b _0807F934
_0807F6A4:
	b _0807FB6C
	.align 2, 0
_0807F6A8: .4byte 0x00000802
_0807F6AC: .4byte 0x000007EE
_0807F6B0: .4byte 0x000007E4
_0807F6B4:
	ldr r0, _0807F6C8 @ =0x000007F3
	cmp r1, r0
	bne _0807F6BC
	b _0807F9EC
_0807F6BC:
	adds r0, #5
	cmp r1, r0
	bne _0807F6C4
	b _0807FA2A
_0807F6C4:
	b _0807FB6C
	.align 2, 0
_0807F6C8: .4byte 0x000007F3
_0807F6CC:
	movs r5, #0x82
	lsls r5, r5, #4
	cmp r1, r5
	bne _0807F6D6
	b _0807FB40
_0807F6D6:
	cmp r1, r5
	bgt _0807F6F0
	ldr r0, _0807F6EC @ =0x0000080C
	cmp r1, r0
	bne _0807F6E2
	b _0807FAD6
_0807F6E2:
	adds r0, #0xa
	cmp r1, r0
	bne _0807F6EA
	b _0807FAFC
_0807F6EA:
	b _0807FB6C
	.align 2, 0
_0807F6EC: .4byte 0x0000080C
_0807F6F0:
	ldr r0, _0807F6FC @ =0x000008FC
	cmp r1, r0
	bne _0807F6F8
	b _0807FB58
_0807F6F8:
	b _0807FB6C
	.align 2, 0
_0807F6FC: .4byte 0x000008FC
_0807F700:
	ldr r6, _0807F7A8 @ =gStageData
	ldrb r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _0807F7AC @ =gPlayers
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x4a
	movs r5, #0
	strh r5, [r1]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x4a
	strh r5, [r0]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _0807F73E
	bl VramFree
	str r5, [r7, #0x18]
_0807F73E:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F750
	bl VramFree
	str r5, [r4]
_0807F750:
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F762
	bl VramFree
	str r5, [r4]
_0807F762:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F774
	bl VramFree
	str r5, [r4]
_0807F774:
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F786
	bl VramFree
	str r5, [r4]
_0807F786:
	ldr r2, _0807F7B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0807F7B4 @ =0x00009EFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0807F7B8 @ =gUnknown_03003C10
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_80299FC
	movs r0, #9
	strb r0, [r6, #4]
	movs r0, #7
	strb r0, [r6, #9]
	movs r0, #0xa
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F7A8: .4byte gStageData
_0807F7AC: .4byte gPlayers
_0807F7B0: .4byte gDispCnt
_0807F7B4: .4byte 0x00009EFF
_0807F7B8: .4byte gUnknown_03003C10
_0807F7BC:
	movs r0, #0x64
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F7C2:
	bl sub_80561A8
	cmp r0, #0
	beq _0807F7D2
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F7D2:
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F7DA:
	movs r0, #1
	bl sub_807FB7C
	movs r0, #0
	bl sub_808178C
	movs r0, #0
	bl sub_80808E8
	movs r0, #2
	bl sub_807FB7C
	ldr r0, _0807F808 @ =gCamera
	ldr r1, [r0, #0x1c]
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r7, #8]
	strh r4, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F808: .4byte gCamera
_0807F80C:
	ldr r1, _0807F830 @ =gBldRegs
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0807F81E
	b _0807FB6C
_0807F81E:
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r7, #8]
	subs r0, #0xbe
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F830: .4byte gBldRegs
_0807F834:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807F842
	b _0807FB6C
_0807F842:
	movs r0, #0xff
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F84A:
	ldr r0, _0807F88C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _0807F890 @ =gPlayers
	adds r6, r0, r4
	ldr r5, _0807F894 @ =sub_8005E80
	adds r0, r6, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r4
	adds r0, r6, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	mov r4, r8
	strh r4, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F88C: .4byte gStageData
_0807F890: .4byte gPlayers
_0807F894: .4byte sub_8005E80
_0807F898:
	movs r0, #1
	bl sub_807FB7C
	movs r0, #1
	bl sub_80808E8
	str r0, [r7, #0x28]
	movs r0, #1
	bl sub_808178C
	movs r0, #2
	bl sub_807FB7C
	ldr r1, _0807F8D4 @ =gCamera
	ldr r0, [r1, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #8]
	bl sub_80BA6B0
	ldr r0, _0807F8D8 @ =0x000007D1
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F8D4: .4byte gCamera
_0807F8D8: .4byte 0x000007D1
_0807F8DC:
	ldr r1, _0807F900 @ =gBldRegs
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0807F8EE
	b _0807FB6C
_0807F8EE:
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #8]
	strh r2, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F900: .4byte gBldRegs
_0807F904:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807F912
	b _0807FB6C
_0807F912:
	ldr r1, _0807F92C @ =gCamera
	ldr r0, [r1, #0x1c]
	subs r0, #0xf0
	str r0, [r1, #0x18]
	movs r0, #0xc8
	strh r0, [r7, #8]
	movs r0, #0x3c
	bl sub_80BA57C
	ldr r0, _0807F930 @ =0x000007E4
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F92C: .4byte gCamera
_0807F930: .4byte 0x000007E4
_0807F934:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _0807F944
	b _0807FB6C
_0807F944:
	ldr r2, _0807F97C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0807F980 @ =gWinRegs
	ldr r0, _0807F984 @ =0x00007778
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #0x1c
	strh r0, [r1, #0xa]
	ldr r1, _0807F988 @ =gBldRegs
	ldr r0, _0807F98C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r3, [r7, #0xa]
	strh r5, [r7, #0xc]
	ldr r0, _0807F990 @ =0x0000029B
	bl sub_80BA57C
	b _0807FB6C
	.align 2, 0
_0807F97C: .4byte gDispCnt
_0807F980: .4byte gWinRegs
_0807F984: .4byte 0x00007778
_0807F988: .4byte gBldRegs
_0807F98C: .4byte 0x00003FBF
_0807F990: .4byte 0x0000029B
_0807F994:
	ldrh r0, [r7, #0xa]
	adds r0, #0x20
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0807F9B2
	movs r0, #0x78
	strh r0, [r7, #8]
	movs r0, #2
	strh r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xe]
	ldr r0, _0807F9E0 @ =0x000007F3
	strh r0, [r7, #0xc]
_0807F9B2:
	ldr r1, _0807F9E4 @ =gSineTable
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _0807F9C8
	ldr r1, _0807F9E8 @ =0x000001FF
	adds r0, r0, r1
_0807F9C8:
	asrs r1, r0, #9
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0807F9D8
	movs r4, #0
_0807F9D8:
	adds r0, r1, #0
	adds r0, #0x78
	b _0807FA72
	.align 2, 0
_0807F9E0: .4byte 0x000007F3
_0807F9E4: .4byte gSineTable
_0807F9E8: .4byte 0x000001FF
_0807F9EC:
	movs r4, #0x58
	movs r3, #0x98
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807FA08
	strh r0, [r7, #0xa]
	movs r0, #0xff
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	b _0807FA7E
_0807FA08:
	ldrh r0, [r7, #0xa]
	subs r0, #1
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FA7E
	movs r0, #2
	strh r0, [r7, #0xa]
	ldrb r0, [r7, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r7, #0xe]
	cmp r0, #0
	bne _0807FA7E
	movs r4, #0x60
	movs r3, #0x90
	b _0807FA7E
_0807FA2A:
	ldrh r0, [r7, #0xa]
	adds r0, #8
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0807FA44
	movs r0, #4
	strh r0, [r7, #8]
	ldr r0, _0807FA90 @ =0x0000029B
	bl sub_80BA648
	strh r4, [r7, #0xc]
_0807FA44:
	ldr r1, _0807FA94 @ =gSineTable
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0x58
	muls r0, r1, r0
	cmp r0, #0
	bge _0807FA5E
	ldr r1, _0807FA98 @ =0x00003FFF
	adds r0, r0, r1
_0807FA5E:
	asrs r1, r0, #0xe
	movs r0, #0x58
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0807FA6E
	movs r4, #0
_0807FA6E:
	adds r0, r1, #0
	adds r0, #0x98
_0807FA72:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0807FA7E
	movs r3, #0xf0
_0807FA7E:
	ldr r2, _0807FA9C @ =gWinRegs
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	b _0807FB6C
	.align 2, 0
_0807FA90: .4byte 0x0000029B
_0807FA94: .4byte gSineTable
_0807FA98: .4byte 0x00003FFF
_0807FA9C: .4byte gWinRegs
_0807FAA0:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FB6C
	ldr r1, _0807FAC8 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0807FAD0
	movs r0, #0x78
	strh r0, [r7, #8]
	ldr r0, _0807FACC @ =0x0000080C
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FAC8: .4byte gBldRegs
_0807FACC: .4byte 0x0000080C
_0807FAD0:
	movs r0, #4
	strh r0, [r7, #8]
	b _0807FB6C
_0807FAD6:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FB6C
	ldr r0, [r7, #0x28]
	bl sub_8081DF4
	ldr r0, _0807FAF4 @ =0x0000023F
	bl sub_80BA57C
	ldr r0, _0807FAF8 @ =0x00000816
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FAF4: .4byte 0x0000023F
_0807FAF8: .4byte 0x00000816
_0807FAFC:
	ldr r4, _0807FB2C @ =gBldRegs
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0807FB6C
	ldr r2, _0807FB30 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0807FB34 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0807FB38 @ =gWinRegs
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	ldr r0, _0807FB3C @ =0x0000078A
	strh r0, [r7, #8]
	strh r5, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FB2C: .4byte gBldRegs
_0807FB30: .4byte gDispCnt
_0807FB34: .4byte 0x0000DFFF
_0807FB38: .4byte gWinRegs
_0807FB3C: .4byte 0x0000078A
_0807FB40:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FB6C
	ldr r0, _0807FB54 @ =0x000008FC
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FB54: .4byte 0x000008FC
_0807FB58:
	movs r0, #0x58
	bl sub_80BA57C
	bl sub_8002508
	ldr r0, _0807FB78 @ =0x0000091A
	strh r0, [r7, #0xc]
	movs r0, #0x1e
	bl sub_807FB7C
_0807FB6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807FB78: .4byte 0x0000091A

	thumb_func_start sub_807FB7C
sub_807FB7C: @ 0x0807FB7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r3, #0
	ldr r7, _0807FBE0 @ =gPlayers
	movs r0, #0x2b
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	ldr r2, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807FBB6
	b _0807FE36
_0807FBB6:
	ldr r5, [r6, #4]
	ands r5, r1
	cmp r5, #0
	beq _0807FBC0
	b _0807FE36
_0807FBC0:
	cmp r3, #0x1e
	bne _0807FBC6
	b _0807FD64
_0807FBC6:
	cmp r3, #0x1e
	bgt _0807FBFC
	cmp r3, #0xa
	beq _0807FCBC
	cmp r3, #0xa
	bgt _0807FBEA
	cmp r3, #1
	beq _0807FC44
	cmp r3, #1
	bgt _0807FBE4
	cmp r3, #0
	beq _0807FC3A
	b _0807FE36
	.align 2, 0
_0807FBE0: .4byte gPlayers
_0807FBE4:
	cmp r3, #2
	beq _0807FCB0
	b _0807FE36
_0807FBEA:
	cmp r3, #0xc
	bne _0807FBF0
	b _0807FE36
_0807FBF0:
	cmp r3, #0xc
	blt _0807FCC8
	cmp r3, #0x14
	bne _0807FBFA
	b _0807FD40
_0807FBFA:
	b _0807FE36
_0807FBFC:
	cmp r3, #0xc8
	bne _0807FC02
	b _0807FDE2
_0807FC02:
	cmp r3, #0xc8
	bgt _0807FC20
	cmp r3, #0x96
	bne _0807FC0C
	b _0807FD88
_0807FC0C:
	cmp r3, #0x96
	bgt _0807FC18
	cmp r3, #0x64
	bne _0807FC16
	b _0807FD78
_0807FC16:
	b _0807FE36
_0807FC18:
	cmp r3, #0xa0
	bne _0807FC1E
	b _0807FDA0
_0807FC1E:
	b _0807FE36
_0807FC20:
	cmp r3, #0xdc
	bne _0807FC26
	b _0807FE0C
_0807FC26:
	cmp r3, #0xdc
	bgt _0807FC32
	cmp r3, #0xd2
	bne _0807FC30
	b _0807FDFC
_0807FC30:
	b _0807FE36
_0807FC32:
	cmp r4, #0xfa
	bne _0807FC38
	b _0807FE24
_0807FC38:
	b _0807FE36
_0807FC3A:
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r2, r1
	str r2, [r7, #4]
	b _0807FCA2
_0807FC44:
	ldr r0, _0807FCAC @ =gStageData
	adds r0, #0xac
	strh r5, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r2, r1
	str r2, [r7, #4]
	ldr r0, [r6, #4]
	ands r0, r1
	subs r1, #0xff
	ands r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #8]
	ands r0, r1
	str r0, [r6, #8]
	strh r5, [r7, #0x1c]
	strh r5, [r7, #0x18]
	strh r5, [r7, #0x1a]
	adds r0, r7, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r0, r7, #0
	bl Player_8005380
	movs r0, #0xcf
	lsls r0, r0, #0xb
	str r0, [r7, #0x10]
	movs r4, #0xb3
	lsls r4, r4, #8
	str r4, [r7, #0x14]
	strh r5, [r6, #0x1c]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	adds r0, r6, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r0, r6, #0
	bl Player_8005380
	movs r0, #0xcb
	lsls r0, r0, #0xb
	str r0, [r6, #0x10]
	str r4, [r6, #0x14]
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #4]
_0807FCA2:
	ldr r0, [r6, #4]
	orrs r0, r1
	str r0, [r6, #4]
	b _0807FE36
	.align 2, 0
_0807FCAC: .4byte gStageData
_0807FCB0:
	ldr r1, _0807FCB8 @ =0xF7FFFFFF
	ands r2, r1
	str r2, [r7, #4]
	b _0807FD38
	.align 2, 0
_0807FCB8: .4byte 0xF7FFFFFF
_0807FCBC:
	ldr r1, _0807FCC4 @ =gStageData
	movs r0, #9
	strb r0, [r1, #4]
	b _0807FD52
	.align 2, 0
_0807FCC4: .4byte gStageData
_0807FCC8:
	movs r4, #0xc0
	lsls r4, r4, #0x10
	ands r2, r4
	cmp r2, #0
	beq _0807FCE6
	adds r0, r7, #0
	bl sub_8016F28
	adds r2, r7, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807FCE6:
	ldr r0, [r6, #4]
	ands r0, r4
	cmp r0, #0
	beq _0807FD02
	adds r0, r6, #0
	bl sub_8016F28
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807FD02:
	ldr r0, [r7, #4]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0807FD12
	adds r0, r7, #0
	bl Player_8005380
_0807FD12:
	ldr r0, [r6, #4]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0807FD28
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0807FD2E
_0807FD28:
	adds r0, r6, #0
	bl Player_8005380
_0807FD2E:
	ldr r0, [r7, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
_0807FD38:
	ldr r0, [r6, #4]
	ands r0, r1
	str r0, [r6, #4]
	b _0807FE36
_0807FD40:
	ldr r1, _0807FD5C @ =gStageData
	movs r0, #3
	strb r0, [r1, #4]
	ldr r1, _0807FD60 @ =0xF7FFFFFF
	ands r2, r1
	str r2, [r7, #4]
	ldr r0, [r6, #4]
	ands r0, r1
	str r0, [r6, #4]
_0807FD52:
	strh r5, [r7, #0x1e]
	strh r5, [r7, #0x20]
	strh r5, [r6, #0x1e]
	strh r5, [r6, #0x20]
	b _0807FE36
	.align 2, 0
_0807FD5C: .4byte gStageData
_0807FD60: .4byte 0xF7FFFFFF
_0807FD64:
	adds r2, r6, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _0807FE36
_0807FD78:
	ldr r1, _0807FD84 @ =sub_8081810
	adds r0, r7, #0
	bl SetPlayerCallback
	b _0807FE36
	.align 2, 0
_0807FD84: .4byte sub_8081810
_0807FD88:
	bl sub_807C5D0
	ldr r1, [r7]
	ldr r0, _0807FD9C @ =sub_8081A3C
	cmp r1, r0
	bne _0807FE36
	adds r0, r7, #0
	bl Player_8005380
	b _0807FE36
	.align 2, 0
_0807FD9C: .4byte sub_8081A3C
_0807FDA0:
	movs r4, #0xc0
	lsls r4, r4, #0x10
	ands r2, r4
	cmp r2, #0
	beq _0807FDBE
	adds r0, r7, #0
	bl sub_8016F28
	adds r2, r7, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807FDBE:
	ldr r0, [r6, #4]
	ands r0, r4
	cmp r0, #0
	beq _0807FE36
	adds r0, r6, #0
	bl sub_8016F28
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	bl Player_8005380
	b _0807FE36
_0807FDE2:
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	ldr r4, _0807FDF8 @ =sub_808183C
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	bl _call_via_r4
	b _0807FE36
	.align 2, 0
_0807FDF8: .4byte sub_808183C
_0807FDFC:
	movs r0, #1
	orrs r2, r0
	str r2, [r7, #4]
	ldr r4, _0807FE08 @ =sub_8081840
	b _0807FE0E
	.align 2, 0
_0807FE08: .4byte sub_8081840
_0807FE0C:
	ldr r4, _0807FE20 @ =sub_808186C
_0807FE0E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	b _0807FE36
	.align 2, 0
_0807FE20: .4byte sub_808186C
_0807FE24:
	ldr r4, _0807FE44 @ =Player_8005380
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
_0807FE36:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807FE44: .4byte Player_8005380

	thumb_func_start sub_807FE48
sub_807FE48: @ 0x0807FE48
	push {r4, r5, r6, lr}
	ldr r0, _0807FEA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldr r6, _0807FEAC @ =gPlayers
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r6
	movs r0, #0
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x14]
	ldr r1, _0807FEB0 @ =gUnknown_08E2ED48
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldrh r1, [r6, #0x1e]
	ldrh r0, [r5, #0x14]
	strh r0, [r6, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r6, #0x20]
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r4, #0x20]
	adds r0, r5, #0
	bl sub_8080548
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807FEA8: .4byte gCurTask
_0807FEAC: .4byte gPlayers
_0807FEB0: .4byte gUnknown_08E2ED48

	thumb_func_start sub_807FEB4
sub_807FEB4: @ 0x0807FEB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0807FEEC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r3
	ldrh r1, [r4, #0x12]
	cmp r1, #0xc8
	bne _0807FED8
	b _08080076
_0807FED8:
	cmp r1, #0xc8
	bgt _0807FEFC
	cmp r1, #0xa
	beq _0807FF2E
	cmp r1, #0xa
	bgt _0807FEF0
	cmp r1, #0
	beq _0807FF24
	b _08080076
	.align 2, 0
_0807FEEC: .4byte gPlayers
_0807FEF0:
	cmp r1, #0x64
	beq _0807FF44
	cmp r1, #0x82
	bne _0807FEFA
	b _08080054
_0807FEFA:
	b _08080076
_0807FEFC:
	movs r5, #0x9b
	lsls r5, r5, #1
	cmp r1, r5
	beq _0807FFB0
	cmp r1, r5
	bgt _0807FF12
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807FF70
	b _08080076
_0807FF12:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807FFEC
	adds r0, #0xa
	cmp r1, r0
	bne _0807FF22
	b _0808001C
_0807FF22:
	b _08080076
_0807FF24:
	movs r0, #0xb9
	lsls r0, r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xa
	b _08080074
_0807FF2E:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807FF3C
	b _08080076
_0807FF3C:
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	movs r0, #0x64
	b _08080074
_0807FF44:
	ldrh r0, [r4, #0x14]
	movs r3, #0x10
	movs r2, #0
	orrs r0, r3
	strh r0, [r4, #0x14]
	ldrh r1, [r4, #0x10]
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	cmp r0, #0x95
	bgt _0807FF5E
	ldrh r0, [r4, #0x16]
	orrs r0, r3
	strh r0, [r4, #0x16]
_0807FF5E:
	subs r0, r1, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807FF6A
	b _08080076
_0807FF6A:
	movs r0, #0x96
	lsls r0, r0, #1
	b _08080074
_0807FF70:
	ldr r0, [r3, #0x10]
	asrs r2, r0, #8
	ldr r0, _0807FFA8 @ =0x00000898
	cmp r2, r0
	ble _0807FF82
	ldrh r1, [r4, #0x14]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x14]
_0807FF82:
	ldr r0, _0807FFAC @ =0x000008CB
	cmp r2, r0
	ble _08080076
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080076
	movs r1, #0
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	strh r1, [r3, #0x1c]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	adds r0, r3, #0
	bl Player_8005380
	strh r5, [r4, #0x12]
	b _08080076
	.align 2, 0
_0807FFA8: .4byte 0x00000898
_0807FFAC: .4byte 0x000008CB
_0807FFB0:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	movs r3, #0
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FFC8
	movs r0, #0x14
	strh r0, [r4, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
_0807FFC8:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807FFE8 @ =0x00000897
	cmp r0, r1
	ble _08080076
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08080076
	strh r3, [r2, #0x1c]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1a]
	adds r0, r2, #0
	bl Player_8005380
	b _08080076
	.align 2, 0
_0807FFE8: .4byte 0x00000897
_0807FFEC:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r4, #0x14]
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08080076
	ldr r0, [r3, #0xc]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r3, #0xc]
	ldr r0, _08080018 @ =gStageData
	ldrh r0, [r0, #0x14]
	orrs r2, r0
	strh r2, [r4, #0x14]
	movs r0, #0xa5
	lsls r0, r0, #1
	b _08080074
	.align 2, 0
_08080018: .4byte gStageData
_0808001C:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	orrs r0, r1
	ldr r1, _0808004C @ =gStageData
	ldrh r1, [r1, #0x14]
	orrs r0, r1
	strh r0, [r4, #0x14]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _08080050 @ =0x0000090F
	cmp r0, r1
	ble _08080076
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	movs r0, #0
	strh r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_80044CC
	movs r0, #0x82
	b _08080074
	.align 2, 0
_0808004C: .4byte gStageData
_08080050: .4byte 0x0000090F
_08080054:
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xb0
	ble _08080076
	movs r1, #0x1a
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08080076
	movs r0, #0
	strh r0, [r3, #0x1c]
	strh r0, [r3, #0x18]
	strh r0, [r3, #0x1a]
	adds r0, r3, #0
	bl Player_8005380
	movs r0, #0xc8
_08080074:
	strh r0, [r4, #0x12]
_08080076:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_808007C
sub_808007C: @ 0x0808007C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _080800B4 @ =gPlayers
	ldr r1, _080800B8 @ =gStageData
	movs r2, #0
	movs r0, #9
	strb r0, [r1, #4]
	ldrh r1, [r4, #0x12]
	cmp r1, #0xbe
	bne _08080092
	b _08080374
_08080092:
	cmp r1, #0xbe
	bgt _080800EE
	cmp r1, #0x82
	bne _0808009C
	b _08080200
_0808009C:
	cmp r1, #0x82
	bgt _080800C8
	cmp r1, #0x64
	beq _0808017E
	cmp r1, #0x64
	bgt _080800BC
	cmp r1, #0
	beq _0808015A
	cmp r1, #0xa
	beq _08080168
	b _080804AC
	.align 2, 0
_080800B4: .4byte gPlayers
_080800B8: .4byte gStageData
_080800BC:
	cmp r1, #0x6e
	beq _080801A8
	cmp r1, #0x78
	bne _080800C6
	b _080801D4
_080800C6:
	b _080804AC
_080800C8:
	cmp r1, #0xab
	bne _080800CE
	b _08080318
_080800CE:
	cmp r1, #0xab
	bgt _080800E0
	cmp r1, #0x8c
	bne _080800D8
	b _08080230
_080800D8:
	cmp r1, #0xaa
	bne _080800DE
	b _080802F8
_080800DE:
	b _080804AC
_080800E0:
	cmp r1, #0xac
	bne _080800E6
	b _08080334
_080800E6:
	cmp r1, #0xb4
	bne _080800EC
	b _08080358
_080800EC:
	b _080804AC
_080800EE:
	cmp r1, #0xfa
	bne _080800F4
	b _0808048C
_080800F4:
	cmp r1, #0xfa
	bgt _0808011E
	cmp r1, #0xdc
	bne _080800FE
	b _080803FC
_080800FE:
	cmp r1, #0xdc
	bgt _08080110
	cmp r1, #0xc8
	bne _08080108
	b _080803A0
_08080108:
	cmp r1, #0xd2
	bne _0808010E
	b _080803D8
_0808010E:
	b _080804AC
_08080110:
	cmp r1, #0xe6
	bne _08080116
	b _0808043C
_08080116:
	cmp r1, #0xf0
	bne _0808011C
	b _08080460
_0808011C:
	b _080804AC
_0808011E:
	movs r2, #0x82
	lsls r2, r2, #2
	cmp r1, r2
	bne _08080128
	b _0808028E
_08080128:
	cmp r1, r2
	bgt _08080140
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08080136
	b _08080250
_08080136:
	adds r0, #0xa
	cmp r1, r0
	bne _0808013E
	b _08080274
_0808013E:
	b _080804AC
_08080140:
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, r0
	bne _0808014A
	b _08080420
_0808014A:
	cmp r1, r0
	ble _08080150
	b _080804AC
_08080150:
	subs r0, #0x46
	cmp r1, r0
	bne _08080158
	b _080802D0
_08080158:
	b _080804AC
_0808015A:
	ldr r0, _08080164 @ =0x00000181
	strh r0, [r4, #0x10]
	movs r0, #0xa
	b _080804AA
	.align 2, 0
_08080164: .4byte 0x00000181
_08080168:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080176
	b _080804AC
_08080176:
	movs r0, #0x87
	strh r0, [r4, #0x10]
	movs r0, #0x64
	b _080804AA
_0808017E:
	ldrh r0, [r4, #0x14]
	movs r3, #0x10
	movs r2, #0
	orrs r0, r3
	strh r0, [r4, #0x14]
	ldrh r1, [r4, #0x10]
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	cmp r0, #0x45
	bgt _08080198
	ldrh r0, [r4, #0x16]
	orrs r0, r3
	strh r0, [r4, #0x16]
_08080198:
	subs r0, r1, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080801A4
	b _080804AC
_080801A4:
	movs r0, #0x6e
	b _080804AA
_080801A8:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _080801D0 @ =0x0000085C
	cmp r0, r1
	bgt _080801B4
	b _080804AC
_080801B4:
	strh r2, [r5, #0x1c]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	bl Player_8005380
	movs r0, #0xd6
	strh r0, [r4, #0x10]
	movs r0, #0x78
	strh r0, [r4, #0x12]
	movs r0, #0xc8
	bl sub_807FB7C
	b _080804AC
	.align 2, 0
_080801D0: .4byte 0x0000085C
_080801D4:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080801E2
	b _080804AC
_080801E2:
	ldr r1, _080801F8 @ =sub_8008CD0
	adds r0, r5, #0
	bl SetPlayerCallback
	ldr r0, _080801FC @ =0x0000029A
	bl sub_80BA57C
	movs r0, #0xa
	strh r0, [r4, #0xc]
	movs r0, #0x82
	b _080804AA
	.align 2, 0
_080801F8: .4byte sub_8008CD0
_080801FC: .4byte 0x0000029A
_08080200:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _0808022C @ =0x00000803
	cmp r0, r1
	ble _0808020C
	b _080804AC
_0808020C:
	ldr r0, [r5, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	strh r2, [r5, #0x1c]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r2, [r0]
	adds r0, r5, #0
	bl Player_8005380
	movs r0, #0x8c
	b _080804AA
	.align 2, 0
_0808022C: .4byte 0x00000803
_08080230:
	ldr r0, _0808024C @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	beq _0808023A
	b _080804AC
_0808023A:
	ldrh r1, [r4, #0x14]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r4, #0x14]
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r4, #0x10]
	adds r0, #0x50
	b _080804AA
	.align 2, 0
_0808024C: .4byte gBldRegs
_08080250:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808025E
	b _080804AC
_0808025E:
	ldr r1, _08080270 @ =sub_8008CD0
	adds r0, r5, #0
	bl SetPlayerCallback
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	movs r0, #0xff
	lsls r0, r0, #1
	b _080804AA
	.align 2, 0
_08080270: .4byte sub_8008CD0
_08080274:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080284
	b _080804AC
_08080284:
	strh r2, [r4, #0x12]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r1, [r0]
	b _080804AC
_0808028E:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	movs r7, #0
	orrs r0, r1
	strh r0, [r4, #0x14]
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	ldr r6, _080802C8 @ =gCamera
	ldr r0, [r6]
	adds r0, #0x78
	cmp r1, r0
	bge _080802A8
	b _080804AC
_080802A8:
	movs r0, #0x64
	bl sub_807FB7C
	ldr r0, [r6]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	ldr r0, _080802CC @ =0x00000212
	strh r0, [r4, #0x12]
	movs r0, #0x73
	bl sub_80BA57C
	b _080804AC
	.align 2, 0
_080802C8: .4byte gCamera
_080802CC: .4byte 0x00000212
_080802D0:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080802DE
	b _080804AC
_080802DE:
	movs r0, #0x93
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	adds r0, #0xba
	strh r0, [r4, #0x10]
	movs r0, #0xaa
	strh r0, [r4, #0x12]
	movs r0, #0x64
	strh r0, [r4, #0xc]
	movs r0, #0x3d
	bl sub_80BA57C
	b _080804AC
_080802F8:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080306
	b _080804AC
_08080306:
	ldr r0, _08080314 @ =0x00000127
	strh r0, [r5, #0x30]
	movs r0, #0x1e
	strh r0, [r4, #0x10]
	movs r0, #0xab
	b _080804AA
	.align 2, 0
_08080314: .4byte 0x00000127
_08080318:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080326
	b _080804AC
_08080326:
	ldr r0, _08080330 @ =0x0000FF80
	strh r0, [r5, #0x1a]
	movs r0, #0xac
	b _080804AA
	.align 2, 0
_08080330: .4byte 0x0000FF80
_08080334:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	asrs r1, r1, #8
	ldr r0, _08080354 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x64
	cmp r1, r0
	ble _0808034C
	b _080804AC
_0808034C:
	movs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xb4
	b _080804AA
	.align 2, 0
_08080354: .4byte gCamera
_08080358:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080366
	b _080804AC
_08080366:
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0xbe
	b _080804AA
_08080374:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08080384
	b _080804AC
_08080384:
	ldr r1, _08080398 @ =gBldRegs
	ldr r0, _0808039C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	movs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xc8
	b _080804AA
	.align 2, 0
_08080398: .4byte gBldRegs
_0808039C: .4byte 0x00003FBF
_080803A0:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080803AE
	b _080804AC
_080803AE:
	movs r0, #4
	strh r0, [r4, #0x10]
	ldr r1, _080803D4 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _080804AC
	movs r0, #0
	strb r0, [r4, #1]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	movs r0, #0xd2
	b _080804AA
	.align 2, 0
_080803D4: .4byte gBldRegs
_080803D8:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	ldr r0, _080803F4 @ =0x00000129
	strh r0, [r5, #0x30]
	movs r0, #0xdc
	strh r0, [r4, #0x12]
	ldr r0, _080803F8 @ =0x0000023F
	bl sub_80BA57C
	b _080804AC
	.align 2, 0
_080803F4: .4byte 0x00000129
_080803F8: .4byte 0x0000023F
_080803FC:
	ldr r1, _0808041C @ =gBldRegs
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x96
	lsls r0, r0, #2
	b _080804AA
	.align 2, 0
_0808041C: .4byte gBldRegs
_08080420:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0xe6
	b _080804AA
_0808043C:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	ldr r0, [r5, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #0x95
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	movs r0, #0x1e
	strh r0, [r4, #0x10]
	movs r0, #0xf0
	b _080804AA
_08080460:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080804AC
	ldr r0, _08080488 @ =0x0000012B
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x18]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	movs r0, #0xfa
	strh r0, [r4, #0x12]
	movs r0, #0x70
	bl sub_80BA57C
	b _080804AC
	.align 2, 0
_08080488: .4byte 0x0000012B
_0808048C:
	ldrh r0, [r5, #0x1a]
	subs r0, #0x2a
	strh r0, [r5, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080804AC
	movs r0, #0x96
	lsls r0, r0, #1
_080804AA:
	strh r0, [r4, #0x12]
_080804AC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80804B4
sub_80804B4: @ 0x080804B4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xa8
	ldr r6, [r3, #0x18]
	movs r0, #0
	strb r0, [r3, #1]
	movs r5, #0
	movs r4, #0
	ldr r7, _08080544 @ =gUnknown_080D5CA8
	adds r0, r7, #4
	mov ip, r0
_080804CC:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	str r4, [r0]
	adds r1, r3, r1
	movs r0, #1
	strh r0, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	str r6, [r2]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r0, r7, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	add r1, ip
	ldrh r0, [r1]
	strb r0, [r2, #0x1f]
	strh r4, [r2, #0x10]
	strh r4, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, #0x28
	adds r6, #0x80
	cmp r5, #6
	bls _080804CC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080544: .4byte gUnknown_080D5CA8

	thumb_func_start sub_8080548
sub_8080548: @ 0x08080548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	ldr r1, _08080574 @ =gPlayers
	ldrh r0, [r0, #0xc]
	cmp r0, #0x1e
	bne _08080560
	b _0808066C
_08080560:
	cmp r0, #0x1e
	bgt _08080578
	cmp r0, #0xa
	beq _08080592
	cmp r0, #0xa
	bgt _0808056E
	b _0808087A
_0808056E:
	cmp r0, #0x14
	beq _08080600
	b _0808087A
	.align 2, 0
_08080574: .4byte gPlayers
_08080578:
	cmp r0, #0x64
	bne _0808057E
	b _080806F4
_0808057E:
	cmp r0, #0x64
	bgt _0808058A
	cmp r0, #0x28
	bne _08080588
	b _080806B0
_08080588:
	b _0808087A
_0808058A:
	cmp r0, #0x6e
	bne _08080590
	b _080807AC
_08080590:
	b _0808087A
_08080592:
	movs r5, #0
	movs r0, #0x1c
	add r0, ip
	mov sb, r0
	movs r2, #0x20
	add r2, ip
	mov r8, r2
	ldr r7, [r1, #0x14]
	mov r6, ip
	adds r6, #0x24
	movs r3, #0x28
	add r3, ip
	mov sl, r3
	ldr r4, _080805F4 @ =gUnknown_080D5CD4
_080805AE:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #2
	mov r0, sb
	adds r1, r0, r2
	ldr r3, _080805F8 @ =gCamera
	ldr r0, [r3]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r1]
	mov r1, r8
	adds r0, r1, r2
	str r7, [r0]
	adds r3, r6, r2
	lsls r1, r5, #3
	adds r0, r1, r4
	ldr r0, [r0]
	str r0, [r3]
	add r2, sl
	ldr r3, _080805FC @ =gUnknown_080D5CD8
	adds r1, r1, r3
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080805AE
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #1]
	movs r0, #0x14
	strh r0, [r1, #0xc]
	b _0808087A
	.align 2, 0
_080805F4: .4byte gUnknown_080D5CD4
_080805F8: .4byte gCamera
_080805FC: .4byte gUnknown_080D5CD8
_08080600:
	movs r5, #0
	movs r6, #0
	movs r2, #0x20
	add r2, ip
	mov r8, r2
_0808060A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	mov r0, r8
	adds r4, r0, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r0, #0xbb
	ble _0808062A
	movs r0, #0xbc
	lsls r0, r0, #8
	str r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08080650
_0808062A:
	mov r2, ip
	adds r2, #0x1c
	adds r2, r2, r3
	mov r0, ip
	adds r0, #0x24
	adds r0, r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	mov r0, ip
	adds r0, #0x28
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x2a
	str r1, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_08080650:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0808060A
	cmp r6, #7
	beq _08080660
	b _0808087A
_08080660:
	movs r0, #0xb4
	mov r1, ip
	strh r0, [r1, #0xe]
	movs r0, #0x1e
	strh r0, [r1, #0xc]
	b _0808087A
_0808066C:
	mov r2, ip
	ldrh r0, [r2, #0xe]
	subs r0, #1
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808067C
	b _0808087A
_0808067C:
	movs r5, #0
	adds r2, #0x28
	ldr r3, _080806AC @ =gUnknown_080D5CD8
_08080682:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r2, r0
	lsls r0, r5, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bge _08080696
	adds r0, #7
_08080696:
	asrs r0, r0, #3
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _08080682
	movs r0, #0x28
	mov r3, ip
	strh r0, [r3, #0xc]
	b _0808087A
	.align 2, 0
_080806AC: .4byte gUnknown_080D5CD8
_080806B0:
	movs r5, #0
	ldr r6, _080806F0 @ =gBldRegs
	mov r4, ip
	adds r4, #0x20
	mov r3, ip
	adds r3, #0x28
_080806BC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r3, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080806BC
	ldrh r0, [r6, #4]
	cmp r0, #0x10
	beq _080806E0
	b _0808087A
_080806E0:
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #1]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r1, #0xc]
	b _0808087A
	.align 2, 0
_080806F0: .4byte gBldRegs
_080806F4:
	movs r0, #0
	mov r2, ip
	strh r0, [r2, #2]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #8]
	lsls r0, r0, #2
	str r0, [r2, #4]
	ldr r1, _0808079C @ =gCamera
	ldr r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r2, #0x24]
	ldr r0, [r1, #4]
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r2, #0x28]
	movs r5, #0
	movs r7, #0
	movs r3, #0x1c
	add r3, ip
	mov sb, r3
	movs r0, #0x20
	add r0, ip
	mov r8, r0
	ldr r1, _080807A0 @ =gSineTable
	mov sl, r1
	ldr r4, _080807A4 @ =0x00003FFF
_0808072C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #4]
	muls r0, r1, r0
	cmp r0, #0
	bge _08080746
	adds r0, r0, r4
_08080746:
	asrs r6, r0, #0xe
	lsls r0, r7, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #8]
	muls r0, r1, r0
	cmp r0, #0
	bge _0808075C
	adds r0, r0, r4
_0808075C:
	asrs r3, r0, #0xe
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r0, sb
	adds r0, r0, r1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	adds r0, r6, r0
	ldr r2, [sp]
	str r0, [r2]
	add r1, r8
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r3, r0
	str r0, [r1]
	adds r7, #0x92
	ldr r3, _080807A8 @ =0x000003FF
	adds r0, r3, #0
	ands r7, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0808072C
	movs r0, #1
	strb r0, [r2, #1]
	movs r0, #0x6e
	strh r0, [r2, #0xc]
	b _0808087A
	.align 2, 0
_0808079C: .4byte gCamera
_080807A0: .4byte gSineTable
_080807A4: .4byte 0x00003FFF
_080807A8: .4byte 0x000003FF
_080807AC:
	mov r1, ip
	ldrh r0, [r1, #2]
	subs r0, #8
	ldr r2, _08080850 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r3, ip
	strh r0, [r3, #2]
	ldr r0, [r3, #8]
	subs r0, #0x40
	str r0, [r3, #8]
	asrs r0, r0, #8
	cmp r0, #8
	bgt _080807CE
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r3, #8]
_080807CE:
	mov r1, ip
	ldr r0, [r1, #8]
	lsls r0, r0, #2
	str r0, [r1, #4]
	mov r4, ip
	adds r4, #0xa8
	movs r5, #0
	ldrh r7, [r1, #2]
	movs r2, #0x1c
	add r2, ip
	mov sb, r2
	movs r3, #0x20
	add r3, ip
	mov r8, r3
	ldr r0, _08080854 @ =0x00003FFF
	mov sl, r0
_080807EE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r2, _08080858 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #4]
	muls r0, r1, r0
	cmp r0, #0
	bge _0808080A
	add r0, sl
_0808080A:
	asrs r6, r0, #0xe
	lsls r0, r7, #1
	ldr r3, _08080858 @ =gSineTable
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, ip
	ldr r0, [r3, #8]
	muls r0, r1, r0
	cmp r0, #0
	bge _08080822
	add r0, sl
_08080822:
	asrs r3, r0, #0xe
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r0, sb
	adds r0, r0, r1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	adds r0, r6, r0
	ldr r2, [sp]
	str r0, [r2]
	add r1, r8
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r3, r0
	str r0, [r1]
	ldr r3, _0808085C @ =0x000001FF
	cmp r7, r3
	bhi _08080860
	movs r0, #0x80
	lsls r0, r0, #2
	b _08080864
	.align 2, 0
_08080850: .4byte 0x000003FF
_08080854: .4byte 0x00003FFF
_08080858: .4byte gSineTable
_0808085C: .4byte 0x000001FF
_08080860:
	movs r0, #0x98
	lsls r0, r0, #3
_08080864:
	strh r0, [r4, #0x14]
	adds r7, #0x92
	ldr r1, _080808E0 @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
	cmp r5, #6
	bls _080807EE
_0808087A:
	mov r2, ip
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080808CE
	mov r4, ip
	adds r4, #0xa8
	movs r5, #0
	movs r3, #0x1c
	add r3, ip
	mov sb, r3
	movs r0, #0x20
	add r0, ip
	mov r8, r0
	ldr r6, _080808E4 @ =gCamera
_08080896:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #2
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
	cmp r5, #6
	bls _08080896
_080808CE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080808E0: .4byte 0x000003FF
_080808E4: .4byte gCamera

	thumb_func_start sub_80808E8
sub_80808E8: @ 0x080808E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808099C @ =sub_8080AD4
	movs r1, #0x8e
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _080809A0 @ =sub_8081C4C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	movs r1, #0
	strb r4, [r7]
	movs r0, #1
	strh r0, [r7, #4]
	strh r1, [r7, #6]
	strh r1, [r7, #2]
	str r1, [r7, #0xc]
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r0, _080809A4 @ =0x03000068
	adds r1, r2, r0
	movs r3, #0
	adds r5, r1, #0
_08080932:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08080932
	movs r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x20
	str r2, [sp, #0xc]
	movs r0, #0x24
	adds r0, r0, r7
	mov sl, r0
	adds r6, r7, #0
	adds r6, #0xa0
	movs r1, #0xd8
	adds r1, r1, r7
	mov r8, r1
	ldr r2, _080809A8 @ =gCamera
	mov sb, r2
	mov ip, r4
_0808096A:
	cmp r4, #2
	beq _080809AC
	lsls r3, r4, #3
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r1, r1, r2
	str r1, [sp, #0x14]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #8
	ldr r1, [sp, #0x14]
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r2
	mov r2, sb
	ldr r0, [r2, #4]
	adds r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1]
	b _080809C0
	.align 2, 0
_0808099C: .4byte sub_8080AD4
_080809A0: .4byte sub_8081C4C
_080809A4: .4byte 0x03000068
_080809A8: .4byte gCamera
_080809AC:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x8c
	lsls r0, r0, #8
	str r0, [r7, #0x4c]
	ldr r0, [r1, #4]
	adds r0, #0xd4
	lsls r0, r0, #8
	str r0, [r7, #0x50]
	movs r3, #0x10
_080809C0:
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r2, [sp, #8]
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	mov r2, sl
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	adds r1, r7, r1
	movs r0, #1
	strh r0, [r1, #0x28]
	strh r2, [r1, #0x2a]
	ldrb r0, [r7]
	cmp r0, #0
	beq _080809EE
	movs r0, #0xfa
	lsls r0, r0, #2
_080809EE:
	strh r0, [r1, #0x2c]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0808096A
	ldrb r0, [r7]
	cmp r0, #0
	bne _08080A08
	movs r0, #0x74
	bl VramMalloc
	b _08080A0A
_08080A08:
	movs r0, #0
_08080A0A:
	str r0, [r7, #8]
	movs r0, #0x80
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0xc]
	str r1, [r7, #0x68]
	movs r2, #0
	movs r4, #0
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	subs r0, #0x48
	strh r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	str r1, [r6]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	subs r0, #0x89
	strh r0, [r6, #0xc]
	strb r2, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r1, sl
	strb r1, [r6, #0x1c]
	movs r0, #9
	strb r0, [r6, #0x1f]
	strh r4, [r6, #0x10]
	strh r4, [r6, #0x12]
	mov r0, sb
	str r0, [r6, #8]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldrh r0, [r7, #2]
	strh r0, [r1]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x24
	str r2, [sp, #0x10]
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0x10]
	mov r0, r8
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #3
	mov r1, r8
	strh r0, [r1, #0x14]
	adds r0, #0xa
	strh r0, [r1, #0xc]
	ldr r2, [sp, #0x10]
	strb r2, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sl
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	mov r2, sb
	str r2, [r1, #8]
	ldr r0, [sp, #4]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8080AD4
sub_8080AD4: @ 0x08080AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08080B1C @ =gCurTask
	ldr r1, [r0]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r1, _08080B20 @ =0x03000110
	adds r7, r2, r1
	ldrh r1, [r5, #0x2c]
	adds r3, r0, #0
	cmp r1, #0xc8
	bne _08080B00
	ldr r4, _08080B24 @ =0x03000064
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #0xc8
	beq _08080B12
_08080B00:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080B28
	ldr r4, _08080B24 @ =0x03000064
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _08080B28
_08080B12:
	ldr r0, [r3]
	bl TaskDestroy
	b _08080BC0
	.align 2, 0
_08080B1C: .4byte gCurTask
_08080B20: .4byte 0x03000110
_08080B24: .4byte 0x03000064
_08080B28:
	adds r0, r5, #0
	bl sub_8080BD0
	adds r0, r5, #0
	bl sub_80811E0
	movs r6, #0
	movs r0, #0x14
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x18
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08080B9C @ =gCamera
	mov r8, r2
_08080B46:
	lsls r2, r6, #3
	subs r2, r2, r6
	lsls r0, r2, #3
	adds r0, #0x68
	adds r4, r5, r0
	lsls r2, r2, #2
	mov r3, sl
	adds r0, r3, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08080BA0
	ldrh r0, [r5, #2]
	strh r0, [r7]
	ldrh r0, [r4, #0x10]
	strh r0, [r7, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r7, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08080BAC
	.align 2, 0
_08080B9C: .4byte gCamera
_08080BA0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08080BAC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bhi _08080BC0
	cmp r6, #2
	bne _08080B46
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08080B46
_08080BC0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8080BD0
sub_8080BD0: @ 0x08080BD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x14
	movs r0, #0x30
	adds r0, r0, r6
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x68
	adds r3, r6, #0
	adds r3, #0xa0
	ldrh r1, [r5, #0x18]
	ldr r4, _08080C20 @ =0x0000041A
	cmp r1, r4
	bne _08080BF8
	b _0808100C
_08080BF8:
	cmp r1, r4
	bgt _08080C7C
	cmp r1, #0x32
	bne _08080C02
	b _08080DD4
_08080C02:
	cmp r1, #0x32
	bgt _08080C32
	cmp r1, #0x14
	bne _08080C0C
	b _08080D58
_08080C0C:
	cmp r1, #0x14
	bgt _08080C24
	cmp r1, #0
	bne _08080C16
	b _08080D30
_08080C16:
	cmp r1, #0xa
	bne _08080C1C
	b _08080D38
_08080C1C:
	b _080811C6
	.align 2, 0
_08080C20: .4byte 0x0000041A
_08080C24:
	cmp r1, #0x1e
	bne _08080C2A
	b _08080D70
_08080C2A:
	cmp r1, #0x28
	bne _08080C30
	b _08080D8C
_08080C30:
	b _080811C6
_08080C32:
	ldr r2, _08080C50 @ =0x000003F2
	cmp r1, r2
	bne _08080C3A
	b _08080F38
_08080C3A:
	cmp r1, r2
	bgt _08080C54
	cmp r1, #0x64
	bne _08080C44
	b _08080E2C
_08080C44:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08080C4E
	b _08080F34
_08080C4E:
	b _080811C6
	.align 2, 0
_08080C50: .4byte 0x000003F2
_08080C54:
	ldr r2, _08080C6C @ =0x00000406
	cmp r1, r2
	bne _08080C5C
	b _08080F6C
_08080C5C:
	cmp r1, r2
	bgt _08080C70
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08080C6A
	b _08080F58
_08080C6A:
	b _080811C6
	.align 2, 0
_08080C6C: .4byte 0x00000406
_08080C70:
	movs r0, #0x82
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080C7A
	b _08080FB4
_08080C7A:
	b _080811C6
_08080C7C:
	ldr r4, _08080CA8 @ =0x0000046A
	cmp r1, r4
	bne _08080C84
	b _0808111C
_08080C84:
	cmp r1, r4
	bgt _08080CDC
	movs r0, #0x87
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080C92
	b _0808103E
_08080C92:
	cmp r1, r0
	bgt _08080CB0
	ldr r2, _08080CAC @ =0x00000424
	cmp r1, r2
	bne _08080C9E
	b _080811C6
_08080C9E:
	subs r0, #0xa
	cmp r1, r0
	bne _08080CA6
	b _0808102C
_08080CA6:
	b _080811C6
	.align 2, 0
_08080CA8: .4byte 0x0000046A
_08080CAC: .4byte 0x00000424
_08080CB0:
	ldr r2, _08080CC8 @ =0x00000456
	cmp r1, r2
	bne _08080CB8
	b _08081092
_08080CB8:
	cmp r1, r2
	bgt _08080CD0
	ldr r0, _08080CCC @ =0x0000044C
	cmp r1, r0
	bne _08080CC4
	b _08081084
_08080CC4:
	b _080811C6
	.align 2, 0
_08080CC8: .4byte 0x00000456
_08080CCC: .4byte 0x0000044C
_08080CD0:
	movs r0, #0x8c
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080CDA
	b _080810E0
_08080CDA:
	b _080811C6
_08080CDC:
	movs r2, #0x91
	lsls r2, r2, #3
	cmp r1, r2
	bne _08080CE6
	b _0808116A
_08080CE6:
	cmp r1, r2
	bgt _08080D00
	ldr r0, _08080CFC @ =0x00000474
	cmp r1, r0
	bne _08080CF2
	b _08081128
_08080CF2:
	adds r0, #0xa
	cmp r1, r0
	bne _08080CFA
	b _08081154
_08080CFA:
	b _080811C6
	.align 2, 0
_08080CFC: .4byte 0x00000474
_08080D00:
	ldr r2, _08080D18 @ =0x0000049C
	cmp r1, r2
	bne _08080D08
	b _08081180
_08080D08:
	cmp r1, r2
	bgt _08080D20
	ldr r0, _08080D1C @ =0x00000492
	cmp r1, r0
	bne _08080D14
	b _0808113C
_08080D14:
	b _080811C6
	.align 2, 0
_08080D18: .4byte 0x0000049C
_08080D1C: .4byte 0x00000492
_08080D20:
	ldr r0, _08080D2C @ =0x000004A6
	cmp r1, r0
	bne _08080D28
	b _080811AC
_08080D28:
	b _080811C6
	.align 2, 0
_08080D2C: .4byte 0x000004A6
_08080D30:
	movs r0, #0x4b
	strh r0, [r5, #0x14]
	movs r0, #0xa
	b _080811C4
_08080D38:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08080D48
	b _080811C6
_08080D48:
	str r0, [r5, #8]
	ldr r0, _08080D54 @ =0xFFFFFF00
	str r0, [r5, #0xc]
	movs r0, #0x14
	b _080811C4
	.align 2, 0
_08080D54: .4byte 0xFFFFFF00
_08080D58:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _08080D68
	b _080811C6
_08080D68:
	movs r0, #0x28
	strh r0, [r5, #0x14]
	movs r0, #0x1e
	b _080811C4
_08080D70:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080D80
	b _080811C6
_08080D80:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	movs r0, #0x28
	b _08080F88
_08080D8C:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r1, r0, #8
	ldr r0, _08080DBC @ =0x00000923
	cmp r1, r0
	ble _08080DC0
	movs r0, #0
	strh r0, [r5, #0x16]
	movs r0, #0x20
	strh r0, [r5, #0x14]
	ldr r0, [r6, #0x14]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0x18]
	movs r0, #0x9f
	lsls r0, r0, #2
	bl sub_80BA57C
	b _080811C6
	.align 2, 0
_08080DBC: .4byte 0x00000923
_08080DC0:
	ldr r0, _08080DD0 @ =0x00000833
	cmp r1, r0
	bgt _08080DC8
	b _080811C6
_08080DC8:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	b _080811C6
	.align 2, 0
_08080DD0: .4byte 0x00000833
_08080DD4:
	ldr r2, _08080E24 @ =gUnknown_080D5C80
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #8
	ldr r0, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r0, [r5, #0x16]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080E14
	b _080811C6
_08080E14:
	movs r0, #0x80
	str r0, [r5, #0xc]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	ldr r0, _08080E28 @ =0x00000221
	bl sub_80BA57C
	b _080811C6
	.align 2, 0
_08080E24: .4byte gUnknown_080D5C80
_08080E28: .4byte 0x00000221
_08080E2C:
	ldrh r0, [r5, #0x16]
	adds r0, #8
	ldr r2, _08080F10 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #0x16]
	ldr r3, _08080F14 @ =gSineTable
	mov ip, r3
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08080E4C
	adds r0, #0x3f
_08080E4C:
	asrs r4, r0, #6
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	str r0, [r6, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	mov r8, r1
	str r1, [r5, #4]
	ldrh r0, [r5, #0x14]
	adds r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08080EEA
	ldr r0, _08080F18 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08080ED0
	ldr r4, _08080F1C @ =gUnknown_03006868
	ldr r0, [r4]
	ldr r3, _08080F20 @ =0x00196225
	muls r0, r3, r0
	ldr r2, _08080F24 @ =0x3C6EF35F
	adds r0, r0, r2
	ldr r1, _08080F28 @ =0x000003FF
	ands r1, r0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r3, #0xf
	ands r3, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r3, r0
	lsrs r4, r0, #6
	lsls r0, r1, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r1, r1, #6
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	add r1, r8
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0x1e
	str r4, [sp]
	ldr r4, [r6, #8]
	str r4, [sp, #4]
	bl sub_8086D64
_08080ED0:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08080F2C @ =0x00000996
	cmp r0, r1
	bgt _08080EEA
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08080EEA
	ldr r0, _08080F30 @ =0x00000221
	bl sub_80BA57C
_08080EEA:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	bne _08080F00
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #4
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08080F00:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0xf9
	bgt _08080F0A
	b _080811C6
_08080F0A:
	movs r0, #0xc8
	b _080811C4
	.align 2, 0
_08080F10: .4byte 0x000001FF
_08080F14: .4byte gSineTable
_08080F18: .4byte gStageData
_08080F1C: .4byte gUnknown_03006868
_08080F20: .4byte 0x00196225
_08080F24: .4byte 0x3C6EF35F
_08080F28: .4byte 0x000003FF
_08080F2C: .4byte 0x00000996
_08080F30: .4byte 0x00000221
_08080F34:
	movs r0, #0x4b
	b _08081164
_08080F38:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08080F48
	b _080811C6
_08080F48:
	str r0, [r5, #8]
	ldr r0, _08080F54 @ =0xFFFFFF00
	str r0, [r5, #0xc]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080811C4
	.align 2, 0
_08080F54: .4byte 0xFFFFFF00
_08080F58:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _08080F68
	b _080811C6
_08080F68:
	movs r0, #0x28
	b _08081164
_08080F6C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080F7C
	b _080811C6
_08080F7C:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	movs r0, #0x82
	lsls r0, r0, #3
_08080F88:
	strh r0, [r5, #0x18]
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, _08080FB0 @ =0x0000027E
	bl sub_80BA57C
	b _080811C6
	.align 2, 0
_08080FB0: .4byte 0x0000027E
_08080FB4:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08080FE8 @ =0x000008FB
	cmp r0, r1
	ble _08080FF4
	ldr r0, _08080FEC @ =0xFFFFFF00
	str r0, [r5, #8]
	movs r1, #0
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	strb r1, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r7, #8]
	ldr r1, _08080FF0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	ands r0, r1
	str r0, [r3, #8]
	strh r4, [r5, #0x18]
	b _080811C6
	.align 2, 0
_08080FE8: .4byte 0x000008FB
_08080FEC: .4byte 0xFFFFFF00
_08080FF0: .4byte 0xFFFFFBFF
_08080FF4:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _08081008 @ =0x000007CF
	cmp r0, r1
	bgt _08081000
	b _080811C6
_08081000:
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r5, #8]
	b _080811C6
	.align 2, 0
_08081008: .4byte 0x000007CF
_0808100C:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08081024 @ =0x000008BB
	cmp r0, r1
	ble _0808101E
	b _080811C6
_0808101E:
	ldr r0, _08081028 @ =0x00000424
	b _080811C4
	.align 2, 0
_08081024: .4byte 0x000008BB
_08081028: .4byte 0x00000424
_0808102C:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strh r2, [r5, #0x18]
	b _080811C6
_0808103E:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #0xc
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r0, _08081080 @ =0x000004F7
	strh r0, [r3, #0xc]
	movs r0, #5
	strb r0, [r3, #0x1a]
	subs r0, #6
	strb r0, [r3, #0x1b]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	ldr r0, [r7, #8]
	movs r1, #0x3e
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	movs r1, #0x3f
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r6, #2]
	adds r0, #0xa4
	b _080811C4
	.align 2, 0
_08081080: .4byte 0x000004F7
_08081084:
	movs r0, #0
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0xc]
	strh r2, [r5, #0x18]
	b _080811C6
_08081092:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	str r1, [r5, #4]
	asrs r1, r1, #8
	ldr r0, _080810D8 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x79
	cmp r1, r0
	bge _080810B0
	b _080811C6
_080810B0:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl sub_805256C
	movs r0, #0x9f
	lsls r0, r0, #2
	bl sub_80BA57C
	ldr r0, _080810DC @ =0xFFFFFC00
	str r0, [r5, #0xc]
	movs r0, #0x8c
	lsls r0, r0, #3
	b _080811C4
	.align 2, 0
_080810D8: .4byte gCamera
_080810DC: .4byte 0xFFFFFC00
_080810E0:
	ldr r0, [r5, #0xc]
	adds r0, #0x2a
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	adds r1, r1, r0
	str r1, [r5, #4]
	ldrh r1, [r6, #2]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _080810FC
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6, #2]
_080810FC:
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldr r0, _08081118 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x79
	cmp r1, r0
	blt _080811C6
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _080811C6
	movs r0, #0
	str r0, [r5, #0xc]
	strh r4, [r5, #0x18]
	b _080811C6
	.align 2, 0
_08081118: .4byte gCamera
_0808111C:
	ldr r0, _08081124 @ =0x000004E2
	strh r0, [r5, #0x14]
	subs r0, #0x6e
	b _080811C4
	.align 2, 0
_08081124: .4byte 0x000004E2
_08081128:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	ldr r0, _08081138 @ =0x00000492
	b _080811C4
	.align 2, 0
_08081138: .4byte 0x00000492
_0808113C:
	ldrh r0, [r6, #2]
	adds r0, #8
	ldr r3, _08081150 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0
	bne _080811C6
	movs r0, #0xb4
	b _08081164
	.align 2, 0
_08081150: .4byte 0x000003FF
_08081154:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	movs r0, #0x96
	lsls r0, r0, #1
_08081164:
	strh r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	b _080811C6
_0808116A:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	ldr r0, _0808117C @ =0x00000492
	b _080811C4
	.align 2, 0
_0808117C: .4byte 0x00000492
_08081180:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #8]
	ldr r0, _080811A4 @ =0xFFFFFC00
	str r0, [r5, #0xc]
	ldr r0, _080811A8 @ =0x000004A6
	strh r0, [r5, #0x18]
	movs r0, #0x70
	bl sub_80BA57C
	b _080811C6
	.align 2, 0
_080811A4: .4byte 0xFFFFFC00
_080811A8: .4byte 0x000004A6
_080811AC:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r0, #0
	bge _080811C6
	movs r0, #0xfa
	lsls r0, r0, #3
_080811C4:
	strh r0, [r5, #0x18]
_080811C6:
	ldr r0, [r5]
	mov r4, sb
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80811E0
sub_80811E0: @ 0x080811E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x4c
	adds r3, r5, #0
	adds r3, #0xd8
	ldrh r1, [r4, #0x18]
	ldr r2, _08081218 @ =0x000003F2
	cmp r1, r2
	bne _080811F6
	b _0808148E
_080811F6:
	cmp r1, r2
	bgt _08081260
	cmp r1, #0x32
	bne _08081200
	b _08081380
_08081200:
	cmp r1, #0x32
	bgt _0808122A
	cmp r1, #0x14
	bne _0808120A
	b _08081328
_0808120A:
	cmp r1, #0x14
	bgt _0808121C
	cmp r1, #0
	beq _08081300
	cmp r1, #0xa
	beq _08081308
	b _080816B8
	.align 2, 0
_08081218: .4byte 0x000003F2
_0808121C:
	cmp r1, #0x1e
	bne _08081222
	b _08081340
_08081222:
	cmp r1, #0x28
	bne _08081228
	b _0808135E
_08081228:
	b _080816B8
_0808122A:
	cmp r1, #0x50
	bne _08081230
	b _080813EC
_08081230:
	cmp r1, #0x50
	bgt _08081242
	cmp r1, #0x3c
	bne _0808123A
	b _080813A4
_0808123A:
	cmp r1, #0x46
	bne _08081240
	b _080813CC
_08081240:
	b _080816B8
_08081242:
	cmp r1, #0x64
	bne _08081248
	b _08081464
_08081248:
	cmp r1, #0x64
	bgt _08081254
	cmp r1, #0x5a
	bne _08081252
	b _08081420
_08081252:
	b _080816B8
_08081254:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0808125E
	b _08081486
_0808125E:
	b _080816B8
_08081260:
	ldr r6, _08081290 @ =0x0000042E
	cmp r1, r6
	bne _08081268
	b _08081598
_08081268:
	cmp r1, r6
	bgt _080812AC
	movs r2, #0x82
	lsls r2, r2, #3
	cmp r1, r2
	bne _08081276
	b _08081504
_08081276:
	cmp r1, r2
	bgt _08081294
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08081284
	b _080814B0
_08081284:
	adds r0, #0xa
	cmp r1, r0
	bne _0808128C
	b _080814CC
_0808128C:
	b _080816B8
	.align 2, 0
_08081290: .4byte 0x0000042E
_08081294:
	ldr r0, _080812A8 @ =0x0000041A
	cmp r1, r0
	bne _0808129C
	b _08081544
_0808129C:
	adds r0, #0xa
	cmp r1, r0
	bne _080812A4
	b _08081570
_080812A4:
	b _080816B8
	.align 2, 0
_080812A8: .4byte 0x0000041A
_080812AC:
	ldr r6, _080812CC @ =0x00000442
	cmp r1, r6
	bne _080812B4
	b _0808163C
_080812B4:
	cmp r1, r6
	bgt _080812D4
	ldr r0, _080812D0 @ =0x00000433
	cmp r1, r0
	bne _080812C0
	b _080815E6
_080812C0:
	adds r0, #5
	cmp r1, r0
	bne _080812C8
	b _08081600
_080812C8:
	b _080816B8
	.align 2, 0
_080812CC: .4byte 0x00000442
_080812D0: .4byte 0x00000433
_080812D4:
	ldr r2, _080812EC @ =0x00000456
	cmp r1, r2
	bne _080812DC
	b _0808168C
_080812DC:
	cmp r1, r2
	bgt _080812F4
	ldr r0, _080812F0 @ =0x0000044C
	cmp r1, r0
	bne _080812E8
	b _08081664
_080812E8:
	b _080816B8
	.align 2, 0
_080812EC: .4byte 0x00000456
_080812F0: .4byte 0x0000044C
_080812F4:
	movs r0, #0x8c
	lsls r0, r0, #3
	cmp r1, r0
	bne _080812FE
	b _080816A8
_080812FE:
	b _080816B8
_08081300:
	movs r0, #0x4b
	strh r0, [r4, #0x14]
	movs r0, #0xa
	b _080816B6
_08081308:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08081318
	b _080816B8
_08081318:
	str r0, [r4, #8]
	ldr r0, _08081324 @ =0xFFFFFF00
	str r0, [r4, #0xc]
	movs r0, #0x14
	b _080816B6
	.align 2, 0
_08081324: .4byte 0xFFFFFF00
_08081328:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0x8e
	ble _08081338
	b _080816B8
_08081338:
	movs r0, #0x28
	strh r0, [r4, #0x14]
	movs r0, #0x1e
	b _080816B6
_08081340:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08081350
	b _080816B8
_08081350:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #0x28
	strh r0, [r4, #0x18]
	b _080814E6
_0808135E:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _0808137C @ =0x00000819
	cmp r0, r1
	bgt _08081370
	b _080816B8
_08081370:
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0x32
	b _080816B6
	.align 2, 0
_0808137C: .4byte 0x00000819
_08081380:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _080813A0 @ =0x000008F2
	cmp r0, r1
	bgt _08081392
	b _080816B8
_08081392:
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x80
	str r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	b _080816B6
	.align 2, 0
_080813A0: .4byte 0x000008F2
_080813A4:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xb3
	bgt _080813B4
	b _080816B8
_080813B4:
	ldr r0, _080813C8 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x14
	strh r0, [r4, #0x14]
	movs r0, #0x46
	b _080816B6
	.align 2, 0
_080813C8: .4byte 0x0000050B
_080813CC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080813DA
	b _080816B8
_080813DA:
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	ldr r0, _080813E8 @ =0x00000506
	b _08081586
	.align 2, 0
_080813E8: .4byte 0x00000506
_080813EC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080813FA
	b _080816B8
_080813FA:
	movs r0, #0x96
	strh r0, [r4, #0x14]
	movs r0, #0x5a
	strh r0, [r4, #0x18]
	ldr r0, _08081418 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	ldr r1, _0808141C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #8]
	b _080816B8
	.align 2, 0
_08081418: .4byte 0x0000050B
_0808141C: .4byte 0xFFFFFBFF
_08081420:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808142E
	b _080816B8
_0808142E:
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0808145C @ =0xFFFFFC00
	str r0, [r4, #0xc]
	ldr r0, _08081460 @ =0x0000050A
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #0x64
	strh r0, [r4, #0x18]
	movs r0, #0x74
	bl sub_80BA57C
	b _080816B8
	.align 2, 0
_0808145C: .4byte 0xFFFFFC00
_08081460: .4byte 0x0000050A
_08081464:
	ldr r0, [r4, #0xc]
	adds r0, #0x2a
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xf9
	bgt _08081482
	b _080816B8
_08081482:
	movs r0, #0xc8
	b _080816B6
_08081486:
	movs r0, #0x4b
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x18]
	b _080816B8
_0808148E:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0808149E
	b _080816B8
_0808149E:
	str r0, [r4, #8]
	ldr r0, _080814AC @ =0xFFFFFF00
	str r0, [r4, #0xc]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080816B6
	.align 2, 0
_080814AC: .4byte 0xFFFFFF00
_080814B0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0x8e
	ble _080814C0
	b _080816B8
_080814C0:
	movs r0, #0x28
	strh r0, [r4, #0x14]
	ldr r0, _080814C8 @ =0x00000406
	b _080816B6
	.align 2, 0
_080814C8: .4byte 0x00000406
_080814CC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080814DC
	b _080816B8
_080814DC:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	strh r2, [r4, #0x18]
_080814E6:
	ldr r0, _08081500 @ =0x0000050A
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	b _080816B8
	.align 2, 0
_08081500: .4byte 0x0000050A
_08081504:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r1, r0, #8
	ldr r0, _08081528 @ =0x000008AB
	cmp r1, r0
	ble _08081530
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	ldr r0, _0808152C @ =0x0000041A
	b _080816B6
	.align 2, 0
_08081528: .4byte 0x000008AB
_0808152C: .4byte 0x0000041A
_08081530:
	ldr r0, _08081540 @ =0x0000076B
	cmp r1, r0
	bgt _08081538
	b _080816B8
_08081538:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #8]
	b _080816B8
	.align 2, 0
_08081540: .4byte 0x0000076B
_08081544:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xb3
	bgt _08081554
	b _080816B8
_08081554:
	ldr r0, _08081568 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x14
	strh r0, [r4, #0x14]
	ldr r0, _0808156C @ =0x00000424
	b _080816B6
	.align 2, 0
_08081568: .4byte 0x0000050B
_0808156C: .4byte 0x00000424
_08081570:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808157E
	b _080816B8
_0808157E:
	movs r0, #0xb4
	strh r0, [r4, #0x14]
	strh r6, [r4, #0x18]
	ldr r0, _08081594 @ =0x00000509
_08081586:
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	b _080816B8
	.align 2, 0
_08081594: .4byte 0x00000509
_08081598:
	ldrh r0, [r4, #0x14]
	subs r1, r0, #1
	strh r1, [r4, #0x14]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080815D4
	movs r0, #0xa
	strh r0, [r4, #0x14]
	ldr r0, _080815C8 @ =0x00000433
	strh r0, [r4, #0x18]
	adds r0, #0xd8
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	ldr r1, _080815CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r0, _080815D0 @ =0x00000223
	bl sub_80BA57C
	b _080816B8
	.align 2, 0
_080815C8: .4byte 0x00000433
_080815CC: .4byte 0xFFFFFBFF
_080815D0: .4byte 0x00000223
_080815D4:
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080816B8
	movs r0, #0x89
	lsls r0, r0, #2
	bl sub_80BA57C
	b _080816B8
_080815E6:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _080815FC @ =0xFFFFFC00
	str r0, [r4, #8]
	movs r0, #0x87
	lsls r0, r0, #3
	b _080816B6
	.align 2, 0
_080815FC: .4byte 0xFFFFFC00
_08081600:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _08081630 @ =0x0000085C
	cmp r0, r1
	bgt _080816B8
	movs r1, #0
	movs r2, #0
	ldr r0, _08081634 @ =0x00000509
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	movs r0, #0x78
	strh r0, [r4, #0x14]
	strh r6, [r4, #0x18]
	ldr r0, _08081638 @ =0x00000223
	bl sub_80BA648
	b _080816B8
	.align 2, 0
_08081630: .4byte 0x0000085C
_08081634: .4byte 0x00000509
_08081638: .4byte 0x00000223
_0808163C:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _0808165C @ =0x000005CA
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xb4
	strh r0, [r4, #0x14]
	ldr r0, _08081660 @ =0x0000044C
	b _080816B6
	.align 2, 0
_0808165C: .4byte 0x000005CA
_08081660: .4byte 0x0000044C
_08081664:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _08081688 @ =0x000005CA
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r4, #0xc]
	strh r2, [r4, #0x18]
	b _080816B8
	.align 2, 0
_08081688: .4byte 0x000005CA
_0808168C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080816A4 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080816B8
	movs r0, #0x8c
	lsls r0, r0, #3
	b _080816B6
	.align 2, 0
_080816A4: .4byte gBldRegs
_080816A8:
	ldr r0, [r5, #0x10]
	bl VramFree
	movs r0, #0
	str r0, [r5, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #3
_080816B6:
	strh r0, [r4, #0x18]
_080816B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80816C0
sub_80816C0: @ 0x080816C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08081708 @ =gCamera
_080816C8:
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r0, r3, #3
	adds r0, #0x7c
	adds r0, r5, r0
	lsls r3, r3, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r6]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	adds r1, r5, #0
	adds r1, #0x30
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r6, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080816C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081708: .4byte gCamera

	thumb_func_start sub_808170C
sub_808170C: @ 0x0808170C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0808171E
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x7c]
_0808171E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8081724
sub_8081724: @ 0x08081724
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #2
	adds r0, r3, #0
	adds r0, #0x38
	adds r5, r0, r2
	ldr r0, [r5]
	cmp r0, #0
	bgt _08081782
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r4, r0, #3
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r1, r1, r4
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _08081764
	rsbs r0, r1, #0
_08081764:
	asrs r1, r0, #8
	cmp r1, #0x13
	bgt _08081782
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r5]
	adds r1, r3, r2
	movs r0, #0x64
	strh r0, [r1, #0x3e]
	ldr r0, _08081788 @ =0x0000023A
	bl sub_80BA57C
_08081782:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081788: .4byte 0x0000023A

	thumb_func_start sub_808178C
sub_808178C: @ 0x0808178C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _080817D8 @ =sub_807FE48
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r3, _080817DC @ =sub_8081C24
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0
	strb r5, [r4]
	movs r0, #1
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x16]
	strh r1, [r4, #0x14]
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_80804B4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080817D8: .4byte sub_807FE48
_080817DC: .4byte sub_8081C24

	thumb_func_start sub_80817E0
sub_80817E0: @ 0x080817E0
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _080817F8
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x18]
_080817F8:
	adds r0, r4, #0
	bl sub_8081AA0
	adds r0, r4, #0
	bl sub_8081A40
	adds r0, r4, #0
	bl sub_808170C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8081810
sub_8081810: @ 0x08081810
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08081834 @ =0x00000125
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r5, _08081838 @ =sub_808183C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081834: .4byte 0x00000125
_08081838: .4byte sub_808183C

	thumb_func_start sub_808183C
sub_808183C: @ 0x0808183C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081840
sub_8081840: @ 0x08081840
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x96
	strh r0, [r4, #0x30]
	ldr r5, _08081868 @ =sub_8081894
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081868: .4byte sub_8081894

	thumb_func_start sub_808186C
sub_808186C: @ 0x0808186C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x30]
	ldr r5, _08081890 @ =sub_8081894
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081890: .4byte sub_8081894

	thumb_func_start sub_8081894
sub_8081894: @ 0x08081894
	bx lr
	.align 2, 0

	thumb_func_start sub_8081898
sub_8081898: @ 0x08081898
	push {r4, r5, r6, lr}
	ldr r6, _080818F4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x20]
	adds r0, r5, #0
	bl sub_807C14C
	adds r0, r5, #0
	bl sub_80816C0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r1, _080818F8 @ =0x0000066C
	cmp r0, r1
	ble _080818EC
	ldr r1, _080818FC @ =gCamera
	movs r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r5, #0
	bl sub_807BCCC
	adds r0, r5, #0
	bl sub_807BEF0
	adds r0, r5, #0
	bl sub_807D6C4
	adds r0, r5, #0
	bl sub_807CBC8
	movs r1, #0
	strb r1, [r5, #0x10]
	movs r0, #1
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	ldr r1, [r6]
	ldr r0, _08081900 @ =sub_807B9B8
	str r0, [r1, #8]
_080818EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080818F4: .4byte gCurTask
_080818F8: .4byte 0x0000066C
_080818FC: .4byte gCamera
_08081900: .4byte sub_807B9B8

	thumb_func_start sub_8081904
sub_8081904: @ 0x08081904
	push {r4, r5, lr}
	ldr r5, _08081930 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08081934
	ldr r0, [r5]
	bl TaskDestroy
	b _0808194E
	.align 2, 0
_08081930: .4byte gCurTask
_08081934:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08081948
	ldr r1, [r5]
	ldr r0, _08081944 @ =sub_8081958
	b _0808194C
	.align 2, 0
_08081944: .4byte sub_8081958
_08081948:
	ldr r1, [r5]
	ldr r0, _08081954 @ =sub_807B808
_0808194C:
	str r0, [r1, #8]
_0808194E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081954: .4byte sub_807B808

	thumb_func_start sub_8081958
sub_8081958: @ 0x08081958
	push {r4, r5, lr}
	ldr r5, _08081978 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0808197C
	adds r0, r2, #0
	bl TaskDestroy
	b _080819B2
	.align 2, 0
_08081978: .4byte gCurTask
_0808197C:
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080819B2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080819B2
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xa
	bl sub_807FB7C
	movs r0, #0xb
	bl sub_807FB7C
	ldr r1, [r5]
	ldr r0, _080819B8 @ =sub_80819BC
	str r0, [r1, #8]
_080819B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080819B8: .4byte sub_80819BC

	thumb_func_start sub_80819BC
sub_80819BC: @ 0x080819BC
	push {r4, r5, lr}
	ldr r5, _080819DC @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080819E0
	adds r0, r2, #0
	bl TaskDestroy
	b _08081A06
	.align 2, 0
_080819DC: .4byte gCurTask
_080819E0:
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08081A06
	movs r0, #5
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	bl sub_807A4BC
	ldr r1, [r5]
	ldr r0, _08081A0C @ =sub_807B808
	str r0, [r1, #8]
_08081A06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081A0C: .4byte sub_807B808

	thumb_func_start sub_8081A10
sub_8081A10: @ 0x08081A10
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x96
	strh r0, [r4, #0x30]
	ldr r5, _08081A38 @ =sub_8081A3C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081A38: .4byte sub_8081A3C

	thumb_func_start sub_8081A3C
sub_8081A3C: @ 0x08081A3C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081A40
sub_8081A40: @ 0x08081A40
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081A58
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081A58:
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081A6C
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081A6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8081A74
sub_8081A74: @ 0x08081A74
	push {lr}
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	bne _08081A98
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081A9C @ =gUnknown_080D5C38
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r3, #0x1a]
_08081A98:
	pop {r0}
	bx r0
	.align 2, 0
_08081A9C: .4byte gUnknown_080D5C38

	thumb_func_start sub_8081AA0
sub_8081AA0: @ 0x08081AA0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081AB8
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081AB8:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081ACC
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081ACC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8081AD4
sub_8081AD4: @ 0x08081AD4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	beq _08081AE8
	cmp r1, #1
	beq _08081AF8
	b _08081B10
_08081AE8:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081AF4 @ =gUnknown_080D5C08
	b _08081B00
	.align 2, 0
_08081AF4: .4byte gUnknown_080D5C08
_08081AF8:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081B14 @ =gUnknown_080D5C20
_08081B00:
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r3, #0x1a]
_08081B10:
	pop {r0}
	bx r0
	.align 2, 0
_08081B14: .4byte gUnknown_080D5C20

	thumb_func_start sub_8081B18
sub_8081B18: @ 0x08081B18
	bx lr
	.align 2, 0
_08081B1C:
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8081B24
sub_8081B24: @ 0x08081B24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _08081B90 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
_08081B42:
	lsls r0, r6, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08081BA4
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08081B94
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	bne _08081BA4
_08081B7C:
	str r4, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	movs r3, #0
	bl sub_8020CE0
	b _08081BA4
	.align 2, 0
_08081B90: .4byte gCurTask
_08081B94:
	str r4, [sp]
	mov r0, sb
	mov r2, r8
_08081BA4: