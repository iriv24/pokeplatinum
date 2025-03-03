#ifndef POKEPLATINUM_CONSTANTS_HEAP_H
#define POKEPLATINUM_CONSTANTS_HEAP_H

enum HeapId {
    HEAP_ID_SYSTEM = 0,
    HEAP_ID_SAVE,
    HEAP_ID_DEBUG,
    HEAP_ID_APPLICATION,
    HEAP_ID_FIELD,
    HEAP_ID_BATTLE,

    HEAP_ID_POKETCH_MAIN = 7,
    HEAP_ID_POKETCH_APP,

    HEAP_ID_FIELDMAP = 11,

    HEAP_ID_13 = 13,

    HEAP_ID_COMMUNICATION = 15,

    HEAP_ID_18 = 18,
    HEAP_ID_POKEMON_SUMMARY_SCREEN = 19,
    HEAP_ID_20 = 20,

    HEAP_ID_26 = 26,

    HEAP_ID_DISTORTION_WORLD_WARP = 30,

    HEAP_ID_FIELD_TASK = 32,

    HEAP_ID_POKEDEX = 37,
    HEAP_ID_OPTIONS_MENU = 38,

    HEAP_ID_JOURNAL = 42,

    HEAP_ID_CHOOSE_STARTER_APP = 47,

    HEAP_ID_53 = 53,

    HEAP_ID_61 = 61,
    HEAP_ID_62 = 62,

    HEAP_ID_GAME_START = 77,

    HEAP_ID_LIBRARY_TV = 120,

    HEAP_ID_MAX = 123,
};

enum HeapSize {
    HEAP_SIZE_SYSTEM = 0xD200,
    HEAP_SIZE_SAVE = 0x20E00,
    HEAP_SIZE_DEBUG = 0x10,
    HEAP_SIZE_APPLICATION = 0x10D800,

    HEAP_SIZE_PRE_POKETCH_SUBSCREEN = 0x18000,
    HEAP_SIZE_POKETCH_MAIN = 0xC000,
    HEAP_SIZE_POKETCH_APP = 0xC000,

    HEAP_SIZE_FIELDMAP = 0x1C000,
    HEAP_SIZE_FIELD_TASK = 0x4000,

    HEAP_SIZE_CHOOSE_STARTER_APP = 0x40000,
    HEAP_SIZE_LIBRARY_TV = 0x40000,
    HEAP_SIZE_DISTORTION_WORLD_WARP = 0x50000,
    HEAP_SIZE_GAME_START = 0x20000,
};

#endif // POKEPLATINUM_CONSTANTS_HEAP_H
