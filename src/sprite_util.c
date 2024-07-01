#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_02009CFC.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "sprite_util.h"
#include "heap.h"
#include "resource_collection.h"


typedef struct SpriteResource_t {
    Resource * resource;
    int unk_04;
    void * unk_08;
} SpriteResource;

typedef struct SpriteResourceCollection_t {
    ResourceCollection * collection;
    SpriteResource * resources;
    int capacity;
    int count;
    int unk_10;
} SpriteResourceCollection;

typedef struct {
    int unk_00;
    char unk_04[64];
    int unk_44[2];
} UnkStruct_02009794;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    int unk_0C;
    int unk_10[2];
} UnkStruct_0200A2C0;

typedef struct UnkStruct_02009F38_t {
    void * unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C;
} UnkStruct_02009F38;

typedef struct {
    NNSG2dCharacterData * unk_00;
    int unk_04;
} UnkStruct_0200A144;

typedef struct {
    NNSG2dPaletteData * unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_02009E34;

typedef struct {
    NNSG2dCellDataBank * unk_00;
} UnkStruct_02009E4C;

typedef struct {
    NNSG2dAnimBankData * unk_00;
} UnkStruct_02009E64;

typedef struct {
    NNSG2dMultiCellDataBank * unk_00;
} UnkStruct_02009E7C;

typedef struct {
    NNSG2dAnimBankData * unk_00;
} UnkStruct_02009E94;

static SpriteResource * sub_0200A0A8(SpriteResourceCollection * param0);
static void sub_0200A224(SpriteResourceCollection * param0, SpriteResource * param1, const char * param2, int param3, int param4, int param5, int param6, int param7);
static void sub_0200A250(SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10);
static void sub_0200A288(SpriteResourceCollection * param0, SpriteResource * param1, NARC * param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10);
static void * sub_0200A2DC(NARC * param0, u32 param1, BOOL param2, u32 param3, u32 param4);
static void sub_0200A0D4(SpriteResource * param0, int param1, int param2, int param3, int param4);
static UnkStruct_0200A144 * sub_0200A144(void * param0, int param1, int param2);
static UnkStruct_02009E34 * sub_0200A164(void * param0, int param1, int param2, int param3);
static UnkStruct_02009E4C * sub_0200A188(void * param0, int param1);
static UnkStruct_02009E64 * sub_0200A1A4(void * param0, int param1);
static UnkStruct_02009E7C * sub_0200A1C0(void * param0, int param1);
static UnkStruct_02009E94 * sub_0200A1DC(void * param0, int param1);
static void * sub_0200A20C(const SpriteResource * param0);
static void sub_0200A1F8(SpriteResource * param0);
static int sub_0200A2C0(const UnkStruct_0200A2C0 * param0);

SpriteResourceCollection *SpriteResourceCollection_New(int capacity, int param1, enum HeapId heapID)
{
    SpriteResourceCollection *spriteResources = Heap_AllocFromHeap(heapID, sizeof(SpriteResourceCollection));
    spriteResources->collection = ResourceCollection_New(capacity, heapID);
    spriteResources->resources = Heap_AllocFromHeap(heapID, sizeof(SpriteResource) * capacity);

    memset(spriteResources->resources, 0, sizeof(SpriteResource) * capacity);

    spriteResources->capacity = capacity;
    spriteResources->count = 0;
    spriteResources->unk_10 = param1;

    return spriteResources;
}

void SpriteResourceCollection_Delete(SpriteResourceCollection *spriteResources)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->collection);
    GF_ASSERT(spriteResources->resources);

    SpriteResourceCollection_Clear(spriteResources);

    ResourceCollection_Delete(spriteResources->collection);
    spriteResources->collection = NULL;

    Heap_FreeToHeap(spriteResources->resources);
    spriteResources->resources = NULL;

    Heap_FreeToHeap(spriteResources);
    spriteResources = NULL;
}

SpriteResource * sub_02009794 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3)
{
    SpriteResource * v0;
    UnkStruct_02009794 * v1;
    UnkStruct_0200A2C0 * v2;

    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 > param2);
    GF_ASSERT(param0->unk_10 == param1->unk_08);

    v0 = sub_0200A0A8(param0);
    GF_ASSERT(v0);

    if (param1->unk_0C == 0) {
        v1 = (UnkStruct_02009794 *)param1->unk_00 + param2;
        GF_ASSERT(sub_02009D34(param0, v1->unk_00) == 1);
        sub_0200A224(param0, v0, v1->unk_04, v1->unk_00, v1->unk_44[0], v1->unk_44[1], param1->unk_08, param3);
    } else {
        v2 = (UnkStruct_0200A2C0 *)param1->unk_00 + param2;
        GF_ASSERT(sub_02009D34(param0, v2->unk_0C) == 1);
        sub_0200A250(param0, v0, v2->unk_00, v2->unk_04, v2->unk_08, v2->unk_0C, v2->unk_10[0], v2->unk_10[1], param1->unk_08, param3, 0);
    }

    param0->count++;

    return v0;
}

