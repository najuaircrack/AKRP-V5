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


//-----------------------------------------------------[ SCRIPTS INFO ] ----------------------------------------------------------
#define SERVER_BOT       "AK:RP Bot"
#define VERSION          "V5[<3]"
#define REVISION         "AK:RP: "VERSION""
#define SERVER_GAMEMODE  "AK:RP"
#define SERVER_NAME      "All Kerala Roleplay"
#define SERVER_DIALOG    "{EC7063}"SERVER_NAME" "WHITE""VERSION""
#define SERVER_URL       "discord.gg/Ytz73CtpRq"
#define SERVER_DISCORD   "discord.gg/Ytz73CtpRq"
#define SERVER_MUSIC_URL ""SERVER_URL"/music"
#define SERVER_FETCH_URL ""SERVER_URL"/music"
//---------------------------------------------------[ MYSQL ACCOUNT ] ----------------------------------------------------------
#define MYSQL_HOSTNAME  ""
#define MYSQL_DATABASE  ""
#define MYSQL_USERNAME  ""
#define MYSQL_PASSWORD  ""

//---------------------------------------------------[ DEFINES EXTRA ] ----------------------------------------------------------
#define MAX_BOT_CONNECTIONS 4
#define MODEL_SELECTION_LANDOBJECTS 1
#define MODEL_SELECTION_CLOTHING    2
#define MODEL_SELECTION_CLOTHES     3
#define AUTO_MESSAGE_TIME 5
#define RED_TEAM    0
#define BLUE_TEAM   1
#define MAX_RADIOS 100
#define percent(%0,%1)  floatround((float((%0)) / 100) * (%1))
#define IsPlayerAndroid(%0) !GetPVarInt(%0, "NotAndroid")
#define GetPlayerListitemValue(%0,%1) 		g_player_listitem[%0][%1]
#define SetPlayerListitemValue(%0,%1,%2) 	g_player_listitem[%0][%1] = %2
#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define SIM_NONE 0
#define SIM_TNT 1
#define SIM_GLOBE 2
#define SIM_SMART 3
#define OILEXPO_LIMIT (5)
#define WHEAT_LIMIT   (5)
#define MAX_TDS 77
#define MAX_LISTED_ITEMS 17

//---------------------------------------------------[ MAXES ] ----------------------------------------------------------
#define MAX_SZ 						20
#define MAX_LISTED_NUMBERS          50
#define MAX_LISTED_OBJECTS          100
#define MAX_LISTED_STATIONS         50
#define MAX_SPLIT_LENGTH            70
#define MAX_REPORTS         		50
#define MAX_ATMS                    51
#define MAX_HOUSES                  500
#define MAX_CCTVS 					100
#define MAX_CCTVMENUS 				10  
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
#define MAX_VENDOR                  100
#define MAX_GGARAGE                 100
#define MAX_IP_SIZE                 32
#define MAX_DROPPED_ITEMS           500
#define MAX_STATIC_OBJECTS          275


//---------------------------------------------------[ THREADS ] ----------------------------------------------------------
#define THREAD_LOOKUP_BANS          1
#define THREAD_LOOKUP_ACCOUNT    	2
#define THREAD_ACCOUNT_REGISTER     3
#define THREAD_PROCESS_LOGIN        4
#define THREAD_COUNT_FLAGS          5
#define THREAD_TRACE_IP             6
#define THREAD_LIST_CHANGES         7
#define THREAD_LIST_HELPERS         8
#define THREAD_LOAD_HOUSES          9
#define THREAD_LIST_TENANTS         10
#define THREAD_LOAD_FURNITURE       11
#define THREAD_LOAD_GARAGES         12
#define THREAD_LOAD_BUSINESSES      13
#define THREAD_LOAD_ENTRANCES       14
#define THREAD_LOAD_CLOTHING        15
#define THREAD_LOAD_FACTIONS        16
#define THREAD_LOAD_FACTIONRANKS    17
#define THREAD_LOAD_FACTIONSKINS    18
#define THREAD_LOAD_FACTIONPAY      19
#define THREAD_VALET_CARS           20
#define THREAD_LOAD_DIVISIONS       21
#define THREAD_LOAD_LANDS           22
#define THREAD_LOAD_LANDOBJECTS     23
#define THREAD_LOAD_GANGS           24
#define THREAD_LOAD_GANGRANKS       25
#define THREAD_LOAD_GANGSKINS       26
#define THREAD_LOAD_POINTS          27
#define THREAD_LOAD_TURFS           28
#define THREAD_HOUSE_INFORMATION    29
#define THREAD_COUNT_FURNITURE      30
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
#define THREAD_LOAD_ATMS            57
#define THREAD_CAR_STORAGE          58
#define THREAD_LIST_PGVEHICLES_VALLEY 59
#define THREAD_SELECT_CODE			60
#define THREAD_LOAD_LOCKERS			61
#define THREAD_LOAD_GGARAGE         62
#define THREAD_LOAD_PGARAGE         63
#define THREAD_CAR_GSTORAGE         64
#define THREAD_PROCESS_MUSIC        65
#define THREAD_VOTE_LOAD            66
#define THREAD_VOTE_LOAD1           67
#define THREAD_COUNT_VOTERS         68
#define THREAD_LOAD_WEAPON          69

//---------------------------------------------------[ FUNCTION SHORTCUTS ] ---------------------------------------------

#define SCMf 	SendClientMessageFormatted  
#define SCMA 	SendClientMessageToAll
#define SM 		SendMessage                 
#define SMA 	SendMessageToAll            
#define SAM 	SendAdminMessage            

