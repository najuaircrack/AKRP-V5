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

//-----------------------------[ ANTICHEATS]----------------------------

#define AC_TABLE_SETTINGS "anticheat_settings"
#define AC_TABLE_FIELD_CODE "ac_code" 
#define AC_TABLE_FIELD_TRIGGER "ac_code_trigger_type" 
#define AC_MAX_CODES 53
#define AC_MAX_CODE_LENGTH (3 + 1) 
#define AC_MAX_CODE_NAME_LENGTH (33 + 1) 

#define AC_MAX_TRIGGER_TYPES 3 
#define AC_MAX_TRIGGER_TYPE_NAME_LENGTH (8 + 1) 

#define AC_GLOBAL_TRIGGER_TYPE_PLAYER 0
#define AC_GLOBAL_TRIGGER_TYPE_IP 1

#define AC_CODE_TRIGGER_TYPE_DISABLED 0                  
#define AC_CODE_TRIGGER_TYPE_WARNING 1                   
#define AC_CODE_TRIGGER_TYPE_KICK 2                      

#define AC_TRIGGER_ANTIFLOOD_TIME 20                     
#define AC_MAX_CODES_ON_PAGE 15                          
#define AC_DIALOG_NEXT_PAGE_TEXT ">>> Next page"        
#define AC_DIALOG_PREVIOUS_PAGE_TEXT "<<< Previous page" 

new AC_CODE[AC_MAX_CODES][AC_MAX_CODE_LENGTH] =
{
    "000",
    "001",
    "002",
    "003",
    "004",
    "005",
    "006",
    "007",
    "008",
    "009",
    "010",
    "011",
    "012",
    "013",
    "014",
    "015",
    "016",
    "017",
    "018",
    "019",
    "020",
    "021",
    "022",
    "023",
    "024",
    "025",
    "026",
    "027",
    "028",
    "029",
    "030",
    "031",
    "032",
    "033",
    "034",
    "035",
    "036",
    "037",
    "038",
    "039",
    "040",
    "041",
    "042",
    "043",
    "044",
    "045",
    "046",
    "047",
    "048",
    "049",
    "050",
    "051",
    "052"
};

new AC_CODE_NAME[AC_MAX_CODES][AC_MAX_CODE_NAME_LENGTH] =
{
    {"AirBreak (onfoot)"},
    {"AirBreak (in vehicle)"},
    {"Teleport (onfoot)"},
    {"Teleport (in vehicle)"},
    {"Teleport (into/between vehicles)"},
    {"Teleport (vehicle to player)"},
    {"Teleport (pickups)"},
    {"FlyHack (onfoot)"},
    {"FlyHack (in vehicle)"},
    {"SpeedHack (onfoot)"},
    {"SpeedHack (in vehicle)"},
    {"Health hack (in vehicle)"},
    {"Health hack (onfoot)"},
    {"Armour hack"},
    {"Money hack"},
    {"Weapon hack"},
    {"Ammo hack (add)"},
    {"Ammo hack (infinite)"},
    {"Special actions hack"},
    {"GodMode from bullets (onfoot)"},
    {"GodMode from bullets (in vehicle)"},
    {"Invisible hack"},
    {"Lagcomp-spoof"},
    {"Tuning hack"},
    {"Parkour mod"},
    {"Quick turn"},
    {"Rapid fire"},
    {"FakeSpawn"},
    {"FakeKill"},
    {"Pro Aim"},
    {"CJ run"},
    {"CarShot"},
    {"CarJack"},
    {"UnFreeze"},
    {"AFK Ghost"},
    {"Full Aiming"},
    {"Fake NPC"},
    {"Reconnect"},
    {"High ping"},
    {"Dialog hack"},
    {"Sandbox"},
    {"Invalid version"},
    {"Rcon hack"},
    {"Tuning crasher"},
    {"Invalid seat crasher"},
    {"Dialog crasher"},
    {"Attached object crasher"},
    {"Weapon Crasher"},
    {"Connects to one slot"},
    {"Flood callback functions"},
    {"Flood change seat"},
    {"DDos"},
    {"NOP's"}
};

new AC_TRIGGER_TYPE_NAME[AC_MAX_TRIGGER_TYPES][AC_MAX_TRIGGER_TYPE_NAME_LENGTH] =
{
    {"Disabled"},
    {"Warning"},
    {"Kick"}
};
new
    AC_CODE_TRIGGER_TYPE[AC_MAX_CODES],
    AC_CODE_TRIGGERED_COUNT[AC_MAX_CODES] = {0, ...},
    AC_CODE_TRIGGERED_PLAYER_COUNT[MAX_PLAYERS] = 0;

new
    pAntiCheatLastCodeTriggerTime[MAX_PLAYERS][AC_MAX_CODES],
    pAntiCheatSettingsPage[MAX_PLAYERS char],
    pAntiCheatSettingsMenuListData[MAX_PLAYERS][AC_MAX_CODES_ON_PAGE],
    pAntiCheatSettingsEditCodeId[MAX_PLAYERS];  

//=====[ANTI BOT]=====//
stock CountIP(const ip1[]) 
{
	new b = 0;
	foreach(new i : Player)
	{
	  if(IsPlayerConnected(i) && !strcmp(GetIP(i),ip1)) b++;
	}
	return b;
}

stock BanAllBots(playerid) 
{
	new PlayerName[25];
	GetPlayerName(playerid, PlayerName, sizeof(PlayerName));
	printf("%s was Banned due to MANY Connections.", PlayerName);
	Ban(playerid);
	return 1;
}

 