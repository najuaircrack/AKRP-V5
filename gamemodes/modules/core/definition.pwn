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


//-----------------------------[ SERVER INFORMATION ]----------------------------
#define SERVER_BOT       "AK:RP Bot"
#define VERSION          "V5[<3]"
#define REVISION         "AK:RP: "VERSION""
#define SERVER_GAMEMODE  "AK:RP"
#define SERVER_NAME      "All Kerala Roleplay"
#define SERVER_DIALOG    "{EC7063}"SERVER_NAME" "WHITE""VERSION""
#define SERVER_URL       "discord.gg/Ytz73CtpRq"
#define SERVER_DISCORD   "discord.gg/Ytz73CtpRq"

#define SERVER_COLOR  0x04bd13FF
#define SVRCLR       "{04bd13}"
#define TEAL		"{00AAAA}"
#define SERVER_COLOR2 0xEC7063ff
#define SVRCLR2      "{EC7063}"
#define COLOR_TWEET	     0x00FF80FF

#define SERVER_MUSIC_URL ""SERVER_URL"/music"
#define SERVER_FETCH_URL ""SERVER_URL"/music"

//---------------------------[ MYSQL ACCOUNT ]--------------------------

#define MYSQL_HOSTNAME  ""
#define MYSQL_DATABASE  ""
#define MYSQL_USERNAME  ""
#define MYSQL_PASSWORD  ""

//-----------------------------[ DEFINES EXTRA ]----------------------------
#define MAX_BOT_CONNECTIONS 4
#define MODEL_SELECTION_LANDOBJECTS 1
#define MODEL_SELECTION_CLOTHING    2
#define MODEL_SELECTION_CLOTHES     3

#define COLOR_GRAD1 0xB4B5B7FF
#define TEAM_HIT_COLOR 0xFFFFFF00
#define TEAM_BLUE_COLOR 0x2641FE00
#define AUTO_MESSAGE_TIME 5 // Minutes

#define RED_TEAM    0
#define BLUE_TEAM   1

#define MAX_RADIOS 100

#define percent(%0,%1)  floatround((float((%0)) / 100) * (%1))
//ANDROID
#define IsPlayerAndroid(%0) !GetPVarInt(%0, "NotAndroid")
new g_player_listitem[MAX_PLAYERS][96];
#define GetPlayerListitemValue(%0,%1) 		g_player_listitem[%0][%1]
#define SetPlayerListitemValue(%0,%1,%2) 	g_player_listitem[%0][%1] = %2
// Anti CBUG
#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
//SIM
#define SIM_NONE 0
#define SIM_TNT 1
#define SIM_GLOBE 2
#define SIM_SMART 3

#define OILEXPO_LIMIT (5)
#define WHEAT_LIMIT   (5)

//MAXES
#define MAX_SZ 						20
#define MAX_LISTED_NUMBERS          50
#define MAX_LISTED_OBJECTS          100
#define MAX_LISTED_STATIONS         50
#define MAX_SPLIT_LENGTH            70
// ---------------------------------------
#define MAX_REPORTS         		50
#define MAX_ATMS                    51
#define MAX_HOUSES                  500
#define MAX_CCTVS 					100
#define MAX_CCTVMENUS 				10  // This number should be MAX_CCTVS divided by 10
#define MAX_GARAGES                 300
#define MAX_BUSINESSES      		250
#define MAX_ENTRANCES       		500
#define MAX_SPEED_CAMERAS           50
#define MAX_GATES                   350
#define MAX_MAPOBJECTS				1000
#define MAX_PLAYER_CLOTHING     	10
#define MAX_SPAWNED_VEHICLES 		3
#define MAX_ANTICHEAT_WARNINGS   	4
#define MAX_FACTIONS                20
#define MAX_FACTION_RANKS           20
#define MAX_FACTION_SKINS           15
#define MAX_LOCKERS                 50
#define MAX_FACTION_DIVISIONS       5
#define MAX_DEPLOYABLES             50
#define MAX_FIRES                   20
#define MAX_LANDS                   30
#define MAX_GANGS                   20
#define MAX_BACK_PACKS				100
#define MAX_GANG_SKINS              10
#define MAX_POINTS                  15
#define MAX_TURFS                   15
#define MAX_BANK_ROBBERS            7
#define MAX_PGARAGE                 100
#define MAX_GRAFFITI_POINTS         200
#define MAX_VENDOR 100
#define MAX_GGARAGE 100
#define MAX_IP_SIZE 32

#define MAX_DROPPED_ITEMS 500


//THREADS

