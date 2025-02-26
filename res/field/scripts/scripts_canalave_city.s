#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/canalave_city.h"

    .data

    ScriptEntry _0066
    ScriptEntry _01F9
    ScriptEntry _0364
    ScriptEntry _0377
    ScriptEntry _03C8
    ScriptEntry _04D4
    ScriptEntry _04E7
    ScriptEntry _0520
    ScriptEntry _054D
    ScriptEntry _05A9
    ScriptEntry _05CE
    ScriptEntry _05F3
    ScriptEntry _0624
    ScriptEntry _0649
    ScriptEntry _0660
    ScriptEntry _0675
    ScriptEntry _068C
    ScriptEntry _06A3
    ScriptEntry _06BA
    ScriptEntry _0708
    ScriptEntry _06F7
    ScriptEntry _0900
    ScriptEntry _0959
    ScriptEntry _01D2
    ScriptEntry _09BC
    ScriptEntryEnd

_0066:
    SetFlag 0x1BD
    CallIfEq 0x40F8, 2, _00F8
    CallIfEq 0x40F8, 3, _0100
    Call _0168
    CallIfEq 0x4000, 0, _01E7
    CallIfEq 0x4000, 1, _0116
    CallIfEq 0x4078, 1, _0132
    CallIfEq 0x4078, 2, _0132
    CallIfEq 0x4078, 4, _011C
    CallIfEq 0x4078, 5, _0158
    GetPlayerGender 0x4000
    GoToIfEq 0x4000, GENDER_MALE, _0148
    GoToIfEq 0x4000, GENDER_FEMALE, _0150
    End

_00F8:
    SetVar 0x40F8, 0
    Return

_0100:
    SetObjectEventPos 16, 55, 0x2CC
    ScrCmd_189 16, 3
    ScrCmd_188 16, 17
    Return

_0116:
    ClearFlag 0x240
    Return

_011C:
    SetObjectEventPos 11, 37, 0x2D1
    ScrCmd_189 11, 1
    ScrCmd_188 11, 15
    Return

_0132:
    SetObjectEventPos 11, 39, 0x2DD
    ScrCmd_189 11, 0
    ScrCmd_188 11, 14
    Return

_0148:
    SetVar 0x4020, 97
    End

_0150:
    SetVar 0x4020, 0
    End

_0158:
    SetFlag 0x1B3
    SetFlag 0x1B5
    SetVar 0x4078, 6
    Return

_0168:
    GoToIfSet 0x158, _01CA
    GoToIfUnset 0x964, _01CA
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _01CA
    CheckItem ITEM_MEMBER_CARD, 1, 0x4000
    GoToIfEq 0x4000, FALSE, _01CA
    CheckDistributionEvent DISTRIBUTION_EVENT_DARKRAI, 0x4000
    GoToIfEq 0x4000, FALSE, _01CA
    GoToIfUnset 0x12C, _01CA
    SetVar 0x4000, 1
    Return

_01CA:
    SetVar 0x4000, 0
    Return

_01D2:
    Call _0168
    CallIfEq 0x4000, 0, _01E7
    End

_01E7:
    ScrCmd_18B 0, 58, 0x2C9
    SetWarpEventPos 5, 59, 0x2C8
    Return

_01F9:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2D3, _0244
    GoToIfEq 0x8005, 0x2D4, _0252
    GoToIfEq 0x8005, 0x2D5, _0260
    GoToIfEq 0x8005, 0x2D6, _026E
    GoToIfEq 0x8005, 0x2D7, _027C
    End

_0244:
    SetObjectEventPos 11, 38, 0x2D3
    GoTo _028A

_0252:
    SetObjectEventPos 11, 38, 0x2D4
    GoTo _028A

_0260:
    SetObjectEventPos 11, 38, 0x2D5
    GoTo _028A

_026E:
    SetObjectEventPos 11, 38, 0x2D6
    GoTo _028A

_027C:
    SetObjectEventPos 11, 38, 0x2D7
    GoTo _028A

_028A:
    ScrCmd_188 11, 17
    ClearFlag 0x1B2
    AddObject 11
    ApplyMovement 11, _0340
    WaitMovement
    CallCommonScript 0x7FA
    ApplyMovement 11, _0354
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    GetPlayerStarterSpecies 0x800C
    GoToIfEq 0x800C, SPECIES_TURTWIG, _02EB
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, _02F7
    GoTo _02DF

