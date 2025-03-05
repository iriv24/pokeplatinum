#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _003C
    ScriptEntryEnd

_000E:
    ShowArrowSign 1
    End

_0025:
    ShowLandmarkSign 2
    End

_003C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
