
.syntax unified
.text
	push {lr}
	adds r2, r0, #0
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #2
	bne _08016DE8
	ldr r3, _08016DBC @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r0, [r3, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08016DE8
	ldrb r0, [r3, #3]
	cmp r0, #7
	beq _08016DEC
	ldr r1, [r2, #0xc]
	movs r0, #6
	ands r1, r0
	cmp r1, #4
	beq _08016DD0
	cmp r1, #4
	bhi _08016DC0
	cmp r1, #2
	beq _08016DC6
	b _08016DE8
	.align 2, 0
_08016DBC: .4byte gStageData
_08016DC0:
	cmp r1, #6
	beq _08016DD8
	b _08016DE8
_08016DC6:
	ldr r1, _08016DCC @ =Player_800872C
	b _08016DDA
	.align 2, 0
_08016DCC: .4byte Player_800872C
_08016DD0:
	ldr r1, _08016DD4 @ =sub_801DFC4
	b _08016DDA
	.align 2, 0
_08016DD4: .4byte sub_801DFC4
_08016DD8:
	ldr r1, _08016DE4 @ =sub_801E65C
_08016DDA:
	adds r0, r2, #0
	bl SetPlayerCallback
	b _08016DF4
	.align 2, 0
_08016DE4: .4byte sub_801E65C
_08016DE8:
	movs r0, #0
	b _08016DF6
_08016DEC:
	ldr r1, _08016DFC @ =Player_800872C
	adds r0, r2, #0
	bl SetPlayerCallback
_08016DF4:
	movs r0, #1
_08016DF6:
	pop {r1}
	bx r1
	.align 2, 0
_08016DFC: .4byte Player_800872C

.syntax divided
