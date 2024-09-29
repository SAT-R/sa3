
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08043AE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1     @ r1 = bubbles
	ldr r2, _08043AE4 @ =0x03000018
	adds r5, r0, r2     @ r5 = s
	ldr r2, _08043AE8 @ =gCamera
	ldr r0, [r2]
	ldrh r4, [r1, #0xa]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10  @ r4 = screenX
	ldr r2, [r2, #4]
	ldrh r0, [r1, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]        @ sp00 = screenY
	ldr r0, _08043AEC @ =gStageData
	ldr r1, [r0, #0x1c]
	lsls r0, r1, #3
	subs r7, r0, r1     @ r7 = timer = gStageData.timer * 7
	ldr r0, _08043AF0 @ =0x000003FF
	adds r2, r0, #0
	ands r7, r2         @ r7 = timer7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r1
	ands r6, r2         @ r6 = timer21
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1          @ r8 = r1 = i = 0
	movs r3, #0
	movs r2, #0
	ldr r0, _08043AF4 @ =gSineTable
	mov sl, r0
	ldr r1, _08043AF0 @ =0x000003FF
	mov sb, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0xc]  @ sp0C = screenX
_08043A68:
	adds r0, r7, r3
	mov r4, sb
	ands r0, r4
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #0xb
	ldr r4, [sp, #0xc]
	adds r0, r4, r0
	strh r0, [r5, #0x10]
	mov r1, r8
	adds r0, r6, r1
	mov r4, sb
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #0xe
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl DisplaySprite
	ldr r2, [sp, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [sp, #8]
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r2, #7
	bls _08043A68
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043AE0: .4byte gCurTask
_08043AE4: .4byte 0x03000018
_08043AE8: .4byte gCamera
_08043AEC: .4byte gStageData
_08043AF0: .4byte 0x000003FF
_08043AF4: .4byte gSineTable


.syntax divided