_02DF:
    StartTrainerBattle TRAINER_RIVAL_CANALAVE_CITY_PIPLUP
    GoTo _0303

_02EB:
    StartTrainerBattle TRAINER_RIVAL_CANALAVE_CITY_TURTWIG
    GoTo _0303

_02F7:
    StartTrainerBattle TRAINER_RIVAL_CANALAVE_CITY_CHIMCHAR
    GoTo _0303

_0303:
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0334
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 11, _035C
    WaitMovement
    RemoveObject 11
    SetVar 0x4078, 1
    ReleaseAll
    End

_0334:
    SetFlag 0x1B2
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0340:
    MoveAction_019 4
    MoveAction_063
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_0354:
    MoveAction_019 4
    EndMovement

    .balign 4, 0
_035C:
    MoveAction_018 9
    EndMovement

_0364:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0377:
    LockAll
    BufferRivalName 0
    BufferPlayerName 1
    Message 2
    CloseMessage
    ApplyMovement 11, _03AC
    ApplyMovement LOCALID_PLAYER, _03BC
    WaitMovement
    RemoveObject 11
    SetVar 0x4078, 3
    SetVar 0x40B2, 1
    ReleaseAll
    End

    .balign 4, 0
_03AC:
    MoveAction_017
    MoveAction_018 5
    MoveAction_016 10
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_063
    MoveAction_034
    EndMovement

_03C8:
    LockAll
    ApplyMovement 13, _0498
    WaitMovement
    Message 5
    CloseMessage
    ClearFlag 0x1B4
    AddObject 14
    ScrCmd_062 14
    ApplyMovement 14, _04AC
    WaitMovement
    Message 6
    CloseMessage
    ApplyMovement 14, _04B8
    WaitMovement
    RemoveObject 14
    ApplyMovement 11, _04C0
    WaitMovement
    BufferRivalName 0
    Message 7
    CloseMessage
    ApplyMovement 11, _04C8
    WaitMovement
    RemoveObject 11
    ApplyMovement 13, _04A0
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 8
    CloseMessage
    ApplyMovement 12, _0490
    WaitMovement
    WaitTime 15, 0x800C
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _045E
    GoTo _046A

_045E:
    BufferPlayerName 0
    Message 9
    GoTo _0473

_046A:
    Message 10
    GoTo _0473

_0473:
    WaitABXPadPress
    CloseMessage
    SetVar 0x4078, 5
    ClearFlag 0x194
    ClearFlag 0x175
    ClearFlag 0x293
    ReleaseAll
    End

    .balign 4, 0
_0490:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_033
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_063 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_018 5
    MoveAction_016 2
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_017 6
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_032
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_017 3
    MoveAction_019 9
    EndMovement

_04D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _0506
    GoTo _050F

_0506:
    Message 11
    GoTo _0518

_050F:
    Message 12
    GoTo _0518

_0518:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0520:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _053C
    Message 14
    GoTo _0545

_053C:
    Message 15
    GoTo _0545

_0545:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_054D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _0586
    CheckBadgeAcquired BADGE_ID_MINE, 0x800C
    GoToIfEq 0x800C, 1, _0591
    GoTo _057B
    End

_057B:
    Message 16
    GoTo _0545
    End

_0586:
    Message 17
    GoTo _0545
    End

_0591:
    GoToIfGe 0x4078, 5, _057B
    Message 18
    GoTo _0545
    End

_05A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _05C5
    Message 19
    GoTo _0545

_05C5:
    Message 20
    GoTo _0545

_05CE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _05EA
    Message 21
    GoTo _0545

_05EA:
    Message 22
    GoTo _0545

_05F3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _0615
    PlayCry SPECIES_PSYDUCK
    Message 23
    GoTo _0545

_0615:
    PlayCry SPECIES_PSYDUCK
    Message 24
    GoTo _0545

_0624:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _0640
    Message 25
    GoTo _0545

_0640:
    Message 26
    GoTo _0545

_0649:
    ScrCmd_036 36, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0660:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 37, 0x800C
    CallCommonScript 0x7D0
    End

_0675:
    ScrCmd_036 38, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_068C:
    ScrCmd_036 39, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_06A3:
    ScrCmd_036 40, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_06BA:
    Call _0168
    GoToIfEq 0x4000, 0, _06E2
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 42, 0x800C
    CallCommonScript 0x7D0
    End

