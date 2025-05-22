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


stock init_notificationtext(playerid)
{  
    for(new i = 2; i != -1; --i)
	{
        basebacknoti[playerid][i] = CreatePlayerTextDraw(playerid, 649.000, 141.000 + (44.0 * i), "_");
		PlayerTextDrawLetterSize(playerid, basebacknoti[playerid][i], 0.620, 3.549);
		PlayerTextDrawTextSize(playerid, basebacknoti[playerid][i], 638.500, 46.500);
		PlayerTextDrawAlignment(playerid, basebacknoti[playerid][i], TEXT_DRAW_ALIGN_LEFT);
		PlayerTextDrawColour(playerid, basebacknoti[playerid][i], -1);
		PlayerTextDrawUseBox(playerid, basebacknoti[playerid][i], true);
		PlayerTextDrawBoxColour(playerid, basebacknoti[playerid][i], 16744447);
		PlayerTextDrawSetShadow(playerid, basebacknoti[playerid][i], 1);
		PlayerTextDrawSetOutline(playerid, basebacknoti[playerid][i], 1);
		PlayerTextDrawBackgroundColour(playerid, basebacknoti[playerid][i], 150);
		PlayerTextDrawFont(playerid, basebacknoti[playerid][i], TEXT_DRAW_FONT_0);
		PlayerTextDrawSetProportional(playerid, basebacknoti[playerid][i], true);

		basenotification[playerid][i] = CreatePlayerTextDraw(playerid, 651.000, 141.000 + (44.0 * i), "_");
		PlayerTextDrawLetterSize(playerid, basenotification[playerid][i], 0.626, 3.549);
		PlayerTextDrawTextSize(playerid, basenotification[playerid][i], 638.500, 46.500);
		PlayerTextDrawAlignment(playerid, basenotification[playerid][i], TEXT_DRAW_ALIGN_LEFT);
		PlayerTextDrawColour(playerid, basenotification[playerid][i], -1);
		PlayerTextDrawUseBox(playerid, basenotification[playerid][i], true);
		PlayerTextDrawBoxColour(playerid, basenotification[playerid][i], 255);
		PlayerTextDrawSetShadow(playerid, basenotification[playerid][i], 1);
		PlayerTextDrawSetOutline(playerid, basenotification[playerid][i], 1);
		PlayerTextDrawBackgroundColour(playerid, basenotification[playerid][i], 150);
		PlayerTextDrawFont(playerid, basenotification[playerid][i], TEXT_DRAW_FONT_1);
		PlayerTextDrawSetProportional(playerid, basenotification[playerid][i], true);

		basechit[playerid][i] = CreatePlayerTextDraw(playerid, 648.500, 140.000 + (44.0 * i), "ld_beat:chit");
		PlayerTextDrawLetterSize(playerid, basechit[playerid][i], 0.600, 2.000);
		PlayerTextDrawTextSize(playerid, basechit[playerid][i], 26.500, 32.000);
		PlayerTextDrawAlignment(playerid, basechit[playerid][i], TEXT_DRAW_ALIGN_LEFT);
		PlayerTextDrawColour(playerid, basechit[playerid][i], 1018393087);
		PlayerTextDrawUseBox(playerid, basechit[playerid][i], true);
		PlayerTextDrawBoxColour(playerid, basechit[playerid][i], 50);
		PlayerTextDrawSetShadow(playerid, basechit[playerid][i], 0);
		PlayerTextDrawSetOutline(playerid, basechit[playerid][i], 1);
		PlayerTextDrawBackgroundColour(playerid, basechit[playerid][i], 255);
		PlayerTextDrawFont(playerid, basechit[playerid][i], TEXT_DRAW_FONT_SPRITE_DRAW);
		PlayerTextDrawSetProportional(playerid, basechit[playerid][i], true);

		basemark[playerid][i] = CreatePlayerTextDraw(playerid, 658.598, 149.000 + (44.0 * i), "?");
		PlayerTextDrawLetterSize(playerid, basemark[playerid][i], 0.361, 1.649);
		PlayerTextDrawTextSize(playerid, basemark[playerid][i], 400.000, 17.000);
		PlayerTextDrawAlignment(playerid, basemark[playerid][i], TEXT_DRAW_ALIGN_LEFT);
		PlayerTextDrawColour(playerid, basemark[playerid][i], -741092353);
		PlayerTextDrawSetShadow(playerid, basemark[playerid][i], 0);
		PlayerTextDrawSetOutline(playerid, basemark[playerid][i], 0);
		PlayerTextDrawBackgroundColour(playerid, basemark[playerid][i], 255);
		PlayerTextDrawFont(playerid, basemark[playerid][i], TEXT_DRAW_FONT_3);
		PlayerTextDrawSetProportional(playerid, basemark[playerid][i], true);

		basecontent[playerid][i] = CreatePlayerTextDraw(playerid, 674.000, 145.000 + (44.0 * i), "Learning Pawn scripting can be fun");
		PlayerTextDrawLetterSize(playerid, basecontent[playerid][i], 0.208, 1.000);
		PlayerTextDrawTextSize(playerid, basecontent[playerid][i], 812.000, -1.000);
		PlayerTextDrawAlignment(playerid, basecontent[playerid][i], TEXT_DRAW_ALIGN_LEFT);
		PlayerTextDrawColour(playerid, basecontent[playerid][i], -741092353);
		PlayerTextDrawSetShadow(playerid, basecontent[playerid][i], 0);
		PlayerTextDrawSetOutline(playerid, basecontent[playerid][i], 1);
		PlayerTextDrawBackgroundColour(playerid, basecontent[playerid][i], 336860220);
		PlayerTextDrawFont(playerid, basecontent[playerid][i], TEXT_DRAW_FONT_1);
		PlayerTextDrawSetProportional(playerid, basecontent[playerid][i], true);
	
		PlayerTextDrawShow(playerid, basebacknoti[playerid][i]);
		PlayerTextDrawShow(playerid, basenotification[playerid][i]);
		PlayerTextDrawShow(playerid, basechit[playerid][i]);
		PlayerTextDrawShow(playerid, basemark[playerid][i]);
		PlayerTextDrawShow(playerid, basecontent[playerid][i]);

	}
}
notification_show(playerid, String:text, time = 2000, type = NOTIF_INFO)
{
	if (type < NOTIF_ERROR || type > NOTIF_INFO)
    {
        type = NOTIF_INFO;
    }
	new text_idx = Iter_Free(g_rgNotifUsed[playerid]);
	if(text_idx == INVALID_ITERATOR_SLOT)
	{
		if(!pool_valid(g_rgpNotificationQueue[playerid]))
			g_rgpNotificationQueue[playerid] = pool_new(1);

		new item[eNotificationData];
		item[e_iNotificationTime] = time;
		item[e_sNotificationText] = str_acquire(text);
		item[e_NotificationType] = type;

		pool_add_arr(g_rgpNotificationQueue[playerid], item);
		return 1;
	}
	Iter_Add(g_rgNotifUsed[playerid], text_idx);

	switch(type){
        case NOTIF_ERROR:
		{
            DynamicPlayerTextDrawSetString(playerid, basemark[playerid][text_idx], NOTIF_SYMBOLS[NOTIF_ERROR]);
			PlayerTextDrawBoxColour(playerid, basebacknoti[playerid][text_idx], NOTIF_COLORS[NOTIF_ERROR]);
			PlayerTextDrawColour(playerid, basechit[playerid][text_idx], NOTIF_COLORS[NOTIF_ERROR]);
	 	}
		case NOTIF_SUCCESS:
		{
			DynamicPlayerTextDrawSetString(playerid, basemark[playerid][text_idx], NOTIF_SYMBOLS[NOTIF_SUCCESS]);
			PlayerTextDrawBoxColour(playerid, basebacknoti[playerid][text_idx], NOTIF_COLORS[NOTIF_SUCCESS]);
			PlayerTextDrawColour(playerid, basechit[playerid][text_idx], NOTIF_COLORS[NOTIF_SUCCESS]);
		}
		default :
		{
			DynamicPlayerTextDrawSetString(playerid, basemark[playerid][text_idx], "?");
			PlayerTextDrawBoxColour(playerid, basebacknoti[playerid][text_idx], 16744447);
			PlayerTextDrawColour(playerid, basechit[playerid][text_idx], 1018393087);
		}
	}


	new Float:size = 0.208;
	for(new i = 0, j = str_len(text); i <= j; i += 30)
		size -= 0.015;

	static str[512];
	str_get(text, str);

	SplitTextDrawString(str, 122.5, size, 1, 1, true);
	str_set_format(text, str);

	DynamicPlayerTextDrawSetString(playerid, basecontent[playerid][text_idx], str);
	PlayerTextDrawLetterSize(playerid, basecontent[playerid][text_idx], size, 1.000000);
    
    AnimationEntryPhases(playerid, text_idx, time);

	return text_idx;
}

cmd:geforce(playerid, const params[])
{
    notification_show(playerid, str_format("%s",params), 2000);
	notification_show(playerid, str_format("%s",params), 2000, NOTIF_ERROR);
	notification_show(playerid, str_format("%s",params), 2000, NOTIF_SUCCESS);
    return 1;
}