#define THREAD_LOOKUP_BANS          1
#define THREAD_LOOKUP_ACCOUNT    	2
#define THREAD_ACCOUNT_REGISTER     3
#define THREAD_PROCESS_LOGIN        4
#define THREAD_COUNT_FLAGS          5
#define THREAD_TRACE_IP             6
#define THREAD_LIST_CHANGES         8
#define THREAD_LIST_HELPERS         9
#define THREAD_LOAD_HOUSES          10
#define THREAD_LIST_TENANTS         11
#define THREAD_LOAD_FURNITURE       12
#define THREAD_LOAD_GARAGES         13
#define THREAD_LOAD_BUSINESSES      14
#define THREAD_LOAD_ENTRANCES       15
#define THREAD_LOAD_CLOTHING        16
#define THREAD_LOAD_FACTIONS        17
#define THREAD_LOAD_FACTIONRANKS    18
#define THREAD_LOAD_FACTIONSKINS    19
#define THREAD_LOAD_FACTIONPAY      20
#define THREAD_VALET_CARS           72
#define THREAD_LOAD_DIVISIONS       21
#define THREAD_LOAD_LANDS           22
#define THREAD_LOAD_LANDOBJECTS     23
#define THREAD_LOAD_GANGS           24
#define THREAD_LOAD_GANGRANKS       25
#define THREAD_LOAD_GANGSKINS       26
#define THREAD_LOAD_POINTS          27
#define THREAD_LOAD_TURFS           28
#define THREAD_HOUSE_INFORMATION    29
#define THREAD_COUNT_FURNITURE     30
#define THREAD_SELL_FURNITURE       31
#define THREAD_CLEAR_FURNITURE      32
#define THREAD_COUNT_TEXTS          33
#define THREAD_VIEW_TEXTS           34
#define THREAD_LIST_VEHICLES        35
#define THREAD_FACTION_ROSTER       36
#define THREAD_GANG_ROSTER          37
#define THREAD_VIEW_PHONEBOOK       38
#define THREAD_COUNT_LANDOBJECTS    39
#define THREAD_SELL_LANDOBJECT      40
#define THREAD_DUPLICATE_LANDOBJECT 41
#define THREAD_DUPLICATED_OBJECT    42
#define THREAD_CLEAR_LANDOBJECTS    43
#define THREAD_LIST_LANDOBJECTS     44
#define THREAD_LAND_INFORMATION     45
#define THREAD_LOAD_VEHICLES        46
#define THREAD_GANG_INFORMATION     47
#define THREAD_OFFLINE_IP           48
#define THREAD_CHECK_REFERRAL       49
#define THREAD_REWARD_REFERRER      50
#define THREAD_LIST_FLAGGED         51
#define THREAD_LAND_MAINMENU        53
#define THREAD_LIST_ADMINS	        54
#define THREAD_DMVRELEASE			55
#define THREAD_UPDATE_LANDLABELS    56
#define THREAD_LOAD_ATMS            59
#define THREAD_CAR_STORAGE          52
#define THREAD_LIST_PGVEHICLES_VALLEY 57
#define THREAD_SELECT_CODE			58
#define THREAD_LOAD_LOCKERS			61
#define THREAD_LOAD_GGARAGE         64
#define THREAD_LOAD_PGARAGE         63
#define THREAD_CAR_GSTORAGE          65
#define THREAD_PROCESS_MUSIC        66
#define THREAD_VOTE_LOAD        67
#define THREAD_VOTE_LOAD1       68
#define THREAD_COUNT_VOTERS      69
#define THREAD_LOAD_WEAPON       70

//-----------------------------[ FUNTION SHORTCUT ]----------------------------
#define SCMf 	SendClientMessageFormatted  // SendClientMessage with string formats
#define SCMA 	SendClientMessageToAll
#define SM 		SendMessage                 // SendClientMessage with string formats
#define SMA 	SendMessageToAll            // SendClientMessageToAll with string formats
#define SAM 	SendAdminMessage            // with string formats

//-----------------------------[ COLORS ]----------------------------
#define MAX_TDS 77
#define mred "{ff0000}"
#define mcol "{c0ff5c}"

#define HOUSE_COLOR   		0xB2FF8EFF
#define HOUSE				"{B2FF8E}"
#define BIZ_COLOR			0xFFFF00FF
#define BIZ					"{006400}"
#define BLUE          		"{233EFA}"

#define WHITE				"{FFFFFF}"
#define GREY				"{AFAFAF}"
#define RED					"{FF0000}"
#define GREEN				"{006400}"
#define YELLOW    			"{FFFF00}"
#define REPORTSS            "{FF8DA1}"
#define LIGHTRED     		"{FF6347}"
#define JAILGUARD           "{D07429}"
#define COLOR_PINK 			0xFF66FFAA



