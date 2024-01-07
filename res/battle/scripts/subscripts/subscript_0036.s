    .include "macros/btlcmd.inc"

    .data

_000:
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_BIDE, _038
    // {0} unleashed energy!
    PrintMessage pl_msg_00000368_00335, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_SET, BTLVAR_MOVE_EFFECT_CHANCE, 1
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_MOVE_LOCKED
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_LAST_OF_MULTI_TURN
    CompareVarToValue OPCODE_EQU, BTLVAR_DAMAGE, 0, _031
    End 

_031:
    Call BATTLE_SUBSCRIPT_BUT_IT_FAILED
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 

_038:
    // {0} is storing energy!
    PrintMessage pl_msg_00000368_00332, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
