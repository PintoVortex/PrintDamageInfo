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


public void OnPluginStart()
{
    HookEvent("player_death", Event_PlayerDeath);
}
public Action Event_PlayerDeath(Event event, const char[] name, bool dontBroadcast)
{
    int userid = GetClientOfUserId(event.GetInt("userid")); // UserID
    int attacker = GetClientOfUserId(event.GetInt("attacker")); // Atacante
    if (attacker == userid) // Atacante = User
        PrintToChat(attacker, "\x01[\x4HP\x01] Your life is too precious to end with \x02it."); // Suicidio
    else
        PrintToChat(userid, "\x01[\x4HP\x01] You died to \x10%s \x01he is at \x04%i\x01 HP", attacker, GetClientHealth(attacker));
} 