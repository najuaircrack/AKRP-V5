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

#define MAX_INVENTORY               20
new BukaInven[MAX_PLAYERS];
new PlayerText:INVNAME[MAX_PLAYERS][6];
new PlayerText:INVINFO[MAX_PLAYERS][11];
new PlayerText:NAMETD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:INDEXTD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:MODELTD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:AMOUNTTD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:DropModel[MAX_PLAYERS][20];
new PlayerText:DropTD[MAX_PLAYERS][22];
new PlayerText:DropName[MAX_PLAYERS][20];
new PlayerText:DropValue[MAX_PLAYERS][20];
new InventoryData[MAX_PLAYERS][MAX_INVENTORY][inventoryData];
new const g_aInventoryItems[][e_InventoryItems] =
{
    {"Money", 1212, false},  //added
    {"Dirtycash", 1580, false},  //added
    {"Phone", 18870,  true},  //added
	{"Vest", 373,  true},  //added
    {"Mask", 19163,  true},  //added
    {"Burger", 2703,  true},  //added
    {"GPS", 18874, true},  //added
    {"Milkshake", 2647, true},  //added
    {"RepairKit", 920,  true},  //added
    {"Gascan", 1650,  true},  //added
    {"Meth", 1580,  true},  //added 
    {"Joint", 2647,  true},  //added
    {"Boombox", 19423,  true},  //added
    {"Helmet", 18645,  true},  //added
    {"Redbull", 2601,  true},   //added
    {"Chickenroll", 2768,  true},  //added
    {"Apple", 19575,  true},  //added
    {"Mats", 1575,  true},  //added
    {"RepairKit", 19921,  true},  //added
    {"Acetone", 2841,  true},  //added 
    {"Battery", 365,  true},  //added
    {"MobileMeth", 18869,  true},  //added
    {"Cigar", 19897,  true},   //added
    {"Pot", 1580,  true},  // Ensure "Pot" is listed correctly
    {"Cocaine", 1579,  true}  //added
};

