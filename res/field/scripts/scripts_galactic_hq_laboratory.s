#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_laboratory.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0034
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
