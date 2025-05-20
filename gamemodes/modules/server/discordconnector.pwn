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


//-----------------------------[ DISCORD CONNECTOR]----------------------------

#define cmds             "1203597105030107156"
#define white            "1203596343113818164"
#define Serverip         "1203597105030107156"
#define serverupdate     "1203597105030107156"
#define announcement     "1203597105030107156"
#define Server_stats     "1145201040115908780"
#define Server_loglevel  "1203597105030107156"
#define Cmdchannel       "1203597105030107156"

//-----------------------------[ STOCK]----------------------------


stock SendDiscordMessage(channel, const message[]) { 
	new DCC_Channel:ChannelId;
	switch(channel)
	{
		// log-admin
		case 0:
		{
			
			ChannelId = DCC_FindChannelById("1145199737381863576");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-ban
		case 1:
		{
			
			ChannelId = DCC_FindChannelById("1145199626769674290");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-cheat
		case 2:
		{
			
			ChannelId = DCC_FindChannelById("1145200603472068779");
			DCC_SendChannelMessage(ChannelId, message);

		}
		// log-faction
		case 3:
		{
			
			ChannelId = DCC_FindChannelById("1145199193070256128");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-namechanges
		case 4:
		{
			
			ChannelId = DCC_FindChannelById("1145200536828776468");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-namehistory
		case 5:
		{
			
			ChannelId = DCC_FindChannelById("1145200536828776468");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-punishment
		case 6:
		{
		
			ChannelId = DCC_FindChannelById("1145198897606697080");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-vip
		case 7:
		{
			
			ChannelId = DCC_FindChannelById("1145200021592084531");
			DCC_SendChannelMessage(ChannelId, message);
		}
		// log-knockdown
		case 8:
		{

		    ChannelId = DCC_FindChannelById("1145105034061807647");
			DCC_SendChannelMessage(ChannelId, message);
		}
		//log-adminchat
		case 9:
		{
				
			ChannelId = DCC_FindChannelById("1145199509337542706");
			DCC_SendChannelMessage(ChannelId, message);
		}
		//log-helper
		case 10:
		{
			
			ChannelId = DCC_FindChannelById("1145199862774779954");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-whisper
  		case 11:
		{ 
			ChannelId = DCC_FindChannelById("1145200130132295750");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-sellcar
		case 12:
		{ 
			ChannelId = DCC_FindChannelById("1145200939221930204");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-gangchat
		case 13:
		{ 
			ChannelId = DCC_FindChannelById("1145200904686030988");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-command
		case 14:
		{ 
			ChannelId = DCC_FindChannelById("1145200628084260954");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-damage
		case 15:
		{ 
			ChannelId = DCC_FindChannelById("1145200969974558740");
			DCC_SendChannelMessage(ChannelId, message);
	    }
        //log-chat
	    case 16:
		{ 
			ChannelId = DCC_FindChannelById("1145200573134680064");
			DCC_SendChannelMessage(ChannelId, message);
	    }
        //log-join-exit
	    case 17:
		{ 
			ChannelId = DCC_FindChannelById("1145261868781416500");
			DCC_SendChannelMessage(ChannelId, message);
	    }
        //log-kos
    	case 18:
		{ 
			ChannelId = DCC_FindChannelById("1145262054748463166");
			DCC_SendChannelMessage(ChannelId, message);
        }
        //log-pm-message
		case 19:
		{
		  
	     	ChannelId = DCC_FindChannelById("1261334840515629157");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-facebookchat
		case 20:
		{
		  
	     	ChannelId = DCC_FindChannelById("1145771857790902363");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-globalchat
		case 21:
		{
		  
	     	ChannelId = DCC_FindChannelById("1238682564504322148");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-factionchat
		case 22:
		{
		  
	     	ChannelId = DCC_FindChannelById("1261341944966152304");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-instachat
		case 23:
		{
		  
	     	ChannelId = DCC_FindChannelById("1261343246609813637");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-twitterchat
		case 24:
		{
		  
	     	ChannelId = DCC_FindChannelById("1261343893568360519");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-aimbot and 
		case 25:
		{
		  
	     	ChannelId = DCC_FindChannelById("1246126128616177794");
			DCC_SendChannelMessage(ChannelId, message);
		}
        //log-carsale
		case 26:
		{
		 
	     	ChannelId = DCC_FindChannelById("1271813773593935894");
			DCC_SendChannelMessage(ChannelId, message);
		}


	}
	return 1;
}
new DCC_Channel:whitelist_log;
new DCC_Channel:announce_log;
new DCC_Channel:admin_log;