SpriteResource * sub_0200985C (SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A250(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, 0);

    param0->count++;

    return v0;
}

SpriteResource * sub_020098B8 (SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A250(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, 0);

    param0->count++;
    return v0;
}

SpriteResource * sub_02009918 (SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A250(param0, v0, param1, param2, param3, param4, 0, 0, param5, param6, 0);

    param0->count++;
    return v0;
}

void sub_02009968 (SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 == 0);

    v1 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);

    SpriteResourceCollection_Remove(param0, param1);
    sub_0200A250(param0, param1, param2, param3, param4, v1, v0, 0, 0, param5, 0);
}

void sub_020099D4 (SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;
    int v2;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 == 1);

    v2 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);
    v1 = sub_02009EE8(param1);

    SpriteResourceCollection_Remove(param0, param1);
    sub_0200A250(param0, param1, param2, param3, param4, v2, v0, v1, 1, param5, 0);
}

SpriteResource * sub_02009A4C (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = sub_0200A0A8(param0);
    GF_ASSERT(v0);

    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, 0);
    param0->count++;

    return v0;
}

SpriteResource * sub_02009AA8 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = sub_0200A0A8(param0);
    GF_ASSERT(v0);

    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, param7);

    param0->count++;

    return v0;
}

SpriteResource * sub_02009B04 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, 0);

    param0->count++;
    return v0;
}

SpriteResource * sub_02009B64 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7, int param8)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, param8);

    param0->count++;
    return v0;
}

SpriteResource * sub_02009BC4 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A288(param0, v0, param1, param2, param3, param4, 0, 0, param5, param6, 0);

    param0->count++;
    return v0;
}

void sub_02009C14 (SpriteResourceCollection * param0, SpriteResource * param1, NARC * param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 == 0);

    v1 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);

    SpriteResourceCollection_Remove(param0, param1);
    sub_0200A288(param0, param1, param2, param3, param4, v1, v0, 0, 0, param5, 0);
}

int sub_02009C80 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, UnkStruct_02009CFC * param2, int param3)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);

    sub_02009CB4(param0, param1, 0, param1->unk_04, param2, param3);
    return param1->unk_04;
}

void sub_02009CB4 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3, UnkStruct_02009CFC * param4, int param5)
{
    int v0;
    SpriteResource * v1;

    for (v0 = param2; v0 < param2 + param3; v0++) {
        v1 = sub_02009794(param0, param1, v0, param5);

        if (param4 != NULL) {
            if (param4->unk_04 > param4->unk_08) {
                param4->unk_00[param4->unk_08] = v1;
                param4->unk_08++;
            }
        }
    }
}

UnkStruct_02009CFC * sub_02009CFC (int param0, int param1)
{
    UnkStruct_02009CFC * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02009CFC));

    v0->unk_00 = Heap_AllocFromHeap(param1, sizeof(SpriteResource *) * param0);
    v0->unk_04 = param0;
    v0->unk_08 = 0;

    return v0;
}

void sub_02009D20 (UnkStruct_02009CFC * param0)
{
    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0);
    param0 = NULL;
}

BOOL sub_02009D34 (const SpriteResourceCollection * param0, int param1)
{
    GF_ASSERT(param0);
    return ResourceCollection_IsIDUnused(param0->collection, param1);
}

void sub_02009D4C (SpriteResource * param0)
{
    GF_ASSERT(param0);

    sub_0200A1F8(param0);
    Resource_SetData(param0->resource, NULL);
}

void SpriteResourceCollection_Remove(SpriteResourceCollection *spriteResources, SpriteResource *resource)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->resources);

    sub_0200A1F8(resource);
    ResourceCollection_Remove(spriteResources->collection, resource->resource);

    resource->resource = NULL;
    spriteResources->count--;
}

void SpriteResourceCollection_Clear(SpriteResourceCollection *spriteResources)
{
    for (int i = 0; i < spriteResources->capacity; i++) {
        if (spriteResources->resources[i].resource != NULL) {
            SpriteResourceCollection_Remove(spriteResources, spriteResources->resources + i);
        }
    }
}

SpriteResource * sub_02009DC8 (const SpriteResourceCollection * param0, int param1)
{
    int v0;
    int v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0].resource) {
            v1 = Resource_GetID(param0->resources[v0].resource);

            if (v1 == param1) {
                return param0->resources + v0;
            }
        }
    }

    return NULL;
}