_06E2:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 41, 0x800C
    CallCommonScript 0x7D0
    End

_06F7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 43
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0708:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir 0x8004
    FacePlayer
    GoToIfEq 0x4106, 2, _0900
    Message 27
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 213, 0
    CallIfSet 0x133, _0790
    CallIfSet 0x13C, _078A
    ScrCmd_042 218, 4
    ScrCmd_043
    GoToIfEq 0x800C, 0, _0796
    GoToIfEq 0x800C, 1, _07D1
    GoToIfEq 0x800C, 2, _080C
    GoToIfEq 0x800C, 3, _0847
    GoTo _0847
    End

_078A:
    ScrCmd_042 215, 2
    Return

_0790:
    ScrCmd_042 214, 1
    Return

_0796:
    Call _0852
    CallIfEq 0x8004, 1, _0871
    CallIfEq 0x8004, 3, _088B
    CallIfEq 0x8004, 0, _08A5
    ScrCmd_23D 3, 3, 0x120, 100, 0x1F6
    ReleaseAll
    End

_07D1:
    Call _0852
    CallIfEq 0x8004, 1, _0871
    CallIfEq 0x8004, 3, _088B
    CallIfEq 0x8004, 0, _08A5
    ScrCmd_23D 3, 2, 0x104, 39, 0x115
    ReleaseAll
    End

_080C:
    Call _0852
    CallIfEq 0x8004, 1, _0871
    CallIfEq 0x8004, 3, _088B
    CallIfEq 0x8004, 0, _08A5
    ScrCmd_23D 3, 3, 0x140, 152, 0x115
    ReleaseAll
    End

_0847:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0852:
    Message 28
    CloseMessage
    ApplyMovement 16, _08C0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 16, _08CC
    WaitMovement
    Return

_0871:
    ApplyMovement LOCALID_PLAYER, _08D4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _08CC
    WaitMovement
    Return

_088B:
    ApplyMovement LOCALID_PLAYER, _08E4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _08CC
    WaitMovement
    Return

_08A5:
    ApplyMovement LOCALID_PLAYER, _08F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _08CC
    WaitMovement
    Return

    .balign 4, 0
_08C0:
    MoveAction_003
    MoveAction_064
    EndMovement

    .balign 4, 0
_08CC:
    MoveAction_069
    EndMovement

    .balign 4, 0
_08D4:
    MoveAction_013
    MoveAction_003
    MoveAction_064
    EndMovement

    .balign 4, 0
_08E4:
    MoveAction_015
    MoveAction_064
    EndMovement

    .balign 4, 0
_08F0:
    MoveAction_012
    MoveAction_003
    MoveAction_064
    EndMovement

_0900:
    CheckItem ITEM_LUNAR_WING, 1, 0x800C
    GoToIfEq 0x800C, 1, _094E
    Message 31
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0938
    GoToIfEq 0x800C, MENU_NO, _0943
    End

_0938:
    Message 32
    CloseMessage
    GoTo _07D1

_0943:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_094E:
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0959:
    LockAll
    ApplyMovement 16, _099C
    WaitMovement
    Message 35
    CloseMessage
    ApplyMovement 16, _09AC
    WaitMovement
    RemoveObject 16
    SetObjectEventPos 16, 45, 0x2EE
    ScrCmd_189 16, 2
    ScrCmd_188 16, 16
    AddObject 16
    SetVar 0x40F8, 4
    ReleaseAll
    End

    .balign 4, 0
_099C:
    MoveAction_075
    MoveAction_015 3
    MoveAction_012
    EndMovement

    .balign 4, 0
_09AC:
    MoveAction_013
    MoveAction_014 3
    MoveAction_013 8
    EndMovement

_09BC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_HM04, 1, 0x800C
    GoToIfEq 0x800C, 1, _09FA
    ScrCmd_09A 0x800C, 70
    GoToIfNe 0x800C, 6, _09FA
    BufferRivalName 0
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09FA:
    BufferRivalName 0
    Message 4
    CloseMessage
    ApplyMovement 18, _0A38
    WaitMovement
    ScrCmd_168 1, 22, 5, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 18, _0A40
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 18
    ReleaseAll
    End

    .balign 4, 0
_0A38:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0A40:
    MoveAction_012
    MoveAction_069
    EndMovement
