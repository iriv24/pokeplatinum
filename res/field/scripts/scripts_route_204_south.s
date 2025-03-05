#include "macros/scrcmd.inc"
#include "res/text/bank/route_204_south.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0038
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
    ShowArrowSign 1
    End

_0038:
    ShowLandmarkSign 2
    End

    .byte 0
