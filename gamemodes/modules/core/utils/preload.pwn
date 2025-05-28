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

static const AnimLibs[][] = {
  	"AIRPORT",      "ATTRACTORS",   "BAR",          "BASEBALL",     "BD_FIRE",
  	"BEACH",        "BENCHPRESS",   "BF_INJECTION", "BIKE_DBZ",     "BIKED",
  	"BIKEH",        "BIKELEAP",     "BIKES",        "BIKEV",        "BLOWJOBZ",
  	"BMX",          "BOMBER",       "BOX",          "BSKTBALL",     "BUDDY",
  	"BUS",          "CAMERA",       "CAR",          "CAR_CHAT",     "CARRY",
  	"CASINO",       "CHAINSAW",     "CHOPPA",       "CLOTHES",      "COACH",
  	"COLT45",       "COP_AMBIENT",  "COP_DVBYZ",    "CRACK",        "CRIB",
  	"DAM_JUMP",     "DANCING",      "DEALER",       "DILDO",        "DODGE",
  	"DOZER",        "DRIVEBYS",     "FAT",          "FIGHT_B",      "FIGHT_C",
  	"FIGHT_D",      "FIGHT_E",      "FINALE",       "FINALE2",      "FLAME",
  	"FLOWERS",      "FOOD",         "FREEWEIGHTS",  "GANGS",        "GFUNK",
  	"GHANDS",       "GHETTO_DB",    "GOGGLES",      "GRAFFITI",     "GRAVEYARD",
  	"GRENADE",      "GYMNASIUM",    "HAIRCUTS",     "HEIST9",       "INT_HOUSE",
  	"INT_OFFICE",   "INT_SHOP",     "JST_BUISNESS", "KART",         "KISSING",
  	"KNIFE",        "LAPDAN1",      "LAPDAN2",      "LAPDAN3",      "LOWRIDER",
  	"MD_CHASE",     "MD_END",       "MEDIC",        "MISC",         "MTB",
  	"MUSCULAR",     "NEVADA",       "ON_LOOKERS",   "OTB",          "PARACHUTE",
  	"PARK",         "PAULNMAC",     "PED",          "PLAYER_DVBYS", "PLAYIDLES",
  	"POLICE",       "POOL",         "POOR",         "PYTHON",       "QUAD",
  	"QUAD_DBZ",     "RAPPING",      "RIFLE",        "RIOT",         "ROB_BANK",
  	"ROCKET",       "RUNNINGMAN",   "RUSTLER",      "RYDER",        "SCRATCHING",
  	"SEX",          "SHAMAL",       "SHOP",         "SHOTGUN",      "SILENCED",
  	"SKATE",        "SMOKING",      "SNIPER",       "SNM",          "SPRAYCAN",
  	"STRIP",        "SUNBATHE",     "SWAT",         "SWEET",        "SWIM",
  	"SWORD",        "TANK",         "TATTOOS",      "TEC",          "TRAIN",
  	"TRUCK",        "UZI",          "VAN",          "VENDING",      "VORTEX",
  	"WAYFARER",     "WEAPONS",      "WOP",          "WUZI"
};

PreloadAnimLibs(playerid)
{
  	for(new i = 0; i < sizeof(AnimLibs); i++)
  	{
        ApplyAnimation(playerid, AnimLibs[i], "null", 4.0, 0, 0, 0, 0, 0, 1);
  	}
  	return 1;
}
