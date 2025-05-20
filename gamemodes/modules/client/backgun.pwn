/*
 ****************************************************************
 *  ___________________________________________________________ *
 * |                         INFORMATION                       |*
 * |___________________________________________________________|*
 * |                                                           |*
 * |   [Server]: "All Kerala Roleplay"                         |*
 * |   [Founder]: "SHAZ"                                       |*
 * |   [Developer]: "NAJU & ROCKY" (@najuaircrack)             |*
 * |   [Scripts Date]: "20/5/2025"                             |*                                                         |*
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

#define ARMEDBODY_USE_HEAVY_WEAPON          (false)




stock GetWeaponModel(weaponid)
{
    switch(weaponid)
    {
        case 1:
            return 331;

        case 2..8:
            return weaponid+331;

        case 9:
            return 341;

        case 10..15:
            return weaponid+311;

        case 16..18:
            return weaponid+326;

        case 22..29:
            return weaponid+324;

        case 30,31:
            return weaponid+325;

        case 32:
            return 372;

        case 33..45:
            return weaponid+324;

        case 46:
            return 371;
    }
    return 0;
}
