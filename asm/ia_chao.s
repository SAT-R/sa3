.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_ChaoInStage
CreateEntity_ChaoInStage: @ 0x0804DE30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r1, _0804DE5C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0804DE60
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _0804DF02
	.align 2, 0
_0804DE5C: .4byte gStageData
_0804DE60:
	ldrb r0, [r7, #7]
	movs r4, #0xf
	ands r4, r0
	ldrb r0, [r1, #9]
	adds r1, r4, #0
	bl GetChaoFlag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	beq _0804DE82
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r7]
	b _0804DF02
_0804DE82:
	ldr r0, _0804DF10 @ =Task_ChaoMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804DF14 @ =sub_804E64C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	strh r5, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r2, r5, #8
	adds r1, r1, r2
	ldr r2, _0804DF18 @ =0x0300006C
	adds r2, r2, r3
	mov ip, r2
	strh r1, [r2]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	mov r5, sb
	lsls r2, r5, #8
	adds r1, r1, r2
	ldr r6, _0804DF1C @ =0x0300006E
	adds r5, r3, r6
	strh r1, [r5]
	ldrb r1, [r7, #7]
	lsrs r1, r1, #4
	adds r6, #2
	adds r2, r3, r6
	strb r1, [r2]
	ldr r2, _0804DF20 @ =0x03000071
	adds r1, r3, r2
	strb r4, [r1]
	mov r6, r8
	str r6, [r0, #0x74]
	ldr r1, _0804DF24 @ =0x0300000C
	adds r3, r3, r1
	ldr r4, _0804DF28 @ =gCamera
	ldr r2, [r4]
	mov r6, ip
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	bl sub_804E530
_0804DF02:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF10: .4byte Task_ChaoMain
_0804DF14: .4byte sub_804E64C
_0804DF18: .4byte 0x0300006C
_0804DF1C: .4byte 0x0300006E
_0804DF20: .4byte 0x03000071
_0804DF24: .4byte 0x0300000C
_0804DF28: .4byte gCamera

	thumb_func_start CreateEntity_ChaoInChaoMap
CreateEntity_ChaoInChaoMap: @ 0x0804DF2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldr r0, _0804DF64 @ =gStageData
	ldrb r1, [r0, #3]
	mov sl, r0
	cmp r1, #0
	beq _0804DF68
	cmp r1, #5
	beq _0804DF68
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _0804E038
	.align 2, 0
_0804DF64: .4byte gStageData
_0804DF68:
	ldrb r0, [r7, #7]
	movs r4, #0xf
	ands r4, r0
	mov r2, sl
	ldrb r0, [r2, #9]
	adds r1, r4, #0
	bl GetChaoFlag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804DF88
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r7]
	b _0804E038
_0804DF88:
	ldr r0, _0804E048 @ =Task_ChaoMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804E04C @ =sub_804E64C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	movs r1, #0
	mov ip, r1
	strh r6, [r0, #4]
	mov r2, r8
	strh r2, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #0xa]
	mov r3, sb
	strb r3, [r0, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r2, r6, #8
	adds r1, r1, r2
	ldr r2, _0804E050 @ =0x0300006C
	adds r2, r2, r5
	mov sb, r2
	strh r1, [r2]
	ldrb r3, [r7, #1]
	lsls r3, r3, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r3, r3, r1
	ldr r6, _0804E054 @ =gUnknown_080D0410
	lsls r4, r4, #1
	mov r1, sl
	ldrb r2, [r1, #9]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r4, r1
	adds r2, r6, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	subs r3, r3, r1
	ldr r2, _0804E058 @ =0x0300006E
	adds r2, r2, r5
	mov r8, r2
	strh r3, [r2]
	mov r3, sl
	ldrb r2, [r3, #9]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r4, r4, r6
	ldrb r2, [r4]
	ldr r4, _0804E05C @ =0x03000070
	adds r1, r5, r4
	strb r2, [r1]
	ldr r1, _0804E060 @ =0x03000071
	adds r2, r5, r1
	movs r1, #0xff
	strb r1, [r2]
	mov r2, ip
	str r2, [r0, #0x74]
	ldr r3, _0804E064 @ =0x0300000C
	adds r5, r5, r3
	ldr r3, _0804E068 @ =gCamera
	ldr r2, [r3]
	mov r4, sb
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r5, #0x10]
	ldr r2, [r3, #4]
	mov r3, r8
	ldrh r1, [r3]
	subs r1, r1, r2
	strh r1, [r5, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	strb r1, [r7]
	bl sub_804E530
_0804E038:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E048: .4byte Task_ChaoMain
_0804E04C: .4byte sub_804E64C
_0804E050: .4byte 0x0300006C
_0804E054: .4byte gUnknown_080D0410
_0804E058: .4byte 0x0300006E
_0804E05C: .4byte 0x03000070
_0804E060: .4byte 0x03000071
_0804E064: .4byte 0x0300000C
_0804E068: .4byte gCamera

	thumb_func_start Task_ChaoMain
Task_ChaoMain: @ 0x0804E06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0804E16C @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	ldr r3, _0804E170 @ =0x03000071
	adds r3, r3, r7
	mov sl, r3
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _0804E08C
	b _0804E198
_0804E08C:
	ldr r1, _0804E174 @ =0x0300006C
	adds r0, r7, r1
	ldrh r4, [r0]
	ldr r3, _0804E178 @ =0x0300006E
	adds r0, r7, r3
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _0804E17C @ =gStageData
	mov sb, r0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804E180 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C080
	adds r6, r0, #0
	cmp r6, #0
	bne _0804E198
	ldr r3, _0804E184 @ =0x0300000C
	adds r0, r7, r3
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r6, [sp, #4]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804E198
	mov r1, sl
	ldrb r0, [r1]
	bl SetChaoFlag
	adds r0, r5, #0
	adds r0, #0x9e
	strh r6, [r0]
	ldr r3, _0804E188 @ =0x0300005C
	adds r0, r7, r3
	ldr r1, _0804E18C @ =0x03000073
	adds r2, r7, r1
	movs r1, #2
	strb r1, [r2]
	strh r6, [r0]
	movs r3, #1
	mov r8, r3
	movs r4, #1
	strh r4, [r0, #2]
	strh r6, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r6, [r0, #0xa]
	bl sub_80214F0
	movs r0, #4
	mov r1, sb
	strb r0, [r1, #4]
	ldrb r3, [r1, #6]
	lsls r4, r3
	mov r0, sb
	adds r0, #0xb9
	strb r4, [r0]
	subs r0, #0x34
	mov r1, r8
	strb r1, [r0]
	ldr r3, _0804E190 @ =0x03000072
	adds r1, r7, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #0x15
	orrs r0, r3
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804E180 @ =gPlayers
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0804E160
	ldr r0, [r2, #4]
	orrs r0, r3
	str r0, [r2, #4]
_0804E160:
	ldr r3, _0804E16C @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0804E194 @ =sub_804E1AC
	str r0, [r1, #8]
	b _0804E19C
	.align 2, 0
_0804E16C: .4byte gCurTask
_0804E170: .4byte 0x03000071
_0804E174: .4byte 0x0300006C
_0804E178: .4byte 0x0300006E
_0804E17C: .4byte gStageData
_0804E180: .4byte gPlayers
_0804E184: .4byte 0x0300000C
_0804E188: .4byte 0x0300005C
_0804E18C: .4byte 0x03000073
_0804E190: .4byte 0x03000072
_0804E194: .4byte sub_804E1AC
_0804E198:
	bl sub_804E5CC
_0804E19C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804E1AC
sub_804E1AC: @ 0x0804E1AC
	push {r4, r5, r6, lr}
	ldr r6, _0804E200 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	ldr r0, _0804E204 @ =0x0300005C
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E1FA
	ldr r0, _0804E208 @ =0x03000073
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0
	bne _0804E1FA
	bl sub_8001E58
	ldr r1, [r6]
	ldr r0, _0804E20C @ =sub_804E66C
	str r0, [r1, #8]
	strh r5, [r4]
	movs r0, #2
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xbf
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80214F0
_0804E1FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E200: .4byte gCurTask
_0804E204: .4byte 0x0300005C
_0804E208: .4byte 0x03000073
_0804E20C: .4byte sub_804E66C

	thumb_func_start sub_804E210
sub_804E210: @ 0x0804E210
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0804E294 @ =gUnknown_080D049C
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	ldr r0, _0804E298 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r6, _0804E29C @ =gStageData
	ldrb r0, [r6, #9]
	bl GetChaoCount
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r0, #0
	ldr r0, _0804E2A0 @ =0x00000CAC
	bl EwramMalloc
	adds r2, r0, #0
	str r2, [r4, #0x74]
	ldr r1, _0804E2A4 @ =0x03000034
	adds r0, r5, r1
	mov r3, sp
	adds r1, r3, r7
	ldrb r1, [r1]
	bl sub_80236C8
	ldr r0, _0804E2A8 @ =0x03000072
	adds r5, r5, r0
	movs r0, #0x10
	strb r0, [r5]
	ldrb r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804E2AC @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0804E27C
	bl sub_80299FC
_0804E27C:
	ldr r1, _0804E2B0 @ =0x00000202
	adds r0, r4, #0
	bl sub_8004E98
	cmp r7, #9
	bne _0804E2B4
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
	b _0804E2BE
	.align 2, 0
_0804E294: .4byte gUnknown_080D049C
_0804E298: .4byte gCurTask
_0804E29C: .4byte gStageData
_0804E2A0: .4byte 0x00000CAC
_0804E2A4: .4byte 0x03000034
_0804E2A8: .4byte 0x03000072
_0804E2AC: .4byte gPlayers
_0804E2B0: .4byte 0x00000202
_0804E2B4:
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
_0804E2BE:
	ldr r0, _0804E2D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804E2D4 @ =sub_804E2D8
	str r0, [r1, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E2D0: .4byte gCurTask
_0804E2D4: .4byte sub_804E2D8

	thumb_func_start sub_804E2D8
sub_804E2D8: @ 0x0804E2D8
	push {r4, r5, r6, lr}
	ldr r6, _0804E364 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	ldr r0, _0804E368 @ =gStageData
	ldrb r0, [r0, #6]
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r0
	lsls r3, r3, #4
	ldr r0, _0804E36C @ =gPlayers
	adds r3, r3, r0
	ldr r0, _0804E370 @ =0x03000072
	adds r5, r2, r0
	ldrb r1, [r5]
	subs r1, #1
	strb r1, [r5]
	movs r0, #0x10
	subs r0, r0, r1
	ldr r1, _0804E374 @ =0x03000073
	adds r2, r2, r1
	strb r0, [r2]
	ldr r2, _0804E378 @ =gUnknown_03003C20
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _0804E37C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0804E380 @ =gUnknown_03003580
	ldr r0, _0804E384 @ =0x000020D0
	strh r0, [r4, #2]
	ldrb r2, [r5]
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r4, #6]
	ldr r0, _0804E388 @ =0x00003F1F
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r4, #0xa]
	ldr r2, _0804E38C @ =gUnknown_03002BF8
	ldr r0, _0804E390 @ =0x00003FAF
	strh r0, [r2]
	ldrb r1, [r5]
	lsrs r1, r1, #1
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r2, #4]
	adds r3, #0x9e
	ldrh r0, [r3]
	subs r0, #0x40
	strh r0, [r3]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804E35C
	ldr r1, [r6]
	ldr r0, _0804E394 @ =sub_804E398
	str r0, [r1, #8]
_0804E35C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E364: .4byte gCurTask
_0804E368: .4byte gStageData
_0804E36C: .4byte gPlayers
_0804E370: .4byte 0x03000072
_0804E374: .4byte 0x03000073
_0804E378: .4byte gUnknown_03003C20
_0804E37C: .4byte 0x0000DFFF
_0804E380: .4byte gUnknown_03003580
_0804E384: .4byte 0x000020D0
_0804E388: .4byte 0x00003F1F
_0804E38C: .4byte gUnknown_03002BF8
_0804E390: .4byte 0x00003FAF
_0804E394: .4byte sub_804E398

	thumb_func_start sub_804E398
sub_804E398: @ 0x0804E398
	push {r4, r5, r6, lr}
	ldr r0, _0804E3F8 @ =gStageData
	ldrb r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0804E3FC @ =gPlayers
	adds r1, r1, r0
	ldr r6, _0804E400 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r5, r3
	ldr r2, _0804E404 @ =gUnknown_03003580
	ldr r0, _0804E408 @ =0x000020D0
	strh r0, [r2, #2]
	ldr r0, _0804E40C @ =0x00001858
	strh r0, [r2, #6]
	ldr r2, _0804E410 @ =gUnknown_03002BF8
	movs r0, #8
	strh r0, [r2, #4]
	adds r1, #0x9e
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r4, [r3, #0x74]
	adds r0, r4, #0
	bl sub_8023734
	cmp r0, #0
	beq _0804E3EA
	ldr r0, _0804E414 @ =0x03000072
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, [r6]
	ldr r0, _0804E418 @ =sub_804E41C
	str r0, [r1, #8]
_0804E3EA:
	adds r0, r4, #0
	bl sub_80239A8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E3F8: .4byte gStageData
_0804E3FC: .4byte gPlayers
_0804E400: .4byte gCurTask
_0804E404: .4byte gUnknown_03003580
_0804E408: .4byte 0x000020D0
_0804E40C: .4byte 0x00001858
_0804E410: .4byte gUnknown_03002BF8
_0804E414: .4byte 0x03000072
_0804E418: .4byte sub_804E41C

	thumb_func_start sub_804E41C
sub_804E41C: @ 0x0804E41C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0804E488 @ =gStageData
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804E48C @ =gPlayers
	mov ip, r1
	adds r5, r0, r1
	ldr r2, _0804E490 @ =gCurTask
	mov r8, r2
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r0, _0804E494 @ =0x03000072
	adds r4, r1, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldr r2, _0804E498 @ =0x03000073
	adds r1, r1, r2
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #0x40
	movs r6, #0
	strh r0, [r1]
	ldrb r3, [r4]
	cmp r3, #0
	beq _0804E4A8
	ldr r3, _0804E49C @ =gUnknown_03003580
	ldr r0, _0804E4A0 @ =0x000020D0
	strh r0, [r3, #2]
	ldrb r0, [r4]
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #6]
	ldr r1, _0804E4A4 @ =gUnknown_03002BF8
	ldrb r0, [r4]
	lsrs r0, r0, #1
	strh r0, [r1, #4]
	b _0804E516
	.align 2, 0
_0804E488: .4byte gStageData
_0804E48C: .4byte gPlayers
_0804E490: .4byte gCurTask
_0804E494: .4byte 0x03000072
_0804E498: .4byte 0x03000073
_0804E49C: .4byte gUnknown_03003580
_0804E4A0: .4byte 0x000020D0
_0804E4A4: .4byte gUnknown_03002BF8
_0804E4A8:
	ldr r2, _0804E520 @ =gUnknown_03003C20
	ldrh r1, [r2]
	ldr r0, _0804E524 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0804E528 @ =gUnknown_03002BF8
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r0, [r5, #4]
	ldr r3, _0804E52C @ =0xEFFFFFFF
	ands r0, r3
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, ip
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0804E4EC
	ldr r0, [r2, #4]
	ands r0, r3
	str r0, [r2, #4]
_0804E4EC:
	movs r0, #3
	strb r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0xb9
	strb r6, [r0]
	subs r0, #0x34
	strb r6, [r0]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0804E516
	movs r0, #0x4b
	bl sub_8029A18
_0804E516:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E520: .4byte gUnknown_03003C20
_0804E524: .4byte 0x0000BFFF
_0804E528: .4byte gUnknown_03002BF8
_0804E52C: .4byte 0xEFFFFFFF

	thumb_func_start sub_804E530
sub_804E530: @ 0x0804E530
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x70
	ldrb r4, [r0]
	movs r0, #0x14
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0x68]
	adds r0, r7, #0
	adds r0, #0xc
	str r1, [r7, #0xc]
	ldr r2, _0804E5C4 @ =gUnknown_080D03F8
	lsls r4, r4, #2
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r3, #0
	mov r8, r3
	movs r5, #0
	strh r1, [r0, #0xc]
	adds r2, #2
	adds r4, r4, r2
	ldrh r1, [r4]
	strb r1, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x34
	ldr r1, [r7, #0x68]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r7, #0x34]
	ldr r1, _0804E5C8 @ =0x00000412
	strh r1, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x1a]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	strb r4, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	str r6, [r0, #0x20]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E5C4: .4byte gUnknown_080D03F8
_0804E5C8: .4byte 0x00000412

	thumb_func_start sub_804E5CC
sub_804E5CC: @ 0x0804E5CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804E618 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _0804E61C @ =0x0300000C
	adds r4, r1, r2
	ldr r0, [r7]
	mov r8, r0
	adds r2, #0x60
	adds r0, r1, r2
	adds r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r5, [r0, r2]
	movs r0, #0
	ldrsh r6, [r1, r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804E620
	ldrb r0, [r7, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _0804E63A
	.align 2, 0
_0804E618: .4byte gCurTask
_0804E61C: .4byte 0x0300000C
_0804E620:
	ldr r0, _0804E648 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r4, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804E63A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E648: .4byte gCamera

	thumb_func_start sub_804E64C
sub_804E64C: @ 0x0804E64C
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x68]
	bl VramFree
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0804E666
	bl EwramFree
_0804E666:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_804E66C
sub_804E66C: @ 0x0804E66C
	push {lr}
	ldr r0, _0804E694 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0804E698 @ =0x0300005C
	adds r0, r0, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E68E
	bl sub_804E210
	movs r0, #0x81
	lsls r0, r0, #2
	bl sub_8003DF0
_0804E68E:
	pop {r0}
	bx r0
	.align 2, 0
_0804E694: .4byte gCurTask
_0804E698: .4byte 0x0300005C
