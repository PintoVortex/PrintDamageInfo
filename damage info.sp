// []
// Pinto#0001 on discord for help and more
// https://github.com/PintoVortex?tab=repositories
// PINTO @VortexServices
// https://github.com/PintoVortex?tab=repositories
// Pinto#0001 on discord for help and more
// []

#include <sourcemod>
#include <sdktools>
#include <cstrike>
#include <multicolors>

#pragma newdecls required

#define PLUGIN_VERSION "1.0.1" // last update 06/09/2020 check fixs on github
 
public void OnPluginStart()
{
    HookEvent("player_death", Event_PlayerDeath);
}

public Action Event_PlayerDeath(Event event, const char[] name, bool dontBroadcast)
{
    int userid = GetClientOfUserId(event.GetInt("userid")); // UserID
    int attacker = GetClientOfUserId(event.GetInt("attacker")); // Atacante
    if (attacker == userid) // Atacante = User
        PrintToChat(attacker, "\x01[\x09HP\x01] Don't end with your \x02life."); // Suicidio
    else
        PrintToChat(userid, "\x01[\x09HP\x01] Died to \x10%N \x01he stayed at \x04%i\x01 HP.", attacker, GetClientHealth(attacker));
} 