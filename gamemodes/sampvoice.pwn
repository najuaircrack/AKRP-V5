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

#pragma option -d3
#include <open.mp>
#include <sampvoice>

#define MAX_VOICE_RADIO 30
#define MAX_RADIOS 50 
#define pKicked 0
new PlayerInfo[MAX_PLAYERS][1];
new voice_phonecall_targetid[MAX_PLAYERS];
new voice_radiocall_radioid[MAX_PLAYERS];
new voice_factioncall_radioid[MAX_PLAYERS];
new SV_GSTREAM:phone_stream[MAX_PLAYERS] = { SV_NULL, ... };
new SV_LSTREAM:local_stream[MAX_PLAYERS] = { SV_NULL, ... };
new SV_GSTREAM:radio_stream[MAX_VOICE_RADIO] = { SV_NULL, ... };
new SV_GSTREAM:callstream[MAX_PLAYERS] = { SV_NULL, ... };
new SV_GSTREAM:factiongang_stream[MAX_RADIOS][2];

public SV_VOID:OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid) 
{
    if (keyid == 0x2D)
    {
	   KickPlayer(playerid);
    }
	if (keyid == 0x42) {
        new pvarTalkStats = GetPVarInt(playerid,"talkStats");
        new pvarTalkStats2 = GetPVarInt(playerid,"radiostat");
        if(pvarTalkStats != 3) {
            // phone
            new callid = voice_phonecall_targetid[playerid];
            if(callid != 65535) {
                if(callstream[playerid]) {
                    if(!SvHasSpeakerInStream(callstream[playerid], playerid))
                    {
                        SvAttachSpeakerToStream(callstream[playerid], playerid);
                    }
                }
            }
            // local
            else if(local_stream[playerid]) {
                if(!SvHasSpeakerInStream(local_stream[playerid], playerid))
                {
                    SvAttachSpeakerToStream(local_stream[playerid], playerid);
                }
            }

        }
        // radio
        else if(pvarTalkStats == 3) {
            new radioid = voice_radiocall_radioid[playerid];
            if(radioid != 0) {
                if(radio_stream[radioid]) {
                    if(!SvHasSpeakerInStream(radio_stream[radioid], playerid))
                    {
                        SvAttachSpeakerToStream(radio_stream[radioid], playerid);
                    }
                }
            }
        }
        if(pvarTalkStats2 == 1) {
            new factionid = voice_factioncall_radioid[playerid];
            if(factionid != 0) {
                if(factiongang_stream[factionid][1]) {
                    if(!SvHasSpeakerInStream(factiongang_stream[factionid][1], playerid))
                    {
                        SvAttachSpeakerToStream(factiongang_stream[factionid][1], playerid);
                    }
                }
            }
        }
        else if(pvarTalkStats2 == 2) {
            new gangid = voice_factioncall_radioid[playerid];
            if(gangid != 0) {
                if(factiongang_stream[gangid][0]) {
                    if(!SvHasSpeakerInStream(factiongang_stream[gangid][0], playerid))
                    {
                        SvAttachSpeakerToStream(factiongang_stream[gangid][0], playerid);
                    }
                }
            }
        }
    }
}

public SV_VOID:OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
    if (keyid == 0x42) {
        // phone
        new callid = voice_phonecall_targetid[playerid];
        if(callid != 65535) {
            if(phone_stream[playerid]) {
                if(SvHasSpeakerInStream(phone_stream[playerid], playerid))
                {
                    SvDetachSpeakerFromStream(phone_stream[playerid], playerid);
                }
            }
        }
        // local
        if(local_stream[playerid]) {
            if(SvHasSpeakerInStream(local_stream[playerid], playerid))
            {
                SvDetachSpeakerFromStream(local_stream[playerid], playerid);
            }
        }
        // radio
        new radioid = voice_radiocall_radioid[playerid];
        if(radioid != 0) {
            if(radio_stream[radioid]) {
                if(SvHasSpeakerInStream(radio_stream[radioid], playerid))
                {
                    SvDetachSpeakerFromStream(radio_stream[radioid], playerid);
                }
            }
        }
   
		new factionid = voice_factioncall_radioid[playerid];
		if(factionid != 0) {
			if(factiongang_stream[factionid][1] != 0) {
			   if(SvHasSpeakerInStream(factiongang_stream[factionid][1], playerid))
			   {
				   SvDetachSpeakerFromStream(factiongang_stream[factionid][1], playerid);
			   }
			}
		}
		
  
		new gangid = voice_factioncall_radioid[playerid];
		if(gangid != 0) {
			if(factiongang_stream[gangid][0] != 0) {
			   if(SvHasSpeakerInStream(factiongang_stream[gangid][0], playerid))
			   {
				   SvDetachSpeakerFromStream(factiongang_stream[gangid][0], playerid);
			   }
			}
		}
		
    }
}