createinv(playerid)
{
	INVNAME[playerid][0] = CreatePlayerTextDraw(playerid,118.000000, 96.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVNAME[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVNAME[playerid][0], 213.000000, 253.000000);
	PlayerTextDrawSetOutline(playerid,INVNAME[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid,INVNAME[playerid][0], 0);
	PlayerTextDrawAlignment(playerid,INVNAME[playerid][0], 1);
	PlayerTextDrawColour(playerid,INVNAME[playerid][0], 690964479);
	PlayerTextDrawBackgroundColour(playerid,INVNAME[playerid][0], 255);
	PlayerTextDrawBoxColour(playerid,INVNAME[playerid][0], 50);
	PlayerTextDrawUseBox(playerid,INVNAME[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid,INVNAME[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid,INVNAME[playerid][0], 0);

	INVNAME[playerid][1] = CreatePlayerTextDraw(playerid,125.000000, 115.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVNAME[playerid][1], 4);
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVNAME[playerid][1], 199.000000, 3.000000);
	PlayerTextDrawSetOutline(playerid,INVNAME[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid,INVNAME[playerid][1], 0);
	PlayerTextDrawAlignment(playerid,INVNAME[playerid][1], 1);
	PlayerTextDrawColour(playerid,INVNAME[playerid][1], 255);
	PlayerTextDrawBackgroundColour(playerid,INVNAME[playerid][1], 255);
	PlayerTextDrawBoxColour(playerid,INVNAME[playerid][1], 50);
	PlayerTextDrawUseBox(playerid,INVNAME[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid,INVNAME[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,INVNAME[playerid][1], 0);

	INVNAME[playerid][2] = CreatePlayerTextDraw(playerid,126.000000, 115.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVNAME[playerid][2], 4);
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVNAME[playerid][2], 165.000000, 3.000000);
	PlayerTextDrawSetOutline(playerid,INVNAME[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid,INVNAME[playerid][2], 0);
	PlayerTextDrawAlignment(playerid,INVNAME[playerid][2], 1);
	PlayerTextDrawColour(playerid,INVNAME[playerid][2], -16776961);
	PlayerTextDrawBackgroundColour(playerid,INVNAME[playerid][2], 255);
	PlayerTextDrawBoxColour(playerid,INVNAME[playerid][2], 50);
	PlayerTextDrawUseBox(playerid,INVNAME[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid,INVNAME[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,INVNAME[playerid][2], 0);

	INVNAME[playerid][3] = CreatePlayerTextDraw(playerid,126.000000, 105.000000, "Mr_Tooba");
	PlayerTextDrawFont(playerid, INVNAME[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][3], 0.140000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVNAME[playerid][3], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVNAME[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid,INVNAME[playerid][3], 0);
	PlayerTextDrawAlignment(playerid,INVNAME[playerid][3], 1);
	PlayerTextDrawColour(playerid,INVNAME[playerid][3], -1);
	PlayerTextDrawBackgroundColour(playerid,INVNAME[playerid][3], 255);
	PlayerTextDrawBoxColour(playerid,INVNAME[playerid][3], 50);
	PlayerTextDrawUseBox(playerid,INVNAME[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid,INVNAME[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,INVNAME[playerid][3], 0);

	INVNAME[playerid][4] = CreatePlayerTextDraw(playerid,324.000000, 105.000000, "100/300");
	PlayerTextDrawFont(playerid, INVNAME[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][4], 0.140000, 0.699000);
	PlayerTextDrawTextSize(playerid,INVNAME[playerid][4], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVNAME[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid,INVNAME[playerid][4], 0);
	PlayerTextDrawAlignment(playerid,INVNAME[playerid][4], 3);
	PlayerTextDrawColour(playerid,INVNAME[playerid][4], -1);
	PlayerTextDrawBackgroundColour(playerid,INVNAME[playerid][4], 255);
	PlayerTextDrawBoxColour(playerid,INVNAME[playerid][4], 50);
	PlayerTextDrawUseBox(playerid,INVNAME[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid,INVNAME[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid,INVNAME[playerid][4], 0);

	INVNAME[playerid][5] = CreatePlayerTextDraw(playerid,294.000000, 104.000000, "AKRP");
	PlayerTextDrawFont(playerid, INVNAME[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][5], 0.140000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVNAME[playerid][5], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVNAME[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid,INVNAME[playerid][5], 0);
	PlayerTextDrawAlignment(playerid,INVNAME[playerid][5], 1);
	PlayerTextDrawColour(playerid,INVNAME[playerid][5], -1);
	PlayerTextDrawBackgroundColour(playerid,INVNAME[playerid][5], 255);
	PlayerTextDrawBoxColour(playerid,INVNAME[playerid][5], 50);
	PlayerTextDrawUseBox(playerid,INVNAME[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid,INVNAME[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid,INVNAME[playerid][5], 0);

	INVINFO[playerid][0] = CreatePlayerTextDraw(playerid,347.000000, 168.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVINFO[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][0], 55.000000, 117.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][0], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][0], 1);
	PlayerTextDrawColour(playerid,INVINFO[playerid][0], 690964479);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][0], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][0], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][0], 0);

	INVINFO[playerid][1] = CreatePlayerTextDraw(playerid,352.000000, 174.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVINFO[playerid][1], 4);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][1], 45.000000, 18.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][1], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][1], 1);
	PlayerTextDrawColour(playerid,INVINFO[playerid][1], -16776961);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][1], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][1], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][1], 1);

	INVINFO[playerid][2] = CreatePlayerTextDraw(playerid,352.000000, 195.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVINFO[playerid][2], 4);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][2], 45.000000, 18.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][2], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][2], 1);
	PlayerTextDrawColour(playerid,INVINFO[playerid][2], -16776961);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][2], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][2], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][2], 1);

	INVINFO[playerid][3] = CreatePlayerTextDraw(playerid,352.000000, 216.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVINFO[playerid][3], 4);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][3], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][3], 45.000000, 18.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][3], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][3], 1);
	PlayerTextDrawColour(playerid,INVINFO[playerid][3], -16776961);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][3], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][3], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][3], 1);

	INVINFO[playerid][4] = CreatePlayerTextDraw(playerid,352.000000, 237.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVINFO[playerid][4], 4);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][4], 45.000000, 18.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][4], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][4], 1);
	PlayerTextDrawColour(playerid,INVINFO[playerid][4], -16776961);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][4], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][4], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][4], 1);

	INVINFO[playerid][5] = CreatePlayerTextDraw(playerid,352.000000, 258.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INVINFO[playerid][5], 4);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][5], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][5], 45.000000, 18.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][5], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][5], 1);
	PlayerTextDrawColour(playerid,INVINFO[playerid][5], -16776961);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][5], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][5], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][5], 1);

	INVINFO[playerid][6] = CreatePlayerTextDraw(playerid,375.000000, 179.000000, "Amount");
	PlayerTextDrawFont(playerid, INVINFO[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][6], 0.150000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][6], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][6], 0);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][6], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][6], 2);
	PlayerTextDrawColour(playerid,INVINFO[playerid][6], -1);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][6], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][6], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][6], 0);

	INVINFO[playerid][7] = CreatePlayerTextDraw(playerid,375.000000, 199.000000, "Use");
	PlayerTextDrawFont(playerid, INVINFO[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][7], 0.150000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][7], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][7], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][7], 2);
	PlayerTextDrawColour(playerid,INVINFO[playerid][7], -1);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][7], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][7], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][7], 0);

	INVINFO[playerid][8] = CreatePlayerTextDraw(playerid,375.000000, 220.000000, "Give");
	PlayerTextDrawFont(playerid, INVINFO[playerid][8], 1);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][8], 0.150000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][8], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][8], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][8], 2);
	PlayerTextDrawColour(playerid,INVINFO[playerid][8], -1);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][8], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][8], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][8], 0);

	INVINFO[playerid][9] = CreatePlayerTextDraw(playerid,375.000000, 242.000000, "Drop");
	PlayerTextDrawFont(playerid, INVINFO[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][9], 0.150000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][9], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][9], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][9], 2);
	PlayerTextDrawColour(playerid,INVINFO[playerid][9], -1);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][9], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][9], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][9], 0);

	INVINFO[playerid][10] = CreatePlayerTextDraw(playerid,375.000000, 263.000000, "Exit");
	PlayerTextDrawFont(playerid, INVINFO[playerid][10], 1);
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][10], 0.150000, 0.898000);
	PlayerTextDrawTextSize(playerid,INVINFO[playerid][10], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,INVINFO[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid,INVINFO[playerid][10], 0);
	PlayerTextDrawAlignment(playerid,INVINFO[playerid][10], 2);
	PlayerTextDrawColour(playerid,INVINFO[playerid][10], -1);
	PlayerTextDrawBackgroundColour(playerid,INVINFO[playerid][10], 255);
	PlayerTextDrawBoxColour(playerid,INVINFO[playerid][10], 50);
	PlayerTextDrawUseBox(playerid,INVINFO[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid,INVINFO[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid,INVINFO[playerid][10], 0);

	INDEXTD[playerid][0] = CreatePlayerTextDraw(playerid,125.000000, 120.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][0], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][0], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][0], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][0], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][0], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][0], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][0], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][0], 0);

	INDEXTD[playerid][1] = CreatePlayerTextDraw(playerid,165.000000, 120.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][1], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][1], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][1], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][1], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][1], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][1], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][1], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][1], 0);

	INDEXTD[playerid][2] = CreatePlayerTextDraw(playerid,205.000000, 120.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][2], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][2], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][2], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][2], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][2], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][2], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][2], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][2], 0);

	INDEXTD[playerid][3] = CreatePlayerTextDraw(playerid,245.000000, 120.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][3], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][3], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][3], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][3], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][3], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][3], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][3], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][3], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][3], 0);

	INDEXTD[playerid][4] = CreatePlayerTextDraw(playerid,285.000000, 120.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][4], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][4], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][4], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][4], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][4], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][4], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][4], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][4], 0);

	INDEXTD[playerid][5] = CreatePlayerTextDraw(playerid,125.000000, 176.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][5], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][5], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][5], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][5], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][5], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][5], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][5], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][5], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][5], 0);

	INDEXTD[playerid][6] = CreatePlayerTextDraw(playerid,165.000000, 176.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][6], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][6], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][6], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][6], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][6], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][6], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][6], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][6], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][6], 0);

	INDEXTD[playerid][7] = CreatePlayerTextDraw(playerid,205.000000, 176.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][7], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][7], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][7], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][7], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][7], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][7], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][7], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][7], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][7], 0);

	INDEXTD[playerid][8] = CreatePlayerTextDraw(playerid,245.000000, 176.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][8], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][8], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][8], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][8], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][8], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][8], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][8], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][8], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][8], 0);

	INDEXTD[playerid][9] = CreatePlayerTextDraw(playerid,285.000000, 176.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][9], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][9], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][9], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][9], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][9], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][9], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][9], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][9], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][9], 0);

	INDEXTD[playerid][10] = CreatePlayerTextDraw(playerid,125.000000, 232.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][10], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][10], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][10], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][10], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][10], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][10], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][10], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][10], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][10], 0);

	INDEXTD[playerid][11] = CreatePlayerTextDraw(playerid,165.000000, 232.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][11], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][11], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][11], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][11], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][11], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][11], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][11], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][11], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][11], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][11], 0);

	INDEXTD[playerid][12] = CreatePlayerTextDraw(playerid,205.000000, 232.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][12], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][12], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][12], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][12], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][12], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][12], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][12], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][12], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][12], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][12], 0);

	INDEXTD[playerid][13] = CreatePlayerTextDraw(playerid,245.000000, 232.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][13], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][13], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][13], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][13], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][13], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][13], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][13], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][13], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][13], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][13], 0);

	INDEXTD[playerid][14] = CreatePlayerTextDraw(playerid,285.000000, 232.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][14], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][14], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][14], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][14], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][14], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][14], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][14], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][14], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][14], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][14], 0);

	INDEXTD[playerid][15] = CreatePlayerTextDraw(playerid,125.000000, 288.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][15], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][15], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][15], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][15], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][15], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][15], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][15], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][15], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][15], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][15], 0);

	INDEXTD[playerid][16] = CreatePlayerTextDraw(playerid,165.000000, 288.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][16], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][16], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][16], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][16], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][16], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][16], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][16], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][16], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][16], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][16], 0);

	INDEXTD[playerid][17] = CreatePlayerTextDraw(playerid,205.000000, 288.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][17], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][17], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][17], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][17], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][17], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][17], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][17], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][17], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][17], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][17], 0);

	INDEXTD[playerid][18] = CreatePlayerTextDraw(playerid,245.000000, 288.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][18], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][18], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][18], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][18], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][18], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][18], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][18], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][18], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][18], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][18], 0);

	INDEXTD[playerid][19] = CreatePlayerTextDraw(playerid,285.000000, 288.000000, "LD_SPAC:white");
	PlayerTextDrawFont(playerid, INDEXTD[playerid][19], 4);
	PlayerTextDrawLetterSize(playerid, INDEXTD[playerid][19], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,INDEXTD[playerid][19], 39.000000, 51.000000);
	PlayerTextDrawSetOutline(playerid,INDEXTD[playerid][19], 3);
	PlayerTextDrawSetShadow(playerid,INDEXTD[playerid][19], 3);
	PlayerTextDrawAlignment(playerid,INDEXTD[playerid][19], 1);
	PlayerTextDrawColour(playerid,INDEXTD[playerid][19], 859394047);
	PlayerTextDrawBackgroundColour(playerid,INDEXTD[playerid][19], 255);
	PlayerTextDrawBoxColour(playerid,INDEXTD[playerid][19], 50);
	PlayerTextDrawUseBox(playerid,INDEXTD[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid,INDEXTD[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid,INDEXTD[playerid][19], 0);

	NAMETD[playerid][0] = CreatePlayerTextDraw(playerid,128.000000, 121.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][0], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][0], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][0], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][0], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][0], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][0], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][0], 0);

	NAMETD[playerid][1] = CreatePlayerTextDraw(playerid,168.000000, 121.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][1], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][1], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][1], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][1], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][1], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][1], 0);

	NAMETD[playerid][2] = CreatePlayerTextDraw(playerid,208.000000, 121.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][2], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][2], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][2], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][2], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][2], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][2], 0);

	NAMETD[playerid][3] = CreatePlayerTextDraw(playerid,248.000000, 121.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][3], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][3], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][3], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][3], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][3], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][3], 0);

	NAMETD[playerid][4] = CreatePlayerTextDraw(playerid,287.000000, 121.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][4], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][4], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][4], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][4], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][4], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][4], 0);

	NAMETD[playerid][5] = CreatePlayerTextDraw(playerid,128.000000, 176.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][5], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][5], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][5], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][5], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][5], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][5], 0);

	NAMETD[playerid][6] = CreatePlayerTextDraw(playerid,168.000000, 176.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][6], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][6], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][6], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][6], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][6], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][6], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][6], 0);

	NAMETD[playerid][7] = CreatePlayerTextDraw(playerid,208.000000, 176.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][7], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][7], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][7], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][7], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][7], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][7], 0);

	NAMETD[playerid][8] = CreatePlayerTextDraw(playerid,248.000000, 176.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][8], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][8], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][8], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][8], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][8], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][8], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][8], 0);

	NAMETD[playerid][9] = CreatePlayerTextDraw(playerid,287.000000, 176.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][9], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][9], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][9], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][9], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][9], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][9], 0);

	NAMETD[playerid][10] = CreatePlayerTextDraw(playerid,128.000000, 232.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][10], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][10], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][10], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][10], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][10], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][10], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][10], 0);

	NAMETD[playerid][11] = CreatePlayerTextDraw(playerid,168.000000, 232.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][11], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][11], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][11], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][11], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][11], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][11], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][11], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][11], 0);

	NAMETD[playerid][12] = CreatePlayerTextDraw(playerid,287.000000, 232.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][12], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][12], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][12], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][12], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][12], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][12], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][12], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][12], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][12], 0);

	NAMETD[playerid][13] = CreatePlayerTextDraw(playerid,248.000000, 232.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][13], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][13], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][13], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][13], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][13], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][13], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][13], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][13], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][13], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][13], 0);

	NAMETD[playerid][14] = CreatePlayerTextDraw(playerid,208.000000, 232.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][14], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][14], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][14], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][14], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][14], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][14], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][14], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][14], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][14], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][14], 0);

	NAMETD[playerid][15] = CreatePlayerTextDraw(playerid,128.000000, 287.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][15], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][15], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][15], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][15], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][15], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][15], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][15], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][15], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][15], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][15], 0);

	NAMETD[playerid][16] = CreatePlayerTextDraw(playerid,168.000000, 287.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][16], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][16], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][16], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][16], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][16], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][16], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][16], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][16], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][16], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][16], 0);

	NAMETD[playerid][17] = CreatePlayerTextDraw(playerid,208.000000, 287.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][17], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][17], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][17], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][17], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][17], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][17], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][17], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][17], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][17], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][17], 0);

	NAMETD[playerid][18] = CreatePlayerTextDraw(playerid,248.000000, 287.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][18], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][18], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][18], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][18], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][18], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][18], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][18], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][18], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][18], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][18], 0);

	NAMETD[playerid][19] = CreatePlayerTextDraw(playerid,287.000000, 287.000000, "Test");
	PlayerTextDrawFont(playerid, NAMETD[playerid][19], 1);
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][19], 0.128000, 0.699000);
	PlayerTextDrawTextSize(playerid,NAMETD[playerid][19], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,NAMETD[playerid][19], 0);
	PlayerTextDrawSetShadow(playerid,NAMETD[playerid][19], 0);
	PlayerTextDrawAlignment(playerid,NAMETD[playerid][19], 1);
	PlayerTextDrawColour(playerid,NAMETD[playerid][19], -1);
	PlayerTextDrawBackgroundColour(playerid,NAMETD[playerid][19], 255);
	PlayerTextDrawBoxColour(playerid,NAMETD[playerid][19], 50);
	PlayerTextDrawUseBox(playerid,NAMETD[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid,NAMETD[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid,NAMETD[playerid][19], 0);

 	MODELTD[playerid][0] = CreatePlayerTextDraw(playerid,129.000000, 129.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][0], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][0], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][0], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][0], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][0], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][0], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][0], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][0], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][0], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][0], 1, 1);

	MODELTD[playerid][1] = CreatePlayerTextDraw(playerid,169.000000, 129.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][1], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][1], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][1], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][1], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][1], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][1], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][1], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][1], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][1], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][1], 1, 1);

	MODELTD[playerid][2] = CreatePlayerTextDraw(playerid,209.000000, 129.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][2], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][2], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][2], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][2], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][2], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][2], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][2], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][2], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][2], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][2], 1, 1);

	MODELTD[playerid][3] = CreatePlayerTextDraw(playerid,249.000000, 129.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][3], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][3], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][3], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][3], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][3], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][3], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][3], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][3], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][3], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][3], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][3], 1, 1);

	MODELTD[playerid][4] = CreatePlayerTextDraw(playerid,289.000000, 129.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][4], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][4], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][4], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][4], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][4], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][4], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][4], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][4], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][4], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][4], 1, 1);

	MODELTD[playerid][5] = CreatePlayerTextDraw(playerid,129.000000, 185.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][5], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][5], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][5], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][5], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][5], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][5], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][5], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][5], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][5], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][5], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][5], 1, 1);

	MODELTD[playerid][6] = CreatePlayerTextDraw(playerid,169.000000, 185.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][6], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][6], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][6], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][6], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][6], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][6], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][6], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][6], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][6], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][6], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][6], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][6], 1, 1);

	MODELTD[playerid][7] = CreatePlayerTextDraw(playerid,209.000000, 185.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][7], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][7], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][7], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][7], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][7], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][7], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][7], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][7], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][7], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][7], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][7], 1, 1);

	MODELTD[playerid][8] = CreatePlayerTextDraw(playerid,249.000000, 185.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][8], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][8], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][8], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][8], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][8], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][8], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][8], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][8], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][8], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][8], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][8], 1, 1);

	MODELTD[playerid][9] = CreatePlayerTextDraw(playerid,289.000000, 185.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][9], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][9], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][9], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][9], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][9], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][9], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][9], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][9], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][9], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][9], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][9], 1, 1);

	MODELTD[playerid][10] = CreatePlayerTextDraw(playerid,129.000000, 241.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][10], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][10], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][10], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][10], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][10], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][10], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][10], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][10], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][10], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][10], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][10], 1, 1);

	MODELTD[playerid][11] = CreatePlayerTextDraw(playerid,169.000000, 241.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][11], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][11], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][11], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][11], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][11], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][11], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][11], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][11], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][11], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][11], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][11], 1, 1);

	MODELTD[playerid][12] = CreatePlayerTextDraw(playerid,209.000000, 241.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][12], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][12], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][12], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][12], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][12], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][12], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][12], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][12], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][12], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][12], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][12], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][12], 1, 1);

	MODELTD[playerid][13] = CreatePlayerTextDraw(playerid,249.000000, 241.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][13], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][13], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][13], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][13], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][13], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][13], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][13], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][13], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][13], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][13], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][13], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][13], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][13], 1, 1);

	MODELTD[playerid][14] = CreatePlayerTextDraw(playerid,288.000000, 241.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][14], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][14], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][14], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][14], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][14], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][14], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][14], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][14], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][14], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][14], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][14], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][14], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][14], 1, 1);

	MODELTD[playerid][15] = CreatePlayerTextDraw(playerid,129.000000, 297.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][15], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][15], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][15], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][15], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][15], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][15], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][15], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][15], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][15], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][15], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][15], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][15], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][15], 1, 1);

	MODELTD[playerid][16] = CreatePlayerTextDraw(playerid,169.000000, 297.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][16], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][16], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][16], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][16], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][16], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][16], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][16], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][16], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][16], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][16], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][16], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][16], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][16], 1, 1);

	MODELTD[playerid][17] = CreatePlayerTextDraw(playerid,209.000000, 297.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][17], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][17], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][17], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][17], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][17], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][17], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][17], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][17], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][17], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][17], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][17], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][17], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][17], 1, 1);

	MODELTD[playerid][18] = CreatePlayerTextDraw(playerid,249.000000, 297.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][18], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][18], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][18], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][18], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][18], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][18], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][18], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][18], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][18], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][18], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][18], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][18], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][18], 1, 1);

	MODELTD[playerid][19] = CreatePlayerTextDraw(playerid,289.000000, 297.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, MODELTD[playerid][19], 5);
	PlayerTextDrawLetterSize(playerid, MODELTD[playerid][19], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid,MODELTD[playerid][19], 30.000000, 35.000000);
	PlayerTextDrawSetOutline(playerid,MODELTD[playerid][19], 0);
	PlayerTextDrawSetShadow(playerid,MODELTD[playerid][19], 0);
	PlayerTextDrawAlignment(playerid,MODELTD[playerid][19], 1);
	PlayerTextDrawColour(playerid,MODELTD[playerid][19], -1);
	PlayerTextDrawBackgroundColour(playerid,MODELTD[playerid][19], 0);
	PlayerTextDrawBoxColour(playerid,MODELTD[playerid][19], 255);
	PlayerTextDrawUseBox(playerid,MODELTD[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid,MODELTD[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid,MODELTD[playerid][19], 1);
	PlayerTextDrawSetPreviewModel(playerid,MODELTD[playerid][19], 1212);
	PlayerTextDrawSetPreviewRot(playerid,MODELTD[playerid][19], 0.000000, 0.000000, 0.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid,MODELTD[playerid][19], 1, 1);

	AMOUNTTD[playerid][0] = CreatePlayerTextDraw(playerid,126.000000, 162.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][0], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][0], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][0], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][0], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][0], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][0], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][0], 0);

	AMOUNTTD[playerid][1] = CreatePlayerTextDraw(playerid,166.000000, 162.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][1], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][1], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][1], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][1], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][1], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][1], 0);

	AMOUNTTD[playerid][2] = CreatePlayerTextDraw(playerid,206.000000, 162.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][2], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][2], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][2], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][2], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][2], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][2], 0);

	AMOUNTTD[playerid][3] = CreatePlayerTextDraw(playerid,246.000000, 162.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][3], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][3], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][3], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][3], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][3], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][3], 0);

	AMOUNTTD[playerid][4] = CreatePlayerTextDraw(playerid,286.000000, 162.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][4], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][4], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][4], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][4], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][4], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][4], 0);

	AMOUNTTD[playerid][5] = CreatePlayerTextDraw(playerid,126.000000, 218.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][5], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][5], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][5], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][5], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][5], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][5], 0);

	AMOUNTTD[playerid][6] = CreatePlayerTextDraw(playerid,166.000000, 218.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][6], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][6], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][6], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][6], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][6], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][6], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][6], 0);

	AMOUNTTD[playerid][7] = CreatePlayerTextDraw(playerid,206.000000, 218.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][7], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][7], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][7], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][7], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][7], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][7], 0);

	AMOUNTTD[playerid][8] = CreatePlayerTextDraw(playerid,246.000000, 218.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][8], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][8], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][8], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][8], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][8], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][8], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][8], 0);

	AMOUNTTD[playerid][9] = CreatePlayerTextDraw(playerid,286.000000, 218.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][9], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][9], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][9], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][9], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][9], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][9], 0);

	AMOUNTTD[playerid][10] = CreatePlayerTextDraw(playerid,126.000000, 274.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][10], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][10], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][10], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][10], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][10], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][10], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][10], 0);

	AMOUNTTD[playerid][11] = CreatePlayerTextDraw(playerid,166.000000, 274.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][11], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][11], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][11], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][11], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][11], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][11], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][11], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][11], 0);

	AMOUNTTD[playerid][12] = CreatePlayerTextDraw(playerid,206.000000, 274.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][12], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][12], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][12], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][12], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][12], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][12], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][12], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][12], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][12], 0);

	AMOUNTTD[playerid][13] = CreatePlayerTextDraw(playerid,246.000000, 274.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][13], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][13], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][13], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][13], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][13], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][13], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][13], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][13], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][13], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][13], 0);

	AMOUNTTD[playerid][14] = CreatePlayerTextDraw(playerid,286.000000, 275.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][14], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][14], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][14], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][14], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][14], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][14], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][14], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][14], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][14], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][14], 0);

	AMOUNTTD[playerid][15] = CreatePlayerTextDraw(playerid,126.000000, 330.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][15], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][15], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][15], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][15], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][15], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][15], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][15], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][15], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][15], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][15], 0);

	AMOUNTTD[playerid][16] = CreatePlayerTextDraw(playerid,166.000000, 330.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][16], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][16], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][16], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][16], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][16], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][16], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][16], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][16], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][16], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][16], 0);

	AMOUNTTD[playerid][17] = CreatePlayerTextDraw(playerid,206.000000, 330.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][17], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][17], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][17], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][17], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][17], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][17], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][17], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][17], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][17], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][17], 0);

	AMOUNTTD[playerid][18] = CreatePlayerTextDraw(playerid,247.000000, 330.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][18], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][18], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][18], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][18], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][18], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][18], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][18], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][18], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][18], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][18], 0);

	AMOUNTTD[playerid][19] = CreatePlayerTextDraw(playerid,286.000000, 330.000000, "10000x");
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][19], 1);
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][19], 0.119000, 0.597998);
	PlayerTextDrawTextSize(playerid,AMOUNTTD[playerid][19], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,AMOUNTTD[playerid][19], 0);
	PlayerTextDrawSetShadow(playerid,AMOUNTTD[playerid][19], 0);
	PlayerTextDrawAlignment(playerid,AMOUNTTD[playerid][19], 1);
	PlayerTextDrawColour(playerid,AMOUNTTD[playerid][19], -1);
	PlayerTextDrawBackgroundColour(playerid,AMOUNTTD[playerid][19], 255);
	PlayerTextDrawBoxColour(playerid,AMOUNTTD[playerid][19], 50);
	PlayerTextDrawUseBox(playerid,AMOUNTTD[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid,AMOUNTTD[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid,AMOUNTTD[playerid][19], 0);

    
	DropTD[playerid][0] = CreatePlayerTextDraw(playerid, 404.000, 115.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][0], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][0], 206.000, 200.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][0], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][0],  690964479);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][0], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][0], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][0], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][0], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][0], true);

	DropTD[playerid][1] = CreatePlayerTextDraw(playerid, 410.000, 117.000, "Drop");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][1], 0.170, 1.199);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][1], 30.000, 7.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][1], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][1], -1061109505);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][1], 0);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][1], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][1], true);

	DropTD[playerid][2] = CreatePlayerTextDraw(playerid, 409.000, 134.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][2], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][2], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][2], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][2], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][2], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][2], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][2], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][2], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][2], true);

	DropTD[playerid][3] = CreatePlayerTextDraw(playerid, 449.000, 134.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][3], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][3], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][3], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][3], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][3], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][3], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][3], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][3], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][3], true);

	DropTD[playerid][4] = CreatePlayerTextDraw(playerid, 489.000, 134.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][4], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][4], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][4], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][4], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][4], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][4], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][4], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][4], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][4], true);

	DropTD[playerid][5] = CreatePlayerTextDraw(playerid, 529.000, 134.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][5], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][5], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][5], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][5], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][5], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][5], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][5], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][5], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][5], true);

	DropTD[playerid][6] = CreatePlayerTextDraw(playerid, 569.000, 134.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][6], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][6], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][6], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][6], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][6], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][6], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][6], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][6], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][6], true);

	DropTD[playerid][7] = CreatePlayerTextDraw(playerid, 409.000, 195.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][7], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][7], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][7], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][7], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][7], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][7], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][7], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][7], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][7], true);

	DropTD[playerid][8] = CreatePlayerTextDraw(playerid, 449.000, 195.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][8], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][8], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][8], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][8], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][8], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][8], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][8], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][8], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][8], true);

	DropTD[playerid][9] = CreatePlayerTextDraw(playerid, 489.000, 195.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][9], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][9], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][9], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][9], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][9], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][9], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][9], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][9], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][9], true);

	DropTD[playerid][10] = CreatePlayerTextDraw(playerid, 529.000, 195.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][10], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][10], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][10], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][10], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][10], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][10], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][10], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][10], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][10], true);

	DropTD[playerid][11] = CreatePlayerTextDraw(playerid, 569.000, 195.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][11], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][11], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][11], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][11], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][11], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][11], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][11], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][11], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][11], true);

	DropTD[playerid][12] = CreatePlayerTextDraw(playerid, 409.000, 256.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][12], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][12], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][12], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][12], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][12], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][12], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][12], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][12], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][12], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][12], true);

	DropTD[playerid][13] = CreatePlayerTextDraw(playerid, 449.000, 256.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][13], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][13], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][13], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][13], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][13], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][13], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][13], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][13], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][13], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][13], true);

	DropTD[playerid][14] = CreatePlayerTextDraw(playerid, 489.000, 256.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][14], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][14], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][14], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][14], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][14], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][14], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][14], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][14], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][14], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][14], true);

	DropTD[playerid][15] = CreatePlayerTextDraw(playerid, 529.000, 256.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][15], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][15], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][15], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][15], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][15], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][15], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][15], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][15], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][15], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][15], true);

	DropTD[playerid][16] = CreatePlayerTextDraw(playerid, 569.000, 256.500, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropTD[playerid][16], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropTD[playerid][16], 36.000, 53.000);
	PlayerTextDrawAlignment(playerid, DropTD[playerid][16], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropTD[playerid][16], 859394047);
	PlayerTextDrawUseBox(playerid, DropTD[playerid][16], true);
	PlayerTextDrawBoxColour(playerid, DropTD[playerid][16], 50);
	PlayerTextDrawSetShadow(playerid, DropTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, DropTD[playerid][16], 1);
	PlayerTextDrawBackgroundColour(playerid, DropTD[playerid][16], 255);
	PlayerTextDrawFont(playerid, DropTD[playerid][16], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, DropTD[playerid][16], true);


	DropModel[playerid][0] = CreatePlayerTextDraw(playerid, 415.000, 142.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][0], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][0], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][0], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][0], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][0], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][0], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][0], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][0], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][0], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][0], 3257);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][0], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][0], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][0], true);

	DropModel[playerid][1] = CreatePlayerTextDraw(playerid, 455.000, 142.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][1], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][1], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][1], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][1], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][1], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][1], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][1], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][1], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][1], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][1], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][1], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][1], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][1], true);

	DropModel[playerid][2] = CreatePlayerTextDraw(playerid, 496.000, 142.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][2], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][2], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][2], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][2], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][2], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][2], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][2], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][2], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][2], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][2], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][2], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][2], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][2], true);

	DropModel[playerid][3] = CreatePlayerTextDraw(playerid, 536.000, 142.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][3], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][3], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][3], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][3], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][3], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][3], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][3], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][3], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][3], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][3], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][3], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][3], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][3], true);

	DropModel[playerid][4] = CreatePlayerTextDraw(playerid, 576.000, 142.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][4], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][4], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][4], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][4], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][4], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][4], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][4], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][4], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][4], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][4], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][4], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][4], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][4], true);

	DropModel[playerid][5] = CreatePlayerTextDraw(playerid, 415.000, 203.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][5], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][5], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][5], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][5], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][5], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][5], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][5], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][5], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][5], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][5], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][5], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][5], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][5], true);

	DropModel[playerid][6] = CreatePlayerTextDraw(playerid, 455.000, 203.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][6], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][6], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][6], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][6], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][6], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][6], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][6], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][6], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][6], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][6], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][6], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][6], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][6], true);

	DropModel[playerid][7] = CreatePlayerTextDraw(playerid, 496.000, 203.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][7], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][7], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][7], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][7], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][7], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][7], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][7], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][7], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][7], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][7], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][7], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][7], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][7], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][7], true);

	DropModel[playerid][8] = CreatePlayerTextDraw(playerid, 536.000, 203.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][8], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][8], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][8], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][8], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][8], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][8], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][8], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][8], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][8], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][8], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][8], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][8], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][8], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][8], true);

	DropModel[playerid][9] = CreatePlayerTextDraw(playerid, 576.000, 203.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][9], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][9], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][9], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][9], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][9], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][9], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][9], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][9], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][9], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][9], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][9], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][9], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][9], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][9], true);

	DropModel[playerid][10] = CreatePlayerTextDraw(playerid, 415.000, 264.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][10], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][10], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][10], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][10], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][10], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][10], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][10], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][10], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][10], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][10], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][10], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][10], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][10], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][10], true);

	DropModel[playerid][11] = CreatePlayerTextDraw(playerid, 455.000, 264.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][11], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][11], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][11], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][11], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][11], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][11], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][11], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][11], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][11], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][11], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][11], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][11], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][11], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][11], true);

	DropModel[playerid][12] = CreatePlayerTextDraw(playerid, 496.000, 264.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][12], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][12], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][12], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][12], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][12], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][12], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][12], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][12], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][12], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][12], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][12], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][12], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][12], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][12], true);

	DropModel[playerid][13] = CreatePlayerTextDraw(playerid, 536.000, 264.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][13], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][13], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][13], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][13], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][13], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][13], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][13], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][13], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][13], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][13], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][13], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][13], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][13], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][13], true);

	DropModel[playerid][14] = CreatePlayerTextDraw(playerid, 576.000, 264.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, DropModel[playerid][14], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, DropModel[playerid][14], 33.000, 37.000);
	PlayerTextDrawAlignment(playerid, DropModel[playerid][14], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropModel[playerid][14], -1);
	PlayerTextDrawUseBox(playerid, DropModel[playerid][14], true);
	PlayerTextDrawBoxColour(playerid, DropModel[playerid][14], 50);
	PlayerTextDrawSetShadow(playerid, DropModel[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, DropModel[playerid][14], 1);
	PlayerTextDrawBackgroundColour(playerid, DropModel[playerid][14], 0);
	PlayerTextDrawFont(playerid, DropModel[playerid][14], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawSetProportional(playerid, DropModel[playerid][14], true);
	PlayerTextDrawSetPreviewModel(playerid, DropModel[playerid][14], 2880);
	PlayerTextDrawSetPreviewRot(playerid, DropModel[playerid][14], -10.000, 0.000, -20.000, 1.000);
	PlayerTextDrawSetPreviewVehicleColours(playerid, DropModel[playerid][14], 1, 1);
	PlayerTextDrawSetSelectable(playerid, DropModel[playerid][14], true);



	DropName[playerid][0] = CreatePlayerTextDraw(playerid, 411.000, 178.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][0], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][0], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][0], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][0], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][0], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][0], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][0], true);

	DropName[playerid][1] = CreatePlayerTextDraw(playerid, 451.000, 178.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][1], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][1], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][1], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][1], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][1], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][1], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][1], true);

	DropName[playerid][2] = CreatePlayerTextDraw(playerid, 491.000, 178.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][2], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][2], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][2], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][2], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][2], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][2], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][2], true);

	DropName[playerid][3] = CreatePlayerTextDraw(playerid, 532.000, 178.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][3], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][3], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][3], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][3], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][3], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][3], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][3], true);

	DropName[playerid][4] = CreatePlayerTextDraw(playerid, 572.000, 178.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][4], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][4], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][4], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][4], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][4], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][4], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][4], true);

	DropName[playerid][5] = CreatePlayerTextDraw(playerid, 411.000, 239.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][5], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][5], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][5], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][5], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][5], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][5], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][5], true);

	DropName[playerid][6] = CreatePlayerTextDraw(playerid, 451.000, 239.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][6], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][6], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][6], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][6], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][6], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][6], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][6], true);

	DropName[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 239.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][7], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][7], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][7], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][7], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][7], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][7], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][7], true);

	DropName[playerid][8] = CreatePlayerTextDraw(playerid, 532.000, 239.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][8], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][8], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][8], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][8], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][8], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][8], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][8], true);

	DropName[playerid][9] = CreatePlayerTextDraw(playerid, 572.000, 239.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][9], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][9], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][9], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][9], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][9], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][9], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][9], true);

	DropName[playerid][10] = CreatePlayerTextDraw(playerid, 411.000, 300.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][10], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][10], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][10], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][10], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][10], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][10], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][10], true);

	DropName[playerid][11] = CreatePlayerTextDraw(playerid, 451.000, 300.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][11], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][11], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][11], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][11], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][11], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][11], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][11], true);

	DropName[playerid][12] = CreatePlayerTextDraw(playerid, 491.000, 300.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][12], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][12], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][12], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][12], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][12], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][12], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][12], true);

	DropName[playerid][13] = CreatePlayerTextDraw(playerid, 532.000, 300.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][13], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][13], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][13], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][13], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][13], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][13], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][13], true);

	DropName[playerid][14] = CreatePlayerTextDraw(playerid, 572.000, 300.000, "Desert_Eagle");
	PlayerTextDrawLetterSize(playerid, DropName[playerid][14], 0.097, 0.799);
	PlayerTextDrawTextSize(playerid, DropName[playerid][14], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropName[playerid][14], TEXT_DRAW_ALIGN_LEFT);
	PlayerTextDrawColour(playerid, DropName[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, DropName[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, DropName[playerid][14], 0);
	PlayerTextDrawBackgroundColour(playerid, DropName[playerid][14], 255);
	PlayerTextDrawFont(playerid, DropName[playerid][14], TEXT_DRAW_FONT_2);
	PlayerTextDrawSetProportional(playerid, DropName[playerid][14], true);

	DropValue[playerid][0] = CreatePlayerTextDraw(playerid, 441.000, 136.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][0], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][0], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][0], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][0], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][0], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][0], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][0], true);

	DropValue[playerid][1] = CreatePlayerTextDraw(playerid, 482.000, 136.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][1], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][1], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][1], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][1], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][1], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][1], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][1], true);

	DropValue[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 136.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][2], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][2], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][2], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][2], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][2], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][2], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][2], true);

	DropValue[playerid][3] = CreatePlayerTextDraw(playerid, 562.000, 136.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][3], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][3], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][3], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][3], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][3], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][3], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][3], true);

	DropValue[playerid][4] = CreatePlayerTextDraw(playerid, 602.000, 136.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][4], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][4], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][4], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][4], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][4], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][4], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][4], true);

	DropValue[playerid][5] = CreatePlayerTextDraw(playerid, 441.000, 197.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][5], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][5], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][5], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][5], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][5], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][5], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][5], true);

	DropValue[playerid][6] = CreatePlayerTextDraw(playerid, 482.000, 197.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][6], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][6], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][6], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][6], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][6], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][6], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][6], true);

	DropValue[playerid][7] = CreatePlayerTextDraw(playerid, 522.000, 197.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][7], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][7], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][7], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][7], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][7], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][7], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][7], true);

	DropValue[playerid][8] = CreatePlayerTextDraw(playerid, 562.000, 197.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][8], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][8], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][8], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][8], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][8], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][8], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][8], true);

	DropValue[playerid][9] = CreatePlayerTextDraw(playerid, 602.000, 197.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][9], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][9], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][9], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][9], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][9], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][9], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][9], true);

	DropValue[playerid][10] = CreatePlayerTextDraw(playerid, 441.000, 258.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][10], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][10], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][10], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][10], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][10], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][10], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][10], true);

	DropValue[playerid][11] = CreatePlayerTextDraw(playerid, 482.000, 258.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][11], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][11], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][11], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][11], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][11], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][11], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][11], true);

	DropValue[playerid][12] = CreatePlayerTextDraw(playerid, 522.000, 258.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][12], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][12], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][12], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][12], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][12], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][12], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][12], true);

	DropValue[playerid][13] = CreatePlayerTextDraw(playerid, 562.000, 258.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][13], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][13], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][13], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][13], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][13], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][13], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][13], true);

	DropValue[playerid][14] = CreatePlayerTextDraw(playerid, 602.000, 258.000, "111x");
	PlayerTextDrawLetterSize(playerid, DropValue[playerid][14], 0.170, 1.000);
	PlayerTextDrawTextSize(playerid, DropValue[playerid][14], 37.000, 8.000);
	PlayerTextDrawAlignment(playerid, DropValue[playerid][14], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawColour(playerid, DropValue[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, DropValue[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, DropValue[playerid][14], 0);
	PlayerTextDrawBackgroundColour(playerid, DropValue[playerid][14], 255);
	PlayerTextDrawFont(playerid, DropValue[playerid][14], TEXT_DRAW_FONT_1);
	PlayerTextDrawSetProportional(playerid, DropValue[playerid][14], true);
		
}

forward Dropped_Load();
public Dropped_Load()
{
    static
	    rows,
	    fields;

	cache_get_data(rows, fields, connectionID);
	
	for (new i = 0; i < rows; i ++) if (i < MAX_DROPPED_ITEMS)
  	{
  		new id;
    	
	
		id = cache_get_field_content_int(i, "id");
		cache_get_field_content(i, "itemName", DroppedItems[i][droppedItem]);
		DroppedItems[i][droppedModel] = cache_get_field_content_int(i, "itemModel");
		DroppedItems[i][droppedQuantity] = cache_get_field_content_int(i, "itemQuantity");
		DroppedItems[i][droppedPos][0] =  cache_get_field_content_float(i, "itemX");
		DroppedItems[i][droppedPos][1] =  cache_get_field_content_float(i, "itemY");
		DroppedItems[i][droppedPos][2] =  cache_get_field_content_float(i, "itemZ");
		DroppedItems[i][droppedInt]    =  cache_get_field_content_int(i, "itemInt");
		DroppedItems[i][droppedWorld]  =  cache_get_field_content_int(i, "itemWorld");
		DroppedItems[i][droppedObject] = CreateDynamicObject(DroppedItems[i][droppedModel], DroppedItems[i][droppedPos][0], DroppedItems[i][droppedPos][1], DroppedItems[i][droppedPos][2], 0.0, 0.0, 0.0, DroppedItems[i][droppedWorld], DroppedItems[i][droppedInt]);
		DroppedItems[i][droppedText3D] = CreateDynamic3DTextLabel(DroppedItems[i][droppedItem], COLOR_SERVER, DroppedItems[i][droppedPos][0], DroppedItems[i][droppedPos][1], DroppedItems[i][droppedPos][2], 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, DroppedItems[i][droppedWorld], DroppedItems[i][droppedInt]);
		DroppedItems[i][droppedID] = id;
			
	}
	printf("[DROPITEM] Loaded: %d Dropped Items", rows);
}
DropItem(id, const item[], playerid, model, quantity = 1, Float:x, Float:y, Float:z, interior, world, weaponid = 0, ammo = 0)
{
    new query[1024];
    new nearestItemIndex = -1;

    for (new i = 0; i < MAX_DROPPED_ITEMS; i++)
    {
        if (DroppedItems[i][droppedModel] && !strcmp(DroppedItems[i][droppedItem], item, true))
        {
            new Float:distance = GetPlayerDistanceFromPoint(playerid,DroppedItems[i][droppedPos][0], DroppedItems[i][droppedPos][1], DroppedItems[i][droppedPos][2]) ;
				
			if (GetPlayerInterior(playerid) == DroppedItems[i][droppedInt] && GetPlayerVirtualWorld(playerid) == DroppedItems[i][droppedWorld] && distance < 2.1)
			{				
				nearestItemIndex = i;
				break;
			}
        }
    }

    if (nearestItemIndex != -1)
    {
        Item_SetQuantity(nearestItemIndex, DroppedItems[nearestItemIndex][droppedQuantity] + quantity);
        DroppedItems[nearestItemIndex][droppedTime] = gettime();
        Inventory_Remove(playerid, item, quantity);
		OnPlayerDropItem(playerid, DroppedItems[nearestItemIndex][droppedItem], quantity);
        Inventory_Update(playerid);
        return nearestItemIndex;
    }
    else
    {
        for (new i = 0; i < MAX_DROPPED_ITEMS; i++)
        {
            if (!DroppedItems[i][droppedModel])
            {
                format(DroppedItems[i][droppedItem], 32, item);
                if (playerid == INVALID_PLAYER_ID)
                    format(DroppedItems[i][droppedPlayer], 24, "Admin");
                else
                    format(DroppedItems[i][droppedPlayer], 24, GetRPName(playerid));

                DroppedItems[i][droppedModel] = model;
                DroppedItems[i][droppedQuantity] = quantity;
                DroppedItems[i][droppedWeapon] = weaponid;
                DroppedItems[i][droppedAmmo] = ammo;
                DroppedItems[i][droppedPos][0] = x;
                DroppedItems[i][droppedPos][1] = y;
                DroppedItems[i][droppedPos][2] = z;
                DroppedItems[i][droppedTime] = gettime();
                DroppedItems[i][droppedInt] = interior;
                DroppedItems[i][droppedWorld] = world;

                OnPlayerDropItem(playerid, DroppedItems[i][droppedItem], DroppedItems[i][droppedQuantity]);
                Inventory_Remove(playerid, item, quantity);
                Inventory_Update(playerid);

                if (IsWeaponModel(model))
                {
                    DroppedItems[i][droppedObject] = CreateDynamicObject(model, x, y, z, 93.7, 120.0, 120.0, world, interior);
                }
                else
                {
                    DroppedItems[i][droppedObject] = CreateDynamicObject(model, x, y, z, 0.0, 0.0, 0.0, world, interior);
                }

                DroppedItems[i][droppedText3D] = CreateDynamic3DTextLabel(item, COLOR_SERVER, x, y, z, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, world, interior);

                for (new j = 0; j < sizeof(g_aInventoryItems); j++)
                {
                    if (!strcmp(g_aInventoryItems[j][e_InventoryItem], InventoryData[playerid][id][invItem], true))
                    {
                        if(g_aInventoryItems[j][e_InventoryDrop] == true)
						{
							format(query, sizeof(query), "INSERT INTO `dropped` (`itemName`, `itemPlayer`, `itemModel`, `itemQuantity`, `itemWeapon`, `itemAmmo`, `itemX`, `itemY`, `itemZ`, `itemInt`, `itemWorld`, `itemTime`) VALUES('%s', '%s', '%d', '%d', '%d', '%d', '%.4f', '%.4f', '%.4f', '%d', '%d', '%d')", item, DroppedItems[i][droppedPlayer], model, quantity, weaponid, ammo, x, y, z, interior, world, gettime());
							mysql_tquery(connectionID, query, "OnDroppedItem", "d", i);
						}
                    }
                }
           
                return i;
            }
        }
    }

    return -1;
}


forward OnDroppedItem(itemid);
public OnDroppedItem(itemid)
{
    if(itemid == -1 || !DroppedItems[itemid][droppedModel])
        return 0;

    DroppedItems[itemid][droppedID] = cache_insert_id();
    return 1;
}
IsWeaponModel(model) {
    new const g_aWeaponModels[] = {
        0, 331, 333, 334, 335, 336, 337, 338, 339, 341, 321, 322, 323, 324,
        325, 326, 342, 343, 344, 0, 0, 0, 346, 347, 348, 349, 350, 351, 352,
        353, 355, 356, 372, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366,
        367, 368, 368, 371
    };
    for (new i = 0; i < sizeof(g_aWeaponModels); i ++) if(g_aWeaponModels[i] == model) {
        return 1;
    }
    return 0;
}

Item_Nearest(playerid)
{
	for (new i = 0; i != MAX_DROPPED_ITEMS; i ++) if (DroppedItems[i][droppedModel] && IsPlayerInRangeOfPoint(playerid, 1.9, DroppedItems[i][droppedPos][0], DroppedItems[i][droppedPos][1], DroppedItems[i][droppedPos][2]))
	{
		if (GetPlayerInterior(playerid) == DroppedItems[i][droppedInt] && GetPlayerVirtualWorld(playerid) == DroppedItems[i][droppedWorld])
			return i;
	}
	return -1;
}

Item_SetQuantity(itemid, amount)
{
	new
		string[64];

	if (itemid != -1 && DroppedItems[itemid][droppedModel])
	{
		DroppedItems[itemid][droppedQuantity] = amount;

		format(string, sizeof(string), "UPDATE `dropped` SET `itemQuantity` = %d WHERE `id` = '%d'", amount, DroppedItems[itemid][droppedID]);
		mysql_tquery(connectionID, string);
	}
	return 1;
}

Item_Delete(itemid)
{
	static
		query[64];

	if (itemid != -1 && DroppedItems[itemid][droppedModel])
	{
		DroppedItems[itemid][droppedModel] = 0;
		DroppedItems[itemid][droppedQuantity] = 0;
		DroppedItems[itemid][droppedPos][0] = 0.0;
		DroppedItems[itemid][droppedPos][1] = 0.0;
		DroppedItems[itemid][droppedPos][2] = 0.0;
		DroppedItems[itemid][droppedInt] = 0;
		DroppedItems[itemid][droppedWorld] = 0;
		DroppedItems[itemid][droppedTime] = 0;

		DestroyDynamicObject(DroppedItems[itemid][droppedObject]);
		DestroyDynamic3DTextLabel(DroppedItems[itemid][droppedText3D]);

		format(query, sizeof(query), "DELETE FROM `dropped` WHERE `id` = '%d'", DroppedItems[itemid][droppedID]);
		mysql_tquery(connectionID, query);
	}
	return 1;
}

PickupItem(playerid, itemid)
{
	if (itemid != -1 && DroppedItems[itemid][droppedModel])
	{
		
		if(DroppedItems[itemid][droppedWeapon] != 0)
		{
			new id = Inventory_Add(playerid, DroppedItems[itemid][droppedItem], DroppedItems[itemid][droppedModel], DroppedItems[itemid][droppedQuantity]);

			if (id == -1)
				return SendClientMessage(playerid, COLOR_SYNTAX,"You don't have any inventory slots left.");

			if(id == -2)
			    return 1;
			GivePlayerWeapon(playerid, DroppedItems[itemid][droppedWeapon], DroppedItems[itemid][droppedAmmo]);
			Item_Delete(itemid);
			return 1;
		}
		new id = Inventory_Addset(playerid, DroppedItems[itemid][droppedItem], DroppedItems[itemid][droppedModel], DroppedItems[itemid][droppedQuantity]);
        
		if (id == -1)
			return SendClientMessage(playerid, COLOR_SYNTAX, "You don't have any inventory slots left.");

		PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][id], DroppedItems[itemid][droppedModel]);

		if(DroppedItems[itemid][droppedModel] == 18867)
		{
			PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][id], -254.000000, 0.000000, 0.000000, 2.779998);
		}
		else if(DroppedItems[itemid][droppedModel] == 16776)
		{
			PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][id], 0.000000, 0.000000, -85.000000, 1.000000);
		}
		else if(DroppedItems[itemid][droppedModel] == 1581)
		{
			PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][id], 0.000000, 0.000000, -180.000000, 1.000000);
		}
		PlayerTextDrawShow(playerid, AMOUNTTD[playerid][id]);
		PlayerTextDrawShow(playerid, MODELTD[playerid][id]);
		PlayerTextDrawShow(playerid, NAMETD[playerid][id]);
	

        OnPlayerPickItem(playerid, DroppedItems[itemid][droppedItem], DroppedItems[itemid][droppedQuantity]);
		
		PlayerTextDrawHide(playerid, DropModel[playerid][DroppedItems[itemid][droptext]]); 
		PlayerTextDrawHide(playerid, DropName[playerid][DroppedItems[itemid][droptext]]); 
		PlayerTextDrawHide(playerid, DropValue[playerid][DroppedItems[itemid][droptext]]); 
		Item_Delete(itemid);
		Inventory_Update(playerid);
	}
	return 1;
}