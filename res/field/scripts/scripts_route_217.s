#include "macros/scrcmd.inc"
#include "res/text/bank/route_217.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0023
    ScriptEntry _003A
    ScriptEntry _004D
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0023:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_003A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_004D:
    LockAll
    ClearFlag 0x297
    ScrCmd_064 15
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x12E, _00CA
    CallIfEq 0x8004, 0x12F, _00D6
    BufferPlayerName 0
    Message 0
    CloseMessage
    ApplyMovement 0xFF, _010C
    WaitMovement
    ApplyMovement 15, _014C
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x12E, _00E2
    CallIfEq 0x8004, 0x12F, _00F6
    RemoveObject 15
    SetVar 0x40A8, 1
    SetFlag 0x298
    ReleaseAll
    End

_00CA:
    ApplyMovement 15, _0124
    WaitMovement
    Return

_00D6:
    ApplyMovement 15, _0138
    WaitMovement
    Return

_00E2:
    ApplyMovement 0xFF, _0114
    ApplyMovement 15, _0154
    WaitMovement
    Return

_00F6:
    ApplyMovement 0xFF, _0114
    ApplyMovement 15, _0168
    WaitMovement
    Return

    .balign 4, 0
_010C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0114:
    MoveAction_063 2
    MoveAction_062
    MoveAction_032
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_012 4
    MoveAction_014 3
    MoveAction_012
    MoveAction_075
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_012 4
    MoveAction_014 2
    MoveAction_012
    MoveAction_075
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_015
    MoveAction_012 3
    MoveAction_015 2
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_014
    MoveAction_012 3
    MoveAction_015 3
    MoveAction_012 9
    EndMovement
