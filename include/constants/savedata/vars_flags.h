#ifndef POKEPLATINUM_CONSTANTS_VARS_AND_FLAGS_H
#define POKEPLATINUM_CONSTANTS_VARS_AND_FLAGS_H

#include "generated/first_arrival_to_zones.h"
#include "generated/giratina_shadow_animations.h"
#include "generated/villa_furnitures.h"

#define FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY 0x00BA

#define FLAG_MESPRIT_CAUGHT 0x0125
#define FLAG_AZELF_CAUGHT   0x0126
#define FLAG_UXIE_CAUGHT    0x0127

#define FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN 0x013E

#define FLAG_GALACTIC_LEFT_LAKE_VALOR 0x015E

#define FLAG_MESPRIT_DISAPPEARED 0x01DF
#define FLAG_AZELF_DISAPPEARED   0x01E0
#define FLAG_UXIE_DISAPPEARED    0x01E1

#define VARS_START 0x4000

#define SYSTEM_VARS_START                     (VARS_START + 0x0030)
#define NUM_SYSTEM_VARS                       64
#define VAR_PLAYER_STARTER                    (SYSTEM_VARS_START + 0)
#define VAR_UNUSED_0x4031                     (SYSTEM_VARS_START + 1)
#define VAR_UNK_0x4032                        (SYSTEM_VARS_START + 2)
#define VAR_VS_SEEKER_BATTERY_LEVEL           (SYSTEM_VARS_START + 3)
#define VAR_VS_SEEKER_STEP_COUNT              (SYSTEM_VARS_START + 4)
#define VAR_SIZE_CONTEST_RECORD               (SYSTEM_VARS_START + 5)
#define VAR_HIDDEN_LOCATION_FULL_MOON_ISLAND  (SYSTEM_VARS_START + 6)
#define VAR_HIDDEN_LOCATION_NEW_MOON_ISLAND   (SYSTEM_VARS_START + 7)
#define VAR_HIDDEN_LOCATION_SPRING_PATH       (SYSTEM_VARS_START + 8)
#define VAR_HIDDEN_LOCATION_SEABREAK_PATH     (SYSTEM_VARS_START + 9)
#define VAR_AMITY_SQUARE_STEP_COUNT           (SYSTEM_VARS_START + 10)
#define VAR_NEWS_PRESS_DEADLINE               (SYSTEM_VARS_START + 11)
#define VAR_LOTTERY_TRAINER_ID_LOW_HALF       (SYSTEM_VARS_START + 12)
#define VAR_LOTTERY_TRAINER_ID_HIGH_HALF      (SYSTEM_VARS_START + 13)
#define VAR_SPIRITOMB_COUNTER                 (SYSTEM_VARS_START + 14)
#define VAR_PARTNER_TRAINER_ID                (SYSTEM_VARS_START + 15)
#define VAR_CONSECUTIVE_BONUS_ROUND_WINS      (SYSTEM_VARS_START + 16)
#define VAR_DAILY_RANDOM_LEVEL                (SYSTEM_VARS_START + 17)
#define VAR_DEPARTMENT_STORE_REGULAR_COUNTER  (SYSTEM_VARS_START + 18)
#define VAR_DISTRIBUTION_EVENT_DARKRAI        (SYSTEM_VARS_START + 19)
#define VAR_DISTRIBUTION_EVENT_SHAYMIN        (SYSTEM_VARS_START + 20)
#define VAR_DISTRIBUTION_EVENT_ARCEUS         (SYSTEM_VARS_START + 21)
#define VAR_DISTRIBUTION_EVENT_ROTOM          (SYSTEM_VARS_START + 22)
#define VAR_UNDERGROUND_FOSSILS_UNEARTHED     (SYSTEM_VARS_START + 23)
#define VAR_UNDERGROUND_TRAPS_SET             (SYSTEM_VARS_START + 24)
#define VAR_UNDERGROUND_TALK_COUNTER          (SYSTEM_VARS_START + 25)
#define VAR_FRIENDSHIP_INCREMENT_STEP_COUNTER (SYSTEM_VARS_START + 26)
#define VAR_ETERNA_GYM_FLOWER_CLOCK_STATE     (SYSTEM_VARS_START + 27)
#define VAR_UNK_0x404C                        (SYSTEM_VARS_START + 28)
#define VAR_TOTAL_TURNS_LAST_BATTLE           (SYSTEM_VARS_START + 29)
#define VAR_RESORT_VILLA_VISITOR              (SYSTEM_VARS_START + 30)
#define VAR_BATTLE_TOWER_PRINT_STATE          (SYSTEM_VARS_START + 31)
#define VAR_BATTLE_FACTORY_PRINT_STATE        (SYSTEM_VARS_START + 32)
#define VAR_BATTLE_HALL_PRINT_STATE           (SYSTEM_VARS_START + 33)
#define VAR_BATTLE_CASTLE_PRINT_STATE         (SYSTEM_VARS_START + 34)
#define VAR_BATTLE_ARCADE_PRINT_STATE         (SYSTEM_VARS_START + 35)
#define VAR_UNDERGROUND_ITEMS_GIVEN_AWAY      (SYSTEM_VARS_START + 36)
#define VAR_DISTORTION_WORLD_PROGRESS         (SYSTEM_VARS_START + 37)
#define VAR_ARCEUS_EVENT_STATE                (SYSTEM_VARS_START + 38)
#define VAR_SHAYMIN_EVENT_STATE               (SYSTEM_VARS_START + 39)
#define VAR_ROAMING_CRESSELIA_STATE           (SYSTEM_VARS_START + 40)
#define VAR_ROAMING_MESPRIT_STATE             (SYSTEM_VARS_START + 41)
#define VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM  (SYSTEM_VARS_START + 42)
#define VAR_DISTORTION_WORLD_CYRUS_APPEARANCE (SYSTEM_VARS_START + 43)
#define VAR_UNK_0x405C                        (SYSTEM_VARS_START + 44)
#define VAR_UNK_0x405D                        (SYSTEM_VARS_START + 45)
#define VAR_ROAMING_MOLTRES_STATE             (SYSTEM_VARS_START + 46)
#define VAR_ROAMING_ZAPDOS_STATE              (SYSTEM_VARS_START + 47)
#define VAR_ROAMING_ARTICUNO_STATE            (SYSTEM_VARS_START + 48)
#define VAR_UNK_0x4061                        (SYSTEM_VARS_START + 49)
#define VAR_UNK_0x4062                        (SYSTEM_VARS_START + 50)
#define VAR_UNK_0x4063                        (SYSTEM_VARS_START + 51)
#define VAR_WIFI_FRONTIER_CLEARED             (SYSTEM_VARS_START + 52)
#define VAR_UNK_0x4065                        (SYSTEM_VARS_START + 53)
#define VAR_UNK_0x4066                        (SYSTEM_VARS_START + 54)
#define VAR_UNK_0x4067                        (SYSTEM_VARS_START + 55)
#define VAR_UNK_0x4068                        (SYSTEM_VARS_START + 56)
#define VAR_UNK_0x4069                        (SYSTEM_VARS_START + 57)
#define VAR_UNK_0x406A                        (SYSTEM_VARS_START + 58)
#define VAR_UNK_0x406B                        (SYSTEM_VARS_START + 59)
#define VAR_UNUSED_0x406C                     (SYSTEM_VARS_START + 60)
#define VAR_UNUSED_0x406D                     (SYSTEM_VARS_START + 61)
#define VAR_UNUSED_0x406E                     (SYSTEM_VARS_START + 62)
#define VAR_UNUSED_0x406F                     (SYSTEM_VARS_START + 63)

