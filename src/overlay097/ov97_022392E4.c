#include "overlay097/ov97_022392E4.h"

#include <nitro.h>
#include <string.h>

// Char conversion table?
static const u16 Unk_ov97_0223DAE8[][2] = {
    { 0x1, 0x1 },
    { 0x3, 0x3 },
    { 0x5, 0x5 },
    { 0x7, 0x7 },
    { 0x9, 0x9 },
    { 0xB, 0xB },
    { 0xC, 0xC },
    { 0xE, 0xE },
    { 0x10, 0x10 },
    { 0x12, 0x12 },
    { 0x14, 0x14 },
    { 0x16, 0x16 },
    { 0x18, 0x18 },
    { 0x1A, 0x1A },
    { 0x1C, 0x1C },
    { 0x1E, 0x1E },
    { 0x20, 0x20 },
    { 0x22, 0x22 },
    { 0x25, 0x25 },
    { 0x27, 0x27 },
    { 0x29, 0x29 },
    { 0x2B, 0x2B },
    { 0x2C, 0x2C },
    { 0x2D, 0x2D },
    { 0x2E, 0x2E },
    { 0x2f, 0x2f },
    { 0x30, 0x30 },
    { 0x33, 0x33 },
    { 0x36, 0x36 },
    { 0x39, 0x39 },
    { 0x3C, 0x3C },
    { 0x3f, 0x3f },
    { 0x40, 0x40 },
    { 0x41, 0x41 },
    { 0x42, 0x42 },
    { 0x43, 0x43 },
    { 0x45, 0x45 },
    { 0x47, 0x47 },
    { 0x49, 0x49 },
    { 0x4A, 0x4A },
    { 0x4B, 0x4B },
    { 0x4C, 0x4C },
    { 0x4D, 0x4D },
    { 0x4E, 0x4E },
    { 0x4f, 0x4f },
    { 0x50, 0x50 },
    { 0x51, 0x51 },
    { 0x2, 0x2 },
    { 0x4, 0x4 },
    { 0x6, 0x6 },
    { 0x8, 0x8 },
    { 0xA, 0xA },
    { 0x44, 0x44 },
    { 0x46, 0x46 },
    { 0x48, 0x48 },
    { 0xD, 0xD },
    { 0xf, 0xf },
    { 0x11, 0x11 },
    { 0x13, 0x13 },
    { 0x15, 0x15 },
    { 0x17, 0x17 },
    { 0x19, 0x19 },
    { 0x1B, 0x1B },
    { 0x1D, 0x1D },
    { 0x1f, 0x1f },
    { 0x21, 0x21 },
    { 0x23, 0x23 },
    { 0x26, 0x26 },
    { 0x28, 0x28 },
    { 0x2A, 0x2A },
    { 0x31, 0x31 },
    { 0x34, 0x34 },
    { 0x37, 0x37 },
    { 0x3A, 0x3A },
    { 0x3D, 0x3D },
    { 0x32, 0x32 },
    { 0x35, 0x35 },
    { 0x38, 0x38 },
    { 0x3B, 0x3B },
    { 0x3E, 0x3E },
    { 0x24, 0x24 },
    { 0x53, 0x53 },
    { 0x55, 0x55 },
    { 0x57, 0x57 },
    { 0x59, 0x59 },
    { 0x5B, 0x5B },
    { 0x5C, 0x5C },
    { 0x5E, 0x5E },
    { 0x60, 0x60 },
    { 0x62, 0x62 },
    { 0x64, 0x64 },
    { 0x66, 0x66 },
    { 0x68, 0x68 },
    { 0x6A, 0x6A },
    { 0x6C, 0x6C },
    { 0x6E, 0x6E },
    { 0x70, 0x70 },
    { 0x72, 0x72 },
    { 0x75, 0x75 },
    { 0x77, 0x77 },
    { 0x79, 0x79 },
    { 0x7B, 0x7B },
    { 0x7C, 0x7C },
    { 0x7D, 0x7D },
    { 0x7E, 0x7E },
    { 0x7f, 0x7f },
    { 0x80, 0x80 },
    { 0x83, 0x83 },
    { 0x86, 0x86 },
    { 0x89, 0x89 },
    { 0x8C, 0x8C },
    { 0x8f, 0x8f },
    { 0x90, 0x90 },
    { 0x91, 0x91 },
    { 0x92, 0x92 },
    { 0x93, 0x93 },
    { 0x95, 0x95 },
    { 0x97, 0x97 },
    { 0x99, 0x99 },
    { 0x9A, 0x9A },
    { 0x9B, 0x9B },
    { 0x9C, 0x9C },
    { 0x9D, 0x9D },
    { 0x9E, 0x9E },
    { 0x9f, 0x9f },
    { 0xA0, 0xA0 },
    { 0xA1, 0xA1 },
    { 0x52, 0x52 },
    { 0x54, 0x54 },
    { 0x56, 0x56 },
    { 0x58, 0x58 },
    { 0x5A, 0x5A },
    { 0x94, 0x94 },
    { 0x96, 0x96 },
    { 0x98, 0x98 },
    { 0x5D, 0x5D },
    { 0x5f, 0x5f },
    { 0x61, 0x61 },
    { 0x63, 0x63 },
    { 0x65, 0x65 },
    { 0x67, 0x67 },
    { 0x69, 0x69 },
    { 0x6B, 0x6B },
    { 0x6D, 0x6D },
    { 0x6f, 0x6f },
    { 0x71, 0x71 },
    { 0x73, 0x73 },
    { 0x76, 0x76 },
    { 0x78, 0x78 },
    { 0x7A, 0x7A },
    { 0x81, 0x81 },
    { 0x84, 0x84 },
    { 0x87, 0x87 },
    { 0x8A, 0x8A },
    { 0x8D, 0x8D },
    { 0x82, 0x82 },
    { 0x85, 0x85 },
    { 0x88, 0x88 },
    { 0x8B, 0x8B },
    { 0x8E, 0x8E },
    { 0x74, 0x74 },
    { 0xA2, 0x121 },
    { 0xA3, 0x122 },
    { 0xA4, 0x123 },
    { 0xA5, 0x124 },
    { 0xA6, 0x125 },
    { 0xA7, 0x126 },
    { 0xA8, 0x127 },
    { 0xA9, 0x128 },
    { 0xAA, 0x129 },
    { 0xAB, 0x12A },
    { 0xE1, 0x1AB },
    { 0xE2, 0x1AC },
    { 0xE4, 0x1AE },
    { 0xf1, 0x1BE },
    { 0xE6, 0x1B0 },
    { 0xE5, 0x1af },
    { 0xEA, 0xEA },
    { 0xEB, 0xEB },
    { 0xE8, 0x1B2 },
    { 0xE9, 0x1B3 },
    { 0xEE, 0x1BB },
    { 0xef, 0x1BC },
    { 0x112, 0x112 },
    { 0xE3, 0x1AD },
    { 0xf2, 0x176 },
    { 0xE7, 0x1B1 },
    { 0xAC, 0x12B },
    { 0xAD, 0x12C },
    { 0xAE, 0x12D },
    { 0xaf, 0x12E },
    { 0xB0, 0x12f },
    { 0xB1, 0x130 },
    { 0xB2, 0x131 },
    { 0xB3, 0x132 },
    { 0xB4, 0x133 },
    { 0xB5, 0x134 },
    { 0xB6, 0x135 },
    { 0xB7, 0x136 },
    { 0xB8, 0x137 },
    { 0xB9, 0x138 },
    { 0xBA, 0x139 },
    { 0xBB, 0x13A },
    { 0xBC, 0x13B },
    { 0xBD, 0x13C },
    { 0xBE, 0x13D },
    { 0xbf, 0x13E },
    { 0xC0, 0x13f },
    { 0xC1, 0x140 },
    { 0xC2, 0x141 },
    { 0xC3, 0x142 },
    { 0xC4, 0x143 },
    { 0xC5, 0x144 },
    { 0xC6, 0x145 },
    { 0xC7, 0x146 },
    { 0xC8, 0x147 },
    { 0xC9, 0x148 },
    { 0xCA, 0x149 },
    { 0xCB, 0x14A },
    { 0xCC, 0x14B },
    { 0xCD, 0x14C },
    { 0xCE, 0x14D },
    { 0xcf, 0x14E },
    { 0xD0, 0x14f },
    { 0xD1, 0x150 },
    { 0xD2, 0x151 },
    { 0xD3, 0x152 },
    { 0xD4, 0x153 },
    { 0xD5, 0x154 },
    { 0xD6, 0x155 },
    { 0xD7, 0x156 },
    { 0xD8, 0x157 },
    { 0xD9, 0x158 },
    { 0xDA, 0x159 },
    { 0xDB, 0x15A },
    { 0xDC, 0x15B },
    { 0xDD, 0x15C },
    { 0xDE, 0x15D },
    { 0xdf, 0x15E },
    { 0x11f, 0x11f },
    { 0xf6, 0x1C4 },
    { 0x163, 0x163 },
    { 0x175, 0x175 },
    { 0x17B, 0x17B },
    { 0x183, 0x183 },
    { 0x195, 0x195 },
    { 0x19B, 0x19B }
};