forward deletecallstream(playerid);
public deletecallstream(playerid)
{
    if(callstream[playerid])
    {
        SvDeleteStream(callstream[playerid]);
        callstream[playerid] = SV_NULL;
        voice_phonecall_targetid[playerid] = 65535;
    }
    return 1;
}

forward callstreams(targetid, playerid);
public callstreams(targetid, playerid)
{
   	callstream[playerid] = SvCreateGStream(0xffff0000, "Call");
	callstream[targetid] = SvCreateGStream(0xffff0000, "Call");
	SvAttachListenerToStream(callstream[targetid], playerid);
	SvAttachListenerToStream(callstream[playerid], targetid);
    voice_phonecall_targetid[playerid] = targetid;
	 return 1;
}

forward KickPlayer(playerid);
public KickPlayer(playerid)
{
	if(!PlayerInfo[playerid][pKicked])
	{
	    PlayerInfo[playerid][pKicked] = 1;
	    SetTimerEx("KickPlayer", 200, false, "i", playerid);
	}
	else
	{
	    PlayerInfo[playerid][pKicked] = 0;
	    Kick(playerid);
	}
}

public OnPlayerConnect(playerid) {
    
    if (SvGetVersion(playerid) == SV_NULL)
    {
        SetPVarInt(playerid, "hasVoiceOnClient", 0);
        SendClientMessage(playerid,-1, "[{00FFFF}AK{FFFFFF}RP] : {FFFF00} SAMP VOICE {FFFFFF} NOT FOUND");
		SendClientMessage(playerid,-1, "[{00FFFF}AK{FFFFFF}RP] : {FFFF00} [{FF00FF}BOT{FFFFFF}-AKRP] You Have Kicked Reason :{FF0000} SAMP-VOICE NOT FOUND {FFFFFF}");
		KickPlayer(playerid);
    }
    
    else if (SvHasMicro(playerid) == SV_FALSE)
    {
        
        SetPVarInt(playerid, "hasVoiceOnClient", 2);
        SendClientMessage(playerid, -1, "[{00FFFF}AK{FFFFFF}RP] : {FFFF00} MICRO PHONE {FFFFFF} NOT FOUND");
    }
    
    
    else if ((local_stream[playerid] = SvCreateDLStreamAtPlayer(40.0, SV_INFINITY, playerid, 0xff0000ff, "Local")))
    {
        
        SvAddKey(playerid, 0x42);
       
        SvAddKey(playerid, 0x2D);
        
        SetPVarInt(playerid, "hasVoiceOnClient", 1);
        SendClientMessage(playerid, -1, "{00FFFF}[AKRP]{FFFFFF} : {FFFF00}SAMP VOICE SUCCESSFULLY ACTIVATED{FFFFFF}");
    }
    
    voice_phonecall_targetid[playerid] = 65535;
   
    voice_radiocall_radioid[playerid] = 0;
}
public OnPlayerDisconnect(playerid, reason)
{
    
    if (local_stream[playerid])
    {
        SvDeleteStream(local_stream[playerid]);
        local_stream[playerid] = SV_NULL;
    }
    if(callstream[playerid])
    {
        SvDeleteStream(callstream[playerid]);
        callstream[playerid] = SV_NULL;
    }
    
    LeavePrivateVoiceChannel(playerid);
    
    LeaveGroupVoiceChannel(playerid);
}

public OnFilterScriptInit() {
    new string[128];
    

    
    for(new i = 0; i < MAX_VOICE_RADIO; i++)
    {
        format(string, sizeof(string), "radio_freq-%i", i);
        radio_stream[i] = SvCreateGStream(0xffff0000, string);
    }
}

forward createfgstream(fgid, type);
public createfgstream(fgid, type)
{
    
    new string[128];
    switch(type)
    {
       case 0 :
       {
           format(string, sizeof(string), "gang_radio-%i", fgid);
       }
       case 1 :
       {
           format(string, sizeof(string), "faction_radio-%i", fgid);
       }

    }
    factiongang_stream[fgid][type] = SvCreateGStream(0xffff0000, string);
	return 1;
}

