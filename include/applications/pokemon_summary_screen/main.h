#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H

#include <nitro/fx/fx.h>

#include "constants/moves.h"

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/archived_poke_sprite_data.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/sprite_animation_frame.h"

#include "bg_window.h"
#include "camera.h"
#include "cell_actor.h"
#include "game_options.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"

enum PSSMode {
    PSS_MODE_NORMAL = 0,
    PSS_MODE_LOCK_MOVES,
    PSS_MODE_SELECT_MOVE,
    PSS_MODE_POFFIN,
    PSS_MODE_CONDITION,
};

enum PSSPage {
    PSS_PAGE_INFO = 0,
    PSS_PAGE_MEMO,
    PSS_PAGE_SKILLS,
    PSS_PAGE_BATTLE_MOVES,
    PSS_PAGE_CONDITION,
    PSS_PAGE_CONTEST_MOVES,
    PSS_PAGE_RIBBONS,
    PSS_PAGE_EXIT,

    PSS_PAGE_MAX,

    PSS_PAGE_NONE = 0xFF
};

enum PSSDataType {
    PSS_DATA_MON = 0,
    PSS_DATA_PARTY_MON,
    PSS_DATA_BOX_MON,
};

enum PSSReturnMode {
    PSS_RETURN_SELECT = 0,
    PSS_RETURN_CANCEL,
};

enum PSSSubscreenType {
    PSS_SUBSCREEN_TYPE_NORMAL = 0,
    PSS_SUBSCREEN_TYPE_NO_CONTEST_INFO,
    PSS_SUBSCREEN_TYPE_UNUSED_MOVES_ONLY, // only shows battle and contest move pages, never used

    PSS_SUBSCREEN_TYPE_NO_BUTTONS = 0xF,
};

enum PSSStaticWindow {
    PSS_WINDOW_LABEL_INFO = 0,
    PSS_WINDOW_LABEL_MEMO,
    PSS_WINDOW_LABEL_SKILLS,
    PSS_WINDOW_LABEL_CONDITION,
    PSS_WINDOW_LABEL_BATTLE_MOVES,
    PSS_WINDOW_LABEL_CONTEST_MOVES,
    PSS_WINDOW_LABEL_ITEM,
    PSS_WINDOW_LABEL_DEX_NUM,
    PSS_WINDOW_LABEL_SPECIES_NAME,
    PSS_WINDOW_LABEL_TYPE,
    PSS_WINDOW_LABEL_OT_NAME,
    PSS_WINDOW_LABEL_OT_ID,
    PSS_WINDOW_LABEL_EXP,
    PSS_WINDOW_LABEL_EXP_NEXT_LV,
    PSS_WINDOW_DUMMY_14,
    PSS_WINDOW_LABEL_HP,
    PSS_WINDOW_LABEL_ATTACK,
    PSS_WINDOW_LABEL_DEFENSE,
    PSS_WINDOW_LABEL_SP_ATTACK,
    PSS_WINDOW_LABEL_SP_DEFENSE,
    PSS_WINDOW_LABEL_SPEED,
    PSS_WINDOW_LABEL_ABILITY,
    PSS_WINDOW_LABEL_SHEEN,
    PSS_WINDOW_DUMMY_23,
    PSS_WINDOW_LABEL_MOVE_CANCEL,
    PSS_WINDOW_LABEL_MOVE_CATEGORY,
    PSS_WINDOW_LABEL_MOVE_POWER,
    PSS_WINDOW_LABEL_MOVE_ACCURACY,
    PSS_WINDOW_LABEL_CLOSE_WINDOW,
    PSS_WINDOW_LABEL_APPEAL_POINTS,
    PSS_WINDOW_LABEL_RIBBON_COUNT,
    PSS_WINDOW_LABEL_RIBBONS,
    PSS_WINDOW_ITEM_NAME,
    PSS_WINDOW_MON_LEVEL,
    PSS_WINDOW_MON_NICKNAME_GENDER,
    PSS_WINDOW_BUTTON_PROMPT,

    PSS_STATIC_WINDOW_MAX
};

enum PSSExtraWindowInfo {
    PSS_WINDOW_DEX_NUM = 0,
    PSS_WINDOW_SPECIES_NAME,
    PSS_WINDOW_OT_NAME,
    PSS_WINDOW_OT_ID,
    PSS_WINDOW_EXP,
    PSS_WINDOW_EXP_NEXT_LV,

    PSS_INFO_WINDOW_MAX,
};

enum PSSExtraWindowMemo {
    PSS_WINDOW_MEMO = 0,

    PSS_MEMO_WINDOW_MAX,
};

