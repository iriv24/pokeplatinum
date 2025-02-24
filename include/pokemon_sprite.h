#ifndef POKEPLATINUM_POKEMON_SPRITE_H
#define POKEPLATINUM_POKEMON_SPRITE_H

#include <nnsys.h>

#include "constants/heap.h"

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02008900.h"

#define MAX_POKEMON_SPRITES    4
#define MAX_SPINDA_SPOTS       4
#define SPINDA_SPOT_COORDS_END 0xFF

enum PokemonSpriteAttribute {
    MON_SPRITE_X_CENTER = 0,
    MON_SPRITE_Y_CENTER,
    MON_SPRITE_Z_CENTER,
    MON_SPRITE_X_OFFSET,
    MON_SPRITE_Y_OFFSET,
    MON_SPRITE_Z_OFFSET,
    MON_SPRITE_HAS_VANISHED,
    MON_SPRITE_ROTATION_X,
    MON_SPRITE_ROTATION_Y,
    MON_SPRITE_ROTATION_Z,
    MON_SPRITE_X_PIVOT,
    MON_SPRITE_Y_PIVOT,
    MON_SPRITE_AFFINE_WIDTH,
    MON_SPRITE_AFFINE_HEIGHT,
    MON_SPRITE_VISIBLE,
    MON_SPRITE_X_OFFSET_2,
    MON_SPRITE_Y_OFFSET_2,
    MON_SPRITE_WIDTH,
    MON_SPRITE_HEIGHT,
    MON_SPRITE_SHADOW_X,
    MON_SPRITE_SHADOW_Y,
    MON_SPRITE_SHADOW_X_OFFSET,
    MON_SPRITE_SHADOW_Y_OFFSET,
    MON_SPRITE_ALPHA,
    MON_SPRITE_DIFFUSE_R,
    MON_SPRITE_DIFFUSE_G,
    MON_SPRITE_DIFFUSE_B,
    MON_SPRITE_AMBIENT_R,
    MON_SPRITE_AMBIENT_G,
    MON_SPRITE_AMBIENT_B,
    MON_SPRITE_FADE_ACTIVE,
    MON_SPRITE_FADE_TARGET_COLOR,
    MON_SPRITE_FADE_INIT_ALPHA,
    MON_SPRITE_FADE_TARGET_ALPHA,
    MON_SPRITE_FADE_DELAY_COUNTER,
    MON_SPRITE_FLIP_H,
    MON_SPRITE_FLIP_V,
    MON_SPRITE_HIDE,
    MON_SPRITE_CURR_SPRITE_FRAME,
    MON_SPRITE_DUMMY,
    MON_SPRITE_MOSAIC_INTENSITY,
    MON_SPRITE_SHADOW_HEIGHT,
    MON_SPRITE_SHADOW_PLTT_SLOT,
    MON_SPRITE_SHADOW_SHOULD_ADJUST_X,
    MON_SPRITE_SHADOW_SHOULD_ADJUST_Y,
    MON_SPRITE_SHADOW_IS_AFFINE,
    MON_SPRITE_SHADOW_SIZE,
};

typedef struct PokemonSprite PokemonSprite;
typedef struct PokemonSpriteTransforms PokemonSpriteTransforms;

typedef void(PokemonSpriteCallback)(PokemonSprite *, PokemonSpriteTransforms *);

typedef struct PokemonSpriteTemplate {
    u16 archive; //< ID of the sprite archive
    u16 character; //< File index to pull from the archive for the character data (tiles)
    u16 palette; //< File index to pull from the archive for the palette data
    u16 spindaSpots; //< Simple flag denoting whether the rendered sprite should be pseudo-randomized with splotches (only for Spinda's front-sprite).

    u8 dummy; //< Dummy value; never used or set to anything other than 0.

    u32 personality; //< Cached personality value for Pokemon front-sprites. Specifically used for Spinda spots.
} PokemonSpriteTemplate;

struct PokemonSpriteTransforms {
    s16 xCenter;
    s16 yCenter;
    int zCenter;
    s16 xOffset;
    s16 yOffset;
    int zOffset;
    s16 affineWidth;
    s16 affineHeight;
    u16 rotationX;
    u16 rotationY;
    u16 rotationZ;
    u16 padding_1A;
    s16 xPivot;
    s16 yPivot;
    u8 xOffset2;
    u8 yOffset2;
    u8 width;
    u8 height;
    u8 fadeInitAlpha;
    u8 fadeTargetAlpha;
    u8 fadeDelayCounter;
    u8 fadeDelayLength;
    u32 fadeTargetColor;
    u32 diffuseR : 5;
    u32 diffuseG : 5;
    u32 diffuseB : 5;
    u32 ambientR : 5;
    u32 ambientG : 5;
    u32 ambientB : 5;
    u32 padding_2C_30 : 2;
    u32 hasVanished : 1;
    u32 visible : 1;
    u32 alpha : 5;
    u32 padding_30_07 : 2;
    u32 flipH : 1;
    u32 flipV : 1;
    u32 hide : 1;
    u32 fadeActive : 1;
    u32 mosaicIntensity : 4;
    u32 padding_30_17 : 15;
};

