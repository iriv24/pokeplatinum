    .include "macros/btlcmd.inc"

    .data

_000:
    CheckSubstitute BTLSCR_DEFENDER, _075
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_ATTACKER, BATTLEMON_CUR_HP, BTLVAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_DEFENDER, BATTLEMON_CUR_HP, BTLVAR_HP_CALC_TEMP
    UpdateVarFromVar OPCODE_ADD, BTLVAR_CALC_TEMP, BTLVAR_HP_CALC_TEMP
    UpdateVar OPCODE_DIV, BTLVAR_CALC_TEMP, 0x00000002
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_SKIP_SPRITE_BLINK
    UpdateVarFromVar OPCODE_SET, BTLVAR_MSG_BATTLER_TEMP, BTLVAR_ATTACKER
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_ATTACKER, BATTLEMON_CUR_HP, BTLVAR_HP_CALC_TEMP
    UpdateVarFromVar OPCODE_SUB, BTLVAR_HP_CALC_TEMP, BTLVAR_CALC_TEMP
    UpdateVar OPCODE_MUL, BTLVAR_HP_CALC_TEMP, -1
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_SKIP_SPRITE_BLINK
    UpdateVarFromVar OPCODE_SET, BTLVAR_MSG_BATTLER_TEMP, BTLVAR_DEFENDER
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_DEFENDER, BATTLEMON_CUR_HP, BTLVAR_HP_CALC_TEMP
    UpdateVarFromVar OPCODE_SUB, BTLVAR_HP_CALC_TEMP, BTLVAR_CALC_TEMP
    UpdateVar OPCODE_MUL, BTLVAR_HP_CALC_TEMP, -1
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // The battlers shared their pain!
    PrintMessage pl_msg_00000368_00820, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 

_075:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
