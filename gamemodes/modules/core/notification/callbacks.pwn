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


forward AnimationEntryPhases(playerid, index , time);
public AnimationEntryPhases(playerid, index, time)
{
	PlayerText_MoveTextSize(playerid, basebacknoti[playerid][index], 492.0, 500, EASE_OUT_QUINT);
    PlayerText_MoveTextSize(playerid, basenotification[playerid][index] , 494.0, 500, EASE_OUT_QUART);

    PlayerText_PlaceOnTop(playerid, basechit[playerid][index]);
    PlayerText_PlaceOnTop(playerid, basemark[playerid][index]);
	PlayerText_PlaceOnTop(playerid, basecontent[playerid][index]);

	PlayerText_MoveTo(playerid, basechit[playerid][index], 494.50 , 140.000 + (index * 44), 500, EASE_OUT_QUART);
	PlayerText_MoveTo(playerid, basemark[playerid][index], 504.59, 149.000 + (index * 44), 500, EASE_OUT_QUART);
	PlayerText_MoveTo(playerid, basecontent[playerid][index], 519.000, 145.000 + (index * 44), 500, EASE_OUT_QUART);            
		
    SetTimerEx("AnimationExitPhases", time, false, "dd", playerid, index);      
}

forward AnimationExitPhases(playerid, index);
public AnimationExitPhases(playerid, index)
{ 
	PlayerText_MoveTo(playerid, basechit[playerid][index], 648.500, 140.000 + (index * 44), 500, EASE_OUT_QUART);
	PlayerText_MoveTo(playerid, basemark[playerid][index], 658.598, 149.000 + (index * 44), 500, EASE_OUT_QUART);
	PlayerText_MoveTo(playerid, basecontent[playerid][index], 674.000, 145.000 + (index * 44), 500, EASE_OUT_QUART);

	PlayerText_MoveTextSize(playerid, basenotification[playerid][index], 638.0, 500, EASE_OUT_QUART);
	PlayerText_MoveTextSize(playerid, basebacknoti[playerid][index], 638.0, 500, EASE_OUT_QUART);
    
	SetTimerEx("QueueWorker", 501, false, "dd", playerid, index);	
}

forward QueueWorker(playerid, index);
public QueueWorker(playerid, index)
{
    Iter_Remove(g_rgNotifUsed[playerid], index);
	if(pool_valid(g_rgpNotificationQueue[playerid]))
	{
		while(Iter_Free(g_rgNotifUsed[playerid]) != INVALID_ITERATOR_SLOT && pool_size(g_rgpNotificationQueue[playerid]) != 0)
		{
			new Iter:first = pool_iter(g_rgpNotificationQueue[playerid]);
			if(iter_valid(first))
			{
				new item[eNotificationData];
				iter_get_arr(first, item);
				notification_show(playerid, item[e_sNotificationText], item[e_iNotificationTime], item[e_NotificationType]);
				str_delete(item[e_sNotificationText]);
				iter_erase_deep(first);
			}
		}
	}

}
