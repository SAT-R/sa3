.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    ldr r0, _0802F3B8 @ =gCurTask
    ldr r0, [r0]
    ldrh r1, [r0, #6]
    movs r0, #0xc0
    lsls r0, r0, #0x12
    adds r7, r1, r0     @ r7 = platform
    str r7, [sp, #4]    @ sp04 = r7 = shared
    adds r0, #0x2c
    adds r0, r0, r1
    mov sl, r0          @ sl = s
    ldr r0, [r7, #0x10]
    mov sb, r0          @ sb = qWorldY
    ldr r0, _0802F3BC @ =0x03000054
    adds r1, r1, r0     @ r1 = &platform->kindA
    ldrb r2, [r1]       @ r2 = platform->kindA
    movs r0, #0x2a
    muls r0, r2, r0
    add r0, sb
    str r0, [r7, #0x10]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldr r0, [r7, #0x10]
    mov r1, sb
    subs r1, r1, r0
    mov sb, r1
    movs r1, #0
_0802F3AA:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F3C4
    ldr r0, _0802F3C0 @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F3CE
    .align 2, 0
_0802F3B8: .4byte gCurTask
_0802F3BC: .4byte 0x03000054
_0802F3C0: .4byte gStageData
_0802F3C4:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F3CE:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    ldr r1, _0802F460 @ =gPlayers
    adds r4, r0, r1     @ r4 = p
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r0, [r0]
    movs r1, #0x1c
    ands r1, r0
    cmp r1, #4
    beq _0802F3F4
    cmp r1, #8
    beq _0802F3F4
    cmp r1, #0x10
    beq _0802F3F4
    b _0802F5A8_continue
_0802F3F4:
    adds r0, r4, #0
    bl sub_802C0D4
    cmp r0, #0
    beq _0802F400
    b _0802F5A8_continue
_0802F400:
    ldr r0, [r4, #4]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F420
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F420
    mov r0, sb
    lsls r1, r0, #1
    ldr r0, [r4, #0x14]
    subs r0, r0, r1
    str r0, [r4, #0x14]
    adds r0, r4, #0
    bl Player_80149E4
_0802F420:
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, [r7, #0x10]
    asrs r2, r2, #8
    movs r6, #0
    str r6, [sp]
    mov r0, sl
    adds r3, r4, #0
    bl sub_8020950
    adds r5, r0, #0     @ r5 = res
    movs r3, #0x80
    lsls r3, r3, #9
    ands r0, r3
    cmp r0, #0
    beq _0802F464
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x14]
    adds r1, r1, r0
    str r1, [r4, #0x14]
    adds r0, r4, #0
    adds r0, #0x26
    strb r6, [r0]
    adds r0, r4, #0
    bl sub_801226C
    ldr r6, [sp, #4]
    adds r6, #0x55
    cmp r0, #0
    bge _0802F4FA
    b _0802F4BA
    .align 2, 0
_0802F460: .4byte gPlayers
_0802F464:
    ldr r2, [sp, #4]
    adds r2, #0x55
    ldrb r1, [r2]
    movs r0, #8
    ands r0, r1
    adds r6, r2, #0
    cmp r0, #0
    bne _0802F476
    b _0802F5A8_continue
_0802F476:
    movs r0, #0x80
    lsls r0, r0, #0xa
    ands r0, r5
    cmp r0, #0
    beq _0802F4FA
    ldr r0, [r4, #4]
    ands r0, r3
    cmp r0, #0
    beq _0802F494
    ldr r1, [r4, #0x14]
    ldr r0, _0802F490 @ =0xFFFFFC00
    b _0802F49A
    .align 2, 0
_0802F490: .4byte 0xFFFFFC00
_0802F494:
    ldr r1, [r4, #0x14]
    movs r0, #0x80
    lsls r0, r0, #3
_0802F49A:
    adds r1, r1, r0
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    adds r1, r1, r0
    str r1, [r4, #0x14]
    movs r0, #0
    strh r0, [r4, #0x1a]
    ldr r0, _0802F4CC @ =gStageData
    ldrb r0, [r0, #3]
    cmp r0, #7
    beq _0802F4FA
    adds r0, r4, #0
    bl sub_8012368
    cmp r0, #0
    bge _0802F4D0
_0802F4BA:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F4FA
    adds r0, r4, #0
    bl Player_HitWithoutRings
    b _0802F4FA
    .align 2, 0
_0802F4CC: .4byte gStageData
_0802F4D0:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F4EA
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F4EA
    cmp r0, #0xf5
    bne _0802F4FA
_0802F4EA:
    adds r0, r4, #0
    bl Player_8012FE0
    movs r0, #0x18
    strh r0, [r4, #0x30]
    adds r0, r4, #0
    bl Player_800DAF4
_0802F4FA:
    ldrb r1, [r6]       @ r1 = platform->flags_3
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    beq _0802F5A8_continue
    movs r0, #0xc0
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F5A8_continue
    lsls r1, r5, #0x10
    asrs r1, r1, #0x18
    lsls r1, r1, #8
    ldr r0, [r4, #0x10]
    adds r0, r0, r1
    str r0, [r4, #0x10]
    movs r0, #0
    strh r0, [r4, #0x18]
    movs r0, #0x80
    lsls r0, r0, #0xb
    ands r0, r5
    cmp r0, #0
    beq _0802F532
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F546
_0802F532:
    movs r0, #0x80
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F54A
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F54A
_0802F546:
    movs r0, #0
    strh r0, [r4, #0x1c]
_0802F54A:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F564
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F564
    cmp r0, #0xf5
    bne _0802F574
_0802F564:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F574
    adds r0, r4, #0
    bl Player_HitWithoutRings
_0802F574:
    adds r0, r4, #0
    bl sub_801246C
    cmp r0, #0
    bge _0802F58E
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F58E
    adds r0, r4, #0
    bl Player_HitWithoutRings
_0802F58E:
    adds r0, r4, #0
    bl sub_8012550
    cmp r0, #0
    bge _0802F5A8_continue
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F5A8_continue
    adds r0, r4, #0
    bl Player_HitWithoutRings
_0802F5A8_continue:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bgt _0802F5B8
    b _0802F3AA
_0802F5B8:
    mov r0, sl
    bl sub_802F1B8
    lsls r0, r0, #0x10
    cmp r0, #0
    beq _0802F626
    movs r1, #0
    ldr r2, _0802F5D8 @ =gPlayers
_0802F5C8:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F5E0
    ldr r0, _0802F5DC @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F5EA
    .align 2, 0
_0802F5D8: .4byte gPlayers
_0802F5DC: .4byte gStageData
_0802F5E0:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F5EA:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    adds r4, r0, r2     @ r4 = p
    ldr r1, [r4, #4]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F616
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F616
    movs r0, #0x21
    rsbs r0, r0, #0
    ands r1, r0
    movs r0, #4
    orrs r1, r0
    str r1, [r4, #4]
    movs r0, #0
    str r0, [r4, #0x6c]
_0802F616:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    ble _0802F5C8
    b _0802F67A
_0802F626:
    ldr r0, [sp, #4]
    adds r0, #0x55
    ldrb r1, [r0]
    movs r0, #0x10
    ands r0, r1
    ldr r4, [sp, #4]
    adds r4, #0x54
    cmp r0, #0
    beq _0802F664
    ldr r0, [r7, #0x10]
    asrs r0, r0, #8
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, _0802F68C @ =sub_8051F54
    str r2, [sp]
    movs r2, #1
    movs r3, #8
    bl sub_8052418
    cmp r0, #0
    bgt _0802F664
    lsls r1, r0, #8
    ldr r0, [r7, #0x10]
    subs r0, r0, r1
    str r0, [r7, #0x10]
    movs r0, #0xff
    strb r0, [r4]
    ldr r0, _0802F690 @ =gCurTask
    ldr r1, [r0]
    ldr r0, _0802F694 @ =Task_802F698
    str r0, [r1, #8]
_0802F664:
    adds r0, r7, #0
    mov r1, sl
    bl DrawPlatformShared
    ldrb r0, [r4]
    cmp r0, #0x1d
    bls _0802F67A
    ldr r0, _0802F690 @ =gCurTask
    ldr r1, [r0]
    ldr r0, _0802F694 @ =Task_802F698
    str r0, [r1, #8]
_0802F67A:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802F68C: .4byte sub_8051F54
_0802F690: .4byte gCurTask
_0802F694: .4byte Task_802F698

.syntax divided
