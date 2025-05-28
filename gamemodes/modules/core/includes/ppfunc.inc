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


#if defined _perplayer_included
    #endinput
#endif
#define _perplayer_included
 
#include <open.mp>
#include <Pawn.Raknet>
 
#define PERPLAYER_VERSION       "1.2"
 
native pp_IsValidVehicle(vehicleid) = IsValidVehicle;
 
stock SetPlayerGravity(playerid, Float:gravity)
{
    if(!IsPlayerConnected(playerid) || !(-50.0 <= gravity <= 50.0)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteFloat(bs, gravity);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 146);
    #else
        BS_RPC(bs, playerid, 146);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetPlayerNameForPlayer(playerid, forplayerid, const name[])
{
    new namelen = strlen(name);
    if(!(1 <= namelen <= MAX_PLAYER_NAME) || ContainsInvalidNickChars(name)) return -1;
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid) || IsNicknameUsed(name)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT8, namelen, PR_STRING, name, PR_UINT8, 1);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 11);
    #else
        BS_RPC(bs, forplayerid, 11);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetPlayerSkillLevelForPlayer(playerid, forplayerid, skill, level)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid) || !(WEAPONSKILL_PISTOL <= skill <= WEAPONSKILL_SNIPERRIFLE)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT32, skill, PR_UINT16, level);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 34);
    #else
        BS_RPC(bs, forplayerid, 34);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetPlayerFightingStyleForPlayer(playerid, forplayerid, style)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid) || !(FIGHT_STYLE_NORMAL <= style <= FIGHT_STYLE_KNEEHEAD || FIGHT_STYLE_GRABKICK <= style <= FIGHT_STYLE_ELBOW)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT8, style);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 89);
    #else
        BS_RPC(bs, forplayerid, 89);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetPlayerTeamForPlayer(playerid, forplayerid, teamid)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT8, teamid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 69);
    #else
        BS_RPC(bs, forplayerid, 69);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetPlayerSkinForPlayer(playerid, forplayerid, skinid)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT32, playerid, PR_UINT32, skinid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 153);
    #else
        BS_RPC(bs, forplayerid, 153);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock ApplyAnimationForPlayer(playerid, forplayerid, const animlib[], const animname[], Float:fDelta, loop, lockx, locky, freeze, time)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid)) return 0;
    new BitStream:bs = BS_New(), animliblen = strlen(animlib), animnamelen = strlen(animname);
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT8, animliblen, PR_STRING, animlib, PR_UINT8, animnamelen, PR_STRING, animname, PR_FLOAT, fDelta, PR_BOOL, loop, PR_BOOL, lockx, PR_BOOL, locky, PR_BOOL, freeze, PR_UINT32, time);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 86);
    #else
        BS_RPC(bs, forplayerid, 86);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock ClearAnimationsForPlayer(playerid, forplayerid)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteUint16(bs, playerid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 87);
    #else
        BS_RPC(bs, forplayerid, 87);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetPlayerChatBubbleForPlayer(playerid, forplayerid, const text[], color, Float:drawdistance, expiretime)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid)) return 0;
    new BitStream:bs = BS_New(), textlen = strlen(text);
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT32, color, PR_FLOAT, drawdistance, PR_UINT32, expiretime, PR_UINT8, textlen, PR_STRING, text);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 59);
    #else
        BS_RPC(bs, forplayerid, 59);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetAttachedObjectForPlayer(playerid, forplayerid, index, modelid, bone, Float:fOffsetX = 0.0, Float:fOffsetY = 0.0, Float:fOffsetZ = 0.0, Float:fRotX = 0.0, Float:fRotY = 0.0, Float:fRotZ = 0.0, Float:fScaleX = 1.0, Float:fScaleY = 1.0, Float:fScaleZ = 1.0, materialcolor1 = 0, materialcolor2 = 0)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid) || !(0 <= index < MAX_PLAYER_ATTACHED_OBJECTS)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT32, index, PR_BOOL, true, PR_UINT32, modelid, PR_UINT32, bone, PR_FLOAT, fOffsetX, PR_FLOAT, fOffsetY, PR_FLOAT, fOffsetZ, PR_FLOAT, fRotX, PR_FLOAT, fRotY, PR_FLOAT, fRotZ, PR_FLOAT, fScaleX, PR_FLOAT, fScaleY, PR_FLOAT, fScaleZ, PR_INT32, materialcolor1, PR_INT32, materialcolor2);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 113);
    #else
        BS_RPC(bs, forplayerid, 113);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock RemoveAttachedObjectForPlayer(playerid, forplayerid, index)
{
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(forplayerid) || !(0 <= index < MAX_PLAYER_ATTACHED_OBJECTS)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, playerid, PR_UINT32, index, PR_BOOL, false);
    #if defined PR_SendRPC
        PR_SendRPC(bs, forplayerid, 113);
    #else
        BS_RPC(bs, forplayerid, 113);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock ChangeVehicleColorForPlayer(playerid, vehicleid, color1, color2)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, INVALID_PLAYER_ID, PR_UINT32, 3, PR_UINT32, vehicleid, PR_UINT32, color1, PR_UINT32, color2);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 96);
    #else
        BS_RPC(bs, playerid, 96);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock ChangeVehiclePaintjobForPlayer(playerid, vehicleid, paintjobid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, INVALID_PLAYER_ID, PR_UINT32, 1, PR_UINT32, vehicleid, PR_UINT32, paintjobid, PR_UINT32, 0);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 96);
    #else
        BS_RPC(bs, playerid, 96);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock AddVehicleComponentForPlayer(playerid, vehicleid, componentid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, INVALID_PLAYER_ID, PR_UINT32, 2, PR_UINT32, vehicleid, PR_UINT32, componentid, PR_UINT32, 0);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 96);
    #else
        BS_RPC(bs, playerid, 96);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock RemoveVehicleComponentForPlayer(playerid, vehicleid, componentid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_UINT16, componentid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 57);
    #else
        BS_RPC(bs, playerid, 57);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock LinkVehicleToInteriorForPlayer(playerid, vehicleid, interiorid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_UINT8, interiorid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 65);
    #else
        BS_RPC(bs, playerid, 65);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetVehicleNumberPlateForPlayer(playerid, vehicleid, const numberplate[])
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New(), numberplatelen = strlen(numberplate);
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_UINT8, numberplatelen, PR_STRING, numberplate);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 123);
    #else
        BS_RPC(bs, playerid, 123);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetVehicleHealthForPlayer(playerid, vehicleid, Float:health)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_FLOAT, health);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 147);
    #else
        BS_RPC(bs, playerid, 147);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock UpdateVehDamageStatusForPlayer(playerid, vehicleid, panels, doors, lights, tires)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_UINT32, panels, PR_UINT32, doors, PR_UINT8, lights, PR_UINT8, tires);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 106);
    #else
        BS_RPC(bs, playerid, 106);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock RepairVehicleForPlayer(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_FLOAT, 1000.0);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 147);
    #else
        BS_RPC(bs, playerid, 147);
    #endif
    BS_Delete(bs);
 
    bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_UINT32, 0, PR_UINT32, 0, PR_UINT8, 0, PR_UINT8, 0);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 106);
    #else
        BS_RPC(bs, playerid, 106);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetVehiclePosForPlayer(playerid, vehicleid, Float:x, Float:y, Float:z)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_FLOAT, x, PR_FLOAT, y, PR_FLOAT, z);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 159);
    #else
        BS_RPC(bs, playerid, 159);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetVehicleZAngleForPlayer(playerid, vehicleid, Float:z_angle)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, vehicleid, PR_FLOAT, z_angle);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 160);
    #else
        BS_RPC(bs, playerid, 160);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock SetVehicleVelocityForPlayer(playerid, vehicleid, Float:X, Float:Y, Float:Z)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    if(IsPlayerInVehicle(playerid, vehicleid))
    {
        new BitStream:bs = BS_New();
        BS_WriteValue(bs, PR_UINT8, 0, PR_FLOAT, X, PR_FLOAT, Y, PR_FLOAT, Z);
        #if defined PR_SendRPC
            PR_SendRPC(bs, playerid, 91);
        #else
            BS_RPC(bs, playerid, 91);
        #endif
        BS_Delete(bs);
    }
    return 1;
}
 
