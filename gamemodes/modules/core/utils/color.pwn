/*
 ****************************************************************
 *  ___________________________________________________________ *
 * |                         INFORMATION                       |*
 * |___________________________________________________________|*
 * |                                                           |*
 * |   [Server]: "All Kerala Roleplay"                         |*
 * |   [Founder]: "SHAZ"                                       |*
 * |   [Developer]: "NAJU & ROCKY" (@najuaircrack)             |*
 * |   [Scripts Date]: "20/5/2025"                             |*                                                         
 * |   [Owner]: "GULAN & MANU"                                 |*
 * |   [Version]: "V5-OMP - Public Release"                    |*
 * |___________________________________________________________|*
 *                                                              *
 *   COPYRIGHT © 2024 NAJU - All Kerala Roleplay.               *
 *   This script is publicly released by the original author.   *
 *                                                              *
 *   Redistribution and use with credit are allowed.            *
 *   Commercial use or resale is strictly prohibited.           *
 *                                                              *
 *   For contributions, issues, or forks, visit:                *
 *   https://github.com/najuaircrack/AKRPV5                     *
 *                                                              *
 *   Contact: Kcnajwan7@gmail.com                               *
 ****************************************************************
*/
//-----------------------------------------------------[ COLORS ] ----------------------------------------------------------

#define Color_RGBToHex(%0,%1,%2) (0xFF | ((%2) << 8) | ((%1) << 16) | ((%0) << 24))
#define Color_RGBAToHex(%0,%1,%2,%3) ((%3) | ((%2) << 8) | ((%1) << 16) | ((%0) << 24))
#define Color_RGBAToARGB(%0,%1,%2,%3) ((%2) | ((%1) << 8) | ((%0) << 16) | ((%3) << 24))
#define Color_Darken(%0,%1) ((%0) & Color_RGBToHex((%1), (%1), (%1)))
#define Color_Brighten(%0,%1) (~(~(%0) & Color_RGBToHex((%1), (%1), (%1))))

//-----------------------------------------------------[ RGBA ] ----------------------------------------------------------

#define RGBA_GetRed(%0) ((%0) >> 24 & 0xFF)
#define RGBA_GetGreen(%0) ((%0) >> 16 & 0xFF)
#define RGBA_GetBlue(%0) ((%0) >> 8 & 0xFF)
#define RGBA_GetAlpha(%0) ((%0) & 0xFF)
#define RGBA_SetRed(%0,%1) (((%0) & 0x00FFFFFF) | ((%1) << 24))
#define RGBA_SetGreen(%0,%1) (((%0) & 0xFF00FFFF) | ((%1) << 16))
#define RGBA_SetBlue(%0,%1) (((%0) & 0xFFFF00FF) | ((%1) << 8))
#define RGBA_SetAlpha(%0,%1) (((%0) & 0xFFFFFF00) | (%1))
#define RGB_GetRed(%0) ((%0) >> 16 & 0xFF)
#define RGB_GetGreen(%0) ((%0) >> 8 & 0xFF)
#define RGB_GetBlue(%0) ((%0) & 0xFF)
#define RGB_SetRed(%0,%1) (((%0) & 0x00FFFFFF) | ((%1) << 16))
#define RGB_SetGreen(%0,%1) (((%0) & 0xFF00FFFF) | ((%1) << 8))
#define RGB_SetBlue(%0,%1) (((%0) & 0xFFFF00FF) | (%1))

//-----------------------------------------------------[ ARGB ] ----------------------------------------------------------

#define ARGB_GetAlpha(%0) ((%0) >> 24 & 0xFF)
#define ARGB_GetRed(%0) ((%0) >> 16 & 0xFF)
#define ARGB_GetGreen(%0) ((%0) >> 8 & 0xFF)
#define ARGB_GetBlue(%0) ((%0) & 0xFF)
#define ARGB_SetAlpha(%0,%1) (((%0) & 0xFFFFFF00) | ((%1) << 24))
#define ARGB_SetRed(%0,%1) (((%0) & 0x00FFFFFF) | ((%1) << 16))
#define ARGB_SetGreen(%0,%1) (((%0) & 0xFF00FFFF) | ((%1) << 8))
#define ARGB_SetBlue(%0,%1) (((%0) & 0xFFFF00FF) | (%1))