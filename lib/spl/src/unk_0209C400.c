#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>
#include <nitro/fx/fx.h>

#include "spl_list.h"
#include "spl_manager.h"
#include "spl_behavior.h"
#include "spl_internal.h"
#include "spl_particle.h"

#define DECODE_WH(X) ((u16)(1 << ((X) + 3)))


static u32 SPLUtil_AllocTextureVRAM(u32 size, BOOL is4x4);
static u32 SPLUtil_AllocPaletteVRAM(u32 size, BOOL is4Pltt);


static u32 SPLUtil_AllocTextureVRAM(u32 size, BOOL is4x4)
{
    return (NNS_GfdAllocTexVram(size, is4x4, 0) & 0xFFFF) * 8;
}

static u32 SPLUtil_AllocPaletteVRAM(u32 size, BOOL is4Pltt)
{
    return (NNS_GfdAllocPlttVram(size, is4Pltt, 0) & 0xFFFF) * 8;
}

SPLManager *SPLManager_New(SPLAllocFunc alloc, u16 maxEmitters, u16 maxParticles, u16 fixPolyID, u16 minPolyID, u16 maxPolyID)
{
    int i; // Required to match

    SPLManager *mgr = alloc(sizeof(SPLManager));
    MI_CpuFill8(mgr, 0, sizeof(SPLManager));

    mgr->unk_34 = maxEmitters;
    mgr->unk_36 = maxParticles;

    mgr->polygonID.min = minPolyID;
    mgr->polygonID.max = maxPolyID;
    mgr->polygonID.current = mgr->polygonID.min;
    mgr->polygonID.fix = fixPolyID;
    mgr->polygonID.drawOrder = SPL_DRAW_ORDER_REVERSE;
    mgr->polygonID.unused = 0;

    mgr->alloc = alloc;

    mgr->activeEmitters.count = 0;
    mgr->inactiveEmitters.count = 0;
    mgr->inactiveParticles.count = 0;

    mgr->activeEmitters.first = NULL;
    mgr->inactiveEmitters.first = NULL;
    mgr->inactiveParticles.first = NULL;

    mgr->unk_3C = 0;
    mgr->unk_48 = 0;

    SPLEmitter *emtr = alloc(maxEmitters * sizeof(SPLEmitter));
    MI_CpuFill8(emtr, 0, maxEmitters * sizeof(SPLEmitter));

    for (i = 0; i < maxEmitters; ++i) {
        SPLEmitterList_PushFront(&mgr->inactiveEmitters, &emtr[i]);
    }

    SPLParticle *ptcl = alloc(maxParticles * sizeof(SPLParticle));
    MI_CpuFill8(ptcl, 0, maxParticles * sizeof(SPLParticle));

    for (i = 0; i < maxParticles; ++i) {
        SPLParticleList_PushFront(&mgr->inactiveParticles, &ptcl[i]);
    }

    mgr->unk_28 = NULL;
    mgr->unk_2C = NULL;
    mgr->unk_30 = mgr->unk_32 = 0;

    return mgr;
}