int sub_02009E08 (const SpriteResource * param0)
{
    GF_ASSERT(param0);
    return Resource_GetID(param0->resource);
}

NNSG2dCharacterData * sub_02009E1C (const SpriteResource * param0)
{
    UnkStruct_0200A144 * v0;

    GF_ASSERT(param0->unk_04 == 0);

    v0 = (UnkStruct_0200A144 *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dPaletteData * sub_02009E34 (const SpriteResource * param0)
{
    UnkStruct_02009E34 * v0;

    GF_ASSERT(param0->unk_04 == 1);

    v0 = (UnkStruct_02009E34 *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dCellDataBank * sub_02009E4C (const SpriteResource * param0)
{
    UnkStruct_02009E4C * v0;

    GF_ASSERT(param0->unk_04 == 2);

    v0 = (UnkStruct_02009E4C *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dCellAnimBankData * sub_02009E64 (const SpriteResource * param0)
{
    UnkStruct_02009E64 * v0;

    GF_ASSERT(param0->unk_04 == 3);

    v0 = (UnkStruct_02009E64 *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dMultiCellDataBank * sub_02009E7C (const SpriteResource * param0)
{
    UnkStruct_02009E7C * v0;

    GF_ASSERT(param0->unk_04 == 4);

    v0 = (UnkStruct_02009E7C *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dMultiCellAnimBankData * sub_02009E94 (const SpriteResource * param0)
{
    UnkStruct_02009E94 * v0;

    GF_ASSERT(param0->unk_04 == 5);

    v0 = (UnkStruct_02009E94 *)sub_0200A20C(param0);
    return v0->unk_00;
}

int sub_02009EAC (const SpriteResource * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

int sub_02009EBC (const SpriteResource * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 == 0) {
        UnkStruct_0200A144 * v0;

        v0 = sub_0200A20C(param0);
        return v0->unk_04;
    }

    if (param0->unk_04 == 1) {
        UnkStruct_02009E34 * v1;

        v1 = sub_0200A20C(param0);
        return v1->unk_04;
    }

    return 0;
}

int sub_02009EE8 (const SpriteResource * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 == 1) {
        UnkStruct_02009E34 * v0;

        v0 = sub_0200A20C(param0);
        return v0->unk_08;
    }

    return 0;
}

void sub_02009F08 (SpriteResource * param0, int param1)
{
    GF_ASSERT(param0);

    if (param0->unk_04 == 0) {
        UnkStruct_0200A144 * v0;

        v0 = sub_0200A20C(param0);
        v0->unk_04 = param1;
    }

    if (param0->unk_04 == 1) {
        UnkStruct_02009E34 * v1;

        v1 = sub_0200A20C(param0);
        v1->unk_04 = param1;
    }
}

int sub_02009F34 (void)
{
    return sizeof(UnkStruct_02009F38);
}

UnkStruct_02009F38 * sub_02009F38 (UnkStruct_02009F38 * param0, int param1)
{
    return param0 + param1;
}

void sub_02009F40 (const void * param0, UnkStruct_02009F38 * param1, int param2)
{
    int v0;
    const int * v1;

    GF_ASSERT(param1);

    v1 = param0;

    param1->unk_08 = v1[0];
    param1->unk_0C = 1;
    param1->unk_04 = sub_0200A2C0((const UnkStruct_0200A2C0 *)(v1 + 1));

    if (param1->unk_04 > 0) {
        param1->unk_00 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_0200A2C0) * param1->unk_04);
    } else {
        param1->unk_00 = NULL;
    }

    if (param1->unk_00) {
        memcpy(param1->unk_00, v1 + 1, sizeof(UnkStruct_0200A2C0) * param1->unk_04);
    }
}

void sub_02009F8C (UnkStruct_02009F38 * param0)
{
    if (param0->unk_00) {
        Heap_FreeToHeap(param0->unk_00);
    }

    param0->unk_00 = NULL;
    param0->unk_04 = 0;
}

int sub_02009FA4 (const UnkStruct_02009F38 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

int sub_02009FB4 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_00;
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_0C;
    }

    return v0;
}

int sub_02009FE8 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 1) {
        UnkStruct_0200A2C0 * v1 = param0->unk_00;

        v0 = v1[param1].unk_04;
    }

    return v0;
}

int sub_0200A014 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 1) {
        UnkStruct_0200A2C0 * v1 = param0->unk_00;

        v0 = v1[param1].unk_08;
    }

    return v0;
}

int sub_0200A040 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_44[0];
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_10[0];
    }

    return v0;
}

int sub_0200A074 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_44[1];
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_10[1];
    }

    return v0;
}

