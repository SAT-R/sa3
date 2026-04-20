
.syntax unified
.text
	push {lr}
	sub sp, #0x1c
	ldr r1, _08002638 @ =gUnknown_080CE52C
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	ldr r0, _0800263C @ =gStageData
	ldrb r1, [r0, #0xa]
	ldrb r2, [r0, #9]
	adds r0, r2, #0
	cmp r0, #8
	bne _08002640
	movs r0, #0x38
	b _080026B2
	.align 2, 0
_08002638: .4byte gUnknown_080CE52C
_0800263C: .4byte gStageData
_08002640:
	cmp r0, #7
	bne _08002648
	movs r0, #0x11
	b _080026B2
_08002648:
	subs r0, r1, #1
	lsls r3, r1, #0x10
	cmp r0, #8
	bhi _080026B6
	lsls r0, r0, #2
	ldr r1, _0800265C @ =_08002660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800265C: .4byte _08002660
_08002660: @ jump table
	.4byte _08002684 @ case 0
	.4byte _08002698 @ case 1
	.4byte _08002698 @ case 2
	.4byte _08002698 @ case 3
	.4byte _08002698 @ case 4
	.4byte _080026B6 @ case 5
	.4byte _080026A8 @ case 6
	.4byte _080026A4 @ case 7
	.4byte _080026A4 @ case 8
_08002684:
	ldr r0, _08002694 @ =gStageData
	ldrh r0, [r0, #0xe]
	movs r1, #4
	cmp r0, #0xb
	bne _08002690
	movs r1, #7
_08002690:
	adds r0, r1, #0
	b _080026B2
	.align 2, 0
_08002694: .4byte gStageData
_08002698:
	asrs r0, r3, #0x10
	lsls r1, r2, #2
	subs r1, #2
	adds r0, r0, r1
	add r0, sp
	b _080026B0
_080026A4:
	movs r0, #0x4c
	b _080026B2
_080026A8:
	lsls r1, r2, #2
	mov r0, sp
	adds r0, #1
	adds r0, r0, r1
_080026B0:
	ldrb r0, [r0]
_080026B2:
	bl sub_8029990
_080026B6:
	add sp, #0x1c
	pop {r0}
	bx r0

.syntax divided