typedef struct PokemonSpriteShadow {
    u16 plttSlot : 2;
    u16 shouldAdjustX : 1;
    u16 shouldAdjustY : 1;
    u16 isAffine : 1;
    u16 size : 2;
    u16 padding_00 : 9;
    s8 height;
    u8 padding_03;
    s16 x;
    s16 y;
    s16 xOffset;
    s16 yOffset;
} PokemonSpriteShadow;

struct PokemonSprite {
    u32 active : 1;
    u32 polygonID : 6;
    u32 needReloadChar : 1;
    u32 needReloadPltt : 1;
    u32 padding_00_9 : 23;
    PokemonSpriteTemplate template;
    PokemonSpriteTemplate templateBackup;
    PokemonSpriteTransforms transforms;
    u8 animActive;
    u8 currAnimFrame;
    u8 animFrameDelay;
    u8 currSpriteFrame;
    u8 animLoopTimers[MAX_ANIMATION_FRAMES];
    u8 padding_66[2];
    PokemonSpriteCallback *callback;
    PokemonSpriteShadow shadow;
    PokemonSpriteShadow shadowBackup;
    SpriteAnimationFrame animFrames[MAX_ANIMATION_FRAMES];
};

typedef struct PokemonSpriteManager {
    PokemonSprite sprites[MAX_POKEMON_SPRITES];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy plttProxy;
    enum HeapId heapID;
    u32 charBaseAddr;
    u32 charSize;
    u32 plttBaseAddr;
    u32 plttSize;
    u8 *charRawData;
    u16 *plttRawData;
    u16 *plttRawDataUnfaded;
    NNSG2dCharacterData charData;
    NNSG2dPaletteData plttData;
    u8 dummy330;
    u8 needLoadChar;
    u8 needLoadPltt;
    u8 excludeG3Identity;
    u32 hideShadows; // curiously, this field is treated like a bitmask, but it only ever uses a value of 0 or 1
} PokemonSpriteManager;

void *sub_0200762C(enum HeapId heapID);
void sub_02007768(PokemonSpriteManager *monSpriteMan);
void sub_02007B6C(PokemonSpriteManager *monSpriteMan);
void sub_02007B98(PokemonSprite *monSprite, int dummy);
void sub_02007C10(PokemonSprite *monSprite, SpriteAnimationFrame *animFrames);
BOOL sub_02007C24(PokemonSprite *monSprite);
PokemonSprite *sub_02007C34(PokemonSpriteManager *monSpriteMan, PokemonSpriteTemplate *spriteTemplate, int x, int y, int z, int polygonID, SpriteAnimationFrame *animFrames, PokemonSpriteCallback *callback);
PokemonSprite *sub_02007C7C(PokemonSpriteManager *monSpriteMan, PokemonSpriteTemplate *spriteTemplate, int x, int y, int z, int polygonID, int index, SpriteAnimationFrame *animFrames, PokemonSpriteCallback *callback);
void sub_02007DC8(PokemonSprite *monSprite);
void sub_02007DD4(PokemonSpriteManager *monSpriteMan);
void sub_02007DEC(PokemonSprite *monSprite, enum PokemonSpriteAttribute attribute, int value);
int sub_020080C0(PokemonSprite *monSprite, enum PokemonSpriteAttribute attribute);
void sub_02008274(PokemonSprite *monSprite, enum PokemonSpriteAttribute attribute, int delta);
void sub_020086D4(PokemonSprite *monSprite, int x, int y, int width, int height);
void sub_020086FC(PokemonSprite *monSprite, int initAlpha, int targetAlpha, int delay, int color);
void sub_0200872C(PokemonSpriteManager *monSpriteMan, int initAlpha, int targetAlpha, int delay, int color);
void sub_02008780(PokemonSprite *monSprite);
BOOL sub_020087B4(PokemonSprite *monSprite);
void sub_020087C8(PokemonSprite *param0, int param1);
void sub_020088E0(UnkStruct_02008900 *param0, const SpriteAnimationFrame *param1);
int sub_02008900(UnkStruct_02008900 *param0);
void sub_020089A0(PokemonSprite *monSprite);
void sub_020089B0(PokemonSprite *monSprite);
void sub_02008A0C(PokemonSprite *monSprite);
void sub_02008A78(PokemonSpriteManager *monSpriteMan, u32 addr, u32 size);
void sub_02008A84(PokemonSpriteManager *monSpriteMan, u32 addr, u32 size);
PokemonSpriteTemplate *sub_02008A90(PokemonSprite *monSprite);
void sub_02008A94(PokemonSpriteManager *monSpriteMan);
void sub_02008B2C(PokemonSpriteManager *monSpriteMan, int value);
BOOL sub_02008B38(PokemonSprite *monSprite);
void sub_02008B54(PokemonSpriteManager *monSpriteMan, u32 value);
void sub_02008B60(PokemonSpriteManager *monSpriteMan, u32 value);
void sub_020091D8(u8 *rawCharData, u32 personality, BOOL isAnimated);
void PokemonSprite_DecryptPt(u8 *rawCharData);
void PokemonSprite_DecryptDP(u8 *rawCharData);
void sub_020093A0(u8 *rawCharData, int narcID);

#endif // POKEPLATINUM_POKEMON_SPRITE_H