//---------------------------------------------------[ COLORS ] ----------------------------------------------------------

#define mred "{ff0000}"
#define mcol "{c0ff5c}"
#define COLOR_GRAD1 0xB4B5B7FF
#define TEAM_HIT_COLOR 0xFFFFFF00
#define TEAM_BLUE_COLOR 0x2641FE00
#define SERVER_COLOR  0x04bd13FF
#define SVRCLR       "{04bd13}"
#define TEAL		"{00AAAA}"
#define SERVER_COLOR2 0xEC7063ff
#define SVRCLR2      "{EC7063}"
#define COLOR_TWEET	     0x00FF80FF
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
#define COLOR_LIGHTBLUE     0x91C8FF
#define COLOR_GROUPTALK     0x87CEEBAA  
#define COLOR_MENU          0xFFFFFFAA	
#define COLOR_SYSTEM_PM     0x66CC00AA	
#define COLOR_SYSTEM_PW     0xFFFF33AA	

//---------------------------------------------------[ MYSQL VARIABLES ] ----------------------------------------------------------
new connectionID;
new radioConnectionID;
new queryBuffer[1024];

//---------------------------------------------------[ NEW VARIABLES ] ----------------------------------------------------------
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
new g_player_listitem[MAX_PLAYERS][96];
new CITYHALL;
new PAWNSHOP;
new ActorJob[14];
new HospitalActor[4];
new ladder[5];
new InsideTut[MAX_PLAYERS];
new CarWindows[MAX_VEHICLES] = 0;
new FarmerVehicles[10];
new Harvesting[MAX_PLAYERS];
new jailarea;
new quizQuestion[72];
new quizAnswer[32];
new CreateQuiz = -1;
new Maskara[MAX_PLAYERS];
new MaskaraID[MAX_PLAYERS] = 0;
new pBlind[MAX_PLAYERS] = 1;
new ExBJck[MAX_PLAYERS];
new Flasher[MAX_VEHICLES] = 0;
new FlasherState[MAX_VEHICLES];
new OilExpoVehicle[7];
new GettingOilContainer[MAX_PLAYERS];
new VehicleInterior[MAX_PLAYERS];
new VehicleStatus[MAX_VEHICLES char] = 0;

//---------------------------------------------------[ MULTI DI-VARIABLES ] ----------------------------------------------------------
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
new StaticObject[MAX_STATIC_OBJECTS];
//---------------------------------------------------[ BOOLS ] ----------------------------------------------------------
new bool:isUsingRadioVoip[MAX_PLAYERS];
new bool:isUsingPhoneVoip[MAX_PLAYERS];
new bool:pCBugging[MAX_PLAYERS];
new bool: Reconnecting[MAX_PLAYERS];
new bool:pBlood[MAX_PLAYERS] = {false,...};
new bool:IsShownZoneTD[MAX_PLAYERS];
//---------------------------------------------------[ CONSTS FLOAT ] ----------------------------------------------------------

const Float: Radius = 1.4; 
const Float: Speed  = 1.25;
const Float: Height = 1.0; 
new Float:Degree[MAX_PLAYERS];
new Float:TX[MAX_PLAYERS];
new Float:TY[MAX_PLAYERS];
new Float:TZ[MAX_PLAYERS];
new Float:Milliage[MAX_VEHICLES];
new Float:CCTVLA[MAX_PLAYERS][3];  
new Float:CCTVLAO[MAX_CCTVS][3];
new Float:CCTVRadius[MAX_PLAYERS];
new Float:CCTVDegree[MAX_PLAYERS] = 0.0;
new Float:CCTVCP[MAX_CCTVS][4]; 
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


new
 Float: WheatAttachOffsets[WHEAT_LIMIT][4] =
 {
		{0.611, -2.159, 0.549, 0.000},
		{0.000, -2.181, 0.560, 0.000},
		{-0.710, -2.229, 0.559, 0.000},
		{-0.300, -1.570, 0.500, 0.000},
		{0.280, -1.601, 0.500, 0.000}
	};


//---------------------------------------------------[ FORWARDS ] ----------------------------------------------------------

forward CountD();
forward CountDP(playerid);
forward TimerWashMoney(playerid);
forward TimerSelfRepair(playerid);
forward RobBigbank(playerid);
forward RobFleecabank(playerid);

//---------------------------------------------------[ OTHER CHAR AND TIMERS] ----------------------------------------------------------

new killtimerz[MAX_PLAYERS];
new CDTimer[MAX_PLAYERS];
new HJLimitTimer;
new Timer[MAX_PLAYERS];
new KeyTimer[MAX_PLAYERS];

//---------------------------------------------------[ PLAYER TEXTDRAWS ] ----------------------------------------------------------
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
new killeffect[MAX_PLAYERS]  , pepper[MAX_PLAYERS];


//---------------------------------------------------[ GLOBAL TEXTDRAWS ] ----------------------------------------------------------
new Text:TwtTD[5];
new Text:TextdrawTD;
new Text:Textdraw2;
new Text: DEATHBUTTON[15];
new Text: PHONELOCK[42];
new Text: PHONE[109];
new Text: APPLOCK[91];
new Text: APPLOADING[3];
new Text: DIALER[38];
new Text: CAL[79];
new Text: INSTA[50];
new Text:Blind;
new Text:BanTD[11];
new Text:TD;
new Text:Blood[9];
//---------------------------------------------------[ 3D TEXTS ] ----------------------------------------------------------
new Text3D:vehicleCallsign[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};
new Text3D:PlayerLabel[MAX_PLAYERS];
new Text3D:DonatorCallSign[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};