#define COLOR_JAILGUARD     0xD07429FF
#define COLOR_DISPATCH 		0xff4419ff
#define COLOR_WHITE 		0xFFFFFFFF
#define COLOR_GRAD2 		0xBFC0C2FF
#define COLOR_OOC 		    0x003d75FF
#define TEAM_AZTECAS_COLOR  0x01FCFFC8
#define COLOR_ERROR   		0xF9B64AFF
#define COLOR_SYNTAX        0xAFAFAFFF
#define COLOR_YELLOW    	0xFFFF00FF
#define COLOR_INT           0x92b865FF
#define COLOR_YELLOW2       0xF5DEB3FF
#define COLOR_LIGHTORANGE   0xF7A763FF
#define COLOR_AQUA       	0xCCFFFFFF
#define COLOR_NEWS 			0xFFA500AA
#define COLOR_GLOBALL		0x80d6abFF
#define COLOR_GREEN         0x32CD32FF
#define COLOR_GREY          0xAFAFAFFF
#define	COLOR_GREY1    		0xE6E6E6FF
#define COLOR_GREY2 		0xC8C8C8FF
#define COLOR_GREY3 		0xAAAAAAFF
#define COLOR_GREY4 		0x8C8C8CFF
#define COLOR_GREY5 		0x6E6E6EFF
#define COLOR_LIGHTRED      0xFF6347FF
#define COLOR_ORANGE        0xFF9900FF
#define COLOR_RED           0xAA3333FF
#define COLOR_HUNT          0xFF42CFFF
#define COLOR_LE            0xC2A2DAFF
#define COLOR_NEWBIE        0x7DAEFFFF
#define COLOR_BLUE          0x233EFAFF
#define COLOR_REPORTSS      0xFF8DA1FF
#define COLOR_ROYALBLUE     0x9999FFFF
#define COLOR_DOCTOR        0xFF8282FF
#define COLOR_DARKGREEN     0x00AA00FF
#define COLOR_VIP           0x6a86b5FF
#define COLOR_WALKIETALKIE  0xB2EBE0FF
#define COLOR_NAVYBLUE 		0x089DCEFF
#define COLOR_GLOBAL 		0xB8FFBCFF
#define COLOR_STATS         0xFFFF91AA
#define COLOR_LIGHTGREEN    0x74AF7AFF
#define COLOR_ADMINCHAT     0xED6464FF
#define COLOR_FACTIONCHAT   0xBDF38BFF
#define COLOR_SAMP          0xA9C4E4FF
#define COLOR_GENERAL3		0x00D900C8
#define COLOR_TEAL 			0x00AAAAAA
#define COLOR_SERVER        0xFFFF90FF
#define COLOR_OFFWHITE 		0xF5DEB3AA
#define COLOR_DARKAQUA 		0x83BFBFAA
#define COLOR_REALRED       0xFF0000FF
#define COLOR_CYAN          0x00FFFFFF
#define MAX_LISTED_ITEMS 17
//Tune System
#define COLOR_LIGHTBLUE 0x91C8FF//Server text messages
#define COLOR_GROUPTALK 0x87CEEBAA  // SKYBLUE
#define COLOR_MENU 0xFFFFFFAA		// WHITE (FFFFFF) menu's (/help)
#define COLOR_SYSTEM_PM 0x66CC00AA	// LIGHT GREEN
#define COLOR_SYSTEM_PW 0xFFFF33AA	// YELLOW
//MYSQL
new connectionID;
new radioConnectionID;
new queryBuffer[1024];

//-----------------------------[ NEW VARIABLES]----------------------------
new GZArea[2];
new takingselfie[MAX_PLAYERS];
new robcar;
new CD[MAX_PLAYERS][CountStuff];
new factionVehicle[MAX_VEHICLES char];
new PlayerBar:helmetbar;
new atmvehicle[2];
new BigBankMoney[MAX_PLAYERS];
new BIGBANK[] = {25000, 50000, 75000, 100000};
new Robfleecabank[MAX_PLAYERS];
new FLEECAMONEY[] = {25000, 50000, 75000, 100000};
new OtherRobberyInfo[robEnum];
new CarRadars[MAX_PLAYERS];
new RadarType[MAX_PLAYERS] = 0;
new HackerJob[MAX_PLAYERS];
new called[MAX_PLAYERS][11];
new tweet[60];
new numberc[MAX_PLAYERS][5],
	anumberc[MAX_PLAYERS][5],
	calculation_result[MAX_PLAYERS],
    resultq[MAX_PLAYERS],
    calculation[MAX_PLAYERS][5],
	calculation_string[MAX_PLAYERS][25];
new isLoaded[MAX_PLAYERS];
new
	Iterator:House<6>,
	Iterator:Entrance<MAX_ENTRANCES>,
	Iterator:Land<MAX_LANDS>;

new PowerSpec[MAX_PLAYERS];
new TotalCCTVS;
new CameraName[MAX_CCTVS][32];

new CurrentCCTV[MAX_PLAYERS] = -1;
new apples[14];
new Menu:CCTVMenu[MAX_CCTVMENUS];
new MenuType[MAX_CCTVMENUS];
new TotalMenus;
new PlayerMenu[MAX_PLAYERS];
new LastPos[MAX_PLAYERS][LP];

new ptmCBugFreezeOver[MAX_PLAYERS];
new ptsLastFiredWeapon[MAX_PLAYERS];
#if defined Christmas
		new CarolLyrics[MAX_PLAYERS] = 0;