#define SPECIAL_VARS_START 0x8000

#define SYSTEM_FLAGS_START                       2400
#define FLAG_BAG_ACQUIRED                        (SYSTEM_FLAGS_START + 0)
#define FLAG_HAS_PARTNER                         (SYSTEM_FLAGS_START + 1)
#define FLAG_STRENGTH_ACTIVE                     (SYSTEM_FLAGS_START + 2)
#define FLAG_JOURNAL_ACQUIRED                    (SYSTEM_FLAGS_START + 3)
#define FLAG_GAME_COMPLETED                      (SYSTEM_FLAGS_START + 4)
#define FLAG_STEP                                (SYSTEM_FLAGS_START + 5)
#define FLAG_COMMUNICATION_CLUB_ACCESSIBLE       (SYSTEM_FLAGS_START + 6)
#define FLAG_SAFARI_GAME_ACTIVE                  (SYSTEM_FLAGS_START + 7)
#define FLAG_CONTEST_MASTER_COOL                 (SYSTEM_FLAGS_START + 8)
#define FLAG_CONTEST_MASTER_CUTE                 (SYSTEM_FLAGS_START + 9)
#define FLAG_CONTEST_MASTER_BEAUTY               (SYSTEM_FLAGS_START + 10)
#define FLAG_CONTEST_MASTER_SMART                (SYSTEM_FLAGS_START + 11)
#define FLAG_CONTEST_MASTER_TOUGH                (SYSTEM_FLAGS_START + 12)
#define FLAG_VS_SEEKER_USED                      (SYSTEM_FLAGS_START + 13)
#define FLAG_ENTERED_UNDERGROUND                 (SYSTEM_FLAGS_START + 14)
#define FLAG_DIGGING_FOR_FOSSILS                 (SYSTEM_FLAGS_START + 15)
#define FLAG_SPHERE_ACQUIRED                     (SYSTEM_FLAGS_START + 16)
#define FLAG_CREATED_SECRET_BASE                 (SYSTEM_FLAGS_START + 17)
#define FLAG_DECORATED_SECRET_BASE               (SYSTEM_FLAGS_START + 18)
#define FLAG_DELIVERED_STOLEN_FLAG               (SYSTEM_FLAGS_START + 19)
#define FLAG_UNUSED_2420                         (SYSTEM_FLAGS_START + 20)
#define FLAG_UNUSED_2421                         (SYSTEM_FLAGS_START + 21)
#define FLAG_UNUSED_2422                         (SYSTEM_FLAGS_START + 22)
#define FLAG_DISTORTION_WORLD_STEPPING_STONES    (SYSTEM_FLAGS_START + 23)
#define FLAG_CONTEST_HALL_VISITED                (SYSTEM_FLAGS_START + 24)
#define FLAG_IN_PAL_PARK                         (SYSTEM_FLAGS_START + 25)
#define FLAG_FLASH_ACTIVE                        (SYSTEM_FLAGS_START + 26)
#define FLAG_DEFOG_ACTIVE                        (SYSTEM_FLAGS_START + 27)
#define FLAG_POKETCH_HIDDEN                      (SYSTEM_FLAGS_START + 28)
#define FLAG_FREED_GALACTIC_HQ_POKEMON           (SYSTEM_FLAGS_START + 29)
#define FLAG_MET_BEBE                            (SYSTEM_FLAGS_START + 30)
#define FLAG_UNLOCKED_VS_SEEKER_LVL_1            (SYSTEM_FLAGS_START + 31)
#define FLAG_UNLOCKED_VS_SEEKER_LVL_2            (SYSTEM_FLAGS_START + 32)
#define FLAG_UNLOCKED_VS_SEEKER_LVL_3            (SYSTEM_FLAGS_START + 33)
#define FLAG_UNLOCKED_VS_SEEKER_LVL_4            (SYSTEM_FLAGS_START + 34)
#define FLAG_UNLOCKED_VS_SEEKER_LVL_5            (SYSTEM_FLAGS_START + 35)
#define FLAG_ALT_MUSIC_LAKE_VALOR                (SYSTEM_FLAGS_START + 36)
#define FLAG_ALT_MUSIC_GALACTIC_HQ               (SYSTEM_FLAGS_START + 37)
#define FLAG_ALT_MUSIC_GALACTIC_HQ_1F            (SYSTEM_FLAGS_START + 38)
#define FLAG_ALT_MUSIC_GALACTIC_ETERNA_BUILDING  (SYSTEM_FLAGS_START + 39)
#define FLAG_ALT_MUSIC_VALLEY_WINDWORKS_BUILDING (SYSTEM_FLAGS_START + 40)
#define FLAG_ALT_MUSIC_FLOAROMA_MEADOW           (SYSTEM_FLAGS_START + 41)
#define FLAG_ALT_MUSIC_ROUTE_224                 (SYSTEM_FLAGS_START + 42)
#define FLAG_ALT_MUSIC_CHAMPION_ROOM             (SYSTEM_FLAGS_START + 43)
#define FLAG_CONNECTED_TO_WIFI                   (SYSTEM_FLAGS_START + 44)
#define FLAG_DUMMY_2445                          (SYSTEM_FLAGS_START + 45)
#define FLAG_ALT_MUSIC_LAKE_VERITY               (SYSTEM_FLAGS_START + 46)
#define FLAG_ALT_MUSIC_LAKE_ACUITY               (SYSTEM_FLAGS_START + 47)
#define FLAG_UNUSED_2448                         (SYSTEM_FLAGS_START + 48)
#define FLAG_UNUSED_2449                         (SYSTEM_FLAGS_START + 49)
#define FLAG_UNDERGROUND_FIRST_ENTERED           (SYSTEM_FLAGS_START + 50)
#define FLAG_ALT_MUSIC_ROWANS_LAB                (SYSTEM_FLAGS_START + 51)
#define FLAG_ON_CYCLING_ROAD                     (SYSTEM_FLAGS_START + 52)
#define FLAG_ALT_MUSIC_PAL_PARK                  (SYSTEM_FLAGS_START + 53)
#define FLAG_FORCE_BIKING_IN_GATE                (SYSTEM_FLAGS_START + 54)