stock SetVehicleAngVelocityForPlayer(playerid, vehicleid, Float:X, Float:Y, Float:Z)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    if(IsPlayerInVehicle(playerid, vehicleid))
    {
        new BitStream:bs = BS_New();
        BS_WriteValue(bs, PR_UINT8, 1, PR_FLOAT, X, PR_FLOAT, Y, PR_FLOAT, Z);
        #if defined PR_SendRPC
            PR_SendRPC(bs, playerid, 91);
        #else
            BS_RPC(bs, playerid, 91);
        #endif
        BS_Delete(bs);
    }
    return 1;
}
 
stock AttachTrailerToVehicleForPlayer(playerid, trailerid, vehicleid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(trailerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteValue(bs, PR_UINT16, trailerid, PR_UINT16, vehicleid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 148);
    #else
        BS_RPC(bs, playerid, 148);
    #endif
    BS_Delete(bs);
    return 1;
}
 
stock DetachTrailerFromVehForPlayer(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid) || !pp_IsValidVehicle(vehicleid)) return 0;
    new BitStream:bs = BS_New();
    BS_WriteUint16(bs, vehicleid);
    #if defined PR_SendRPC
        PR_SendRPC(bs, playerid, 149);
    #else
        BS_RPC(bs, playerid, 149);
    #endif
    BS_Delete(bs);
    return 1;
}
 
static stock IsNicknameUsed(const nick[])
{
    for(new i = GetPlayerPoolSize(), tmpname[MAX_PLAYER_NAME + 1]; i >= 0; --i)
    {
        if(GetPlayerName(i, tmpname, sizeof tmpname))
        {
            if(strcmp(nick, tmpname) == 0) return 1;
        }
    }
    return 0;
}
 
static stock ContainsInvalidNickChars(const string[])
{
    new i;
    while(string[i])
    {
        if('0' <= string[i] <= '9' ||
        'A' <= string[i] <= 'Z' || 'a' <= string[i] <= 'z' ||
        string[i] == ']' || string[i] == '[' ||
        string[i] == '_' || string[i] == '$' ||
        string[i] == '=' || string[i] == '(' ||
        string[i] == ')' || string[i] == '@' ||
        string[i] == '.') i++;
        else return 1;
 
    }
    return 0;
}