#endif

new ReconnectIP[MAX_PLAYERS][32];

new gScriptObject[MAX_OBJECTS char];

new zone_paintball[2], area_paintball[2];
new pbNext;

new tsstring[2048], psstring[2048];
new PayCheckCode[MAX_PLAYERS];
new UserCode[MAX_PLAYERS];
new Sliding[MAX_PLAYERS];

new CITYHALL;
new PAWNSHOP;
// Actor Job Represent
new ActorJob[14];
new HospitalActor[4];

new ladder[5];

new InsideTut[MAX_PLAYERS];
// Car windows
new CarWindows[MAX_VEHICLES] = 0;

//farmerjob
new FarmerVehicles[10];
new Harvesting[MAX_PLAYERS];

new jailarea;

// Quiz System
new quizQuestion[72];
new quizAnswer[32];
new CreateQuiz = -1;
// Mask System
new Maskara[MAX_PLAYERS];
new MaskaraID[MAX_PLAYERS] = 0;

// Blindfold
new pBlind[MAX_PLAYERS] = 1;
// Seatbelt
new ExBJck[MAX_PLAYERS];

// ELM Lights
new Flasher[MAX_VEHICLES] = 0;
new FlasherState[MAX_VEHICLES];
new OilExpoVehicle[7];
new GettingOilContainer[MAX_PLAYERS];
new VehicleInterior[MAX_PLAYERS];

new VehicleStatus[MAX_VEHICLES char] = 0; // 0 == none, 1 == vehicle dead about to respawn

//------------------MULTI DI-ARRAYS------------------//
new VendorData[MAX_VENDOR][vendorData];
new OilExpoObjects[MAX_VEHICLES][OILEXPO_LIMIT];
new FruitBoxObjects[MAX_VEHICLES][OILEXPO_LIMIT];
new PlayerInfo[MAX_PLAYERS+1][pEnum];
new WheatObjects[MAX_VEHICLES][WHEAT_LIMIT];
new DroppedItems[MAX_DROPPED_ITEMS][droppedItems];
new NearestItems[MAX_PLAYERS][MAX_LISTED_ITEMS];
new GraffitiData[MAX_GRAFFITI_POINTS][graffitiData];
new SpeedData[MAX_SPEED_CAMERAS][speedData];
new GateData[MAX_GATES][gateData];
new ObjectData[MAX_MAPOBJECTS][objectData];
#define MAX_STATIC_OBJECTS 275

new StaticObject[MAX_STATIC_OBJECTS];
//-----------------------------[ BOOLS]----------------------------
new bool:isUsingRadioVoip[MAX_PLAYERS];
new bool:isUsingPhoneVoip[MAX_PLAYERS];
new bool:pCBugging[MAX_PLAYERS];
new bool: Reconnecting[MAX_PLAYERS];
new bool:pBlood[MAX_PLAYERS] = {false,...};
new bool:IsShownZoneTD[MAX_PLAYERS];
//-----------------------------[ CONSTS FLOATS]----------------------------

const Float: Radius = 1.4; 
const Float: Speed  = 1.25;
const Float: Height = 1.0; 
new Float:Degree[MAX_PLAYERS];
new Float:TX[MAX_PLAYERS];
new Float:TY[MAX_PLAYERS];
new Float:TZ[MAX_PLAYERS];
new Float:Milliage[MAX_VEHICLES];
//CCTV
new Float:CCTVLA[MAX_PLAYERS][3];  //CCTV LookAt
new Float:CCTVLAO[MAX_CCTVS][3];
new Float:CCTVRadius[MAX_PLAYERS]; //CCTV Radius
new Float:CCTVDegree[MAX_PLAYERS] = 0.0;
new Float:CCTVCP[MAX_CCTVS][4]; //CCTV CameraPos

new Float:PepperHealth[MAX_PLAYERS];
new const g_MaleSkins[184] = {
	1, 2, 3, 4, 5, 6, 7, 8, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
	30, 32, 33, 34, 35, 36, 37, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 57, 58, 59, 60,
	61, 62, 66, 68, 72, 73, 78, 79, 80, 81, 82, 83, 84, 94, 95, 96, 97, 98, 99, 100, 101, 102,
	103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
	121, 122, 123, 124, 125, 126, 127, 128, 132, 133, 134, 135, 136, 137, 142, 143, 144, 146,
	147, 153, 154, 155, 156, 158, 159, 160, 161, 162, 167, 168, 170, 171, 173, 174, 175, 176,
	177, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 200, 202, 203, 204, 206,
	208, 209, 210, 212, 213, 220, 221, 222, 223, 228, 229, 230, 234, 235, 236, 239, 240,
	241, 242, 247, 248, 249, 250, 253, 254, 255, 258, 259, 260, 261, 262, 268, 272, 273, 289,
	290, 291, 292, 293, 294, 295, 296, 297, 299
};

