#include "overlay119/ov119_021D191C.h"

#include <nitro.h>
#include <string.h>

#include "overlay119/ov119_021D0D80.h"
#include "overlay119/struct_ov119_021D0FD0.h"
#include "overlay119/struct_ov119_021D1930.h"

#include "cell_actor.h"
#include "gx_layers.h"
#include "menu.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "sprite_system.h"
#include "text.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200F174.h"
#include "unk_02015F84.h"

static BOOL ov119_021D1930(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1BD0(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1E38(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1E80(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1EF0(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1F48(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1FAC(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D21BC(UnkStruct_ov119_021D0FD0 *param0);

static BOOL (*const Unk_ov119_021D26AC[])(UnkStruct_ov119_021D0FD0 *) = {
    ov119_021D1930,
    ov119_021D1BD0,
};

BOOL ov119_021D191C(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0;

    v0 = Unk_ov119_021D26AC[param0->unk_5C](param0);
    return v0;
}

static BOOL ov119_021D1930(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = 1;

    switch (param0->unk_60) {
    case 0:
        ov119_021D1308(param0->unk_04.unk_00, param0->unk_04.unk_04);
        ov119_021D135C(param0->unk_04.unk_00, param0->unk_04.unk_04);

        ov119_021D1068(param0->unk_04.unk_00, param0->unk_04.unk_04, param0->unk_04.unk_10);
        ov119_021D10F0(param0->unk_04.unk_00, &param0->unk_04.unk_14[0], 1, 2, 19, 27, 4, ((20 + (18 + 12)) + 9), 14);

        ov119_021D1514(param0);
        ov119_021D161C(param0);

        ov119_021D1858(param0);
        ov119_021D190C(param0, 1);

        {
            UnkStruct_ov119_021D1930 v1;

            v1.unk_00 = 71;
            v1.unk_04 = 0;

            param0->unk_04.unk_40 = ov119_021D14AC(&v1);
        }

        param0->unk_60++;
        break;
    case 1:
        ov119_021D1028();
        param0->unk_60++;
    case 2:
        if (IsScreenTransitionDone() == 1) {
            sub_0200569C();
            sub_02004550(13, 1141, 1);
            param0->unk_60++;
        }
        break;
    case 3: {
        BOOL v2;

        v2 = ov119_021D1E38(param0);

        if (v2 == 0) {
            param0->unk_60++;
        }
    } break;
    case 4: {
        BOOL v3;

        v3 = ov119_021D1E80(param0);

        if (v3 == 0) {
            param0->unk_60++;
        }
    } break;
    case 5: {
        BOOL v4;

        v4 = ov119_021D1EF0(param0);

        if (v4 == 0) {
            param0->unk_60++;
        }
    } break;
    case 6: {
        BOOL v5;

        v5 = ov119_021D1F48(param0);

        if (v5 == 0) {
            param0->unk_60++;
        }
    } break;
    case 7: {
        BOOL v6;

        v6 = ov119_021D1FAC(param0);

        if (v6 == 0) {
            ov119_021D18C0(param0);
            {
                int v7;
                int v8;

                v7 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
                v8 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_FORM, NULL);
                sub_02005844(v7, v8);
                param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 0, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
            }
            param0->unk_60++;
        }
    } break;
    case 8:
        if (sub_0200598C() != 0) {
            break;
        }

        sub_02006150(1156);
        param0->unk_60++;
    case 9:
        if (sub_020061E4() != 0) {
            break;
        }

        param0->unk_60++;
    case 10:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 1, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
        param0->unk_60++;
    case 11:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        if (sub_020160F4(param0->unk_04.unk_54, 0) != 1) {
            break;
        }

        if (sub_02007C24(param0->unk_70) != 0) {
            break;
        }

        ov119_021D11E4(param0, param0->unk_04.unk_00, &param0->unk_04.unk_14[1], 1, 25, 13, 6, 4, (((20 + (18 + 12)) + 9) + (27 * 4)), 14);
        param0->unk_60++;
        break;
    case 12: {
        u32 v9 = Menu_ProcessInput(param0->unk_04.unk_48);

        switch (v9) {
        case 0xfffffffe:
            param0->unk_00->unk_04 = 0;
            param0->unk_60++;
            break;
        case 0xffffffff:
            break;
        default:
            if (v9 == 0) {
                param0->unk_00->unk_04 = 1;
            } else {
                param0->unk_00->unk_04 = 0;
            }

            param0->unk_60++;
            break;
        }
    } break;
    case 13:
        ov119_021D12CC(param0);
        param0->unk_60++;
        break;
    case 14:
        param0->unk_60++;
        break;
    case 15:
        ov119_021D1048();
        param0->unk_60++;
    case 16:
        if (IsScreenTransitionDone() == 1) {
            param0->unk_60++;
        }
        break;
    case 17:
    default:
        ov119_021D1900(param0);
        ov119_021D17A0(param0);
        ov119_021D12F8(&param0->unk_04.unk_14[0]);
        ov119_021D145C(param0->unk_04.unk_40->unk_0C);
        ov119_021D150C(param0->unk_04.unk_40);
        v0 = 0;
        break;
    }

    SpriteSystem_DrawSprites(param0->unk_04.unk_4C);

    return v0;
}

static BOOL ov119_021D1BD0(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = 1;

    switch (param0->unk_60) {
    case 0:
        ov119_021D1308(param0->unk_04.unk_00, param0->unk_04.unk_04);
        ov119_021D135C(param0->unk_04.unk_00, param0->unk_04.unk_04);

        ov119_021D1068(param0->unk_04.unk_00, param0->unk_04.unk_04, param0->unk_04.unk_10);
        ov119_021D10F0(param0->unk_04.unk_00, &param0->unk_04.unk_14[0], 1, 2, 19, 27, 4, ((20 + (18 + 12)) + 9), 14);

        ov119_021D1514(param0);
        ov119_021D161C(param0);

        Sprite_SetDrawFlag2(param0->unk_74, 0);

        ov119_021D1858(param0);
        ov119_021D190C(param0, 1);

        {
            UnkStruct_ov119_021D1930 v1;

            v1.unk_00 = 71;
            v1.unk_04 = 1;
            param0->unk_04.unk_40 = ov119_021D14AC(&v1);
        }

        param0->unk_60++;
        break;
    case 1:
        ov119_021D1028();
        param0->unk_60++;
    case 2:
        if (IsScreenTransitionDone() == 1) {
            sub_02004550(13, 1141, 1);
            param0->unk_60++;
        }
        break;
    case 3: {
        BOOL v2;

        v2 = ov119_021D21BC(param0);

        if (v2 == 0) {
            ov119_021D18C0(param0);
            {
                int v3;
                int v4;

                v3 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
                v4 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_FORM, NULL);
                sub_02005844(v3, v4);
                param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 0, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
            }

            param0->unk_60 = 8;
        }
    } break;
    case 4:
    case 5:
    case 6:
    case 7:
        GF_ASSERT(0);
        break;
    case 8:
        if (sub_0200598C() != 0) {
            break;
        }

        sub_02006150(1156);
        param0->unk_60++;
    case 9:
        if (sub_020061E4() != 0) {
            break;
        }

        param0->unk_60++;
    case 10:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 1, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
        param0->unk_60++;
    case 11:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        if (sub_020160F4(param0->unk_04.unk_54, 0) != 1) {
            break;
        }

        if (sub_02007C24(param0->unk_70) != 0) {
            break;
        }

        ov119_021D11E4(param0, param0->unk_04.unk_00, &param0->unk_04.unk_14[1], 1, 25, 13, 6, 4, (((20 + (18 + 12)) + 9) + (27 * 4)), 14);
        param0->unk_60++;
        break;
    case 12: {
        u32 v5 = Menu_ProcessInput(param0->unk_04.unk_48);

        switch (v5) {
        case 0xfffffffe:
            param0->unk_00->unk_04 = 0;
            param0->unk_60++;
            break;
        case 0xffffffff:
            break;
        default:
            if (v5 == 0) {
                param0->unk_00->unk_04 = 1;
            } else {
                param0->unk_00->unk_04 = 0;
            }

            param0->unk_60++;
            break;
        }
    } break;
    case 13:
        ov119_021D12CC(param0);
        param0->unk_60++;
        break;
    case 14:
        param0->unk_60++;
        break;
    case 15:
        ov119_021D1048();
        param0->unk_60++;
    case 16:
        if (IsScreenTransitionDone() == 1) {
            param0->unk_60++;
        }
        break;
    case 17:
    default:
        ov119_021D1900(param0);
        ov119_021D17A0(param0);
        ov119_021D12F8(&param0->unk_04.unk_14[0]);
        ov119_021D145C(param0->unk_04.unk_40->unk_0C);
        ov119_021D150C(param0->unk_04.unk_40);
        v0 = 0;
        break;
    }

    SpriteSystem_DrawSprites(param0->unk_04.unk_4C);

    return v0;
}

static BOOL ov119_021D1E38(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        Sprite_SetAnimationFrame(param0->unk_74, 0);
        param0->unk_68++;
        break;
    case 1:
        if ((++param0->unk_64) >= 25) {
            Sound_PlayEffect(1812);

            param0->unk_68++;
        }
        break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1E80(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        Sprite_SetAnimationFrame(param0->unk_74, 1);
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 0);

        if (v0 == 2) {
            Sound_PlayEffect(1812);

            Sprite_SetAnimationFrame(param0->unk_74, 2);
            param0->unk_68++;
            param0->unk_64 = 0;
        }
    } break;
    default: {
        int v1;

        v1 = ov119_021D176C(param0, 0);

        if (v1 == 2) {
            Sprite_SetAnimationFrame(param0->unk_74, 2);
            param0->unk_68 = 0;
            param0->unk_64 = 0;
            return 0;
        }
    } break;
    }

    return 1;
}

static BOOL ov119_021D1EF0(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 1);

        if (v0 == 1) {
            Sound_PlayEffect(1812);
            Sprite_SetAnimationFrame(param0->unk_74, 3);
            ov119_021D14DC(param0->unk_04.unk_40, 0);
        }

        if (v0 == 2) {
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1F48(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 2);

        if (v0 == 1) {
            Sound_PlayEffect(1812);

            Sprite_SetAnimationFrame(param0->unk_74, 4);
            ov119_021D14DC(param0->unk_04.unk_40, 1);
        }

        if (v0 == 2) {
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1FAC(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        Sprite_SetAnimationFrame(param0->unk_74, 4);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 3);

        if (v0 == 1) {
            Sprite_SetAnimationFrame(param0->unk_74, 5);
            Sound_PlayEffect(1799);
            ov119_021D14DC(param0->unk_04.unk_40, 2);
            ov119_021D14DC(param0->unk_04.unk_40, 3);
        }

        if (v0 == 2) {
            Sprite_SetDrawFlag2(param0->unk_74, 0);
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    case 2:
        if ((++param0->unk_64) >= 10) {
            param0->unk_64 = 0;

            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 0, 16, 0xFFFF);

            {
                NNSG2dImagePaletteProxy *v1;
                int v2;

                v1 = CellActor_GetPaletteProxy(param0->unk_78->sprite);
                v2 = PlttTransfer_GetPlttOffset(v1, NNS_G2D_VRAM_TYPE_2DMAIN);

                PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF ^ (1 << v2), 0, 0, 16, 0xFFFF);
            }

            sub_020086FC(param0->unk_70, 0, 16, 0, 0xFFFF);
            param0->unk_68++;
        }
        break;
    case 3: {
        s16 v3, v4;
        int v5 = 0;

        Sprite_GetPositionXY2(param0->unk_78, &v3, &v4);

        if (v4 > -48) {
            Sprite_OffsetPositionXY2(param0->unk_78, 0, -4);
        } else {
            v5++;
        }

        Sprite_GetPositionXY2(param0->unk_7C, &v3, &v4);

        if (v4 < 192) {
            Sprite_OffsetPositionXY2(param0->unk_7C, 0, +4);
        } else {
            v5++;
        }

        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (v5 != 2) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        ov119_021D190C(param0, 0);
        Sprite_SetDrawFlag2(param0->unk_74, 0);
        Sprite_SetDrawFlag2(param0->unk_78, 0);
        Sprite_SetDrawFlag2(param0->unk_7C, 0);

        param0->unk_68++;
    } break;
    case 4:
        if ((++param0->unk_64) >= 25) {
            param0->unk_64 = 0;

            sub_020086FC(param0->unk_70, 16, 0, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 16, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF, 0, 16, 0, 0xFFFF);

            param0->unk_68++;
        }
        break;
    case 5:
        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        param0->unk_68++;
        break;
    default:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        param0->unk_68 = 0;
        param0->unk_64 = 0;

        return 0;
    }

    return 1;
}

static BOOL ov119_021D21BC(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        ov119_021D14DC(param0->unk_04.unk_40, 0);
        ov119_021D14DC(param0->unk_04.unk_40, 1);
        ov119_021D14DC(param0->unk_04.unk_40, 2);
        ov119_021D14DC(param0->unk_04.unk_40, 3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_68++;
        break;
    case 1:
        switch (param0->unk_64) {
        case 25:
            Sound_PlayEffect(2054);
            break;
        case 80:
            Sound_PlayEffect(1962);
            break;
        case 142:
            Sound_PlayEffect(2069);
            break;
        }

        if ((++param0->unk_64) >= 160) {
            param0->unk_64 = 0;
            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 0, 16, 0xFFFF);

            {
                NNSG2dImagePaletteProxy *v0;
                int v1;

                v0 = CellActor_GetPaletteProxy(param0->unk_78->sprite);
                v1 = PlttTransfer_GetPlttOffset(v0, NNS_G2D_VRAM_TYPE_2DMAIN);

                PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF ^ (1 << v1), 0, 0, 16, 0xFFFF);
            }

            sub_020086FC(param0->unk_70, 0, 16, 0, 0xFFFF);
            param0->unk_68++;
        }
        break;
    case 2: {
        s16 v2, v3;
        int v4 = 0;

        Sprite_GetPositionXY2(param0->unk_78, &v2, &v3);

        if (v3 > -48) {
            Sprite_OffsetPositionXY2(param0->unk_78, 0, -4);
        } else {
            v4++;
        }

        Sprite_GetPositionXY2(param0->unk_7C, &v2, &v3);

        if (v3 < 192) {
            Sprite_OffsetPositionXY2(param0->unk_7C, 0, +4);
        } else {
            v4++;
        }

        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (v4 != 2) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        ov119_021D190C(param0, 0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        Sprite_SetDrawFlag2(param0->unk_74, 0);
        Sprite_SetDrawFlag2(param0->unk_78, 0);
        Sprite_SetDrawFlag2(param0->unk_7C, 0);

        param0->unk_68++;
    } break;
    case 3:
        if ((++param0->unk_64) >= 25) {
            param0->unk_64 = 0;

            sub_020086FC(param0->unk_70, 16, 0, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 16, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF, 0, 16, 0, 0xFFFF);

            param0->unk_68++;
        }
        break;
    case 4:
        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        param0->unk_68++;
        break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}
