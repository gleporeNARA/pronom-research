Introduction
[What is PODBot MM?] PODBot MetaMod is an open source (GPL) metamod plugin that adds computer players (bots) to a popular game called Counter-Strike.

[Why is it called PODBot MM?] POD is an abbreviation for "Ping of Death". It's called that way because it was derived from the "High Ping Bastard Bot" Botman was doing. And if you look at the Bots Ping they always have a Ping of 5 and the very first generation of Bots did Headshots all the time!
The sufix mm to PODBot name has been added since it has been converted from standalone dll to metamod one and it started to use all benefities (and also all limitations) metamods gives.

https://github.com/APGRoboCop/podbot_mm


// ####################################
// #                                  #
// #       Ping of Death - Bot        #
// #                by                #
// #    Markus Klinge aka Count Floyd #
// #                                  #
// ####################################
//
// Started from the HPB-Bot Alpha Source
// by Botman so Credits for a lot of the basic
// HL Server/Client Stuff goes to him
//
// bot_navigate.cpp
//
// Features the Waypoint Code (Editor)

if (strcmp (header.filetype, "PODWAY!") != 0)
   {
      UTIL_ServerPrint ("%s is not a POD Bot waypoint file!\n", filename);
      snprintf (g_szWaypointMessage, sizeof (g_szWaypointMessage), "Waypoint file %s does not exist!\n", filename);
      fclose (bfp);
      return (FALSE);
      
https://github.com/evandrocoan/MultiModServer/blob/master/dependencies/server_files/gamemod_common/addons/podbot/source/waypoint.cpp