void SPL_0209C988(SPLManager *mgr, const void *data)
{
    int i; // Required to match
    int offset;
    SPLArcHdr *spa;

    spa = (SPLArcHdr *)data;
    offset = sizeof(SPLArcHdr);

    mgr->unk_30 = spa->res_num;
    mgr->unk_32 = spa->tex_num;

    mgr->unk_28 = mgr->alloc(mgr->unk_30 * sizeof(UnkSPLStruct4));

    MI_CpuFill8(mgr->unk_28, 0, mgr->unk_30 * sizeof(UnkSPLStruct4));

    for (i = 0; i < mgr->unk_30; ++i) {
        UnkSPLStruct4 *p_res = mgr->unk_28 + i;
        p_res->unk_00 = (UnkSPLStruct9 *)((u8 *)spa + offset);

        offset += sizeof(UnkSPLStruct9);
        UnkSPLUnion1 flag = p_res->unk_00->unk_00;

        if (flag.unk_05_0) { // Has scaleAnim
            p_res->unk_04 = (UnkSPLStruct10 *)((u8 *)spa + offset);
            offset += sizeof(UnkSPLStruct10);
        } else {
            p_res->unk_04 = NULL;
        }

        if (flag.unk_05_1) { // Has colorAnim
            p_res->unk_08 = (UnkSPLStruct11 *)((u8 *)spa + offset);
            offset += sizeof(UnkSPLStruct11);
        } else {
            p_res->unk_08 = NULL;
        }

        if (flag.unk_05_2) { // Has alphaAnim
            p_res->unk_0C = (UnkSPLStruct12 *)((u8 *)spa + offset);
            offset += sizeof(UnkSPLStruct12);
        } else {
            p_res->unk_0C = NULL;
        }

        if (flag.unk_05_3) { // Has texAnim
            p_res->unk_10 = (UnkSPLStruct13 *)((u8 *)spa + offset);
            offset += sizeof(UnkSPLStruct13);
        } else {
            p_res->unk_10 = NULL;
        }

        if (flag.unk_06_0) { // Has child
            p_res->unk_14 = (UnkSPLStruct14 *)((u8 *)spa + offset);
            offset += sizeof(UnkSPLStruct14);
        } else {
            p_res->unk_14 = NULL;
        }

        // Sum up all fields
        p_res->unk_1C = flag.unk_07_0 + flag.unk_07_1 + flag.unk_07_2
            + flag.unk_07_3 + flag.unk_07_4 + flag.unk_07_5;

        if (p_res->unk_1C != 0) {
            p_res->unk_18 = (UnkStruct_020147B8 *)mgr->alloc(p_res->unk_1C * sizeof(UnkStruct_020147B8));
            UnkStruct_020147B8 *fld = p_res->unk_18;

            if (flag.unk_07_0) {
                fld->unk_04 = (const void *)((u8 *)spa + offset);
                fld->unk_00 = SPLBehavior_ApplyGravity;
                offset += sizeof(SPLGravityBehavior);
                fld++;
            }

            if (flag.unk_07_1) {
                fld->unk_04 = (const void *)((u8 *)spa + offset);
                fld->unk_00 = SPLBehavior_ApplyRandom;
                offset += sizeof(SPLRandomBehavior);
                fld++;
            }

            if (flag.unk_07_2) {
                fld->unk_04 = (const void *)((u8 *)spa + offset);
                fld->unk_00 = SPLBehavior_ApplyMagnet;
                offset += sizeof(SPLMagnetBehavior);
                fld++;
            }

            if (flag.unk_07_3) {
                fld->unk_04 = (const void *)((u8 *)spa + offset);
                fld->unk_00 = SPLBehavior_ApplySpin;
                offset += sizeof(SPLSpinBehavior);
                fld++;
            }

            if (flag.unk_07_4) {
                fld->unk_04 = (const void *)((u8 *)spa + offset);
                fld->unk_00 = SPLBehavior_ApplyCollisionPlane;
                offset += sizeof(SPLCollisionPlaneBehavior);
                fld++;
            }

            if (flag.unk_07_5) {
                fld->unk_04 = (void *)((u8 *)spa + offset);
                fld->unk_00 = SPLBehavior_ApplyConvergence;
                offset += sizeof(SPLConvergenceBehavior);
            }
        } else {
            p_res->unk_18 = NULL;
        }
    }

    mgr->unk_2C = (UnkSPLStruct5 *)mgr->alloc(mgr->unk_32 * sizeof(UnkSPLStruct5));

    MI_CpuFill8(mgr->unk_2C, 0, mgr->unk_32 * sizeof(UnkSPLStruct5));

    for (i = 0; i < mgr->unk_32; ++i) {
        UnkSPLStruct5 *p_tex = &mgr->unk_2C[i];
        UnkSPLStruct15 *p_tex_hdr = (UnkSPLStruct15 *)((u8 *)spa + offset);
        p_tex->unk_00 = p_tex_hdr;
        p_tex->unk_10 = DECODE_WH(p_tex_hdr->unk_04.val2_00_4);
        p_tex->unk_12 = DECODE_WH(p_tex_hdr->unk_04.val2_01_0);
        p_tex->unk_0C = p_tex_hdr->unk_04;
        offset += p_tex_hdr->unk_1C;
    }
}

