.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8053284
sub_8053284: @ 0x08053284
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08053304 @ =Task_2A4_8054EB8
	movs r1, #0xa9
	lsls r1, r1, #2     @ 0x2A4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08053308 @ =TaskDestructor_805332C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r2, _0805330C @ =0x03000290
	adds r0, r1, r2
	movs r3, #0
	strh r3, [r0]
	ldr r0, _08053310 @ =0x03000292
	adds r2, r1, r0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r0, _08053314 @ =0x03000294
	adds r2, r1, r0
	movs r0, #0x50
	strh r0, [r2]
	ldr r2, _08053318 @ =0x03000296
	adds r1, r1, r2
	movs r0, #0xf0
	strh r0, [r1]
	movs r6, #1
	movs r5, #1
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r3, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #6]
	movs r0, #0xbf
	strh r0, [r4, #8]
	strh r3, [r4, #0xa]
	ldr r0, _0805331C @ =0x00007FFF
	bl sub_80C4C0C
	ldr r1, _08053320 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _08053324 @ =gFlags
	ldr r0, [r1]
	orrs r0, r5
	str r0, [r1]
	adds r0, r4, #0
	bl sub_8055614
	ldr r0, _08053328 @ =gStageData
	adds r0, #0x85
	strb r6, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053304: .4byte Task_2A4_8054EB8
_08053308: .4byte TaskDestructor_805332C
_0805330C: .4byte 0x03000290
_08053310: .4byte 0x03000292
_08053314: .4byte 0x03000294
_08053318: .4byte 0x03000296
_0805331C: .4byte 0x00007FFF
_08053320: .4byte gBgPalette
_08053324: .4byte gFlags
_08053328: .4byte gStageData

	thumb_func_start TaskDestructor_805332C
TaskDestructor_805332C: @ 0x0805332C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0
_0805333C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _0805333C
	movs r0, #0
	adds r6, r5, #0
	adds r6, #0x84
	adds r7, r5, #0
	adds r7, #0xd4
	movs r1, #0xfc
	adds r1, r1, r5
	mov r8, r1
_0805336E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #1
	ble _0805336E
	ldr r0, [r7]
	bl VramFree
	movs r0, #0
_08053394:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #6
	ble _08053394
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, _080533F0 @ =gStageData
	ldrb r0, [r0, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080533E4
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
_080533E4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080533F0: .4byte gStageData

@ Related to Special Springs 
@ Input:
@ R0 : u16 (or u32?) character
	thumb_func_start sub_80533F4
sub_80533F4: @ 0x080533F4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805343C @ =Task_10_8055DA8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r4, [r0, #0xc]
	strb r1, [r0, #0xe]
	strh r5, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805343C: .4byte Task_10_8055DA8

	thumb_func_start sub_8053440
sub_8053440: @ 0x08053440
	push {r4, lr}
	mov ip, r0
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, ip
	ldr r2, _080534C0 @ =gDispCnt
	movs r1, #0x42
	strh r1, [r2]
	ldr r2, _080534C4 @ =gBgCntRegs
	movs r4, #0
	movs r3, #0
	ldr r1, _080534C8 @ =0x00000F06
	strh r1, [r2, #2]
	ldr r1, _080534CC @ =0x00006381
	strh r1, [r2, #4]
	ldr r1, _080534D0 @ =gBgScrollRegs
	strh r3, [r1]
	strh r3, [r1, #2]
	movs r2, #0x10
	strh r2, [r1, #4]
	movs r2, #0x74
	strh r2, [r1, #6]
	strh r3, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r1, #0xc]
	strh r3, [r1, #0xe]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r1, _080534D4 @ =0x06001800
	str r1, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	movs r1, #0xd3
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r1, #0x9d
	lsls r1, r1, #1
	add r1, ip
	strb r4, [r1]
	ldr r1, _080534D8 @ =0x0000013B
	add r1, ip
	strb r4, [r1]
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, ip
	strb r4, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	strh r3, [r0, #0x30]
	strh r3, [r0, #0x32]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080534C0: .4byte gDispCnt
_080534C4: .4byte gBgCntRegs
_080534C8: .4byte 0x00000F06
_080534CC: .4byte 0x00006381
_080534D0: .4byte gBgScrollRegs
_080534D4: .4byte 0x06001800
_080534D8: .4byte 0x0000013B

	thumb_func_start sub_80534DC
sub_80534DC: @ 0x080534DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r7, #0
	adds r6, r5, #0
	adds r6, #0xd0
	ldr r0, _0805363C @ =0x06010000
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	mov r4, sl
	movs r3, #0x20
	orrs r4, r3
	str r4, [r5, #8]
	ldr r0, _08053640 @ =gUnknown_080D1C48
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xc
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r3, #0
	mov ip, r3
	strh r0, [r5, #0xc]
	movs r0, #0x42
	strh r0, [r5, #0x10]
	movs r0, #0x8c
	strh r0, [r5, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	strh r3, [r5, #0x14]
	mov r0, ip
	strh r0, [r5, #0x16]
	ldr r0, _08053644 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	ldr r3, _08053648 @ =gUnknown_080D1C4A
	adds r1, r1, r3
	ldrh r0, [r1]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r5, #0x1c]
	movs r3, #0
	strb r3, [r5, #0x1f]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
	mov r0, ip
	strh r0, [r6]
	ldr r0, _0805364C @ =0x0000FFC0
	strh r0, [r6, #2]
	movs r0, #0x40
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	adds r5, #0x28
	adds r6, r7, #0
	adds r6, #0xdc
	ldr r0, _08053650 @ =0x06010800
	str r0, [r7, #0x28]
	movs r0, #0x21
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xc
	mov r1, r8
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	movs r0, #0x30
	strh r0, [r5, #0x10]
	movs r0, #0x8c
	strh r0, [r5, #0x12]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	mov r1, ip
	strh r1, [r5, #0x16]
	adds r1, r3, #0
	mov r0, sp
	strh r1, [r0]
	adds r0, r3, #0
	strh r0, [r5, #0x18]
	ldr r0, _08053648 @ =gUnknown_080D1C4A
	adds r2, r2, r0
	ldrh r0, [r2]
	strb r0, [r5, #0x1a]
	adds r2, r1, #0
	adds r0, r3, #0
	strb r0, [r5, #0x1b]
	mov r0, sb
	strb r0, [r5, #0x1c]
	movs r0, #1
	strb r0, [r5, #0x1f]
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
	mov r1, ip
	strh r1, [r6]
	ldr r0, _08053654 @ =0x0000FFE0
	strh r0, [r6, #2]
	movs r0, #0x20
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805362A
	adds r5, #0xc0
	ldr r0, _08053658 @ =0x06014000
	str r0, [r5]
	mov r0, sl
	str r0, [r5, #8]
	ldrb r0, [r1]
	subs r0, #1
	orrs r0, r4
	str r0, [r5, #8]
	mov r0, r8
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r1]
	movs r1, #0x42
	cmp r0, #1
	beq _080535F6
	movs r1, #0x30
_080535F6:
	strh r1, [r5, #0x10]
	movs r1, #0x8c
	strh r1, [r5, #0x12]
	movs r4, #0x80
	lsls r4, r4, #3
	strh r4, [r5, #0x14]
	mov r0, ip
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	mov r1, sp
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r5, #0x18]
	mov r0, r8
	adds r0, #0x52
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	orrs r0, r2
	strb r0, [r5, #0x1b]
	mov r4, sb
	strb r4, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
_0805362A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805363C: .4byte 0x06010000
_08053640: .4byte gUnknown_080D1C48
_08053644: .4byte 0x0000FFFF
_08053648: .4byte gUnknown_080D1C4A
_0805364C: .4byte 0x0000FFC0
_08053650: .4byte 0x06010800
_08053654: .4byte 0x0000FFE0
_08053658: .4byte 0x06014000

	thumb_func_start sub_805365C
sub_805365C: @ 0x0805365C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
	strh r0, [r4, #6]
	movs r0, #0xa0
	lsls r0, r0, #4
	bl EwramMalloc
	movs r2, #0xae
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	adds r4, r0, #0
	movs r5, #0
_0805368A:
	mov r0, sp
	adds r1, r4, #0
	movs r2, #8
	bl CpuSet
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805368A
	movs r0, #0x80
	lsls r0, r0, #3
	bl EwramMalloc
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	movs r5, #0
_080536B8:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r5, r4, #2
	adds r5, r5, r0
	lsls r1, r4, #4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	str r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xff
	ble _080536B8
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80536F0
sub_80536F0: @ 0x080536F0
	push {r4, r5, r6, lr}
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r4, #0
	movs r3, #0
	ldr r6, _08053744 @ =0x00000545
	movs r5, #1
	rsbs r5, r5, #0
_08053702:
	str r3, [r2]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #8]
	strh r6, [r2, #0xc]
	strh r3, [r2, #0x10]
	strh r3, [r2, #0x12]
	strh r3, [r2, #0x14]
	strh r3, [r2, #0x16]
	ldr r0, _08053748 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	strb r4, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r3, [r2, #0x1f]
	str r5, [r2, #0x20]
	str r5, [r2, #0x28]
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08053702
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053744: .4byte 0x00000545
_08053748: .4byte 0x0000FFFF

	thumb_func_start sub_805374C
sub_805374C: @ 0x0805374C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805380C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08053810 @ =gHBlankCopySize
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08053814 @ =gHBlankCopyTarget
	ldr r0, _08053818 @ =0x04000020
	str r0, [r1]
	ldr r1, _0805381C @ =gBgOffsetsHBlankPrimary
	ldr r2, _08053820 @ =0x0300015C
	adds r0, r3, r2
	ldr r5, [r0]
	str r5, [r1]
	ldr r2, _08053824 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r4, _08053828 @ =0x03000168
	adds r2, r3, r4
	ldr r1, _0805382C @ =0x0300016E
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	ldr r1, _08053830 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053834 @ =0x0300016A
	adds r2, r3, r0
	ldr r1, _08053838 @ =0x03000170
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	ldr r1, _0805383C @ =0x000007FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053840 @ =0x03000176
	adds r1, r3, r0
	ldr r2, _08053844 @ =0x03000172
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, _08053848 @ =0x03000178
	adds r2, r3, r0
	ldr r4, _0805384C @ =0x03000174
	adds r0, r3, r4
	ldrh r0, [r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	ldr r4, _08053850 @ =gBgScrollRegs
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r1, #0xff
	ands r0, r1
	strh r0, [r4]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r1
	strh r0, [r4, #2]
	movs r1, #0
	ldr r0, _08053854 @ =0x03000166
	adds r6, r3, r0
	ldr r2, _08053858 @ =0x03000160
	adds r2, r2, r3
	mov ip, r2
	ldr r4, _08053834 @ =0x0300016A
	adds r4, r4, r3
	mov sb, r4
_080537F4:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r3, #0
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	adds r7, r1, #0
	cmp r0, #0
	blt _0805385C
	ldrh r0, [r6]
	subs r0, r2, r0
	b _08053860
	.align 2, 0
_0805380C: .4byte gCurTask
_08053810: .4byte gHBlankCopySize
_08053814: .4byte gHBlankCopyTarget
_08053818: .4byte 0x04000020
_0805381C: .4byte gBgOffsetsHBlankPrimary
_08053820: .4byte 0x0300015C
_08053824: .4byte gFlags
_08053828: .4byte 0x03000168
_0805382C: .4byte 0x0300016E
_08053830: .4byte 0x00000FFF
_08053834: .4byte 0x0300016A
_08053838: .4byte 0x03000170
_0805383C: .4byte 0x000007FF
_08053840: .4byte 0x03000176
_08053844: .4byte 0x03000172
_08053848: .4byte 0x03000178
_0805384C: .4byte 0x03000174
_08053850: .4byte gBgScrollRegs
_08053854: .4byte 0x03000166
_08053858: .4byte 0x03000160
_0805385C:
	ldrh r0, [r6]
	subs r0, r0, r2
_08053860:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	muls r1, r0, r1
	lsls r1, r1, #1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _080538A0
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080538B0
	ldr r1, _0805389C @ =0xFFFF8000
	adds r0, r4, r1
	b _080538AC
	.align 2, 0
_0805389C: .4byte 0xFFFF8000
_080538A0:
	lsls r0, r4, #0x10
	cmp r0, #0
	blt _080538B0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, r2
_080538AC:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080538B0:
	lsls r2, r3, #0x10
	mov r3, ip
	ldr r0, [r3]
	asrs r2, r2, #0xe
	adds r0, r2, r0
	ldr r0, [r0]
	lsrs r0, r0, #2
	strh r0, [r5]
	ldr r0, [r3]
	adds r2, r2, r0
	movs r0, #0xb2
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	muls r1, r0, r1
	lsrs r1, r1, #2
	movs r0, #0xb4
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r5, #8]
	strh r4, [r5, #0xc]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r7, r4
	adds r5, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _080538F6
	b _080537F4
_080538F6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_220_8053904
Task_220_8053904: @ 0x08053904
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805393C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _08053940 @ =gDispCnt
	ldr r2, _08053944 @ =0x00001441
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08053948 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0805394C
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805394C
	bl sub_802613C
	b _08053B00
	.align 2, 0
_0805393C: .4byte gCurTask
_08053940: .4byte gDispCnt
_08053944: .4byte 0x00001441
_08053948: .4byte gStageData
_0805394C:
	bl sub_805374C
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0xb
	bgt _0805398C
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x13
	ldrh r2, [r2]
	adds r1, r1, r2
	asrs r0, r0, #0x14
	subs r1, r1, r0
	strh r1, [r4, #0x3a]
	adds r0, r4, #0
	adds r0, #0xe4
	strh r1, [r0]
_0805398C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0x60
	subs r1, r0, r1
	asrs r2, r1, #2
	movs r0, #0x82
	subs r0, r0, r2
	asrs r2, r1, #1
	subs r0, r0, r2
	asrs r1, r1, #3
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	movs r1, #0xd6
	adds r1, r1, r4
	mov sl, r1
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r1, #0x60
	subs r0, r1, r0
	asrs r0, r0, #2
	subs r1, r1, r0
	strh r1, [r4, #0x38]
	adds r2, r4, #0
	adds r2, #0xe2
	str r2, [sp]
	strh r1, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x40
	rsbs r0, r0, #0
	adds r7, r4, #0
	adds r7, #0xd2
	strh r0, [r7]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x40
	adds r6, r4, #0
	adds r6, #0xd4
	strh r0, [r6]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x20
	rsbs r0, r0, #0
	movs r1, #0xde
	adds r1, r1, r4
	mov sb, r1
	strh r0, [r1]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x20
	movs r2, #0xe0
	adds r2, r2, r4
	mov r8, r2
	strh r0, [r2]
	bl sub_8054514
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053B00
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x5f
	ble _08053B00
	movs r0, #0
	strh r0, [r5]
	movs r1, #0xb7
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	subs r1, #0xa
	adds r0, r4, r1
	strh r2, [r0]
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #0x8c
	strh r0, [r1]
	ldr r5, _08053B10 @ =gUnknown_080D1C48
	adds r0, #0xee
	adds r1, r4, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r1, r5, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	ldr r0, [r4, #8]
	movs r2, #0x20
	mov ip, r2
	orrs r0, r2
	str r0, [r4, #8]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	movs r0, #0x82
	mov r2, sl
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0xd8
	movs r2, #0x96
	strh r2, [r0]
	ldr r0, _08053B14 @ =0x0000017B
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x21
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r0, _08053B18 @ =0x0000FF20
	mov r1, sb
	strh r0, [r1]
	movs r0, #0xe0
	mov r1, r8
	strh r0, [r1]
	movs r1, #0x60
	ldr r0, [sp]
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xe4
	strh r2, [r0]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r3, r4, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _08053AE8
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r2, r4, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0xf0
	ldr r1, [r2]
	mov r0, ip
	orrs r1, r0
	ldrb r0, [r3]
	subs r0, #1
	orrs r1, r0
	str r1, [r2]
_08053AE8:
	ldr r1, _08053B1C @ =gBldRegs
	movs r0, #0x91
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	movs r2, #0
	strh r2, [r1, #4]
	ldr r0, _08053B20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053B24 @ =Task_8053B28
	str r0, [r1, #8]
_08053B00:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053B10: .4byte gUnknown_080D1C48
_08053B14: .4byte 0x0000017B
_08053B18: .4byte 0x0000FF20
_08053B1C: .4byte gBldRegs
_08053B20: .4byte gCurTask
_08053B24: .4byte Task_8053B28

	thumb_func_start Task_8053B28
Task_8053B28: @ 0x08053B28
	push {r4, lr}
	ldr r0, _08053B50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053B54 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053B58
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053B58
	bl sub_802613C
	b _08053B9C
	.align 2, 0
_08053B50: .4byte gCurTask
_08053B54: .4byte gStageData
_08053B58:
	bl sub_805374C
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #5
	strh r0, [r4, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _08053B9C
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08053BA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053BA8 @ =Task_8053BAC
	str r0, [r1, #8]
_08053B9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053BA4: .4byte gCurTask
_08053BA8: .4byte Task_8053BAC

	thumb_func_start Task_8053BAC
Task_8053BAC: @ 0x08053BAC
	push {r4, r5, lr}
	ldr r0, _08053BD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053BD8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053BDC
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053BDC
	bl sub_802613C
	b _08053C5E
	.align 2, 0
_08053BD4: .4byte gCurTask
_08053BD8: .4byte gStageData
_08053BDC:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r5, r4, r1
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r1, r2, #0
	subs r1, r1, r0
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bgt _08053C2E
	ldr r1, _08053C64 @ =gSineTable
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x8c
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
_08053C2E:
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #5
	strh r0, [r4, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x3f
	ble _08053C5E
	ldr r0, _08053C68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053C6C @ =Task_8053C70
	str r0, [r1, #8]
_08053C5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053C64: .4byte gSineTable
_08053C68: .4byte gCurTask
_08053C6C: .4byte Task_8053C70

	thumb_func_start Task_8053C70
Task_8053C70: @ 0x08053C70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08053C9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08053CA0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053CA4
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053CA4
	bl sub_802613C
	b _08053DD2
	.align 2, 0
_08053C9C: .4byte gCurTask
_08053CA0: .4byte gStageData
_08053CA4:
	bl sub_805374C
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r4, r5, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #0x40
	asrs r0, r0, #2
	adds r0, #0x10
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #0x40
	asrs r0, r0, #1
	subs r0, #0x30
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	subs r0, #0x3f
	movs r1, #0xb7
	lsls r1, r1, #1
	adds r1, r1, r5
	mov sb, r1
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r0, #0x40
	asrs r0, r0, #1
	movs r1, #0x30
	subs r1, r1, r0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r5
	mov r8, r0
	strh r1, [r0]
	movs r1, #0xb3
	lsls r1, r1, #1
	adds r2, r5, r1
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r5, #0x12]
	adds r1, r5, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #5
	strh r0, [r5, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x7f
	ble _08053DD2
	ldr r6, _08053DE0 @ =gUnknown_080D1C48
	movs r0, #0xbd
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r4, r6, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r3, r6, #6
	adds r0, r0, r3
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r0, [r5, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #3
	orrs r0, r7
	str r0, [r5, #8]
	movs r0, #0x82
	strh r0, [r5, #0x10]
	movs r2, #0x96
	strh r2, [r5, #0x12]
	adds r0, #0xf9
	adds r1, r5, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strb r0, [r1]
	ldr r0, [r5, #0x30]
	movs r1, #0x22
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	str r0, [r5, #0x30]
	movs r0, #0x50
	strh r0, [r5, #0x38]
	strh r2, [r5, #0x3a]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r3, r5, r1
	ldrb r0, [r3]
	cmp r0, #0
	beq _08053DBE
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrh r0, [r0]
	adds r2, #0x6c
	adds r1, r5, r2
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0xf0
	ldrb r1, [r3]
	subs r1, #1
	movs r0, #0x20
	orrs r1, r0
	ldr r0, [r2]
	bics r0, r1
	orrs r0, r7
	str r0, [r2]
_08053DBE:
	movs r0, #0x40
	mov r1, sb
	strh r0, [r1]
	movs r0, #0
	mov r2, r8
	strh r0, [r2]
	ldr r0, _08053DE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053DE8 @ =sub_8053DEC
	str r0, [r1, #8]
_08053DD2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053DE0: .4byte gUnknown_080D1C48
_08053DE4: .4byte gCurTask
_08053DE8: .4byte sub_8053DEC

	thumb_func_start sub_8053DEC
sub_8053DEC: @ 0x08053DEC
	push {r4, r5, lr}
	ldr r0, _08053E14 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053E18 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053E1C
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053E1C
	bl sub_802613C
	b _08053E90
	.align 2, 0
_08053E14: .4byte gCurTask
_08053E18: .4byte gStageData
_08053E1C:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x20
	strh r0, [r1]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08053E3E
	subs r0, r2, #1
	strh r0, [r1]
_08053E3E:
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	adds r0, #2
	strh r0, [r5]
	ldr r1, _08053E98 @ =gSineTable
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x8c
	movs r3, #0xb3
	lsls r3, r3, #1
	adds r1, r4, r3
	strh r0, [r1]
	movs r0, #0x82
	strh r0, [r4, #0x10]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	movs r0, #0x50
	strh r0, [r4, #0x38]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	bl sub_805448C
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0xff
	ble _08053E90
	movs r0, #0
	strh r0, [r5]
	ldr r0, _08053E9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053EA0 @ =Task_8053EA4
	str r0, [r1, #8]
_08053E90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053E98: .4byte gSineTable
_08053E9C: .4byte gCurTask
_08053EA0: .4byte Task_8053EA4

	thumb_func_start Task_8053EA4
Task_8053EA4: @ 0x08053EA4
	push {r4, r5, r6, lr}
	ldr r0, _08053ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053ED0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053ED4
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053ED4
	bl sub_802613C
	b _08053FA2
	.align 2, 0
_08053ECC: .4byte gCurTask
_08053ED0: .4byte gStageData
_08053ED4:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r6, #0
	movs r0, #0x20
	strh r0, [r1]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	bl sub_805448C
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x50
	bne _08053F22
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl sub_80545E0
_08053F22:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _08053FA2
	ldr r0, _08053FA8 @ =gUnknown_080D1C48
	mov ip, r0
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r2, ip
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r1, ip
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	ldr r0, _08053FAC @ =0x0000017B
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053F98
	mov r0, ip
	adds r0, #0x58
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x5a
	ldrh r0, [r0]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r3, r4, r2
	strb r0, [r3]
_08053F98:
	strh r6, [r5]
	ldr r0, _08053FB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053FB4 @ =sub_8053FB8
	str r0, [r1, #8]
_08053FA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053FA8: .4byte gUnknown_080D1C48
_08053FAC: .4byte 0x0000017B
_08053FB0: .4byte gCurTask
_08053FB4: .4byte sub_8053FB8

	thumb_func_start sub_8053FB8
sub_8053FB8: @ 0x08053FB8
	push {r4, r5, r6, lr}
	ldr r0, _08053FE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053FE4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053FE8
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053FE8
	bl sub_802613C
	b _080540D0
	.align 2, 0
_08053FE0: .4byte gCurTask
_08053FE4: .4byte gStageData
_08053FE8:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r5, #0
	movs r6, #0x20
	strh r6, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	bl sub_805448C
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805402C
	subs r0, r3, #1
	strh r0, [r2]
_0805402C:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080540D8 @ =0x01A30000
	cmp r0, r1
	ble _080540D0
	strh r5, [r2]
	ldr r0, _080540DC @ =gUnknown_080D1C48
	mov ip, r0
	movs r0, #0xbd
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r2, ip
	adds r2, #0xc
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r1, ip
	adds r1, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
	ldr r0, _080540E0 @ =0x0000017B
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x21
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r4, r1
	ldrb r0, [r5]
	cmp r0, #0
	beq _080540C8
	mov r0, ip
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x5e
	ldrh r0, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r3, r4, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0xf0
	ldr r1, [r2]
	orrs r1, r6
	ldrb r0, [r5]
	subs r0, #1
	orrs r1, r0
	str r1, [r2]
_080540C8:
	ldr r0, _080540E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080540E8 @ =sub_80540EC
	str r0, [r1, #8]
_080540D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080540D8: .4byte 0x01A30000
_080540DC: .4byte gUnknown_080D1C48
_080540E0: .4byte 0x0000017B
_080540E4: .4byte gCurTask
_080540E8: .4byte sub_80540EC

	thumb_func_start sub_80540EC
sub_80540EC: @ 0x080540EC
	push {r4, r5, lr}
	ldr r0, _08054114 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08054118 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0805411C
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805411C
	bl sub_802613C
	b _080541F0
	.align 2, 0
_08054114: .4byte gCurTask
_08054118: .4byte gStageData
_0805411C:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x10
	ble _08054134
	subs r0, r2, #1
	strh r0, [r1]
_08054134:
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0xf
	bgt _08054148
	adds r0, r2, #1
	strh r0, [r1]
_08054148:
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r0, #0x82
	strh r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0xd6
	strh r0, [r1]
	movs r1, #0xb3
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	subs r0, #0xa
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0xd8
	strh r1, [r0]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, #0x50
	strh r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xe2
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	adds r1, #2
	strh r0, [r1]
	ldr r2, _080541F8 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r3, [r5]
	adds r0, r0, r3
	subs r1, #0x12
	strh r0, [r1]
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xd4
	strh r0, [r1]
	bl sub_8054514
	ldrh r1, [r5]
	movs r0, #0x23
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xb7
	lsls r3, r3, #1
	adds r2, r4, r3
	strh r0, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r3, #2
	adds r1, r4, r3
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080541F0
	movs r0, #0
	strh r0, [r5]
	movs r0, #0x10
	strh r0, [r2]
	ldr r0, _080541FC @ =0x0000FFE0
	strh r0, [r1]
	ldr r0, _08054200 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08054204 @ =sub_8054208
	str r0, [r1, #8]
_080541F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080541F8: .4byte 0xFFFFFF00
_080541FC: .4byte 0x0000FFE0
_08054200: .4byte gCurTask
_08054204: .4byte sub_8054208

	thumb_func_start sub_8054208
sub_8054208: @ 0x08054208
	push {r4, lr}
	ldr r0, _08054230 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08054234 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08054238
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054238
	bl sub_802613C
	b _0805428E
	.align 2, 0
_08054230: .4byte gCurTask
_08054234: .4byte gStageData
_08054238:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x10
	strh r1, [r0]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #7
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb
	strh r0, [r4, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0805428E
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08054294 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08054298 @ =sub_805429C
	str r0, [r1, #8]
_0805428E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054294: .4byte gCurTask
_08054298: .4byte sub_805429C

	thumb_func_start sub_805429C
sub_805429C: @ 0x0805429C
	push {r4, r5, r6, lr}
	ldr r0, _080542C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080542C8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _080542CC
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080542CC
	bl sub_802613C
	b _080543E6
	.align 2, 0
_080542C4: .4byte gCurTask
_080542C8: .4byte gStageData
_080542CC:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r6, #0
	movs r1, #0x10
	strh r1, [r0]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r0, #0x20
	asrs r0, r0, #3
	cmp r0, #9
	bgt _08054308
	subs r2, #0xe
	adds r1, r4, r2
	subs r0, #0xa
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0xd8
	strh r1, [r0]
_08054308:
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #9
	bgt _08054326
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #0xa
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r4, #0x3a]
	adds r0, r4, #0
	adds r0, #0xe4
	strh r1, [r0]
_08054326:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0xbf
	bgt _08054350
	adds r0, #0x40
	asrs r0, r0, #3
	adds r0, #0x82
	strh r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0xd6
	strh r0, [r1]
	ldrh r0, [r5]
	subs r0, #0xe0
	subs r1, #4
	strh r0, [r1]
	ldrh r1, [r5]
	movs r0, #0xe0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xd4
	strh r0, [r1]
_08054350:
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r0, #0x60
	strh r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xe2
	strh r0, [r1]
	ldrh r0, [r5]
	subs r0, #0xe0
	subs r1, #4
	strh r0, [r1]
	ldrh r1, [r5]
	movs r0, #0xe0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xe0
	strh r0, [r1]
	bl sub_8054514
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bne _080543BA
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	movs r2, #0xa9
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #4
	adds r1, r4, r2
	movs r0, #0x80
	strh r0, [r1]
	adds r0, #0xd8
	adds r1, r4, r0
	movs r0, #0xbf
	strh r0, [r1]
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	b _080543C8
_080543BA:
	cmp r0, #0x9f
	ble _080543C8
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r4, r2
	bl UpdateScreenFade
_080543C8:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xdf
	ble _080543E6
	ldr r0, _080543EC @ =gMPlayInfo_BGM
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _080543F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080543F4 @ =sub_80543F8
	str r0, [r1, #8]
_080543E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080543EC: .4byte gMPlayInfo_BGM
_080543F0: .4byte gCurTask
_080543F4: .4byte sub_80543F8

	thumb_func_start sub_80543F8
sub_80543F8: @ 0x080543F8
	push {r4, lr}
	ldr r0, _08054420 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08054424 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08054428
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054428
	bl sub_802613C
	b _08054484
	.align 2, 0
_08054420: .4byte gCurTask
_08054424: .4byte gStageData
_08054428:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x10
	strh r1, [r0]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08054484
	ldr r4, _08054474 @ =gStageData
	ldrh r0, [r4, #0xe]
	bl sub_8000414
	ldrb r0, [r4, #9]
	cmp r0, #6
	beq _0805447C
	adds r0, #1
	movs r1, #0
	movs r2, #0
	bl StageIntro_ShowZoneName
	ldr r0, _08054478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08054484
	.align 2, 0
_08054474: .4byte gStageData
_08054478: .4byte gCurTask
_0805447C:
	movs r0, #0x47 @ Altar Emerald
	movs r1, #0
	bl WarpToMap
_08054484:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805448C
sub_805448C: @ 0x0805448C
	push {r4, r5, r6, lr}
	ldr r0, _080544DC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080544E0 @ =0x03000028
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080544E4 @ =0x0300021C
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _08054508
	ldr r2, _080544E8 @ =0x030000E8
	adds r0, r5, r2
	bl UpdateSpriteAnimation
	ldrb r0, [r4]
	cmp r0, #1
	bne _080544F0
	ldrh r1, [r6, #0x10]
	ldr r2, _080544EC @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	b _080544FA
	.align 2, 0
_080544DC: .4byte gCurTask
_080544E0: .4byte 0x03000028
_080544E4: .4byte 0x0300021C
_080544E8: .4byte 0x030000E8
_080544EC: .4byte 0x030000F8
_080544F0:
	ldrh r1, [r6, #0x38]
	ldr r2, _08054510 @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x3a]
_080544FA:
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0xe8
	bl DisplaySprite
_08054508:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054510: .4byte 0x030000F8

	thumb_func_start sub_8054514
sub_8054514: @ 0x08054514
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08054594 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, _08054598 @ =0x030000D0
	adds r0, r0, r5
	mov sb, r0
	adds r0, r6, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r2, _0805459C @ =0x03000028
	adds r4, r5, r2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080545A0 @ =0x030000DC
	adds r0, r0, r5
	mov r8, r0
	adds r0, r4, #0
	mov r1, r8
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	ldr r2, _080545A4 @ =0x0300021C
	adds r7, r5, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _080545D0
	ldr r0, _080545A8 @ =0x030000E8
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r7]
	cmp r0, #1
	bne _080545B0
	ldrh r1, [r6, #0x10]
	ldr r2, _080545AC @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r4, #0
	mov r1, sb
	bl TransformSprite
	b _080545C8
	.align 2, 0
_08054594: .4byte gCurTask
_08054598: .4byte 0x030000D0
_0805459C: .4byte 0x03000028
_080545A0: .4byte 0x030000DC
_080545A4: .4byte 0x0300021C
_080545A8: .4byte 0x030000E8
_080545AC: .4byte 0x030000F8
_080545B0:
	ldrh r1, [r6, #0x38]
	ldr r2, _080545DC @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x3a]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r4, #0
	mov r1, r8
	bl TransformSprite
_080545C8:
	adds r0, r6, #0
	adds r0, #0xe8
	bl DisplaySprite
_080545D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080545DC: .4byte 0x030000F8

	thumb_func_start sub_80545E0
sub_80545E0: @ 0x080545E0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08054668 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov sb, r1
	ldr r0, _0805466C @ =Task_274_8054678
	movs r1, #0x9d
	lsls r1, r1, #2     @ 0x274
	ldr r2, _08054670 @ =0x00000101
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	add r0, sb
	strh r5, [r0, #4]
	ldr r1, _08054674 @ =0x03000150
	adds r4, r4, r1
	str r4, [r0]
	strh r5, [r4]
	ldr r2, [r0]
	movs r1, #1
	strh r1, [r2, #2]
	ldr r1, [r0]
	strh r5, [r1, #4]
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r2, #6]
	ldr r2, [r0]
	movs r1, #0xbf
	strh r1, [r2, #8]
	ldr r1, [r0]
	strh r5, [r1, #0xa]
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	movs r1, #0x50
	strh r1, [r0, #0xc]
	movs r1, #0xf0
	strh r1, [r0, #0xe]
	strb r6, [r0, #0x19]
	mov r1, r8
	strb r1, [r0, #0x1a]
	bl sub_80548E0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054668: .4byte gCurTask
_0805466C: .4byte Task_274_8054678
_08054670: .4byte 0x00000101
_08054674: .4byte 0x03000150

	thumb_func_start Task_274_8054678
Task_274_8054678: @ 0x08054678
	push {r4, r5, lr}
	ldr r5, _080546E4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080546DE
	ldr r2, _080546E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	ldr r1, _080546EC @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r3, _080546F0 @ =gWinRegs
	movs r1, #0
	movs r0, #0x20
	strh r0, [r3, #8]
	movs r0, #0x1f
	strh r0, [r3, #0xa]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	movs r0, #0xf0
	strb r0, [r4, #8]
	movs r0, #0xa0
	strb r0, [r4, #9]
	ldr r4, [r5]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, _080546F4 @ =Task_274_80546F8
	str r0, [r4, #8]
_080546DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080546E4: .4byte gCurTask
_080546E8: .4byte gDispCnt
_080546EC: .4byte 0x0000BFFF
_080546F0: .4byte gWinRegs
_080546F4: .4byte Task_274_80546F8

	thumb_func_start Task_274_80546F8
Task_274_80546F8: @ 0x080546F8
	push {r4, r5, r6, lr}
	ldr r1, _08054754 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldrb r0, [r3, #7]
	adds r0, #4
	movs r5, #0
	strb r0, [r3, #7]
	ldrb r0, [r3, #9]
	subs r0, #4
	strb r0, [r3, #9]
	ldr r6, [r1]
	ldrh r2, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r4, _08054758 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r0, [r3, #7]
	cmp r0, #0x43
	bls _0805474E
	movs r0, #0x10
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r4, #0xa]
	ldr r0, _0805475C @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	ldr r0, _08054760 @ =Task_274_8056214
	str r0, [r6, #8]
_0805474E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054754: .4byte gCurTask
_08054758: .4byte gWinRegs
_0805475C: .4byte gBldRegs
_08054760: .4byte Task_274_8056214

	thumb_func_start Task_274_8054764
Task_274_8054764: @ 0x08054764
	push {r4, r5, lr}
	ldr r4, _080547D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #7]
	subs r0, #2
	strb r0, [r5, #7]
	ldrb r0, [r5, #9]
	subs r0, #2
	strb r0, [r5, #9]
	ldrh r0, [r5, #0xc]
	subs r0, #2
	strh r0, [r5, #0xc]
	bl sub_8054E38
	ldr r4, [r4]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r3, _080547D4 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r5, #7]
	cmp r0, #0x18
	bhi _080547CA
	ldrh r1, [r5, #0x10]
	ldrh r2, [r5, #0xa]
	adds r0, r1, r2
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #0x14]
	subs r0, r0, r1
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x12]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r0, #0
	strh r0, [r5, #0x10]
	ldr r0, _080547D8 @ =Task_274_8056268
	str r0, [r4, #8]
_080547CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080547D0: .4byte gCurTask
_080547D4: .4byte gWinRegs
_080547D8: .4byte Task_274_8056268

	thumb_func_start Task_274_80547DC
Task_274_80547DC: @ 0x080547DC
	push {r4, r5, r6, lr}
	ldr r6, _08054808 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _0805480C @ =0x03000224
	adds r3, r4, r0
	ldrh r1, [r3, #0x12]
	movs r2, #0x12
	ldrsh r0, [r3, r2]
	cmp r0, #0x4f
	bgt _08054814
	adds r0, r1, #2
	strh r0, [r3, #0x12]
	ldr r0, _08054810 @ =0x0300024C
	adds r3, r4, r0
	ldrh r0, [r3, #0x12]
	adds r0, #2
	strh r0, [r3, #0x12]
	b _08054856
	.align 2, 0
_08054808: .4byte gCurTask
_0805480C: .4byte 0x03000224
_08054810: .4byte 0x0300024C
_08054814:
	ldrb r0, [r3, #0x1c]
	cmp r0, #0x10
	bls _08054830
	movs r1, #0x50
	strh r1, [r3, #0x12]
	subs r0, #2
	strb r0, [r3, #0x1c]
	ldr r2, _0805482C @ =0x0300024C
	adds r3, r4, r2
	strh r1, [r3, #0x12]
	b _08054856
	.align 2, 0
_0805482C: .4byte 0x0300024C
_08054830:
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _08054856
	movs r2, #0
	movs r1, #0x50
	strh r1, [r3, #0x12]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	ldr r0, _08054870 @ =0x0300024C
	adds r3, r4, r0
	strh r1, [r3, #0x12]
	strh r2, [r5, #4]
	ldr r1, [r6]
	ldr r0, _08054874 @ =sub_8054878
	str r0, [r1, #8]
_08054856:
	bl sub_8054E38
	bl sub_80563BC
	bl sub_8056430
	bl sub_8056408
	bl Task_274_8056494
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054870: .4byte 0x0300024C
_08054874: .4byte sub_8054878

	thumb_func_start sub_8054878
sub_8054878: @ 0x08054878
	push {r4, r5, lr}
	ldr r1, _080548D0 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldrb r0, [r3, #7]
	adds r0, #2
	strb r0, [r3, #7]
	ldrb r0, [r3, #9]
	subs r0, #2
	strb r0, [r3, #9]
	ldr r5, [r1]
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r4, _080548D4 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r0, [r3, #7]
	ldrb r3, [r3, #9]
	cmp r0, r3
	blo _080548CA
	ldr r2, _080548D8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080548DC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	bl TaskDestroy
_080548CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080548D0: .4byte gCurTask
_080548D4: .4byte gWinRegs
_080548D8: .4byte gDispCnt
_080548DC: .4byte 0x0000DFFF

	thumb_func_start sub_80548E0
sub_80548E0: @ 0x080548E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldr r1, _08054CD4 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r4, _08054CD8 @ =gPlayers
	adds r1, r1, r4
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov sb, r0
	ldr r3, _08054CDC @ =gUnknown_080D1CA8
	adds r0, r2, r3
	ldrb r0, [r0]
	mov r5, sb
	adds r1, r5, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
	ldr r0, _08054CD4 @ =gStageData
	adds r0, #0xae
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r5, _08054CD4 @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #5
	bne _08054962
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	movs r5, #0xbd
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov sb, r0
_08054962:
	movs r6, #0
	mov r0, sl
	strb r1, [r0, #0x16]
	adds r1, r2, #0
	adds r0, r1, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r0, #8
	mov r2, sl
	strh r0, [r2, #0x10]
	ldr r0, _08054CE0 @ =0x0000FFF8
	strh r0, [r2, #0x12]
	movs r0, #8
	strh r0, [r2, #0x14]
	movs r0, #0xe6
	strb r0, [r2, #0x18]
	mov r7, sl
	adds r7, #0x1c
	ldr r4, _08054CE4 @ =gUnknown_080D1CAE
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08054CE8 @ =gUnknown_080D1CB2
	adds r0, r0, r3
	ldrh r0, [r0]
	bl VramMalloc
	mov r5, sl
	str r0, [r5, #0x1c]
	ldrb r1, [r5, #0x19]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r1, [r5, #0x19]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r4, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sl
	ldrh r0, [r1, #0x10]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r7, #0x10]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	mov r2, sl
	str r0, [r2, #0x44]
	ldr r3, _08054CEC @ =0x00000596
	strh r3, [r7, #0xc]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrh r0, [r2, #0x12]
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r2, #0xc]
	subs r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #1
	ldr r2, _08054CE8 @ =gUnknown_080D1CB2
	adds r0, r0, r2
	ldrh r0, [r0]
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #0x6c]
	ldrb r1, [r3, #0x1a]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r1, [r3, #0x1a]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrh r0, [r3, #0x14]
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r3, #0xc]
	subs r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0xe
	bl VramMalloc
	str r0, [r7]
	ldr r5, _08054CEC @ =0x00000596
	strh r5, [r7, #0xc]
	movs r0, #0xa
	strb r0, [r7, #0x1a]
	movs r0, #0x3a
	mov r1, sl
	strb r0, [r1, #0x17]
	movs r2, #0x80
	strh r2, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrh r0, [r1, #0xe]
	strh r0, [r7, #0x10]
	movs r4, #0x1c
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	movs r0, #0x17
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrh r0, [r2, #0xe]
	ldrb r3, [r2, #0x17]
	adds r0, r0, r3
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	ldr r2, _08054CEC @ =0x00000596
	strh r2, [r7, #0xc]
	movs r0, #0xb
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r5, #0x34
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0xc
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	ldr r0, [sp, #8]
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, [sp, #8]
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	mov r2, sp
	ldr r3, _08054CF0 @ =gUnknown_080CE4B2
	lsls r5, r5, #1
	adds r1, r3, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strb r1, [r2]
	adds r5, r5, r3
	ldrb r1, [r5]
	strb r1, [r2, #1]
	ldr r3, _08054CF4 @ =gUnknown_080CE438
	lsrs r4, r4, #0xf
	adds r1, r3, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2, #2]
	adds r4, r4, r3
	ldrb r1, [r4]
	strb r1, [r2, #3]
	mov r1, sp
	strb r0, [r1, #4]
	movs r7, #0x86
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r3, _08054CEC @ =0x00000596
	strh r3, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sl
	ldrb r0, [r1, #0x18]
	adds r0, #0x54
	strh r0, [r7, #0x10]
	movs r2, #0x34
	strh r2, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0x9a
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r0, #0x44
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xae
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	movs r4, #0xc
	strb r4, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r0, #0x3a
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xc2
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r0, #0x2a
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	movs r7, #0xd6
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r2, _08054CEC @ =0x00000596
	strh r2, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r5, sl
	ldrb r0, [r5, #0x18]
	adds r0, #0x1a
	strh r0, [r7, #0x10]
	movs r0, #0x34
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xea
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	ldr r3, _08054CEC @ =0x00000596
	strh r3, [r7, #0xc]
	b _08054CF8
	.align 2, 0
_08054CD4: .4byte gStageData
_08054CD8: .4byte gPlayers
_08054CDC: .4byte gUnknown_080D1CA8
_08054CE0: .4byte 0x0000FFF8
_08054CE4: .4byte gUnknown_080D1CAE
_08054CE8: .4byte gUnknown_080D1CB2
_08054CEC: .4byte 0x00000596
_08054CF0: .4byte gUnknown_080CE4B2
_08054CF4: .4byte gUnknown_080CE438
_08054CF8:
	strb r4, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sl
	ldrb r0, [r1, #0x18]
	adds r0, #0x10
	strh r0, [r7, #0x10]
	movs r2, #0x34
	strh r2, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xfe
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054D78 @ =0x00000596
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #4]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	ldr r2, _08054D7C @ =gStageData
	ldrb r0, [r2, #0xe]
	ldr r2, _08054D80 @ =gMedalTimes
	lsls r1, r0, #2
	adds r0, r1, r2
	ldr r3, [sp, #8]
	ldrh r0, [r0]
	cmp r3, r0
	bhi _08054D84
	movs r1, #0
	b _08054D94
	.align 2, 0
_08054D78: .4byte 0x00000596
_08054D7C: .4byte gStageData
_08054D80: .4byte gMedalTimes
_08054D84:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r1, #2
	ldr r5, [sp, #8]
	ldrh r0, [r0]
	cmp r5, r0
	bhi _08054D94
	movs r1, #1
_08054D94:
	movs r7, #0x89
	lsls r7, r7, #2
	add r7, sl
	ldr r5, _08054E30 @ =gUnknown_080D1CD2
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	mov r8, r1
	mov r2, r8
	strh r2, [r7, #0x10]
	ldr r5, _08054E34 @ =0x0000FFF0
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x40
	strb r0, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	movs r7, #0x93
	lsls r7, r7, #2
	add r7, sl
	movs r0, #6
	bl VramMalloc
	str r0, [r7]
	movs r0, #0xed
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, r8
	strh r1, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r4, [r7, #0x20]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054E30: .4byte gUnknown_080D1CD2
_08054E34: .4byte 0x0000FFF0

	thumb_func_start sub_8054E38
sub_8054E38: @ 0x08054E38
	push {r4, r5, r6, lr}
	ldr r0, _08054EA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _08054EAC @ =0x0300001C
	adds r6, r5, r0
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08054EB0 @ =0x03000044
	adds r6, r5, r0
	ldrh r0, [r4, #0x12]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08054EB4 @ =0x0300006C
	adds r6, r5, r0
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054EA8: .4byte gCurTask
_08054EAC: .4byte 0x0300001C
_08054EB0: .4byte 0x03000044
_08054EB4: .4byte 0x0300006C

	thumb_func_start Task_2A4_8054EB8
Task_2A4_8054EB8: @ 0x08054EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08054F3C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054F30
	ldr r1, _08054F40 @ =0x0300028C
	adds r6, r5, r1
	movs r3, #0
	strb r3, [r6]
	ldr r7, _08054F44 @ =0x0300028D
	adds r7, r7, r5
	mov r8, r7
	strb r3, [r7]
	ldr r0, _08054F48 @ =0x0300028E
	adds r4, r5, r0
	movs r0, #0xf0
	strb r0, [r4]
	adds r1, #3
	adds r5, r5, r1
	movs r0, #0xa0
	strb r0, [r5]
	ldr r2, _08054F4C @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	ldr r1, _08054F50 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08054F54 @ =gWinRegs
	strh r3, [r2, #8]
	movs r0, #0x1f
	strh r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r1, r1, #8
	ldrb r0, [r4]
	orrs r0, r1
	strh r0, [r2, #2]
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r5]
	orrs r0, r1
	strh r0, [r2, #6]
	mov r7, sb
	ldr r1, [r7]
	ldr r0, _08054F58 @ =Task_2A4_8054F5C
	str r0, [r1, #8]
_08054F30:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054F3C: .4byte gCurTask
_08054F40: .4byte 0x0300028C
_08054F44: .4byte 0x0300028D
_08054F48: .4byte 0x0300028E
_08054F4C: .4byte gDispCnt
_08054F50: .4byte 0x0000DFFF
_08054F54: .4byte gWinRegs
_08054F58: .4byte Task_2A4_8054F5C

	thumb_func_start Task_2A4_8054F5C
Task_2A4_8054F5C: @ 0x08054F5C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08054FC8 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r1, _08054FCC @ =0x0300028D
	adds r3, r4, r1
	ldrb r0, [r3]
	adds r0, #4
	movs r6, #0
	strb r0, [r3]
	ldr r7, _08054FD0 @ =0x0300028F
	adds r2, r4, r7
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	ldr r5, _08054FD4 @ =gWinRegs
	subs r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #8
	subs r7, #1
	adds r0, r4, r7
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r3]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r5, #6]
	ldrb r0, [r3]
	cmp r0, #0x43
	bls _08054FC0
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r5, #8]
	movs r0, #0x1f
	strh r0, [r5, #0xa]
	ldr r0, _08054FD8 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	ldr r1, _08054FDC @ =0x03000290
	adds r0, r4, r1
	strh r6, [r0]
	mov r7, ip
	ldr r1, [r7]
	ldr r0, _08054FE0 @ =Task_2A4_8054FE4
	str r0, [r1, #8]
_08054FC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054FC8: .4byte gCurTask
_08054FCC: .4byte 0x0300028D
_08054FD0: .4byte 0x0300028F
_08054FD4: .4byte gWinRegs
_08054FD8: .4byte gBldRegs
_08054FDC: .4byte 0x03000290
_08054FE0: .4byte Task_2A4_8054FE4

	thumb_func_start Task_2A4_8054FE4
Task_2A4_8054FE4: @ 0x08054FE4
	push {r4, lr}
	ldr r0, _08055008 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0805500C @ =0x03000292
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x78
	ble _08055010
	adds r0, r2, #0
	subs r0, #0xc
	b _08055012
	.align 2, 0
_08055008: .4byte gCurTask
_0805500C: .4byte 0x03000292
_08055010:
	movs r0, #0x78
_08055012:
	strh r0, [r1]
	bl sub_8055CA8
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08055038
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08055040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08055044 @ =Task_2A4_8055048
	str r0, [r1, #8]
_08055038:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055040: .4byte gCurTask
_08055044: .4byte Task_2A4_8055048

	thumb_func_start Task_2A4_8055048
Task_2A4_8055048: @ 0x08055048
	push {r4, r5, r6, r7, lr}
	ldr r6, _080550D0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	ldr r0, _080550D4 @ =0x0300028D
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r0, #2
	strb r0, [r4]
	ldr r1, _080550D8 @ =0x0300028F
	adds r2, r5, r1
	ldrb r0, [r2]
	subs r0, #2
	strb r0, [r2]
	ldr r7, _080550DC @ =0x03000294
	adds r1, r5, r7
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	ldr r3, _080550E0 @ =gWinRegs
	ldr r1, _080550E4 @ =0x0300028C
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r1, r1, #8
	subs r7, #6
	adds r0, r5, r7
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r4]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r3, #6]
	bl sub_8055CA8
	ldrb r0, [r4]
	cmp r0, #0x18
	bhi _080550C8
	ldr r0, _080550E8 @ =0x03000292
	adds r1, r5, r0
	ldr r2, _080550EC @ =0x03000298
	adds r3, r5, r2
	ldrh r0, [r3]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	ldr r0, _080550F0 @ =0x0300029C
	adds r2, r5, r0
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r1, _080550F4 @ =0x0300029A
	adds r2, r5, r1
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #0
	strh r0, [r3]
	ldr r1, [r6]
	ldr r0, _080550F8 @ =Task_2A4_80550FC
	str r0, [r1, #8]
_080550C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080550D0: .4byte gCurTask
_080550D4: .4byte 0x0300028D
_080550D8: .4byte 0x0300028F
_080550DC: .4byte 0x03000294
_080550E0: .4byte gWinRegs
_080550E4: .4byte 0x0300028C
_080550E8: .4byte 0x03000292
_080550EC: .4byte 0x03000298
_080550F0: .4byte 0x0300029C
_080550F4: .4byte 0x0300029A
_080550F8: .4byte Task_2A4_80550FC

	thumb_func_start Task_2A4_80550FC
Task_2A4_80550FC: @ 0x080550FC
	push {r4, lr}
	ldr r0, _08055120 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08055124 @ =0x03000292
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #8
	ble _08055128
	adds r0, r2, #0
	subs r0, #8
	b _0805512A
	.align 2, 0
_08055120: .4byte gCurTask
_08055124: .4byte 0x03000292
_08055128:
	movs r0, #8
_0805512A:
	strh r0, [r1]
	bl sub_8055CA8
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08055150
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08055158 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805515C @ =Task_2A4_8055160
	str r0, [r1, #8]
_08055150:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055158: .4byte gCurTask
_0805515C: .4byte Task_2A4_8055160

	thumb_func_start Task_2A4_8055160
Task_2A4_8055160: @ 0x08055160
	push {r4, lr}
	ldr r0, _08055184 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08055188 @ =0x03000296
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x82
	ble _0805518C
	adds r0, r2, #0
	subs r0, #0xc
	b _0805518E
	.align 2, 0
_08055184: .4byte gCurTask
_08055188: .4byte 0x03000296
_0805518C:
	movs r0, #0x82
_0805518E:
	strh r0, [r1]
	bl sub_8055CA8
	bl sub_8056564
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080551B8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080551C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080551C4 @ =Task_2A4_80551C8
	str r0, [r1, #8]
_080551B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080551C0: .4byte gCurTask
_080551C4: .4byte Task_2A4_80551C8

	thumb_func_start Task_2A4_80551C8
Task_2A4_80551C8: @ 0x080551C8
	push {r4, lr}
	ldr r0, _080551E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080551EC @ =0x030002A0
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x84
	bls _080551F0
	subs r0, #8
	strb r0, [r1]
	b _080551F8
	.align 2, 0
_080551E8: .4byte gCurTask
_080551EC: .4byte 0x030002A0
_080551F0:
	movs r0, #0x84
	strb r0, [r1]
	bl sub_80565BC
_080551F8:
	bl sub_8055CA8
	bl sub_8056564
	bl sub_8055D44
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _0805522C
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2     @ SE_GOAL_RING_RESULT
	bl m4aSongNumStart
	ldr r0, _08055234 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08055238 @ =Task_2A4_805523C
	str r0, [r1, #8]
_0805522C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055234: .4byte gCurTask
_08055238: .4byte Task_2A4_805523C

	thumb_func_start Task_2A4_805523C
Task_2A4_805523C: @ 0x0805523C
	push {r4, r5, lr}
	ldr r4, _08055264 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	ldr r0, _08055268 @ =0x03000214
	adds r2, r3, r0
	ldrh r1, [r2, #0x12]
	movs r5, #0x12
	ldrsh r0, [r2, r5]
	cmp r0, #0x4f
	bgt _08055270
	adds r0, r1, #2
	strh r0, [r2, #0x12]
	ldr r0, _0805526C @ =0x0300023C
	adds r2, r3, r0
	ldrh r0, [r2, #0x12]
	adds r0, #2
	strh r0, [r2, #0x12]
	b _080552A0
	.align 2, 0
_08055264: .4byte gCurTask
_08055268: .4byte 0x03000214
_0805526C: .4byte 0x0300023C
_08055270:
	ldrb r0, [r2, #0x1c]
	cmp r0, #0x10
	bls _0805528C
	movs r1, #0x50
	strh r1, [r2, #0x12]
	subs r0, #2
	strb r0, [r2, #0x1c]
	ldr r5, _08055288 @ =0x0300023C
	adds r2, r3, r5
	strh r1, [r2, #0x12]
	b _080552A0
	.align 2, 0
_08055288: .4byte 0x0300023C
_0805528C:
	movs r1, #0x50
	strh r1, [r2, #0x12]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	ldr r0, _080552C0 @ =0x0300023C
	adds r2, r3, r0
	strh r1, [r2, #0x12]
	ldr r1, [r4]
	ldr r0, _080552C4 @ =Task_2A4_80564D0
	str r0, [r1, #8]
_080552A0:
	bl sub_8055CA8
	bl sub_8056564
	bl sub_8055D44
	bl sub_80565BC
	bl sub_80565E4
	bl sub_8056620
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080552C0: .4byte 0x0300023C
_080552C4: .4byte Task_2A4_80564D0

	thumb_func_start Task_2A4_80552C8
Task_2A4_80552C8: @ 0x080552C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08055358 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0805535C @ =0x0300028D
	adds r3, r4, r1
	ldrb r0, [r3]
	adds r0, #4
	movs r6, #0
	strb r0, [r3]
	ldr r0, _08055360 @ =0x0300028F
	adds r2, r4, r0
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	ldr r7, _08055364 @ =gWinRegs
	subs r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #8
	mov r8, r1
	ldr r1, _08055368 @ =0x0300028E
	adds r0, r4, r1
	ldrb r0, [r0]
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #2]
	ldrb r1, [r3]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r7, #6]
	ldrb r0, [r3]
	ldrb r2, [r2]
	cmp r0, r2
	blo _0805534E
	movs r0, #0x10
	strh r0, [r7, #8]
	movs r0, #0x1f
	strh r0, [r7, #0xa]
	ldr r0, _0805536C @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	ldr r1, _08055370 @ =0x03000290
	adds r0, r4, r1
	strh r6, [r0]
	strh r6, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r6, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xbf
	strh r0, [r5, #8]
	strh r6, [r5, #0xa]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _08055374 @ =Task_2A4_8056538
	str r0, [r1, #8]
_0805534E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055358: .4byte gCurTask
_0805535C: .4byte 0x0300028D
_08055360: .4byte 0x0300028F
_08055364: .4byte gWinRegs
_08055368: .4byte 0x0300028E
_0805536C: .4byte gBldRegs
_08055370: .4byte 0x03000290
_08055374: .4byte Task_2A4_8056538

	thumb_func_start Task_2A4_8055378
Task_2A4_8055378: @ 0x08055378
	push {r4, lr}
	ldr r0, _08055394 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08055398 @ =Task_2A4_8056538
	str r0, [r1, #8]
	ldr r4, _0805539C @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #6
	bne _080553A0
	movs r0, #1
	bl sub_809BFE8
	b _080555F0
	.align 2, 0
_08055394: .4byte gCurTask
_08055398: .4byte Task_2A4_8056538
_0805539C: .4byte gStageData
_080553A0:
	cmp r0, #3
	bne _080553F0
	ldrh r0, [r4, #0xe]
	bl sub_8000538
	bl sub_8003D2C
	ldr r1, _080553D8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080553DC @ =gBackgroundsCopyQueueCursor
	ldr r0, _080553E0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080553E4 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080553E8 @ =gVramGraphicsCopyCursor
	ldr r0, _080553EC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #2
	bl CreateMainMenu
	b _080555F0
	.align 2, 0
_080553D8: .4byte 0x0000FFFF
_080553DC: .4byte gBackgroundsCopyQueueCursor
_080553E0: .4byte gBackgroundsCopyQueueIndex
_080553E4: .4byte gBgSpritesCount
_080553E8: .4byte gVramGraphicsCopyCursor
_080553EC: .4byte gVramGraphicsCopyQueueIndex
_080553F0:
	cmp r0, #4
	bne _08055440
	ldrh r0, [r4, #0xe]
	bl sub_8000538
	bl sub_8003D2C
	ldr r1, _08055428 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0805542C @ =gBackgroundsCopyQueueCursor
	ldr r0, _08055430 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055434 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055438 @ =gVramGraphicsCopyCursor
	ldr r0, _0805543C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #3
	bl CreateMainMenu
	b _080555F0
	.align 2, 0
_08055428: .4byte 0x0000FFFF
_0805542C: .4byte gBackgroundsCopyQueueCursor
_08055430: .4byte gBackgroundsCopyQueueIndex
_08055434: .4byte gBgSpritesCount
_08055438: .4byte gVramGraphicsCopyCursor
_0805543C: .4byte gVramGraphicsCopyQueueIndex
_08055440:
	ldrh r0, [r4, #0xe]
	bl sub_8000414
	ldrh r2, [r4, #0xe]
	cmp r2, #0x48
	bne _0805548C
	ldr r1, _08055474 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055478 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805547C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055480 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055484 @ =gVramGraphicsCopyCursor
	ldr r0, _08055488 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_80A872C
	b _080555F0
	.align 2, 0
_08055474: .4byte 0x0000FFFF
_08055478: .4byte gBackgroundsCopyQueueCursor
_0805547C: .4byte gBackgroundsCopyQueueIndex
_08055480: .4byte gBgSpritesCount
_08055484: .4byte gVramGraphicsCopyCursor
_08055488: .4byte gVramGraphicsCopyQueueIndex
_0805548C:
	cmp r2, #0x47
	bne _0805555C
	ldr r0, _080554F8 @ =gPlayers
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r4, #0
	cmp r0, #0
	bne _080554C0
	ldr r1, _080554FC @ =gLoadedSaveGame
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	bne _080554C0
	ldrb r0, [r1, #0x10]
	cmp r0, #0x1f
	bne _080554C0
	ldrh r1, [r1, #0x34]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_080554C0:
	cmp r4, #0
	beq _0805551C
	bl sub_8003D2C
	ldr r1, _08055500 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055504 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08055508 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805550C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055510 @ =gVramGraphicsCopyCursor
	ldr r0, _08055514 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08055518 @ =gStageData
	adds r0, #0xba
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x48  @ NONAGGRESSION
	bl WarpToMap
	b _080555F0
	.align 2, 0
_080554F8: .4byte gPlayers
_080554FC: .4byte gLoadedSaveGame
_08055500: .4byte 0x0000FFFF
_08055504: .4byte gBackgroundsCopyQueueCursor
_08055508: .4byte gBackgroundsCopyQueueIndex
_0805550C: .4byte gBgSpritesCount
_08055510: .4byte gVramGraphicsCopyCursor
_08055514: .4byte gVramGraphicsCopyQueueIndex
_08055518: .4byte gStageData
_0805551C:
	bl sub_8003D2C
	ldr r1, _08055544 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055548 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805554C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08055550 @ =gBgSpritesCount
	strb r4, [r0]
	ldr r1, _08055554 @ =gVramGraphicsCopyCursor
	ldr r0, _08055558 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_80A5954
	b _080555F0
	.align 2, 0
_08055544: .4byte 0x0000FFFF
_08055548: .4byte gBackgroundsCopyQueueCursor
_0805554C: .4byte gBackgroundsCopyQueueIndex
_08055550: .4byte gBgSpritesCount
_08055554: .4byte gVramGraphicsCopyCursor
_08055558: .4byte gVramGraphicsCopyQueueIndex
_0805555C:
	ldr r0, _080555A8 @ =gPlayers
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080555B4
	cmp r2, #0xf
	bne _0805557A
	ldr r0, _080555AC @ =gLoadedSaveGame
	ldrb r1, [r0, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805559A
_0805557A:
	cmp r2, #0x23
	bne _0805558A
	ldr r0, _080555AC @ =gLoadedSaveGame
	ldrb r1, [r0, #0x10]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805559A
_0805558A:
	cmp r2, #0x37
	bne _080555B4
	ldr r0, _080555AC @ =gLoadedSaveGame
	ldrb r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080555B4
_0805559A:
	bl sub_8055F28
	ldr r0, _080555B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080555F0
	.align 2, 0
_080555A8: .4byte gPlayers
_080555AC: .4byte gLoadedSaveGame
_080555B0: .4byte gCurTask
_080555B4:
	bl sub_8003D2C
	ldr r1, _080555F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080555FC @ =gBackgroundsCopyQueueCursor
	ldr r0, _08055600 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055604 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055608 @ =gVramGraphicsCopyCursor
	ldr r0, _0805560C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08055610 @ =gStageData
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrb r1, [r2, #0xa]
	subs r1, #2
	bl WarpToMap
_080555F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080555F8: .4byte 0x0000FFFF
_080555FC: .4byte gBackgroundsCopyQueueCursor
_08055600: .4byte gBackgroundsCopyQueueIndex
_08055604: .4byte gBgSpritesCount
_08055608: .4byte gVramGraphicsCopyCursor
_0805560C: .4byte gVramGraphicsCopyQueueIndex
_08055610: .4byte gStageData

	thumb_func_start sub_8055614
sub_8055614: @ 0x08055614
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r1, _08055800 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r4, _08055804 @ =gPlayers
	adds r1, r1, r4
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #8]
	ldr r3, _08055808 @ =gUnknown_080D1CA8
	adds r0, r2, r3
	ldrb r0, [r0]
	ldr r5, [sp, #8]
	adds r1, r5, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
	ldr r0, _08055800 @ =gStageData
	adds r0, #0xae
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	ldr r6, _08055800 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #5
	bne _08055696
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	movs r5, #0xbd
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #8]
_08055696:
	ldr r0, _0805580C @ =0x0000029E
	add r0, sl
	movs r6, #0
	mov r8, r6
	strb r1, [r0]
	adds r0, r2, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r0, #8
	movs r5, #0xa6
	lsls r5, r5, #2
	add r5, sl
	strh r0, [r5]
	ldr r6, _08055810 @ =0x0000029A
	add r6, sl
	ldr r0, _08055814 @ =0x0000FFF8
	strh r0, [r6]
	movs r0, #0xa7
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x10]
	movs r0, #8
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0xe6
	strb r0, [r1]
	mov r7, sl
	adds r7, #0xc
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r2, _08055818 @ =gUnknown_080D1CB2
	adds r0, r4, r2
	ldrh r0, [r0]
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #0xc]
	ldr r1, _0805581C @ =gUnknown_080D1CAE
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r2, _08055820 @ =gUnknown_080D1CB0
	adds r4, r4, r2
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	mov r4, r8
	str r4, [r7, #8]
	strh r4, [r7, #0xe]
	ldr r0, _08055824 @ =0x00000292
	add r0, sl
	mov sb, r0
	ldrh r0, [r5]
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	movs r5, #0xa5
	lsls r5, r5, #2
	add r5, sl
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	mov r2, r8
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r4, #0
	strb r4, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	ldr r2, _08055828 @ =0x00000596
	strh r2, [r7, #0xc]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	mov r4, r8
	str r4, [r7, #8]
	strh r4, [r7, #0xe]
	ldrh r0, [r6]
	mov r6, sb
	ldrh r6, [r6]
	adds r0, r0, r6
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	mov r0, r8
	strh r0, [r7, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r1, #0
	adds r0, r1, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	ldr r4, _08055800 @ =gStageData
	ldrb r0, [r4, #9]
	cmp r0, #8
	bne _08055786
	movs r0, #5
	str r0, [sp, #8]
_08055786:
	mov r7, sl
	adds r7, #0x5c
	ldr r1, [sp, #8]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r2, _08055818 @ =gUnknown_080D1CB2
	adds r0, r4, r2
	ldrh r0, [r0]
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #0x5c]
	ldr r1, _0805581C @ =gUnknown_080D1CAE
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r2, _08055820 @ =gUnknown_080D1CB0
	adds r4, r4, r2
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	mov r4, r8
	str r4, [r7, #8]
	strh r4, [r7, #0xe]
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	mov r3, r8
	strh r3, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	orrs r0, r6
	strb r0, [r7, #0x1b]
	movs r4, #0x10
	strb r4, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0xe
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08055828 @ =0x00000596
	strh r0, [r7, #0xc]
	ldr r1, _08055800 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #7
	bne _0805582C
	movs r0, #9
	b _08055866
	.align 2, 0
_08055800: .4byte gStageData
_08055804: .4byte gPlayers
_08055808: .4byte gUnknown_080D1CA8
_0805580C: .4byte 0x0000029E
_08055810: .4byte 0x0000029A
_08055814: .4byte 0x0000FFF8
_08055818: .4byte gUnknown_080D1CB2
_0805581C: .4byte gUnknown_080D1CAE
_08055820: .4byte gUnknown_080D1CB0
_08055824: .4byte 0x00000292
_08055828: .4byte 0x00000596
_0805582C:
	cmp r0, #8
	bne _08055840
	movs r0, #0x19
	strb r0, [r7, #0x1a]
	ldr r1, _0805583C @ =0x0000029F
	add r1, sl
	movs r0, #0x39
	b _0805586E
	.align 2, 0
_0805583C: .4byte 0x0000029F
_08055840:
	ldr r2, _0805585C @ =gStageData
	ldrb r1, [r2, #0xa]
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08055864
	adds r0, r1, #3
	strb r0, [r7, #0x1a]
	ldr r1, _08055860 @ =0x0000029F
	add r1, sl
	movs r0, #0x32
	b _0805586E
	.align 2, 0
_0805585C: .4byte gStageData
_08055860: .4byte 0x0000029F
_08055864:
	movs r0, #0xa
_08055866:
	strb r0, [r7, #0x1a]
	ldr r1, _08055B2C @ =0x0000029F
	add r1, sl
	movs r0, #0x3a
_0805586E:
	strb r0, [r1]
	movs r6, #0
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldr r4, _08055B30 @ =0x00000296
	add r4, sl
	ldrh r0, [r4]
	strh r0, [r7, #0x10]
	movs r5, #0x1c
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	mov r7, sl
	adds r7, #0xac
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7]
	ldr r3, _08055B34 @ =0x00000596
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #0xc]
	movs r0, #0x17
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldr r1, _08055B2C @ =0x0000029F
	add r1, sl
	ldrh r0, [r4]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	mov r4, sb
	strh r4, [r7, #0xc]
	movs r0, #0xb
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r0, #0x34
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0x35
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	ldr r0, [sp, #0xc]
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, [sp, #0xc]
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	mov r2, sp
	ldr r3, _08055B38 @ =gUnknown_080CE4B2
	lsls r5, r5, #1
	adds r1, r3, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strb r1, [r2]
	adds r5, r5, r3
	ldrb r1, [r5]
	strb r1, [r2, #1]
	ldr r3, _08055B3C @ =gUnknown_080CE438
	lsrs r4, r4, #0xf
	adds r1, r3, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2, #2]
	adds r4, r4, r3
	ldrb r1, [r4]
	strb r1, [r2, #3]
	mov r1, sp
	strb r0, [r1, #4]
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r4, sb
	strh r4, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r4, #0xa8
	lsls r4, r4, #2
	add r4, sl
	ldrb r0, [r4]
	adds r0, #0x54
	strh r0, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0x92
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x44
	strh r0, [r7, #0x10]
	mov r5, r8
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	movs r7, #0xa6
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	movs r5, #0xc
	strb r5, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x3a
	strh r0, [r7, #0x10]
	mov r1, r8
	strh r1, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xba
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r0, sb
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x2a
	strh r0, [r7, #0x10]
	mov r2, r8
	strh r2, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	movs r7, #0xce
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r2, sb
	strh r2, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x1a
	strh r0, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xe2
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	strb r5, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x10
	strh r0, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xf6
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #4]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	strh r0, [r7, #0x10]
	mov r4, r8
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	str r0, [r7, #0x20]
	ldr r0, _08055B40 @ =gStageData
	ldrb r0, [r0, #0xe]
	ldr r2, _08055B44 @ =gMedalTimes
	lsls r1, r0, #2
	adds r0, r1, r2
	ldr r3, [sp, #0xc]
	ldrh r0, [r0]
	cmp r3, r0
	bhi _08055B48
	movs r1, #0
	b _08055B58
	.align 2, 0
_08055B2C: .4byte 0x0000029F
_08055B30: .4byte 0x00000296
_08055B34: .4byte 0x00000596
_08055B38: .4byte gUnknown_080CE4B2
_08055B3C: .4byte gUnknown_080CE438
_08055B40: .4byte gStageData
_08055B44: .4byte gMedalTimes
_08055B48:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r1, #2
	ldr r4, [sp, #0xc]
	ldrh r0, [r0]
	cmp r4, r0
	bhi _08055B58
	movs r1, #1
_08055B58:
	ldr r0, _08055C10 @ =gStageData
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055B64
	movs r1, #2
_08055B64:
	movs r7, #0x85
	lsls r7, r7, #2
	add r7, sl
	ldr r5, _08055C14 @ =gUnknown_080D1CD2
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	mov r8, r5
	mov r0, r8
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	mov sb, r1
	mov r2, sb
	strh r2, [r7, #0x10]
	ldr r5, _08055C18 @ =0x0000FFF0
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x40
	strb r0, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	movs r7, #0x8f
	lsls r7, r7, #2
	add r7, sl
	movs r0, #6
	bl VramMalloc
	str r0, [r7]
	movs r0, #0xed
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sb
	strh r1, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r4, [r7, #0x20]
	ldr r3, _08055C10 @ =gStageData
	ldrb r0, [r3, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08055C94
	ldrb r3, [r3, #9]
	ldr r4, _08055C10 @ =gStageData
	ldrb r1, [r4, #0xa]
	cmp r1, #7
	bne _08055C1C
	movs r1, #3
	b _08055C22
	.align 2, 0
_08055C10: .4byte gStageData
_08055C14: .4byte gUnknown_080D1CD2
_08055C18: .4byte 0x0000FFF0
_08055C1C:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08055C22:
	movs r4, #0
	ldr r5, _08055C3C @ =gLoadedSaveGame
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r2, r0, #2
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r1, r0, #4
	adds r0, r2, r1
	adds r0, r0, r5
	movs r3, #0x97
	lsls r3, r3, #1
	b _08055C52
	.align 2, 0
_08055C3C: .4byte gLoadedSaveGame
_08055C40:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bhi _08055C5C
	lsls r0, r4, #2
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, r0, r5
_08055C52:
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r6, [sp, #0xc]
	cmp r0, r6
	bls _08055C40
_08055C5C:
	movs r7, #0x99
	lsls r7, r7, #2
	add r7, sl
	movs r0, #8
	bl VramMalloc
	str r0, [r7]
	movs r2, #0
	movs r1, #0
	ldr r0, _08055CA4 @ =0x00000597
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0x40
	strh r0, [r7, #0x14]
	str r1, [r7, #8]
	strh r1, [r7, #0xe]
	movs r0, #0x68
	strh r0, [r7, #0x10]
	movs r0, #0x5a
	strh r0, [r7, #0x12]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
_08055C94:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055CA4: .4byte 0x00000597

	thumb_func_start sub_8055CA8
sub_8055CA8: @ 0x08055CA8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08055D24 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08055D28 @ =0x0300000C
	adds r7, r4, r0
	ldr r1, _08055D2C @ =0x03000292
	adds r6, r4, r1
	adds r1, #6
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, _08055D30 @ =0x03000294
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, _08055D34 @ =0x03000034
	adds r7, r4, r1
	ldr r1, _08055D38 @ =0x0300029A
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08055D3C @ =0x0300005C
	adds r7, r4, r0
	ldr r1, _08055D40 @ =0x0300029C
	adds r4, r4, r1
	ldrh r0, [r4]
	ldrh r6, [r6]
	adds r0, r0, r6
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055D24: .4byte gCurTask
_08055D28: .4byte 0x0300000C
_08055D2C: .4byte 0x03000292
_08055D30: .4byte 0x03000294
_08055D34: .4byte 0x03000034
_08055D38: .4byte 0x0300029A
_08055D3C: .4byte 0x0300005C
_08055D40: .4byte 0x0300029C

	thumb_func_start sub_8055D44
sub_8055D44: @ 0x08055D44
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08055DA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, _08055DA4 @ =gUnknown_080D1D50
	mov r0, sp
	movs r2, #7
	bl memcpy
	movs r0, #0
_08055D60:
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #0xfc
	adds r4, r6, r4
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r1, [r0]
	mov r2, sp
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r0, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #6
	ble _08055D60
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055DA0: .4byte gCurTask
_08055DA4: .4byte gUnknown_080D1D50

.if 01
@ Matching in code_1_3.c
	thumb_func_start Task_10_8055DA8
Task_10_8055DA8: @ 0x08055DA8
	push {r4, lr}
	ldr r0, _08055DD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08055DD4
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08055E24
	movs r0, #1
	strb r0, [r4, #0xe]
	b _08055E24
	.align 2, 0
_08055DD0: .4byte gCurTask
_08055DD4:
	bl sub_8001E58
	bl sub_8003D2C
	ldr r1, _08055E2C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055E30 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08055E34 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055E38 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055E3C @ =gVramGraphicsCopyCursor
	ldr r0, _08055E40 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08055E44 @ =gStageData
	movs r0, #0
	strb r0, [r2, #0xd]
	ldr r3, _08055E48 @ =gPlayers
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r2, #9]
	ldr r2, _08055E4C @ =gLoadedSaveGame
	adds r2, #0x32
	ldrb r2, [r2]
	bl sub_80B1AF4
_08055E24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055E2C: .4byte 0x0000FFFF
_08055E30: .4byte gBackgroundsCopyQueueCursor
_08055E34: .4byte gBackgroundsCopyQueueIndex
_08055E38: .4byte gBgSpritesCount
_08055E3C: .4byte gVramGraphicsCopyCursor
_08055E40: .4byte gVramGraphicsCopyQueueIndex
_08055E44: .4byte gStageData
_08055E48: .4byte gPlayers
_08055E4C: .4byte gLoadedSaveGame
.endif