enum PSSExtraWindowSkills {
    PSS_WINDOW_HP = 0,
    PSS_WINDOW_ATTACK,
    PSS_WINDOW_DEFENSE,
    PSS_WINDOW_SP_ATTACK,
    PSS_WINDOW_SP_DEFENSE,
    PSS_WINDOW_SPEED,
    PSS_WINDOW_ABILITY,
    PSS_WINDOW_ABILITY_DESCRIPTION,

    PSS_SKILLS_WINDOW_MAX,
};

enum PSSExtraWindowBattleMoves {
    PSS_WINDOW_BATTLE_MOVE_1 = 0,
    PSS_WINDOW_BATTLE_MOVE_2,
    PSS_WINDOW_BATTLE_MOVE_3,
    PSS_WINDOW_BATTLE_MOVE_4,
    PSS_WINDOW_BATTLE_MOVE_5,
    PSS_WINDOW_BATTLE_MOVE_POWER,
    PSS_WINDOW_BATTLE_MOVE_ACCURACY,
    PSS_WINDOW_BATTLE_MOVE_DESCRIPTION,

    PSS_BATTLE_MOVES_WINDOW_MAX,
};

enum PSSExtraWindowContestMoves {
    PSS_WINDOW_CONTEST_MOVE_1 = 0,
    PSS_WINDOW_CONTEST_MOVE_2,
    PSS_WINDOW_CONTEST_MOVE_3,
    PSS_WINDOW_CONTEST_MOVE_4,
    PSS_WINDOW_CONTEST_MOVE_5,
    PSS_WINDOW_CONTEST_MOVE_DESCRIPTION,

    PSS_CONTEST_MOVES_WINDOW_MAX,
};

enum PSSExtraWindowRibbons {
    PSS_WINDOW_RIBBON_COUNT = 0,
    PSS_WINDOW_RIBBON_INDEX,
    PSS_WINDOW_RIBBON_NAME,
    PSS_WINDOW_RIBBON_DESCRIPTION,

    PSS_RIBBONS_WINDOW_MAX,
};

enum PSSExtraWindowCondition {
    PSS_WINDOW_POFFIN_BUTTON_PROMPT = 0,
    PSS_WINDOW_FAVORITE_FOOD,
    PSS_WINDOW_POFFIN_FEED_MSG,

    PSS_CONDITION_WINDOW_MAX,
};

enum PSSSprite {
    PSS_SPRITE_TAB_INFO = 0,
    PSS_SPRITE_TAB_MEMO,
    PSS_SPRITE_TAB_SKILLS,
    PSS_SPRITE_TAB_BATTLE_MOVES,
    PSS_SPRITE_TAB_CONDITION,
    PSS_SPRITE_TAB_CONTEST_MOVES,
    PSS_SPRITE_TAB_RIBBONS,
    PSS_SPRITE_TAB_EXIT,
    PSS_SPRITE_CAUGHT_BALL,
    PSS_SPRITE_MOVE_SELECTOR_1,
    PSS_SPRITE_MOVE_SELECTOR_2,
    PSS_SPRITE_MON_TYPE_ICON_1,
    PSS_SPRITE_MON_TYPE_ICON_2,

    PSS_MOVE_TYPE_ICON_SPRITE_START,
    PSS_SPRITE_MOVE_TYPE_ICON_1 = PSS_MOVE_TYPE_ICON_SPRITE_START,
    PSS_SPRITE_MOVE_TYPE_ICON_2,
    PSS_SPRITE_MOVE_TYPE_ICON_3,
    PSS_SPRITE_MOVE_TYPE_ICON_4,
    PSS_SPRITE_MOVE_TYPE_ICON_5,
    PSS_MOVE_TYPE_ICON_SPRITE_END = PSS_SPRITE_MOVE_TYPE_ICON_5,

    PSS_SPRITE_MOVE_CATEGORY_ICON,
    PSS_SPRITE_MON_ICON,
    PSS_SPRITE_STATUS_ICON,
    PSS_SPRITE_PAGE_ARROW_LEFT,
    PSS_SPRITE_PAGE_ARROW_RIGHT,

    PSS_MARKING_SPRITES_START,
    PSS_SPRITE_MARKING_CIRCLE = PSS_MARKING_SPRITES_START,
    PSS_SPRITE_MARKING_TRIANGLE,
    PSS_SPRITE_MARKING_SQUARE,
    PSS_SPRITE_MARKING_HEART,
    PSS_SPRITE_MARKING_STAR,
    PSS_SPRITE_MARKING_DIAMOND,
    PSS_MARKING_SPRITES_END = PSS_SPRITE_MARKING_DIAMOND,