new const g_FemaleSkins[77] = {
	9, 10, 11, 12, 13, 31, 38, 39, 40, 41, 53, 54, 55, 56, 63, 64, 65, 69, 75, 76, 77, 85, 88,
	89, 90, 91, 92, 93, 129, 130, 131, 138, 140, 141, 145, 148, 150, 151, 152, 157, 169, 178,
	190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 201, 205, 207, 211, 214, 215, 216, 219,
	224, 225, 226, 231, 232, 233, 237, 238, 243, 244, 245, 246, 251, 256, 257, 263, 298
};


new const Float:washmoneyPoints[][] =
{
    {615.043212, -75.937904, 997.992187}
};
new Float:RandomIndihome[5][4] =
{
	{609.7753,-1782.9929,18.7570, 21000.0},
	{929.3642,-1415.3500,17.9962, 19000.0},
	{1971.0820,-1826.2044,18.1881, 5000.0},
	{2175.7668,-1730.8120,18.4971, 9000.0},
	{851.1854,-1038.8979,30.4627, 20000.0}
};
new Float:AllFruit[14][4]=
{
	{-2283.270020, -2316.040039, 24.937653, 0.0},
	{-2287.260742, -2316.041016, 24.377544, 1.0},
	{-2287.350098, -2317.840088, 24.396099, 2.0},
	{-2285.310059, -2319.489990, 24.686300, 3.0},
	{-2282.629883, -2318.540039, 25.028099, 4.0},
	{-2281.959961, -2320.300049, 25.145201, 5.0},
	{-2289.820068, -2318.489990, 24.072599, 6.0},
	{-2287.040039, -2322.330078, 24.506500, 7.0},
	{-2279.649902, -2320.760010, 25.450600, 8.0},
	{-2283.510010, -2324.699951, 24.998600, 9.0},
	{-2278.669922, -2323.179932, 25.599001, 10.0},
	{-2275.199951, -2319.659912, 26.032700, 11.0},
	{-2273.419922, -2325.780029, 26.363701, 12.00},
	{-2269.559326, -2324.976807, 26.808689, 13.0}

};
/*
new FIRE_INFO[][ENUM_FIRE_INFO] =
{
	{true, false, 0.356599, -2.323499, -2.282700, 0.000000, 0.000000, 180.000000}, //400
	{true, false, 0.438600, -2.509499, -2.088700, 0.000000, 0.000000, 180.000000}, //401
	{true, true, 0.502600, -2.623499, -2.136700, 0.000000, 0.000000, 180.000000}, //402
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //403
	{true, false, 0.452600, -2.679299, -2.057499, 0.000000, 0.000000, 180.000000}, //404
	{true, false, 0.484899, -2.694099, -2.203500, 0.000000, 0.000000, 180.000000}, //405
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //406
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //407
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //408
	{true, false, 0.613099, -3.776700, -2.107199, 0.000000, 0.000000, 180.000000}, //409
	{true, false, 0.393799, -2.313999, -2.057199, 0.000000, 0.000000, 180.000000}, //410
	{true, true, 0.307799, -2.537999, -2.083199, 0.000000, 0.000000, 180.000000}, //411
	{true, false, 0.427300, -3.339999, -2.165199, 0.000000, 0.000000, 180.000000}, //412
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //413
	{true, false, 0.516099, -3.160899, -2.317199, 0.000000, 0.000000, 180.000000}, //414
	{true, true, 0.378100, -2.368799, -2.103199, 0.000000, 0.000000, 180.000000}, //415
	{true, false, 0.504199, -3.720499, -2.407199, 0.000000, 0.000000, 180.000000}, //416
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //417
	{true, false, 0.574599, -2.647899, -2.439199, 0.000000, 0.000000, 180.000000}, //418
	{true, false, 0.558099, -2.929099, -2.161200, 0.000000, 0.000000, 180.000000}, //419
	{true, false, 0.574100, -2.639099, -2.137199, 0.000000, 0.000000, 180.000000}, //420
	{true, false, 0.450100, -2.983999, -2.191200, 0.000000, 0.000000, 180.000000}, //421
	{true, false, 0.411700, -2.547899, -2.334000, 0.000000, 0.000000, 180.000000}, //422
	{true, false, -0.369800, -2.315999, -2.404000, 0.000000, 0.000000, 180.000000}, //423
	{true, true, 0.512099, -1.669300, -1.856099, 0.000000, 0.000000, 180.000000}, //424
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //425
	{true, false, 0.578000, -2.621899, -2.136100, 0.000000, 0.000000, 180.000000}, //426
	{true, false, 0.601499, -3.878599, -2.324200, 0.000000, 0.000000, 180.000000}, //427
	{true, false, 0.588999, -2.971599, -2.462199, 0.000000, 0.000000, 180.000000}, //428
	{true, true, 0.503000, -2.523599, -1.965199, 0.000000, 0.000000, 180.000000}, //429
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //430
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //431
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //432
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //433
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //434
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //435
	{true, false, 0.486999, -2.497599, -2.099299, 0.000000, 0.000000, 180.000000}, //436
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //437
	{true, false, 0.490399, -2.705899, -2.371700, 0.000000, 0.000000, 180.000000}, //438
	{true, true, 0.352400, -2.581899, -2.064399, 0.000000, 0.000000, 180.000000}, //439
	{true, false, 0.420700, -2.677599, -2.570899, 0.000000, 0.000000, 180.000000}, //440
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //441
	{true, false, 0.593100, -2.798699, -2.205100, 0.000000, 0.000000, 180.000000}, //442
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //443
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //444
	{true, false, 0.480199, -2.714699, -2.147099, 0.000000, 0.000000, 180.000000}, //445
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //446
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //447
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //448
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //449
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //450
	{true, false, 0.005400, -2.552699, -1.987100, 0.000000, 0.000000, 180.000000}, //451
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //452
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //453
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //454
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //455
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //456
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //457
	{true, false, 0.519200, -2.790499, -2.229899, 0.000000, 0.000000, 180.000000}, //458
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //459
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //460
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //461
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //462
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //463
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //464
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //465
	{true, false, 0.435200, -2.877399, -2.125900, 0.000000, 0.000000, 180.000000}, //466
	{true, false, 0.481200, -2.917399, -2.097899, 0.000000, 0.000000, 180.000000}, //467
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //468
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //469
	{true, false, -1.250200, -2.029500, -0.472800, 0.000000, 0.000000, 180.000000}, //470
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //471
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //472
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //473
	{true, true, 0.584999, -2.822599, -2.209800, 0.000000, 0.000000, 180.000000}, //474
	{true, false, 0.481000, -2.595699, -2.113800, 0.000000, 0.000000, 180.000000}, //475
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //476
	{true, false, 0.587000, -2.805699, -2.071799, 0.000000, 0.000000, 180.000000}, //477
	{true, false, 0.416700, -2.568699, -2.196799, 0.000000, 0.000000, 180.000000}, //478
	{true, false, 0.460799, -2.865999, -2.082799, 0.000000, 0.000000, 180.000000}, //479
	{true, false, 0.483300, -2.409999, -2.163700, 0.000000, 0.000000, 180.000000}, //480
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //481
	{true, false, 0.445899, -2.641699, -2.439800, 0.000000, 0.000000, 180.000000}, //482
	{true, false, -0.340600, -2.846899, -2.512400, 0.000000, 0.000000, 180.000000}, //483
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //484
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //485
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //486
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //487
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //488
	{true, false, 0.446500, -2.771499, -2.240900, 0.000000, 0.000000, 180.000000}, //489
	{true, false, 0.439999, -3.227299, -2.240900, 0.000000, 0.000000, 180.000000}, //490
	{true, false, 0.572200, -2.925899, -2.166899, 0.000000, 0.000000, 180.000000}, //491
	{true, false, 0.579599, -2.606400, -2.116899, 0.000000, 0.000000, 180.000000}, //492
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //493
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //494
	{true, false, 0.596599, -2.335199, -2.332799, 0.000000, 0.000000, 180.000000}, //495
	{true, false, 0.545400, -2.173599, -2.111700, 0.000000, 0.000000, 180.000000}, //496
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //497
	{true, false, -0.473800, -3.108199, -2.361400, 0.000000, 0.000000, 180.000000}, //498
	{true, false, 0.516200, -3.340600, -2.287400, 0.000000, 0.000000, 180.000000}, //499
	{true, false, 0.446900, -1.940299, -2.245399, 0.000000, 0.000000, 180.000000}, //500
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //501
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //502
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //503
	{true, false, 0.430299, -2.876699, -2.117300, 0.000000, 0.000000, 180.000000}, //504
	{true, false, 0.446299, -2.772699, -2.236900, 0.000000, 0.000000, 180.000000}, //505
	{true, true, 0.560599, -2.476300, -2.120100, 0.000000, 0.000000, 180.000000}, //506
	{true, false, 0.485199, -2.971699, -2.262000, 0.000000, 0.000000, 180.000000}, //507
	{true, false, 0.467400, -3.586999, -2.686900, 0.000000, 0.000000, 180.000000}, //508
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //509
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //510
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //511
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //512
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //513
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //514
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //515
	{true, false, 0.447800, -2.946699, -2.141499, 0.000000, 0.000000, 180.000000}, //516
	{true, false, 0.501800, -2.858699, -2.119499, 0.000000, 0.000000, 180.000000}, //517
	{true, false, -0.423400, -2.882499, -2.091500, 0.000000, 0.000000, 180.000000}, //518
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //519
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //520
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //521
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //522
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //523
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //524
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //525
	{true, false, 0.481799, -2.314099, -2.129499, 0.000000, 0.000000, 180.000000}, //526
	{true, false, 0.471799, -2.298099, -1.999199, 0.000000, 0.000000, 180.000000}, //527
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //528
	{true, false, -0.424699, -2.729899, -2.011199, 0.000000, 0.000000, 180.000000}, //529
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //530
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //531
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //532
	{true, true, 0.515100, -2.452399, -2.037100, 0.000000, 0.000000, 180.000000}, //533
	{true, true, 0.483099, -2.958400, -2.167099, 0.000000, 0.000000, 180.000000}, //534
	{true, true, 0.350600, -2.693499, -2.189100, 0.000000, 0.000000, 180.000000}, //535
	{true, true, 0.500000, -2.971299, -2.161099, 0.000000, 0.000000, 180.000000}, //536
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //537
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //538
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //539
	{true, false, -0.410600, -2.748699, -2.265599, 0.000000, 0.000000, 180.000000}, //540
	{true, true, 0.624000, -2.205999, -1.875100, 0.000000, 0.000000, 180.000000}, //541
	{true, false, 0.587400, -2.829499, -1.996899, 0.000000, 0.000000, 180.000000}, //542
	{true, false, -0.411000, -2.764599, -2.099200, 0.000000, 0.000000, 180.000000}, //543
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //544
	{true, true, 0.314900, -2.263700, -2.260600, 0.000000, 0.000000, 180.000000}, //545
	{true, false, 0.581200, -2.833499, -2.020299, 0.000000, 0.000000, 180.000000}, //546
	{true, false, 0.629199, -2.589499, -2.074300, 0.000000, 0.000000, 180.000000}, //547
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //548
	{true, false, 0.441300, -2.511600, -2.030299, 0.000000, 0.000000, 180.000000}, //549
	{true, false, -0.628300, -2.899799, -2.267199, 0.000000, 0.000000, 180.000000}, //550
	{true, false, 0.590799, -3.145499, -2.092799, 0.000000, 0.000000, 180.000000}, //551
	{true, false, 0.446900, -3.063399, -1.924800, 0.000000, 0.000000, 180.000000}, //552
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //553
	{true, false, 0.559300, -2.751999, -2.208499, 0.000000, 0.000000, 180.000000}, //554
	{true, true, 0.136000, -2.282899, -2.003200, 0.000000, 0.000000, 180.000000}, //555
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //556
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //557
	{true, true, 0.465799, -2.558699, -1.977200, 0.000000, 0.000000, 180.000000}, //558
	{true, true, 0.633099, -2.394599, -1.977200, 0.000000, 0.000000, 180.000000}, //559
	{true, true, 0.479999, -2.474699, -1.991199, 0.000000, 0.000000, 180.000000}, //560
	{true, true, 0.446200, -2.739599, -2.166300, 0.000000, 0.000000, 180.000000}, //561
	{true, true, 0.483300, -2.380199, -2.037100, 0.000000, 0.000000, 180.000000}, //562
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //563
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //564
	{true, false, 0.479299, -2.134199, -1.999099, 0.000000, 0.000000, 180.000000}, //565
	{true, false, 0.564700, -2.946699, -2.063100, 0.000000, 0.000000, 180.000000}, //566
	{true, false, 0.628700, -2.776700, -2.252900, 0.000000, 0.000000, 180.000000}, //567
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //568
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //569
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //570
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //571
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //572
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //573
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //574
	{true, false, 0.453399, -2.709800, -1.975300, 0.000000, 0.000000, 180.000000}, //575
	{true, false, 0.658100, -3.092499, -2.043299, 0.000000, 0.000000, 180.000000}, //576
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //577
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //578
	{true, false, -0.424600, -2.890699, -2.102699, 0.000000, 0.000000, 180.000000}, //579
	{true, false, -0.408600, -2.872699, -2.092700, 0.000000, 0.000000, 180.000000}, //580
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //581
	{true, false, 0.444999, -3.395499, -2.334199, 0.000000, 0.000000, 180.000000}, //582
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //583
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //584
	{true, false, -0.428999, -3.143299, -1.889299, 0.000000, 0.000000, 180.000000}, //585
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //586
	{true, true, 0.698000, -2.692600, -2.056400, 0.000000, 0.000000, 180.000000}, //587
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //588
	{true, false, 0.583999, -2.358599, -1.965899, 0.000000, 0.000000, 180.000000}, //589
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //590
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //591
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //592
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //593
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //594
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //595
	{true, false, 0.577000, -2.622299, -2.138499, 0.000000, 0.000000, 180.000000}, //596
	{true, false, 0.577000, -2.622299, -2.138499, 0.000000, 0.000000, 180.000000}, //597
	{true, false, 0.595000, -2.678299, -2.002500, 0.000000, 0.000000, 180.000000}, //598
	{true, false, 0.440600, -2.773699, -2.239099, 0.000000, 0.000000, 180.000000}, //599
	{true, false, 0.442600, -2.763700, -2.054199, 0.000000, 0.000000, 180.000000}, //600
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //601
	{true, true, 0.560999, -2.523999, -2.200700, 0.000000, 0.000000, 180.000000}, //602
	{true, true, 0.587000, -2.661999, -2.192699, 0.000000, 0.000000, 180.000000}, //603
	{true, false, 0.425700, -2.877099, -2.124700, 0.000000, 0.000000, 180.000000}, //604
	{true, false, -0.411900, -2.767699, -2.098700, 0.000000, 0.000000, 180.000000}, //605
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //606
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //607
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //608
	{true, false, -0.477699, -3.106199, -2.359499, 0.000000, 0.000000, 180.000000}, //609
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //610
	{false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000} //611
};
*/
new
 Float: WheatAttachOffsets[WHEAT_LIMIT][4] =
 {
		{0.611, -2.159, 0.549, 0.000},
		{0.000, -2.181, 0.560, 0.000},
		{-0.710, -2.229, 0.559, 0.000},
		{-0.300, -1.570, 0.500, 0.000},
		{0.280, -1.601, 0.500, 0.000}
	};