BOOL SPL_0209C8BC(SPLManager *mgr, u32 (*func)(u32, BOOL))
{
    int i;
    u32 addr;

    GX_BeginLoadTex();

    for (i = 0; i < mgr->unk_32; i++) {
        UnkSPLStruct5 *textures = mgr->unk_2C;
        UnkSPLStruct5 *tex = &textures[i];
        UnkSPLStruct15 *hdr = (UnkSPLStruct15 *)tex->unk_00;

        if (hdr->unk_04.val2_02_1) {
            tex->unk_04 = textures[hdr->unk_04.val2_02_2].unk_04;
        } else {
            addr = func(hdr->unk_08, hdr->unk_04.val2_00_0 == 5);
            GX_LoadTex(((UnkSPLStruct15 *)tex->unk_00) + 1, addr, hdr->unk_08);
            tex->unk_04 = addr;
        }
    }

    GX_EndLoadTex();
    return TRUE;
}

BOOL SPL_0209C808(SPLManager *mgr, u32 (*func)(u32, BOOL))
{
    s32 i;
    UnkSPLStruct5 *tex;
    UnkSPLStruct15 *hdr;
    u32 ofs;

    GX_BeginLoadTexPltt();

    for (i = 0; i < mgr->unk_32; i++) {
        ofs = 0;
        tex = &mgr->unk_2C[i];
        hdr = (UnkSPLStruct15 *)tex->unk_00;

        if (hdr->unk_10 != 0) {
            ofs = func(hdr->unk_10, hdr->unk_04.val2_00_0 == 2);
            GX_LoadTexPltt((u8 *)tex->unk_00 + hdr->unk_0C, ofs, hdr->unk_10);
        }

        tex->unk_08 = ofs;
    }

    GX_EndLoadTexPltt();
    return TRUE;
}

int SPL_0209C7F4(SPLManager *mgr)
{
    return SPL_0209C8BC(mgr, SPLUtil_AllocTextureVRAM);
}

int SPL_0209C7E0(SPLManager *mgr)
{
    return SPL_0209C808(mgr, SPLUtil_AllocPaletteVRAM);
}

