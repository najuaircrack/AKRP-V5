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


//Safezone
enum szInfo
{
	Float:szPosX,
 	Float:szPosY,
 	Float:szPosZ,
 	szSize,
 	szPickupID,
 	Text3D: szTextID,
};
new SafeZoneInfo[MAX_SZ][szInfo];
stock SaveSafeZones()
{
 	new
	szFileStr[1024],
 	File: fHandle = fopen("SafeZones.cfg", io_write);
	for(new iIndex; iIndex < MAX_SZ; iIndex++)
	{
  		format(szFileStr, sizeof(szFileStr), "%f|%f|%f|%d|%d\r\n",
  		SafeZoneInfo[iIndex][szPosX],
  		SafeZoneInfo[iIndex][szPosY],
  		SafeZoneInfo[iIndex][szPosZ],
  		SafeZoneInfo[iIndex][szSize],
  		SafeZoneInfo[iIndex][szPickupID]);
  		fwrite(fHandle, szFileStr);
	}
	return fclose(fHandle);
}

stock LoadSafeZones()
{
	if(!fexist("SafeZones.cfg")) return 1;

	new string[128],
	szFileStr[128],
	File: iFileHandle = fopen("SafeZones.cfg", io_read),
	iIndex;

	while(iIndex < sizeof(SafeZoneInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fffii",
		SafeZoneInfo[iIndex][szPosX],
		SafeZoneInfo[iIndex][szPosY],
		SafeZoneInfo[iIndex][szPosZ],
		SafeZoneInfo[iIndex][szSize],
		SafeZoneInfo[iIndex][szPickupID]
	);
		format(string, sizeof(string), "{ffffff}[{2dff99}A{ffffff}K{2dff99}RP{ffffff}]\n{00FFFF}Safe Zone(ID: %d)\n{24D12F}%d Meters\n{DB8B35}Non-Kill",iIndex,SafeZoneInfo[iIndex][szSize]);
		if(SafeZoneInfo[iIndex][szPosX] != 0.0)
		{
			SafeZoneInfo[iIndex][szPickupID] = CreateDynamicPickup(19134, 23, SafeZoneInfo[iIndex][szPosX], SafeZoneInfo[iIndex][szPosY], SafeZoneInfo[iIndex][szPosZ]);
			SafeZoneInfo[iIndex][szTextID] = CreateDynamic3DTextLabel(string, -1, SafeZoneInfo[iIndex][szPosX], SafeZoneInfo[iIndex][szPosY], SafeZoneInfo[iIndex][szPosZ]+0.5,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
		}
		++iIndex;
	}
	return fclose(iFileHandle);
}


// forward SZRespawn(playerid); 
// public SZRespawn(playerid)
// {
//     new vehicleid = GetPlayerVehicleID(playerid);
//     if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && IsPlayerAtGreenZone(playerid))
//     {
//          DespawnVehicle(vehicleid);
//          SendClientMessage(playerid, COLOR_SYNTAX, "Vehicle Has Been Respawned As It Was In Safe Zone for 1 Min");
//     }
//     else
//     {
//        SetTimerEx("SZRespawn", 60000, false, "i", vehicleid);
//     }
//     return 0;
// }

IsPlayerAtGreenZone(playerid)
{
    
    for(new Sz; Sz < MAX_SZ; Sz++)
    {
        if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
        {
           
            return 1;
        }
        else
        {
        	// PlayerTextDrawHide(playerid, SZTD[playerid][0]);
        }
    }
    return 0;
}


CMD:gotosz(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new housenum;
		if(sscanf(params, "d", housenum)) return SendClientMessage(playerid, -1, "USAGE: /gotosz [ID SafeZone]");
	
		SetPlayerPos(playerid,SafeZoneInfo[housenum][szPosX],SafeZoneInfo[housenum][szPosY],SafeZoneInfo[housenum][szPosZ]);
		SetPlayerInterior(playerid, 0);
	}
	return 1;
}

