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


enum NotificationType
{
    NOTIF_ERROR,
    NOTIF_SUCCESS,
    NOTIF_INFO
};

new const NOTIF_COLORS[NotificationType] = {  
    0xFF0000FF, // ERROR: Red
    0x00FF00FF, // SUCCESS: Green
    16744447
};


new const NOTIF_SYMBOLS[NotificationType][4] = {  
    "X",  // ERROR symbol
    "C",  // SUCCESS symbol
    "?" 
};


const MAX_NOTIFICATIONS = 3;

new PlayerText: basebacknoti[MAX_PLAYERS][3];
new PlayerText: basenotification[MAX_PLAYERS][3];
new PlayerText: basechit[MAX_PLAYERS][3];
new PlayerText: basemark[MAX_PLAYERS][3];
new PlayerText: basecontent[MAX_PLAYERS][3];

new
	Pool:g_rgpNotificationQueue[MAX_PLAYERS],
	Iterator:g_rgNotifUsed[MAX_PLAYERS]<MAX_NOTIFICATIONS>;

enum _:eNotificationData {
	String:e_sNotificationText,
	e_iNotificationTime,
	e_NotificationType
};