    PSS_SHEEN_SPRITES_START,
    PSS_SPRITE_SHEEN_1 = PSS_SHEEN_SPRITES_START,
    PSS_SPRITE_SHEEN_2,
    PSS_SPRITE_SHEEN_3,
    PSS_SPRITE_SHEEN_4,
    PSS_SPRITE_SHEEN_5,
    PSS_SPRITE_SHEEN_6,
    PSS_SPRITE_SHEEN_7,
    PSS_SPRITE_SHEEN_8,
    PSS_SPRITE_SHEEN_9,
    PSS_SPRITE_SHEEN_10,
    PSS_SPRITE_SHEEN_11,
    PSS_SPRITE_SHEEN_12,
    PSS_SHEEN_SPRITES_END = PSS_SPRITE_SHEEN_12,

    PSS_SPRITE_BUTTON_PULSE,

    PSS_CONDITION_ARROW_SPRITES_START,
    PSS_SPRITE_CONDITION_ARROW_COOL = PSS_CONDITION_ARROW_SPRITES_START,
    PSS_SPRITE_CONDITION_ARROW_BEAUTY,
    PSS_SPRITE_CONDITION_ARROW_CUTE,
    PSS_SPRITE_CONDITION_ARROW_SMART,
    PSS_SPRITE_CONDITION_ARROW_TOUGH,
    PSS_CONDITION_ARROW_SPRITES_END = PSS_SPRITE_CONDITION_ARROW_TOUGH,

    PSS_SPRITE_A_BUTTON,
    PSS_SPRITE_CONTEST_STAT_DOT_COOL,
    PSS_SPRITE_CONTEST_STAT_DOT_BEAUTY,
    PSS_SPRITE_CONTEST_STAT_DOT_CUTE,
    PSS_SPRITE_CONTEST_STAT_DOT_SMART,
    PSS_SPRITE_CONTEST_STAT_DOT_TOUGH,
    PSS_SPRITE_SHINY_ICON,
    PSS_SPRITE_POKERUS_CURED_ICON,

    PSS_RIBBON_SPRITES_START,
    PSS_SPRITE_RIBBON_1 = PSS_RIBBON_SPRITES_START,
    PSS_SPRITE_RIBBON_2,
    PSS_SPRITE_RIBBON_3,
    PSS_SPRITE_RIBBON_4,
    PSS_SPRITE_RIBBON_5,
    PSS_SPRITE_RIBBON_6,
    PSS_SPRITE_RIBBON_7,
    PSS_SPRITE_RIBBON_8,
    PSS_SPRITE_RIBBON_9,
    PSS_SPRITE_RIBBON_10,
    PSS_SPRITE_RIBBON_11,
    PSS_SPRITE_RIBBON_12,
    PSS_RIBBON_SPRITES_END = PSS_SPRITE_RIBBON_12,

    PSS_SPRITE_RIBBON_CURSOR,
    PSS_SPRITE_RIBBON_ARROW_UP,
    PSS_SPRITE_RIBBON_ARROW_DOWN,
    PSS_SPRITE_RIBBON_FLASH,

    PSS_CONDITION_FLASH_SPRITES_START,
    PSS_SPRITE_CONDITION_FLASH_COOL = PSS_CONDITION_FLASH_SPRITES_START,
    PSS_SPRITE_CONDITION_FLASH_BEAUTY,
    PSS_SPRITE_CONDITION_FLASH_CUTE,
    PSS_SPRITE_CONDITION_FLASH_SMART,
    PSS_SPRITE_CONDITION_FLASH_TOUGH,
    PSS_CONDITION_FLASH_SPRITES_END = PSS_SPRITE_CONDITION_FLASH_TOUGH,

    PSS_SPRITE_POKERUS_ICON,

    PSS_SPRITE_MAX = 77,
};

enum PSSPokerusState {
    PSS_POKERUS_NONE = 0,
    PSS_POKERUS_INFECTED,
    PSS_POKERUS_CURED,
};

enum ConditionRect {
    CONDITION_RECT_Q1 = 0,
    CONDITION_RECT_Q2,
    CONDITION_RECT_Q3,
    CONDITION_RECT_Q4,

    MAX_CONDITION_RECT
};

#define PSS_SUBSCREEN_BUTTON_NONE 0xFF

#define RIBBONS_PER_ROW  4
#define RIBBONS_PER_PAGE 12

#define PSS_TEXT_BLACK             TEXT_COLOR(1, 2, 0)
#define PSS_TEXT_WHITE             TEXT_COLOR(15, 14, 0)
#define PSS_TEXT_BLUE              TEXT_COLOR(3, 4, 0)
#define PSS_TEXT_RED               TEXT_COLOR(5, 6, 0)
#define PSS_TEXT_BLACK_DARK_SHADOW TEXT_COLOR(1, 2, 15)