forward destroyfgstream();
public destroyfgstream()
{
    for(new i ; i < 100; i++)
    {
        if (factiongang_stream[i][0]) SvDeleteStream(factiongang_stream[i][0]);
        if (factiongang_stream[i][1]) SvDeleteStream(factiongang_stream[i][1]);
    }
	return 1;
}

public OnFilterScriptExit() {
   
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if (phone_stream[i]) SvDeleteStream(phone_stream[i]);
    }
    
    for(new i = 0; i < MAX_VOICE_RADIO; i++)
    {
        if (radio_stream[i]) SvDeleteStream(radio_stream[i]);
    }
    destroyfgstream();
}

forward JoinPrivateVoiceChannel(playerid, targetid);
public JoinPrivateVoiceChannel(playerid, targetid)
{
    
    LeavePrivateVoiceChannel(playerid);
    
    if (phone_stream[targetid]) {
        if(!SvHasListenerInStream(phone_stream[targetid], playerid)) {
            SvAttachListenerToStream(phone_stream[targetid], playerid);
        }
    }
    
    voice_phonecall_targetid[playerid] = targetid;
    return 1;
}

forward LeavePrivateVoiceChannel(playerid);
public LeavePrivateVoiceChannel(playerid)
{
    new oldchannelid = voice_phonecall_targetid[playerid];
    voice_phonecall_targetid[playerid] = 65535;
    if (oldchannelid != 65535 && phone_stream[oldchannelid]) {
       
        if(SvHasSpeakerInStream(phone_stream[oldchannelid], playerid))
        {
            SvDetachSpeakerFromStream(phone_stream[oldchannelid], playerid);
        }
        
        if(SvHasListenerInStream(phone_stream[oldchannelid], playerid))
        {
            SvDetachListenerFromStream(phone_stream[oldchannelid], playerid);
        }
    }
    return 1;
}

forward JoinFgVoiceChannel(fgid, playerid, type);
public JoinFgVoiceChannel(fgid, playerid, type)
{
   
    LeaveFgVoiceChannel(playerid, type);
   
    if (factiongang_stream[fgid][type] != 0) {
        if(!SvHasListenerInStream(factiongang_stream[fgid][type], playerid)) {
            SvAttachListenerToStream(factiongang_stream[fgid][type], playerid);
        }
    }
    
    voice_factioncall_radioid[playerid] = fgid;
    return 1;
}

forward LeaveFgVoiceChannel(playerid , type);
public LeaveFgVoiceChannel(playerid , type)
{
    new oldchannelid = voice_factioncall_radioid[playerid];
    voice_factioncall_radioid[playerid] = 0;
    if (oldchannelid != 0 && factiongang_stream[oldchannelid][type]) {
        
        if(SvHasSpeakerInStream(factiongang_stream[oldchannelid][type], playerid))
        {
            SvDetachSpeakerFromStream(factiongang_stream[oldchannelid][type], playerid);
        }
        
        if(SvHasListenerInStream(factiongang_stream[oldchannelid][type], playerid))
        {
            SvDetachListenerFromStream(factiongang_stream[oldchannelid][type], playerid);
        }
    }
	return 1;
}

forward JoinGroupVoiceChannel(playerid, frequency_id);
public JoinGroupVoiceChannel(playerid, frequency_id)
{
    
    LeaveGroupVoiceChannel(playerid);
    
    if (radio_stream[frequency_id]) {
        if(!SvHasListenerInStream(radio_stream[frequency_id], playerid)) {
            SvAttachListenerToStream(radio_stream[frequency_id], playerid);
        }
    }
    
    voice_radiocall_radioid[playerid] = frequency_id;
    return 1;
}

forward LeaveGroupVoiceChannel(playerid);
public LeaveGroupVoiceChannel(playerid)
{
    new oldchannelid = voice_radiocall_radioid[playerid];
    voice_radiocall_radioid[playerid] = 0;
    if (oldchannelid != 0 && radio_stream[oldchannelid]) {
        
        if(SvHasSpeakerInStream(radio_stream[oldchannelid], playerid))
        {
            SvDetachSpeakerFromStream(radio_stream[oldchannelid], playerid);
        }
        
        if(SvHasListenerInStream(radio_stream[oldchannelid], playerid))
        {
            SvDetachListenerFromStream(radio_stream[oldchannelid], playerid);
        }
    }
}