//-----------------------------[ forwards]----------------------------
forward CountD();
forward CountDP(playerid);
forward TimerWashMoney(playerid);
forward TimerSelfRepair(playerid);
forward RobBigbank(playerid);
forward RobFleecabank(playerid);

//-----------------------------[ OTHER CHAR AND TIMERS]----------------------------
new killtimerz[MAX_PLAYERS];
new CDTimer[MAX_PLAYERS];
new HJLimitTimer;
new Timer[MAX_PLAYERS];
new KeyTimer[MAX_PLAYERS];
//new FlashTimer;
//-----------------------------[ PLAYERTEXT ]----------------------------
new PlayerText:BelowNotTD[MAX_PLAYERS][1];
new PlayerText: LOGINTD[MAX_PLAYERS][51];
new PlayerText: ClotheTD[MAX_PLAYERS][4];
new PlayerText:TurfTD[MAX_PLAYERS][3];
new PlayerText: KILLFEED[MAX_PLAYERS][1];
new PlayerText: SPAWN[MAX_PLAYERS][23];
new PlayerText: PROGRESS1[MAX_PLAYERS][2];
new PlayerText: VALO[MAX_PLAYERS][24];
new PlayerText: BLINK[MAX_PLAYERS][1];
new PlayerText: HUD[MAX_PLAYERS][13];
new PlayerText:CharTextdraw[MAX_PLAYERS][21];
new PlayerText:ShotsTD[MAX_PLAYERS][5];
new PlayerText: DEATHBUTTONP[MAX_PLAYERS][1];
new PlayerText:WireTD[MAX_PLAYERS][4];
new PlayerText:_crTextTarget[MAX_PLAYERS];
new PlayerText:_crTextSpeed[MAX_PLAYERS];
new PlayerText:_crTickets[MAX_PLAYERS];
new PlayerText: REGISTER[MAX_PLAYERS][15];
new PlayerText: INTRO[MAX_PLAYERS][6];
new PlayerText:BanPlayerTD[MAX_PLAYERS][5];
new PlayerText:LOGO[MAX_PLAYERS][7];
new PlayerText: BLACK[MAX_PLAYERS][1];
//PHONE
new PlayerText: CALP[MAX_PLAYERS][3];
new PlayerText: DIALERP[MAX_PLAYERS];
new PlayerText: APPLOCKGET[MAX_PLAYERS][5];
new PlayerText:PlayeridTD2[MAX_PLAYERS];
new PlayerText3D:label1[14];
new PlayerText: SPEEDO[MAX_PLAYERS][17];

new PlayerText:SpeedPlayerTD[MAX_PLAYERS][1];
new PlayerText:ModernPlayerText[MAX_PLAYERS][1];

new PlayerText:NumberTD22[MAX_PLAYERS];
new PlayerText:NumberTD[MAX_PLAYERS];
new PlayerText: DEATH[MAX_PLAYERS][4];
//animation

new killeffect[MAX_PLAYERS]  , pepper[MAX_PLAYERS];


//-----------------------------[ GLOBALTEXT ]----------------------------
new Text:TwtTD[5];
new Text:TextdrawTD;
new Text:Textdraw2;
new Text: DEATHBUTTON[15];
//PHONE
new Text: PHONELOCK[42];
new Text: PHONE[109];
new Text: APPLOCK[91];
new Text: APPLOADING[3];
new Text: DIALER[38];
new Text: CAL[79];
new Text: INSTA[50];
//PHONE
new Text:Blind;
new Text:BanTD[11];
new Text:TD;

new Text:Blood[9];
//-----------------------------[ 3DTEXT]----------------------------
new Text3D:vehicleCallsign[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};
new Text3D:PlayerLabel[MAX_PLAYERS];
// VIP Callsigns
new Text3D:DonatorCallSign[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};