static SpriteResource * sub_0200A0A8 (SpriteResourceCollection * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0].resource == NULL) {
            return param0->resources + v0;
        }
    }

    return NULL;
}

static void sub_0200A0D4 (SpriteResource * param0, int param1, int param2, int param3, int param4)
{
    void * v0;

    v0 = Resource_GetData(param0->resource);

    switch (param1) {
    case 0:
        param0->unk_08 = sub_0200A144(v0, param2, param4);
        break;
    case 1:
        param0->unk_08 = sub_0200A164(v0, param2, param3, param4);
        break;
    case 2:
        param0->unk_08 = sub_0200A188(v0, param4);
        break;
    case 3:
        param0->unk_08 = sub_0200A1A4(v0, param4);
        break;
    case 4:
        param0->unk_08 = sub_0200A1C0(v0, param4);
        break;
    case 5:
        param0->unk_08 = sub_0200A1DC(v0, param4);
        break;
    }
}

static UnkStruct_0200A144 * sub_0200A144 (void * param0, int param1, int param2)
{
    UnkStruct_0200A144 * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_0200A144));
    NNS_G2dGetUnpackedCharacterData(param0, &v0->unk_00);
    v0->unk_04 = param1;

    return v0;
}

static UnkStruct_02009E34 * sub_0200A164 (void * param0, int param1, int param2, int param3)
{
    UnkStruct_02009E34 * v0;

    v0 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_02009E34));
    NNS_G2dGetUnpackedPaletteData(param0, &v0->unk_00);

    v0->unk_04 = param1;
    v0->unk_08 = param2;

    return v0;
}

static UnkStruct_02009E4C * sub_0200A188 (void * param0, int param1)
{
    UnkStruct_02009E4C * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02009E4C));
    NNS_G2dGetUnpackedCellBank(param0, &v0->unk_00);

    return v0;
}

static UnkStruct_02009E64 * sub_0200A1A4 (void * param0, int param1)
{
    UnkStruct_02009E64 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02009E64));
    NNS_G2dGetUnpackedAnimBank(param0, &v0->unk_00);

    return v0;
}

static UnkStruct_02009E7C * sub_0200A1C0 (void * param0, int param1)
{
    UnkStruct_02009E7C * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02009E7C));
    NNS_G2dGetUnpackedMultiCellBank(param0, &v0->unk_00);

    return v0;
}

static UnkStruct_02009E94 * sub_0200A1DC (void * param0, int param1)
{
    UnkStruct_02009E94 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02009E94));
    NNS_G2dGetUnpackedMCAnimBank(param0, &v0->unk_00);

    return v0;
}

static void sub_0200A1F8 (SpriteResource * param0)
{
    if (param0->unk_08) {
        Heap_FreeToHeap(param0->unk_08);
    }

    param0->unk_08 = NULL;
}

static void * sub_0200A20C (const SpriteResource * param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_08);

    return param0->unk_08;
}

static void sub_0200A224 (SpriteResourceCollection * param0, SpriteResource * param1, const char * param2, int param3, int param4, int param5, int param6, int param7)
{
    param1->resource = ResourceCollection_AddFromFile(param0->collection, param2, param3, param7);
    param1->unk_04 = param6;

    sub_0200A0D4(param1, param6, param4, param5, param7);
}

static void sub_0200A250 (SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10)
{
    void * v0;

    v0 = sub_02006FE8(param2, param3, param4, param9, param10);

    param1->resource = ResourceCollection_Add(param0->collection, v0, param5);
    param1->unk_04 = param8;

    sub_0200A0D4(param1, param8, param6, param7, param9);
}

static void sub_0200A288 (SpriteResourceCollection * param0, SpriteResource * param1, NARC * param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10)
{
    void * v0;

    v0 = sub_0200A2DC(param2, param3, param4, param9, param10);

    param1->resource = ResourceCollection_Add(param0->collection, v0, param5);
    param1->unk_04 = param8;

    sub_0200A0D4(param1, param8, param6, param7, param9);
}

static int sub_0200A2C0 (const UnkStruct_0200A2C0 * param0)
{
    int v0;

    v0 = 0;

    while (param0[v0].unk_00 != 0xfffffffe) {
        v0++;
    }

    return v0;
}

static void * sub_0200A2DC (NARC * param0, u32 param1, BOOL param2, u32 param3, u32 param4)
{
    void * v0;

    v0 = NARC_AllocAndReadWholeMember(param0, param1, param3);

    if (v0 != NULL) {
        if (param2) {
            void * v1;

            if (param4 == 0) {
                v1 = Heap_AllocFromHeap(param3, MI_GetUncompressedSize(v0));
            } else {
                v1 = Heap_AllocFromHeapAtEnd(param3, MI_GetUncompressedSize(v0));
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}