CMD:szedit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] <= 4)
	{
		SendClientMessage(playerid, -1, "You can not use this commands`.");
		return 1;
	}

	new string[128], choice[32], szid, amount;
	if(sscanf(params, "s[32]dd", choice, szid, amount))
	{
		SendClientMessage(playerid, -1, "USAGE: /szedit [name] [SafeZone ID] [Amount]");
		SendClientMessage(playerid, -1, "Name: location, size");
		return 1;
	}
	if(strcmp(choice, "location", true) == 0)
	{
		GetPlayerPos(playerid, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]);
		SendClientMessage( playerid, -1, "You have edit location Safe Zone!" );
		DestroyPickup(SafeZoneInfo[szid][szPickupID]);
		SaveSafeZones();


		DestroyPickup(SafeZoneInfo[szid][szPickupID]);
		DestroyDynamic3DTextLabel(SafeZoneInfo[szid][szTextID]);
		//format(string, sizeof(string), "{FFFFFF}Safe Zone(ID: %d)\n{24D12F}%d Meters\n{DB8B35}Non-Kill",szid,SafeZoneInfo[szid][szSize]);
		format(string, sizeof(string), "{FFFFFF}Safe Zone\nYou are not allowed to\n{FF0000}Damage{FFFFFF} Around here.");
		SafeZoneInfo[szid][szTextID] = CreateDynamic3DTextLabel( string, -1, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]+0.5,10.0, .testlos = 1, .streamdistance = 10.0);
		SafeZoneInfo[szid][szPickupID] = CreatePickup(19134, 23, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]);
	}
	else if(strcmp(choice, "size", true) == 0)
	{
		SafeZoneInfo[szid][szSize] = amount;
		SendClientMessage( playerid, -1, "You have edit size Safe Zone!" );
		SaveSafeZones();

		DestroyDynamic3DTextLabel(SafeZoneInfo[szid][szTextID]);
		//format(string, sizeof(string), "{0064FF}Safe Zone(ID: %d)\n{24D12F}%d Meters\n{DB8B35}Non-Kill",szid,SafeZoneInfo[szid][szSize]);
		format(string, sizeof(string), "{FFFFFF}Safe Zone\nYou are not allowed to\n{FF0000}Damage{FFFFFF} Around here.");
  		SafeZoneInfo[szid][szTextID] = CreateDynamic3DTextLabel( string, -1, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]+0.5,10.0, .testlos = 1, .streamdistance = 10.0);
 	}
	SaveSafeZones();
	return 1;
}

CMD:szdelete(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] <= 4)
 	{
  		SendClientMessage(playerid, -2, "You can not use this commands`!");
  		return 1;
 	}
 	new h, string[128];
 	if(sscanf(params,"d",h)) return SendClientMessage(playerid, -1,"USAGE: /szdelete [SafeZone ID]");
 	if(!IsValidDynamicPickup(SafeZoneInfo[h][szPickupID])) return SendClientMessage(playerid, -1,"Wrong ID Safe Zone.");
	SafeZoneInfo[h][szPosX] = 0;
	SafeZoneInfo[h][szPosY] = 0;
	SafeZoneInfo[h][szPosZ] = 0;
	DestroyDynamicPickup(SafeZoneInfo[h][szPickupID]);
	DestroyDynamic3DTextLabel(SafeZoneInfo[h][szTextID]);
	SaveSafeZones();
	format(string, sizeof(string), "You have delete Safe Zone (ID %d).", h);
	SendClientMessage(playerid, -1, string);
	return 1;
}
CMD:szcreate(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] < 4) // Check admin level
    {
        SendClientMessage(playerid, -1, "You do not have permission to use this command.");
        return 1;
    }

    new szSize1;
    if (sscanf(params, "d", szSize1)) // Parse size parameter
    {
        SendClientMessage(playerid, -1, "USAGE: /szcreate [Size]");
        return 1;
    }

    new index = -1;
    for (new i = 0; i < MAX_SZ; i++)
    {
        if (SafeZoneInfo[i][szPosX] == 0.0 && SafeZoneInfo[i][szPosY] == 0.0 && SafeZoneInfo[i][szPosZ] == 0.0)
        {
            index = i;
            break;
        }
    }

    if (index == -1) // No available slot for a new Safe Zone
    {
        SendClientMessage(playerid, -1, "No available slots for a new Safe Zone.");
        return 1;
    }

    GetPlayerPos(playerid, SafeZoneInfo[index][szPosX], SafeZoneInfo[index][szPosY], SafeZoneInfo[index][szPosZ]);
    SafeZoneInfo[index][szSize] = szSize1;
    new string[248];
    format(string, sizeof(string), "{ffffff}[{2dff99}A{ffffff}K{2dff99}RP{ffffff}]\n{00FFFF}Safe Zone(ID: %d)\n{24D12F}%d Meters\n{DB8B35}Non-Kill",index,SafeZoneInfo[index][szSize]);
	if(SafeZoneInfo[index][szPosX] != 0.0)
	{
			SafeZoneInfo[index][szPickupID] = CreateDynamicPickup(19134, 23, SafeZoneInfo[index][szPosX], SafeZoneInfo[index][szPosY], SafeZoneInfo[index][szPosZ]);
			SafeZoneInfo[index][szTextID] = CreateDynamic3DTextLabel(string, -1, SafeZoneInfo[index][szPosX], SafeZoneInfo[index][szPosY], SafeZoneInfo[index][szPosZ]+0.5,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
	}
    // Create Pickup and Text Label
    // Save Safe Zone Data
    SaveSafeZones();
    format(string, sizeof(string), "Safe Zone created successfully at your location with size %d.", szSize1);
    SendClientMessage(playerid, -1, string);

    return 1;
}
