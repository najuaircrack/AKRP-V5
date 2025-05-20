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

PreloadAnims(playerid)
{
    PreloadAnimLib(playerid, "DANCING");
    PreloadAnimLib(playerid, "HEIST9");
    PreloadAnimLib(playerid, "BOMBER");
    PreloadAnimLib(playerid, "RAPPING");
    PreloadAnimLib(playerid, "SHOP");
    PreloadAnimLib(playerid, "BEACH");
    PreloadAnimLib(playerid, "SMOKING");
    PreloadAnimLib(playerid, "FOOD");
    PreloadAnimLib(playerid, "ON_LOOKERS");
    PreloadAnimLib(playerid, "DEALER");
    PreloadAnimLib(playerid, "CRACK");
    PreloadAnimLib(playerid, "CARRY");
    PreloadAnimLib(playerid, "COP_AMBIENT");
    PreloadAnimLib(playerid, "PARK");
    PreloadAnimLib(playerid, "INT_HOUSE");
    PreloadAnimLib(playerid, "FOOD" );
    PreloadAnimLib(playerid, "ped" );
    PreloadAnimLib(playerid, "MISC" );
    PreloadAnimLib(playerid, "POLICE" );
    PreloadAnimLib(playerid, "GRAVEYARD" );
    PreloadAnimLib(playerid, "WUZI" );
    PreloadAnimLib(playerid, "SUNBATHE" );
    PreloadAnimLib(playerid, "PLAYIDLES" );
    PreloadAnimLib(playerid, "CAMERA" );
    PreloadAnimLib(playerid, "RIOT" );
    PreloadAnimLib(playerid, "DAM_JUMP" );
    PreloadAnimLib(playerid, "JST_BUISNESS" );
    PreloadAnimLib(playerid, "KISSING" );
    PreloadAnimLib(playerid, "GANGS" );
    PreloadAnimLib(playerid, "GHANDS" );
    PreloadAnimLib(playerid, "BLOWJOBZ" );
    PreloadAnimLib(playerid, "SWEET" );
}

PreloadAnimLib(playerid, const animlib[])
{
	ApplyAnimation(playerid, animlib, "null", 0.0, 0, 0, 0, 0, 0);
}