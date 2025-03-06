#include "unk_02099550.h"

#include <nitro.h>
#include <string.h>

#include "overlay018/ov18_0221F800.h"

#include "game_overlay.h"
#include "heap.h"
#include "main.h"
#include "overlay_manager.h"
#include "savedata.h"

FS_EXTERN_OVERLAY(overlay4);
FS_EXTERN_OVERLAY(overlay18);
FS_EXTERN_OVERLAY(overlay60);
FS_EXTERN_OVERLAY(overlay89);

void sub_02099550(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay4), 2);
}

void sub_02099560(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay4));
}

void sub_02099570(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay18), 2);
}

void sub_02099580(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay18));
}

void sub_02099590(SaveData *param0, int param1)
{
    sub_02099550();
    sub_02099570();

    ov18_0221F800(param1);

    sub_02099580();
    sub_02099560();

    OS_ResetSystem(0);
}

void sub_020995B4(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay60), 2);
}

void sub_020995C4(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay60));
}

static int sub_020995D4(OverlayManager *param0, int *param1)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_49, 0x41000);
    sub_02099590(((ApplicationArgs *)OverlayManager_Args(param0))->saveData, 49);
    Heap_Destroy(HEAP_ID_49);

    OS_ResetSystem(0);
    return 1;
}

const OverlayManagerTemplate Unk_020F6DF0 = {
    sub_020995D4,
    NULL,
    NULL,
    0xffffffff,
};
