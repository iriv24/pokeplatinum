#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_market.h"

    .data

    ScriptEntry _001A
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _0175
    ScriptEntry _0018
    ScriptEntry _01D4

_0018:
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_247 0x8000
    ScrCmd_230 0x800C, 0x8000, 24
    GoToIfEq 0x800C, 1, _0086
    BufferPartyMonSpecies 0, 0x8000
    Message 0
    ScrCmd_233 0x800C, 0x8000
    GoToIfLt 0x800C, 0x1FE, _007B
    Message 1
    ScrCmd_231 0x8000, 24
    PlaySound SEQ_FANFA1
    BufferPlayerName 1
    Message 2
    WaitSound
    BufferPartyMonSpecies 0, 0x8000
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007B:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0086:
    BufferPartyMonSpecies 0, 0x8000
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SEAL_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _00D9
    Message 7
    CallCommonScript 0x7E3
    ScrCmd_035
    Call _00E4
    ReleaseAll
    End

_00D9:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E4:
    GetDayOfWeek 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, DAY_OF_WEEK_SUNDAY, _016F
    GoToIfEq 0x8008, DAY_OF_WEEK_MONDAY, _014B
    GoToIfEq 0x8008, DAY_OF_WEEK_TUESDAY, _0151
    GoToIfEq 0x8008, DAY_OF_WEEK_WEDNESDAY, _0157
    GoToIfEq 0x8008, DAY_OF_WEEK_THURSDAY, _015D
    GoToIfEq 0x8008, DAY_OF_WEEK_FRIDAY, _0163
    GoToIfEq 0x8008, DAY_OF_WEEK_SATURDAY, _0169
    End

_014B:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_MONDAY
    Return

_0151:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_TUESDAY
    Return

_0157:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_WEDNESDAY
    Return

_015D:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_THURSDAY
    Return

_0163:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_FRIDAY
    Return

_0169:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SATURDAY
    Return

_016F:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SUNDAY
    Return

_0175:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    GetDayOfWeek 0x4000
    GoToIfEq 0x4000, DAY_OF_WEEK_SUNDAY, _01BE
    GoToIfEq 0x4000, DAY_OF_WEEK_MONDAY, _01BE
    GoToIfEq 0x4000, DAY_OF_WEEK_TUESDAY, _01BE
    GoToIfEq 0x4000, DAY_OF_WEEK_WEDNESDAY, _01BE
    GoTo _01C9

_01BE:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C9:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