static u16 ov97_022392E4(u32 language)
{
    return (language == JAPANESE) ? 0x1 : 0x1de;
}

static u16 ov97_022392F8(u32 language)
{
    switch (language) {
    case JAPANESE:
    default:
        return 0xea;
    case ENGLISH:
    case ITALIAN:
    case SPANISH:
        return 0x1b4;
    case FRENCH:
        return 0x1b7;
    case GERMAN:
        return 0x1b6;
    }
}

static u16 ov97_02239334(u32 language)
{
    switch (language) {
    case JAPANESE:
    default:
        return 0xeb;
    case ENGLISH:
    case ITALIAN:
    case SPANISH:
        return 0x1b5;
    case FRENCH:
        return 0x1b8;
    case GERMAN:
        return 0x1b4;
    }
}

BOOL GBAStringToDSString(const u8 *src, u16 *dst, u32 length, u32 language)
{
    u32 i, v1;

    v1 = (language != JAPANESE);

    for (i = 0; i < (length - 1); i++) {
        if (src[i] == 0xff) {
            break;
        }

        if (src[i] >= NELEMS(Unk_ov97_0223DAE8)) {
            int v2, v3;

            v3 = ((length - 1) < 10) ? (length - 1) : 10;

            for (v2 = 0; v2 < v3; v2++) {
                dst[v2] = 0x1ac;
            }

            dst[v2] = 0xffff;
            return 0;
        }

        switch (Unk_ov97_0223DAE8[src[i]][v1]) {
        case 0x1:
            dst[i] = ov97_022392E4(language);
            break;
        case 0xea:
            dst[i] = ov97_022392F8(language);
            break;
        case 0xeb:
            dst[i] = ov97_02239334(language);
            break;
        default:
            dst[i] = Unk_ov97_0223DAE8[src[i]][v1];
            break;
        }
    }

    dst[i] = 0xffff;
    return 1;
}
