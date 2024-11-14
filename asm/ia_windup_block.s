.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable113
CreateEntity_Interactable113: @ 0x08046FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804708C @ =sub_804713C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08047090 @ =sub_8047ADC
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	movs r0, #0
	mov r8, r0
	mov r1, ip
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r3, sb
	str r3, [r1]
	ldrb r0, [r3]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	ldr r3, _08047094 @ =0x0300005C
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, _08047098 @ =0x03000064
	adds r7, r2, r1
	strh r0, [r7]
	adds r3, #0xc
	adds r6, r2, r3
	strh r0, [r6]
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	subs r3, #0xa
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, _0804709C @ =0x03000066
	adds r5, r2, r1
	strh r0, [r5]
	adds r3, #0xc
	adds r4, r2, r3
	strh r0, [r4]
	ldr r0, _080470A0 @ =0x0300006C
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _080470A4 @ =0x0300006E
	adds r0, r2, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sb
	ldrb r1, [r0, #7]
	movs r0, #3
	ands r0, r1
	ldr r3, _080470A8 @ =0x0300006F
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _080470AC @ =0x0300006D
	adds r2, r2, r0
	mov r3, r8
	strb r3, [r2]
	ldrb r1, [r1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080470B0
	ldrh r0, [r4]
	subs r0, #0x60
	strh r0, [r4]
	ldrh r0, [r5]
	subs r0, #0x10
	strh r0, [r5]
	b _080470D0
	.align 2, 0
_0804708C: .4byte sub_804713C
_08047090: .4byte sub_8047ADC
_08047094: .4byte 0x0300005C
_08047098: .4byte 0x03000064
_0804709C: .4byte 0x03000066
_080470A0: .4byte 0x0300006C
_080470A4: .4byte 0x0300006E
_080470A8: .4byte 0x0300006F
_080470AC: .4byte 0x0300006D
_080470B0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080470C4
	ldrh r0, [r6]
	adds r0, #0x60
	strh r0, [r6]
	ldrh r0, [r7]
	adds r0, #0x10
	b _080470CE
_080470C4:
	ldrh r0, [r6]
	subs r0, #0x60
	strh r0, [r6]
	ldrh r0, [r7]
	subs r0, #0x10
_080470CE:
	strh r0, [r7]
_080470D0:
	mov r3, ip
	adds r3, #0x68
	ldrh r1, [r3]
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	mov r5, ip
	adds r5, #0x6a
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0x62
	strh r0, [r1]
	mov r4, ip
	adds r4, #0xc
	mov r0, ip
	adds r0, #0x5c
	ldr r2, _08047138 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	mov r0, ip
	adds r0, #0x5e
	ldr r1, [r2, #4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r4, #0x28
	ldr r1, [r2]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, sb
	strb r0, [r3]
	mov r0, ip
	bl sub_804783C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047138: .4byte gCamera

	thumb_func_start sub_804713C
sub_804713C: @ 0x0804713C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0804716C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _08047170 @ =0x03000034
	adds r0, r1, r0
	str r0, [sp, #8]
	movs r1, #0
_0804715E:
	lsls r0, r1, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _08047178
	ldr r0, _08047174 @ =gStageData
	ldrb r1, [r0, #6]
	b _08047182
	.align 2, 0
_0804716C: .4byte gCurTask
_08047170: .4byte 0x03000034
_08047174: .4byte gStageData
_08047178:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08047182:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08047210 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	mov r1, sl
	adds r1, #0x6f
	str r1, [sp, #0x10]
	mov r2, sl
	adds r2, #0x6d
	str r2, [sp, #0xc]
	movs r3, #0x6c
	add r3, sl
	mov sb, r3
	cmp r7, #0
	beq _080471B0
	b _08047654
_080471B0:
	mov r5, sl
	adds r5, #0x68
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r4, sl
	adds r4, #0x6a
	movs r0, #0
	ldrsh r2, [r4, r0]
	str r7, [sp]
	ldr r0, [sp, #8]
	adds r3, r6, #0
	bl sub_8020950
	mov r8, r0
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	movs r3, #1
	ands r3, r0
	mov ip, r4
	cmp r3, #0
	bne _080471DC
	b _08047364
_080471DC:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	cmp r0, #2
	bne _080471E6
	b _08047302
_080471E6:
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080472AA
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #8]
	cmp r0, r3
	bne _080472AA
	movs r2, #0
	ldr r0, _08047214 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08047218
	movs r4, #0x30
	ldrsh r0, [r6, r4]
	cmp r0, #2
	beq _08047244
	cmp r0, #5
	bne _0804723A
	b _08047244
	.align 2, 0
_08047210: .4byte gPlayers
_08047214: .4byte gStageData
_08047218:
	ldr r1, _080472C4 @ =gUnknown_080CE7D8
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r6, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #2
	beq _08047238
	cmp r0, #5
	bne _0804723A
_08047238:
	movs r2, #1
_0804723A:
	movs r5, #0x6c
	add r5, sl
	mov sb, r5
	cmp r2, #0
	beq _080472AA
_08047244:
	mov r3, sl
	adds r3, #0x6c
	ldrb r2, [r3]
	lsrs r1, r2, #6
	subs r1, #1
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, #0xc0
	movs r1, #0xc0
	ands r0, r1
	mov sb, r3
	cmp r0, #0
	bne _08047272
	mov r1, ip
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
_08047272:
	ldr r0, [r6, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x14]
	mov r3, sb
	ldrb r0, [r3]
	movs r4, #0x40
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #1
	ldr r5, [sp, #0xc]
	strb r0, [r5]
	mov r0, sl
	adds r0, #0x66
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _080472AA
	ldr r0, _080472C8 @ =0x0000025D
	bl sub_8003E0C
_080472AA:
	movs r2, #0x80
	lsls r2, r2, #9
	mov r5, r8
	ands r2, r5
	cmp r2, #0
	beq _080472CC
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _080472EC
	.align 2, 0
_080472C4: .4byte gUnknown_080CE7D8
_080472C8: .4byte 0x0000025D
_080472CC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080472EC
	ldr r1, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	mov r4, r8
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r2, [r6, #0x1a]
_080472EC:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	bne _080472FA
	b _08047654
_080472FA:
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	b _08047654
_08047302:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r3, ip
	movs r4, #0
	ldrsh r2, [r3, r4]
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0804731E
	b _08047654
_0804731E:
	mov r0, sl
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r1, #8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0x1a]
	ldr r0, [r6, #0x14]
	ldr r5, _0804735C @ =0xFFFFF800
	adds r0, r0, r5
	str r0, [r6, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r6, #4]
	adds r0, r6, #0
	ldr r1, _08047360 @ =Player_800DB30
	bl SetPlayerCallback
	b _08047654
	.align 2, 0
_0804735C: .4byte 0xFFFFF800
_08047360: .4byte Player_800DB30
_08047364:
	movs r2, #0x80
	lsls r2, r2, #9
	mov r0, r8
	ands r2, r0
	cmp r2, #0
	beq _0804737E
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r3, [r6, #0x1a]
	b _0804739E
_0804737E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804739E
	ldr r1, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	mov r4, r8
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r2, [r6, #0x1a]
_0804739E:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r1, r8
	ands r0, r1
	mov r2, sl
	adds r2, #0x6d
	str r2, [sp, #0xc]
	movs r3, #0x6c
	add r3, sl
	mov sb, r3
	cmp r0, #0
	bne _080473B8
	b _08047654
_080473B8:
	ldrb r4, [r2]
	cmp r4, #2
	bne _080473C0
	b _080475E4
_080473C0:
	ldr r4, [sp, #0x10]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08047460
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080473DA
	b _08047508
_080473DA:
	mov r0, sl
	adds r0, #0x64
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _080473EC
	b _08047508
_080473EC:
	mov r4, r8
	lsrs r2, r4, #8
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08047406
	b _0804751C
_08047406:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0804741C
	cmp r0, #8
	beq _0804741C
	cmp r0, #0x21
	beq _0804741C
	cmp r0, #9
	beq _0804741C
	b _0804751C
_0804741C:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x19
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047444
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	movs r2, #0x6c
	add r2, sl
	mov sb, r2
	cmp r0, #0xc
	bne _080474F4
_08047444:
	mov r2, sl
	adds r2, #0x6c
	ldrb r0, [r2]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r4, _0804745C @ =0xFFFFFF00
	b _080474E6
	.align 2, 0
_0804745C: .4byte 0xFFFFFF00
_08047460:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08047508
	mov r0, sl
	adds r0, #0x64
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _08047508
	lsrs r2, r2, #8
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0804751C
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080474A6
	cmp r0, #8
	beq _080474A6
	cmp r0, #0x21
	beq _080474A6
	cmp r0, #9
	bne _0804751C
_080474A6:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x19
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080474CE
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	movs r2, #0x6c
	add r2, sl
	mov sb, r2
	cmp r0, #0xc
	bne _080474F4
_080474CE:
	mov r2, sl
	adds r2, #0x6c
	ldrb r0, [r2]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #1
_080474E6:
	adds r0, r0, r4
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	mov sb, r2
_080474F4:
	movs r0, #1
	ldr r5, [sp, #0xc]
	strb r0, [r5]
	ldr r0, _08047504 @ =0x0000025D
	bl sub_8003E0C
	b _0804751C
	.align 2, 0
_08047504: .4byte 0x0000025D
_08047508:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r1, #0x6c
	add r1, sl
	mov sb, r1
_0804751C:
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804752E
	b _08047654
_0804752E:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _08047544
	cmp r0, #8
	beq _08047544
	cmp r0, #0x21
	beq _08047544
	cmp r0, #9
	beq _08047544
	b _08047654
_08047544:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047590
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047568
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08047654
_08047568:
	ldr r4, [sp, #0x10]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08047584
	mov r5, sb
	ldrb r0, [r5]
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r5]
_08047584:
	ldr r0, [r6, #0x10]
	ldr r2, _0804758C @ =0xFFFFFF00
	b _080475D6
	.align 2, 0
_0804758C: .4byte 0xFFFFFF00
_08047590:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047654
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080475B4
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08047654
_080475B4:
	ldr r4, [sp, #0x10]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080475D0
	mov r5, sb
	ldrb r0, [r5]
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r5]
_080475D0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
_080475D6:
	adds r0, r0, r2
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _08047654
_080475E4:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r5, ip
	movs r0, #0
	ldrsh r2, [r5, r0]
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08047654
	mov r0, sl
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #7
	strh r0, [r6, #0x1c]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	ands r4, r0
	cmp r4, #0
	beq _08047624
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #1
	orrs r0, r1
	b _0804762C
_08047624:
	ldr r0, [r6, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0804762C:
	str r0, [r6, #4]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #9
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #4]
	adds r0, r6, #0
	ldr r1, _0804768C @ =Player_800891C
	bl SetPlayerCallback
	movs r4, #0x6c
	add r4, sl
	mov sb, r4
_08047654:
	ldr r5, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08047666
	b _0804715E
_08047666:
	ldr r2, [sp, #0x10]
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047690
	mov r2, sl
	adds r2, #0x6a
	mov r0, sl
	adds r0, #0x66
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080476DA
	b _080476AE
	.align 2, 0
_0804768C: .4byte Player_800891C
_08047690:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080476BC
	mov r2, sl
	adds r2, #0x68
	mov r0, sl
	adds r0, #0x64
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080476DA
_080476AE:
	strh r3, [r2]
	ldr r0, _080476B8 @ =0x0000025D
	bl sub_8003E28
	b _080476DA
	.align 2, 0
_080476B8: .4byte 0x0000025D
_080476BC:
	mov r2, sl
	adds r2, #0x68
	mov r0, sl
	adds r0, #0x64
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _080476DA
	strh r3, [r2]
	ldr r0, _08047754 @ =0x0000025D
	bl sub_8003E28
_080476DA:
	mov r3, sb
	ldrb r2, [r3]
	movs r0, #0x3f
	ands r0, r2
	cmp r0, #0
	beq _080476FA
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080476FA:
	mov r5, sb
	ldrh r0, [r5]
	ldr r1, _08047758 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804778A
	ldr r0, _08047754 @ =0x0000025D
	bl sub_8003E28
	movs r0, #2
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x68
	movs r2, #0
	ldrsh r4, [r1, r2]
	mov r0, sl
	adds r0, #0x60
	movs r5, #0
	ldrsh r3, [r0, r5]
	subs r2, r4, r3
	adds r5, r1, #0
	mov r8, r0
	cmp r2, #0
	bge _08047732
	subs r2, r3, r4
_08047732:
	mov r1, sl
	adds r1, #0x6a
	movs r0, #0
	ldrsh r7, [r1, r0]
	mov r0, sl
	adds r0, #0x62
	movs r3, #0
	ldrsh r6, [r0, r3]
	subs r3, r7, r6
	mov ip, r1
	adds r4, r0, #0
	cmp r3, #0
	blt _0804775C
	cmp r2, r3
	bgt _08047762
	b _0804776E
	.align 2, 0
_08047754: .4byte 0x0000025D
_08047758: .4byte 0x0000FF3F
_0804775C:
	subs r0, r6, r7
	cmp r2, r0
	ble _0804776E
_08047762:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, r8
	movs r0, #0
	ldrsh r2, [r5, r0]
	b _08047778
_0804776E:
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r5, #0
	ldrsh r2, [r4, r5]
_08047778:
	subs r0, r1, r2
	cmp r0, #0
	bge _08047780
	subs r0, r2, r1
_08047780:
	asrs r0, r0, #2
	adds r0, #1
	mov r1, sl
	adds r1, #0x6e
	strb r0, [r1]
_0804778A:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	cmp r0, #2
	bne _08047828
	mov r2, sl
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x60]
	cmp r1, r0
	bne _080477A4
	movs r0, #0
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	b _08047828
_080477A4:
	mov r4, sl
	adds r4, #0x68
	mov r2, sl
	adds r2, #0x60
	ldrh r0, [r4]
	movs r5, #0
	ldrsh r3, [r4, r5]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r3, r1
	bge _080477CE
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	ble _080477E6
	b _080477E4
_080477CE:
	cmp r3, r1
	ble _080477E6
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080477E6
_080477E4:
	strh r3, [r4]
_080477E6:
	mov r3, sl
	adds r3, #0x6a
	mov r1, sl
	adds r1, #0x62
	ldrh r0, [r3]
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r5, #0
	ldrsh r6, [r1, r5]
	cmp r2, r6
	bge _08047810
	adds r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _08047828
	b _08047826
_08047810:
	cmp r2, r6
	ble _08047828
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	bge _08047828
_08047826:
	strh r2, [r3]
_08047828:
	bl sub_80479B0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804783C
sub_804783C: @ 0x0804783C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	adds r4, r6, #0
	adds r4, #0xc
	adds r5, r6, #0
	adds r5, #0x6f
	ldrb r1, [r5]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080478A2
	ldr r0, _08047870 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08047878
	movs r0, #3
	bl VramMalloc
	str r0, [r6, #0xc]
	ldr r0, _08047874 @ =0x000003C9
	b _08047884
	.align 2, 0
_08047870: .4byte gStageData
_08047874: .4byte 0x000003C9
_08047878:
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #2
_08047884:
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	adds r2, r6, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080478D0
	movs r1, #0x80
	lsls r1, r1, #3
	mov r8, r1
	b _080478D0
_080478A2:
	ldr r0, _080478B8 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _080478C0
	movs r0, #3
	bl VramMalloc
	str r0, [r6, #0xc]
	ldr r0, _080478BC @ =0x000003C9
	b _080478CC
	.align 2, 0
_080478B8: .4byte gStageData
_080478BC: .4byte 0x000003C9
_080478C0:
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #2
_080478CC:
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
_080478D0:
	movs r7, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r4, r6, #0
	adds r4, #0x34
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047940
	ldr r1, _08047924 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #6
	bne _0804792C
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _0804792C
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0x34]
	ldr r0, _08047928 @ =0x000003C9
	b _08047938
	.align 2, 0
_08047924: .4byte gStageData
_08047928: .4byte 0x000003C9
_0804792C:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xe7
	lsls r0, r0, #2
_08047938:
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	b _0804797A
_08047940:
	ldr r1, _08047960 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #6
	bne _08047968
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _08047968
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #0x34]
	ldr r0, _08047964 @ =0x000003C9
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
	b _0804797A
	.align 2, 0
_08047960: .4byte gStageData
_08047964: .4byte 0x000003C9
_08047968:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xe7
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
_0804797A:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
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
	mov r1, r8
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80479B0
sub_80479B0: @ 0x080479B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08047A38 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _08047A3C @ =0x03000034
	adds r6, r4, r1
	ldr r2, _08047A40 @ =0x03000068
	adds r0, r4, r2
	ldr r7, _08047A44 @ =gCamera
	ldr r1, [r7]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r3, _08047A48 @ =0x0300006A
	adds r0, r4, r3
	ldr r1, [r7, #4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	ldr r0, _08047A4C @ =0x0300005C
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, #0xa
	adds r2, r2, r4
	mov sb, r2
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	str r2, [sp, #4]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #4]
	mov r3, ip
	bl sub_802C140
	cmp r0, #0
	bne _08047A98
	ldr r0, _08047A50 @ =0x0000025D
	bl sub_8003E28
	movs r1, #0
	ldr r7, _08047A54 @ =gPlayers
_08047A22:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08047A58
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08047A5C
	.align 2, 0
_08047A38: .4byte gCurTask
_08047A3C: .4byte 0x03000034
_08047A40: .4byte 0x03000068
_08047A44: .4byte gCamera
_08047A48: .4byte 0x0300006A
_08047A4C: .4byte 0x0300005C
_08047A50: .4byte 0x0000025D
_08047A54: .4byte gPlayers
_08047A58:
	ldr r0, _08047A90 @ =gStageData
	ldrb r1, [r0, #6]
_08047A5C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	adds r0, r6, #0
	adds r1, r5, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08047A22
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, _08047A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08047AC8
	.align 2, 0
_08047A90: .4byte gStageData
_08047A94: .4byte gCurTask
_08047A98:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08047AD8 @ =0x0300000C
	adds r4, r4, r0
	ldr r1, [r7]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r7, #4]
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08047AC8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047AD8: .4byte 0x0300000C

	thumb_func_start sub_8047ADC
sub_8047ADC: @ 0x08047ADC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