typedef struct ConditionRectangle {
    VecFx16 topLeft;
    VecFx16 topRight;
    VecFx16 bottomLeft;
    VecFx16 bottomRight;
} ConditionRectangle;

typedef struct PokemonSummary {
    void *monData;
    Options *options;
    const charcode_t *OTName;
    u32 OTID;
    u8 OTGender;
    u8 dataType;
    u8 mode;
    u8 max;
    u8 pos;
    u8 pageFlags;
    u8 selectedSlot;
    u8 returnMode;
    u16 move;

    u8 padding_1A[2];

    u32 dexMode;
    void *ribbons;
    void *poffin;
    ChatotCry *chatotCry;
    BOOL showContest;
} PokemonSummary;

typedef struct PokemonSummaryMonData {
    Strbuf *speciesName;
    Strbuf *nickname;
    Strbuf *OTName;

    u16 species;
    u16 heldItem;

    u8 type1;
    u8 type2;
    u8 level : 7;
    u8 hideGender : 1;
    u8 gender : 2;
    u8 caughtBall : 6;

    u32 OTID;
    u32 curExp;
    u32 curLevelExp;
    u32 nextLevelExp;

    u16 curHP;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 spAttack;
    u16 spDefense;
    u16 speed;
    u8 ability;
    u8 nature;

    u16 moves[LEARNED_MOVES_MAX];
    u8 curPP[LEARNED_MOVES_MAX];
    u8 maxPP[LEARNED_MOVES_MAX];

    u8 OTGender;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
    u8 preferredFlavor;

    u16 markings;
    u16 form;

    u32 status : 28;
    u32 isEgg : 1;
    u32 isShiny : 1;
    u32 pokerus : 2;

    u32 ribbons[4];
} PokemonSummaryMonData;

typedef struct PokemonSummaryMonSpriteData {
    Camera *camera;
    void *spriteManager;
    SpriteAnimationFrame frames[MAX_ANIMATION_FRAMES];
    PokemonAnimationSys *animationSys;
    Sprite *sprite;
    BOOL flip;
} PokemonSummaryMonSpriteData;

typedef struct PokemonSummaryScreen {
    BgConfig *bgConfig;
    Window staticWindows[PSS_STATIC_WINDOW_MAX];
    Window *extraWindows;
    u32 numExtraWindows;

    PokemonSummary *data;
    PokemonSummaryMonData monData;
    PokemonSummaryMonSpriteData monSprite;

    ConditionRectangle currRects[MAX_CONDITION_RECT];
    ConditionRectangle deltaRects[MAX_CONDITION_RECT];
    ConditionRectangle maxRects[MAX_CONDITION_RECT];
    u32 conditionState;

    SpriteRenderer *renderer;
    SpriteGfxHandler *gfxHandler;
    CellActor *sprites[PSS_SPRITE_MAX];
    CellActorData *actor[PSS_SPRITE_MAX];

    UnkStruct_0200C440 *unk_684;
    MessageLoader *msgLoader;
    MessageLoader *ribbonLoader;
    StringTemplate *strFormatter;
    Strbuf *strbuf;
    Strbuf *playerName;
    MessageLoader *moveNameLoader;
    NARC *narcPlPokeData;

    s8 page;
    u8 cursor : 4;
    u8 cursorTmp : 4;
    u8 pageState;

    u8 subscreenType : 4;
    u8 subscreenExit : 4;

    u8 sheenState;
    u8 sheenMax;
    u8 sheenPos;
    u8 sheenCount;

    u8 buttonCount;
    u8 buttonState;
    u8 buttonCurrent;

    u8 ribbonCol;
    u8 ribbonRow;
    u8 ribbonMax;
    u8 ribbonNum;
} PokemonSummaryScreen;

BOOL PokemonSummaryScreen_ShowContestData(SaveData *saveData);
void PokemonSummaryScreen_FlagVisiblePages(PokemonSummary *summary, const u8 *pages);
u8 PokemonSummaryScreen_PageIsVisble(PokemonSummaryScreen *summaryScreen, u32 page);
u8 PokemonSummaryScreen_CountVisiblePages(PokemonSummaryScreen *summaryScreen);
void *PokemonSummaryScreen_MonData(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_RibbonNumAt(PokemonSummaryScreen *summaryScreen, u8 col);
void PokemonSummaryScreen_SetPlayerProfile(PokemonSummary *summary, const TrainerInfo *trainerInfo);
u32 PokemonSummaryScreen_StatusIconChar(void);
u32 PokemonSummaryScreen_StatusIconPltt(void);
u32 PokemonSummaryScreen_StatusIconCell(void);
u32 PokemonSummaryScreen_StatusIconAnim(void);
u32 PokemonSummaryScreen_StatusIconAnimIdx(Pokemon *mon);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