void SPL_0209C6A8(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLEmitter *next;

    emtr = mgr->activeEmitters.first;
    while (emtr != NULL) {
        UnkSPLStruct9 *base = emtr->p_res->unk_00;
        next = emtr->unk_00;

        if (!emtr->unk_94.started && emtr->unk_BC >= base->unk_32) {
            emtr->unk_94.started = TRUE;
            emtr->unk_BC = 0;
        }

        if (!emtr->unk_94.stop_calc) {
            if (emtr->unk_F0.unk_02_0 == 0 || mgr->unk_48 == emtr->unk_F0.unk_02_0 - 1) {
                sub_0209D150(mgr, emtr);
            }
        }

        if (((base->unk_00.unk_05_6 && base->unk_3C != 0 && emtr->unk_94.started && emtr->unk_BC > base->unk_3C)
                || emtr->unk_94.terminate)
            && emtr->unk_08.count == 0 && emtr->unk_4C.count == 0) {
            SPLEmitter *e0 = (SPLEmitter *)SPLList_Erase((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
            SPLList_PushFront((SPLList *)&mgr->inactiveEmitters, (SPLNode *)e0);
        }

        emtr = next;
    }

    mgr->unk_48 += 1;
    if (mgr->unk_48 > 1) {
        mgr->unk_48 = 0;
    }
}

void SPL_0209C5E0(SPLManager *mgr, const MtxFx43 *cmr)
{
    SPLEmitter *emtr;

    G3X_AlphaBlend(TRUE);

    mgr->unk_40.unk_04 = cmr;
    if (mgr->polygonID.drawOrder == SPL_DRAW_ORDER_REVERSE) {
        emtr = mgr->activeEmitters.first;

        while (emtr != NULL) {
            mgr->unk_40.unk_00 = emtr;
            if (!emtr->unk_94.stop_draw) {
                sub_0209CF00(mgr);
            }
            emtr = emtr->unk_00;
        }
    } else {
        emtr = mgr->activeEmitters.last;

        while (emtr != NULL) {
            mgr->unk_40.unk_00 = emtr;
            if (!emtr->unk_94.stop_draw) {
                sub_0209CF00(mgr);
            }
            emtr = emtr->unk_04;
        }
    }
}

SPLEmitter *SPL_0209C56C(SPLManager *mgr, int resno, const VecFx32 *pos)
{
    SPLEmitter *emtr = NULL;

    if (mgr->inactiveEmitters.first != NULL) {
        emtr = (SPLEmitter *)SPLList_PopFront((SPLList *)&mgr->inactiveEmitters);
        sub_0209D998(emtr, mgr->unk_28 + resno, pos);
        SPLList_PushFront((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
        if (emtr->p_res->unk_00->unk_00.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

SPLEmitter *SPL_0209C4D8(SPLManager *mgr, int resno, EmitterCallback fpcb)
{
    SPLEmitter *emtr;

    emtr = NULL;
    if (mgr->inactiveEmitters.first != NULL) {
        VecFx32 v0 = { 0, 0, 0 };
        emtr = (SPLEmitter *)SPLList_PopFront((SPLList *)&mgr->inactiveEmitters);
        sub_0209D998(emtr, mgr->unk_28 + resno, &v0);
        if (fpcb != NULL) {
            fpcb(emtr);
        }
        SPLList_PushFront((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
        if (emtr->p_res->unk_00->unk_00.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

SPLEmitter *SPL_CreateWithInitializeEx(SPLManager *mgr, int resNo, VecFx32 *pos, void *pvoid, EmitterCallbackEx cb)
{
    SPLEmitter *emtr;

    emtr = NULL;
    if (mgr->inactiveEmitters.first != NULL) {
        emtr = (SPLEmitter *)SPLList_PopFront((SPLList *)&mgr->inactiveEmitters);
        sub_0209D998(emtr, mgr->unk_28 + resNo, pos);
        if (cb != NULL) {
            cb(emtr, pvoid);
        }

        SPLList_PushFront((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
        if (emtr->p_res->unk_00->unk_00.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

void SPL_0209C444(SPLManager *p0, SPLEmitter *p1)
{
    SPLEmitter *v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_08);
    if (v0 != NULL) {
        do {
            SPLList_PushFront((SPLList *)&p0->inactiveParticles, (SPLNode *)v0);
            v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_08);
        } while (v0 != NULL);
    }
    v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_4C);
    if (v0 != NULL) {
        do {
            SPLList_PushFront((SPLList *)&p0->inactiveParticles, (SPLNode *)v0);
            v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_4C);
        } while (v0 != NULL);
    }
    SPLList_Erase((SPLList *)&p0->activeEmitters, (SPLNode *)p1);
    SPLList_PushFront((SPLList *)&p0->inactiveEmitters, (SPLNode *)p1);
}

void SPL_0209C400(SPLManager *p0)
{
    SPLEmitter *next;
    SPLEmitter *emtr = p0->activeEmitters.first;

    while (emtr != NULL) {
        next = emtr->unk_00;
        SPL_0209C444(p0, emtr);
        emtr = next;
    }
}

void SPL_Emit(SPLManager *mgr, SPLEmitter *emtr)
{
    spl_generate(emtr, (SPLList *)&mgr->inactiveParticles);
}

void SPL_EmitAt(SPLManager *mgr, SPLEmitter *emtr, VecFx32 *pos)
{
    emtr->unk_98.x = pos->x + emtr->p_res->unk_00->unk_04.x;
    emtr->unk_98.y = pos->y + emtr->p_res->unk_00->unk_04.y;
    emtr->unk_98.z = pos->z + emtr->p_res->unk_00->unk_04.z;
    spl_generate(emtr, (SPLList *)&mgr->inactiveParticles);
}