#define SYSTEM_FLAGS_VILLA_FURNITURE_START (SYSTEM_FLAGS_START + 55)

#define SYSTEM_FLAGS_VILLA_VISITOR_START      (SYSTEM_FLAGS_VILLA_FURNITURE_START + VILLA_FURNITURE_MAX)
#define FLAG_VILLA_VISITOR_INSIDE             (SYSTEM_FLAGS_VILLA_VISITOR_START + 0)
#define FLAG_VILLA_VISITOR_OUTSIDE            (SYSTEM_FLAGS_VILLA_VISITOR_START + 1)
#define FLAG_DISTORTION_WORLD_PUZZLE_FINISHED (SYSTEM_FLAGS_VILLA_VISITOR_START + 2)

#define SYSTEM_FLAGS_GIRATINA_ANIM_START (FLAG_DISTORTION_WORLD_PUZZLE_FINISHED + 1)

#define SYSTEM_FLAGS_FIRST_ARRIVAL_TO_ZONE (SYSTEM_FLAGS_GIRATINA_ANIM_START + GIRATINA_SHADOW_ANIM_MAX)

#define FLAG_DEFEATED_IDOL_GRACE                0x0ABC
#define FLAG_DEFEATED_REPORTER_KINSEY           0x0ABD
#define FLAG_DEFEATED_CAMERAMAN_TEVIN           0x0ABE
#define FLAG_DEFEATED_CLOWN_LEE                 0x0ABF
#define FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI 0x0AC0
#define FLAG_DEFEATED_POKE_KID_ARIEL            0x0AC1
#define FLAG_DEFEATED_GUITARIST_ARTURO          0x0AC2

#endif // POKEPLATINUM_CONSTANTS_VARS_AND_FLAGS_H
