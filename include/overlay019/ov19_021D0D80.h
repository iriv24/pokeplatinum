#ifndef POKEPLATINUM_OV19_021D0D80_H
#define POKEPLATINUM_OV19_021D0D80_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D4F5C.h"
#include "overlay019/struct_ov19_021D5BAC.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D5FAC.h"

#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "string_template.h"

#define MAIN_PC_LEFT_BUTTON_X  0
#define MAIN_PC_RIGHT_BUTTON_X 255
#define MAIN_PC_BUTTON_Y       184
#define MAIN_PC_BUTTON_RADIUS  40

#define COMPARE_MON_PC_BUTTON_X 128
#define COMPARE_MON_PC_BUTTON_Y 178
#define COMPARE_MON_PC_BUTTON_RADIUS 12

#define PC_MARKINGS_BUTTON1_X 152
#define PC_MARKINGS_BUTTON1_Y 168
#define PC_MARKINGS_BUTTON2_X 163
#define PC_MARKINGS_BUTTON2_Y 134
#define PC_MARKINGS_BUTTON3_X 184
#define PC_MARKINGS_BUTTON3_Y 104
#define PC_MARKINGS_BUTTON4_X 216
#define PC_MARKINGS_BUTTON4_Y 84
#define PC_MARKINGS_BUTTON5_X 240
#define PC_MARKINGS_BUTTON5_Y 52
#define PC_MARKINGS_BUTTON6_X 240
#define PC_MARKINGS_BUTTON6_Y 16
#define PC_MARKINGS_BUTTONS_RADIUS 16

int ov19_021D0D80(OverlayManager *param0, int *param1);
int ov19_021D0DEC(OverlayManager *param0, int *param1);
int ov19_021D0E58(OverlayManager *param0, int *param1);
BOOL ov19_021D3B18(const UnkStruct_ov19_021D5DF8 *param0);
BOOL ov19_021D3B20(const UnkStruct_ov19_021D5DF8 *param0);
MessageLoader *ov19_021D5DE8(const UnkStruct_ov19_021D5DF8 *param0);
const StringTemplate *ov19_021D5DF0(const UnkStruct_ov19_021D5DF8 *param0);
int ov19_021D5DF8(const UnkStruct_ov19_021D5DF8 *param0);
u32 ov19_021D5E08(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E10(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E14(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E1C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E24(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E2C(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_021D5E34(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E38(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_021D5E3C(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_021D5E4C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E68(const UnkStruct_ov19_021D4DF0 *param0);
const UnkStruct_ov19_021D5BAC *ov19_021D5E70(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E74(const UnkStruct_ov19_021D4DF0 *param0);
const UnkStruct_ov19_021D4F5C *ov19_021D5E8C(const UnkStruct_ov19_021D4DF0 *param0);
const PCBoxes *ov19_021D5E90(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5E94(const UnkStruct_ov19_021D4DF0 *param0);
BoxPokemon *ov19_021D5E9C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EA0(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EA8(const UnkStruct_ov19_021D4DF0 *param0);
s32 ov19_021D5EB0(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EB8(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EC0(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EC8(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_021D5EE0(const UnkStruct_ov19_021D4DF0 *param0);
void ov19_021D5EE8(const UnkStruct_ov19_021D4DF0 *param0, u32 *param1, u32 *param2, u32 *param3, u32 *param4);
BOOL ov19_021D5F20(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5F3C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5F6C(const UnkStruct_ov19_021D4DF0 *param0, u32 param1);
u32 ov19_021D5F7C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5F88(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5F9C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5FA4(const UnkStruct_ov19_021D4DF0 *param0);
const UnkStruct_ov19_021D5FAC *ov19_021D5FAC(const UnkStruct_ov19_021D4DF0 *param0, int param1);
BOOL ov19_021D5FB8(const UnkStruct_ov19_021D4DF0 *param0, int param1);
BOOL ov19_021D5FC0(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_021D5FC8(const UnkStruct_ov19_021D4DF0 *param0);

#endif // POKEPLATINUM_OV19_021D0D80_H
