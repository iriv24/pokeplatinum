#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0020
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartCommon 1
    ReleaseAll
    End

_0020:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties 14
    ReleaseAll
    End

    .byte 0
    .byte 0
