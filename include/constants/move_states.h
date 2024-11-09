#ifndef GUARD_MOVESTATES_H
#define GUARD_MOVESTATES_H

// NOTE(Jace): Movestates are different across games.

/* Sonic Advance 3 */
#define MOVESTATE_FACING_LEFT         0x00000001
#define MOVESTATE_2                   0x00000002
#define MOVESTATE_IN_AIR              0x00000004 // differs from SA2!
#define MOVESTATE_JUMPING             (MOVESTATE_IN_AIR | MOVESTATE_2)
#define MOVESTATE_8                   0x00000008
#define MOVESTATE_10                  0x00000010
#define MOVESTATE_COLLIDING_ENT       0x00000020 // Touching switch?
#define MOVESTATE_40                  0x00000040 // Touching wheel?
#define MOVESTATE_80                  0x00000080
#define MOVESTATE_100                 0x00000100
#define MOVESTATE_COLLIDING_ENT0      0x00000200
#define MOVESTATE_400                 0x00000400
#define MOVESTATE_800                 0x00000800
#define MOVESTATE_1000                0x00001000
#define MOVESTATE_COLLIDING_ENT00     0x00002000
#define MOVESTATE_4000                0x00004000
#define MOVESTATE_8000                0x00008000
#define MOVESTATE_GRAVITY_SWITCHED    0x00010000
#define MOVESTATE_COLLIDING_ENT000    0x00020000
#define MOVESTATE_40000               0x00040000
#define MOVESTATE_80000               0x00080000
#define MOVESTATE_100000              0x00100000
#define MOVESTATE_COLLIDING_ENT0000   0x00200000
#define MOVESTATE_400000              0x00400000
#define MOVESTATE_800000              0x00800000
#define MOVESTATE_1000000             0x01000000
#define MOVESTATE_COLLIDING_ENT00000  0x02000000
#define MOVESTATE_4000000             0x04000000
#define MOVESTATE_IGNORE_INPUT        0x08000000 // does not ignore Start-Button
#define MOVESTATE_10000000            0x10000000
#define MOVESTATE_COLLIDING_ENT000000 0x20000000
#define MOVESTATE_40000000            0x40000000
#define MOVESTATE_80000000            0x80000000

#endif // GUARD_MOVESTATES_H